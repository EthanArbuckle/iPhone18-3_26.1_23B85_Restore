@interface SUSUISoftwareUpdateInstallLaterAlertItem
- (SUSUISoftwareUpdateInstallLaterAlertItem)initWithDescriptor:(id)a3 softwareUpdateController:(id)a4 tryTonightOperationForecast:(id)a5;
- (id)_alertMessageForForecast:(id)a3;
- (id)_installTonightLabelForScheduleType:(int64_t)a3;
- (id)buttons;
- (id)graphicIcon;
- (id)title;
- (void)_scheduleInstallAlertRepopOnDismissWithReason:(id)a3;
- (void)dismissAlert;
@end

@implementation SUSUISoftwareUpdateInstallLaterAlertItem

- (SUSUISoftwareUpdateInstallLaterAlertItem)initWithDescriptor:(id)a3 softwareUpdateController:(id)a4 tryTonightOperationForecast:(id)a5
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = 0;
  objc_storeStrong(&v12, a5);
  v5 = v15;
  v15 = 0;
  v11.receiver = v5;
  v11.super_class = SUSUISoftwareUpdateInstallLaterAlertItem;
  v10 = [(SUSUIBaseSoftwareUpdateAlertItem *)&v11 initWithDescriptor:location[0] softwareUpdateController:v13];
  v15 = v10;
  objc_storeStrong(&v15, v10);
  if (v10)
  {
    BYTE1(v15->_repopReason) = 0;
    BYTE2(v15->_repopReason) = 0;
    objc_storeStrong((&v15->super._controller + 1), v12);
  }

  v7 = v15;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v15, 0);
  return v7;
}

