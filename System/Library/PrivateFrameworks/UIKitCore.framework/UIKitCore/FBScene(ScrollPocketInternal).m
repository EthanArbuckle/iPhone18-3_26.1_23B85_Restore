@interface FBScene(ScrollPocketInternal)
- (id)ui_scrollPocket;
@end

@implementation FBScene(ScrollPocketInternal)

- (id)ui_scrollPocket
{
  v2 = objc_opt_class();
  v3 = [a1 componentForExtension:v2 ofClass:objc_opt_class()];
  if (!v3)
  {
    [a1 addExtension:objc_opt_class()];
    v4 = objc_opt_class();
    v3 = [a1 componentForExtension:v4 ofClass:objc_opt_class()];
  }

  return v3;
}

@end