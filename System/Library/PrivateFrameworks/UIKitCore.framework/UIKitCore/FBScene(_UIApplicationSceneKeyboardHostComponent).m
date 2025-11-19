@interface FBScene(_UIApplicationSceneKeyboardHostComponent)
- (uint64_t)_keyboardHostComponent;
@end

@implementation FBScene(_UIApplicationSceneKeyboardHostComponent)

- (uint64_t)_keyboardHostComponent
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();

  return [a1 componentForExtension:v2 ofClass:v3];
}

@end