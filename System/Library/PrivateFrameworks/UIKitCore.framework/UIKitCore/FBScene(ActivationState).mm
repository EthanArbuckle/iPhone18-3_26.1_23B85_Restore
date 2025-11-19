@interface FBScene(ActivationState)
- (uint64_t)ui_activationStateComponent;
@end

@implementation FBScene(ActivationState)

- (uint64_t)ui_activationStateComponent
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();

  return [a1 componentForExtension:v2 ofClass:v3];
}

@end