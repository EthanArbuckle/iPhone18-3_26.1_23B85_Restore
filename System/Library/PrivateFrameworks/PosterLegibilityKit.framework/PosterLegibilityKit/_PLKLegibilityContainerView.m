@interface _PLKLegibilityContainerView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
@end

@implementation _PLKLegibilityContainerView

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"filters.colorMatrix.inputColorMatrix"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _PLKLegibilityContainerView;
    v5 = [(_PLKLegibilityContainerView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

@end