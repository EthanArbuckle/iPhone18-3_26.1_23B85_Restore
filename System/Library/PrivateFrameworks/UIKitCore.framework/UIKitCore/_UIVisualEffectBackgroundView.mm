@interface _UIVisualEffectBackgroundView
- (_UIVisualEffectBackgroundView)initWithFrame:(CGRect)a3;
@end

@implementation _UIVisualEffectBackgroundView

- (_UIVisualEffectBackgroundView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = _UIVisualEffectBackgroundView;
  v3 = [(_UIVisualEffectSubview *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(_UIVisualEffectBackgroundView *)v3 _nilBackgroundColor];
    [(UIView *)v4 setBackgroundColor:v5];
  }

  return v4;
}

@end