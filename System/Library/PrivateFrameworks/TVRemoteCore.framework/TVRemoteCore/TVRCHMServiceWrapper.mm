@interface TVRCHMServiceWrapper
+ (id)wrapperWithService:(id)service;
- (BOOL)supportsInfoKey;
- (NSString)description;
- (NSString)identifier;
- (NSString)model;
- (TVRCHMServiceWrapper)initWithService:(id)service;
- (TVRCHMServiceWrapperDelegate)delegate;
- (id)_televisionServiceForAccessory:(id)accessory;
- (int64_t)_remoteKeyForTVRCButton:(id)button;
- (void)_checkVolumeServicesForAccessory:(id)accessory;
- (void)_disconnectWithError:(id)error;
- (void)_readValueForCharacteristic:(id)characteristic completionHandler:(id)handler;
- (void)_sendMuteKey;
- (void)_sendRemoteKey:(int64_t)key;
- (void)_sendVolumeKey:(BOOL)key;
- (void)_sendWakeKey;
- (void)_serviceActiveStateChanged:(id)changed;
- (void)_serviceNameChanged:(id)changed;
- (void)_serviceRemoved:(id)removed;
- (void)_setCharacteristicsForService:(id)service;
- (void)_startObservingServiceNotifications;
- (void)_stopObservingServiceNotifications;
- (void)_togglePowerButton;
- (void)_updateMuteState;
- (void)_updatePowerState;
- (void)_writeValue:(id)value toCharacteristic:(id)characteristic;
- (void)connect;
- (void)sendButtonEvent:(id)event;
@end

@implementation TVRCHMServiceWrapper

+ (id)wrapperWithService:(id)service
{
  serviceCopy = service;
  v4 = [[TVRCHMServiceWrapper alloc] initWithService:serviceCopy];

  return v4;
}

- (TVRCHMServiceWrapper)initWithService:(id)service
{
  serviceCopy = service;
  v12.receiver = self;
  v12.super_class = TVRCHMServiceWrapper;
  v6 = [(TVRCHMServiceWrapper *)&v12 init];
  v7 = v6;
  if (serviceCopy && v6)
  {
    objc_storeStrong(&v6->_service, service);
    accessory = [serviceCopy accessory];
    accessory = v7->_accessory;
    v7->_accessory = accessory;

    v7->_connected = 0;
    v7->_connectionState = 0;
    accessory2 = [serviceCopy accessory];
    [(TVRCHMServiceWrapper *)v7 _checkVolumeServicesForAccessory:accessory2];

    [(TVRCHMServiceWrapper *)v7 _setCharacteristicsForService:serviceCopy];
  }

  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  name = [(TVRCHMServiceWrapper *)self name];
  [v3 appendString:name withName:@"name"];

  model = [(TVRCHMServiceWrapper *)self model];
  [v3 appendString:model withName:@"model"];

  v6 = [v3 appendBool:-[TVRCHMServiceWrapper connected](self withName:{"connected"), @"connected"}];
  v7 = [v3 appendObject:self->_service withName:@"underlyingHMService"];
  identifier = [(TVRCHMServiceWrapper *)self identifier];
  [v3 appendString:identifier withName:@"identifier"];

  build = [v3 build];

  return build;
}

- (NSString)identifier
{
  accessory = [(HMService *)self->_service accessory];
  deviceIdentifier = [accessory deviceIdentifier];

  return deviceIdentifier;
}

- (NSString)model
{
  accessory = [(HMService *)self->_service accessory];
  category = [accessory category];
  categoryType = [category categoryType];

  if ([categoryType isEqualToString:*MEMORY[0x277CCE930]])
  {
    v5 = TVRCDeviceModelTypeAirplaySetTopBox;
  }

  else
  {
    v6 = [categoryType isEqualToString:*MEMORY[0x277CCE938]];
    v5 = TVRCDeviceModelTypeAirplayTelevision;
    if (v6)
    {
      v5 = TVRCDeviceModelTypeAirplayStick;
    }
  }

  v7 = *v5;
  v8 = *v5;

  return v7;
}

