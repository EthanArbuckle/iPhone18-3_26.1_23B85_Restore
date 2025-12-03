@interface SUSUIDDMController
+ (BOOL)_isDeclarationRelevant:(id)relevant;
+ (id)_localizedStringForDate:(id)date RelativeToDate:(id)toDate;
+ (id)_scheduledAlertsForEnforcedInstallDate:(id)date;
+ (id)_schedulingUnitForEnforcedDate:(id)date withInterval:(double)interval;
+ (id)localizedStringForKey:(id)key;
+ (int64_t)_indexForNextAlertInScheduling:(id)scheduling forEnforcedDate:(id)date;
+ (unint64_t)_alertStyleForWindow:(unint64_t)window;
- (BOOL)_isUpdateRelevant:(id)relevant;
- (BOOL)_presentAlert:(id)alert;
- (BOOL)_shouldTryToInstall;
- (BOOL)notificationsDisabledByGlobalSettings;
- (SUSUIDDMController)initWithSUSUIController:(id)controller withQueue:(id)queue;
- (id)alertBodyLocallizedStrWithUpdateName:(id)name;
- (id)stringFromRightsOwner:(unint64_t)owner;
- (unint64_t)decideAlertConflictWithAlertFlow:(unint64_t)flow;
- (void)_disarm;
- (void)_doInstall:(id)install;
- (void)_installNow;
- (void)_makeScheduling;
- (void)_presentDDMAvailableAlert;
- (void)_presentDDMInstallAlert;
- (void)_scheduleNextDDMAlert;
- (void)_scheduleNextDDMAlertWithTimer;
- (void)_setPasscodePolicyToRequiredIfNeeded;
- (void)_showDDMAlert;
- (void)_showDDMAlert:(id)alert;
- (void)_showDDMAlertNowOrInstallIfNecessary:(BOOL)necessary;
- (void)installDidFail:(id)fail;
- (void)installDidFinish:(id)finish;
- (void)installDidStart:(id)start;
- (void)installNow;
- (void)notifyAlertWasPresented;
- (void)setDeclaration:(id)declaration;
- (void)setGlobalSettings:(id)settings;
- (void)showDDMAlert:(int64_t)alert install:(BOOL)install;
- (void)showNextDDMAlert:(BOOL)alert;
@end

@implementation SUSUIDDMController

- (SUSUIDDMController)initWithSUSUIController:(id)controller withQueue:(id)queue
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v11 = 0;
  objc_storeStrong(&v11, queue);
  v4 = selfCopy;
  selfCopy = 0;
  v10.receiver = v4;
  v10.super_class = SUSUIDDMController;
  v7 = [(SUSUIDDMController *)&v10 init];
  selfCopy = v7;
  objc_storeStrong(&selfCopy, v7);
  if (v7)
  {
    objc_storeStrong(&selfCopy->_declaration, 0);
    objc_storeStrong(&selfCopy->_ddmTimer, 0);
    objc_storeStrong(&selfCopy->_controllerClientQueue, v11);
    objc_storeStrong(&selfCopy->_controller, location[0]);
    v9 = [NSDate dateWithTimeIntervalSince1970:0.0];
    objc_storeStrong(&selfCopy->_scheduledAlertInfo, 0);
    objc_storeStrong(&selfCopy->_presentedAlert, 0);
    objc_storeStrong(&selfCopy->_lastClassicAlertDate, v9);
    selfCopy->_shouldPauseAlert = 0;
    selfCopy->_pastDueNotificationCnt = 0;
    objc_storeStrong(&v9, 0);
  }

  v6 = selfCopy;
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (void)setDeclaration:(id)declaration
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, declaration);
  queue = selfCopy->_controllerClientQueue;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_180BC;
  v8 = &unk_5D008;
  v9 = location[0];
  v10 = selfCopy;
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)setGlobalSettings:(id)settings
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, settings);
  queue = selfCopy->_controllerClientQueue;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_18930;
  v8 = &unk_5D008;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)notificationsDisabledByGlobalSettings
{
  v7 = 0;
  v5 = 0;
  v4 = 0;
  if (self->_globalSettings)
  {
    enableGlobalNotifications = [(SUCoreDDMDeclarationGlobalSettings *)self->_globalSettings enableGlobalNotifications];
    v5 = 1;
    v4 = enableGlobalNotifications != 0;
  }

  if (v5)
  {
  }

  if (v4)
  {
    enableGlobalNotifications2 = [(SUCoreDDMDeclarationGlobalSettings *)self->_globalSettings enableGlobalNotifications];
    v7 = ([enableGlobalNotifications2 BOOLValue] ^ 1) & 1;
  }

  return v7;
}

+ (BOOL)_isDeclarationRelevant:(id)relevant
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, relevant);
  v5 = 0;
  v4 = 0;
  if (location[0])
  {
    enforcedInstallDate = [location[0] enforcedInstallDate];
    v5 = 1;
    v4 = enforcedInstallDate != 0;
  }

  if (v5)
  {
  }

  v8 = v4;
  objc_storeStrong(location, 0);
  return v8;
}

