@interface _UIApplicationInfo(SplashBoard)
- (uint64_t)xb_userInterfaceStyleForRequestedUserInterfaceStyle:()SplashBoard;
@end

@implementation _UIApplicationInfo(SplashBoard)

- (uint64_t)xb_userInterfaceStyleForRequestedUserInterfaceStyle:()SplashBoard
{
  result = [a1 supportedUserInterfaceStyle];
  if (result == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a3;
  }

  if (result != 2)
  {
    return v5;
  }

  return result;
}

@end