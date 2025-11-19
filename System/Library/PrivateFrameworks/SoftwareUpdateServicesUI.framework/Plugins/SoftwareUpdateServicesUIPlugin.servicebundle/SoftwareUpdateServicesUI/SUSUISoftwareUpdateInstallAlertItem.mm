@interface SUSUISoftwareUpdateInstallAlertItem
- (BOOL)_isMDMAlert;
- (BOOL)_shouldCountdown;
- (BOOL)_shouldShowInstallLater;
- (BOOL)allowLockScreenDismissal;
- (BOOL)allowMenuButtonDismissal;
- (BOOL)shouldShowInLockScreen;
- (BOOL)undimsScreen;
- (SUSUISoftwareUpdateInstallAlertItem)initWithDownload:(id)a3 softwareUpdateController:(id)a4;
- (SUSUISoftwareUpdateInstallAlertItem)initWithDownload:(id)a3 style:(unint64_t)a4 softwareUpdateController:(id)a5 tryTonightInstallOperationForecast:(id)a6 installOptions:(id)a7;
- (id)_bodyTextToModelSpecificLocalizedKey:(id)a3;
- (id)_detailsButton;
- (id)_emergencyButton;
- (id)_installLaterButton;
- (id)_installLaterButtonText;
- (id)_installNowButton;
- (id)_installNowButtonText;
- (id)_notificationMessage;
- (id)_remindMeLaterButton;
- (id)_setupDefinition;
- (id)_stringFromAlertStyle:(unint64_t)a3;
- (id)allowedApps;
- (id)buttons;
- (id)contentExtensionID;
- (id)description;
- (id)extensionDictionary;
- (id)graphicIcon;
- (id)title;
- (void)_activateInstallLaterAlert;
- (void)_installUpdateNow;
- (void)_scheduleInstallAlertRepopOnDismissWithReason:(id)a3;
- (void)_submitUserInteractionEvent:(id)a3;
- (void)alertWasCanceled;
- (void)dismissAlert;
@end

@implementation SUSUISoftwareUpdateInstallAlertItem

- (SUSUISoftwareUpdateInstallAlertItem)initWithDownload:(id)a3 softwareUpdateController:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v4 = v10;
  v10 = 0;
  v10 = [(SUSUISoftwareUpdateInstallAlertItem *)v4 initWithDownload:location[0] style:3 softwareUpdateController:v8 tryTonightInstallOperationForecast:0 installOptions:?];
  v7 = v10;
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v10, 0);
  return v7;
}

- (SUSUISoftwareUpdateInstallAlertItem)initWithDownload:(id)a3 style:(unint64_t)a4 softwareUpdateController:(id)a5 tryTonightInstallOperationForecast:(id)a6 installOptions:(id)a7
{
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = a4;
  v23 = 0;
  objc_storeStrong(&v23, a5);
  v22 = 0;
  objc_storeStrong(&v22, a6);
  v21 = 0;
  objc_storeStrong(&v21, a7);
  v13 = v26;
  v14 = [location[0] descriptor];
  v26 = 0;
  v20.receiver = v13;
  v20.super_class = SUSUISoftwareUpdateInstallAlertItem;
  v15 = [SUSUIBaseSoftwareUpdateAlertItem initWithDescriptor:"initWithDescriptor:softwareUpdateController:" softwareUpdateController:?];
  v26 = v15;
  objc_storeStrong(&v26, v15);

  if (v15)
  {
    *(&v26->super._controller + 1) = v24;
    objc_storeStrong((&v26->_alertStyle + 1), v21);
    if (!*(&v26->_alertStyle + 1))
    {
      v7 = objc_alloc_init(SUSUISoftwareUpdateInstallOptions);
      v8 = *(&v26->_alertStyle + 1);
      *(&v26->_alertStyle + 1) = v7;
    }

    objc_storeStrong((&v26->_installOptions + 1), location[0]);
    BYTE1(v26->_download) = 0;
    objc_storeStrong((&v26->_definition + 1), v22);
    v9 = [(SUSUISoftwareUpdateInstallAlertItem *)v26 _setupDefinition];
    v10 = *(&v26->_repopReason + 1);
    *(&v26->_repopReason + 1) = v9;
  }

  v12 = v26;
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v26, 0);
  return v12;
}

