@interface TVRCHMHomeObserver
+ (id)sharedInstance;
- (BOOL)_checkErrorForLocallySuspendedAccessory:(id)a3;
- (TVRCHMHomeObserver)init;
- (void)_checkAccessoryReachabilityAndFetchTVServices:(id)a3 withCompletion:(id)a4;
- (void)_readCharacteristic:(id)a3 completion:(id)a4;
- (void)_updateAccessoriesForHome:(id)a3;
- (void)_updateServicesForAccessory:(id)a3;
- (void)accessory:(id)a3 didUpdateNameForService:(id)a4;
- (void)accessory:(id)a3 service:(id)a4 didUpdateValueForCharacteristic:(id)a5;
- (void)accessoryDidUpdateReachability:(id)a3;
- (void)accessoryDidUpdateReachableTransports:(id)a3;
- (void)accessoryDidUpdateServices:(id)a3;
- (void)home:(id)a3 didAddAccessory:(id)a4;
- (void)home:(id)a3 didRemoveAccessory:(id)a4;
- (void)setCurrentHome:(id)a3;
@end

@implementation TVRCHMHomeObserver

+ (id)sharedInstance
{
  if (sharedInstance___once != -1)
  {
    +[TVRCHMHomeObserver sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

uint64_t __36__TVRCHMHomeObserver_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance = objc_alloc_init(TVRCHMHomeObserver);

  return MEMORY[0x2821F96F8]();
}

- (TVRCHMHomeObserver)init
{
  v6.receiver = self;
  v6.super_class = TVRCHMHomeObserver;
  v2 = [(TVRCHMHomeObserver *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    serviceToAccessoryIDMapping = v2->_serviceToAccessoryIDMapping;
    v2->_serviceToAccessoryIDMapping = v3;
  }

  return v2;
}

- (void)setCurrentHome:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _TVRCHomeKitLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    currentHome = self->_currentHome;
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = currentHome;
    _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "Setting home to be observed as %{public}@. Previous home - %{public}@", &v10, 0x16u);
  }

  v8 = self->_currentHome;
  if (v8 != v5)
  {
    [(NSMutableDictionary *)self->_serviceToAccessoryIDMapping removeAllObjects];
    [(HMHome *)v5 setDelegate:self];
    [(HMHome *)self->_currentHome setDelegate:0];
    objc_storeStrong(&self->_currentHome, a3);
    v8 = self->_currentHome;
  }

  if (v8)
  {
    [(TVRCHMHomeObserver *)self _updateAccessoriesForHome:?];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didAddAccessory:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _TVRCHomeKitLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = v7;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "HomeKit informed us that it added accessory %{public}@, for home %{public}@", &v10, 0x16u);
  }

  [(TVRCHMHomeObserver *)self _updateServicesForAccessory:v7];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didRemoveAccessory:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _TVRCHomeKitLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543618;
    v17 = v7;
    v18 = 2114;
    v19 = v6;
    _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "HomeKit informed us that it removed accessory %{public}@ from home %{public}@", &v16, 0x16u);
  }

  v9 = [v7 deviceIdentifier];
  v10 = [(TVRCHMHomeObserver *)self serviceToAccessoryIDMapping];
  v11 = [v10 objectForKey:v9];

  if (v11)
  {
    v12 = _TVRCHomeKitLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = v7;
      _os_log_impl(&dword_26CF7F000, v12, OS_LOG_TYPE_DEFAULT, "Removing accessory %{public}@ from device list because it was removed from the Home", &v16, 0xCu);
    }

    [v7 setDelegate:0];
    v13 = [(TVRCHMHomeObserver *)self serviceToAccessoryIDMapping];
    [v13 removeObjectForKey:v9];

    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 postNotificationName:@"TVRCMatchPointServiceRemovedNotification" object:v11];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)accessoryDidUpdateReachability:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRCHomeKitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = v4;
    v9 = 1024;
    v10 = [v4 isReachable];
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "HomeKit informed us that it updated reachability for accessory %{public}@. Reachable %{BOOL}d", &v7, 0x12u);
  }

  [(TVRCHMHomeObserver *)self _updateServicesForAccessory:v4];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)accessoryDidUpdateReachableTransports:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 reachableTransports];
  v6 = _TVRCHomeKitLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = v4;
    v10 = 1024;
    v11 = v5 & 1;
    _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "HomeKit informed us that it updated Reachable Transports for accessory %{public}@. Has IP Transport - %{BOOL}d", &v8, 0x12u);
  }

  [(TVRCHMHomeObserver *)self _updateServicesForAccessory:v4];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)accessory:(id)a3 didUpdateNameForService:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = _TVRCHomeKitLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "HomeKit informed us that it updated service name for service %{public}@, of accessory %{public}@", &v10, 0x16u);
  }

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 postNotificationName:@"TVRCMatchPointServiceNameChangedNotification" object:v6];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)accessoryDidUpdateServices:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRCHomeKitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "HomeKit informed us that it updated services for accessory %{public}@", &v7, 0xCu);
  }

  [(TVRCHMHomeObserver *)self _updateServicesForAccessory:v4];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)accessory:(id)a3 service:(id)a4 didUpdateValueForCharacteristic:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = _TVRCHomeKitLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 characteristicType];
    v12 = [v9 localizedDescription];
    *buf = 138543874;
    v25 = v11;
    v26 = 2112;
    v27 = v12;
    v28 = 2114;
    v29 = v7;
    _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "HomeKit informed us that it updated characteristic: %{public}@ desc: %@ for accessory %{public}@", buf, 0x20u);
  }

  v13 = [v9 characteristicType];
  v14 = [v13 isEqualToString:*MEMORY[0x277CCF748]];

  if (v14)
  {
    v15 = _TVRCHomeKitLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v9 value];
      *buf = 138543362;
      v25 = v16;
      _os_log_impl(&dword_26CF7F000, v15, OS_LOG_TYPE_DEFAULT, "Active characteristic updated to: %{public}@", buf, 0xCu);
    }

    v17 = [v9 value];

    if (v17)
    {
      v18 = [MEMORY[0x277CCAB98] defaultCenter];
      v19 = [v9 value];
      v23 = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      [v18 postNotificationName:@"TVRCMatchPointServiceActiveStateChangedNotification" object:v8 userInfo:v20];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_updateAccessoriesForHome:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRCHomeKitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v4;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Updating accessories for home %{public}@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v4 accessories];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(TVRCHMHomeObserver *)self _updateServicesForAccessory:*(*(&v12 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_updateServicesForAccessory:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__TVRCHMHomeObserver__updateServicesForAccessory___block_invoke;
  v6[3] = &unk_279D82C98;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(TVRCHMHomeObserver *)self _checkAccessoryReachabilityAndFetchTVServices:v5 withCompletion:v6];
}

