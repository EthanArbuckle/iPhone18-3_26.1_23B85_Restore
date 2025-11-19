@interface NSObject(SFUJsonAdditions)
- (uint64_t)appendJsonStringToString:()SFUJsonAdditions;
@end

@implementation NSObject(SFUJsonAdditions)

- (uint64_t)appendJsonStringToString:()SFUJsonAdditions
{
  v0 = +[TSUAssertionHandler currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSObject(SFUJsonAdditions) appendJsonStringToString:]"];
  return [v0 handleFailureInFunction:v1 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUJson.m"), 472, @"%@ doesn't support JSON encoding", objc_opt_class()}];
}

@end