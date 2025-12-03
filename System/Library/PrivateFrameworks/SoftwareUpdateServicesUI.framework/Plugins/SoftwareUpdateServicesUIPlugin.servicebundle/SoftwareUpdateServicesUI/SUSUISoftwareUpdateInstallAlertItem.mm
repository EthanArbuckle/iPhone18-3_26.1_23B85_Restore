@interface SUSUISoftwareUpdateInstallAlertItem
- (BOOL)_isMDMAlert;
- (BOOL)_shouldCountdown;
- (BOOL)_shouldShowInstallLater;
- (BOOL)allowLockScreenDismissal;
- (BOOL)allowMenuButtonDismissal;
- (BOOL)shouldShowInLockScreen;
- (BOOL)undimsScreen;
- (SUSUISoftwareUpdateInstallAlertItem)initWithDownload:(id)download softwareUpdateController:(id)controller;
- (SUSUISoftwareUpdateInstallAlertItem)initWithDownload:(id)download style:(unint64_t)style softwareUpdateController:(id)controller tryTonightInstallOperationForecast:(id)forecast installOptions:(id)options;
- (id)_bodyTextToModelSpecificLocalizedKey:(id)key;
- (id)_detailsButton;
- (id)_emergencyButton;
- (id)_installLaterButton;
- (id)_installLaterButtonText;
- (id)_installNowButton;
- (id)_installNowButtonText;
- (id)_notificationMessage;
- (id)_remindMeLaterButton;
- (id)_setupDefinition;
- (id)_stringFromAlertStyle:(unint64_t)style;
- (id)allowedApps;
- (id)buttons;
- (id)contentExtensionID;
- (id)description;
- (id)extensionDictionary;
- (id)graphicIcon;
- (id)title;
- (void)_activateInstallLaterAlert;
- (void)_installUpdateNow;
- (void)_scheduleInstallAlertRepopOnDismissWithReason:(id)reason;
- (void)_submitUserInteractionEvent:(id)event;
- (void)alertWasCanceled;
- (void)dismissAlert;
@end

@implementation SUSUISoftwareUpdateInstallAlertItem

