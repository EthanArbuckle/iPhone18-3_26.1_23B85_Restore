@interface TVRCMatchPointDeviceQuery
- (TVRCMatchPointDeviceQuery)init;
- (TVRCServiceDeviceQueryDelegate)delegate;
- (void)_matchPointServiceAdded:(id)added;
- (void)_matchPointServiceNameChanged:(id)changed;
- (void)_matchPointServiceRemoved:(id)removed;
- (void)_notifyAddedService:(id)service;
- (void)_notifyRemovedService:(id)service;
- (void)dealloc;
- (void)homeManagerDidUpdateCurrentHome:(id)home;
- (void)homeManagerDidUpdateHomes:(id)homes;
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

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__matchPointServiceAdded_ name:@"TVRCMatchPointServiceAddedNotification" object:0];
  [defaultCenter addObserver:self selector:sel__matchPointServiceRemoved_ name:@"TVRCMatchPointServiceRemovedNotification" object:0];
  [defaultCenter addObserver:self selector:sel__matchPointServiceNameChanged_ name:@"TVRCMatchPointServiceNameChangedNotification" object:0];
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

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"TVRCMatchPointServiceAddedNotification" object:0];
  [defaultCenter removeObserver:self name:@"TVRCMatchPointServiceRemovedNotification" object:0];
  [defaultCenter removeObserver:self name:@"TVRCMatchPointServiceNameChangedNotification" object:0];
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  v13 = *MEMORY[0x277D85DE8];
  homesCopy = homes;
  v4 = _TVRCHomeKitLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "HomeKit informed us that it updated homes", &v9, 2u);
  }

  currentHome = [homesCopy currentHome];
  if (currentHome)
  {
    v6 = +[TVRCHMHomeObserver sharedInstance];
    [v6 setCurrentHome:currentHome];
  }

  else
  {
    v6 = _TVRCHomeKitLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      homes = [homesCopy homes];
      v9 = 138412546;
      v10 = homesCopy;
      v11 = 2112;
      v12 = homes;
      _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "No current home found for manager %@. All homes - %@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)homeManagerDidUpdateCurrentHome:(id)home
{
  v16 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = _TVRCHomeKitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "HomeKit informed us that it updated current home", &v12, 2u);
  }

  if (self->_homeManager == homeCopy)
  {
    currentHome = [(HMHomeManager *)homeCopy currentHome];
    if (currentHome)
    {
      v7 = +[TVRCHMHomeObserver sharedInstance];
      currentHome2 = [v7 currentHome];

      if (currentHome2 == currentHome)
      {
        goto LABEL_12;
      }

      v9 = +[TVRCHMHomeObserver sharedInstance];
      [v9 setCurrentHome:currentHome];
    }

    else
    {
      v9 = _TVRCHomeKitLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        homes = [(HMHomeManager *)homeCopy homes];
        v12 = 138412546;
        v13 = homeCopy;
        v14 = 2112;
        v15 = homes;
        _os_log_impl(&dword_26CF7F000, v9, OS_LOG_TYPE_DEFAULT, "No current home found for manager %@. All homes - %@", &v12, 0x16u);
      }
    }

    goto LABEL_12;
  }

  currentHome = _TVRCHomeKitLog();
  if (os_log_type_enabled(currentHome, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_26CF7F000, currentHome, OS_LOG_TYPE_DEFAULT, "HomeKit home manager does not match", &v12, 2u);
  }

LABEL_12:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_matchPointServiceAdded:(id)added
{
  v18 = *MEMORY[0x277D85DE8];
  object = [added object];
  v5 = _TVRCHomeKitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543618;
    v15 = objc_opt_class();
    v16 = 2112;
    v17 = object;
    v6 = v15;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ got notification that MatchPoint service added %@", &v14, 0x16u);
  }

  uniqueIdentifier = [object uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  v9 = [(NSMutableDictionary *)self->_deviceImplMap objectForKey:uUIDString];

  v10 = _TVRCHomeKitLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v14 = 138412290;
      v15 = object;
      _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "Found existing mapping for service: %@", &v14, 0xCu);
    }
  }

  else
  {
    if (v11)
    {
      v14 = 138412290;
      v15 = object;
      _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "Creating mapping for service %@", &v14, 0xCu);
    }

    v10 = [TVRCHMServiceWrapper wrapperWithService:object];
    v12 = [TVRCMatchPointDeviceImpl implWithService:v10];
    [(NSMutableDictionary *)self->_deviceImplMap setObject:v12 forKey:uUIDString];
    [(TVRCMatchPointDeviceQuery *)self _notifyAddedService:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_matchPointServiceRemoved:(id)removed
{
  v15 = *MEMORY[0x277D85DE8];
  object = [removed object];
  v5 = _TVRCHomeKitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = objc_opt_class();
    v13 = 2112;
    v14 = object;
    v6 = v12;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ got notification that MatchPoint service removed %@", &v11, 0x16u);
  }

  uniqueIdentifier = [object uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  v9 = [(NSMutableDictionary *)self->_deviceImplMap objectForKey:uUIDString];
  if (v9)
  {
    [(NSMutableDictionary *)self->_deviceImplMap removeObjectForKey:uUIDString];
    [(TVRCMatchPointDeviceQuery *)self _notifyRemovedService:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_matchPointServiceNameChanged:(id)changed
{
  v19 = *MEMORY[0x277D85DE8];
  object = [changed object];
  uniqueIdentifier = [object uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  v7 = [(NSMutableDictionary *)self->_deviceImplMap objectForKey:uUIDString];
  v8 = _TVRCHomeKitLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v9;
    name = [object name];
    v13 = 138543874;
    v14 = v9;
    v15 = 2112;
    v16 = object;
    v17 = 2112;
    v18 = name;
    _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ got notification that service updated name %@. New name : %@", &v13, 0x20u);
  }

  if (v7)
  {
    [(TVRCMatchPointDeviceQuery *)self _notifyRemovedService:v7];
    [(TVRCMatchPointDeviceQuery *)self _notifyAddedService:v7];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_notifyAddedService:(id)service
{
  v12 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = _TVRCHomeKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = serviceCopy;
      _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "Informing delegate we added MatchPoint service, %@", &v10, 0xCu);
    }

    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 addedDevice:serviceCopy];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_notifyRemovedService:(id)service
{
  v12 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = _TVRCHomeKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = serviceCopy;
      _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "Informing delegate we removed MatchPoint service, %@", &v10, 0xCu);
    }

    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 removedDevice:serviceCopy];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (TVRCServiceDeviceQueryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end