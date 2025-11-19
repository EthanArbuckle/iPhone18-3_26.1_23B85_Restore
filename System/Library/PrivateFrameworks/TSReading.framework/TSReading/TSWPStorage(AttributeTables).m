@interface TSWPStorage(AttributeTables)
@end

@implementation TSWPStorage(AttributeTables)

- (uint64_t)applyFlags:()AttributeTables level:toParagraphIndexRange:forKind:undoTransaction:.cold.1()
{
  v0 = [MEMORY[0x277D6C290] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(AttributeTables) applyFlags:level:toParagraphIndexRange:forKind:undoTransaction:]"];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStorage_attributeTables.mm"];

  return [v0 handleFailureInFunction:v1 file:v2 lineNumber:369 description:@"Out-of-bounds type assignment was clamped to max"];
}

@end