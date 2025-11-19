@interface TVRCMatchPointDeviceQuery
- (TVRCMatchPointDeviceQuery)init;
- (TVRCServiceDeviceQueryDelegate)delegate;
- (void)_matchPointServiceAdded:(id)a3;
- (void)_matchPointServiceNameChanged:(id)a3;
- (void)_matchPointServiceRemoved:(id)a3;
- (void)_notifyAddedService:(id)a3;
- (void)_notifyRemovedService:(id)a3;
- (void)dealloc;
- (void)homeManagerDidUpdateCurrentHome:(id)a3;
- (void)homeManagerDidUpdateHomes:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation TVRCMatchPointDeviceQuery

- (TVRCMatchPointDeviceQuery)init
{
  v6.receiver = self;
  v6.super_class = TVRCMatchPointDeviceQuery;
  v2 = [(TVRCMatchPointDeviceQuery *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deviceImplMap = v2->_deviceImplMap;
    v2->_deviceImplMap = v3;
  }

  return v2;
}

- (void)dealloc
{
  [(TVRCMatchPointDeviceQuery *)self stop];
  v3.receiver = self;
  v3.super_class = TVRCMatchPointDeviceQuery;
  [(TVRCMatchPointDeviceQuery *)&v3 dealloc];
}

- (void)start
{
  v3 = _TVRCHomeKitLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Starting query for HomeKit services", v10, 2u);
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel__matchPointServiceAdded_ name:@"TVRCMatchPointServiceAddedNotification" object:0];
  [v4 addObserver:self selector:sel__matchPointServiceRemoved_ name:@"TVRCMatchPointServiceRemovedNotification" object:0];
  [v4 addObserver:self selector:sel__matchPointServiceNameChanged_ name:@"TVRCMatchPointServiceNameChangedNotification" object:0];
  if (!self->_homeManager)
  {
    v5 = [objc_alloc(MEMORY[0x277CD1C60]) initWithOptions:1024 cachePolicy:1];
    [v5 setAdaptive:1];
    v6 = [objc_alloc(MEMORY[0x277CD1A90]) initWithConfiguration:v5];
    homeManager = self->_homeManager;
    self->_homeManager = v6;

    [(HMHomeManager *)self->_homeManager setDelegate:self];
    v8 = [(HMHomeManager *)self->_homeManager _beginActiveAssertionWithReason:@"foreground"];
    homekitActiveAssertion = self->_homekitActiveAssertion;
    self->_homekitActiveAssertion = v8;
  }
}

- (void)stop
{
  v3 = _TVRCHomeKitLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Stopping query for HomeKit services", v8, 2u);
  }

  if (self->_homekitActiveAssertion)
  {
    [(HMHomeManager *)self->_homeManager _endActiveAssertion:?];
    homekitActiveAssertion = self->_homekitActiveAssertion;
    self->_homekitActiveAssertion = 0;
  }

  [(HMHomeManager *)self->_homeManager setDelegate:0];
  homeManager = self->_homeManager;
  self->_homeManager = 0;

  [(NSMutableDictionary *)self->_deviceImplMap removeAllObjects];
  v6 = +[TVRCHMHomeObserver sharedInstance];
  [v6 setCurrentHome:0];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 removeObserver:self name:@"TVRCMatchPointServiceAddedNotification" object:0];
  [v7 removeObserver:self name:@"TVRCMatchPointServiceRemovedNotification" object:0];
  [v7 removeObserver:self name:@"TVRCMatchPointServiceNameChangedNotification" object:0];
}

