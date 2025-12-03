@interface _UIFloatingContentCornerRadiusAnimatingView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
@end

@implementation _UIFloatingContentCornerRadiusAnimatingView

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"cornerRadius"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UIFloatingContentCornerRadiusAnimatingView;
    v5 = [(UIView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

@end