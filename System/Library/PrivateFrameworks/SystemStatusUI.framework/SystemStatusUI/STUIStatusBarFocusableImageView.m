@interface STUIStatusBarFocusableImageView
- (void)applyStyleAttributes:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
@end

@implementation STUIStatusBarFocusableImageView

- (void)applyStyleAttributes:(id)a3
{
  v7.receiver = self;
  v7.super_class = STUIStatusBarFocusableImageView;
  v4 = a3;
  [(STUIStatusBarImageView *)&v7 applyStyleAttributes:v4];
  v5 = [v4 imageTintColor];

  unfocusedTintColor = self->_unfocusedTintColor;
  self->_unfocusedTintColor = v5;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = [a3 nextFocusedItem];
  if (v6 == self)
  {
    v5 = [(STUIStatusBarFocusableImageView *)self focusedImageTintColor];
    [(STUIStatusBarFocusableImageView *)self setTintColor:v5];
  }

  else
  {
    [(STUIStatusBarFocusableImageView *)self setTintColor:self->_unfocusedTintColor];
  }
}

@end