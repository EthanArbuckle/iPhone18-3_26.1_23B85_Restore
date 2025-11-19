@interface SUSUISoftwareUpdateAlertModel
- (BOOL)autoUpdateEnabled;
- (SUSUISoftwareUpdateAlertModel)initWithDefaults:(id)a3;
- (SUSUISoftwareUpdateAlertModel)initWithDownload:(id)a3 autoInstallOperation:(id)a4 defaults:(id)a5;
- (SUSUISoftwareUpdateAlertModelDelegate)delegate;
- (id)_initWithDownload:(id)a3 autoInstallOperation:(id)a4 defaults:(id)a5 persistence:(id)a6;
- (unint64_t)_initialInstallAlertFlowFromDownload;
- (void)_rationalizePersistenceIntoModelWithDownload:(id)a3 autoInstallOperation:(id)a4;
- (void)_setAutoUpdateRetryCount:(int64_t)a3;
- (void)_setDownloadWasQueuedRemotely:(BOOL)a3;
- (void)_setInstallAlertFlow:(unint64_t)a3 forReason:(id)a4;
- (void)_setPersistedInstallAlertRepopStrategy:(unint64_t)a3 withFireDate:(id)a4;
- (void)_setRemindMeLaterCountForCurrentUpdate:(int64_t)a3;
- (void)_setRemindMeLaterCountSinceRequiringInstallation:(int64_t)a3;
- (void)_setUpdateToInstall:(id)a3;
- (void)autoInstallOperationEnded:(unint64_t)a3;
- (void)autoUpdateExpired;
- (void)countdownAlertPresentationPreventedForReasons:(id)a3;
- (void)didFinishDownloading:(id)a3;
- (void)resetTransientDownloadState;
- (void)setCurrentInstallationPolicy:(id)a3 forReason:(id)a4;
- (void)setPersistedInstallAlertRepopStrategy:(unint64_t)a3 withFireDate:(id)a4;
- (void)userSelectedRemindMeLater;
- (void)willInstallWithType:(unint64_t)a3;
@end

@implementation SUSUISoftwareUpdateAlertModel

- (SUSUISoftwareUpdateAlertModel)initWithDefaults:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v7;
  v7 = 0;
  v7 = [(SUSUISoftwareUpdateAlertModel *)v3 initWithDownload:0 autoInstallOperation:0 defaults:location[0]];
  v5 = v7;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v7, 0);
  return v5;
}

- (SUSUISoftwareUpdateAlertModel)initWithDownload:(id)a3 autoInstallOperation:(id)a4 defaults:(id)a5
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  v12 = v18;
  v9 = location[0];
  v10 = v16;
  v11 = v15;
  v5 = [SUSUISoftwareUpdateStatePersistence alloc];
  v13 = [(SUSUISoftwareUpdateStatePersistence *)v5 initWithDefaults:v15];
  v18 = 0;
  v18 = [(SUSUISoftwareUpdateAlertModel *)v12 _initWithDownload:v9 autoInstallOperation:v10 defaults:v11 persistence:?];
  v14 = v18;

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v18, 0);
  return v14;
}

- (id)_initWithDownload:(id)a3 autoInstallOperation:(id)a4 defaults:(id)a5 persistence:(id)a6
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = 0;
  objc_storeStrong(&v18, a5);
  v17 = 0;
  objc_storeStrong(&v17, a6);
  v6 = v21;
  v21 = 0;
  v16.receiver = v6;
  v16.super_class = SUSUISoftwareUpdateAlertModel;
  v12 = [(SUSUISoftwareUpdateAlertModel *)&v16 init];
  v21 = v12;
  objc_storeStrong(&v21, v12);
  if (v12)
  {
    objc_storeStrong(&v21->_persistence, v17);
    v15 = SUSUILog();
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      sub_4B94(v23, v21->_persistence);
      _os_log_impl(&dword_0, v15, v14, "Software update persistence initialized: %{public}@", v23, 0xCu);
    }

    objc_storeStrong(&v15, 0);
    [(SUSUISoftwareUpdateAlertModel *)v21 _rationalizePersistenceIntoModelWithDownload:location[0] autoInstallOperation:v19];
    oslog = SUSUILog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_4B94(v22, v21->_persistence);
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "Software update persistence rationalized into model: %{public}@", v22, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  v8 = v21;
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v21, 0);
  return v8;
}