- (SUSUISoftwareUpdateInstallAlertItem)initWithDownload:(id)download softwareUpdateController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, download);
  v8 = 0;
  objc_storeStrong(&v8, controller);
  v4 = selfCopy;
  selfCopy = 0;
  selfCopy = [(SUSUISoftwareUpdateInstallAlertItem *)v4 initWithDownload:location[0] style:3 softwareUpdateController:v8 tryTonightInstallOperationForecast:0 installOptions:?];
  v7 = selfCopy;
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (SUSUISoftwareUpdateInstallAlertItem)initWithDownload:(id)download style:(unint64_t)style softwareUpdateController:(id)controller tryTonightInstallOperationForecast:(id)forecast installOptions:(id)options
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, download);
  styleCopy = style;
  v23 = 0;
  objc_storeStrong(&v23, controller);
  v22 = 0;
  objc_storeStrong(&v22, forecast);
  v21 = 0;
  objc_storeStrong(&v21, options);
  v13 = selfCopy;
  descriptor = [location[0] descriptor];
  selfCopy = 0;
  v20.receiver = v13;
  v20.super_class = SUSUISoftwareUpdateInstallAlertItem;
  v15 = [SUSUIBaseSoftwareUpdateAlertItem initWithDescriptor:"initWithDescriptor:softwareUpdateController:" softwareUpdateController:?];
  selfCopy = v15;
  objc_storeStrong(&selfCopy, v15);

  if (v15)
  {
    *(&selfCopy->super._controller + 1) = styleCopy;
    objc_storeStrong((&selfCopy->_alertStyle + 1), v21);
    if (!*(&selfCopy->_alertStyle + 1))
    {
      v7 = objc_alloc_init(SUSUISoftwareUpdateInstallOptions);
      v8 = *(&selfCopy->_alertStyle + 1);
      *(&selfCopy->_alertStyle + 1) = v7;
    }

    objc_storeStrong((&selfCopy->_installOptions + 1), location[0]);
    BYTE1(selfCopy->_download) = 0;
    objc_storeStrong((&selfCopy->_definition + 1), v22);
    _setupDefinition = [(SUSUISoftwareUpdateInstallAlertItem *)selfCopy _setupDefinition];
    v10 = *(&selfCopy->_repopReason + 1);
    *(&selfCopy->_repopReason + 1) = _setupDefinition;
  }

  v12 = selfCopy;
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
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
  selfCopy = self;
  v18[1] = a2;
  v18[0] = 0;
  if (*(&self->_alertStyle + 1))
  {
    v2 = [[SUInstallOptions alloc] initWithSUSUIInstallOptions:*(&selfCopy->_alertStyle + 1)];
    v3 = v18[0];
    v18[0] = v2;
  }

  v20[0] = @"ExtensionAlertKeyHumanReadableUpdateName";
  descriptor = [(SUSUIBaseSoftwareUpdateAlertItem *)selfCopy descriptor];
  humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
  v21[0] = humanReadableUpdateName;
  v20[1] = @"ExtensionAlertKeyIsAutoInstall";
  v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(&selfCopy->_alertStyle + 1) automaticInstallAttempt]);
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
  v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(&selfCopy->_alertStyle + 1) ignorableConstraints]);
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
    descriptor = [(SUSUIBaseSoftwareUpdateAlertItem *)self descriptor];
    isSplatOnly = [(SUDescriptor *)descriptor isSplatOnly];

    v13 = 0;
    v11 = 0;
    v9 = 0;
    v7 = 0;
    if (isSplatOnly)
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
  selfCopy = self;
  v19[1] = a2;
  v19[0] = +[NSMutableArray array];
  softwareUpdateController = [(SUSUIBaseSoftwareUpdateAlertItem *)selfCopy softwareUpdateController];
  location = [(SUSUISoftwareUpdateController *)softwareUpdateController ddmController];

  _installNowButton = [(SUSUISoftwareUpdateInstallAlertItem *)selfCopy _installNowButton];
  [v19[0] addObject:?];

  if ([(SUSUISoftwareUpdateInstallAlertItem *)selfCopy _shouldShowInstallLater])
  {
    _installLaterButton = [(SUSUISoftwareUpdateInstallAlertItem *)selfCopy _installLaterButton];
    [v19[0] addObject:?];
  }

  else
  {
    softwareUpdateController2 = [(SUSUIBaseSoftwareUpdateAlertItem *)selfCopy softwareUpdateController];
    v16 = 0;
    v12 = 1;
    if (![(SUSUISoftwareUpdateController *)softwareUpdateController2 canDeferInstallation])
    {
      v17 = +[UIDevice currentDevice];
      v16 = 1;
      v10 = 0;
      if ([(UIDevice *)v17 userInterfaceIdiom]== &dword_0 + 1)
      {
        shouldEnforceUpdate = 0;
        if (location)
        {
          shouldEnforceUpdate = [location shouldEnforceUpdate];
        }

        v10 = shouldEnforceUpdate ^ 1;
      }

      v12 = v10;
    }

    if (v16)
    {
    }

    if (v12)
    {
      _remindMeLaterButton = [(SUSUISoftwareUpdateInstallAlertItem *)selfCopy _remindMeLaterButton];
      [v19[0] addObject:?];
    }

    else
    {
      v6 = +[UIDevice currentDevice];
      userInterfaceIdiom = [(UIDevice *)v6 userInterfaceIdiom];

      if (userInterfaceIdiom != &dword_0 + 1)
      {
        _emergencyButton = [(SUSUISoftwareUpdateInstallAlertItem *)selfCopy _emergencyButton];
        [v19[0] addObject:?];
      }
    }
  }

  if (*(&selfCopy->super._controller + 1) == (&dword_0 + 1))
  {
    _detailsButton = [(SUSUISoftwareUpdateInstallAlertItem *)selfCopy _detailsButton];
    [v19[0] addObject:?];
  }

  v3 = [v19[0] copy];
  objc_storeStrong(&location, 0);
  objc_storeStrong(v19, 0);

  return v3;
}

- (void)dismissAlert
{
  selfCopy = self;
  v4 = a2;
  if (BYTE1(self->_download))
  {
    softwareUpdateController = [(SUSUIBaseSoftwareUpdateAlertItem *)selfCopy softwareUpdateController];
    [(SUSUISoftwareUpdateController *)softwareUpdateController repopInstallAlertWithDefaultDurationFromNowForReason:*(&selfCopy->_scheduleInstallAlertRepopOnDismiss + 1)];
  }

  v3.receiver = selfCopy;
  v3.super_class = SUSUISoftwareUpdateInstallAlertItem;
  [(SUSUIBaseSoftwareUpdateAlertItem *)&v3 dismissAlert];
}

