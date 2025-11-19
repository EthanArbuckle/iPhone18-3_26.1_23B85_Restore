@interface WBSExtensionCyclerCommandHandler
- (void)fetchTopLevelBookmarkList:(id)a3;
@end

@implementation WBSExtensionCyclerCommandHandler

- (void)fetchTopLevelBookmarkList:(id)a3
{
  v4 = a3;
  v5 = [[WBSCyclerItemListRepresentation alloc] initWithTitle:0 uniqueIdentifier:&stru_1F3A5E418];
  (*(a3 + 2))(v4, v5);
}

@end