- (BOOL)autoUpdateEnabled
{
  v3 = [(SUSUISoftwareUpdateStatePersistence *)self->_persistence currentInstallationPolicy];
  v4 = [(SUInstallPolicy *)v3 autoUpdateEnabled];

  return v4;
}

- (void)setCurrentInstallationPolicy:(id)a3 forReason:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = [(SUSUISoftwareUpdateAlertModel *)v14 currentInstallationPolicy];
  v8 = 0;
  if (location[0])
  {
    v4 = location[0];
  }

  else
  {
    v9 = objc_alloc_init(SUInstallPolicy);
    v8 = 1;
    v4 = v9;
  }

  v10 = v4;
  if (v8)
  {
  }

  if (([v11 isEqual:v10] & 1) == 0)
  {
    oslog = SUSUILog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_54AC(v15, v12, v10);
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "[Persistence] Install policy changed (reason: %{public}@) to: %{public}@", v15, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    [(SUSUISoftwareUpdateStatePersistence *)v14->_persistence setCurrentInstallationPolicy:v10];
    if ([v10 type] != &dword_0 + 1)
    {
      [(SUSUISoftwareUpdateAlertModel *)v14 _setRemindMeLaterCountSinceRequiringInstallation:0];
    }

    v5 = [v10 autoUpdateEnabled];
    if (v5 != [v11 autoUpdateEnabled])
    {
      if ([v10 autoUpdateEnabled])
      {
        [(SUSUISoftwareUpdateAlertModel *)v14 _setInstallAlertFlow:5 forReason:@"install policy has auto update enabled"];
      }

      else
      {
        [(SUSUISoftwareUpdateAlertModel *)v14 _setInstallAlertFlow:1 forReason:@"Auto Update disabled"];
      }
    }

    [(SUSUISoftwareUpdateStatePersistence *)v14->_persistence save];
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)resetTransientDownloadState
{
  [(SUSUISoftwareUpdateAlertModel *)self _setUpdateToInstall:?];
  [(SUSUISoftwareUpdateAlertModel *)self _setDownloadWasQueuedRemotely:0];
  [SUSUISoftwareUpdateAlertModel _setInstallAlertFlow:"_setInstallAlertFlow:forReason:" forReason:?];
  [(SUSUISoftwareUpdateAlertModel *)self _setPersistedInstallAlertRepopStrategy:0 withFireDate:0];
  [(SUSUISoftwareUpdateAlertModel *)self _setRemindMeLaterCountForCurrentUpdate:0];
  [(SUSUISoftwareUpdateAlertModel *)self _setAutoUpdateRetryCount:0];
  v2 = [(SUSUISoftwareUpdateAlertModel *)self currentInstallationPolicy];
  v3 = [(SUInstallPolicy *)v2 type];

  if (v3 != &dword_0 + 1)
  {
    [(SUSUISoftwareUpdateAlertModel *)self _setRemindMeLaterCountSinceRequiringInstallation:0];
  }
}

- (void)userSelectedRemindMeLater
{
  if (self->_updateToInstall)
  {
    [(SUSUISoftwareUpdateAlertModel *)self _setRemindMeLaterCountForCurrentUpdate:[(SUSUISoftwareUpdateAlertModel *)self remindMeLaterCountForCurrentUpdate]+ 1];
    v3 = [(SUSUISoftwareUpdateAlertModel *)self currentInstallationPolicy];
    v4 = [(SUInstallPolicy *)v3 type];

    if (v4 == &dword_0 + 1)
    {
      [(SUSUISoftwareUpdateAlertModel *)self _setRemindMeLaterCountSinceRequiringInstallation:[(SUSUISoftwareUpdateAlertModel *)self remindMeLaterCountSinceRequiringInstallation]+ 1];
    }

    v2 = [(SUSUISoftwareUpdateStatePersistence *)self->_persistence alertFlow];
    if (v2 && (v2 - 1 <= 2 || v2 == 5))
    {
      [(SUSUISoftwareUpdateAlertModel *)self _setInstallAlertFlow:4 forReason:@"User selected 'Remind me later'", v2];
    }
  }
}