void __50__TVRCHMHomeObserver__updateServicesForAccessory___block_invoke(uint64_t a1, int a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [*(a1 + 32) deviceIdentifier];
  if (a2 && [v5 count])
  {
    [*(a1 + 32) setDelegate:*(a1 + 40)];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v21 = v5;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          v13 = [*(a1 + 40) serviceToAccessoryIDMapping];
          [v13 setObject:v12 forKey:v6];

          v14 = [MEMORY[0x277CCAB98] defaultCenter];
          [v14 postNotificationName:@"TVRCMatchPointServiceAddedNotification" object:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v9);
      v5 = v21;
    }
  }

  else
  {
    v15 = [*(a1 + 40) serviceToAccessoryIDMapping];
    v7 = [v15 objectForKey:v6];

    if (v7)
    {
      v16 = _TVRCHomeKitLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 32);
        *buf = 138543362;
        v27 = v17;
        _os_log_impl(&dword_26CF7F000, v16, OS_LOG_TYPE_DEFAULT, "Removing accessory because it is no longer reachable or does not have a service type of HMServiceTypeTelevision anymore, %{public}@", buf, 0xCu);
      }

      [*(a1 + 32) setDelegate:0];
      v18 = [*(a1 + 40) serviceToAccessoryIDMapping];
      [v18 removeObjectForKey:v6];

      v19 = [MEMORY[0x277CCAB98] defaultCenter];
      [v19 postNotificationName:@"TVRCMatchPointServiceRemovedNotification" object:v7];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_checkAccessoryReachabilityAndFetchTVServices:(id)a3 withCompletion:(id)a4
{
  v38 = self;
  v62 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v39 = a4;
  v40 = v5;
  v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v6 = [v5 services];
  v7 = [v6 countByEnumeratingWithState:&v50 objects:v61 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v51;
    v10 = *MEMORY[0x277CD0F20];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v51 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v50 + 1) + 8 * i);
        v13 = [v12 serviceType];
        v14 = [v13 isEqualToString:v10];

        if (v14)
        {
          v15 = _TVRCHomeKitLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v56 = v12;
            v57 = 2114;
            *v58 = v40;
            _os_log_impl(&dword_26CF7F000, v15, OS_LOG_TYPE_DEFAULT, "Found service %{public}@ with type HMServiceTypeTelevision in accessory %{public}@", buf, 0x16u);
          }

          [v41 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v50 objects:v61 count:16];
    }

    while (v8);
  }

  if (![v41 count])
  {
    v22 = _TVRCHomeKitLog();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_40;
    }

    *buf = 138543362;
    v56 = v40;
    v23 = "No Television service found in accessory %{public}@. Skipping it";
    goto LABEL_39;
  }

  v16 = [v40 isReachable];
  v17 = [v40 suspendedState];
  v18 = [v40 reachableTransports] & 1;
  v19 = _TVRCHomeKitLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v56 = v40;
    v57 = 1024;
    *v58 = v16;
    *&v58[4] = 1024;
    *&v58[6] = v18;
    v59 = 1024;
    v60 = v17 == 3;
    _os_log_impl(&dword_26CF7F000, v19, OS_LOG_TYPE_DEFAULT, "Accessory %{public}@ reachable: %{BOOL}d | locally reachable: %{BOOL}d | suspended: %{BOOL}d", buf, 0x1Eu);
  }

  if (v17 == 3 || (v18 ? (v20 = v16) : (v20 = 0), v20 == 1))
  {
    v21 = v39;
    if (v39)
    {
      (*(v39 + 2))(v39, 1, v41);
    }

    goto LABEL_42;
  }

  if (v16 && !v18)
  {
    v24 = _TVRCHomeKitLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v56 = v40;
      _os_log_impl(&dword_26CF7F000, v24, OS_LOG_TYPE_DEFAULT, "Accessory %{public}@ is reachable but does NOT contain ReachableTransportIP. Checking for BLE wake support...", buf, 0xCu);
    }

    v25 = [v41 lastObject];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v26 = [v25 characteristics];
    v27 = [v26 countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v47;
      v30 = *MEMORY[0x277CCF750];
      while (2)
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v47 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v32 = *(*(&v46 + 1) + 8 * j);
          v33 = [v32 characteristicType];
          v34 = [v33 isEqualToString:v30];

          if (v34)
          {
            v36 = _TVRCHomeKitLog();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v56 = v32;
              v57 = 2114;
              *v58 = v25;
              _os_log_impl(&dword_26CF7F000, v36, OS_LOG_TYPE_DEFAULT, "Found characteristic of type HMCharacteristicTypeActiveIdentifier, %{public}@ for service %{public}@. Reading value...", buf, 0x16u);
            }

            v42[0] = MEMORY[0x277D85DD0];
            v42[1] = 3221225472;
            v42[2] = __83__TVRCHMHomeObserver__checkAccessoryReachabilityAndFetchTVServices_withCompletion___block_invoke;
            v42[3] = &unk_279D82CC0;
            v43 = v25;
            v21 = v39;
            v45 = v39;
            v44 = v41;
            v37 = v25;
            [(TVRCHMHomeObserver *)v38 _readCharacteristic:v32 completion:v42];

            goto LABEL_42;
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v46 objects:v54 count:16];
        if (v28)
        {
          continue;
        }

        break;
      }
    }
  }

  v22 = _TVRCHomeKitLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v56 = v40;
    v23 = "Skipping accessory %{public}@ as it not reachable and not suspended";
