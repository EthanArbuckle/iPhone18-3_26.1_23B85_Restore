@interface _UISplitViewControllerAdaptiveColumnView.ClippingView
- (_TtCE5UIKitCSo40_UISplitViewControllerAdaptiveColumnViewP33_E55D530921B5D45A8EA231E2252C983512ClippingView)initWithCoder:(id)coder;
- (_TtCE5UIKitCSo40_UISplitViewControllerAdaptiveColumnViewP33_E55D530921B5D45A8EA231E2252C983512ClippingView)initWithFrame:(CGRect)frame;
@end

@implementation _UISplitViewControllerAdaptiveColumnView.ClippingView

- (_TtCE5UIKitCSo40_UISplitViewControllerAdaptiveColumnViewP33_E55D530921B5D45A8EA231E2252C983512ClippingView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = _s12ClippingViewCMa();
  return [(UIView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCE5UIKitCSo40_UISplitViewControllerAdaptiveColumnViewP33_E55D530921B5D45A8EA231E2252C983512ClippingView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = _s12ClippingViewCMa();
  coderCopy = coder;
  v5 = [(UIView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end