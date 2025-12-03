@interface APSMessage(UserNotificationsCore)
- (id)unc_bundleIdentifier;
@end

@implementation APSMessage(UserNotificationsCore)

- (id)unc_bundleIdentifier
{
  topic = [self topic];
  if ([topic hasPrefix:@"com.apple.icloud-container."])
  {
    v2 = [topic substringFromIndex:{objc_msgSend(@"com.apple.icloud-container.", "length")}];
  }

  else
  {
    v2 = topic;
  }

  v3 = v2;

  return v3;
}

@end