- (void)connect
{
  v19 = *MEMORY[0x277D85DE8];
  if (!self->_connected)
  {
    self->_connectionState = 1;
    v3 = _TVRCHomeKitLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      service = self->_service;
      v17 = 138412290;
      v18 = service;
      _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Attempting to connect service %@", &v17, 0xCu);
    }

    accessory = [(HMService *)self->_service accessory];
    home = [(HMService *)accessory home];
    home = self->_home;
    self->_home = home;

    v8 = _TVRCHomeKitLog();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (accessory)
    {
      if (v9)
      {
        v17 = 138412290;
        v18 = accessory;
        _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Found parent accessory %@", &v17, 0xCu);
      }

      isReachable = [(HMService *)accessory isReachable];
      v11 = _TVRCHomeKitLog();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (isReachable)
      {
        if (v12)
        {
          v17 = 138412290;
          v18 = accessory;
          _os_log_impl(&dword_26CF7F000, v11, OS_LOG_TYPE_DEFAULT, "Accessory %@ is reachable and local. Informing delegate that we can connect", &v17, 0xCu);
        }

        self->_connectionState = 2;
        self->_connected = 1;
        [(TVRCHMServiceWrapper *)self _startObservingServiceNotifications];
        [(TVRCHMServiceWrapper *)self _updatePowerState];
        [(TVRCHMServiceWrapper *)self _updateMuteState];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained connectedToService:self];
        goto LABEL_18;
      }

      if (v12)
      {
        v17 = 138412290;
        v18 = accessory;
        _os_log_impl(&dword_26CF7F000, v11, OS_LOG_TYPE_DEFAULT, "Accessory %@ is not reachable or local. Informing delegate that we disconnected", &v17, 0xCu);
      }

      v15 = 300;
    }

    else
    {
      if (v9)
      {
        v14 = self->_service;
        v17 = 138412290;
        v18 = v14;
        _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Could not find accessory for service %@. Informing delegate that we disconnected", &v17, 0xCu);
      }

      v15 = 301;
    }

    WeakRetained = TVRCMakeError(v15, 0);
    [(TVRCHMServiceWrapper *)self _disconnectWithError:WeakRetained];
LABEL_18:
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)sendButtonEvent:(id)event
{
  eventCopy = event;
  eventType = [eventCopy eventType];
  if (eventType == 2)
  {
    v7 = [(TVRCHMServiceWrapper *)self _remoteKeyForTVRCButton:eventCopy];
    if (v7 != -1)
    {
      [(TVRCHMServiceWrapper *)self _sendRemoteKey:v7];
    }

    button = [eventCopy button];
    buttonType = [button buttonType];

    if (![(TVRCHMServiceWrapper *)self isTVAwake]&& buttonType != 30)
    {
      [(TVRCHMServiceWrapper *)self _sendWakeKey];
    }

    if (buttonType == 29)
    {
      [(TVRCHMServiceWrapper *)self _sendMuteKey];
    }

    else if (buttonType == 30)
    {
      [(TVRCHMServiceWrapper *)self _togglePowerButton];
    }
  }

  else if (eventType == 1)
  {
    button2 = [eventCopy button];
    buttonType2 = [button2 buttonType];

    if ((buttonType2 & 0xFFFFFFFFFFFFFFFELL) == 0xA)
    {
      [(TVRCHMServiceWrapper *)self _sendVolumeKey:buttonType2 == 10];
    }
  }
}

- (BOOL)supportsInfoKey
{
  metadata = [(HMCharacteristic *)self->_serviceCharacteristic metadata];
  validValues = [metadata validValues];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:15];
  v5 = [validValues containsObject:v4];

  return v5;
}

- (void)_startObservingServiceNotifications
{
  if (self->_service)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__serviceNameChanged_ name:@"TVRCMatchPointServiceNameChangedNotification" object:self->_service];
    [defaultCenter addObserver:self selector:sel__serviceRemoved_ name:@"TVRCMatchPointServiceRemovedNotification" object:self->_service];
    [defaultCenter addObserver:self selector:sel__serviceActiveStateChanged_ name:@"TVRCMatchPointServiceActiveStateChangedNotification" object:self->_service];
  }
}

