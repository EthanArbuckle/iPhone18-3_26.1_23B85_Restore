@interface FBScene(_UIHomeAffordanceHostSceneComponent)
- (id)ui_homeAffordanceHostSceneComponent;
@end

@implementation FBScene(_UIHomeAffordanceHostSceneComponent)

- (id)ui_homeAffordanceHostSceneComponent
{
  if (_UIDeviceSupportsGlobalEdgeSwipeTouches() && _UIApplicationSupportsHomeAffordanceObservation())
  {
    v2 = objc_opt_class();
    v3 = [self componentForExtension:v2 ofClass:objc_opt_class()];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end