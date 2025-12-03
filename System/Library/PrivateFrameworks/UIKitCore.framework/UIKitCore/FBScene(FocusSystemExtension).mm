@interface FBScene(FocusSystemExtension)
- (uint64_t)focusSystemController;
@end

@implementation FBScene(FocusSystemExtension)

- (uint64_t)focusSystemController
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();

  return [self componentForExtension:v2 ofClass:v3];
}

@end