- (void)alertWasCanceled
{
  selfCopy = self;
  v13 = a2;
  v12.receiver = self;
  v12.super_class = SUSUISoftwareUpdateInstallAlertItem;
  [(SUSUIBaseAlertItem *)&v12 alertWasCanceled];
  location = SUSUILog();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    sub_4B94(v15, selfCopy);
    _os_log_impl(&dword_0, location, v10, "%{public}@ was unexpectedly canceled", v15, 0xCu);
  }

  objc_storeStrong(&location, 0);
  softwareUpdateController = [(SUSUIBaseSoftwareUpdateAlertItem *)selfCopy softwareUpdateController];
  queue = [(SUSUISoftwareUpdateController *)softwareUpdateController clientQueue];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_D9A8;
  v8 = &unk_5CCB0;
  v9 = selfCopy;
  dispatch_async(queue, &v4);

  objc_storeStrong(&v9, 0);
}

- (BOOL)shouldShowInLockScreen
{
  _isMDMAlert = 1;
  if (![(SUSUISoftwareUpdateInstallAlertItem *)self _shouldCountdown])
  {
    _isMDMAlert = [(SUSUISoftwareUpdateInstallAlertItem *)self _isMDMAlert];
  }

  return _isMDMAlert & 1;
}

- (BOOL)undimsScreen
{
  _isMDMAlert = 1;
  if ([*(&self->_alertStyle + 1) automaticInstallAttempt])
  {
    _isMDMAlert = [(SUSUISoftwareUpdateInstallAlertItem *)self _isMDMAlert];
  }

  return _isMDMAlert & 1;
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
  descriptor = [(SUSUIBaseSoftwareUpdateAlertItem *)self descriptor];
  LOBYTE(v6) = 0;
  if (([(SUDescriptor *)descriptor isSplatOnly]& 1) != 0)
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
  selfCopy = self;
  v52[1] = a2;
  v52[0] = 0;
  softwareUpdateController = [(SUSUIBaseSoftwareUpdateAlertItem *)self softwareUpdateController];
  ddmController = [(SUSUISoftwareUpdateController *)softwareUpdateController ddmController];

  v37 = *(&selfCopy->super._controller + 1);
  if (v37 == 1)
  {
    location = 0;
    softwareUpdateController2 = [(SUSUIBaseSoftwareUpdateAlertItem *)selfCopy softwareUpdateController];
    canDeferInstallation = [(SUSUISoftwareUpdateController *)softwareUpdateController2 canDeferInstallation];

    if (canDeferInstallation)
    {
      descriptor = [(SUSUIBaseSoftwareUpdateAlertItem *)selfCopy descriptor];
      isSplatOnly = [(SUDescriptor *)descriptor isSplatOnly];

      v48 = 0;
      v46 = 0;
      v44 = 0;
      v42 = 0;
      v40 = 0;
      v38 = 0;
      if (isSplatOnly)
      {
        v49 = [(SUSUISoftwareUpdateInstallAlertItem *)selfCopy _bodyTextToModelSpecificLocalizedKey:@"RSR_INSTALL_ALERT_AUTO_DOWNLOAD_BODY"];
        v48 = 1;
        updateName = [(SUSUIBaseSoftwareUpdateAlertItem *)selfCopy updateName];
        v46 = 1;
        v45 = [NSString stringWithValidatedFormat:v49 validFormatSpecifiers:@"%@" error:0, updateName];
        v44 = 1;
        objc_storeStrong(&location, v45);
      }

      else
      {
        v43 = [(SUSUISoftwareUpdateInstallAlertItem *)selfCopy _bodyTextToModelSpecificLocalizedKey:@"SOFTWARE_UPDATE_INSTALL_ALERT_AUTO_DOWNLOAD_BODY"];
        v42 = 1;
        updateName2 = [(SUSUIBaseSoftwareUpdateAlertItem *)selfCopy updateName];
        v40 = 1;
        v39 = [NSString stringWithValidatedFormat:v43 validFormatSpecifiers:@"%@" error:0, updateName2];
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
      updateName3 = [(SUSUIBaseSoftwareUpdateAlertItem *)selfCopy updateName];
      v2 = [NSString stringWithFormat:v30, updateName3];
      v3 = location;
      location = v2;
    }

    if (_BSIsInternalInstall())
    {
      v23 = location;
      v28 = sub_10DC8();
      v27 = [v28 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_ALERT_AUTO_DOWNLOAD_INTERNAL_LIVABILITY" value:&stru_62DF0 table:@"ui_alerts"];
      descriptor2 = [(SUSUIBaseSoftwareUpdateAlertItem *)selfCopy descriptor];
      productBuildVersion = [(SUDescriptor *)descriptor2 productBuildVersion];
      v24 = [NSString stringWithFormat:v27, productBuildVersion, @"https://builds.swe.apple.com"];
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
      updateName4 = [(SUSUIBaseSoftwareUpdateAlertItem *)selfCopy updateName];
      v6 = [ddmController alertBodyLocallizedStrWithUpdateName:?];
      v7 = v52[0];
      v52[0] = v6;

      goto LABEL_34;
    }

    if (v37 != 6)
    {
LABEL_31:
      softwareUpdateController3 = [(SUSUIBaseSoftwareUpdateAlertItem *)selfCopy softwareUpdateController];
      canDeferInstallation2 = [(SUSUISoftwareUpdateController *)softwareUpdateController3 canDeferInstallation];

      if (canDeferInstallation2)
      {
        v19 = sub_10DC8();
        v18 = [v19 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_ALERT_NON_COUNTDOWN_BODY" value:&stru_62DF0 table:@"ui_alerts"];
        updateName5 = [(SUSUIBaseSoftwareUpdateAlertItem *)selfCopy updateName];
        v8 = [NSString stringWithFormat:v18, updateName5];
        v9 = v52[0];
        v52[0] = v8;
      }

      else
      {
        v16 = sub_10DC8();
        v15 = [v16 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_ALERT_FORCED_BODY" value:&stru_62DF0 table:@"ui_alerts"];
        updateName6 = [(SUSUIBaseSoftwareUpdateAlertItem *)selfCopy updateName];
        v10 = [NSString stringWithFormat:v15, updateName6];
        v11 = v52[0];
        v52[0] = v10;
      }
    }
  }

LABEL_34:
  v13 = v52[0];
  objc_storeStrong(&ddmController, 0);
  objc_storeStrong(v52, 0);

  return v13;
}

- (id)_stringFromAlertStyle:(unint64_t)style
{
  switch(style)
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
  shouldShowInLockScreen = 0;
  if ([(SUSUIBaseAlertItem *)self isUILocked])
  {
    shouldShowInLockScreen = [(SUSUISoftwareUpdateInstallAlertItem *)self shouldShowInLockScreen];
  }

  [*(&self->_alertStyle + 1) setRescheduleIfAuthFails:{shouldShowInLockScreen & 1, &selRef_client_scanRequestDidStartForOptions_}];
  softwareUpdateController = [(SUSUIBaseSoftwareUpdateAlertItem *)self softwareUpdateController];
  [(SUSUISoftwareUpdateController *)softwareUpdateController installNowFromSource:0 options:*(&self->super.super.super.isa + *(v2 + 224))];

  if (shouldShowInLockScreen)
  {
    [(SUSUISoftwareUpdateInstallAlertItem *)self dismissAlert];
  }
}

- (void)_scheduleInstallAlertRepopOnDismissWithReason:(id)reason
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, reason);
  BYTE1(selfCopy->_download) = 1;
  if (!location[0])
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = location[0];
    location[0] = v4;
  }

  v6 = [location[0] copy];
  v7 = *(&selfCopy->_scheduleInstallAlertRepopOnDismiss + 1);
  *(&selfCopy->_scheduleInstallAlertRepopOnDismiss + 1) = v6;

  objc_storeStrong(location, 0);
}

- (id)_bodyTextToModelSpecificLocalizedKey:(id)key
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
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

- (void)_submitUserInteractionEvent:(id)event
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  v3 = [SUAnalyticsEvent alloc];
  v8 = [v3 initWithEventName:kSUAnalyticsUsageEventName];
  [v8 setEventPayloadEntry:kSUAnalyticsUserInteractionType stringValue:location[0]];
  v5 = v8;
  v4 = kSUSoftwareUpdateInstallAlertStyle;
  v6 = SUSUIStringForInstallAlertInstallStyle(*(&selfCopy->super._controller + 1));
  [v5 setEventPayloadEntry:v4 stringValue:?];

  softwareUpdateController = [(SUSUIBaseSoftwareUpdateAlertItem *)selfCopy softwareUpdateController];
  [(SUSUISoftwareUpdateController *)softwareUpdateController submitSUAnalyticsEvent:v8];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (id)_installNowButton
{
  selfCopy = self;
  v13[1] = a2;
  v13[0] = 0;
  selfCopy2 = self;
  v2 = objc_opt_class();
  v11 = NSStringFromClass(v2);
  v6 = [SUSUIAlertButtonDefinition alloc];
  _installNowButtonText = [(SUSUISoftwareUpdateInstallAlertItem *)selfCopy _installNowButtonText];
  v9 = v11;
  v10 = selfCopy2;
  v3 = [(SUSUIAlertButtonDefinition *)v6 initWithLabel:_installNowButtonText presentationStyle:0 isPreferredButton:1 handler:?];
  v4 = v13[0];
  v13[0] = v3;

  v8 = v13[0];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&selfCopy2, 0);
  objc_storeStrong(v13, 0);

  return v8;
}

