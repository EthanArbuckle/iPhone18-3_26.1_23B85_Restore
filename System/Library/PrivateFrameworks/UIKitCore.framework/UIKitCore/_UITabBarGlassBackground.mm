@interface _UITabBarGlassBackground
- (UIView)customBackgroundView;
- (_UITabBarGlassBackground)initWithCoder:(id)a3;
- (_UITabBarGlassBackground)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setCustomBackgroundView:(id)a3;
@end

@implementation _UITabBarGlassBackground

- (void)layoutSubviews
{
  v2 = self;
  sub_188FCDA54();
}

- (UIView)customBackgroundView
{
  v4.receiver = self;
  v4.super_class = _UITabBarGlassBackground;
  v2 = [(_UIBarBackground *)&v4 customBackgroundView];

  return v2;
}

- (void)setCustomBackgroundView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_188FCDE24(a3);
}

- (_UITabBarGlassBackground)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _UITabBarGlassBackground;
  return [(_UIBarBackground *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (_UITabBarGlassBackground)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UITabBarGlassBackground;
  v3 = a3;
  v4 = [(_UIBarBackground *)&v6 initWithCoder:v3];

  if (v4)
  {
  }

  return v4;
}

@end