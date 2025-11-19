@interface UIViewController(PKAppearanceObject)
- (id)pk_childrenForAppearance;
@end

@implementation UIViewController(PKAppearanceObject)

- (id)pk_childrenForAppearance
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [a1 childViewControllers];
  [v2 pk_safelyAddObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end