- (void)_stopObservingServiceNotifications
{
  if (self->_service)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:@"TVRCMatchPointServiceNameChangedNotification" object:self->_service];
    [defaultCenter removeObserver:self name:@"TVRCMatchPointServiceRemovedNotification" object:self->_service];
  }
}

- (void)_serviceNameChanged:(id)changed
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = _TVRCHomeKitLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    service = self->_service;
    v7 = v5;
    name = [(TVRCHMServiceWrapper *)self name];
    v12 = 138412802;
    v13 = v5;
    v14 = 2112;
    v15 = service;
    v16 = 2112;
    v17 = name;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "%@ got notification that services updated name %@. New name : %@", &v12, 0x20u);
  }

  if (self->_connected)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    name2 = [(TVRCHMServiceWrapper *)self name];
    [WeakRetained service:self updatedName:name2];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_serviceRemoved:(id)removed
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = _TVRCHomeKitLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    service = self->_service;
    v10 = 138543618;
    v11 = v5;
    v12 = 2112;
    v13 = service;
    v7 = v5;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ got notification that services went away %@. Disconnecting if still connected", &v10, 0x16u);
  }

  if (self->_connectionState)
  {
    v8 = TVRCMakeError(300, 0);
    [(TVRCHMServiceWrapper *)self _disconnectWithError:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_serviceActiveStateChanged:(id)changed
{
  v9 = *MEMORY[0x277D85DE8];
  userInfo = [changed userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"TVRCMatchPointServiceActiveStateKey"];

  v5 = _TVRCHomeKitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Received notification that activeState changed to %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_disconnectWithError:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = _TVRCHomeKitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    service = self->_service;
    v10 = 138412546;
    v11 = service;
    v12 = 2114;
    v13 = errorCopy;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to disconnect service %@ with error %{public}@", &v10, 0x16u);
  }

  if (self->_connected)
  {
    [(TVRCHMServiceWrapper *)self _stopObservingServiceNotifications];
  }

  *&self->_connected = 0;
  self->_connectionState = 0;
  home = self->_home;
  self->_home = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained disconnectedFromService:self error:errorCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_sendRemoteKey:(int64_t)key
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = _TVRCHomeKitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    service = self->_service;
    v10 = 134218242;
    keyCopy = key;
    v12 = 2112;
    v13 = service;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to send key of type %ld to service %@", &v10, 0x16u);
  }

  if (self->_serviceCharacteristic)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:key];
    [(TVRCHMServiceWrapper *)self _writeValue:v7 toCharacteristic:self->_serviceCharacteristic];
  }

  else
  {
    v7 = _TVRCHomeKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_service;
      v10 = 138412290;
      keyCopy = v8;
      _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "No characteristic of type HMCharacteristicRemoteKey exists for service %@", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_sendWakeKey
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _TVRCHomeKitLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    service = self->_service;
    v8 = 138412290;
    v9 = service;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Sending wake key to service %@", &v8, 0xCu);
  }

  if (self->_activeCharacteristic)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    [(TVRCHMServiceWrapper *)self _writeValue:v5 toCharacteristic:self->_activeCharacteristic];
  }

  else
  {
    v5 = _TVRCHomeKitLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = self->_service;
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "No characteristic of type HMCharacteristicTypeActive exists for service %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_updatePowerState
{
  if (self->_activeCharacteristic)
  {
    v3 = _TVRCHomeKitLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Reading value for HMCharacteristicTypeActive", buf, 2u);
    }

    objc_initWeak(buf, self);
    activeCharacteristic = self->_activeCharacteristic;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __41__TVRCHMServiceWrapper__updatePowerState__block_invoke;
    v5[3] = &unk_279D82D38;
    objc_copyWeak(&v6, buf);
    [(HMCharacteristic *)activeCharacteristic readValueWithCompletionHandler:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(buf);
  }
}

void __41__TVRCHMServiceWrapper__updatePowerState__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained activeCharacteristic];
    v7 = [v6 localizedDescription];

    if (v3)
    {
      v8 = _TVRCHomeKitLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __41__TVRCHMServiceWrapper__updatePowerState__block_invoke_cold_1();
      }
    }

    else
    {
      v9 = [v5 activeCharacteristic];
      v8 = [v9 value];

      [v5 setCurrentActiveState:{-[NSObject intValue](v8, "intValue")}];
      v10 = _TVRCHomeKitLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134217984;
        v13 = [v5 currentActiveState];
        _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "Received value for HMCharacteristicTypeActive. Setting currentActiveState to %ld", &v12, 0xCu);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_updateMuteState
{
  if (self->_muteCharacteristic)
  {
    v3 = _TVRCHomeKitLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Reading value for HMCharacteristicTypeMute", buf, 2u);
    }

    objc_initWeak(buf, self);
    muteCharacteristic = self->_muteCharacteristic;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __40__TVRCHMServiceWrapper__updateMuteState__block_invoke;
    v5[3] = &unk_279D82D38;
    objc_copyWeak(&v6, buf);
    [(HMCharacteristic *)muteCharacteristic readValueWithCompletionHandler:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(buf);
  }
}

