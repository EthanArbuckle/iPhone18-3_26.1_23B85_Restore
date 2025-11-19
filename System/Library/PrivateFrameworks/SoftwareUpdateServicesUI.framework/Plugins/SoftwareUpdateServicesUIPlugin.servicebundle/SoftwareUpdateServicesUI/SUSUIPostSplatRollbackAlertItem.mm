@interface SUSUIPostSplatRollbackAlertItem
- (id)message;
- (id)title;
@end

@implementation SUSUIPostSplatRollbackAlertItem

- (id)title
{
  v3 = sub_6CB0();
  v4 = [v3 localizedStringForKey:@"LOCKSCREEN_SOFTWARE_ROLLBACK_ALERT_TITLE" value:&stru_62DF0 table:@"ui_alerts"];

  return v4;
}

- (id)message
{
  v7 = sub_6CB0();
  v6 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"LOCKSCREEN_SOFTWARE_ROLLBACK_ALERT_MESSAGE"];
  v5 = [v7 localizedStringForKey:? value:? table:?];
  v4 = [(SUSUIBaseRollbackAlertItem *)self rollbackDescriptor];
  v3 = [(SURollbackDescriptor *)v4 productVersion];
  v8 = [NSString stringWithFormat:v5, v3];

  return v8;
}

@end