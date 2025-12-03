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
  rollbackDescriptor = [(SUSUIBaseRollbackAlertItem *)self rollbackDescriptor];
  productVersion = [(SURollbackDescriptor *)rollbackDescriptor productVersion];
  v8 = [NSString stringWithFormat:v5, productVersion];

  return v8;
}

@end