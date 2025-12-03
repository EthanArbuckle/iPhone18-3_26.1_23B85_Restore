@interface FBSScene(SafeArea)
- (uint64_t)ui_safeArea;
@end

@implementation FBSScene(SafeArea)

- (uint64_t)ui_safeArea
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();

  return [self componentForExtension:v2 ofClass:v3];
}

@end