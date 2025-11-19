@interface _UIStatusBarFocusableImageView
- (void)applyStyleAttributes:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
@end

@implementation _UIStatusBarFocusableImageView

- (void)applyStyleAttributes:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarFocusableImageView;
  v4 = a3;
  [(_UIStatusBarImageView *)&v7 applyStyleAttributes:v4];
  v5 = [v4 imageTintColor];

  unfocusedTintColor = self->_unfocusedTintColor;
  self->_unfocusedTintColor = v5;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = [a3 nextFocusedItem];
  if (v6 == self)
  {
    v5 = [(_UIStatusBarFocusableImageView *)self focusedImageTintColor];
    [(UIView *)self setTintColor:v5];
  }

  else
  {
    [(UIView *)self setTintColor:self->_unfocusedTintColor];
  }
}

@end