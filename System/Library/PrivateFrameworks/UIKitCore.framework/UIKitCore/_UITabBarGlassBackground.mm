@interface _UITabBarGlassBackground
- (UIView)customBackgroundView;
- (_UITabBarGlassBackground)initWithCoder:(id)coder;
- (_UITabBarGlassBackground)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setCustomBackgroundView:(id)view;
@end

@implementation _UITabBarGlassBackground

- (void)layoutSubviews
{
  selfCopy = self;
  sub_188FCDA54();
}

- (UIView)customBackgroundView
{
  v4.receiver = self;
  v4.super_class = _UITabBarGlassBackground;
  customBackgroundView = [(_UIBarBackground *)&v4 customBackgroundView];

  return customBackgroundView;
}

- (void)setCustomBackgroundView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_188FCDE24(view);
}

- (_UITabBarGlassBackground)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = _UITabBarGlassBackground;
  return [(_UIBarBackground *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (_UITabBarGlassBackground)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _UITabBarGlassBackground;
  coderCopy = coder;
  v4 = [(_UIBarBackground *)&v6 initWithCoder:coderCopy];

  if (v4)
  {
  }

  return v4;
}

@end