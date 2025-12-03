@interface SUSUISoftwareUpdateAlertModel
- (BOOL)autoUpdateEnabled;
- (SUSUISoftwareUpdateAlertModel)initWithDefaults:(id)defaults;
- (SUSUISoftwareUpdateAlertModel)initWithDownload:(id)download autoInstallOperation:(id)operation defaults:(id)defaults;
- (SUSUISoftwareUpdateAlertModelDelegate)delegate;
- (id)_initWithDownload:(id)download autoInstallOperation:(id)operation defaults:(id)defaults persistence:(id)persistence;
- (unint64_t)_initialInstallAlertFlowFromDownload;
- (void)_rationalizePersistenceIntoModelWithDownload:(id)download autoInstallOperation:(id)operation;
- (void)_setAutoUpdateRetryCount:(int64_t)count;
- (void)_setDownloadWasQueuedRemotely:(BOOL)remotely;
- (void)_setInstallAlertFlow:(unint64_t)flow forReason:(id)reason;
- (void)_setPersistedInstallAlertRepopStrategy:(unint64_t)strategy withFireDate:(id)date;
- (void)_setRemindMeLaterCountForCurrentUpdate:(int64_t)update;
- (void)_setRemindMeLaterCountSinceRequiringInstallation:(int64_t)installation;
- (void)_setUpdateToInstall:(id)install;
- (void)autoInstallOperationEnded:(unint64_t)ended;
- (void)autoUpdateExpired;
- (void)countdownAlertPresentationPreventedForReasons:(id)reasons;
- (void)didFinishDownloading:(id)downloading;
- (void)resetTransientDownloadState;
- (void)setCurrentInstallationPolicy:(id)policy forReason:(id)reason;
- (void)setPersistedInstallAlertRepopStrategy:(unint64_t)strategy withFireDate:(id)date;
- (void)userSelectedRemindMeLater;
- (void)willInstallWithType:(unint64_t)type;
@end

@implementation SUSUISoftwareUpdateAlertModel

- (SUSUISoftwareUpdateAlertModel)initWithDefaults:(id)defaults
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, defaults);
  v3 = selfCopy;
  selfCopy = 0;
  selfCopy = [(SUSUISoftwareUpdateAlertModel *)v3 initWithDownload:0 autoInstallOperation:0 defaults:location[0]];
  v5 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (SUSUISoftwareUpdateAlertModel)initWithDownload:(id)download autoInstallOperation:(id)operation defaults:(id)defaults
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, download);
  v16 = 0;
  objc_storeStrong(&v16, operation);
  v15 = 0;
  objc_storeStrong(&v15, defaults);
  v12 = selfCopy;
  v9 = location[0];
  v10 = v16;
  v11 = v15;
  v5 = [SUSUISoftwareUpdateStatePersistence alloc];
  v13 = [(SUSUISoftwareUpdateStatePersistence *)v5 initWithDefaults:v15];
  selfCopy = 0;
  selfCopy = [(SUSUISoftwareUpdateAlertModel *)v12 _initWithDownload:v9 autoInstallOperation:v10 defaults:v11 persistence:?];
  v14 = selfCopy;

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v14;
}

- (id)_initWithDownload:(id)download autoInstallOperation:(id)operation defaults:(id)defaults persistence:(id)persistence
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, download);
  v19 = 0;
  objc_storeStrong(&v19, operation);
  v18 = 0;
  objc_storeStrong(&v18, defaults);
  v17 = 0;
  objc_storeStrong(&v17, persistence);
  v6 = selfCopy;
  selfCopy = 0;
  v16.receiver = v6;
  v16.super_class = SUSUISoftwareUpdateAlertModel;
  v12 = [(SUSUISoftwareUpdateAlertModel *)&v16 init];
  selfCopy = v12;
  objc_storeStrong(&selfCopy, v12);
  if (v12)
  {
    objc_storeStrong(&selfCopy->_persistence, v17);
    v15 = SUSUILog();
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      sub_4B94(v23, selfCopy->_persistence);
      _os_log_impl(&dword_0, v15, v14, "Software update persistence initialized: %{public}@", v23, 0xCu);
    }

    objc_storeStrong(&v15, 0);
    [(SUSUISoftwareUpdateAlertModel *)selfCopy _rationalizePersistenceIntoModelWithDownload:location[0] autoInstallOperation:v19];
    oslog = SUSUILog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_4B94(v22, selfCopy->_persistence);
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "Software update persistence rationalized into model: %{public}@", v22, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  v8 = selfCopy;
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (BOOL)autoUpdateEnabled
{
  currentInstallationPolicy = [(SUSUISoftwareUpdateStatePersistence *)self->_persistence currentInstallationPolicy];
  autoUpdateEnabled = [(SUInstallPolicy *)currentInstallationPolicy autoUpdateEnabled];

  return autoUpdateEnabled;
}

