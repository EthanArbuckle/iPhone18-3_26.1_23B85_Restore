@interface STUIStatusBarFocusableImageView
- (void)applyStyleAttributes:(id)attributes;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
@end

@implementation STUIStatusBarFocusableImageView

- (void)applyStyleAttributes:(id)attributes
{
  v7.receiver = self;
  v7.super_class = STUIStatusBarFocusableImageView;
  attributesCopy = attributes;
  [(STUIStatusBarImageView *)&v7 applyStyleAttributes:attributesCopy];
  imageTintColor = [attributesCopy imageTintColor];

  unfocusedTintColor = self->_unfocusedTintColor;
  self->_unfocusedTintColor = imageTintColor;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  nextFocusedItem = [context nextFocusedItem];
  if (nextFocusedItem == self)
  {
    focusedImageTintColor = [(STUIStatusBarFocusableImageView *)self focusedImageTintColor];
    [(STUIStatusBarFocusableImageView *)self setTintColor:focusedImageTintColor];
  }

  else
  {
    [(STUIStatusBarFocusableImageView *)self setTintColor:self->_unfocusedTintColor];
  }
}

@end