@interface SUSUISoftwareUpdateStatePersistence
- (SUSUISoftwareUpdateStatePersistence)initWithDefaults:(id)defaults;
- (id)description;
- (void)_load;
- (void)save;
- (void)setNextAlertRepopStrategy:(unint64_t)strategy withNextAlertDate:(id)date;
@end

@implementation SUSUISoftwareUpdateStatePersistence

- (SUSUISoftwareUpdateStatePersistence)initWithDefaults:(id)defaults
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, defaults);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = SUSUISoftwareUpdateStatePersistence;
  v6 = [(SUSUISoftwareUpdateStatePersistence *)&v7 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeStrong(&selfCopy->_nextAlertScheduledDate, 0);
    objc_storeStrong(&selfCopy->_installPolicy, 0);
    selfCopy->_remindMeLaterCountForCurrentUpdate = 0;
    selfCopy->_remindMeLaterCountSinceRequiringInstallation = 0;
    selfCopy->_alertFlow = 0;
    selfCopy->_downloadWasQueuedRemotely = 0;
    objc_storeStrong(&selfCopy->_defaults, location[0]);
    selfCopy->_autoUpdateRetryCount = 0;
    [(SUSUISoftwareUpdateStatePersistence *)selfCopy _load];
  }

  v5 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)setNextAlertRepopStrategy:(unint64_t)strategy withNextAlertDate:(id)date
{
  selfCopy = self;
  v6 = a2;
  strategyCopy = strategy;
  location = 0;
  objc_storeStrong(&location, date);
  [(SUSUISoftwareUpdateStatePersistence *)selfCopy _setNextAlertDate:location];
  [(SUSUISoftwareUpdateStatePersistence *)selfCopy _setNextAlertRepopStrategy:strategyCopy];
  objc_storeStrong(&location, 0);
}

- (id)description
{
  selfCopy = self;
  v17[1] = a2;
  v17[0] = [BSDescriptionBuilder builderWithObject:self];
  if (selfCopy->_nextAlertScheduledDate)
  {
    v16 = [SUUtility prettyPrintDate:selfCopy->_nextAlertScheduledDate];
    v2 = [v17[0] appendObject:? withName:?];
  }

  v11 = v17[0];
  v12 = SUSUIStringForInstallAlertRepopStrategy(selfCopy->_nextAlertRepopStrategy);
  v3 = [v11 appendObject:? withName:?];

  v13 = v17[0];
  v14 = SUSUIStringForInstallAlertFlow(selfCopy->_alertFlow);
  v4 = [v13 appendObject:? withName:?];

  v5 = [v17[0] appendBool:selfCopy->_downloadWasQueuedRemotely withName:@"DownloadWasQueuedRemotely"];
  v6 = [v17[0] appendInteger:selfCopy->_remindMeLaterCountForCurrentUpdate withName:@"RemindMeLaterCountForCurrentUpdate"];
  v7 = [v17[0] appendInteger:selfCopy->_remindMeLaterCountSinceRequiringInstallation withName:@"RemindMeLaterCountSinceRequiringUpdates"];
  v8 = [v17[0] appendObject:selfCopy->_installPolicy withName:@"InstallPolicy"];
  v9 = [v17[0] appendInteger:selfCopy->_autoUpdateRetryCount withName:@"AutoUpdateRetryCount"];
  build = [v17[0] build];
  objc_storeStrong(v17, 0);

  return build;
}

- (void)save
{
  selfCopy = self;
  v14[1] = a2;
  v14[0] = +[NSMutableDictionary dictionary];
  v6 = [NSNumber numberWithBool:selfCopy->_downloadWasQueuedRemotely];
  [v14[0] setObject:? forKey:?];

  v7 = [NSNumber numberWithUnsignedInteger:selfCopy->_alertFlow];
  [v14[0] setObject:? forKey:?];

  v8 = [NSNumber numberWithInteger:selfCopy->_remindMeLaterCountForCurrentUpdate];
  [v14[0] setObject:? forKey:?];

  v9 = [NSNumber numberWithInteger:selfCopy->_remindMeLaterCountSinceRequiringInstallation];
  [v14[0] setObject:? forKey:?];

  if (selfCopy->_nextAlertScheduledDate)
  {
    [v14[0] setObject:selfCopy->_nextAlertScheduledDate forKey:@"SUSUISoftwareUpdateAlertRepopDate"];
  }

  v4 = [NSNumber numberWithUnsignedInteger:selfCopy->_nextAlertRepopStrategy];
  [v14[0] setObject:? forKey:?];

  v5 = [NSNumber numberWithInteger:selfCopy->_autoUpdateRetryCount];
  [v14[0] setObject:? forKey:?];

  v13 = [NSKeyedArchiver archivedDataWithRootObject:selfCopy->_installPolicy];
  if (v13)
  {
    [v14[0] setObject:v13 forKey:@"SUSUISoftwareUpdateStateInstallPolicyKey"];
  }

  [(SUSUISoftwareUpdateDefaults *)selfCopy->_defaults setSoftwareUpdateState:v14[0]];
  location = SUSUILog();
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    log = location;
    type = v11;
    sub_2544(v10);
    _os_log_impl(&dword_0, log, type, "[Persistence] Saved persistence state.", v10, 2u);
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(v14, 0);
}