LABEL_39:
    _os_log_impl(&dword_26CF7F000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 0xCu);
  }

LABEL_40:

  v21 = v39;
  if (v39)
  {
    (*(v39 + 2))(v39, 0, 0);
  }

LABEL_42:

  v35 = *MEMORY[0x277D85DE8];
}

uint64_t __83__TVRCHMHomeObserver__checkAccessoryReachabilityAndFetchTVServices_withCompletion___block_invoke(void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = _TVRCHomeKitLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v8 = 138543618;
    v9 = v5;
    v10 = 1024;
    v11 = a2;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Service %{public}@ locally reachable: %{BOOL}d ", &v8, 0x12u);
  }

  result = a1[6];
  if (result)
  {
    result = (*(result + 16))(result, a2, a1[5]);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_readCharacteristic:(id)a3 completion:(id)a4
{
  v33[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CD1988] readRequestWithCharacteristic:v6];
  v9 = MEMORY[0x277CD1978];
  v33[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
  v11 = [v9 characteristicBatchRequestWithReadRequests:v10];

  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __53__TVRCHMHomeObserver__readCharacteristic_completion___block_invoke;
  v22[3] = &unk_279D82CE8;
  v12 = v6;
  v26 = v27;
  v23 = v12;
  v24 = self;
  v13 = v7;
  v25 = v13;
  [v11 setCompletionHandler:v22];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __53__TVRCHMHomeObserver__readCharacteristic_completion___block_invoke_24;
  v19[3] = &unk_279D82D10;
  v19[4] = self;
  v21 = v27;
  v14 = v13;
  v20 = v14;
  [v11 setProgressHandler:v19];
  if (self->_currentHome)
  {
    v15 = _TVRCHomeKitLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      currentHome = self->_currentHome;
      *buf = 138412546;
      v30 = v11;
      v31 = 2114;
      v32 = currentHome;
      _os_log_impl(&dword_26CF7F000, v15, OS_LOG_TYPE_DEFAULT, "Performing Batch Characteristic Read Request %@, on home %{public}@", buf, 0x16u);
    }

    [(HMHome *)self->_currentHome performBatchCharacteristicRequest:v11];
  }

  else
  {
    v17 = _TVRCHomeKitLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [TVRCHMHomeObserver _readCharacteristic:v11 completion:v17];
    }
  }

  _Block_object_dispose(v27, 8);
  v18 = *MEMORY[0x277D85DE8];
}

