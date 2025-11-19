@interface SBPropertyAnimatingView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
@end

@implementation SBPropertyAnimatingView

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v5 = [(SBPropertyAnimatingView *)self animatedLayerProperties];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBPropertyAnimatingView;
    v7 = [(SBPropertyAnimatingView *)&v9 _shouldAnimatePropertyWithKey:v4];
  }

  return v7;
}

@end