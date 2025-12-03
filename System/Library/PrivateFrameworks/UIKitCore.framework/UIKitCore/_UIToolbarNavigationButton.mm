@interface _UIToolbarNavigationButton
- (void)updateImageIfNeededWithTintColor:(id)color;
@end

@implementation _UIToolbarNavigationButton

- (void)updateImageIfNeededWithTintColor:(id)color
{
  [(UINavigationButton *)self _setTintColor:color];

  [(UINavigationButton *)self _updateStyle];
}

@end