- (void)homeManagerDidUpdateHomes:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = _TVRCHomeKitLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "HomeKit informed us that it updated homes", &v9, 2u);
  }

  v5 = [v3 currentHome];
  if (v5)
  {
    v6 = +[TVRCHMHomeObserver sharedInstance];
    [v6 setCurrentHome:v5];
  }

  else
  {
    v6 = _TVRCHomeKitLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 homes];
      v9 = 138412546;
      v10 = v3;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "No current home found for manager %@. All homes - %@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)homeManagerDidUpdateCurrentHome:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRCHomeKitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "HomeKit informed us that it updated current home", &v12, 2u);
  }

  if (self->_homeManager == v4)
  {
    v6 = [(HMHomeManager *)v4 currentHome];
    if (v6)
    {
      v7 = +[TVRCHMHomeObserver sharedInstance];
      v8 = [v7 currentHome];

      if (v8 == v6)
      {
        goto LABEL_12;
      }

      v9 = +[TVRCHMHomeObserver sharedInstance];
      [v9 setCurrentHome:v6];
    }

    else
    {
      v9 = _TVRCHomeKitLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(HMHomeManager *)v4 homes];
        v12 = 138412546;
        v13 = v4;
        v14 = 2112;
        v15 = v10;
        _os_log_impl(&dword_26CF7F000, v9, OS_LOG_TYPE_DEFAULT, "No current home found for manager %@. All homes - %@", &v12, 0x16u);
      }
    }

    goto LABEL_12;
  }

  v6 = _TVRCHomeKitLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "HomeKit home manager does not match", &v12, 2u);
  }

LABEL_12:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_matchPointServiceAdded:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [a3 object];
  v5 = _TVRCHomeKitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543618;
    v15 = objc_opt_class();
    v16 = 2112;
    v17 = v4;
    v6 = v15;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ got notification that MatchPoint service added %@", &v14, 0x16u);
  }

  v7 = [v4 uniqueIdentifier];
  v8 = [v7 UUIDString];

  v9 = [(NSMutableDictionary *)self->_deviceImplMap objectForKey:v8];

  v10 = _TVRCHomeKitLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "Found existing mapping for service: %@", &v14, 0xCu);
    }
  }

  else
  {
    if (v11)
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "Creating mapping for service %@", &v14, 0xCu);
    }

    v10 = [TVRCHMServiceWrapper wrapperWithService:v4];
    v12 = [TVRCMatchPointDeviceImpl implWithService:v10];
    [(NSMutableDictionary *)self->_deviceImplMap setObject:v12 forKey:v8];
    [(TVRCMatchPointDeviceQuery *)self _notifyAddedService:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_matchPointServiceRemoved:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [a3 object];
  v5 = _TVRCHomeKitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = objc_opt_class();
    v13 = 2112;
    v14 = v4;
    v6 = v12;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ got notification that MatchPoint service removed %@", &v11, 0x16u);
  }

  v7 = [v4 uniqueIdentifier];
  v8 = [v7 UUIDString];

  v9 = [(NSMutableDictionary *)self->_deviceImplMap objectForKey:v8];
  if (v9)
  {
    [(NSMutableDictionary *)self->_deviceImplMap removeObjectForKey:v8];
    [(TVRCMatchPointDeviceQuery *)self _notifyRemovedService:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_matchPointServiceNameChanged:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [a3 object];
  v5 = [v4 uniqueIdentifier];
  v6 = [v5 UUIDString];

  v7 = [(NSMutableDictionary *)self->_deviceImplMap objectForKey:v6];
  v8 = _TVRCHomeKitLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v9;
    v11 = [v4 name];
    v13 = 138543874;
    v14 = v9;
    v15 = 2112;
    v16 = v4;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ got notification that service updated name %@. New name : %@", &v13, 0x20u);
  }

  if (v7)
  {
    [(TVRCMatchPointDeviceQuery *)self _notifyRemovedService:v7];
    [(TVRCMatchPointDeviceQuery *)self _notifyAddedService:v7];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_notifyAddedService:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = _TVRCHomeKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "Informing delegate we added MatchPoint service, %@", &v10, 0xCu);
    }

    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 addedDevice:v4];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_notifyRemovedService:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = _TVRCHomeKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "Informing delegate we removed MatchPoint service, %@", &v10, 0xCu);
    }

    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 removedDevice:v4];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (TVRCServiceDeviceQueryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end