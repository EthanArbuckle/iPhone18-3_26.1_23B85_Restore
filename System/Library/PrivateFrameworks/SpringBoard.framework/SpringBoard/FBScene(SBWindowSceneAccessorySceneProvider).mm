@interface FBScene(SBWindowSceneAccessorySceneProvider)
- (uint64_t)_localComponent;
@end

@implementation FBScene(SBWindowSceneAccessorySceneProvider)

- (uint64_t)_localComponent
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();

  return [a1 componentForExtension:v2 ofClass:v3];
}

@end