- (void)autoInstallOperationEnded:(unint64_t)a3
{
  v3 = [(SUSUISoftwareUpdateStatePersistence *)self->_persistence alertFlow];
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      [(SUSUISoftwareUpdateAlertModel *)self _setInstallAlertFlow:4 forReason:@"Auto install operation was cancelled or expired."];
    }

    else if (v3 == 5)
    {
      if (a3 == 1)
      {
        if ([(SUSUISoftwareUpdateAlertModel *)self autoUpdateRetryCount]>= 30)
        {
          [(SUSUISoftwareUpdateAlertModel *)self _setInstallAlertFlow:4 forReason:@"Auto install operation expired 7 days in a row."];
        }

        else
        {
          [(SUSUISoftwareUpdateAlertModel *)self _setInstallAlertFlow:5 forReason:@"Auto install operation expired."];
        }
      }

      else if (!a3)
      {
        [(SUSUISoftwareUpdateAlertModel *)self _setInstallAlertFlow:4 forReason:@"Auto install operation was cancelled"];
      }
    }
  }
}

- (void)autoUpdateExpired
{
  if ([(SUSUISoftwareUpdateStatePersistence *)self->_persistence alertFlow]== &dword_4 + 1)
  {
    [(SUSUISoftwareUpdateAlertModel *)self _setAutoUpdateRetryCount:[(SUSUISoftwareUpdateAlertModel *)self autoUpdateRetryCount]+ 1];
  }

  else
  {
    [(SUSUISoftwareUpdateAlertModel *)self _setAutoUpdateRetryCount:0];
  }
}

- (void)didFinishDownloading:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SUSUISoftwareUpdateAlertModel *)v4 _setUpdateToInstall:location[0]];
  [(SUSUISoftwareUpdateAlertModel *)v4 _setInstallAlertFlow:[(SUSUISoftwareUpdateAlertModel *)v4 _initialInstallAlertFlowFromDownload] forReason:@"Download completed"];
  objc_storeStrong(location, 0);
}

- (void)willInstallWithType:(unint64_t)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      [(SUSUISoftwareUpdateAlertModel *)self _setInstallAlertFlow:3 forReason:@"Install tonight chosen"];
    }

    else if (a3 == 2)
    {
      [(SUSUISoftwareUpdateAlertModel *)self _setInstallAlertFlow:5 forReason:@"Auto update enabled"];
    }
  }

  else
  {
    [(SUSUISoftwareUpdateAlertModel *)self _setInstallAlertFlow:4 forReason:@"Install now chosen"];
  }
}

- (void)setPersistedInstallAlertRepopStrategy:(unint64_t)a3 withFireDate:(id)a4
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  [(SUSUISoftwareUpdateAlertModel *)v7 _setPersistedInstallAlertRepopStrategy:v5 withFireDate:location];
  objc_storeStrong(&location, 0);
}

- (void)countdownAlertPresentationPreventedForReasons:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(SUSUISoftwareUpdateStatePersistence *)v5->_persistence alertFlow]== &dword_0 + 2)
  {
    v3 = [NSString stringWithFormat:@"Installation countdown alert prevented for reason %@", location[0]];
    [(SUSUISoftwareUpdateAlertModel *)v5 _setInstallAlertFlow:1 forReason:v3];
    objc_storeStrong(&v3, 0);
  }

  objc_storeStrong(location, 0);
}

- (unint64_t)_initialInstallAlertFlowFromDownload
{
  v21 = self;
  v20 = a2;
  v10 = [(SUDownload *)self->_updateToInstall metadata];
  v11 = [v10 isAutoDownload];

  v19 = v11;
  if ((v11 & 1) != 0 && [(SUSUISoftwareUpdateAlertModel *)v21 autoUpdateEnabled])
  {
    return 5;
  }

  v18 = [(SUSUISoftwareUpdateStatePersistence *)v21->_persistence downloadWasQueuedRemotely];
  v6 = [(SUDownload *)v21->_updateToInstall metadata];
  v7 = [v6 isDownloadOnly];

  v17 = v7;
  v8 = [(SUDownload *)v21->_updateToInstall downloadOptions];
  v9 = [v8 userUpdateTonight];

  v16 = v9;
  v15 = 0;
  if (v9)
  {
    v15 = 3;
  }

  else if (v19 & 1) != 0 || (v17 & 1) != 0 || (v18)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  v14 = SUSUILog();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    log = v14;
    type = v13;
    v5 = SUSUIStringForInstallAlertFlow(v15);
    v12 = v5;
    sub_3B584(v23, "[SUSUISoftwareUpdateAlertModel _initialInstallAlertFlowFromDownload]", v19 & 1, v18 & 1, v17 & 1, v16 & 1, v12);
    _os_log_impl(&dword_0, log, type, "%s identified autoDownload=%d, queuedRemotely=%d, downloadOnly=%d, userUpdateTonight=%d, returning flow: %@", v23, 0x2Eu);

    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  return v15;
}

