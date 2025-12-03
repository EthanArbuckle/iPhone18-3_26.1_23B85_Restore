@interface _UIStatusBarRadarView
- (CGSize)intrinsicContentSize;
- (_UIStatusBarRadarView)initWithFrame:(CGRect)frame;
- (id)_tintColor;
- (void)_updateTintColor;
- (void)applyStyleAttributes:(id)attributes;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
@end

@implementation _UIStatusBarRadarView

- (_UIStatusBarRadarView)initWithFrame:(CGRect)frame
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = _UIStatusBarRadarView;
  v3 = [(_UIStatusBarImageView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(UIView *)v3 layer];
    [layer setCornerRadius:12.0];

    v10[0] = objc_opt_class();
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v7 = [(UIView *)v4 registerForTraitChanges:v6 withAction:sel__updateTintColor];
  }

  return v4;
}

- (void)applyStyleAttributes:(id)attributes
{
  v4.receiver = self;
  v4.super_class = _UIStatusBarRadarView;
  [(_UIStatusBarImageView *)&v4 applyStyleAttributes:attributes];
  [(_UIStatusBarRadarView *)self _updateTintColor];
}

- (void)_updateTintColor
{
  _tintColor = [(_UIStatusBarRadarView *)self _tintColor];
  [(UIView *)self setTintColor:_tintColor];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  nextFocusedItem = [context nextFocusedItem];

  if (nextFocusedItem == self)
  {
    v6 = +[UIColor _carSystemFocusColor];
    [(UIImageView *)self setBackgroundColor:v6];
  }

  else
  {
    [(UIImageView *)self setBackgroundColor:0];
  }

  [(_UIStatusBarRadarView *)self _updateTintColor];
}

- (CGSize)intrinsicContentSize
{
  v2 = 24.0;
  v3 = 24.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)_tintColor
{
  isFocused = [(UIView *)self isFocused];
  if (isFocused)
  {
    traitCollection = [(UIView *)self traitCollection];
    if ([traitCollection userInterfaceStyle] == 1)
    {

LABEL_7:
      v7 = +[UIColor whiteColor];
      goto LABEL_9;
    }
  }

  traitCollection2 = [(UIView *)self traitCollection];
  userInterfaceStyle = [traitCollection2 userInterfaceStyle];

  if (isFocused)
  {
  }

  if (userInterfaceStyle == 2)
  {
    goto LABEL_7;
  }

  v7 = +[UIColor blackColor];
LABEL_9:

  return v7;
}

@end