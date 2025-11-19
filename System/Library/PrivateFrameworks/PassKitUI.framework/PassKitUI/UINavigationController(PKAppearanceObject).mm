@interface UINavigationController(PKAppearanceObject)
- (id)pk_childrenForAppearance;
@end

@implementation UINavigationController(PKAppearanceObject)

- (id)pk_childrenForAppearance
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [a1 navigationBar];
  [v2 addObject:v3];

  v4 = [a1 childViewControllers];
  [v2 pk_safelyAddObjectsFromArray:v4];

  v5 = [v2 copy];

  return v5;
}

@end