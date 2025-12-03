@interface UIApplication(UIAlternateApplicationIcons)
- (NSString)_alternateIconName;
@end

@implementation UIApplication(UIAlternateApplicationIcons)

- (NSString)_alternateIconName
{
  v2 = LSApplicationProxyForSettingCurrentApplicationIcon();
  v3 = v2;
  if (v2)
  {
    alternateIconName = [v2 alternateIconName];
  }

  else
  {
    alternateIconName = 0;
  }

  return alternateIconName;
}

@end