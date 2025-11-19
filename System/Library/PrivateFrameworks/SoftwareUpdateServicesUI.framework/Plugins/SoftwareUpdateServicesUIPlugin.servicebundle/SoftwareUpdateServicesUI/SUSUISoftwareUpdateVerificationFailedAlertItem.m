@interface SUSUISoftwareUpdateVerificationFailedAlertItem
- (id)buttons;
- (id)graphicIcon;
- (id)message;
- (id)title;
@end

@implementation SUSUISoftwareUpdateVerificationFailedAlertItem

- (id)title
{
  v14[2] = self;
  v14[1] = a2;
  v5 = [(SUSUIBaseSoftwareUpdateAlertItem *)self descriptor];
  v12 = 0;
  v10 = 0;
  v8 = 0;
  v6 = 0;
  if (([(SUDescriptor *)v5 isSplatOnly]& 1) != 0)
  {
    v13 = sub_BDE0();
    v12 = 1;
    v11 = [v13 localizedStringForKey:@"RSR_VERIFICATION_FAILED_ALERT_TITLE" value:&stru_62DF0 table:@"ui_alerts"];
    v10 = 1;
    v2 = v11;
  }

  else
  {
    v9 = sub_BDE0();
    v8 = 1;
    v7 = [v9 localizedStringForKey:@"SOFTWARE_UPDATE_VERIFICATION_FAILED_ALERT_TITLE" value:&stru_62DF0 table:@"ui_alerts"];
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

  v4 = v14[0];
  objc_storeStrong(v14, 0);

  return v4;
}

- (id)message
{
  v16 = self;
  v15[1] = a2;
  v10 = sub_BDE0();
  v9 = [v10 localizedStringForKey:@"SOFTWARE_UPDATE_VERIFICATION_FAILED_ALERT_BODY" value:&stru_62DF0 table:@"ui_alerts"];
  v8 = [(SUSUIBaseSoftwareUpdateAlertItem *)v16 updateName];
  v15[0] = [NSString stringWithFormat:v9, v8];

  v11 = +[BSPlatform sharedInstance];
  v12 = [(BSPlatform *)v11 isInternalInstall];

  if (v12)
  {
    v7 = [*(&v16->super.super._controller + 2) userInfo];
    v14 = [v7 objectForKey:NSLocalizedRecoverySuggestionErrorKey];

    if (v14)
    {
      v6 = v14;
    }

    else
    {
      v6 = *(&v16->super.super._controller + 2);
    }

    v13 = [NSString stringWithFormat:@"\n\n[Internal Only]\n%@", v6];
    v2 = [NSString stringWithFormat:@"%@%@", v15[0], v13];
    v3 = v15[0];
    v15[0] = v2;

    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v14, 0);
  }

  v5 = v15[0];
  objc_storeStrong(v15, 0);

  return v5;
}

- (id)buttons
{
  v23 = self;
  v22[1] = a2;
  v22[0] = 0;
  if (![(SUSUIBaseAlertItem *)self isUILocked])
  {
    v21 = v23;
    v6 = [SUSUIAlertButtonDefinition alloc];
    v8 = sub_BDE0();
    v7 = [v8 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_FAILURE_ACTION_DETAILS" value:? table:?];
    v14 = _NSConcreteStackBlock;
    v15 = -1073741824;
    v16 = 0;
    v17 = sub_B8C0;
    v18 = &unk_5CCB0;
    v19 = v21;
    v20 = [(SUSUIAlertButtonDefinition *)v6 initWithLabel:v7 presentationStyle:0 isPreferredButton:1 handler:&v14];

    v9 = [SUSUIAlertButtonDefinition alloc];
    v11 = sub_BDE0();
    v10 = [v11 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_ALERT_ACTION_REMIND_ME_LATER" value:&stru_62DF0 table:@"ui_alerts"];
    v12 = v21;
    v13 = [SUSUIAlertButtonDefinition initWithLabel:v9 presentationStyle:"initWithLabel:presentationStyle:isPreferredButton:handler:" isPreferredButton:v10 handler:?];

    v24[0] = v20;
    v24[1] = v13;
    v2 = [NSArray arrayWithObjects:v24 count:2];
    v3 = v22[0];
    v22[0] = v2;

    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v21, 0);
  }

  v5 = v22[0];
  objc_storeStrong(v22, 0);

  return v5;
}

- (id)graphicIcon
{
  v4 = [(SUSUIBaseSoftwareUpdateAlertItem *)self descriptor];
  if (([(SUDescriptor *)v4 isSplatOnly]& 1) != 0)
  {
    v2 = @"com.apple.graphic-icon.background-security-improvements";
  }

  else
  {
    v2 = 0;
  }

  v5 = v2;

  return v5;
}

@end