+ (id)_localizedStringForDate:(id)date RelativeToDate:(id)toDate
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  v7 = 0;
  objc_storeStrong(&v7, toDate);
  v10 = &unk_6F898;
  v9 = 0;
  objc_storeStrong(&v9, &stru_5F4F0);
  if (*v10 != -1)
  {
    dispatch_once(v10, v9);
  }

  objc_storeStrong(&v9, 0);
  v5 = [qword_6F890 localizedStringForDate:location[0] relativeToDate:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v5;
}

+ (id)localizedStringForKey:(id)key
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v4 = sub_1D75C();
  v5 = [v4 localizedStringForKey:location[0] value:&stru_62DF0 table:@"ui_alerts"];

  objc_storeStrong(location, 0);

  return v5;
}

+ (id)_schedulingUnitForEnforcedDate:(id)date withInterval:(double)interval
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  intervalCopy = interval;
  v17 = @"%@";
  v16 = objc_alloc_init(_DDMAlertSchedulingUnit);
  v12 = [location[0] dateByAddingTimeInterval:interval];
  [(_DDMAlertSchedulingUnit *)v16 setDate:?];

  [(_DDMAlertSchedulingUnit *)v16 setWindow:0];
  if (interval == 0.0)
  {
    v11 = [selfCopy localizedStringForKey:{@"SOFTWARE_UPDATE_INSTALL_ALERT_ENFORCED_NOW", interval}];
    [(_DDMAlertSchedulingUnit *)v16 setAlertMsgFormat:?];

    [(_DDMAlertSchedulingUnit *)v16 setWindow:1];
  }

  else
  {
    v15 = (-intervalCopy / 3600.0);
    v7 = selfCopy;
    v6 = location[0];
    date = [(_DDMAlertSchedulingUnit *)v16 date];
    v14 = [v7 _localizedStringForDate:v6 RelativeToDate:?];

    v10 = [selfCopy localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_ALERT_ENFORCED_REMINDER"];
    v9 = [NSString localizedStringWithValidatedFormat:v17 validFormatSpecifiers:v14 error:?];
    [(_DDMAlertSchedulingUnit *)v16 setAlertMsgFormat:?];

    if (v15 < 24)
    {
      if ((v15 & 0x8000000000000000) == 0)
      {
        [(_DDMAlertSchedulingUnit *)v16 setWindow:2];
      }
    }

    else
    {
      [(_DDMAlertSchedulingUnit *)v16 setWindow:3];
    }

    objc_storeStrong(&v14, 0);
  }

  v5 = v16;
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (void)_makeScheduling
{
  selfCopy = self;
  location[1] = a2;
  dispatch_assert_queue_V2(self->_controllerClientQueue);
  location[0] = [(SUCoreDDMDeclaration *)selfCopy->_declaration enforcedInstallDate];
  if (location[0])
  {
    v2 = [objc_opt_class() _scheduledAlertsForEnforcedInstallDate:location[0]];
    scheduling = selfCopy->_scheduling;
    selfCopy->_scheduling = v2;

    selfCopy->_schedulingIndex = [objc_opt_class() _indexForNextAlertInScheduling:selfCopy->_scheduling forEnforcedDate:location[0]];
  }

  objc_storeStrong(location, 0);
}

+ (id)_scheduledAlertsForEnforcedInstallDate:(id)date
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  if (location[0])
  {
    v15 = +[NSMutableArray array];
    for (i = 23; i > 0; --i)
    {
      v13 = [selfCopy _schedulingUnitForEnforcedDate:location[0] withInterval:(-3600 * i)];
      [v15 addObject:?];
    }

    v5 = v15;
    v6 = [selfCopy _schedulingUnitForEnforcedDate:location[0] withInterval:-1800.0];
    [v5 addObject:?];

    v7 = v15;
    v8 = [selfCopy _schedulingUnitForEnforcedDate:location[0] withInterval:-600.0];
    [v7 addObject:?];

    v9 = v15;
    v10 = [selfCopy _schedulingUnitForEnforcedDate:location[0] withInterval:-300.0];
    [v9 addObject:?];

    v11 = v15;
    v12 = [selfCopy _schedulingUnitForEnforcedDate:location[0] withInterval:0.0];
    [v11 addObject:?];

    v19 = v15;
    v16 = 1;
    objc_storeStrong(&v15, 0);
  }

  else
  {
    v19 = 0;
    v16 = 1;
  }

  objc_storeStrong(location, 0);
  v3 = v19;

  return v3;
}

