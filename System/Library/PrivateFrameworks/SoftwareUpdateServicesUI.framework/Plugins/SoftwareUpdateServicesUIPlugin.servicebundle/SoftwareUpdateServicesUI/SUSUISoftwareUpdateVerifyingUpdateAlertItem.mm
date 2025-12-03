@interface SUSUISoftwareUpdateVerifyingUpdateAlertItem
- (id)extensionDictionary;
@end

@implementation SUSUISoftwareUpdateVerifyingUpdateAlertItem

- (id)extensionDictionary
{
  v14[2] = self;
  v14[1] = a2;
  descriptor = [(SUSUIBaseSoftwareUpdateAlertItem *)self descriptor];
  v12 = 0;
  v10 = 0;
  v8 = 0;
  v6 = 0;
  if (([(SUDescriptor *)descriptor isSplatOnly]& 1) != 0)
  {
    v13 = sub_1DC40();
    v12 = 1;
    v11 = [v13 localizedStringForKey:@"RSR_VERIFYING_ALERT_BODY" value:&stru_62DF0 table:@"ui_alerts"];
    v10 = 1;
    v2 = v11;
  }

  else
  {
    v9 = sub_1DC40();
    v8 = 1;
    v7 = [v9 localizedStringForKey:@"SOFTWARE_UPDATE_VERIFYING_ALERT_BODY" value:&stru_62DF0 table:@"ui_alerts"];
    v6 = 1;
    v2 = v7;
  }

  v14[0] = v2;
  if (v6)
  {
  }

  if (v8)
  {
  }

  if (v10)
  {
  }

  if (v12)
  {
  }

  v15 = @"ExtensionAlertKeyVerifyingText";
  v16 = v14[0];
  v4 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  objc_storeStrong(v14, 0);

  return v4;
}

@end