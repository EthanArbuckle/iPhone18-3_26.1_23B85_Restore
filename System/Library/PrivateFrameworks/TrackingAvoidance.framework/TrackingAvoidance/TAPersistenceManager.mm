@interface TAPersistenceManager
- (BOOL)_createDirectoryIfNotPresent;
- (BOOL)load;
- (BOOL)reset;
- (BOOL)save;
- (TAPersistenceManager)initWithSettings:(id)a3;
- (void)_notifyObserversOnReadFromURL:(id)a3 bytes:(unint64_t)a4;
- (void)_notifyObserversOnWriteToURL:(id)a3 bytes:(unint64_t)a4;
- (void)onUpdatedTAStore:(id)a3;
@end

@implementation TAPersistenceManager

- (TAPersistenceManager)initWithSettings:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = TAPersistenceManager;
  v6 = [(TAPersistenceManager *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, a3);
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
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(TAPersistenceManagerSettings *)self->_settings persistenceDirectoryURL];
  v12 = 0;
  [v3 createDirectoryAtURL:v4 withIntermediateDirectories:1 attributes:0 error:&v12];
  v5 = v12;

  if (v5)
  {
    v6 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = [v5 description];
      v9 = [v8 UTF8String];
      *buf = 68289283;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2081;
      v18 = v9;
      _os_log_impl(&dword_26F2E2000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TAPersistenceManager encountered error in creating directory, error:%{private}s}", buf, 0x1Cu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5 == 0;
}

- (void)_notifyObserversOnWriteToURL:(id)a3 bytes:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
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
          [v12 didWriteToURL:v6 bytes:{a4, v14}];
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

- (void)_notifyObserversOnReadFromURL:(id)a3 bytes:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
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
          [v12 didReadFromURL:v6 bytes:{a4, v14}];
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
  v3 = [(TAPersistenceManagerSettings *)self->_settings _getStoreURL];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5];

  if (v6)
  {
    v28 = 0;
    v7 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v3 options:2 error:&v28];
    v8 = v28;
    if (v8)
    {
      v9 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        v11 = [v3 absoluteString];
        v12 = [v11 UTF8String];
        v13 = [v8 description];
        v14 = [v13 UTF8String];
        *buf = 68289539;
        v30 = 0;
        v31 = 2082;
        v32 = "";
        v33 = 2081;
        v34 = v12;
        v35 = 2081;
        v36 = v14;
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
          v20 = [v3 absoluteString];
          v21 = [v20 UTF8String];
          v22 = [v18 description];
          v23 = [v22 UTF8String];
          *buf = 68289539;
          v30 = 0;
          v31 = 2082;
          v32 = "";
          v33 = 2081;
          v34 = v21;
          v35 = 2081;
          v36 = v23;
          _os_log_impl(&dword_26F2E2000, log, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TAPersistenceManager encountered error in unarchiving store, url:%{private}s, error:%{private}s}", buf, 0x26u);
        }
      }

      else
      {
        objc_storeStrong(&self->_store, v17);
        -[TAPersistenceManager _notifyObserversOnReadFromURL:bytes:](self, "_notifyObserversOnReadFromURL:bytes:", v3, [v7 length]);
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
    v3 = [(TAPersistenceManagerSettings *)self->_settings _getStoreURL];
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
        v12 = [v11 UTF8String];
        *buf = 68289283;
        v29 = 0;
        v30 = 2082;
        v31 = "";
        v32 = 2081;
        v33 = v12;
        _os_log_impl(&dword_26F2E2000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TAPersistenceManager error archiving store, error:%{private}s}", buf, 0x1Cu);
      }

      objc_autoreleasePoolPop(v4);
    }

    else
    {
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
      {
        v15 = v8;
        v16 = [v3 path];
        v17 = [v16 UTF8String];
        *buf = 68289283;
        v29 = 0;
        v30 = 2082;
        v31 = "";
        v32 = 2081;
        v33 = v17;
        _os_log_impl(&dword_26F2E2000, v15, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#TAPersistenceManager saving to location, path:%{private}s}", buf, 0x1Cu);
      }

      v26 = 0;
      [v6 writeToURL:v3 options:1073741825 error:&v26];
      v18 = v26;
      if (v18)
      {
        v19 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
        {
          v20 = v19;
          v21 = [v18 description];
          v22 = [v21 UTF8String];
          *buf = 68289283;
          v29 = 0;
          v30 = 2082;
          v31 = "";
          v32 = 2081;
          v33 = v22;
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
        [(TAPersistenceManager *)self _notifyObserversOnWriteToURL:v3 bytes:v23];
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
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(TAPersistenceManagerSettings *)self->_settings persistenceDirectoryURL];
  v15 = 0;
  [v3 removeItemAtURL:v4 error:&v15];
  v5 = v15;

  if (v5)
  {
    v6 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = [v5 description];
      v9 = [v8 UTF8String];
      *buf = 68289283;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2081;
      v21 = v9;
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

- (void)onUpdatedTAStore:(id)a3
{
  v4 = a3;
  v5 = [v4 deviceRecord];
  [(TAPersistenceStore *)self->_store setDeviceRecord:v5];

  v6 = [v4 visitState];

  [(TAPersistenceStore *)self->_store setVisitState:v6];
}

@end