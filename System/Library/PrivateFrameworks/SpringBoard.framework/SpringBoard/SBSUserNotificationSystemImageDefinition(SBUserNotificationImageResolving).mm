@interface SBSUserNotificationSystemImageDefinition(SBUserNotificationImageResolving)
- (id)sb_resolvedImage;
- (id)sb_resolvedTintColor;
@end

@implementation SBSUserNotificationSystemImageDefinition(SBUserNotificationImageResolving)

- (id)sb_resolvedImage
{
  systemImageName = [self systemImageName];
  v2 = [MEMORY[0x277D755B8] _systemImageNamed:systemImageName];
  if (!v2)
  {
    v3 = SBLogAlertItems();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSUserNotificationSystemImageDefinition(SBUserNotificationImageResolving) sb_resolvedImage];
    }
  }

  return v2;
}

- (id)sb_resolvedTintColor
{
  tintColor = [self tintColor];
  sb_resolvedColor = [tintColor sb_resolvedColor];

  return sb_resolvedColor;
}

@end