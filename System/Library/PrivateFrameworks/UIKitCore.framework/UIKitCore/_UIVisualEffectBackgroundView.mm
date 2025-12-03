@interface _UIVisualEffectBackgroundView
- (_UIVisualEffectBackgroundView)initWithFrame:(CGRect)frame;
@end

@implementation _UIVisualEffectBackgroundView

- (_UIVisualEffectBackgroundView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = _UIVisualEffectBackgroundView;
  v3 = [(_UIVisualEffectSubview *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    _nilBackgroundColor = [(_UIVisualEffectBackgroundView *)v3 _nilBackgroundColor];
    [(UIView *)v4 setBackgroundColor:_nilBackgroundColor];
  }

  return v4;
}

@end