void __40__TVRCHMServiceWrapper__updateMuteState__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained activeCharacteristic];
    v7 = [v6 localizedDescription];

    if (v3)
    {
      v8 = _TVRCHomeKitLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __41__TVRCHMServiceWrapper__updatePowerState__block_invoke_cold_1();
      }
    }

    else
    {
      v9 = [v5 muteCharacteristic];
      v8 = [v9 value];

      [v5 setMuteEnabled:{-[NSObject BOOLValue](v8, "BOOLValue")}];
      v10 = _TVRCHomeKitLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12[0] = 67109120;
        v12[1] = [v5 muteEnabled];
        _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "Received value for HMCharacteristicTypeMute. Setting muteEnabled to %{BOOL}d", v12, 8u);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_togglePowerButton
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = _TVRCHomeKitLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    service = self->_service;
    *buf = 138412290;
    v15 = service;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Toggling power for service %@", buf, 0xCu);
  }

  if (self->_activeCharacteristic)
  {
    isTVAwake = [(TVRCHMServiceWrapper *)self isTVAwake];
    objc_initWeak(buf, self);
    v6 = !isTVAwake;
    activeCharacteristic = self->_activeCharacteristic;
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __42__TVRCHMServiceWrapper__togglePowerButton__block_invoke;
    v12[3] = &unk_279D82D60;
    objc_copyWeak(v13, buf);
    v13[1] = v6;
    [(HMCharacteristic *)activeCharacteristic writeValue:v8 completionHandler:v12];

    objc_destroyWeak(v13);
    objc_destroyWeak(buf);
  }

  else
  {
    v9 = _TVRCHomeKitLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_service;
      *buf = 138412290;
      v15 = v10;
      _os_log_impl(&dword_26CF7F000, v9, OS_LOG_TYPE_DEFAULT, "No characteristic of type HMCharacteristicTypeActive exists for service %@", buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __42__TVRCHMServiceWrapper__togglePowerButton__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = _TVRCHomeKitLog();
    v6 = v5;
    if (v3)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __42__TVRCHMServiceWrapper__togglePowerButton__block_invoke_cold_1();
      }
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
        v8 = [WeakRetained activeCharacteristic];
        v9 = [v8 localizedDescription];
        v11 = 138412546;
        v12 = v7;
        v13 = 2112;
        v14 = v9;
        _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "Successfully wrote value %@ to characteristic %@", &v11, 0x16u);
      }

      [WeakRetained setCurrentActiveState:*(a1 + 40)];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_sendVolumeKey:(BOOL)key
{
  keyCopy = key;
  v15 = *MEMORY[0x277D85DE8];
  v5 = _TVRCHomeKitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    service = self->_service;
    if (keyCopy)
    {
      v6 = @"YES";
    }

    v11 = 138412546;
    v12 = service;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Sending volume key to service %@ with increment %{public}@", &v11, 0x16u);
  }

  if (self->_volumeSelectorCharacteristic)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:!keyCopy];
    [(TVRCHMServiceWrapper *)self _writeValue:v8 toCharacteristic:self->_volumeSelectorCharacteristic];
  }

  else
  {
    v8 = _TVRCHomeKitLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_service;
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "No characteristic of type HMCharacteristicTypeVolumeSelector exists for service %@", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_sendMuteKey
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = _TVRCHomeKitLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    service = self->_service;
    *buf = 138412290;
    v16 = service;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Sending mute key to service %@", buf, 0xCu);
  }

  if (self->_muteCharacteristic)
  {
    muteEnabled = [(TVRCHMServiceWrapper *)self muteEnabled];
    objc_initWeak(buf, self);
    v6 = !muteEnabled;
    muteCharacteristic = self->_muteCharacteristic;
    v8 = [MEMORY[0x277CCABB0] numberWithBool:v6];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __36__TVRCHMServiceWrapper__sendMuteKey__block_invoke;
    v12[3] = &unk_279D82D88;
    objc_copyWeak(&v13, buf);
    v14 = v6;
    [(HMCharacteristic *)muteCharacteristic writeValue:v8 completionHandler:v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  else
  {
    v9 = _TVRCHomeKitLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_service;
      *buf = 138412290;
      v16 = v10;
      _os_log_impl(&dword_26CF7F000, v9, OS_LOG_TYPE_DEFAULT, "No characteristic of type HMCharacteristicTypeMute exists for service %@", buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __36__TVRCHMServiceWrapper__sendMuteKey__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = _TVRCHomeKitLog();
    v6 = v5;
    if (v3)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __36__TVRCHMServiceWrapper__sendMuteKey__block_invoke_cold_1();
      }
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
        v8 = [WeakRetained muteCharacteristic];
        v9 = [v8 localizedDescription];
        v11 = 138412546;
        v12 = v7;
        v13 = 2112;
        v14 = v9;
        _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "Successfully wrote value %@ to characteristic %@", &v11, 0x16u);
      }

      [WeakRetained setMuteEnabled:*(a1 + 40)];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (int64_t)_remoteKeyForTVRCButton:(id)button
{
  button = [button button];
  buttonType = [button buttonType];

  v5 = -1;
  v6 = 9;
  v7 = 10;
  v8 = 15;
  if (buttonType != 25)
  {
    v8 = -1;
  }

  if (buttonType != 24)
  {
    v7 = v8;
  }

  if (buttonType != 23)
  {
    v6 = v7;
  }

  v9 = 6;
  v10 = 7;
  if (buttonType != 15)
  {
    v10 = -1;
  }

  if (buttonType != 14)
  {
    v9 = v10;
  }

  if (buttonType <= 22)
  {
    v6 = v9;
  }

  v11 = 4;
  v12 = 5;
  if (buttonType != 13)
  {
    v12 = -1;
  }

  if (buttonType != 12)
  {
    v11 = v12;
  }

  if (buttonType == 5)
  {
    v5 = 11;
  }

  if (buttonType == 1)
  {
    v5 = 8;
  }

  if (buttonType > 11)
  {
    v5 = v11;
  }

  if (buttonType <= 13)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

- (id)_televisionServiceForAccessory:(id)accessory
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  services = [accessory services];
  v4 = [services countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    v7 = *MEMORY[0x277CD0F20];
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(services);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        serviceType = [v9 serviceType];
        v11 = [serviceType isEqualToString:v7];

        if (v11)
        {
          v12 = v9;
          goto LABEL_11;
        }
      }

      v5 = [services countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)_setCharacteristicsForService:(id)service
{
  v33 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  serviceCopy = service;
  characteristics = [serviceCopy characteristics];
  v5 = [characteristics countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    v8 = *MEMORY[0x277CCFA10];
    v9 = *MEMORY[0x277CCF748];
    do
    {
      v10 = 0;
      do
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(characteristics);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        v12 = _TVRCHomeKitLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          localizedDescription = [v11 localizedDescription];
          *buf = 138543618;
          v29 = localizedDescription;
          v30 = 2112;
          v31 = serviceCopy;
          _os_log_debug_impl(&dword_26CF7F000, v12, OS_LOG_TYPE_DEBUG, "Found characteristic, %{public}@ for service %@", buf, 0x16u);
        }

        characteristicType = [v11 characteristicType];
        v14 = [characteristicType isEqualToString:v8];

        if (v14)
        {
          v15 = _TVRCHomeKitLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v29 = v11;
            v30 = 2112;
            v31 = serviceCopy;
            _os_log_impl(&dword_26CF7F000, v15, OS_LOG_TYPE_DEFAULT, "Found characteristic of type HMCharacteristicRemoteKey, %{public}@ for service %@", buf, 0x16u);
          }

          p_serviceCharacteristic = &self->_serviceCharacteristic;
        }

        else
        {
          characteristicType2 = [v11 characteristicType];
          v18 = [characteristicType2 isEqualToString:v9];

          if (!v18)
          {
            goto LABEL_17;
          }

          v19 = _TVRCHomeKitLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v29 = v11;
            v30 = 2112;
            v31 = serviceCopy;
            _os_log_impl(&dword_26CF7F000, v19, OS_LOG_TYPE_DEFAULT, "Found characteristic of type HMCharacteristicTypeActive, %{public}@ for service %@", buf, 0x16u);
          }

          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __54__TVRCHMServiceWrapper__setCharacteristicsForService___block_invoke;
          v23[3] = &unk_279D82DB0;
          v23[4] = v11;
          [v11 enableNotification:1 completionHandler:v23];
          p_serviceCharacteristic = &self->_activeCharacteristic;
        }

        objc_storeStrong(p_serviceCharacteristic, v11);
LABEL_17:
        ++v10;
      }

      while (v6 != v10);
      v6 = [characteristics countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v6);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __54__TVRCHMServiceWrapper__setCharacteristicsForService___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _TVRCHomeKitLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __54__TVRCHMServiceWrapper__setCharacteristicsForService___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Enabled notifications for HMCharacteristicTypeActive", v5, 2u);
  }
}

