@interface FBSScene(ScrollPocket)
- (uint64_t)ui_scrollPocket;
@end

@implementation FBSScene(ScrollPocket)

- (uint64_t)ui_scrollPocket
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();

  return [self componentForExtension:v2 ofClass:v3];
}

@end