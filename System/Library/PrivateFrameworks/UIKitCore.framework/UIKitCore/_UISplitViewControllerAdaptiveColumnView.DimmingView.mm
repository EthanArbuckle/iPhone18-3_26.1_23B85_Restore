@interface _UISplitViewControllerAdaptiveColumnView.DimmingView
- (_TtCE5UIKitCSo40_UISplitViewControllerAdaptiveColumnViewP33_E55D530921B5D45A8EA231E2252C983511DimmingView)initWithCoder:(id)coder;
- (_TtCE5UIKitCSo40_UISplitViewControllerAdaptiveColumnViewP33_E55D530921B5D45A8EA231E2252C983511DimmingView)initWithFrame:(CGRect)frame;
@end

@implementation _UISplitViewControllerAdaptiveColumnView.DimmingView

- (_TtCE5UIKitCSo40_UISplitViewControllerAdaptiveColumnViewP33_E55D530921B5D45A8EA231E2252C983511DimmingView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12.receiver = self;
  v12.super_class = _s11DimmingViewCMa();
  height = [(UIView *)&v12 initWithFrame:x, y, width, height];
  v8 = objc_opt_self();
  v9 = height;
  _dimmingViewColor = [v8 _dimmingViewColor];
  [(UIView *)v9 setBackgroundColor:_dimmingViewColor];

  return v9;
}

- (_TtCE5UIKitCSo40_UISplitViewControllerAdaptiveColumnViewP33_E55D530921B5D45A8EA231E2252C983511DimmingView)initWithCoder:(id)coder
{
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

@end