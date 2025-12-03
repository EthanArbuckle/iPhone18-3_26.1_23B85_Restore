@interface PSUISearchController
- (int64_t)preferredStatusBarStyle;
@end

@implementation PSUISearchController

- (int64_t)preferredStatusBarStyle
{
  v2 = +[PSListController appearance];
  usesDarkTheme = [v2 usesDarkTheme];

  return usesDarkTheme;
}

@end