- (void)_load
{
  selfCopy = self;
  v12[1] = a2;
  v12[0] = [(SUSUISoftwareUpdateDefaults *)self->_defaults softwareUpdateState];
  v11 = [v12[0] bs_safeObjectForKey:@"SUSUISoftwareUpdateAlertFlow" ofType:objc_opt_class()];
  if (v11)
  {
    unsignedIntegerValue = [v11 unsignedIntegerValue];
    if (unsignedIntegerValue > 4)
    {
      [(SUSUISoftwareUpdateStatePersistence *)selfCopy setAlertFlow:0];
    }

    else
    {
      [(SUSUISoftwareUpdateStatePersistence *)selfCopy setAlertFlow:unsignedIntegerValue];
    }
  }

  v9 = [v12[0] bs_safeObjectForKey:@"SUSUISoftwareUpdateAlertRepopDate" ofType:objc_opt_class()];
  if (v9)
  {
    [(SUSUISoftwareUpdateStatePersistence *)selfCopy _setNextAlertDate:v9];
  }

  v8 = [v12[0] bs_safeObjectForKey:@"SUSUISoftwareUpdateAlertRepopStrategy" ofType:objc_opt_class()];
  if (v8)
  {
    -[SUSUISoftwareUpdateStatePersistence _setNextAlertRepopStrategy:](selfCopy, "_setNextAlertRepopStrategy:", [v8 unsignedIntegerValue]);
  }

  else
  {
    [(SUSUISoftwareUpdateStatePersistence *)selfCopy _setNextAlertRepopStrategy:0];
  }

  v7 = [v12[0] bs_safeObjectForKey:@"SUSUISoftwareUpdateDownloadWasQueuedRemotely" ofType:objc_opt_class()];
  if (v7)
  {
    -[SUSUISoftwareUpdateStatePersistence setDownloadWasQueuedRemotely:](selfCopy, "setDownloadWasQueuedRemotely:", [v7 BOOLValue]);
  }

  v6 = [v12[0] bs_safeObjectForKey:@"SUSUISoftwareUpdateStateAlertRemindMeLaterCount" ofType:objc_opt_class()];
  if (v6)
  {
    -[SUSUISoftwareUpdateStatePersistence setRemindMeLaterCountForCurrentUpdate:](selfCopy, "setRemindMeLaterCountForCurrentUpdate:", [v6 integerValue]);
  }

  v5 = [v12[0] bs_safeObjectForKey:@"SUSUISoftwareUpdateStateInstallPolicyKey" ofType:objc_opt_class()];
  if (v5)
  {
    location = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUSUISoftwareUpdateStatePersistence *)selfCopy setCurrentInstallationPolicy:location];
    }

    objc_storeStrong(&location, 0);
  }

  v3 = [v12[0] bs_safeObjectForKey:@"SUSUISoftwareUpdateStateAlertRemindMeLaterCountSinceRequiringInstallation" ofType:objc_opt_class()];
  if (v3)
  {
    -[SUSUISoftwareUpdateStatePersistence setRemindMeLaterCountSinceRequiringInstallation:](selfCopy, "setRemindMeLaterCountSinceRequiringInstallation:", [v3 integerValue]);
  }

  v2 = [v12[0] bs_safeObjectForKey:@"SUSUISoftwareUpdateStateAlertAutoUpdateRetryCount" ofType:objc_opt_class()];
  if (v2)
  {
    -[SUSUISoftwareUpdateStatePersistence setAutoUpdateRetryCount:](selfCopy, "setAutoUpdateRetryCount:", [v2 integerValue]);
  }

  objc_storeStrong(&v2, 0);
  objc_storeStrong(&v3, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(v12, 0);
}

@end