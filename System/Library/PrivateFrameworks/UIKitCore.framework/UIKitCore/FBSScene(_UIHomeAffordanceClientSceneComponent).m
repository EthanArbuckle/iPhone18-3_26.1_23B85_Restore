@interface FBSScene(_UIHomeAffordanceClientSceneComponent)
- (id)_homeAffordanceClientSceneComponent;
@end

@implementation FBSScene(_UIHomeAffordanceClientSceneComponent)

- (id)_homeAffordanceClientSceneComponent
{
  if (_UIDeviceSupportsGlobalEdgeSwipeTouches() && _UIApplicationSupportsHomeAffordanceObservation())
  {
    v2 = objc_opt_class();
    v3 = [a1 componentForExtension:v2 ofClass:objc_opt_class()];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end