@interface __PGView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
@end

@implementation __PGView

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  animatedLayerProperties = [(__PGView *)self animatedLayerProperties];
  v6 = [animatedLayerProperties containsObject:keyCopy];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = __PGView;
    v7 = [(__PGView *)&v9 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v7;
}

@end