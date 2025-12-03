@interface _UIPlatterClippingView
- (_UIPlatterClippingView)initWithFrame:(CGRect)frame;
@end

@implementation _UIPlatterClippingView

- (_UIPlatterClippingView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UIPlatterClippingView;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 _setShouldAdaptToMaterials:0];
  }

  return v4;
}

@end