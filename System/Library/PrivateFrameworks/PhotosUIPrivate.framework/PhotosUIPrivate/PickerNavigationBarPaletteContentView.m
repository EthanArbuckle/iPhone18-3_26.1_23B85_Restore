@interface PickerNavigationBarPaletteContentView
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
@end

@implementation PickerNavigationBarPaletteContentView

- (void)layoutSubviews
{
  v2 = self;
  sub_1B3797B88();
}

- (void)layoutMarginsDidChange
{
  v2 = self;
  sub_1B3797E50();
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_1B3797EE0(a4, x, y);

  return v10;
}

@end