@interface PickerNavigationBarPaletteContentView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
@end

@implementation PickerNavigationBarPaletteContentView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1B3797B88();
}

- (void)layoutMarginsDidChange
{
  selfCopy = self;
  sub_1B3797E50();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_1B3797EE0(event, x, y);

  return v10;
}

@end