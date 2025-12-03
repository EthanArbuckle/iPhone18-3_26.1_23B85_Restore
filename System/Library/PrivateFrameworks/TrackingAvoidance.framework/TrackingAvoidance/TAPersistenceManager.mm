@interface TAPersistenceManager
- (BOOL)_createDirectoryIfNotPresent;
- (BOOL)load;
- (BOOL)reset;
- (BOOL)save;
- (TAPersistenceManager)initWithSettings:(id)settings;
- (void)_notifyObserversOnReadFromURL:(id)l bytes:(unint64_t)bytes;
- (void)_notifyObserversOnWriteToURL:(id)l bytes:(unint64_t)bytes;
- (void)onUpdatedTAStore:(id)store;
@end

@implementation TAPersistenceManager

- (TAPersistenceManager)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v14.receiver = self;
  v14.super_class = TAPersistenceManager;
  v6 = [(TAPersistenceManager *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, settings);
    if (![(TAPersistenceManager *)v7 _createDirectoryIfNotPresent])
    {
      v12 = 0;
      goto LABEL_6;
    }

    v8 = objc_alloc_init(TAPersistenceStore);
    store = v7->_store;
    v7->_store = v8;

    v10 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v7->_observers;
    v7->_observers = v10;
  }

  v12 = v7;
LABEL_6:

  return v12;
}

