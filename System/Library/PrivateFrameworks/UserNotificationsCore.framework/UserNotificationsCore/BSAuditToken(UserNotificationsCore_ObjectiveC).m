@interface BSAuditToken(UserNotificationsCore_ObjectiveC)
- (uint64_t)unc_isInternalUserNotificationsTool;
@end

@implementation BSAuditToken(UserNotificationsCore_ObjectiveC)

- (uint64_t)unc_isInternalUserNotificationsTool
{
  v2 = [a1 unc_applicationIdentifier];
  if ([v2 isEqualToString:@"com.apple.usernotifications.untool"])
  {
    v3 = 1;
  }

  else
  {
    v4 = [a1 unc_applicationIdentifier];
    v3 = [v4 isEqualToString:@"com.apple.internal.suiuntool"];
  }

  return v3;
}

@end