+ (int64_t)_indexForNextAlertInScheduling:(id)scheduling forEnforcedDate:(id)date
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scheduling);
  v13 = 0;
  objc_storeStrong(&v13, date);
  [v13 timeIntervalSinceNow];
  v12 = (v4 / 86400.0);
  if (v12 < 1)
  {
    for (i = 0; i < [location[0] count]; ++i)
    {
      v8 = [location[0] objectAtIndexedSubscript:i];
      date = [v8 date];
      [date timeIntervalSinceNow];
      v9 = v5;

      if (v9 >= 0.0)
      {
        v15 = i;
        goto LABEL_9;
      }
    }

    v15 = [location[0] count];
  }

  else
  {
    v15 = -v12;
  }

LABEL_9:
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  return v15;
}

+ (unint64_t)_alertStyleForWindow:(unint64_t)window
{
  if (window == 1)
  {
    return 4;
  }

  if (window - 2 <= 1)
  {
    return 5;
  }

  return 0;
}

- (void)_scheduleNextDDMAlert
{
  selfCopy = self;
  v15 = a2;
  dispatch_assert_queue_V2(self->_controllerClientQueue);
  if (selfCopy->_schedulingIndex < 0)
  {
    v11 = objc_opt_class();
    enforcedInstallDate = [(SUSUIDDMController *)selfCopy enforcedInstallDate];
    v2 = [v11 _schedulingUnitForEnforcedDate:(86400 * selfCopy->_schedulingIndex) withInterval:?];
    scheduledAlertInfo = selfCopy->_scheduledAlertInfo;
    selfCopy->_scheduledAlertInfo = v2;
  }

  else
  {
    schedulingIndex = selfCopy->_schedulingIndex;
    if (schedulingIndex >= [(NSArray *)selfCopy->_scheduling count])
    {
      if (!selfCopy->_scheduledAlertInfo)
      {
        v6 = objc_alloc_init(_DDMAlertSchedulingUnit);
        v7 = selfCopy->_scheduledAlertInfo;
        selfCopy->_scheduledAlertInfo = v6;
      }

      v14 = [SUUtility randomIntWithMinVal:0 maxVal:60]+ 300.0;
      v8 = [NSDate dateWithTimeIntervalSinceNow:v14];
      [(_DDMAlertSchedulingUnit *)selfCopy->_scheduledAlertInfo setDate:?];

      [(_DDMAlertSchedulingUnit *)selfCopy->_scheduledAlertInfo setWindow:1];
      v9 = [objc_opt_class() localizedStringForKey:@"SOFTWARE_UPDATE_INSTALL_ALERT_ENFORCED_NOW"];
      [(_DDMAlertSchedulingUnit *)selfCopy->_scheduledAlertInfo setAlertMsgFormat:?];

      ++selfCopy->_pastDueNotificationCnt;
    }

    else
    {
      v4 = [(NSArray *)selfCopy->_scheduling objectAtIndex:selfCopy->_schedulingIndex];
      v5 = selfCopy->_scheduledAlertInfo;
      selfCopy->_scheduledAlertInfo = v4;
    }
  }

  ++selfCopy->_schedulingIndex;
  location = SUSUILog();
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    sub_1875C(v17, "[SUSUIDDMController _scheduleNextDDMAlert]", selfCopy->_scheduledAlertInfo);
    _os_log_impl(&dword_0, location, OS_LOG_TYPE_DEFAULT, "%s: [DDM] Next alert info: %{public}@", v17, 0x16u);
  }

  objc_storeStrong(&location, 0);
  [(SUSUIDDMController *)selfCopy _scheduleNextDDMAlertWithTimer];
}

- (void)_scheduleNextDDMAlertWithTimer
{
  if (!self->_ddmTimer)
  {
    v2 = [PCPersistentTimer alloc];
    ddmTimer = self->_ddmTimer;
    self->_ddmTimer = v2;
  }

  v6 = self->_ddmTimer;
  date = [(_DDMAlertSchedulingUnit *)self->_scheduledAlertInfo date];
  v4 = [PCPersistentTimer initWithFireDate:v6 serviceIdentifier:"initWithFireDate:serviceIdentifier:target:selector:userInfo:" target:? selector:? userInfo:?];
  v5 = self->_ddmTimer;
  self->_ddmTimer = v4;

  [(PCPersistentTimer *)self->_ddmTimer setUserVisible:1];
  [(PCPersistentTimer *)self->_ddmTimer setMinimumEarlyFireProportion:1.0];
  [(PCPersistentTimer *)self->_ddmTimer scheduleInQueue:self->_controllerClientQueue];
}

- (void)_showDDMAlert:(id)alert
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, alert);
  dispatch_assert_queue_V2(selfCopy[5]);
  [(dispatch_queue_t *)selfCopy _showDDMAlert];
  objc_storeStrong(location, 0);
}

- (void)_showDDMAlert
{
  dispatch_assert_queue_V2(self->_controllerClientQueue);
  [(SUSUIDDMController *)self _setPasscodePolicyToRequiredIfNeeded];
  [(SUSUIDDMController *)self _showDDMAlertNowOrInstallIfNecessary:1];
  [(SUSUIDDMController *)self _scheduleNextDDMAlert];
}