- (void)setCurrentInstallationPolicy:(id)policy forReason:(id)reason
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, policy);
  v12 = 0;
  objc_storeStrong(&v12, reason);
  currentInstallationPolicy = [(SUSUISoftwareUpdateAlertModel *)selfCopy currentInstallationPolicy];
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

  if (([currentInstallationPolicy isEqual:v10] & 1) == 0)
  {
    oslog = SUSUILog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_54AC(v15, v12, v10);
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "[Persistence] Install policy changed (reason: %{public}@) to: %{public}@", v15, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    [(SUSUISoftwareUpdateStatePersistence *)selfCopy->_persistence setCurrentInstallationPolicy:v10];
    if ([v10 type] != &dword_0 + 1)
    {
      [(SUSUISoftwareUpdateAlertModel *)selfCopy _setRemindMeLaterCountSinceRequiringInstallation:0];
    }

    autoUpdateEnabled = [v10 autoUpdateEnabled];
    if (autoUpdateEnabled != [currentInstallationPolicy autoUpdateEnabled])
    {
      if ([v10 autoUpdateEnabled])
      {
        [(SUSUISoftwareUpdateAlertModel *)selfCopy _setInstallAlertFlow:5 forReason:@"install policy has auto update enabled"];
      }

      else
      {
        [(SUSUISoftwareUpdateAlertModel *)selfCopy _setInstallAlertFlow:1 forReason:@"Auto Update disabled"];
      }
    }

    [(SUSUISoftwareUpdateStatePersistence *)selfCopy->_persistence save];
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&currentInstallationPolicy, 0);
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
  currentInstallationPolicy = [(SUSUISoftwareUpdateAlertModel *)self currentInstallationPolicy];
  type = [(SUInstallPolicy *)currentInstallationPolicy type];

  if (type != &dword_0 + 1)
  {
    [(SUSUISoftwareUpdateAlertModel *)self _setRemindMeLaterCountSinceRequiringInstallation:0];
  }
}

- (void)userSelectedRemindMeLater
{
  if (self->_updateToInstall)
  {
    [(SUSUISoftwareUpdateAlertModel *)self _setRemindMeLaterCountForCurrentUpdate:[(SUSUISoftwareUpdateAlertModel *)self remindMeLaterCountForCurrentUpdate]+ 1];
    currentInstallationPolicy = [(SUSUISoftwareUpdateAlertModel *)self currentInstallationPolicy];
    type = [(SUInstallPolicy *)currentInstallationPolicy type];

    if (type == &dword_0 + 1)
    {
      [(SUSUISoftwareUpdateAlertModel *)self _setRemindMeLaterCountSinceRequiringInstallation:[(SUSUISoftwareUpdateAlertModel *)self remindMeLaterCountSinceRequiringInstallation]+ 1];
    }

    alertFlow = [(SUSUISoftwareUpdateStatePersistence *)self->_persistence alertFlow];
    if (alertFlow && (alertFlow - 1 <= 2 || alertFlow == 5))
    {
      [(SUSUISoftwareUpdateAlertModel *)self _setInstallAlertFlow:4 forReason:@"User selected 'Remind me later'", alertFlow];
    }
  }
}

