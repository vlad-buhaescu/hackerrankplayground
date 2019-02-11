import Foundation

// Complete the matchingStrings function below.
func matchingStrings(strings: [String], queries: [String]) -> [Int] {
    
    return [1,2,3]
}

func start() {
    let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
    FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
    let fileHandle = FileHandle(forWritingAtPath: stdout)!
    
    print("give strings number: ")
    let new = readLine()
    guard let stringsCount = Int((new?.trimmingCharacters(in: .whitespacesAndNewlines))!)
        else { fatalError("Bad input") }
    
    print("give string: ")
    let strings: [String] = AnyIterator{ readLine() }.prefix(stringsCount).map { $0 }
    
    guard strings.count == stringsCount else { fatalError("Bad input") }
    
    print("give querries number: ")
    guard let queriesCount = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
        else { fatalError("Bad input") }
    
    print("give query: ")
    let queries: [String] = AnyIterator{ readLine() }.prefix(queriesCount).map {
        $0
    }
    
    guard queries.count == queriesCount else { fatalError("Bad input") }
    
    let res = matchingStrings(strings: strings, queries: queries)
    
    fileHandle.write(res.map{ String($0) }.joined(separator: "\n").data(using: .utf8)!)
    fileHandle.write("\n".data(using: .utf8)!)
}

start()


