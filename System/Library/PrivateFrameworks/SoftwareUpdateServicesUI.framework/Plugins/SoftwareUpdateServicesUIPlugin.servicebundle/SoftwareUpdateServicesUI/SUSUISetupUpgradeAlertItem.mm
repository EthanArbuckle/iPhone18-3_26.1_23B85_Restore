@interface SUSUISetupUpgradeAlertItem
- (SUSUISetupUpgradeAlertItem)initWithAcknowledgementBlock:(id)a3;
- (id)buttons;
- (id)currentSystemVersion;
- (id)graphicIcon;
- (id)message;
- (id)title;
- (void)_acknowledge;
@end

@implementation SUSUISetupUpgradeAlertItem

- (SUSUISetupUpgradeAlertItem)initWithAcknowledgementBlock:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v12;
  v12 = 0;
  v10 = [(SUSUIBaseAlertItem *)v3 init];
  v12 = v10;
  objc_storeStrong(&v12, v10);
  if (v10)
  {
    v4 = objc_retainBlock(location[0]);
    v5 = *(&v12->super._isUILocked + 1);
    *(&v12->super._isUILocked + 1) = v4;

    v9 = +[SUSUIPreferences sharedInstance];
    v6 = [(SUSUIPreferences *)v9 lastAppliedUpdateWasSplatOnly];
    BYTE1(v12->_acknowledgementBlock) = v6;
  }

  v8 = v12;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v8;
}

- (id)title
{
  v10 = 0;
  v8 = 0;
  v6 = 0;
  v4 = 0;
  if (BYTE1(self->_acknowledgementBlock))
  {
    v11 = sub_AF64();
    v10 = 1;
    v9 = [v11 localizedStringForKey:@"LOCKSCREEN_SPLAT_UPGRADE_ALERT_TITLE" value:&stru_62DF0 table:@"ui_alerts"];
    v8 = 1;
    v2 = v9;
  }

  else
  {
    v7 = sub_AF64();
    v6 = 1;
    v5 = [v7 localizedStringForKey:@"LOCKSCREEN_SOFTWARE_UPGRADE_ALERT_TITLE" value:&stru_62DF0 table:@"ui_alerts"];
    v4 = 1;
    v2 = v5;
  }

  v12 = v2;
  if (v4)
  {
  }

  if (v6)
  {
  }

  if (v8)
  {
  }

  if (v10)
  {
  }

  return v12;
}

- (id)message
{
  v17 = self;
  v16[1] = a2;
  v16[0] = 0;
  v15 = [(SUSUISetupUpgradeAlertItem *)self currentSystemVersion];
  if (BYTE1(v17->_acknowledgementBlock))
  {
    v2 = @"LOCKSCREEN_SPLAT_UPGRADE_ALERT_MESSAGE";
  }

  else
  {
    v2 = @"LOCKSCREEN_SOFTWARE_UPGRADE_ALERT_MESSAGE";
  }

  v14 = v2;
  v12 = sub_AF64();
  v11 = [UIDevice modelSpecificLocalizedStringKeyForKey:v14];
  v10 = [v12 localizedStringForKey:? value:? table:?];
  v3 = [NSString stringWithFormat:v15];
  v4 = v16[0];
  v16[0] = v3;

  if ((+[SUUtility currentReleaseTypeIsInternal]& 1) != 0)
  {
    v9 = +[SUCoreDevice sharedDevice];
    location = [v9 buildVersion];

    if (location)
    {
      v5 = [v16[0] stringByAppendingFormat:@" (%@)", location];
      v6 = v16[0];
      v16[0] = v5;
    }

    objc_storeStrong(&location, 0);
  }

  v8 = v16[0];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);

  return v8;
}

- (id)buttons
{
  v9[2] = self;
  v9[1] = a2;
  v9[0] = self;
  v3 = [SUSUIAlertButtonDefinition alloc];
  v5 = sub_AF64();
  v4 = [v5 localizedStringForKey:@"CLOSE" value:&stru_62DF0 table:@"ui_alerts"];
  v7 = v9[0];
  v8 = [(SUSUIAlertButtonDefinition *)v3 initWithLabel:v4 presentationStyle:2 isPreferredButton:0 handler:?];

  v10 = v8;
  v6 = [NSArray arrayWithObjects:&v10 count:1];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(v9, 0);

  return v6;
}

- (id)currentSystemVersion
{
  location[2] = self;
  location[1] = a2;
  location[0] = _CFCopySupplementalVersionDictionary();
  v6 = 0;
  v5 = 1;
  if (location[0])
  {
    v7 = [location[0] objectForKeyedSubscript:_kCFSystemVersionShortVersionStringKey];
    v6 = 1;
    v5 = v7 == 0;
  }

  if (v6)
  {
  }

  if (v5)
  {
    v4 = +[UIDevice currentDevice];
    v9 = [(UIDevice *)v4 systemVersion];
  }

  else
  {
    v9 = [location[0] objectForKeyedSubscript:_kCFSystemVersionShortVersionStringKey];
  }

  objc_storeStrong(location, 0);
  v2 = v9;

  return v2;
}

- (void)_acknowledge
{
  if (*(&self->super._isUILocked + 1))
  {
    (*(*(&self->super._isUILocked + 1) + 16))();
    v2 = *(&self->super._isUILocked + 1);
    *(&self->super._isUILocked + 1) = 0;
  }
}

- (id)graphicIcon
{
  if (BYTE1(self->_acknowledgementBlock))
  {
    return @"com.apple.graphic-icon.background-security-improvements";
  }

  else
  {
    return @"com.apple.graphic-icon.software-update-complete";
  }
}

@end