- (id)_installNowButtonText
{
  descriptor = [(SUSUIBaseSoftwareUpdateAlertItem *)self descriptor];
  isSplatOnly = [(SUDescriptor *)descriptor isSplatOnly];

  v12 = 0;
  v10 = 0;
  v8 = 0;
  v6 = 0;
  if (isSplatOnly)
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
  selfCopy = self;
  v14[1] = a2;
  v14[0] = 0;
  selfCopy2 = self;
  v2 = objc_opt_class();
  v12 = NSStringFromClass(v2);
  v6 = [SUSUIAlertButtonDefinition alloc];
  _installLaterButtonText = [(SUSUISoftwareUpdateInstallAlertItem *)selfCopy _installLaterButtonText];
  v9 = v12;
  v10 = selfCopy2;
  v11 = selfCopy;
  v3 = [(SUSUIAlertButtonDefinition *)v6 initWithLabel:_installLaterButtonText presentationStyle:0 isPreferredButton:0 handler:?];
  v4 = v14[0];
  v14[0] = v3;

  v8 = v14[0];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&selfCopy2, 0);
  objc_storeStrong(v14, 0);

  return v8;
}

- (id)_installLaterButtonText
{
  descriptor = [(SUSUIBaseSoftwareUpdateAlertItem *)self descriptor];
  isSplatOnly = [(SUDescriptor *)descriptor isSplatOnly];

  v12 = 0;
  v10 = 0;
  v8 = 0;
  v6 = 0;
  if (isSplatOnly)
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
  selfCopy = self;
  v15[1] = a2;
  v15[0] = 0;
  selfCopy2 = self;
  v2 = objc_opt_class();
  v13 = NSStringFromClass(v2);
  v6 = [SUSUIAlertButtonDefinition alloc];
  v8 = sub_10DC8();
  v7 = [v8 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_ALERT_ACTION_REMIND_ME_LATER" value:&stru_62DF0 table:@"ui_alerts"];
  v10 = v13;
  v11 = selfCopy2;
  v12 = selfCopy;
  v3 = [(SUSUIAlertButtonDefinition *)v6 initWithLabel:v7 presentationStyle:2 isPreferredButton:0 handler:?];
  v4 = v15[0];
  v15[0] = v3;

  v9 = v15[0];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&selfCopy2, 0);
  objc_storeStrong(v15, 0);

  return v9;
}

