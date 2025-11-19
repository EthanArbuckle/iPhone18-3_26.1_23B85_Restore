@interface SUSUISoftwareUpdateRebootingAlertItem
- (id)message;
- (id)title;
@end

@implementation SUSUISoftwareUpdateRebootingAlertItem

- (id)title
{
  v3 = sub_1DF30();
  v4 = [v3 localizedStringForKey:@"SOFTWARE_UPDATE_REBOOTING_ALERT_TITLE" value:&stru_62DF0 table:@"ui_alerts"];

  return v4;
}

- (id)message
{
  v3 = sub_1DF30();
  v4 = [v3 localizedStringForKey:@"SOFTWARE_UPDATE_REBOOTING_ALERT_BODY" value:&stru_62DF0 table:@"ui_alerts"];

  return v4;
}

@end