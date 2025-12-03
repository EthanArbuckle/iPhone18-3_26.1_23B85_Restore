@interface _PLKLegibilityContainerView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
@end

@implementation _PLKLegibilityContainerView

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"filters.colorMatrix.inputColorMatrix"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _PLKLegibilityContainerView;
    v5 = [(_PLKLegibilityContainerView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

@end