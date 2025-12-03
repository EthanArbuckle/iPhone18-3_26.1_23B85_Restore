@interface _UIBarBackgroundShadowContentImageView
- (_UIBarBackgroundShadowContentImageView)initWithFrame:(CGRect)frame;
- (void)_applyTintColorToBackgroundIfNecessary;
- (void)tintColorDidChange;
@end

@implementation _UIBarBackgroundShadowContentImageView

- (void)_applyTintColorToBackgroundIfNecessary
{
  if (self->_applyTintColorToBackgroundColor)
  {
    tintColor = [(UIView *)self tintColor];
    [(UIImageView *)self setBackgroundColor:tintColor];
  }
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = _UIBarBackgroundShadowContentImageView;
  [(UIImageView *)&v3 tintColorDidChange];
  [(_UIBarBackgroundShadowContentImageView *)self _applyTintColorToBackgroundIfNecessary];
}

- (_UIBarBackgroundShadowContentImageView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = _UIBarBackgroundShadowContentImageView;
  v3 = [(UIImageView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(UIView *)v3 layer];
    [layer setAllowsEdgeAntialiasing:1];
  }

  return v4;
}

@end