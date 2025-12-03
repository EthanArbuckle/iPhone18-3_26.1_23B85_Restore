@interface JSUserNotifications
- (id)getAuthorizationStatus:(id)status;
@end

@implementation JSUserNotifications

- (id)getAuthorizationStatus:(id)status
{
  v4 = sub_2705D7564();
  v6 = v5;
  selfCopy = self;
  v8 = sub_2705B0830(v4, v6);

  return v8;
}

@end