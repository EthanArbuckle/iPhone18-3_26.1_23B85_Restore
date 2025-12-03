@interface _UIReflectingContainerView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
@end

@implementation _UIReflectingContainerView

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  v7.receiver = self;
  v7.super_class = _UIReflectingContainerView;
  if ([(UIView *)&v7 _shouldAnimatePropertyWithKey:keyCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [keyCopy isEqualToString:@"instanceTransform"];
  }

  return v5;
}

@end