@interface _UIStatusBarFocusableImageView
- (void)applyStyleAttributes:(id)attributes;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
@end

@implementation _UIStatusBarFocusableImageView

- (void)applyStyleAttributes:(id)attributes
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarFocusableImageView;
  attributesCopy = attributes;
  [(_UIStatusBarImageView *)&v7 applyStyleAttributes:attributesCopy];
  imageTintColor = [attributesCopy imageTintColor];

  unfocusedTintColor = self->_unfocusedTintColor;
  self->_unfocusedTintColor = imageTintColor;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  nextFocusedItem = [context nextFocusedItem];
  if (nextFocusedItem == self)
  {
    focusedImageTintColor = [(_UIStatusBarFocusableImageView *)self focusedImageTintColor];
    [(UIView *)self setTintColor:focusedImageTintColor];
  }

  else
  {
    [(UIView *)self setTintColor:self->_unfocusedTintColor];
  }
}

@end