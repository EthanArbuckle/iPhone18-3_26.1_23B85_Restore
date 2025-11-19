@interface NSURL(UserNotificationsUIKit)
+ (id)nc_notificationSettingsURLForSectionIdentifier:()UserNotificationsUIKit isAppClip:;
@end

@implementation NSURL(UserNotificationsUIKit)

+ (id)nc_notificationSettingsURLForSectionIdentifier:()UserNotificationsUIKit isAppClip:
{
  if (a4)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", @"prefs:root=NOTIFICATIONS_ID&path=", @"APP_CLIPS_ID/", a3];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"prefs:root=NOTIFICATIONS_ID&path=", a3, v7];
  }
  v4 = ;
  v5 = [MEMORY[0x277CBEBC0] URLWithString:v4];

  return v5;
}

@end