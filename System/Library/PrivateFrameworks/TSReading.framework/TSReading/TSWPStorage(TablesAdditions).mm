@interface TSWPStorage(TablesAdditions)
- (uint64_t)hyperlinkCellID;
@end

@implementation TSWPStorage(TablesAdditions)

- (uint64_t)hyperlinkCellID
{
  v0 = [MEMORY[0x277D6C290] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorage(TablesAdditions) hyperlinkCellID]"];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSWPStorage_TablesAdditions.mm"];

  return [v0 handleFailureInFunction:v1 file:v2 lineNumber:105 description:@"Out-of-bounds type assignment was clamped to max"];
}

@end