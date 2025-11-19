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
    v4 = [v2 alternateIconName];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end