- (id)description
{
  v2 = objc_opt_class();
  v5 = NSStringFromClass(v2);
  v4 = SUSUIStringForInstallAlertInstallStyle(*(&self->super._controller + 1));
  v6 = [NSString stringWithFormat:@"<%@:%p - %@>", v5, self, v4];

  return v6;
}

- (id)contentExtensionID
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  if ([(SUSUISoftwareUpdateInstallAlertItem *)self shouldShowCountdown])
  {
    objc_storeStrong(location, @"com.apple.susuiservice.SUSUInstallAlertCFUserNotificationUIExtension");
  }

  v3 = location[0];
  objc_storeStrong(location, 0);

  return v3;
}

- (id)extensionDictionary
{
  v19 = self;
  v18[1] = a2;
  v18[0] = 0;
  if (*(&self->_alertStyle + 1))
  {
    v2 = [[SUInstallOptions alloc] initWithSUSUIInstallOptions:*(&v19->_alertStyle + 1)];
    v3 = v18[0];
    v18[0] = v2;
  }

  v20[0] = @"ExtensionAlertKeyHumanReadableUpdateName";
  v14 = [(SUSUIBaseSoftwareUpdateAlertItem *)v19 descriptor];
  v13 = [(SUDescriptor *)v14 humanReadableUpdateName];
  v21[0] = v13;
  v20[1] = @"ExtensionAlertKeyIsAutoInstall";
  v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(&v19->_alertStyle + 1) automaticInstallAttempt]);
  v21[1] = v12;
  v20[2] = @"ExtensionAlertKeySingularText";
  v11 = sub_10DC8();
  v10 = [v11 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_ALERT_COUNTDOWN_BODY_SINGULAR" value:? table:?];
  v21[2] = v10;
  v20[3] = @"ExtensionAlertKeyPluralText";
  v9 = sub_10DC8();
  v8 = [v9 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_ALERT_COUNTDOWN_BODY_PLURAL" value:&stru_62DF0 table:@"ui_alerts"];
  v21[3] = v8;
  v20[4] = @"ExtensionAlertKeyCompletionAction";
  v21[4] = @"ExtensionAlertKeyCompletionActionInstall";
  v20[5] = @"ExtensionAlertKeyIgnorableConstraints";
  v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(&v19->_alertStyle + 1) ignorableConstraints]);
  v21[5] = v7;
  v6 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:6];
  v17 = [NSMutableDictionary dictionaryWithDictionary:?];

  v15 = +[SUSUIPreferences sharedInstance];
  location = [(SUSUIPreferences *)v15 restartCountdownOverrideIntervalSeconds];

  if (location)
  {
    [(NSMutableDictionary *)v17 setSafeObject:location forKey:@"ExtensionAlertKeyCountdown"];
  }

  v5 = v17;
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(v18, 0);

  return v5;
}