- (id)_emergencyButton
{
  v14[2] = self;
  v14[1] = a2;
  v14[0] = 0;
  selfCopy = self;
  v2 = objc_opt_class();
  v12 = NSStringFromClass(v2);
  v6 = [SUSUIAlertButtonDefinition alloc];
  v8 = sub_10DC8();
  v7 = [v8 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_ALERT_ACTION_EMERGENCY" value:&stru_62DF0 table:@"ui_alerts"];
  v10 = v12;
  v11 = selfCopy;
  v3 = [(SUSUIAlertButtonDefinition *)v6 initWithLabel:v7 presentationStyle:2 isPreferredButton:0 handler:?];
  v4 = v14[0];
  v14[0] = v3;

  v9 = v14[0];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&selfCopy, 0);
  objc_storeStrong(v14, 0);

  return v9;
}

- (id)_detailsButton
{
  v14[2] = self;
  v14[1] = a2;
  v14[0] = 0;
  selfCopy = self;
  v2 = objc_opt_class();
  v12 = NSStringFromClass(v2);
  v6 = [SUSUIAlertButtonDefinition alloc];
  v8 = sub_10DC8();
  v7 = [v8 localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_ALERT_ACTION_DETAILS" value:&stru_62DF0 table:@"ui_alerts"];
  v10 = v12;
  v11 = selfCopy;
  v3 = [(SUSUIAlertButtonDefinition *)v6 initWithLabel:v7 presentationStyle:0 isPreferredButton:0 handler:?];
  v4 = v14[0];
  v14[0] = v3;

  v9 = v14[0];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&selfCopy, 0);
  objc_storeStrong(v14, 0);

  return v9;
}

