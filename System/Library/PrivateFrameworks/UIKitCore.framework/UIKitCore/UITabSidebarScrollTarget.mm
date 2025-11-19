@interface UITabSidebarScrollTarget
+ (id)targetForFooter;
+ (id)targetForHeader;
+ (id)targetForTab:(id)a3;
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

+ (id)targetForTab:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = v4[2];
  v4[2] = v3;

  return v4;
}

@end