- (void)_setPasscodePolicyToRequiredIfNeeded
{
  selfCopy = self;
  v8[1] = a2;
  dispatch_assert_queue_V2(self->_controllerClientQueue);
  if ([(SUSUISoftwareUpdateController *)selfCopy->_controller isInstallationKeybagRequired])
  {
    v8[0] = SUSUILog();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v8[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v8[0];
      type = v7;
      enforcedInstallDate = [(SUSUIDDMController *)selfCopy enforcedInstallDate];
      v6 = enforcedInstallDate;
      sub_1875C(v11, "[SUSUIDDMController _setPasscodePolicyToRequiredIfNeeded]", v6);
      _os_log_impl(&dword_0, log, type, "%s: [DDM] Set passcode policy to SUPasscodePolicyTypeRequired for the enforced date %{public}@", v11, 0x16u);

      objc_storeStrong(&v6, 0);
    }

    objc_storeStrong(v8, 0);
    [(SUSUISoftwareUpdateController *)selfCopy->_controller _setPasscodePolicyType:2];
  }

  else
  {
    oslog = SUSUILog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_186B0(v10, "[SUSUIDDMController _setPasscodePolicyToRequiredIfNeeded]");
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "%s: [DDM] No need to change passcode policy as we don't need a keybag", v10, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }
}

- (void)_doInstall:(id)install
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, install);
  [(SUSUISoftwareUpdateController *)selfCopy->_controller installNowFromSource:1 options:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_installNow
{
  selfCopy = self;
  v20[1] = a2;
  dispatch_assert_queue_V2(self->_controllerClientQueue);
  v20[0] = [(SUSUIDDMController *)selfCopy descriptor];
  _download = [(SUSUISoftwareUpdateController *)selfCopy->_controller _download];
  descriptor = [_download descriptor];
  v8 = [v20[0] isEqualToDescriptor:?];

  if (v8)
  {
    v16 = objc_alloc_init(SUSUISoftwareUpdateInstallOptions);
    [(SUSUISoftwareUpdateInstallOptions *)v16 setIgnorableConstraints:1056];
    controller = selfCopy->_controller;
    v2 = v16;
    v9 = _NSConcreteStackBlock;
    v10 = -1073741824;
    v11 = 0;
    v12 = sub_1A30C;
    v13 = &unk_5F518;
    v14 = v16;
    v15 = selfCopy;
    [(SUSUISoftwareUpdateController *)controller _isUpdateInstallableWithInstallOptions:v2 andResponse:&v9];
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v16, 0);
    v17 = 0;
  }

  else
  {
    location = SUSUILog();
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      _download2 = [(SUSUISoftwareUpdateController *)selfCopy->_controller _download];
      descriptor2 = [_download2 descriptor];
      sub_186F0(v22, "[SUSUIDDMController _installNow]", v20[0], descriptor2);
      _os_log_impl(&dword_0, location, v18, "%s: [DDM] Skipping. SUDDMManager descriptor (%{public}@) mismatches downloaded descriptor (%{public}@)", v22, 0x20u);
    }

    objc_storeStrong(&location, 0);
    v17 = 1;
  }

  objc_storeStrong(v20, 0);
}

- (BOOL)_shouldTryToInstall
{
  selfCopy = self;
  v13 = a2;
  [(NSDate *)self->_reallyEnforcedDate timeIntervalSinceNow];
  v12 = v2 <= 0.0;
  if (v2 <= 0.0)
  {
    v12 = selfCopy->_pastDueNotificationCnt % 0xC == 1;
  }

  oslog = SUSUILog();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    v7 = type;
    v3 = @"YES";
    if (!v12)
    {
      v3 = @"NO";
    }

    v5 = v3;
    v8 = [SUUtility prettyPrintDate:selfCopy->_reallyEnforcedDate];
    v9 = v8;
    sub_1AABC(v15, "[SUSUIDDMController _shouldTryToInstall]", v5, v9, selfCopy->_pastDueNotificationCnt);
    _os_log_impl(&dword_0, log, v7, "%s: [DDM] result = %{public}@ (real enforce date: %{public}@; past due notifications cnt = %lu)", v15, 0x2Au);

    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(&oslog, 0);
  return v12;
}

