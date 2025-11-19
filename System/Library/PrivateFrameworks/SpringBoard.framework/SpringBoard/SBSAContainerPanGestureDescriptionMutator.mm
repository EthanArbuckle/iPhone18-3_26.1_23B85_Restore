@interface SBSAContainerPanGestureDescriptionMutator
- (CGPoint)initialLocation;
- (CGPoint)translation;
- (id)_containerPanGestureDescription;
- (void)setInitialLocation:(CGPoint)a3;
- (void)setTranslation:(CGPoint)a3;
@end

@implementation SBSAContainerPanGestureDescriptionMutator

- (CGPoint)initialLocation
{
  v2 = [(SBSAContainerPanGestureDescriptionMutator *)self _containerPanGestureDescription];
  [v2 initialLocation];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setInitialLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(SBSAContainerPanGestureDescriptionMutator *)self _containerPanGestureDescription];
  [v5 _setInitialLocation:{x, y}];
}

- (CGPoint)translation
{
  v2 = [(SBSAContainerPanGestureDescriptionMutator *)self _containerPanGestureDescription];
  [v2 translation];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setTranslation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(SBSAContainerPanGestureDescriptionMutator *)self _containerPanGestureDescription];
  [v5 _setTranslation:{x, y}];
}

- (id)_containerPanGestureDescription
{
  v2 = [(SBSAGestureDescriptionMutator *)self gestureDescription];
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

@end