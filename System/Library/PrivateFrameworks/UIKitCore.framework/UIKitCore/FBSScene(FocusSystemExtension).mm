@interface FBSScene(FocusSystemExtension)
- (uint64_t)focusSystemManager;
@end

@implementation FBSScene(FocusSystemExtension)

- (uint64_t)focusSystemManager
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();

  return [self componentForExtension:v2 ofClass:v3];
}

@end