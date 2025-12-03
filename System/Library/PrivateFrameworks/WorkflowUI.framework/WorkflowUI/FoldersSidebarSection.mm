@interface FoldersSidebarSection
- (void)databaseResultDidChange:(id)change;
@end

@implementation FoldersSidebarSection

- (void)databaseResultDidChange:(id)change
{
  changeCopy = change;

  sub_274761438();
}

@end