- (void)autoInstallOperationEnded:(unint64_t)ended
{
  alertFlow = [(SUSUISoftwareUpdateStatePersistence *)self->_persistence alertFlow];
  if (alertFlow > 2)
  {
    if (alertFlow == 3)
    {
      [(SUSUISoftwareUpdateAlertModel *)self _setInstallAlertFlow:4 forReason:@"Auto install operation was cancelled or expired."];
    }

    else if (alertFlow == 5)
    {
      if (ended == 1)
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

      else if (!ended)
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

- (void)didFinishDownloading:(id)downloading
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, downloading);
  [(SUSUISoftwareUpdateAlertModel *)selfCopy _setUpdateToInstall:location[0]];
  [(SUSUISoftwareUpdateAlertModel *)selfCopy _setInstallAlertFlow:[(SUSUISoftwareUpdateAlertModel *)selfCopy _initialInstallAlertFlowFromDownload] forReason:@"Download completed"];
  objc_storeStrong(location, 0);
}

- (void)willInstallWithType:(unint64_t)type
{
  if (type)
  {
    if (type == 1)
    {
      [(SUSUISoftwareUpdateAlertModel *)self _setInstallAlertFlow:3 forReason:@"Install tonight chosen"];
    }

    else if (type == 2)
    {
      [(SUSUISoftwareUpdateAlertModel *)self _setInstallAlertFlow:5 forReason:@"Auto update enabled"];
    }
  }

  else
  {
    [(SUSUISoftwareUpdateAlertModel *)self _setInstallAlertFlow:4 forReason:@"Install now chosen"];
  }
}

- (void)setPersistedInstallAlertRepopStrategy:(unint64_t)strategy withFireDate:(id)date
{
  selfCopy = self;
  v6 = a2;
  strategyCopy = strategy;
  location = 0;
  objc_storeStrong(&location, date);
  [(SUSUISoftwareUpdateAlertModel *)selfCopy _setPersistedInstallAlertRepopStrategy:strategyCopy withFireDate:location];
  objc_storeStrong(&location, 0);
}

- (void)countdownAlertPresentationPreventedForReasons:(id)reasons
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, reasons);
  if ([(SUSUISoftwareUpdateStatePersistence *)selfCopy->_persistence alertFlow]== &dword_0 + 2)
  {
    v3 = [NSString stringWithFormat:@"Installation countdown alert prevented for reason %@", location[0]];
    [(SUSUISoftwareUpdateAlertModel *)selfCopy _setInstallAlertFlow:1 forReason:v3];
    objc_storeStrong(&v3, 0);
  }

  objc_storeStrong(location, 0);
}

- (unint64_t)_initialInstallAlertFlowFromDownload
{
  selfCopy = self;
  v20 = a2;
  metadata = [(SUDownload *)self->_updateToInstall metadata];
  isAutoDownload = [metadata isAutoDownload];

  v19 = isAutoDownload;
  if ((isAutoDownload & 1) != 0 && [(SUSUISoftwareUpdateAlertModel *)selfCopy autoUpdateEnabled])
  {
    return 5;
  }

  downloadWasQueuedRemotely = [(SUSUISoftwareUpdateStatePersistence *)selfCopy->_persistence downloadWasQueuedRemotely];
  metadata2 = [(SUDownload *)selfCopy->_updateToInstall metadata];
  isDownloadOnly = [metadata2 isDownloadOnly];

  v17 = isDownloadOnly;
  downloadOptions = [(SUDownload *)selfCopy->_updateToInstall downloadOptions];
  userUpdateTonight = [downloadOptions userUpdateTonight];

  v16 = userUpdateTonight;
  v15 = 0;
  if (userUpdateTonight)
  {
    v15 = 3;
  }

  else if (v19 & 1) != 0 || (v17 & 1) != 0 || (downloadWasQueuedRemotely)
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
    sub_3B584(v23, "[SUSUISoftwareUpdateAlertModel _initialInstallAlertFlowFromDownload]", v19 & 1, downloadWasQueuedRemotely & 1, v17 & 1, v16 & 1, v12);
    _os_log_impl(&dword_0, log, type, "%s identified autoDownload=%d, queuedRemotely=%d, downloadOnly=%d, userUpdateTonight=%d, returning flow: %@", v23, 0x2Eu);

    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  return v15;
}

