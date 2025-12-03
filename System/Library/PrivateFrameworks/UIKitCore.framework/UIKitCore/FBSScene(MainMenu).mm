@interface FBSScene(MainMenu)
- (uint64_t)mainMenu;
@end

@implementation FBSScene(MainMenu)

- (uint64_t)mainMenu
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();

  return [self componentForExtension:v2 ofClass:v3];
}

@end