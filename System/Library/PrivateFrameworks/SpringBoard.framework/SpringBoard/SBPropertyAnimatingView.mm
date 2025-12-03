@interface SBPropertyAnimatingView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
@end

@implementation SBPropertyAnimatingView

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  animatedLayerProperties = [(SBPropertyAnimatingView *)self animatedLayerProperties];
  v6 = [animatedLayerProperties containsObject:keyCopy];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBPropertyAnimatingView;
    v7 = [(SBPropertyAnimatingView *)&v9 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v7;
}

@end