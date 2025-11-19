@interface _UISplitViewControllerAdaptiveColumnView.ClippingView
- (_TtCE5UIKitCSo40_UISplitViewControllerAdaptiveColumnViewP33_E55D530921B5D45A8EA231E2252C983512ClippingView)initWithCoder:(id)a3;
- (_TtCE5UIKitCSo40_UISplitViewControllerAdaptiveColumnViewP33_E55D530921B5D45A8EA231E2252C983512ClippingView)initWithFrame:(CGRect)a3;
@end

@implementation _UISplitViewControllerAdaptiveColumnView.ClippingView

- (_TtCE5UIKitCSo40_UISplitViewControllerAdaptiveColumnViewP33_E55D530921B5D45A8EA231E2252C983512ClippingView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = _s12ClippingViewCMa();
  return [(UIView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCE5UIKitCSo40_UISplitViewControllerAdaptiveColumnViewP33_E55D530921B5D45A8EA231E2252C983512ClippingView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = _s12ClippingViewCMa();
  v4 = a3;
  v5 = [(UIView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end