- (BOOL)_createDirectoryIfNotPresent
{
  v19 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  persistenceDirectoryURL = [(TAPersistenceManagerSettings *)self->_settings persistenceDirectoryURL];
  v12 = 0;
  [defaultManager createDirectoryAtURL:persistenceDirectoryURL withIntermediateDirectories:1 attributes:0 error:&v12];
  v5 = v12;

  if (v5)
  {
    v6 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = [v5 description];
      uTF8String = [v8 UTF8String];
      *buf = 68289283;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2081;
      v18 = uTF8String;
      _os_log_impl(&dword_26F2E2000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TAPersistenceManager encountered error in creating directory, error:%{private}s}", buf, 0x1Cu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5 == 0;
}

- (void)_notifyObserversOnWriteToURL:(id)l bytes:(unint64_t)bytes
{
  v19 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_observers;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 didWriteToURL:lCopy bytes:{bytes, v14}];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_notifyObserversOnReadFromURL:(id)l bytes:(unint64_t)bytes
{
  v19 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_observers;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 didReadFromURL:lCopy bytes:{bytes, v14}];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)load
{
  v37 = *MEMORY[0x277D85DE8];
  _getStoreURL = [(TAPersistenceManagerSettings *)self->_settings _getStoreURL];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [_getStoreURL path];
  v6 = [defaultManager fileExistsAtPath:path];

  if (v6)
  {
    v28 = 0;
    v7 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:_getStoreURL options:2 error:&v28];
    v8 = v28;
    if (v8)
    {
      v9 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        absoluteString = [_getStoreURL absoluteString];
        uTF8String = [absoluteString UTF8String];
        v13 = [v8 description];
        uTF8String2 = [v13 UTF8String];
        *buf = 68289539;
        v30 = 0;
        v31 = 2082;
        v32 = "";
        v33 = 2081;
        v34 = uTF8String;
        v35 = 2081;
        v36 = uTF8String2;
        _os_log_impl(&dword_26F2E2000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TAPersistenceManager encountered error in loading file, url:%{private}s, error:%{private}s}", buf, 0x26u);
      }

      v15 = 0;
    }

    else
    {
      v27 = 0;
      v17 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v27];
      v18 = v27;
      v15 = v18 == 0;
      if (v18)
      {
        v19 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
        {
          log = v19;
          absoluteString2 = [_getStoreURL absoluteString];
          uTF8String3 = [absoluteString2 UTF8String];
          v22 = [v18 description];
          uTF8String4 = [v22 UTF8String];
          *buf = 68289539;
          v30 = 0;
          v31 = 2082;
          v32 = "";
          v33 = 2081;
          v34 = uTF8String3;
          v35 = 2081;
          v36 = uTF8String4;
          _os_log_impl(&dword_26F2E2000, log, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TAPersistenceManager encountered error in unarchiving store, url:%{private}s, error:%{private}s}", buf, 0x26u);
        }
      }

      else
      {
        objc_storeStrong(&self->_store, v17);
        -[TAPersistenceManager _notifyObserversOnReadFromURL:bytes:](self, "_notifyObserversOnReadFromURL:bytes:", _getStoreURL, [v7 length]);
      }
    }
  }

  else
  {
    v16 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289026;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      _os_log_impl(&dword_26F2E2000, v16, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#TAPersistenceManager file does not exist}", buf, 0x12u);
    }

    v15 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)save
{
  v34 = *MEMORY[0x277D85DE8];
  if (self->_store)
  {
    _getStoreURL = [(TAPersistenceManagerSettings *)self->_settings _getStoreURL];
    v4 = objc_autoreleasePoolPush();
    store = self->_store;
    v27 = 0;
    v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:store requiringSecureCoding:1 error:&v27];
    v7 = v27;
    v8 = TAStatusLog;
    if (v7)
    {
      v9 = v7;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
      {
        v10 = v8;
        v11 = [v9 description];
        uTF8String = [v11 UTF8String];
        *buf = 68289283;
        v29 = 0;
        v30 = 2082;
        v31 = "";
        v32 = 2081;
        v33 = uTF8String;
        _os_log_impl(&dword_26F2E2000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TAPersistenceManager error archiving store, error:%{private}s}", buf, 0x1Cu);
      }

      objc_autoreleasePoolPop(v4);
    }

    else
    {
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
      {
        v15 = v8;
        path = [_getStoreURL path];
        uTF8String2 = [path UTF8String];
        *buf = 68289283;
        v29 = 0;
        v30 = 2082;
        v31 = "";
        v32 = 2081;
        v33 = uTF8String2;
        _os_log_impl(&dword_26F2E2000, v15, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#TAPersistenceManager saving to location, path:%{private}s}", buf, 0x1Cu);
      }

      v26 = 0;
      [v6 writeToURL:_getStoreURL options:1073741825 error:&v26];
      v18 = v26;
      if (v18)
      {
        v19 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
        {
          v20 = v19;
          v21 = [v18 description];
          uTF8String3 = [v21 UTF8String];
          *buf = 68289283;
          v29 = 0;
          v30 = 2082;
          v31 = "";
          v32 = 2081;
          v33 = uTF8String3;
          _os_log_impl(&dword_26F2E2000, v20, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TAPersistenceManager error archiving store, error:%{private}s}", buf, 0x1Cu);
        }

        v23 = 0;
      }

      else
      {
        v23 = [v6 length];
      }

      objc_autoreleasePoolPop(v4);
      if (!v18)
      {
        [(TAPersistenceManager *)self _notifyObserversOnWriteToURL:_getStoreURL bytes:v23];
        v14 = 1;
        goto LABEL_18;
      }
    }

    v14 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v13 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    v29 = 0;
    v30 = 2082;
    v31 = "";
    _os_log_impl(&dword_26F2E2000, v13, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TAPersistenceManager no store to save}", buf, 0x12u);
  }

  v14 = 0;
LABEL_19:
  v24 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)reset
{
  v22 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  persistenceDirectoryURL = [(TAPersistenceManagerSettings *)self->_settings persistenceDirectoryURL];
  v15 = 0;
  [defaultManager removeItemAtURL:persistenceDirectoryURL error:&v15];
  v5 = v15;

  if (v5)
  {
    v6 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = [v5 description];
      uTF8String = [v8 UTF8String];
      *buf = 68289283;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2081;
      v21 = uTF8String;
      _os_log_impl(&dword_26F2E2000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TAPersistenceManager error reseting directory, error:%{private}s}", buf, 0x1Cu);
    }

    goto LABEL_6;
  }

  if (![(TAPersistenceManager *)self _createDirectoryIfNotPresent])
  {
LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

  v10 = objc_alloc_init(TAPersistenceStore);
  store = self->_store;
  self->_store = v10;

  v12 = 1;
LABEL_7:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)onUpdatedTAStore:(id)store
{
  storeCopy = store;
  deviceRecord = [storeCopy deviceRecord];
  [(TAPersistenceStore *)self->_store setDeviceRecord:deviceRecord];

  visitState = [storeCopy visitState];

  [(TAPersistenceStore *)self->_store setVisitState:visitState];
}

@end