void __53__TVRCHMHomeObserver__readCharacteristic_completion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _TVRCHomeKitLog();
  v5 = v4;
  if (!v3)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v10 = *(a1 + 32);
    v11 = *(*(*(a1 + 56) + 8) + 24);
    v14 = 138543618;
    v15 = v10;
    v16 = 1024;
    v17 = v11;
    v7 = "Batch Characteristic completion called with no error - %{public}@, localReachability=%{BOOL}d";
    v8 = v5;
    v9 = 18;
    goto LABEL_10;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __53__TVRCHMHomeObserver__readCharacteristic_completion___block_invoke_cold_1(a1, v3, v5);
  }

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 40) _checkErrorForLocallySuspendedAccessory:v3];
  }

  v5 = _TVRCHomeKitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(*(a1 + 56) + 8) + 24);
    v14 = 67109120;
    LODWORD(v15) = v6;
    v7 = "Batch Characteristic completion with error, final check to see if accessory is locally reachable, locallyReachable=%{BOOL}d";
    v8 = v5;
    v9 = 8;
LABEL_10:
    _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, v7, &v14, v9);
  }

LABEL_11:

  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, *(*(*(a1 + 56) + 8) + 24));
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __53__TVRCHMHomeObserver__readCharacteristic_completion___block_invoke_24(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = _TVRCHomeKitLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v19 = v8;
          _os_log_impl(&dword_26CF7F000, v9, OS_LOG_TYPE_DEFAULT, "Batch Characteristic Read progress handler called with response - %@", buf, 0xCu);
        }

        v10 = [v8 error];
        if ([*(a1 + 32) _checkErrorForLocallySuspendedAccessory:v10])
        {
          v11 = *(*(a1 + 48) + 8);
          if ((*(v11 + 24) & 1) == 0)
          {
            *(v11 + 24) = 1;
            v12 = *(a1 + 40);
            if (v12)
            {
              (*(v12 + 16))(v12, 1);
            }

            goto LABEL_16;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_checkErrorForLocallySuspendedAccessory:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = _TVRCHomeKitLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = v3;
      _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Checking error for locally suspended accessory %{public}@", &v13, 0xCu);
    }

    v5 = [v3 userInfo];
    v6 = [v5 valueForKey:*MEMORY[0x277CCA7E8]];

    v7 = _TVRCHomeKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(TVRCHMHomeObserver *)v6 _checkErrorForLocallySuspendedAccessory:v7];
    }

    v8 = [v6 domain];
    v9 = [v8 isEqualToString:*MEMORY[0x277CCFD28]];
    if (v9)
    {
      v10 = [v6 code];

      if (v10 != 2401)
      {
        LOBYTE(v9) = 0;
        goto LABEL_13;
      }

      v8 = _TVRCHomeKitLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [TVRCHMHomeObserver _checkErrorForLocallySuspendedAccessory:v8];
      }
    }

LABEL_13:
    goto LABEL_14;
  }

  LOBYTE(v9) = 1;
LABEL_14:

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_readCharacteristic:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_ERROR, "Could not perform Batch Characteristic Read Request %@ since no valid home was found", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __53__TVRCHMHomeObserver__readCharacteristic_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_26CF7F000, log, OS_LOG_TYPE_ERROR, "Batch Characteristic completion called %{public}@. Error : %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_checkErrorForLocallySuspendedAccessory:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_ERROR, "Underlying HomeKit Error - %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end