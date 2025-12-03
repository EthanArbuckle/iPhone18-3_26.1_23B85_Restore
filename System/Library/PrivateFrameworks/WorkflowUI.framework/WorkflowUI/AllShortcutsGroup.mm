@interface AllShortcutsGroup
- (void)databaseResultDidChange:(id)change;
@end

@implementation AllShortcutsGroup

- (void)databaseResultDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_274787BE8();
}

@end