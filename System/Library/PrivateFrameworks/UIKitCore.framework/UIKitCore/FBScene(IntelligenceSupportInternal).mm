@interface FBScene(IntelligenceSupportInternal)
- (uint64_t)ui_intelligenceComponentIfExists;
@end

@implementation FBScene(IntelligenceSupportInternal)

- (uint64_t)ui_intelligenceComponentIfExists
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();

  return [self componentForExtension:v2 ofClass:v3];
}

@end