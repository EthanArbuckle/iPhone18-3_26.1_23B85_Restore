@interface SharedAlbumsActivityItemListManager
- (void)feedSectionInfosManager:(id)manager sectionInfosDidChange:(id)change;
@end

@implementation SharedAlbumsActivityItemListManager

- (void)feedSectionInfosManager:(id)manager sectionInfosDidChange:(id)change
{
  managerCopy = manager;
  changeCopy = change;

  sub_1A40CAF14(changeCopy);
}

@end