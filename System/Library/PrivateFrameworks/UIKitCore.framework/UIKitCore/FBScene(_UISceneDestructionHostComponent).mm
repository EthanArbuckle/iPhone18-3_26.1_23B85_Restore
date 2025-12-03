@interface FBScene(_UISceneDestructionHostComponent)
- (void)_sceneDestructionHostComponent;
@end

@implementation FBScene(_UISceneDestructionHostComponent)

- (void)_sceneDestructionHostComponent
{
  v2 = objc_opt_class();
  v3 = [self componentForExtension:v2 ofClass:objc_opt_class()];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  v6 = v4;

  return v4;
}

@end