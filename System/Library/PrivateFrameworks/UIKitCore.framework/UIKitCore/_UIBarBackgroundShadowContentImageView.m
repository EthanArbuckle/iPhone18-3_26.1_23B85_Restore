@interface _UIBarBackgroundShadowContentImageView
- (_UIBarBackgroundShadowContentImageView)initWithFrame:(CGRect)a3;
- (void)_applyTintColorToBackgroundIfNecessary;
- (void)tintColorDidChange;
@end

@implementation _UIBarBackgroundShadowContentImageView

- (void)_applyTintColorToBackgroundIfNecessary
{
  if (self->_applyTintColorToBackgroundColor)
  {
    v4 = [(UIView *)self tintColor];
    [(UIImageView *)self setBackgroundColor:v4];
  }
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = _UIBarBackgroundShadowContentImageView;
  [(UIImageView *)&v3 tintColorDidChange];
  [(_UIBarBackgroundShadowContentImageView *)self _applyTintColorToBackgroundIfNecessary];
}

- (_UIBarBackgroundShadowContentImageView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = _UIBarBackgroundShadowContentImageView;
  v3 = [(UIImageView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(UIView *)v3 layer];
    [v5 setAllowsEdgeAntialiasing:1];
  }

  return v4;
}

@end