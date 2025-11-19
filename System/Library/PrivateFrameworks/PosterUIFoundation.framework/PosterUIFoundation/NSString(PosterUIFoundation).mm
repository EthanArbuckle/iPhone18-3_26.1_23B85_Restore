@interface NSString(PosterUIFoundation)
+ (__CFString)pui_NSStringFromUIUserInterfaceStyle:()PosterUIFoundation;
@end

@implementation NSString(PosterUIFoundation)

+ (__CFString)pui_NSStringFromUIUserInterfaceStyle:()PosterUIFoundation
{
  v3 = @"Unspecified";
  if (a3 == 2)
  {
    v3 = @"Dark";
  }

  if (a3 == 1)
  {
    return @"Light";
  }

  else
  {
    return v3;
  }
}

@end