- (BOOL)_presentAlert:(id)alert
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, alert);
  if ([(SUSUISoftwareUpdateController *)selfCopy->_controller settingsForeground])
  {
    v19 = SUSUILog();
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      sub_186B0(v26, "[SUSUIDDMController _presentAlert:]");
      _os_log_impl(&dword_0, v19, v18, "%s: [DDM] [Install Alert] Settings, safe", v26, 0xCu);
    }

    objc_storeStrong(&v19, 0);
  }

  else if ([(SUSUISoftwareUpdateController *)selfCopy->_controller _homescreenForeground])
  {
    v17 = SUSUILog();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      sub_186B0(v25, "[SUSUIDDMController _presentAlert:]");
      _os_log_impl(&dword_0, v17, v16, "%s: [DDM] [Install Alert] Homescreen, safe", v25, 0xCu);
    }

    objc_storeStrong(&v17, 0);
  }

  else
  {
    _foregroundBundleID = [(SUSUISoftwareUpdateController *)selfCopy->_controller _foregroundBundleID];
    v14 = SUSUILog();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      sub_1875C(v24, "[SUSUIDDMController _presentAlert:]", _foregroundBundleID);
      _os_log_impl(&dword_0, v14, v13, "%s: [DDM] [Install Alert] fgApp = %{public}@, presenting a notification (follow-up) ...", v24, 0x16u);
    }

    objc_storeStrong(&v14, 0);
    v12 = objc_alloc_init(SUSUIFollowUpDDMUpdate);
    title = [location[0] title];
    [(SUSUIFollowUpDDMUpdate *)v12 setNotificationTitle:?];

    message = [location[0] message];
    [(SUSUIFollowUpDDMUpdate *)v12 setNotificationInformativeText:?];

    v11 = +[SUSUIFollowUpPresenter sharedInstance];
    v7 = v11;
    v9 = +[SUSUIFollowUpDDMUpdate uniqueIdentifier];
    v23 = v9;
    v8 = [NSArray arrayWithObjects:&v23 count:1];
    [(SUSUIFollowUpPresenter *)v7 clearFollowUpWithIdentifiers:?];

    [(SUSUIFollowUpPresenter *)v11 presentFollowUp:v12 error:0];
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&_foregroundBundleID, 0);
  }

  oslog = SUSUILog();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1875C(v22, "[SUSUIDDMController _presentAlert:]", location[0]);
    _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "%s: [DDM] [Install Alert] calling controller to present %{public}@", v22, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v4 = [(SUSUISoftwareUpdateController *)selfCopy->_controller presentAlert:location[0]];
  objc_storeStrong(location, 0);
  return v4;
}

- (void)_showDDMAlertNowOrInstallIfNecessary:(BOOL)necessary
{
  selfCopy = self;
  v38 = a2;
  necessaryCopy = necessary;
  dispatch_assert_queue_V2(self->_controllerClientQueue);
  objc_storeStrong(&selfCopy->_presentedAlert, 0);
  [(SUSUISoftwareUpdateController *)selfCopy->_controller _dismissAllAlerts];
  if (selfCopy->_shouldPauseAlert)
  {
    location = SUSUILog();
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      sub_186B0(v47, "[SUSUIDDMController _showDDMAlertNowOrInstallIfNecessary:]");
      _os_log_impl(&dword_0, location, type, "%s: [DDM] Can't show DDM alert since we are asked to pause", v47, 0xCu);
    }

    objc_storeStrong(&location, 0);
    return;
  }

  globalSettings = selfCopy->_globalSettings;
  v33 = 0;
  v31 = 0;
  v12 = 0;
  if (globalSettings)
  {
    enableGlobalNotifications = [(SUCoreDDMDeclarationGlobalSettings *)selfCopy->_globalSettings enableGlobalNotifications];
    v33 = 1;
    v12 = 0;
    if (enableGlobalNotifications)
    {
      enableGlobalNotifications2 = [(SUCoreDDMDeclarationGlobalSettings *)selfCopy->_globalSettings enableGlobalNotifications];
      v31 = 1;
      v12 = [enableGlobalNotifications2 BOOLValue] == 0;
    }
  }

  if (v31)
  {
  }

  if (v33)
  {
  }

  if (v12 && selfCopy->_schedulingIndex < 23)
  {
    v30 = SUSUILog();
    v29 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      sub_1A8A4(v46, "[SUSUIDDMController _showDDMAlertNowOrInstallIfNecessary:]", selfCopy->_schedulingIndex);
      _os_log_impl(&dword_0, v30, v29, "%s: [DDM] This notification (%ld) is disabled by global settings; alerts will start one hour before the deadline.", v46, 0x16u);
    }

    objc_storeStrong(&v30, 0);
    return;
  }

  if (![(SUSUIDDMController *)selfCopy currentReminderWindow])
  {
    oslog = SUSUILog();
    v26 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_186B0(v45, "[SUSUIDDMController _showDDMAlertNowOrInstallIfNecessary:]");
      _os_log_impl(&dword_0, oslog, v26, "%s: [DDM] Can't show DDM alert with style None. If you got here, there's probably a bug and you should open a radar to: SoftwareUpdateServicesUI | all", v45, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    return;
  }

  if (!selfCopy->_lastClassicAlertDate || (([(NSDate *)selfCopy->_lastClassicAlertDate timeIntervalSinceNow], v25 = v5, v5 >= 0.0) ? (v11 = v25) : (v11 = -v25), v24[1] = *&v11, v4 = v11, v11 >= 60.0))
  {
    descriptor = [(SUSUIDDMController *)selfCopy descriptor];
    if (!descriptor)
    {
      v21 = SUSUILog();
      v20 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        sub_1875C(v43, "[SUSUIDDMController _showDDMAlertNowOrInstallIfNecessary:]", selfCopy->_declaration);
        _os_log_impl(&dword_0, v21, v20, "%s: [DDM] Can't show DDM alert when there's no descriptor (from the SUDDMManager) for our %{public}@", v43, 0x16u);
      }

      objc_storeStrong(&v21, 0);
      v19 = 1;
      goto LABEL_51;
    }

    _download = [(SUSUISoftwareUpdateController *)selfCopy->_controller _download];
    v17 = SUSUILog();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      sub_1875C(v42, "[SUSUIDDMController _showDDMAlertNowOrInstallIfNecessary:]", selfCopy->_scheduledAlertInfo);
      _os_log_impl(&dword_0, v17, v16, "%s: [DDM] Current alert info: %{public}@", v42, 0x16u);
    }

    objc_storeStrong(&v17, 0);
    if (_download)
    {
      descriptor2 = [_download descriptor];
      v10 = [descriptor2 isEqualToDescriptor:descriptor];

      if ((v10 & 1) == 0)
      {
        v13 = SUSUILog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v6 = descriptor;
          declaration = selfCopy->_declaration;
          descriptor3 = [_download descriptor];
          sub_1B834(v40, "[SUSUIDDMController _showDDMAlertNowOrInstallIfNecessary:]", v6, declaration, descriptor3);
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%s: [DDM] WARNING WARNING WARNING!!! We found a descriptor\n%{public}@\nfor declaration\n%{public}@\nbut we downloaded something else\n%{public}@\nDon't show the alert...", v40, 0x2Au);
        }

        objc_storeStrong(&v13, 0);
        v19 = 1;
        goto LABEL_50;
      }

      if (necessaryCopy && [(SUSUIDDMController *)selfCopy _shouldTryToInstall])
      {
        [(SUSUIDDMController *)selfCopy _installNow];
      }

      else
      {
        [(SUSUIDDMController *)selfCopy _presentDDMInstallAlert];
      }
    }

    else
    {
      if (![(_DDMAlertSchedulingUnit *)selfCopy->_scheduledAlertInfo window])
      {
        v15 = SUSUILog();
        v14 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          sub_1875C(v41, "[SUSUIDDMController _showDDMAlertNowOrInstallIfNecessary:]", selfCopy->_scheduledAlertInfo);
          _os_log_impl(&dword_0, v15, v14, "%s: [DDM] Cannot show alert because of the invalid alert info %{public}@", v41, 0x16u);
        }

        objc_storeStrong(&v15, 0);
        v19 = 1;
        goto LABEL_50;
      }

      [(SUSUIDDMController *)selfCopy _presentDDMAvailableAlert];
    }

    v19 = 0;