- (void)_setInstallAlertFlow:(unint64_t)flow forReason:(id)reason
{
  selfCopy = self;
  v17 = a2;
  flowCopy = flow;
  location = 0;
  objc_storeStrong(&location, reason);
  alertFlow = [(SUSUISoftwareUpdateStatePersistence *)selfCopy->_persistence alertFlow];
  if (alertFlow != flowCopy)
  {
    v13 = SUSUILog();
    v12 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      log = v13;
      type = v12;
      v9 = SUSUIStringForInstallAlertFlow(alertFlow);
      v5 = v9;
      v11 = v5;
      v8 = SUSUIStringForInstallAlertFlow(flowCopy);
      v10 = v8;
      sub_3B848(v19, v5, v10, location);
      _os_log_impl(&dword_0, log, type, "[Persistence] Install alert flow changed from: %{public}@ to: %{public}@ for reason: %{public}@", v19, 0x20u);

      objc_storeStrong(&v10, 0);
      objc_storeStrong(&v11, 0);
    }

    objc_storeStrong(&v13, 0);
    [(SUSUISoftwareUpdateStatePersistence *)selfCopy->_persistence setAlertFlow:flowCopy];
    [(SUSUISoftwareUpdateStatePersistence *)selfCopy->_persistence save];
    WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
    [WeakRetained alertModel:selfCopy alertFlowDidChangeFrom:alertFlow to:flowCopy];
  }

  objc_storeStrong(&location, 0);
}

- (void)_setPersistedInstallAlertRepopStrategy:(unint64_t)strategy withFireDate:(id)date
{
  selfCopy = self;
  v20 = a2;
  strategyCopy = strategy;
  location = 0;
  objc_storeStrong(&location, date);
  nextAlertDate = [(SUSUISoftwareUpdateStatePersistence *)selfCopy->_persistence nextAlertDate];
  v11 = nextAlertDate != location;

  v17 = v11;
  nextAlertRepopStrategy = [(SUSUISoftwareUpdateStatePersistence *)selfCopy->_persistence nextAlertRepopStrategy];
  v16 = nextAlertRepopStrategy != strategyCopy;
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
      v9 = SUSUIStringForInstallAlertRepopStrategy(strategyCopy);
      v12 = v9;
      sub_54AC(v22, v6, v12);
      _os_log_impl(&dword_0, log, type, "[Persistence] Next install alert date changed to: %{public}@ for repop strategy: %{public}@", v22, 0x16u);

      objc_storeStrong(&v12, 0);
      objc_storeStrong(&v13, 0);
    }

    objc_storeStrong(&v15, 0);
    [(SUSUISoftwareUpdateStatePersistence *)selfCopy->_persistence setNextAlertRepopStrategy:strategyCopy withNextAlertDate:location];
    [(SUSUISoftwareUpdateStatePersistence *)selfCopy->_persistence save];
  }

  objc_storeStrong(&location, 0);
}

- (void)_setDownloadWasQueuedRemotely:(BOOL)remotely
{
  selfCopy = self;
  v6 = a2;
  remotelyCopy = remotely;
  if ([(SUSUISoftwareUpdateStatePersistence *)self->_persistence downloadWasQueuedRemotely]!= remotely)
  {
    oslog = SUSUILog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      if (remotelyCopy)
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
    [(SUSUISoftwareUpdateStatePersistence *)selfCopy->_persistence setDownloadWasQueuedRemotely:remotelyCopy];
    [(SUSUISoftwareUpdateStatePersistence *)selfCopy->_persistence save];
  }
}

- (void)_setUpdateToInstall:(id)install
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, install);
  if (selfCopy->_updateToInstall != location[0])
  {
    objc_storeStrong(&selfCopy->_updateToInstall, location[0]);
  }

  objc_storeStrong(location, 0);
}

- (void)_setRemindMeLaterCountForCurrentUpdate:(int64_t)update
{
  selfCopy = self;
  v5 = a2;
  updateCopy = update;
  if ([(SUSUISoftwareUpdateStatePersistence *)self->_persistence remindMeLaterCountForCurrentUpdate]!= update)
  {
    oslog = SUSUILog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_13774(v7, updateCopy);
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "[Persistence] Setting remind me later count (current update): %ld", v7, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [(SUSUISoftwareUpdateStatePersistence *)selfCopy->_persistence setRemindMeLaterCountForCurrentUpdate:updateCopy];
    [(SUSUISoftwareUpdateStatePersistence *)selfCopy->_persistence save];
  }
}

- (void)_setRemindMeLaterCountSinceRequiringInstallation:(int64_t)installation
{
  selfCopy = self;
  v5 = a2;
  installationCopy = installation;
  if ([(SUSUISoftwareUpdateStatePersistence *)self->_persistence remindMeLaterCountSinceRequiringInstallation]!= installation)
  {
    oslog = SUSUILog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_13774(v7, installationCopy);
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "[Persistence] Setting remind me later count (since requiring updates): %ld", v7, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [(SUSUISoftwareUpdateStatePersistence *)selfCopy->_persistence setRemindMeLaterCountSinceRequiringInstallation:installationCopy];
    [(SUSUISoftwareUpdateStatePersistence *)selfCopy->_persistence save];
  }
}

