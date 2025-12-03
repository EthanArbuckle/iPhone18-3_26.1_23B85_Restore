@interface TSPDocumentResourceCacheEntry
- (TSPDocumentResourceCacheEntry)init;
- (TSPDocumentResourceCacheEntry)initWithDigestString:(id)string;
@end

@implementation TSPDocumentResourceCacheEntry

- (TSPDocumentResourceCacheEntry)init
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPDocumentResourceCacheEntry init]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPDocumentResourceCacheEntry.m"];
  [currentHandler handleFailureInFunction:v3 file:v4 lineNumber:12 description:@"Do not call method"];

  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[TSPDocumentResourceCacheEntry init]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (TSPDocumentResourceCacheEntry)initWithDigestString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = TSPDocumentResourceCacheEntry;
  v5 = [(TSPDocumentResourceCacheEntry *)&v9 init];
  if (v5)
  {
    v6 = [stringCopy copy];
    digestString = v5->_digestString;
    v5->_digestString = v6;
  }

  return v5;
}

@end