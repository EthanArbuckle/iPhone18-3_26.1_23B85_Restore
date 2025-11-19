@interface NSUserDefaults(WLKAdditions)
+ (id)wlk_userDefaults;
@end

@implementation NSUserDefaults(WLKAdditions)

+ (id)wlk_userDefaults
{
  if (wlk_userDefaults_onceToken != -1)
  {
    +[NSUserDefaults(WLKAdditions) wlk_userDefaults];
  }

  v1 = wlk_userDefaults___wlkDefaults;

  return v1;
}

@end