- (id)title
{
  v4 = [(SUSUIBaseSoftwareUpdateAlertItem *)self descriptor];
  v5 = [(SUDescriptor *)v4 isSplatOnly];

  v12 = 0;
  v10 = 0;
  v8 = 0;
  v6 = 0;
  if (v5)
  {
    v13 = sub_17868();
    v12 = 1;
    v11 = [v13 localizedStringForKey:@"LOCKSCREEN_SPLAT_UPGRADE_ALERT_TITLE" value:&stru_62DF0 table:@"ui_alerts"];
    v10 = 1;
    v2 = v11;
  }

  else
  {
    v9 = sub_17868();
    v8 = 1;
    v7 = [v9 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_ALERT_TITLE" value:&stru_62DF0 table:@"ui_alerts"];
    v6 = 1;
    v2 = v7;
  }

  v14 = v2;
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

  return v14;
}

- (id)buttons
{
  v47 = self;
  v46[1] = a2;
  v2 = objc_opt_class();
  v46[0] = NSStringFromClass(v2);
  v45 = +[NSMutableArray array];
  objc_initWeak(&location, v47);
  if (*(&v47->super._controller + 1))
  {
    v17 = [*(&v47->super._controller + 1) scheduleType];
  }

  else
  {
    v17 = 0;
  }

  v43 = v17;
  if (![(SUSUIBaseAlertItem *)v47 isUILocked]&& *(&v47->super._controller + 1) && v43)
  {
    v16 = [SUSUIAlertButtonDefinition alloc];
    v15 = [(SUSUISoftwareUpdateInstallLaterAlertItem *)v47 _installTonightLabelForScheduleType:v43];
    v34 = _NSConcreteStackBlock;
    v35 = -1073741824;
    v36 = 0;
    v37 = sub_16D34;
    v38 = &unk_5F180;
    v39 = v46[0];
    v40 = v47;
    objc_copyWeak(&v41, &location);
    v42 = [(SUSUIAlertButtonDefinition *)v16 initWithLabel:v15 presentationStyle:0 isPreferredButton:1 handler:&v34];

    [v45 addObject:v42];
    objc_storeStrong(&v42, 0);
    objc_destroyWeak(&v41);
    objc_storeStrong(&v40, 0);
    objc_storeStrong(&v39, 0);
  }

  v13 = [(SUSUIBaseSoftwareUpdateAlertItem *)v47 softwareUpdateController];
  v14 = [(SUSUISoftwareUpdateController *)v13 canDeferInstallation];

  if (v14)
  {
    v12 = [SUSUIAlertButtonDefinition alloc];
    v11 = sub_17868();
    v10 = [v11 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_ALERT_ACTION_REMIND_ME_LATER" value:&stru_62DF0 table:@"ui_alerts"];
    v26 = _NSConcreteStackBlock;
    v27 = -1073741824;
    v28 = 0;
    v29 = sub_16E80;
    v30 = &unk_5F1A8;
    v31 = v46[0];
    objc_copyWeak(&v32, &location);
    v33 = [(SUSUIAlertButtonDefinition *)v12 initWithLabel:v10 presentationStyle:2 isPreferredButton:0 handler:&v26];

    [v45 addObject:v33];
    objc_storeStrong(&v33, 0);
    objc_destroyWeak(&v32);
    objc_storeStrong(&v31, 0);
  }

  else
  {
    v8 = +[UIDevice currentDevice];
    v9 = [(UIDevice *)v8 userInterfaceIdiom];

    if (v9 != &dword_0 + 1)
    {
      v7 = [SUSUIAlertButtonDefinition alloc];
      v6 = sub_17868();
      v5 = [v6 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_ALERT_ACTION_EMERGENCY" value:&stru_62DF0 table:@"ui_alerts"];
      v18 = _NSConcreteStackBlock;
      v19 = -1073741824;
      v20 = 0;
      v21 = sub_16FEC;
      v22 = &unk_5F1A8;
      v23 = v46[0];
      objc_copyWeak(&v24, &location);
      v25 = [(SUSUIAlertButtonDefinition *)v7 initWithLabel:v5 presentationStyle:0 isPreferredButton:0 handler:&v18];

      [v45 addObject:v25];
      objc_storeStrong(&v25, 0);
      objc_destroyWeak(&v24);
      objc_storeStrong(&v23, 0);
    }
  }

  v4 = [v45 copy];
  objc_destroyWeak(&location);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(v46, 0);

  return v4;
}

- (void)dismissAlert
{
  v5 = self;
  v4 = a2;
  if (BYTE2(self->_repopReason))
  {
    v2 = [(SUSUIBaseSoftwareUpdateAlertItem *)v5 softwareUpdateController];
    [(SUSUISoftwareUpdateController *)v2 repopInstallAlertWithDefaultDurationFromNowForReason:*(&v5->_forecast + 1)];
  }

  v3.receiver = v5;
  v3.super_class = SUSUISoftwareUpdateInstallLaterAlertItem;
  [(SUSUIBaseSoftwareUpdateAlertItem *)&v3 dismissAlert];
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

- (void)_scheduleInstallAlertRepopOnDismissWithReason:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  BYTE2(v9->_repopReason) = 1;
  if (!location[0])
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = location[0];
    location[0] = v4;
  }

  v6 = [location[0] copy];
  v7 = *(&v9->_forecast + 1);
  *(&v9->_forecast + 1) = v6;

  objc_storeStrong(location, 0);
}

- (id)_alertMessageForForecast:(id)a3
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  *&v18[8] = 0;
  v17 = [(SUSUIBaseSoftwareUpdateAlertItem *)v20 softwareUpdateController];
  *v18 = [(SUSUISoftwareUpdateController *)v17 canDeferInstallation];

  if (v18[0])
  {
    v13 = [NSString alloc];
    v16 = sub_17868();
    v15 = [v16 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_ALERT_AUTO_INSTALL_BODY_FALLBACK" value:&stru_62DF0 table:@"ui_alerts"];
    v14 = [(SUSUIBaseSoftwareUpdateAlertItem *)v20 updateName];
    v3 = [v13 initWithFormat:v15, v14];
    v4 = *&v18[4];
    *&v18[4] = v3;
  }

  else
  {
    v9 = [NSString alloc];
    v12 = sub_17868();
    v11 = [v12 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_ALERT_FORCED_BODY" value:&stru_62DF0 table:@"ui_alerts"];
    v10 = [(SUSUIBaseSoftwareUpdateAlertItem *)v20 updateName];
    v5 = [v9 initWithFormat:v11, v10];
    v6 = *&v18[4];
    *&v18[4] = v5;
  }

  v8 = *&v18[4];
  objc_storeStrong(&v18[4], 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)_installTonightLabelForScheduleType:(int64_t)a3
{
  v14[3] = self;
  v14[2] = a2;
  v14[1] = a3;
  v14[0] = 0;
  switch(a3)
  {
    case 1:
      v12 = sub_17868();
      v5 = [v12 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_ALERT_ACTION_INSTALL_TONIGHT" value:&stru_62DF0 table:@"ui_alerts"];
      v6 = v14[0];
      v14[0] = v5;

      break;
    case 2:
      v11 = sub_17868();
      v7 = [v11 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_ALERT_ACTION_INSTALL_TOMORROW_NIGHT" value:&stru_62DF0 table:@"ui_alerts"];
      v8 = v14[0];
      v14[0] = v7;

      break;
    case 3:
      v13 = sub_17868();
      v3 = [v13 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_ALERT_ACTION_INSTALL_LATER" value:&stru_62DF0 table:@"ui_alerts"];
      v4 = v14[0];
      v14[0] = v3;

      break;
  }

  v10 = v14[0];
  objc_storeStrong(v14, 0);

  return v10;
}

@end