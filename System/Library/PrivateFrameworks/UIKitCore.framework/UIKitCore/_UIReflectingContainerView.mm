@interface _UIReflectingContainerView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
@end

@implementation _UIReflectingContainerView

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UIReflectingContainerView;
  if ([(UIView *)&v7 _shouldAnimatePropertyWithKey:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:@"instanceTransform"];
  }

  return v5;
}

@end