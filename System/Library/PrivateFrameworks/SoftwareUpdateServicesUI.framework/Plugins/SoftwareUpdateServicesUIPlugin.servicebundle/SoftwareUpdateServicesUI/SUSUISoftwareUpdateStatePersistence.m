@interface SUSUISoftwareUpdateStatePersistence
- (SUSUISoftwareUpdateStatePersistence)initWithDefaults:(id)a3;
- (id)description;
- (void)_load;
- (void)save;
- (void)setNextAlertRepopStrategy:(unint64_t)a3 withNextAlertDate:(id)a4;
@end

@implementation SUSUISoftwareUpdateStatePersistence

- (SUSUISoftwareUpdateStatePersistence)initWithDefaults:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = SUSUISoftwareUpdateStatePersistence;
  v6 = [(SUSUISoftwareUpdateStatePersistence *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    objc_storeStrong(&v9->_nextAlertScheduledDate, 0);
    objc_storeStrong(&v9->_installPolicy, 0);
    v9->_remindMeLaterCountForCurrentUpdate = 0;
    v9->_remindMeLaterCountSinceRequiringInstallation = 0;
    v9->_alertFlow = 0;
    v9->_downloadWasQueuedRemotely = 0;
    objc_storeStrong(&v9->_defaults, location[0]);
    v9->_autoUpdateRetryCount = 0;
    [(SUSUISoftwareUpdateStatePersistence *)v9 _load];
  }

  v5 = v9;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (void)setNextAlertRepopStrategy:(unint64_t)a3 withNextAlertDate:(id)a4
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  [(SUSUISoftwareUpdateStatePersistence *)v7 _setNextAlertDate:location];
  [(SUSUISoftwareUpdateStatePersistence *)v7 _setNextAlertRepopStrategy:v5];
  objc_storeStrong(&location, 0);
}

- (id)description
{
  v18 = self;
  v17[1] = a2;
  v17[0] = [BSDescriptionBuilder builderWithObject:self];
  if (v18->_nextAlertScheduledDate)
  {
    v16 = [SUUtility prettyPrintDate:v18->_nextAlertScheduledDate];
    v2 = [v17[0] appendObject:? withName:?];
  }

  v11 = v17[0];
  v12 = SUSUIStringForInstallAlertRepopStrategy(v18->_nextAlertRepopStrategy);
  v3 = [v11 appendObject:? withName:?];

  v13 = v17[0];
  v14 = SUSUIStringForInstallAlertFlow(v18->_alertFlow);
  v4 = [v13 appendObject:? withName:?];

  v5 = [v17[0] appendBool:v18->_downloadWasQueuedRemotely withName:@"DownloadWasQueuedRemotely"];
  v6 = [v17[0] appendInteger:v18->_remindMeLaterCountForCurrentUpdate withName:@"RemindMeLaterCountForCurrentUpdate"];
  v7 = [v17[0] appendInteger:v18->_remindMeLaterCountSinceRequiringInstallation withName:@"RemindMeLaterCountSinceRequiringUpdates"];
  v8 = [v17[0] appendObject:v18->_installPolicy withName:@"InstallPolicy"];
  v9 = [v17[0] appendInteger:v18->_autoUpdateRetryCount withName:@"AutoUpdateRetryCount"];
  v15 = [v17[0] build];
  objc_storeStrong(v17, 0);

  return v15;
}

