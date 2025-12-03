@interface FBScene(ScrollPocketInternal)
- (id)ui_scrollPocket;
@end

@implementation FBScene(ScrollPocketInternal)

- (id)ui_scrollPocket
{
  v2 = objc_opt_class();
  v3 = [self componentForExtension:v2 ofClass:objc_opt_class()];
  if (!v3)
  {
    [self addExtension:objc_opt_class()];
    v4 = objc_opt_class();
    v3 = [self componentForExtension:v4 ofClass:objc_opt_class()];
  }

  return v3;
}

@end