@interface __PGView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
@end

@implementation __PGView

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v5 = [(__PGView *)self animatedLayerProperties];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = __PGView;
    v7 = [(__PGView *)&v9 _shouldAnimatePropertyWithKey:v4];
  }

  return v7;
}

@end