LABEL_50:
    objc_storeStrong(&_download, 0);
LABEL_51:
    objc_storeStrong(&descriptor, 0);
    return;
  }

  v24[0] = SUSUILog();
  v23 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v24[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_186B0(v44, "[SUSUIDDMController _showDDMAlertNowOrInstallIfNecessary:]");
    _os_log_impl(&dword_0, v24[0], v23, "%s: [DDM] Another classic alert was just shown/will be shown shortly, skip this DDM alert... (This is very tricky and likely buggy)", v44, 0xCu);
  }

  objc_storeStrong(v24, 0);
}

- (void)_presentDDMAvailableAlert
{
  selfCopy = self;
  v7[1] = a2;
  v2 = [SUSUIDDMAvailableAlertItem alloc];
  descriptor = [(SUSUIDDMController *)selfCopy descriptor];
  v7[0] = [(SUSUIDDMAvailableAlertItem *)v2 initWithDescriptor:descriptor softwareUpdateController:selfCopy->_controller alertWindow:[(_DDMAlertSchedulingUnit *)selfCopy->_scheduledAlertInfo window]];

  location = SUSUILog();
  v5 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    sub_1875C(v10, "[SUSUIDDMController _presentDDMAvailableAlert]", v7[0]);
    _os_log_impl(&dword_0, location, v5, "%s: [DDM] [Available Alert] Presenting %{public}@", v10, 0x16u);
  }

  objc_storeStrong(&location, 0);
  if ([(SUSUIDDMController *)selfCopy _presentAlert:v7[0]])
  {
    objc_storeStrong(&selfCopy->_presentedAlert, v7[0]);
  }

  else
  {
    oslog = SUSUILog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_186B0(v9, "[SUSUIDDMController _presentDDMAvailableAlert]");
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "%s: [DDM] Failed to show DDM available alert.", v9, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(v7, 0);
}

