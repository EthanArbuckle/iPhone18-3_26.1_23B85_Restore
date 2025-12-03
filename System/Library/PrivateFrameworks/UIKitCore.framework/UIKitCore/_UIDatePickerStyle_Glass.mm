@interface _UIDatePickerStyle_Glass
- (id)createOverlayBackgroundView;
@end

@implementation _UIDatePickerStyle_Glass

- (id)createOverlayBackgroundView
{
  v5.receiver = self;
  v5.super_class = _UIDatePickerStyle_Glass;
  createOverlayBackgroundView = [(_UIDatePickerStyle_iOS *)&v5 createOverlayBackgroundView];
  [createOverlayBackgroundView setEffect:0];
  v3 = [[_UIViewGlass alloc] initWithVariant:0];
  [createOverlayBackgroundView _setBackground:v3];

  return createOverlayBackgroundView;
}

@end