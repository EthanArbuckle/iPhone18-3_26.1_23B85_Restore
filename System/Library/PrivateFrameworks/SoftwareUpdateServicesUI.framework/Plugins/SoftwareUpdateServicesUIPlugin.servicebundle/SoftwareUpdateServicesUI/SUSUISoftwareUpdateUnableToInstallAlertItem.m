@interface SUSUISoftwareUpdateUnableToInstallAlertItem
- (BOOL)errorIsMDMRequiresUnlock:(id)a3;
- (id)_notificationMessage;
- (id)buttons;
- (id)graphicIcon;
- (id)title;
- (void)_installNowAction;
- (void)_remindMeLaterAction;
@end

@implementation SUSUISoftwareUpdateUnableToInstallAlertItem

- (id)title
{
  v26 = self;
  v25 = a2;
  v5 = [(SUSUIBaseSoftwareUpdateAlertItem *)self descriptor];
  v6 = [(SUDescriptor *)v5 isSplatOnly];

  v24 = v6;
  v21 = 0;
  v19 = 0;
  v17 = 0;
  v15 = 0;
  if (v6)
  {
    v22 = sub_A37C();
    v21 = 1;
    v20 = [v22 localizedStringForKey:@"RSR_INSTALL_FAILURE_ALERT_TITLE" value:&stru_62DF0 table:@"ui_alerts"];
    v19 = 1;
    v2 = v20;
  }

  else
  {
    v18 = sub_A37C();
    v17 = 1;
    v16 = [v18 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_FAILURE_ALERT_TITLE" value:&stru_62DF0 table:@"ui_alerts"];
    v15 = 1;
    v2 = v16;
  }

  location = v2;
  if (v15)
  {
  }

  if (v17)
  {
  }

  if (v19)
  {
  }

  if (v21)
  {
  }

  if ([(SUSUISoftwareUpdateUnableToInstallAlertItem *)v26 errorIsMDMRequiresUnlock:*(&v26->super._actionTaken + 2)])
  {
    v13 = 0;
    v11 = 0;
    v9 = 0;
    v7 = 0;
    if (v24)
    {
      v14 = sub_A37C();
      v13 = 1;
      v12 = [v14 localizedStringForKey:@"LOCKSCREEN_SPLAT_UPGRADE_ALERT_TITLE" value:&stru_62DF0 table:@"ui_alerts"];
      v11 = 1;
      objc_storeStrong(&location, v12);
    }

    else
    {
      v10 = sub_A37C();
      v9 = 1;
      v8 = [v10 localizedStringForKey:@"SOFTWARE_UPDATE_AVAILABLE_ALERT_TITLE" value:&stru_62DF0 table:@"ui_alerts"];
      v7 = 1;
      objc_storeStrong(&location, v8);
    }

    if (v7)
    {
    }

    if (v9)
    {
    }

    if (v11)
    {
    }

    if (v13)
    {
    }
  }

  v4 = location;
  objc_storeStrong(&location, 0);

  return v4;
}

- (id)buttons
{
  v23 = self;
  v22[1] = a2;
  v22[0] = 0;
  v21 = self;
  if (![(SUSUIBaseAlertItem *)v23 isUILocked])
  {
    v6 = [SUSUIAlertButtonDefinition alloc];
    v8 = sub_A37C();
    v7 = [v8 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_FAILURE_ACTION_DETAILS" value:? table:?];
    v14 = _NSConcreteStackBlock;
    v15 = -1073741824;
    v16 = 0;
    v17 = sub_8FC0;
    v18 = &unk_5CCB0;
    v19 = v21;
    v20 = [(SUSUIAlertButtonDefinition *)v6 initWithLabel:v7 presentationStyle:0 isPreferredButton:1 handler:&v14];

    v9 = [SUSUIAlertButtonDefinition alloc];
    v11 = sub_A37C();
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
  }

  v5 = v22[0];
  objc_storeStrong(&v21, 0);
  objc_storeStrong(v22, 0);

  return v5;
}

- (void)_remindMeLaterAction
{
  v14 = self;
  v13[1] = a2;
  [(SUSUIBaseSoftwareUpdateInstallFailureAlertItem *)self setActionTaken:1];
  v13[0] = SUSUILog();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v13[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v13[0];
    type = v12;
    v2 = objc_opt_class();
    v9 = NSStringFromClass(v2);
    v11 = v9;
    sub_4B94(v15, v11);
    _os_log_impl(&dword_0, log, type, "[%{public}@] Remind me later action taken", v15, 0xCu);

    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(v13, 0);
  v3 = objc_opt_class();
  v6 = NSStringFromClass(v3);

  if (BYTE2(v14->super.super._controller))
  {
    v5 = [(SUSUIBaseSoftwareUpdateAlertItem *)v14 softwareUpdateController];
    [(SUSUISoftwareUpdateController *)v5 repopInstallAlertWithWeekDurationFromNowForReason:v10];
  }

  else
  {
    v4 = [(SUSUIBaseSoftwareUpdateAlertItem *)v14 softwareUpdateController];
    [(SUSUISoftwareUpdateController *)v4 repopInstallAlertWithDefaultDurationFromNowForReason:v10];
  }

  [(SUSUIBaseSoftwareUpdateInstallFailureAlertItem *)v14 dismissAlert];
  objc_storeStrong(&v10, 0);
}

- (void)_installNowAction
{
  v11 = self;
  v10[1] = a2;
  [(SUSUIBaseSoftwareUpdateInstallFailureAlertItem *)self setActionTaken:1];
  v10[0] = SUSUILog();
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v10[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v10[0];
    type = v9;
    v2 = objc_opt_class();
    v6 = NSStringFromClass(v2);
    v8 = v6;
    sub_4B94(v12, v8);
    _os_log_impl(&dword_0, log, type, "[%{public}@] Install now action taken", v12, 0xCu);

    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(v10, 0);
  v7 = objc_alloc_init(SUSUISoftwareUpdateInstallOptions);
  [(SUSUISoftwareUpdateInstallOptions *)v7 setIgnorableConstraints:1024];
  v3 = [(SUSUIBaseSoftwareUpdateAlertItem *)v11 softwareUpdateController];
  [(SUSUISoftwareUpdateController *)v3 installNowFromSource:0 options:v7];

  objc_storeStrong(&v7, 0);
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

- (id)_notificationMessage
{
  v63 = self;
  v62[1] = a2;
  v62[0] = 0;
  v61 = 0;
  v41 = [*(&self->super._actionTaken + 2) domain];
  v42 = [v41 isEqualToString:SUErrorDomain];

  if ((v42 & 1) != 0 && [*(&v63->super._actionTaken + 2) code] == &dword_14)
  {
    v39 = [*(&v63->super._actionTaken + 2) userInfo];
    v38 = [v39 objectForKey:kSUInstallationConstraintsUnmetKey];
    v40 = [v38 integerValue];

    v60 = v40;
    if (v40 == &dword_0 + 1)
    {
      SURequiredBatteryLevelForInstall();
      v35 = [NSNumber numberWithFloat:?];
      v59 = [NSNumberFormatter localizedStringFromNumber:"localizedStringFromNumber:numberStyle:" numberStyle:?];

      v37 = sub_A37C();
      v36 = [v37 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_FAILURE_BATTERY_ALERT_BODY" value:&stru_62DF0 table:@"ui_alerts"];
      v2 = [NSString stringWithFormat:v59];
      v3 = v62[0];
      v62[0] = v2;

      objc_storeStrong(&v59, 0);
    }

    else if (v60 == &dword_4)
    {
      BYTE2(v63->super.super._controller) = 1;
      v33 = [(SUSUIBaseSoftwareUpdateAlertItem *)v63 descriptor];
      v34 = [(SUDescriptor *)v33 installationSize];

      v58[1] = v34;
      if (v34)
      {
        v58[0] = CPFSSizeStrings();
        v32 = sub_A37C();
        v31 = [v32 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_FAILURE_STORAGE_ALERT_BODY" value:&stru_62DF0 table:@"ui_alerts"];
        v4 = [NSString stringWithFormat:v58[0]];
        v5 = v62[0];
        v62[0] = v4;

        objc_storeStrong(v58, 0);
      }
    }

    else if (v60 == (&dword_0 + 2))
    {
      v30 = sub_A37C();
      v6 = [v30 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_FAILURE_NETWORK_ALERT_BODY" value:&stru_62DF0 table:@"ui_alerts"];
      v7 = v62[0];
      v62[0] = v6;
    }

    else if ([(SUSUISoftwareUpdateUnableToInstallAlertItem *)v63 errorIsMDMRequiresUnlock:*(&v63->super._actionTaken + 2)])
    {
      v29 = [(SUSUIBaseSoftwareUpdateAlertItem *)v63 updateName];

      if (v29)
      {
        v28 = sub_A37C();
        v27 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"SOFTWARE_UPDATE_INSTALL_FAILURE_MDM_REQUEST_NEEDS_UNLOCK_BODY"];
        v26 = [v28 localizedStringForKey:? value:? table:?];
        v25 = [(SUSUIBaseSoftwareUpdateAlertItem *)v63 updateName];
        v8 = [NSString stringWithFormat:v26, v25];
        v9 = v62[0];
        v62[0] = v8;
      }

      else
      {
        v24 = sub_A37C();
        v23 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"SOFTWARE_UPDATE_INSTALL_FAILURE_MDM_REQUEST_NEEDS_UNLOCK_BODY_NO_UPDATE"];
        v22 = [v24 localizedStringForKey:? value:? table:?];
        v10 = [NSString stringWithFormat:?];
        v11 = v62[0];
        v62[0] = v10;
      }
    }
  }

  v21 = [(SUSUIBaseSoftwareUpdateAlertItem *)v63 updateName];
  v55 = 0;
  v53 = 0;
  v51 = 0;
  v49 = 0;
  v47 = 0;
  v45 = 0;
  if (v21)
  {
    v56 = sub_A37C();
    v55 = 1;
    v54 = [v56 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_FAILURE_GENERIC_ALERT_BODY" value:&stru_62DF0 table:@"ui_alerts"];
    v53 = 1;
    v52 = [(SUSUIBaseSoftwareUpdateAlertItem *)v63 updateName];
    v51 = 1;
    v50 = [NSString stringWithFormat:v54, v52];
    v49 = 1;
    v12 = v50;
  }

  else
  {
    v48 = sub_A37C();
    v47 = 1;
    v46 = [v48 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_FAILURE_GENERIC_ALERT_BODY_NO_UPDATE" value:&stru_62DF0 table:@"ui_alerts"];
    v45 = 1;
    v12 = v46;
  }

  v57 = v12;
  if (v45)
  {
  }

  if (v47)
  {
  }

  if (v49)
  {
  }

  if (v51)
  {
  }

  if (v53)
  {
  }

  if (v55)
  {
  }

  if (v62[0])
  {
    objc_storeStrong(&v61, v62[0]);
  }

  else
  {
    objc_storeStrong(&v61, v57);
  }

  v19 = +[BSPlatform sharedInstance];
  v20 = [(BSPlatform *)v19 isInternalInstall];

  if (v20)
  {
    v18 = [*(&v63->super._actionTaken + 2) userInfo];
    v44 = [v18 objectForKey:NSLocalizedRecoverySuggestionErrorKey];

    if (v44)
    {
      v17 = v44;
    }

    else
    {
      v17 = *(&v63->super._actionTaken + 2);
    }

    v43 = [NSString stringWithFormat:@"\n\n[Internal Only]\n%@", v17];
    v13 = [NSString stringWithFormat:@"%@%@", v61, v43];
    v14 = v61;
    v61 = v13;

    objc_storeStrong(&v43, 0);
    objc_storeStrong(&v44, 0);
  }

  v16 = v61;
  objc_storeStrong(&v57, 0);
  objc_storeStrong(&v61, 0);
  objc_storeStrong(v62, 0);

  return v16;
}

- (BOOL)errorIsMDMRequiresUnlock:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = [location[0] domain];
  v9 = 0;
  if ([v8 isEqualToString:SUErrorDomain])
  {
    v9 = [location[0] code] == &dword_14;
  }

  if (!v9)
  {
    goto LABEL_13;
  }

  v5 = [*(&v15->super._actionTaken + 2) userInfo];
  v4 = [v5 objectForKey:kSUInstallationConstraintsUnmetKey];
  v6 = [v4 integerValue];

  v12 = 0;
  v10 = 0;
  v7 = 0;
  if ((v6 & 0x10) != 0)
  {
    v7 = 0;
    if ((v6 & 0x20) != 0)
    {
      v13 = [location[0] userInfo];
      v12 = 1;
      v11 = [v13 objectForKey:kSUMDMInstallationRequest];
      v10 = 1;
      v7 = [v11 BOOLValue];
    }
  }

  if (v10)
  {
  }

  if (v12)
  {
  }

  if (v7)
  {
    v16 = 1;
  }

  else
  {
LABEL_13:
    v16 = 0;
  }

  objc_storeStrong(location, 0);
  return v16 & 1;
}

@end