- (void)save
{
  v15 = self;
  v14[1] = a2;
  v14[0] = +[NSMutableDictionary dictionary];
  v6 = [NSNumber numberWithBool:v15->_downloadWasQueuedRemotely];
  [v14[0] setObject:? forKey:?];

  v7 = [NSNumber numberWithUnsignedInteger:v15->_alertFlow];
  [v14[0] setObject:? forKey:?];

  v8 = [NSNumber numberWithInteger:v15->_remindMeLaterCountForCurrentUpdate];
  [v14[0] setObject:? forKey:?];

  v9 = [NSNumber numberWithInteger:v15->_remindMeLaterCountSinceRequiringInstallation];
  [v14[0] setObject:? forKey:?];

  if (v15->_nextAlertScheduledDate)
  {
    [v14[0] setObject:v15->_nextAlertScheduledDate forKey:@"SUSUISoftwareUpdateAlertRepopDate"];
  }

  v4 = [NSNumber numberWithUnsignedInteger:v15->_nextAlertRepopStrategy];
  [v14[0] setObject:? forKey:?];

  v5 = [NSNumber numberWithInteger:v15->_autoUpdateRetryCount];
  [v14[0] setObject:? forKey:?];

  v13 = [NSKeyedArchiver archivedDataWithRootObject:v15->_installPolicy];
  if (v13)
  {
    [v14[0] setObject:v13 forKey:@"SUSUISoftwareUpdateStateInstallPolicyKey"];
  }

  [(SUSUISoftwareUpdateDefaults *)v15->_defaults setSoftwareUpdateState:v14[0]];
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
  v13 = self;
  v12[1] = a2;
  v12[0] = [(SUSUISoftwareUpdateDefaults *)self->_defaults softwareUpdateState];
  v11 = [v12[0] bs_safeObjectForKey:@"SUSUISoftwareUpdateAlertFlow" ofType:objc_opt_class()];
  if (v11)
  {
    v10 = [v11 unsignedIntegerValue];
    if (v10 > 4)
    {
      [(SUSUISoftwareUpdateStatePersistence *)v13 setAlertFlow:0];
    }

    else
    {
      [(SUSUISoftwareUpdateStatePersistence *)v13 setAlertFlow:v10];
    }
  }

  v9 = [v12[0] bs_safeObjectForKey:@"SUSUISoftwareUpdateAlertRepopDate" ofType:objc_opt_class()];
  if (v9)
  {
    [(SUSUISoftwareUpdateStatePersistence *)v13 _setNextAlertDate:v9];
  }

  v8 = [v12[0] bs_safeObjectForKey:@"SUSUISoftwareUpdateAlertRepopStrategy" ofType:objc_opt_class()];
  if (v8)
  {
    -[SUSUISoftwareUpdateStatePersistence _setNextAlertRepopStrategy:](v13, "_setNextAlertRepopStrategy:", [v8 unsignedIntegerValue]);
  }

  else
  {
    [(SUSUISoftwareUpdateStatePersistence *)v13 _setNextAlertRepopStrategy:0];
  }

  v7 = [v12[0] bs_safeObjectForKey:@"SUSUISoftwareUpdateDownloadWasQueuedRemotely" ofType:objc_opt_class()];
  if (v7)
  {
    -[SUSUISoftwareUpdateStatePersistence setDownloadWasQueuedRemotely:](v13, "setDownloadWasQueuedRemotely:", [v7 BOOLValue]);
  }

  v6 = [v12[0] bs_safeObjectForKey:@"SUSUISoftwareUpdateStateAlertRemindMeLaterCount" ofType:objc_opt_class()];
  if (v6)
  {
    -[SUSUISoftwareUpdateStatePersistence setRemindMeLaterCountForCurrentUpdate:](v13, "setRemindMeLaterCountForCurrentUpdate:", [v6 integerValue]);
  }

  v5 = [v12[0] bs_safeObjectForKey:@"SUSUISoftwareUpdateStateInstallPolicyKey" ofType:objc_opt_class()];
  if (v5)
  {
    location = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUSUISoftwareUpdateStatePersistence *)v13 setCurrentInstallationPolicy:location];
    }

    objc_storeStrong(&location, 0);
  }

  v3 = [v12[0] bs_safeObjectForKey:@"SUSUISoftwareUpdateStateAlertRemindMeLaterCountSinceRequiringInstallation" ofType:objc_opt_class()];
  if (v3)
  {
    -[SUSUISoftwareUpdateStatePersistence setRemindMeLaterCountSinceRequiringInstallation:](v13, "setRemindMeLaterCountSinceRequiringInstallation:", [v3 integerValue]);
  }

  v2 = [v12[0] bs_safeObjectForKey:@"SUSUISoftwareUpdateStateAlertAutoUpdateRetryCount" ofType:objc_opt_class()];
  if (v2)
  {
    -[SUSUISoftwareUpdateStatePersistence setAutoUpdateRetryCount:](v13, "setAutoUpdateRetryCount:", [v2 integerValue]);
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