- (void)_setInstallAlertFlow:(unint64_t)a3 forReason:(id)a4
{
  v18 = self;
  v17 = a2;
  v16 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v14 = [(SUSUISoftwareUpdateStatePersistence *)v18->_persistence alertFlow];
  if (v14 != v16)
  {
    v13 = SUSUILog();
    v12 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      log = v13;
      type = v12;
      v9 = SUSUIStringForInstallAlertFlow(v14);
      v5 = v9;
      v11 = v5;
      v8 = SUSUIStringForInstallAlertFlow(v16);
      v10 = v8;
      sub_3B848(v19, v5, v10, location);
      _os_log_impl(&dword_0, log, type, "[Persistence] Install alert flow changed from: %{public}@ to: %{public}@ for reason: %{public}@", v19, 0x20u);

      objc_storeStrong(&v10, 0);
      objc_storeStrong(&v11, 0);
    }

    objc_storeStrong(&v13, 0);
    [(SUSUISoftwareUpdateStatePersistence *)v18->_persistence setAlertFlow:v16];
    [(SUSUISoftwareUpdateStatePersistence *)v18->_persistence save];
    WeakRetained = objc_loadWeakRetained(&v18->_delegate);
    [WeakRetained alertModel:v18 alertFlowDidChangeFrom:v14 to:v16];
  }

  objc_storeStrong(&location, 0);
}

- (void)_setPersistedInstallAlertRepopStrategy:(unint64_t)a3 withFireDate:(id)a4
{
  v21 = self;
  v20 = a2;
  v19 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v4 = [(SUSUISoftwareUpdateStatePersistence *)v21->_persistence nextAlertDate];
  v11 = v4 != location;

  v17 = v11;
  v5 = [(SUSUISoftwareUpdateStatePersistence *)v21->_persistence nextAlertRepopStrategy];
  v16 = v5 != v19;
  if (v11 || v16)
  {
    v15 = SUSUILog();
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      log = v15;
      type = v14;
      v10 = [SUUtility prettyPrintDate:location];
      v6 = v10;
      v13 = v6;
      v9 = SUSUIStringForInstallAlertRepopStrategy(v19);
      v12 = v9;
      sub_54AC(v22, v6, v12);
      _os_log_impl(&dword_0, log, type, "[Persistence] Next install alert date changed to: %{public}@ for repop strategy: %{public}@", v22, 0x16u);

      objc_storeStrong(&v12, 0);
      objc_storeStrong(&v13, 0);
    }

    objc_storeStrong(&v15, 0);
    [(SUSUISoftwareUpdateStatePersistence *)v21->_persistence setNextAlertRepopStrategy:v19 withNextAlertDate:location];
    [(SUSUISoftwareUpdateStatePersistence *)v21->_persistence save];
  }

  objc_storeStrong(&location, 0);
}

- (void)_setDownloadWasQueuedRemotely:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  if ([(SUSUISoftwareUpdateStatePersistence *)self->_persistence downloadWasQueuedRemotely]!= a3)
  {
    oslog = SUSUILog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      if (v5)
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      sub_4B94(v8, v3);
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "[Persistence] Setting download was queued remotely: %{public}@", v8, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [(SUSUISoftwareUpdateStatePersistence *)v7->_persistence setDownloadWasQueuedRemotely:v5];
    [(SUSUISoftwareUpdateStatePersistence *)v7->_persistence save];
  }
}

- (void)_setUpdateToInstall:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_updateToInstall != location[0])
  {
    objc_storeStrong(&v4->_updateToInstall, location[0]);
  }

  objc_storeStrong(location, 0);
}

- (void)_setRemindMeLaterCountForCurrentUpdate:(int64_t)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  if ([(SUSUISoftwareUpdateStatePersistence *)self->_persistence remindMeLaterCountForCurrentUpdate]!= a3)
  {
    oslog = SUSUILog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_13774(v7, v4);
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "[Persistence] Setting remind me later count (current update): %ld", v7, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [(SUSUISoftwareUpdateStatePersistence *)v6->_persistence setRemindMeLaterCountForCurrentUpdate:v4];
    [(SUSUISoftwareUpdateStatePersistence *)v6->_persistence save];
  }
}

