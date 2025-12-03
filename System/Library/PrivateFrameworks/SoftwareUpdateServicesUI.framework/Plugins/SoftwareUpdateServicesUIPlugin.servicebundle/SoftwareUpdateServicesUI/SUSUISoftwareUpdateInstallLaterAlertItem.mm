@interface SUSUISoftwareUpdateInstallLaterAlertItem
- (SUSUISoftwareUpdateInstallLaterAlertItem)initWithDescriptor:(id)descriptor softwareUpdateController:(id)controller tryTonightOperationForecast:(id)forecast;
- (id)_alertMessageForForecast:(id)forecast;
- (id)_installTonightLabelForScheduleType:(int64_t)type;
- (id)buttons;
- (id)graphicIcon;
- (id)title;
- (void)_scheduleInstallAlertRepopOnDismissWithReason:(id)reason;
- (void)dismissAlert;
@end

@implementation SUSUISoftwareUpdateInstallLaterAlertItem

- (SUSUISoftwareUpdateInstallLaterAlertItem)initWithDescriptor:(id)descriptor softwareUpdateController:(id)controller tryTonightOperationForecast:(id)forecast
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  v13 = 0;
  objc_storeStrong(&v13, controller);
  v12 = 0;
  objc_storeStrong(&v12, forecast);
  v5 = selfCopy;
  selfCopy = 0;
  v11.receiver = v5;
  v11.super_class = SUSUISoftwareUpdateInstallLaterAlertItem;
  v10 = [(SUSUIBaseSoftwareUpdateAlertItem *)&v11 initWithDescriptor:location[0] softwareUpdateController:v13];
  selfCopy = v10;
  objc_storeStrong(&selfCopy, v10);
  if (v10)
  {
    BYTE1(selfCopy->_repopReason) = 0;
    BYTE2(selfCopy->_repopReason) = 0;
    objc_storeStrong((&selfCopy->super._controller + 1), v12);
  }

  v7 = selfCopy;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (id)title
{
  descriptor = [(SUSUIBaseSoftwareUpdateAlertItem *)self descriptor];
  isSplatOnly = [(SUDescriptor *)descriptor isSplatOnly];

  v12 = 0;
  v10 = 0;
  v8 = 0;
  v6 = 0;
  if (isSplatOnly)
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
  selfCopy = self;
  v46[1] = a2;
  v2 = objc_opt_class();
  v46[0] = NSStringFromClass(v2);
  v45 = +[NSMutableArray array];
  objc_initWeak(&location, selfCopy);
  if (*(&selfCopy->super._controller + 1))
  {
    scheduleType = [*(&selfCopy->super._controller + 1) scheduleType];
  }

  else
  {
    scheduleType = 0;
  }

  v43 = scheduleType;
  if (![(SUSUIBaseAlertItem *)selfCopy isUILocked]&& *(&selfCopy->super._controller + 1) && v43)
  {
    v16 = [SUSUIAlertButtonDefinition alloc];
    v15 = [(SUSUISoftwareUpdateInstallLaterAlertItem *)selfCopy _installTonightLabelForScheduleType:v43];
    v34 = _NSConcreteStackBlock;
    v35 = -1073741824;
    v36 = 0;
    v37 = sub_16D34;
    v38 = &unk_5F180;
    v39 = v46[0];
    v40 = selfCopy;
    objc_copyWeak(&v41, &location);
    v42 = [(SUSUIAlertButtonDefinition *)v16 initWithLabel:v15 presentationStyle:0 isPreferredButton:1 handler:&v34];

    [v45 addObject:v42];
    objc_storeStrong(&v42, 0);
    objc_destroyWeak(&v41);
    objc_storeStrong(&v40, 0);
    objc_storeStrong(&v39, 0);
  }

  softwareUpdateController = [(SUSUIBaseSoftwareUpdateAlertItem *)selfCopy softwareUpdateController];
  canDeferInstallation = [(SUSUISoftwareUpdateController *)softwareUpdateController canDeferInstallation];

  if (canDeferInstallation)
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
    userInterfaceIdiom = [(UIDevice *)v8 userInterfaceIdiom];

    if (userInterfaceIdiom != &dword_0 + 1)
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
  selfCopy = self;
  v4 = a2;
  if (BYTE2(self->_repopReason))
  {
    softwareUpdateController = [(SUSUIBaseSoftwareUpdateAlertItem *)selfCopy softwareUpdateController];
    [(SUSUISoftwareUpdateController *)softwareUpdateController repopInstallAlertWithDefaultDurationFromNowForReason:*(&selfCopy->_forecast + 1)];
  }

  v3.receiver = selfCopy;
  v3.super_class = SUSUISoftwareUpdateInstallLaterAlertItem;
  [(SUSUIBaseSoftwareUpdateAlertItem *)&v3 dismissAlert];
}

- (id)graphicIcon
{
  descriptor = [(SUSUIBaseSoftwareUpdateAlertItem *)self descriptor];
  if (([(SUDescriptor *)descriptor isSplatOnly]& 1) != 0)
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

- (void)_scheduleInstallAlertRepopOnDismissWithReason:(id)reason
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, reason);
  BYTE2(selfCopy->_repopReason) = 1;
  if (!location[0])
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = location[0];
    location[0] = v4;
  }

  v6 = [location[0] copy];
  v7 = *(&selfCopy->_forecast + 1);
  *(&selfCopy->_forecast + 1) = v6;

  objc_storeStrong(location, 0);
}

- (id)_alertMessageForForecast:(id)forecast
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, forecast);
  *&v18[8] = 0;
  softwareUpdateController = [(SUSUIBaseSoftwareUpdateAlertItem *)selfCopy softwareUpdateController];
  *v18 = [(SUSUISoftwareUpdateController *)softwareUpdateController canDeferInstallation];

  if (v18[0])
  {
    v13 = [NSString alloc];
    v16 = sub_17868();
    v15 = [v16 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_ALERT_AUTO_INSTALL_BODY_FALLBACK" value:&stru_62DF0 table:@"ui_alerts"];
    updateName = [(SUSUIBaseSoftwareUpdateAlertItem *)selfCopy updateName];
    v3 = [v13 initWithFormat:v15, updateName];
    v4 = *&v18[4];
    *&v18[4] = v3;
  }

  else
  {
    v9 = [NSString alloc];
    v12 = sub_17868();
    v11 = [v12 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_ALERT_FORCED_BODY" value:&stru_62DF0 table:@"ui_alerts"];
    updateName2 = [(SUSUIBaseSoftwareUpdateAlertItem *)selfCopy updateName];
    v5 = [v9 initWithFormat:v11, updateName2];
    v6 = *&v18[4];
    *&v18[4] = v5;
  }

  v8 = *&v18[4];
  objc_storeStrong(&v18[4], 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)_installTonightLabelForScheduleType:(int64_t)type
{
  v14[3] = self;
  v14[2] = a2;
  v14[1] = type;
  v14[0] = 0;
  switch(type)
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