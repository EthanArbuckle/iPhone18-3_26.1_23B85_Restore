@interface TSWPStorageStyleProvider
- (id)paragraphStyleAtParIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
@end

@implementation TSWPStorageStyleProvider

- (id)paragraphStyleAtParIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorageStyleProvider paragraphStyleAtParIndex:effectiveRange:]"];
  [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorageStyleProvider.mm"), 26, @"Use the class method: styleProviderForStorage and do not allocate this class directly. Alternatively, provide your own implementation."}];
  return 0;
}

@end