- (void)_checkVolumeServicesForAccessory:(id)accessory
{
  v52 = *MEMORY[0x277D85DE8];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  services = [accessory services];
  v5 = [services countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v43;
    v8 = *MEMORY[0x277CD0EF0];
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v43 != v7)
      {
        objc_enumerationMutation(services);
      }

      v10 = *(*(&v42 + 1) + 8 * v9);
      serviceType = [v10 serviceType];
      v12 = [serviceType isEqualToString:v8];

      if (v12)
      {
        break;
      }

      if (v6 == ++v9)
      {
        v6 = [services countByEnumeratingWithState:&v42 objects:v51 count:16];
        if (!v6)
        {
          goto LABEL_32;
        }

        goto LABEL_3;
      }
    }

    v13 = v10;

    if (v13)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v35 = v13;
      characteristics = [v13 characteristics];
      v15 = [characteristics countByEnumeratingWithState:&v38 objects:v50 count:16];
      if (!v15)
      {
        goto LABEL_31;
      }

      v16 = v15;
      v17 = *v39;
      v18 = *MEMORY[0x277CCFBA8];
      v19 = *MEMORY[0x277CCFBB0];
      v33 = v37;
      v34 = *MEMORY[0x277CCF980];
      while (1)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v39 != v17)
          {
            objc_enumerationMutation(characteristics);
          }

          v21 = *(*(&v38 + 1) + 8 * i);
          characteristicType = [v21 characteristicType];
          v23 = [characteristicType isEqualToString:v18];

          if (v23)
          {
            v24 = _TVRCHomeKitLog();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v47 = v21;
              v48 = 2112;
              v49 = v35;
              _os_log_impl(&dword_26CF7F000, v24, OS_LOG_TYPE_DEFAULT, "Found characteristic of type HMCharacteristicTypeVolume, %{public}@ for service %@", buf, 0x16u);
            }

            self->_volumeControlSupported = 1;
          }

          else
          {
            characteristicType2 = [v21 characteristicType];
            v26 = [characteristicType2 isEqualToString:v19];

            if (v26)
            {
              v27 = _TVRCHomeKitLog();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                v47 = v21;
                v48 = 2112;
                v49 = v35;
                _os_log_impl(&dword_26CF7F000, v27, OS_LOG_TYPE_DEFAULT, "Found characteristic of type HMCharacteristicTypeVolumeSelector, %{public}@ for service %@", buf, 0x16u);
              }

              self->_volumeControlSupported = 1;
              p_volumeSelectorCharacteristic = &self->_volumeSelectorCharacteristic;
            }

            else
            {
              characteristicType3 = [v21 characteristicType];
              v30 = [characteristicType3 isEqualToString:v34];

              if (!v30)
              {
                continue;
              }

              v31 = _TVRCHomeKitLog();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                v47 = v21;
                v48 = 2112;
                v49 = v35;
                _os_log_impl(&dword_26CF7F000, v31, OS_LOG_TYPE_DEFAULT, "Found characteristic of type HMCharacteristicTypeMute, %{public}@ for service %@", buf, 0x16u);
              }

              v36[0] = MEMORY[0x277D85DD0];
              v36[1] = 3221225472;
              v37[0] = __57__TVRCHMServiceWrapper__checkVolumeServicesForAccessory___block_invoke;
              v37[1] = &unk_279D82DB0;
              v37[2] = v21;
              [v21 enableNotification:1 completionHandler:v36];
              p_volumeSelectorCharacteristic = &self->_muteCharacteristic;
            }

            objc_storeStrong(p_volumeSelectorCharacteristic, v21);
          }
        }

        v16 = [characteristics countByEnumeratingWithState:&v38 objects:v50 count:16];
        if (!v16)
        {
LABEL_31:

          services = v35;
          goto LABEL_32;
        }
      }
    }
  }

  else
  {
LABEL_32:
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __57__TVRCHMServiceWrapper__checkVolumeServicesForAccessory___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _TVRCHomeKitLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __54__TVRCHMServiceWrapper__setCharacteristicsForService___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Enabled notifications for HMCharacteristicTypeMute", v5, 2u);
  }
}

