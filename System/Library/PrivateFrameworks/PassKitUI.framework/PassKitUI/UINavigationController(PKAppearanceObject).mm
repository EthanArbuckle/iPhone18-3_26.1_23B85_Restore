@interface UINavigationController(PKAppearanceObject)
- (id)pk_childrenForAppearance;
@end

@implementation UINavigationController(PKAppearanceObject)

- (id)pk_childrenForAppearance
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  navigationBar = [self navigationBar];
  [v2 addObject:navigationBar];

  childViewControllers = [self childViewControllers];
  [v2 pk_safelyAddObjectsFromArray:childViewControllers];

  v5 = [v2 copy];

  return v5;
}

@end