- (void)_setRemindMeLaterCountSinceRequiringInstallation:(int64_t)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  if ([(SUSUISoftwareUpdateStatePersistence *)self->_persistence remindMeLaterCountSinceRequiringInstallation]!= a3)
  {
    oslog = SUSUILog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_13774(v7, v4);
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "[Persistence] Setting remind me later count (since requiring updates): %ld", v7, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [(SUSUISoftwareUpdateStatePersistence *)v6->_persistence setRemindMeLaterCountSinceRequiringInstallation:v4];
    [(SUSUISoftwareUpdateStatePersistence *)v6->_persistence save];
  }
}

- (void)_setAutoUpdateRetryCount:(int64_t)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  if ([(SUSUISoftwareUpdateStatePersistence *)self->_persistence autoUpdateRetryCount]!= a3)
  {
    oslog = SUSUILog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_13774(v7, v4);
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "[Persistence] Setting auto update retry count: %ld", v7, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [(SUSUISoftwareUpdateStatePersistence *)v6->_persistence setAutoUpdateRetryCount:v4];
    [(SUSUISoftwareUpdateStatePersistence *)v6->_persistence save];
  }
}

- (void)_rationalizePersistenceIntoModelWithDownload:(id)a3 autoInstallOperation:(id)a4
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v19 = [(SUSUISoftwareUpdateStatePersistence *)v31->_persistence currentInstallationPolicy];

  if (!v19)
  {
    v16 = v31;
    v17 = objc_alloc_init(SUInstallPolicy);
    [SUSUISoftwareUpdateAlertModel setCurrentInstallationPolicy:v16 forReason:"setCurrentInstallationPolicy:forReason:"];
  }

  v14 = [(SUSUISoftwareUpdateStatePersistence *)v31->_persistence currentInstallationPolicy];
  v15 = [(SUInstallPolicy *)v14 type];

  if (v15 != &dword_0 + 1)
  {
    [(SUSUISoftwareUpdateStatePersistence *)v31->_persistence setRemindMeLaterCountSinceRequiringInstallation:0];
  }

  if (location[0])
  {
    [(SUSUISoftwareUpdateAlertModel *)v31 _setUpdateToInstall:location[0]];
    v28 = [(SUSUISoftwareUpdateStatePersistence *)v31->_persistence nextAlertDate];
    if (v28)
    {
      v27 = +[NSDate date];
      v13 = [v28 earlierDate:v27];

      if (v13 == v28)
      {
        v26 = SUSUILog();
        v25 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          log = v26;
          type = v25;
          sub_2544(v24);
          _os_log_impl(&dword_0, log, type, "[Persistence] Rationalizing persistence - alert date found but has already passed, so we'll set the next alert repop strategy to when able.", v24, 2u);
        }

        objc_storeStrong(&v26, 0);
        [(SUSUISoftwareUpdateAlertModel *)v31 _setPersistedInstallAlertRepopStrategy:6 withFireDate:0];
      }

      objc_storeStrong(&v27, 0);
    }

    if (![(SUSUISoftwareUpdateStatePersistence *)v31->_persistence alertFlow])
    {
      v23 = [(SUSUISoftwareUpdateAlertModel *)v31 _initialInstallAlertFlowFromDownload];
      if ([v29 _isEffectivelyScheduled])
      {
        v9 = [(SUSUISoftwareUpdateStatePersistence *)v31->_persistence currentInstallationPolicy];
        v10 = [(SUInstallPolicy *)v9 autoUpdateEnabled];

        if (v10)
        {
          v23 = &dword_4 + 1;
        }

        else
        {
          v23 = &dword_0 + 3;
        }
      }

      v6 = v31;
      v8 = SUSUIStringForInstallAlertFlow(v23);
      v7 = [NSString stringWithFormat:@"Rationalizing persistence -- bad persistence state detected; fixing up alert flow to: %@ based on update to install.", v8];
      [(SUSUISoftwareUpdateAlertModel *)v6 _setInstallAlertFlow:v23 forReason:?];
    }

    objc_storeStrong(&v28, 0);
  }

  else
  {
    v22 = SUSUILog();
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v22;
      v5 = v21;
      sub_2544(v20);
      _os_log_impl(&dword_0, v4, v5, "[Persistence] Rationalizing persistence -- bad persistence state detected; no SU download detected - resetting transient download state.", v20, 2u);
    }

    objc_storeStrong(&v22, 0);
    [(SUSUISoftwareUpdateAlertModel *)v31 resetTransientDownloadState];
  }

  [(SUSUISoftwareUpdateStatePersistence *)v31->_persistence save];
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

- (SUSUISoftwareUpdateAlertModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end