- (id)title
{
  if (&(*(&self->super._controller + 1))[-1]._followUpController + 4 > 2)
  {
    v4 = [(SUSUIBaseSoftwareUpdateAlertItem *)self descriptor];
    v5 = [(SUDescriptor *)v4 isSplatOnly];

    v13 = 0;
    v11 = 0;
    v9 = 0;
    v7 = 0;
    if (v5)
    {
      v14 = sub_10DC8();
      v13 = 1;
      v12 = [v14 localizedStringForKey:@"LOCKSCREEN_SPLAT_UPGRADE_ALERT_TITLE" value:&stru_62DF0 table:@"ui_alerts"];
      v11 = 1;
      v2 = v12;
    }

    else
    {
      v10 = sub_10DC8();
      v9 = 1;
      v8 = [v10 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_ALERT_TITLE" value:&stru_62DF0 table:@"ui_alerts"];
      v7 = 1;
      v2 = v8;
    }

    v15 = v2;
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

  else
  {
    v6 = sub_10DC8();
    v15 = [v6 localizedStringForKey:@"MANAGED_UPDATE" value:&stru_62DF0 table:@"ui_alerts"];
  }

  return v15;
}

- (id)buttons
{
  v20 = self;
  v19[1] = a2;
  v19[0] = +[NSMutableArray array];
  v14 = [(SUSUIBaseSoftwareUpdateAlertItem *)v20 softwareUpdateController];
  location = [(SUSUISoftwareUpdateController *)v14 ddmController];

  v15 = [(SUSUISoftwareUpdateInstallAlertItem *)v20 _installNowButton];
  [v19[0] addObject:?];

  if ([(SUSUISoftwareUpdateInstallAlertItem *)v20 _shouldShowInstallLater])
  {
    v13 = [(SUSUISoftwareUpdateInstallAlertItem *)v20 _installLaterButton];
    [v19[0] addObject:?];
  }

  else
  {
    v11 = [(SUSUIBaseSoftwareUpdateAlertItem *)v20 softwareUpdateController];
    v16 = 0;
    v12 = 1;
    if (![(SUSUISoftwareUpdateController *)v11 canDeferInstallation])
    {
      v17 = +[UIDevice currentDevice];
      v16 = 1;
      v10 = 0;
      if ([(UIDevice *)v17 userInterfaceIdiom]== &dword_0 + 1)
      {
        v9 = 0;
        if (location)
        {
          v9 = [location shouldEnforceUpdate];
        }

        v10 = v9 ^ 1;
      }

      v12 = v10;
    }

    if (v16)
    {
    }

    if (v12)
    {
      v8 = [(SUSUISoftwareUpdateInstallAlertItem *)v20 _remindMeLaterButton];
      [v19[0] addObject:?];
    }

    else
    {
      v6 = +[UIDevice currentDevice];
      v7 = [(UIDevice *)v6 userInterfaceIdiom];

      if (v7 != &dword_0 + 1)
      {
        v5 = [(SUSUISoftwareUpdateInstallAlertItem *)v20 _emergencyButton];
        [v19[0] addObject:?];
      }
    }
  }

  if (*(&v20->super._controller + 1) == (&dword_0 + 1))
  {
    v4 = [(SUSUISoftwareUpdateInstallAlertItem *)v20 _detailsButton];
    [v19[0] addObject:?];
  }

  v3 = [v19[0] copy];
  objc_storeStrong(&location, 0);
  objc_storeStrong(v19, 0);

  return v3;
}

- (void)dismissAlert
{
  v5 = self;
  v4 = a2;
  if (BYTE1(self->_download))
  {
    v2 = [(SUSUIBaseSoftwareUpdateAlertItem *)v5 softwareUpdateController];
    [(SUSUISoftwareUpdateController *)v2 repopInstallAlertWithDefaultDurationFromNowForReason:*(&v5->_scheduleInstallAlertRepopOnDismiss + 1)];
  }

  v3.receiver = v5;
  v3.super_class = SUSUISoftwareUpdateInstallAlertItem;
  [(SUSUIBaseSoftwareUpdateAlertItem *)&v3 dismissAlert];
}

- (void)alertWasCanceled
{
  v14 = self;
  v13 = a2;
  v12.receiver = self;
  v12.super_class = SUSUISoftwareUpdateInstallAlertItem;
  [(SUSUIBaseAlertItem *)&v12 alertWasCanceled];
  location = SUSUILog();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    sub_4B94(v15, v14);
    _os_log_impl(&dword_0, location, v10, "%{public}@ was unexpectedly canceled", v15, 0xCu);
  }

  objc_storeStrong(&location, 0);
  v3 = [(SUSUIBaseSoftwareUpdateAlertItem *)v14 softwareUpdateController];
  queue = [(SUSUISoftwareUpdateController *)v3 clientQueue];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_D9A8;
  v8 = &unk_5CCB0;
  v9 = v14;
  dispatch_async(queue, &v4);

  objc_storeStrong(&v9, 0);
}

- (BOOL)shouldShowInLockScreen
{
  v3 = 1;
  if (![(SUSUISoftwareUpdateInstallAlertItem *)self _shouldCountdown])
  {
    v3 = [(SUSUISoftwareUpdateInstallAlertItem *)self _isMDMAlert];
  }

  return v3 & 1;
}

- (BOOL)undimsScreen
{
  v3 = 1;
  if ([*(&self->_alertStyle + 1) automaticInstallAttempt])
  {
    v3 = [(SUSUISoftwareUpdateInstallAlertItem *)self _isMDMAlert];
  }

  return v3 & 1;
}

- (BOOL)allowLockScreenDismissal
{
  LOBYTE(v3) = 0;
  if (![(SUSUISoftwareUpdateInstallAlertItem *)self _isMDMAlert])
  {
    v3 = ![(SUSUISoftwareUpdateInstallAlertItem *)self _shouldCountdown];
  }

  return v3 & 1;
}

- (BOOL)allowMenuButtonDismissal
{
  LOBYTE(v3) = 0;
  if (![(SUSUISoftwareUpdateInstallAlertItem *)self _isMDMAlert])
  {
    v3 = ![(SUSUISoftwareUpdateInstallAlertItem *)self _shouldCountdown];
  }

  return v3 & 1;
}

- (id)allowedApps
{
  v5[2] = self;
  v5[1] = a2;
  if ([(SUSUISoftwareUpdateInstallAlertItem *)self _shouldCountdown])
  {
    v2 = 0;
  }

  else
  {
    v2 = &off_65628;
  }

  v5[0] = v2;
  v4 = v5[0];
  objc_storeStrong(v5, 0);

  return v4;
}

- (id)graphicIcon
{
  v5 = [(SUSUIBaseSoftwareUpdateAlertItem *)self descriptor];
  LOBYTE(v6) = 0;
  if (([(SUDescriptor *)v5 isSplatOnly]& 1) != 0)
  {
    v6 = ![(SUSUISoftwareUpdateInstallAlertItem *)self _shouldCountdown];
  }

  if (v6)
  {
    v2 = @"com.apple.graphic-icon.background-security-improvements";
  }

  else
  {
    v2 = 0;
  }

  v4 = v2;

  return v4;
}

- (id)_notificationMessage
{
  v53 = self;
  v52[1] = a2;
  v52[0] = 0;
  v36 = [(SUSUIBaseSoftwareUpdateAlertItem *)self softwareUpdateController];
  v51 = [(SUSUISoftwareUpdateController *)v36 ddmController];

  v37 = *(&v53->super._controller + 1);
  if (v37 == 1)
  {
    location = 0;
    v34 = [(SUSUIBaseSoftwareUpdateAlertItem *)v53 softwareUpdateController];
    v35 = [(SUSUISoftwareUpdateController *)v34 canDeferInstallation];

    if (v35)
    {
      v32 = [(SUSUIBaseSoftwareUpdateAlertItem *)v53 descriptor];
      v33 = [(SUDescriptor *)v32 isSplatOnly];

      v48 = 0;
      v46 = 0;
      v44 = 0;
      v42 = 0;
      v40 = 0;
      v38 = 0;
      if (v33)
      {
        v49 = [(SUSUISoftwareUpdateInstallAlertItem *)v53 _bodyTextToModelSpecificLocalizedKey:@"RSR_INSTALL_ALERT_AUTO_DOWNLOAD_BODY"];
        v48 = 1;
        v47 = [(SUSUIBaseSoftwareUpdateAlertItem *)v53 updateName];
        v46 = 1;
        v45 = [NSString stringWithValidatedFormat:v49 validFormatSpecifiers:@"%@" error:0, v47];
        v44 = 1;
        objc_storeStrong(&location, v45);
      }

      else
      {
        v43 = [(SUSUISoftwareUpdateInstallAlertItem *)v53 _bodyTextToModelSpecificLocalizedKey:@"SOFTWARE_UPDATE_INSTALL_ALERT_AUTO_DOWNLOAD_BODY"];
        v42 = 1;
        v41 = [(SUSUIBaseSoftwareUpdateAlertItem *)v53 updateName];
        v40 = 1;
        v39 = [NSString stringWithValidatedFormat:v43 validFormatSpecifiers:@"%@" error:0, v41];
        v38 = 1;
        objc_storeStrong(&location, v39);
      }

      if (v38)
      {
      }

      if (v40)
      {
      }

      if (v42)
      {
      }

      if (v44)
      {
      }

      if (v46)
      {
      }

      if (v48)
      {
      }
    }

    else
    {
      v31 = sub_10DC8();
      v30 = [v31 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_ALERT_FORCED_BODY" value:&stru_62DF0 table:@"ui_alerts"];
      v29 = [(SUSUIBaseSoftwareUpdateAlertItem *)v53 updateName];
      v2 = [NSString stringWithFormat:v30, v29];
      v3 = location;
      location = v2;
    }

    if (_BSIsInternalInstall())
    {
      v23 = location;
      v28 = sub_10DC8();
      v27 = [v28 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_ALERT_AUTO_DOWNLOAD_INTERNAL_LIVABILITY" value:&stru_62DF0 table:@"ui_alerts"];
      v26 = [(SUSUIBaseSoftwareUpdateAlertItem *)v53 descriptor];
      v25 = [(SUDescriptor *)v26 productBuildVersion];
      v24 = [NSString stringWithFormat:v27, v25, @"https://builds.swe.apple.com"];
      v4 = [NSString stringWithFormat:@"%@\n\n%@", v23, v24];
      v5 = v52[0];
      v52[0] = v4;
    }

    else
    {
      objc_storeStrong(v52, location);
    }

    objc_storeStrong(&location, 0);
  }

  else if (v37 != 2)
  {
    if (v37 == 3)
    {
      goto LABEL_31;
    }

    if ((v37 - 4) <= 1)
    {
      v22 = [(SUSUIBaseSoftwareUpdateAlertItem *)v53 updateName];
      v6 = [v51 alertBodyLocallizedStrWithUpdateName:?];
      v7 = v52[0];
      v52[0] = v6;

      goto LABEL_34;
    }

    if (v37 != 6)
    {
LABEL_31:
      v20 = [(SUSUIBaseSoftwareUpdateAlertItem *)v53 softwareUpdateController];
      v21 = [(SUSUISoftwareUpdateController *)v20 canDeferInstallation];

      if (v21)
      {
        v19 = sub_10DC8();
        v18 = [v19 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_ALERT_NON_COUNTDOWN_BODY" value:&stru_62DF0 table:@"ui_alerts"];
        v17 = [(SUSUIBaseSoftwareUpdateAlertItem *)v53 updateName];
        v8 = [NSString stringWithFormat:v18, v17];
        v9 = v52[0];
        v52[0] = v8;
      }

      else
      {
        v16 = sub_10DC8();
        v15 = [v16 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_ALERT_FORCED_BODY" value:&stru_62DF0 table:@"ui_alerts"];
        v14 = [(SUSUIBaseSoftwareUpdateAlertItem *)v53 updateName];
        v10 = [NSString stringWithFormat:v15, v14];
        v11 = v52[0];
        v52[0] = v10;
      }
    }
  }

LABEL_34:
  v13 = v52[0];
  objc_storeStrong(&v51, 0);
  objc_storeStrong(v52, 0);

  return v13;
}

- (id)_stringFromAlertStyle:(unint64_t)a3
{
  switch(a3)
  {
    case 1uLL:
      v4 = @"SUSUISoftwareUpdateInstallAlertStyleAutoDownload";
      break;
    case 2uLL:
      v4 = @"SUSUISoftwareUpdateInstallAlertStyleInstallWithCountdown";
      break;
    case 3uLL:
      v4 = @"SUSUISoftwareUpdateInstallAlertStyleInstallWithoutCountdown";
      break;
    case 4uLL:
      v4 = @"SUSUISoftwareUpdateInstallAlertStyleEnforcedNow";
      break;
    case 5uLL:
      v4 = @"SUSUISoftwareUpdateInstallAlertStyleEnforcedReminder";
      break;
    case 6uLL:
      v4 = @"SUSUISoftwareUpdateInstallAlertStyleEnforcedCountdown";
      break;
    default:
      v4 = @"SUSUISoftwareUpdateInstallAlertStyleNone";
      break;
  }

  return v4;
}

- (BOOL)_shouldCountdown
{
  v3 = 1;
  if (*(&self->super._controller + 1) != (&dword_0 + 2))
  {
    return *(&self->super._controller + 1) == (&dword_4 + 2);
  }

  return v3;
}

- (BOOL)_isMDMAlert
{
  v3 = 1;
  if (*(&self->super._controller + 1) != &dword_4)
  {
    return *(&self->super._controller + 1) == (&dword_4 + 1);
  }

  return v3;
}

- (void)_installUpdateNow
{
  v4 = 0;
  if ([(SUSUIBaseAlertItem *)self isUILocked])
  {
    v4 = [(SUSUISoftwareUpdateInstallAlertItem *)self shouldShowInLockScreen];
  }

  [*(&self->_alertStyle + 1) setRescheduleIfAuthFails:{v4 & 1, &selRef_client_scanRequestDidStartForOptions_}];
  v3 = [(SUSUIBaseSoftwareUpdateAlertItem *)self softwareUpdateController];
  [(SUSUISoftwareUpdateController *)v3 installNowFromSource:0 options:*(&self->super.super.super.isa + *(v2 + 224))];

  if (v4)
  {
    [(SUSUISoftwareUpdateInstallAlertItem *)self dismissAlert];
  }
}

- (void)_scheduleInstallAlertRepopOnDismissWithReason:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  BYTE1(v9->_download) = 1;
  if (!location[0])
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = location[0];
    location[0] = v4;
  }

  v6 = [location[0] copy];
  v7 = *(&v9->_scheduleInstallAlertRepopOnDismiss + 1);
  *(&v9->_scheduleInstallAlertRepopOnDismiss + 1) = v6;

  objc_storeStrong(location, 0);
}

- (id)_bodyTextToModelSpecificLocalizedKey:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = sub_10DC8();
  v6 = [UIDevice modelSpecificLocalizedStringKeyForKey:location[0]];
  v8 = [v7 localizedStringForKey:? value:? table:?];

  if (!v8)
  {
    v5 = sub_10DC8();
    v8 = [v5 localizedStringForKey:location[0] value:&stru_62DF0 table:@"ui_alerts"];
  }

  v4 = v8;
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (void)_submitUserInteractionEvent:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [SUAnalyticsEvent alloc];
  v8 = [v3 initWithEventName:kSUAnalyticsUsageEventName];
  [v8 setEventPayloadEntry:kSUAnalyticsUserInteractionType stringValue:location[0]];
  v5 = v8;
  v4 = kSUSoftwareUpdateInstallAlertStyle;
  v6 = SUSUIStringForInstallAlertInstallStyle(*(&v10->super._controller + 1));
  [v5 setEventPayloadEntry:v4 stringValue:?];

  v7 = [(SUSUIBaseSoftwareUpdateAlertItem *)v10 softwareUpdateController];
  [(SUSUISoftwareUpdateController *)v7 submitSUAnalyticsEvent:v8];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (id)_installNowButton
{
  v14 = self;
  v13[1] = a2;
  v13[0] = 0;
  v12 = self;
  v2 = objc_opt_class();
  v11 = NSStringFromClass(v2);
  v6 = [SUSUIAlertButtonDefinition alloc];
  v7 = [(SUSUISoftwareUpdateInstallAlertItem *)v14 _installNowButtonText];
  v9 = v11;
  v10 = v12;
  v3 = [(SUSUIAlertButtonDefinition *)v6 initWithLabel:v7 presentationStyle:0 isPreferredButton:1 handler:?];
  v4 = v13[0];
  v13[0] = v3;

  v8 = v13[0];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(v13, 0);

  return v8;
}

- (id)_installNowButtonText
{
  v4 = [(SUSUIBaseSoftwareUpdateAlertItem *)self descriptor];
  v5 = [(SUDescriptor *)v4 isSplatOnly];

  v12 = 0;
  v10 = 0;
  v8 = 0;
  v6 = 0;
  if (v5)
  {
    v13 = sub_10DC8();
    v12 = 1;
    v11 = [v13 localizedStringForKey:@"RSR_INSTALL_ALERT_ACTION_RESTART_NOW" value:&stru_62DF0 table:@"ui_alerts"];
    v10 = 1;
    v2 = v11;
  }

  else
  {
    v9 = sub_10DC8();
    v8 = 1;
    v7 = [v9 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_ALERT_ACTION_INSTALL_NOW" value:&stru_62DF0 table:@"ui_alerts"];
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

- (id)_installLaterButton
{
  v15 = self;
  v14[1] = a2;
  v14[0] = 0;
  v13 = self;
  v2 = objc_opt_class();
  v12 = NSStringFromClass(v2);
  v6 = [SUSUIAlertButtonDefinition alloc];
  v7 = [(SUSUISoftwareUpdateInstallAlertItem *)v15 _installLaterButtonText];
  v9 = v12;
  v10 = v13;
  v11 = v15;
  v3 = [(SUSUIAlertButtonDefinition *)v6 initWithLabel:v7 presentationStyle:0 isPreferredButton:0 handler:?];
  v4 = v14[0];
  v14[0] = v3;

  v8 = v14[0];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(v14, 0);

  return v8;
}

- (id)_installLaterButtonText
{
  v4 = [(SUSUIBaseSoftwareUpdateAlertItem *)self descriptor];
  v5 = [(SUDescriptor *)v4 isSplatOnly];

  v12 = 0;
  v10 = 0;
  v8 = 0;
  v6 = 0;
  if (v5)
  {
    v13 = sub_10DC8();
    v12 = 1;
    v11 = [v13 localizedStringForKey:@"RSR_INSTALL_ALERT_ACTION_NOT_NOW" value:&stru_62DF0 table:@"ui_alerts"];
    v10 = 1;
    v2 = v11;
  }

  else
  {
    v9 = sub_10DC8();
    v8 = 1;
    v7 = [v9 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_ALERT_ACTION_LATER" value:&stru_62DF0 table:@"ui_alerts"];
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

- (id)_remindMeLaterButton
{
  v16 = self;
  v15[1] = a2;
  v15[0] = 0;
  v14 = self;
  v2 = objc_opt_class();
  v13 = NSStringFromClass(v2);
  v6 = [SUSUIAlertButtonDefinition alloc];
  v8 = sub_10DC8();
  v7 = [v8 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_ALERT_ACTION_REMIND_ME_LATER" value:&stru_62DF0 table:@"ui_alerts"];
  v10 = v13;
  v11 = v14;
  v12 = v16;
  v3 = [(SUSUIAlertButtonDefinition *)v6 initWithLabel:v7 presentationStyle:2 isPreferredButton:0 handler:?];
  v4 = v15[0];
  v15[0] = v3;

  v9 = v15[0];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(v15, 0);

  return v9;
}

- (id)_emergencyButton
{
  v14[2] = self;
  v14[1] = a2;
  v14[0] = 0;
  v13 = self;
  v2 = objc_opt_class();
  v12 = NSStringFromClass(v2);
  v6 = [SUSUIAlertButtonDefinition alloc];
  v8 = sub_10DC8();
  v7 = [v8 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_ALERT_ACTION_EMERGENCY" value:&stru_62DF0 table:@"ui_alerts"];
  v10 = v12;
  v11 = v13;
  v3 = [(SUSUIAlertButtonDefinition *)v6 initWithLabel:v7 presentationStyle:2 isPreferredButton:0 handler:?];
  v4 = v14[0];
  v14[0] = v3;

  v9 = v14[0];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(v14, 0);

  return v9;
}

- (id)_detailsButton
{
  v14[2] = self;
  v14[1] = a2;
  v14[0] = 0;
  v13 = self;
  v2 = objc_opt_class();
  v12 = NSStringFromClass(v2);
  v6 = [SUSUIAlertButtonDefinition alloc];
  v8 = sub_10DC8();
  v7 = [v8 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_ALERT_ACTION_DETAILS" value:&stru_62DF0 table:@"ui_alerts"];
  v10 = v12;
  v11 = v13;
  v3 = [(SUSUIAlertButtonDefinition *)v6 initWithLabel:v7 presentationStyle:0 isPreferredButton:0 handler:?];
  v4 = v14[0];
  v14[0] = v3;

  v9 = v14[0];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(v14, 0);

  return v9;
}

- (BOOL)_shouldShowInstallLater
{
  if (*(&self->_definition + 1))
  {
    v5 = [*(&self->_definition + 1) scheduleType];
  }

  else
  {
    v5 = 0;
  }

  v3 = [(SUSUIBaseSoftwareUpdateAlertItem *)self softwareUpdateController];
  v4 = 0;
  if ([(SUSUISoftwareUpdateController *)v3 canDeferInstallation])
  {
    v4 = 0;
    if (![(SUSUIBaseAlertItem *)self isUILocked])
    {
      v4 = v5 != 0;
    }
  }

  return v4;
}

- (void)_activateInstallLaterAlert
{
  v42 = self;
  location[1] = a2;
  location[0] = SUSUILog();
  v40 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v40;
    v2 = objc_opt_class();
    v21 = NSStringFromClass(v2);
    v39 = v21;
    sub_4B94(v43, v39);
    _os_log_impl(&dword_0, log, type, "[%{public}@] Showing install tonight alert.", v43, 0xCu);

    objc_storeStrong(&v39, 0);
  }

  objc_storeStrong(location, 0);
  v38 = v42;
  v37 = *(&v42->_installOptions + 1);
  v36 = *(&v42->_definition + 1);
  v17 = +[SUKeybagInterface sharedInstance];
  v18 = [(SUKeybagInterface *)v17 hasPasscodeSet];

  if (v18)
  {
    v10 = [SUSUIFullScreenAuthenticationAlert alloc];
    v14 = [v37 descriptor];
    v8 = *(&v42->_definition + 1);
    v13 = [v38 softwareUpdateController];
    v9 = [v13 canDeferInstallation];
    v12 = [v38 softwareUpdateController];
    v11 = [v12 clientQueue];
    v29 = _NSConcreteStackBlock;
    v30 = -1073741824;
    v31 = 0;
    v32 = sub_10B38;
    v33 = &unk_5D0A8;
    v34 = v38;
    v35 = [(SUSUIFullScreenAuthenticationAlert *)v10 initWithDescriptor:v14 autoInstallForecast:v8 forInstallTonight:1 canDeferInstallation:v9 completionQueue:v11 completionBlock:&v29];

    v16 = [v38 softwareUpdateController];
    v15 = v35;
    v23 = _NSConcreteStackBlock;
    v24 = -1073741824;
    v25 = 0;
    v26 = sub_10BC0;
    v27 = &unk_5CCB0;
    v28 = v38;
    [v16 presentFullScreenAlert:v15 completion:&v23];

    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v34, 0);
  }

  else
  {
    v3 = [SUSUISoftwareUpdateInstallLaterAlertItem alloc];
    v5 = [v38 descriptor];
    v4 = [v38 softwareUpdateController];
    v22 = [SUSUISoftwareUpdateInstallLaterAlertItem initWithDescriptor:v3 softwareUpdateController:"initWithDescriptor:softwareUpdateController:tryTonightOperationForecast:" tryTonightOperationForecast:v5];

    v7 = [v38 softwareUpdateController];
    v6 = [v7 alertPresentationManager];
    [v6 presentAlert:v22 animated:1];

    [v38 dismissAlert];
    objc_storeStrong(&v22, 0);
  }

  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
}

- (id)_setupDefinition
{
  v9 = self;
  v8[1] = a2;
  v3 = [SUSUIAlertItemDefinition alloc];
  v6 = [(SUSUISoftwareUpdateInstallAlertItem *)v9 title];
  v5 = [(SUSUISoftwareUpdateInstallAlertItem *)v9 message];
  v4 = [(SUSUISoftwareUpdateInstallAlertItem *)v9 buttons];
  v8[0] = [(SUSUIAlertItemDefinition *)v3 initWithTitle:v6 message:v5 buttons:?];

  v7 = v8[0];
  objc_storeStrong(v8, 0);

  return v7;
}

@end