@interface BSAuditToken(UserNotificationsCore_ObjectiveC)
- (uint64_t)unc_isInternalUserNotificationsTool;
@end

@implementation BSAuditToken(UserNotificationsCore_ObjectiveC)

- (uint64_t)unc_isInternalUserNotificationsTool
{
  unc_applicationIdentifier = [self unc_applicationIdentifier];
  if ([unc_applicationIdentifier isEqualToString:@"com.apple.usernotifications.untool"])
  {
    v3 = 1;
  }

  else
  {
    unc_applicationIdentifier2 = [self unc_applicationIdentifier];
    v3 = [unc_applicationIdentifier2 isEqualToString:@"com.apple.internal.suiuntool"];
  }

  return v3;
}

@end