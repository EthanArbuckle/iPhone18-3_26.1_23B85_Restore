@interface TVRXDeviceQuery
- (NSSet)devices;
- (TVRXDeviceQuery)init;
- (TVRXDeviceQueryDelegate)delegate;
- (id)_findDeviceForDeviceImpl:(id)a3 createIfNeeded:(BOOL)a4;
- (void)_notifyDelegateDidUpdateDevices;
- (void)_startSearch;
- (void)_stopSearch;
- (void)addedDevice:(id)a3;
- (void)removedDevice:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation TVRXDeviceQuery

- (TVRXDeviceQuery)init
{
  v6.receiver = self;
  v6.super_class = TVRXDeviceQuery;
  v2 = [(TVRXDeviceQuery *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deviceMap = v2->_deviceMap;
    v2->_deviceMap = v3;
  }

  return v2;
}

- (NSSet)devices
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(NSMutableDictionary *)self->_deviceMap objectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v12 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = [v3 copy];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)start
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_isRunning)
  {
    v3 = *MEMORY[0x277D85DE8];

    [(TVRXDeviceQuery *)self _notifyDelegateDidUpdateDevices];
  }

  else
  {
    v4 = _TVRCGeneralLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = self;
      _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "<TVRXDeviceQuery %p> starting.", &v6, 0xCu);
    }

    self->_isRunning = 1;
    [(NSMutableDictionary *)self->_deviceMap removeAllObjects];
    [(TVRXDeviceQuery *)self _startSearch];
    v5 = *MEMORY[0x277D85DE8];
  }
}

- (void)stop
{
  v7 = *MEMORY[0x277D85DE8];
  if (self->_isRunning)
  {
    v3 = _TVRCGeneralLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134217984;
      v6 = self;
      _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "<TVRXDeviceQuery %p> stopping.", &v5, 0xCu);
    }

    self->_isRunning = 0;
    [(TVRXDeviceQuery *)self _stopSearch];
    [(NSMutableDictionary *)self->_deviceMap removeAllObjects];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_startSearch
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = _TVRCGeneralLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = self;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "<TVRXDeviceQuery %p> has Rapport enabled.", &v9, 0xCu);
  }

  v4 = objc_alloc_init(TVRCRapportDeviceQuery);
  rapportDeviceQuery = self->_rapportDeviceQuery;
  self->_rapportDeviceQuery = v4;

  [(TVRCRapportDeviceQuery *)self->_rapportDeviceQuery setDelegate:self];
  [(TVRCRapportDeviceQuery *)self->_rapportDeviceQuery start];
  v6 = objc_alloc_init(TVRCMatchPointDeviceQuery);
  matchPointQuery = self->_matchPointQuery;
  self->_matchPointQuery = v6;

  [(TVRCMatchPointDeviceQuery *)self->_matchPointQuery setDelegate:self];
  [(TVRCMatchPointDeviceQuery *)self->_matchPointQuery start];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_stopSearch
{
  [(TVRCMatchPointDeviceQuery *)self->_matchPointQuery setDelegate:0];
  [(TVRCMatchPointDeviceQuery *)self->_matchPointQuery stop];
  matchPointQuery = self->_matchPointQuery;
  self->_matchPointQuery = 0;

  [(TVRCRapportDeviceQuery *)self->_rapportDeviceQuery stop];
  [(TVRCRapportDeviceQuery *)self->_rapportDeviceQuery setDelegate:0];
  rapportDeviceQuery = self->_rapportDeviceQuery;
  self->_rapportDeviceQuery = 0;
}

- (id)_findDeviceForDeviceImpl:(id)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 identifier];
  v8 = [(NSMutableDictionary *)self->_deviceMap objectForKey:v7];
  if (!v8)
  {
    v22 = v4;
    v23 = v7;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = [(NSMutableDictionary *)self->_deviceMap allValues];
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          v15 = [v14 allIdentifiers];
          v16 = [v6 allIdentifiers];
          v17 = [v15 intersectsSet:v16];

          if (v17)
          {
            v18 = _TVRCGeneralLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v29 = v14;
              v30 = 2114;
              v31 = v6;
              _os_log_impl(&dword_26CF7F000, v18, OS_LOG_TYPE_DEFAULT, "Found an existing device: %{public}@ for impl: %{public}@", buf, 0x16u);
            }

            v8 = v14;
            v7 = v23;
            goto LABEL_20;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v7 = v23;
    if (v23)
    {
      if (v22)
      {
        v8 = [[TVRXDevice alloc] _init];
        [(NSMutableDictionary *)self->_deviceMap setObject:v8 forKey:v23];
        goto LABEL_20;
      }
    }

    else
    {
      v19 = _TVRCGeneralLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [TVRXDeviceQuery _findDeviceForDeviceImpl:v19 createIfNeeded:?];
      }
    }

    v8 = 0;
  }

LABEL_20:

  v20 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_notifyDelegateDidUpdateDevices
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 deviceQueryDidUpdateDevices:self];
  }
}

- (void)addedDevice:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRCGeneralLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218242;
    v9 = self;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "<TVRXDeviceQuery %p> Attempting to add new device %{public}@.", &v8, 0x16u);
  }

  v6 = [(TVRXDeviceQuery *)self _findDeviceForDeviceImpl:v4 createIfNeeded:1];
  [v6 addDeviceImpl:v4];
  [(TVRXDeviceQuery *)self _notifyDelegateDidUpdateDevices];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)removedDevice:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRCGeneralLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218242;
    v13 = self;
    v14 = 2114;
    v15 = v4;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "<TVRXDeviceQuery %p> Removed device %{public}@.", &v12, 0x16u);
  }

  v6 = [(TVRXDeviceQuery *)self _findDeviceForDeviceImpl:v4 createIfNeeded:0];
  v7 = _TVRCGeneralLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v12 = 134217984;
      v13 = self;
      _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "<TVRXDeviceQuery %p> Device existed for removed television.", &v12, 0xCu);
    }

    [v6 removeDeviceImpl:v4];
    if ([v6 isEmpty])
    {
      deviceMap = self->_deviceMap;
      v10 = [v4 identifier];
      [(NSMutableDictionary *)deviceMap removeObjectForKey:v10];
    }

    [(TVRXDeviceQuery *)self _notifyDelegateDidUpdateDevices];
  }

  else
  {
    if (v8)
    {
      v12 = 134218242;
      v13 = self;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "<TVRXDeviceQuery %p> Failed to remove device %@ because it doesn't exist.", &v12, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (TVRXDeviceQueryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end