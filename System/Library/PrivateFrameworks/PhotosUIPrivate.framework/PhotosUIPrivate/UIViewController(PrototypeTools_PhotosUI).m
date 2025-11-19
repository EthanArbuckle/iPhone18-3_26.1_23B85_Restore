@interface UIViewController(PrototypeTools_PhotosUI)
- (uint64_t)pu_debugIsTransient;
- (void)pu_debugSetTransient:()PrototypeTools_PhotosUI;
@end

@implementation UIViewController(PrototypeTools_PhotosUI)

- (void)pu_debugSetTransient:()PrototypeTools_PhotosUI
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(a1, @"com.apple.photosui.debugTransient", v2, 1);
}

- (uint64_t)pu_debugIsTransient
{
  v1 = objc_getAssociatedObject(a1, @"com.apple.photosui.debugTransient");
  v2 = [v1 BOOLValue];

  return v2;
}

@end