- (void)_writeValue:(id)value toCharacteristic:(id)characteristic
{
  v29[1] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  characteristicCopy = characteristic;
  v8 = [MEMORY[0x277CD19B0] writeRequestWithCharacteristic:characteristicCopy value:valueCopy];
  v9 = MEMORY[0x277CD1978];
  v29[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v11 = [v9 characteristicBatchRequestWithWriteRequests:v10];

  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __53__TVRCHMServiceWrapper__writeValue_toCharacteristic___block_invoke;
  v22 = &unk_279D82DD8;
  v12 = characteristicCopy;
  v23 = v12;
  v13 = valueCopy;
  v24 = v13;
  [v11 setCompletionHandler:&v19];
  [v11 setProgressHandler:{&__block_literal_global_5, v19, v20, v21, v22}];
  home = self->_home;
  v15 = _TVRCHomeKitLog();
  v16 = v15;
  if (home)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = self->_home;
      *buf = 138412546;
      v26 = v11;
      v27 = 2112;
      v28 = v17;
      _os_log_impl(&dword_26CF7F000, v16, OS_LOG_TYPE_DEFAULT, "Performing Batch Characteristic Write Request %@, on home %@", buf, 0x16u);
    }

    [(HMHome *)self->_home performBatchCharacteristicRequest:v11];
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [TVRCHMServiceWrapper _writeValue:v11 toCharacteristic:v16];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __53__TVRCHMServiceWrapper__writeValue_toCharacteristic___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _TVRCHomeKitLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __53__TVRCHMServiceWrapper__writeValue_toCharacteristic___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) localizedDescription];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Successfully wrote value %@ to characteristic %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __53__TVRCHMServiceWrapper__writeValue_toCharacteristic___block_invoke_32(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _TVRCHomeKitLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Batch Characteristic Write progress handler called - %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_readValueForCharacteristic:(id)characteristic completionHandler:(id)handler
{
  v29[1] = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  handlerCopy = handler;
  v8 = [MEMORY[0x277CD1988] readRequestWithCharacteristic:characteristicCopy];
  v9 = MEMORY[0x277CD1978];
  v29[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v11 = [v9 characteristicBatchRequestWithReadRequests:v10];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __70__TVRCHMServiceWrapper__readValueForCharacteristic_completionHandler___block_invoke;
  v23[3] = &unk_279D82E20;
  v12 = handlerCopy;
  v24 = v12;
  [v11 setProgressHandler:v23];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __70__TVRCHMServiceWrapper__readValueForCharacteristic_completionHandler___block_invoke_35;
  v20[3] = &unk_279D82E48;
  v13 = characteristicCopy;
  v21 = v13;
  v14 = v12;
  v22 = v14;
  [v11 setCompletionHandler:v20];
  home = self->_home;
  v16 = _TVRCHomeKitLog();
  v17 = v16;
  if (home)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = self->_home;
      *buf = 138412546;
      v26 = v11;
      v27 = 2112;
      v28 = v18;
      _os_log_impl(&dword_26CF7F000, v17, OS_LOG_TYPE_DEFAULT, "Performing Batch Characteristic Read Request %@, on home %@", buf, 0x16u);
    }

    [(HMHome *)self->_home performBatchCharacteristicRequest:v11];
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [TVRCHMHomeObserver _readCharacteristic:v11 completion:v17];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __70__TVRCHMServiceWrapper__readValueForCharacteristic_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = _TVRCHomeKitLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [v7 value];
          v10 = [v7 request];
          v11 = [v10 characteristic];
          v12 = [v11 localizedDescription];
          *buf = 138412546;
          v20 = v9;
          v21 = 2112;
          v22 = v12;
          _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Received value %@ for read request on characteristic %@", buf, 0x16u);
        }

        (*(*(a1 + 32) + 16))();
      }

      v4 = [obj countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v4);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __70__TVRCHMServiceWrapper__readValueForCharacteristic_completionHandler___block_invoke_35(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _TVRCHomeKitLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __70__TVRCHMServiceWrapper__readValueForCharacteristic_completionHandler___block_invoke_35_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (TVRCHMServiceWrapperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __41__TVRCHMServiceWrapper__updatePowerState__block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1(&dword_26CF7F000, v0, v1, "Failed to read to chacratersitic %@. Error : %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

void __42__TVRCHMServiceWrapper__togglePowerButton__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  v11 = *MEMORY[0x277D85DE8];
  v1 = [v0 activeCharacteristic];
  v2 = [v1 localizedDescription];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0(&dword_26CF7F000, v3, v4, "Failed to write to characteristic %@. Error : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __36__TVRCHMServiceWrapper__sendMuteKey__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  v11 = *MEMORY[0x277D85DE8];
  v1 = [v0 muteCharacteristic];
  v2 = [v1 localizedDescription];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0(&dword_26CF7F000, v3, v4, "Failed to write to characteristic %@. Error : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __54__TVRCHMServiceWrapper__setCharacteristicsForService___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  v0 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_4(v1) localizedDescription];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0(&dword_26CF7F000, v3, v4, "Failed to enable notification for characteristic %@. Error : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_writeValue:(uint64_t)a1 toCharacteristic:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_ERROR, "Could not perform Batch Characteristic Write Request %@ since no valid home was found", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __53__TVRCHMServiceWrapper__writeValue_toCharacteristic___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  v0 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_4(v1) localizedDescription];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0(&dword_26CF7F000, v3, v4, "Failed to write to characteristic %@. Error : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __70__TVRCHMServiceWrapper__readValueForCharacteristic_completionHandler___block_invoke_35_cold_1()
{
  OUTLINED_FUNCTION_3();
  v0 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_4(v1) localizedDescription];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0(&dword_26CF7F000, v3, v4, "Failed to read to chacratersitic %@. Error : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

@end