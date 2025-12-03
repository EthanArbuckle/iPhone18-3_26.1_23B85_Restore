@interface UITabSidebarScrollTarget
+ (id)targetForFooter;
+ (id)targetForHeader;
+ (id)targetForTab:(id)tab;
@end

@implementation UITabSidebarScrollTarget

+ (id)targetForHeader
{
  v2 = objc_opt_new();
  v2[8] = 1;

  return v2;
}

+ (id)targetForFooter
{
  v2 = objc_opt_new();
  v2[8] = 0;

  return v2;
}

+ (id)targetForTab:(id)tab
{
  tabCopy = tab;
  v4 = objc_opt_new();
  v5 = v4[2];
  v4[2] = tabCopy;

  return v4;
}

@end