- (BOOL)_shouldShowInstallLater
{
  if (*(&self->_definition + 1))
  {
    scheduleType = [*(&self->_definition + 1) scheduleType];
  }

  else
  {
    scheduleType = 0;
  }

  softwareUpdateController = [(SUSUIBaseSoftwareUpdateAlertItem *)self softwareUpdateController];
  v4 = 0;
  if ([(SUSUISoftwareUpdateController *)softwareUpdateController canDeferInstallation])
  {
    v4 = 0;
    if (![(SUSUIBaseAlertItem *)self isUILocked])
    {
      v4 = scheduleType != 0;
    }
  }

  return v4;
}

- (void)_activateInstallLaterAlert
{
  selfCopy = self;
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
  v38 = selfCopy;
  v37 = *(&selfCopy->_installOptions + 1);
  v36 = *(&selfCopy->_definition + 1);
  v17 = +[SUKeybagInterface sharedInstance];
  hasPasscodeSet = [(SUKeybagInterface *)v17 hasPasscodeSet];

  if (hasPasscodeSet)
  {
    v10 = [SUSUIFullScreenAuthenticationAlert alloc];
    descriptor = [v37 descriptor];
    v8 = *(&selfCopy->_definition + 1);
    softwareUpdateController = [v38 softwareUpdateController];
    canDeferInstallation = [softwareUpdateController canDeferInstallation];
    softwareUpdateController2 = [v38 softwareUpdateController];
    clientQueue = [softwareUpdateController2 clientQueue];
    v29 = _NSConcreteStackBlock;
    v30 = -1073741824;
    v31 = 0;
    v32 = sub_10B38;
    v33 = &unk_5D0A8;
    v34 = v38;
    v35 = [(SUSUIFullScreenAuthenticationAlert *)v10 initWithDescriptor:descriptor autoInstallForecast:v8 forInstallTonight:1 canDeferInstallation:canDeferInstallation completionQueue:clientQueue completionBlock:&v29];

    softwareUpdateController3 = [v38 softwareUpdateController];
    v15 = v35;
    v23 = _NSConcreteStackBlock;
    v24 = -1073741824;
    v25 = 0;
    v26 = sub_10BC0;
    v27 = &unk_5CCB0;
    v28 = v38;
    [softwareUpdateController3 presentFullScreenAlert:v15 completion:&v23];

    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v34, 0);
  }

  else
  {
    v3 = [SUSUISoftwareUpdateInstallLaterAlertItem alloc];
    descriptor2 = [v38 descriptor];
    softwareUpdateController4 = [v38 softwareUpdateController];
    v22 = [SUSUISoftwareUpdateInstallLaterAlertItem initWithDescriptor:v3 softwareUpdateController:"initWithDescriptor:softwareUpdateController:tryTonightOperationForecast:" tryTonightOperationForecast:descriptor2];

    softwareUpdateController5 = [v38 softwareUpdateController];
    alertPresentationManager = [softwareUpdateController5 alertPresentationManager];
    [alertPresentationManager presentAlert:v22 animated:1];

    [v38 dismissAlert];
    objc_storeStrong(&v22, 0);
  }

  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
}

- (id)_setupDefinition
{
  selfCopy = self;
  v8[1] = a2;
  v3 = [SUSUIAlertItemDefinition alloc];
  title = [(SUSUISoftwareUpdateInstallAlertItem *)selfCopy title];
  message = [(SUSUISoftwareUpdateInstallAlertItem *)selfCopy message];
  buttons = [(SUSUISoftwareUpdateInstallAlertItem *)selfCopy buttons];
  v8[0] = [(SUSUIAlertItemDefinition *)v3 initWithTitle:title message:message buttons:?];

  v7 = v8[0];
  objc_storeStrong(v8, 0);

  return v7;
}

@end