- (void)_presentDDMInstallAlert
{
  selfCopy = self;
  v7[1] = a2;
  v2 = [SUSUISoftwareUpdateInstallAlertItem alloc];
  _download = [(SUSUISoftwareUpdateController *)selfCopy->_controller _download];
  v7[0] = [(SUSUISoftwareUpdateInstallAlertItem *)v2 initWithDownload:_download style:[(SUSUIDDMController *)selfCopy scheduledAlertStyle] softwareUpdateController:selfCopy->_controller tryTonightInstallOperationForecast:0 installOptions:?];

  location = SUSUILog();
  v5 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    sub_1875C(v10, "[SUSUIDDMController _presentDDMInstallAlert]", v7[0]);
    _os_log_impl(&dword_0, location, v5, "%s: [DDM] [Install Alert] Presenting %{public}@", v10, 0x16u);
  }

  objc_storeStrong(&location, 0);
  if ([(SUSUIDDMController *)selfCopy _presentAlert:v7[0]])
  {
    objc_storeStrong(&selfCopy->_presentedAlert, v7[0]);
  }

  else
  {
    oslog = SUSUILog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_186B0(v9, "[SUSUIDDMController _presentDDMInstallAlert]");
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "%s: [DDM] Failed to show DDM install alert.", v9, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(v7, 0);
}

- (void)notifyAlertWasPresented
{
  v2 = +[NSDate date];
  lastClassicAlertDate = self->_lastClassicAlertDate;
  self->_lastClassicAlertDate = v2;
}

- (unint64_t)decideAlertConflictWithAlertFlow:(unint64_t)flow
{
  selfCopy = self;
  v36 = a2;
  flowCopy = flow;
  v34 = SUSUILog();
  v33 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    log = v34;
    type = v33;
    v19 = SUSUIStringForInstallAlertFlow(flowCopy);
    v15 = v19;
    v32 = v15;
    v18 = SUSUIStringForInstallAlertInstallStyle([(SUSUIDDMController *)selfCopy _alertStyleForCurrentWindow]);
    v31 = v18;
    sub_186F0(v40, "[SUSUIDDMController decideAlertConflictWithAlertFlow:]", v15, v31);
    _os_log_impl(&dword_0, log, type, "%s: [DDM] Deciding conflict between classic flow (%{public}@) and DDM (%{public}@) alerts", v40, 0x20u);

    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v32, 0);
  }

  objc_storeStrong(&v34, 0);
  v30 = 0;
  descriptor = [(SUSUIDDMController *)selfCopy descriptor];
  v27 = 0;
  v25 = 0;
  v14 = 1;
  if (descriptor)
  {
    _download = [(SUSUISoftwareUpdateController *)selfCopy->_controller _download];
    v27 = 1;
    descriptor2 = [_download descriptor];
    v25 = 1;
    v14 = [descriptor isEqualToDescriptor:?] == 0;
  }

  if (v25)
  {
  }

  if (v27)
  {
  }

  if (v14)
  {
    v24 = SUSUILog();
    v23 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      _download2 = [(SUSUISoftwareUpdateController *)selfCopy->_controller _download];
      descriptor3 = [_download2 descriptor];
      humanReadableUpdateName = [descriptor3 humanReadableUpdateName];
      humanReadableUpdateName2 = [descriptor humanReadableUpdateName];
      sub_186F0(v39, "[SUSUIDDMController decideAlertConflictWithAlertFlow:]", humanReadableUpdateName, humanReadableUpdateName2);
      _os_log_impl(&dword_0, v24, v23, "%s: [DDM] Deciding no conflicts. Downloaded update (%{public}@) mismatches SUDDMManager-tracked update (%{public}@)", v39, 0x20u);
    }

    objc_storeStrong(&v24, 0);
    v30 = 0;
  }

  else if (selfCopy->_declaration && !selfCopy->_shouldPauseAlert && flowCopy)
  {
    if (flowCopy == 2 || flowCopy == 3 || flowCopy == 5)
    {
      v9 = (&dword_0 + 2);
    }

    else
    {
      if (flowCopy == 4)
      {
        v8 = 3;
      }

      else
      {
        v8 = flowCopy == 1;
      }

      v9 = v8;
    }

    oslog[1] = v9;
    if (v9 == (&dword_0 + 2))
    {
      v30 = 2;
    }

    else if ([(_DDMAlertSchedulingUnit *)selfCopy->_scheduledAlertInfo window]- 1 > &dword_0 + 1)
    {
      v30 = 2;
    }

    else
    {
      v30 = 1;
    }
  }

  else
  {
    v30 = 0;
  }

  oslog[0] = SUSUILog();
  v21 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = oslog[0];
    v6 = v21;
    v7 = [(SUSUIDDMController *)selfCopy stringFromRightsOwner:v30];
    v20 = v7;
    sub_1875C(v38, "[SUSUIDDMController decideAlertConflictWithAlertFlow:]", v20);
    _os_log_impl(&dword_0, v5, v6, "%s: [DDM] Owner decision: %{public}@", v38, 0x16u);

    objc_storeStrong(&v20, 0);
  }

  objc_storeStrong(oslog, 0);
  v4 = v30;
  objc_storeStrong(&descriptor, 0);
  return v4;
}

