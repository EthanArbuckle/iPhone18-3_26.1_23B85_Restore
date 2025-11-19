@interface APSMessage(UserNotificationsCore)
- (id)unc_bundleIdentifier;
@end

@implementation APSMessage(UserNotificationsCore)

- (id)unc_bundleIdentifier
{
  v1 = [a1 topic];
  if ([v1 hasPrefix:@"com.apple.icloud-container."])
  {
    v2 = [v1 substringFromIndex:{objc_msgSend(@"com.apple.icloud-container.", "length")}];
  }

  else
  {
    v2 = v1;
  }

  v3 = v2;

  return v3;
}

@end