@interface SBSAContainerPanGestureDescriptionMutator
- (CGPoint)initialLocation;
- (CGPoint)translation;
- (id)_containerPanGestureDescription;
- (void)setInitialLocation:(CGPoint)location;
- (void)setTranslation:(CGPoint)translation;
@end

@implementation SBSAContainerPanGestureDescriptionMutator

- (CGPoint)initialLocation
{
  _containerPanGestureDescription = [(SBSAContainerPanGestureDescriptionMutator *)self _containerPanGestureDescription];
  [_containerPanGestureDescription initialLocation];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setInitialLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  _containerPanGestureDescription = [(SBSAContainerPanGestureDescriptionMutator *)self _containerPanGestureDescription];
  [_containerPanGestureDescription _setInitialLocation:{x, y}];
}

- (CGPoint)translation
{
  _containerPanGestureDescription = [(SBSAContainerPanGestureDescriptionMutator *)self _containerPanGestureDescription];
  [_containerPanGestureDescription translation];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setTranslation:(CGPoint)translation
{
  y = translation.y;
  x = translation.x;
  _containerPanGestureDescription = [(SBSAContainerPanGestureDescriptionMutator *)self _containerPanGestureDescription];
  [_containerPanGestureDescription _setTranslation:{x, y}];
}

- (id)_containerPanGestureDescription
{
  gestureDescription = [(SBSAGestureDescriptionMutator *)self gestureDescription];
  v3 = objc_opt_class();
  v4 = gestureDescription;
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