- (id)stringFromRightsOwner:(unint64_t)owner
{
  if (owner)
  {
    if (owner == 1)
    {
      v4 = @"DDM-Alert";
    }

    else if (owner == 2)
    {
      v4 = @"Classic-Alert";
    }
  }

  else
  {
    v4 = @"No-Conflicts";
  }

  return v4;
}

- (void)_disarm
{
  selfCopy = self;
  v5[1] = a2;
  dispatch_assert_queue_V2(self->_controllerClientQueue);
  if (selfCopy->_ddmTimer)
  {
    [(PCPersistentTimer *)selfCopy->_ddmTimer invalidate];
    objc_storeStrong(&selfCopy->_ddmTimer, 0);
  }

  objc_storeStrong(&selfCopy->_declaration, 0);
  selfCopy->_shouldPauseAlert = 0;
  objc_storeStrong(&selfCopy->_scheduledAlertInfo, 0);
  objc_storeStrong(&selfCopy->_scheduling, 0);
  selfCopy->_pastDueNotificationCnt = 0;
  v5[0] = +[SUSUIFollowUpPresenter sharedInstance];
  v2 = v5[0];
  v4 = +[SUSUIFollowUpDDMUpdate uniqueIdentifier];
  v7 = v4;
  v3 = [NSArray arrayWithObjects:&v7 count:1];
  [v2 clearFollowUpWithIdentifiers:?];

  objc_storeStrong(v5, 0);
}

- (id)alertBodyLocallizedStrWithUpdateName:(id)name
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v9 = 0;
  alertMsgFormat = [(_DDMAlertSchedulingUnit *)selfCopy->_scheduledAlertInfo alertMsgFormat];

  if (alertMsgFormat)
  {
    alertMsgFormat2 = [(_DDMAlertSchedulingUnit *)selfCopy->_scheduledAlertInfo alertMsgFormat];
    v3 = [NSString stringWithValidatedFormat:"stringWithValidatedFormat:validFormatSpecifiers:error:" validFormatSpecifiers:location[0] error:?];
    v4 = v9;
    v9 = v3;
  }

  else
  {
    objc_storeStrong(&v9, @"There is no alert message to show. This is a bug, please file a radar ;-"));
  }

  v6 = v9;
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (BOOL)_isUpdateRelevant:(id)relevant
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, relevant);
  if (([(SUCoreDDMDeclaration *)selfCopy->_declaration isValidDeclaration]& 1) != 0)
  {
    if (location[0])
    {
      buildVersionString = [(SUCoreDDMDeclaration *)selfCopy->_declaration buildVersionString];

      if (buildVersionString)
      {
        buildVersionString2 = [(SUCoreDDMDeclaration *)selfCopy->_declaration buildVersionString];
        productBuildVersion = [location[0] productBuildVersion];
        v11 = [buildVersionString2 isEqualToString:?] & 1;
      }

      else
      {
        versionString = [(SUCoreDDMDeclaration *)selfCopy->_declaration versionString];
        productVersion = [location[0] productVersion];
        v11 = [versionString isEqualToString:?] & 1;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 1;
  }

  objc_storeStrong(location, 0);
  return v11 & 1;
}

- (void)installDidStart:(id)start
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, start);
  queue = selfCopy->_controllerClientQueue;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1CA44;
  v8 = &unk_5D008;
  v9 = location[0];
  v10 = selfCopy;
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)installDidFinish:(id)finish
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, finish);
  queue = selfCopy->_controllerClientQueue;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1CD1C;
  v8 = &unk_5D008;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)installDidFail:(id)fail
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, fail);
  oslog = SUSUILog();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    humanReadableUpdateName = [location[0] humanReadableUpdateName];
    sub_1875C(v7, "[SUSUIDDMController installDidFail:]", humanReadableUpdateName);
    _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "%s: [DDM] Failed to install %{public}@; resume showing alert...", v7, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  selfCopy->_shouldPauseAlert = 0;
  objc_storeStrong(location, 0);
}

- (void)showDDMAlert:(int64_t)alert install:(BOOL)install
{
  selfCopy = self;
  v14 = a2;
  alertCopy = alert;
  installCopy = install;
  queue = self->_controllerClientQueue;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1D128;
  v9 = &unk_5F540;
  v10[0] = self;
  v10[1] = alertCopy;
  v11 = installCopy;
  dispatch_async(queue, &v5);
  objc_storeStrong(v10, 0);
}

- (void)showNextDDMAlert:(BOOL)alert
{
  selfCopy = self;
  v12 = a2;
  alertCopy = alert;
  queue = self->_controllerClientQueue;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1D538;
  v8 = &unk_5F568;
  selfCopy2 = self;
  v10 = alertCopy;
  dispatch_async(queue, &v4);
  objc_storeStrong(&selfCopy2, 0);
}

- (void)installNow
{
  v8[2] = self;
  v8[1] = a2;
  queue = self->_controllerClientQueue;
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1D65C;
  v7 = &unk_5CCB0;
  v8[0] = self;
  dispatch_async(queue, &v3);
  objc_storeStrong(v8, 0);
}

@end