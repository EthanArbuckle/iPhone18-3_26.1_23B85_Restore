@interface AppAssociatedShortcutsDataSource
- (void)databaseResultDidChange:(id)change;
@end

@implementation AppAssociatedShortcutsDataSource

- (void)databaseResultDidChange:(id)change
{
  changeCopy = change;

  sub_1CA2F4708(changeCopy);
}

@end