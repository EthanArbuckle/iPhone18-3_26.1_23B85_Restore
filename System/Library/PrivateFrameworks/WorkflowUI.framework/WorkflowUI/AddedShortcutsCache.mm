@interface AddedShortcutsCache
- (void)databaseResultDidChange:(id)change;
@end

@implementation AddedShortcutsCache

- (void)databaseResultDidChange:(id)change
{
  changeCopy = change;

  sub_2748E35EC();
}

@end