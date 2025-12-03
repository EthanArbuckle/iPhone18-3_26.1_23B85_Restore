@interface WBSExtensionCyclerCommandHandler
- (void)fetchTopLevelBookmarkList:(id)list;
@end

@implementation WBSExtensionCyclerCommandHandler

- (void)fetchTopLevelBookmarkList:(id)list
{
  listCopy = list;
  v5 = [[WBSCyclerItemListRepresentation alloc] initWithTitle:0 uniqueIdentifier:&stru_1F3A5E418];
  (*(list + 2))(listCopy, v5);
}

@end