- (void)_setAutoUpdateRetryCount:(int64_t)count
{
  selfCopy = self;
  v5 = a2;
  countCopy = count;
  if ([(SUSUISoftwareUpdateStatePersistence *)self->_persistence autoUpdateRetryCount]!= count)
  {
    oslog = SUSUILog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_13774(v7, countCopy);
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "[Persistence] Setting auto update retry count: %ld", v7, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [(SUSUISoftwareUpdateStatePersistence *)selfCopy->_persistence setAutoUpdateRetryCount:countCopy];
    [(SUSUISoftwareUpdateStatePersistence *)selfCopy->_persistence save];
  }
}

- (void)_rationalizePersistenceIntoModelWithDownload:(id)download autoInstallOperation:(id)operation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, download);
  v29 = 0;
  objc_storeStrong(&v29, operation);
  currentInstallationPolicy = [(SUSUISoftwareUpdateStatePersistence *)selfCopy->_persistence currentInstallationPolicy];

  if (!currentInstallationPolicy)
  {
    v16 = selfCopy;
    v17 = objc_alloc_init(SUInstallPolicy);
    [SUSUISoftwareUpdateAlertModel setCurrentInstallationPolicy:v16 forReason:"setCurrentInstallationPolicy:forReason:"];
  }

  currentInstallationPolicy2 = [(SUSUISoftwareUpdateStatePersistence *)selfCopy->_persistence currentInstallationPolicy];
  type = [(SUInstallPolicy *)currentInstallationPolicy2 type];

  if (type != &dword_0 + 1)
  {
    [(SUSUISoftwareUpdateStatePersistence *)selfCopy->_persistence setRemindMeLaterCountSinceRequiringInstallation:0];
  }

  if (location[0])
  {
    [(SUSUISoftwareUpdateAlertModel *)selfCopy _setUpdateToInstall:location[0]];
    nextAlertDate = [(SUSUISoftwareUpdateStatePersistence *)selfCopy->_persistence nextAlertDate];
    if (nextAlertDate)
    {
      v27 = +[NSDate date];
      v13 = [nextAlertDate earlierDate:v27];

      if (v13 == nextAlertDate)
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
        [(SUSUISoftwareUpdateAlertModel *)selfCopy _setPersistedInstallAlertRepopStrategy:6 withFireDate:0];
      }

      objc_storeStrong(&v27, 0);
    }

    if (![(SUSUISoftwareUpdateStatePersistence *)selfCopy->_persistence alertFlow])
    {
      _initialInstallAlertFlowFromDownload = [(SUSUISoftwareUpdateAlertModel *)selfCopy _initialInstallAlertFlowFromDownload];
      if ([v29 _isEffectivelyScheduled])
      {
        currentInstallationPolicy3 = [(SUSUISoftwareUpdateStatePersistence *)selfCopy->_persistence currentInstallationPolicy];
        autoUpdateEnabled = [(SUInstallPolicy *)currentInstallationPolicy3 autoUpdateEnabled];

        if (autoUpdateEnabled)
        {
          _initialInstallAlertFlowFromDownload = &dword_4 + 1;
        }

        else
        {
          _initialInstallAlertFlowFromDownload = &dword_0 + 3;
        }
      }

      v6 = selfCopy;
      v8 = SUSUIStringForInstallAlertFlow(_initialInstallAlertFlowFromDownload);
      v7 = [NSString stringWithFormat:@"Rationalizing persistence -- bad persistence state detected; fixing up alert flow to: %@ based on update to install.", v8];
      [(SUSUISoftwareUpdateAlertModel *)v6 _setInstallAlertFlow:_initialInstallAlertFlowFromDownload forReason:?];
    }

    objc_storeStrong(&nextAlertDate, 0);
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
    [(SUSUISoftwareUpdateAlertModel *)selfCopy resetTransientDownloadState];
  }

  [(SUSUISoftwareUpdateStatePersistence *)selfCopy->_persistence save];
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

- (SUSUISoftwareUpdateAlertModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end