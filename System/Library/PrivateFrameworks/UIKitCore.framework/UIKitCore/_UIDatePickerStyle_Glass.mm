@interface _UIDatePickerStyle_Glass
- (id)createOverlayBackgroundView;
@end

@implementation _UIDatePickerStyle_Glass

- (id)createOverlayBackgroundView
{
  v5.receiver = self;
  v5.super_class = _UIDatePickerStyle_Glass;
  v2 = [(_UIDatePickerStyle_iOS *)&v5 createOverlayBackgroundView];
  [v2 setEffect:0];
  v3 = [[_UIViewGlass alloc] initWithVariant:0];
  [v2 _setBackground:v3];

  return v2;
}

@end