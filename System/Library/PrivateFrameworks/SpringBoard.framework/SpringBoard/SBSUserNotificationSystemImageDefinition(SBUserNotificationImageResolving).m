@interface SBSUserNotificationSystemImageDefinition(SBUserNotificationImageResolving)
- (id)sb_resolvedImage;
- (id)sb_resolvedTintColor;
@end

@implementation SBSUserNotificationSystemImageDefinition(SBUserNotificationImageResolving)

- (id)sb_resolvedImage
{
  v1 = [a1 systemImageName];
  v2 = [MEMORY[0x277D755B8] _systemImageNamed:v1];
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
  v1 = [a1 tintColor];
  v2 = [v1 sb_resolvedColor];

  return v2;
}

@end