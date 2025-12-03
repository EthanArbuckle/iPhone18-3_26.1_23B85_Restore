@interface CalendarTitleView
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CalendarTitleView

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_20BCE57D4(change);
}

@end