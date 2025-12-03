@interface TVPHeicUtil
+ (BOOL)isHeicFormatAllowed;
+ (BOOL)isTVApp;
@end

@implementation TVPHeicUtil

+ (BOOL)isTVApp
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if ([bundleIdentifier isEqualToString:@"com.apple.TVWatchList"] & 1) != 0 || (objc_msgSend(bundleIdentifier, "isEqualToString:", @"com.apple.tv"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [bundleIdentifier isEqualToString:@"com.apple.TV"];
  }

  return v4;
}

+ (BOOL)isHeicFormatAllowed
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {

    LOBYTE(v2) = +[TVPHeicUtil isTVApp];
  }

  return v2;
}

@end