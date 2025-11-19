@interface _UISplitViewControllerAdaptiveColumnView.DimmingView
- (_TtCE5UIKitCSo40_UISplitViewControllerAdaptiveColumnViewP33_E55D530921B5D45A8EA231E2252C983511DimmingView)initWithCoder:(id)a3;
- (_TtCE5UIKitCSo40_UISplitViewControllerAdaptiveColumnViewP33_E55D530921B5D45A8EA231E2252C983511DimmingView)initWithFrame:(CGRect)a3;
@end

@implementation _UISplitViewControllerAdaptiveColumnView.DimmingView

- (_TtCE5UIKitCSo40_UISplitViewControllerAdaptiveColumnViewP33_E55D530921B5D45A8EA231E2252C983511DimmingView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12.receiver = self;
  v12.super_class = _s11DimmingViewCMa();
  v7 = [(UIView *)&v12 initWithFrame:x, y, width, height];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 _dimmingViewColor];
  [(UIView *)v9 setBackgroundColor:v10];

  return v9;
}

- (_TtCE5UIKitCSo40_UISplitViewControllerAdaptiveColumnViewP33_E55D530921B5D45A8EA231E2252C983511DimmingView)initWithCoder:(id)a3
{
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

@end