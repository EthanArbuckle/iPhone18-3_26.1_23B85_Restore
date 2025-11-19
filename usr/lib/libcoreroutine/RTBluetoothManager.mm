@interface RTBluetoothManager
+ (BOOL)supportsNotificationName:(id)a3;
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)carKitConnectionStateToString:(int64_t)a3;
- (void)_fetchCarKitConnectedStateWithHandler:(id)a3;
- (void)fetchCarKitConnectedStateWithHandler:(id)a3;
- (void)internalAddObserver:(id)a3 name:(id)a4;
- (void)internalRemoveObserver:(id)a3 name:(id)a4;
@end

@implementation RTBluetoothManager

void __55__RTBluetoothManager_BluetoothManager_bluetoothManager__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CF3248];
  v2 = [*(a1 + 32) queue];
  [v1 setSharedInstanceQueue:v2];
}

void __56__RTBluetoothManager_BluetoothManager_updateConnections__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = [*(a1 + 32) bluetoothManager];
  v4 = [v3 connectedDevices];
  v5 = [v2 setWithArray:v4];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityBluetooth);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v17 = [*(a1 + 32) connectedDevices];
      *buf = 134217984;
      v24 = [v17 count];
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "%lu previously connected devices", buf, 0xCu);
    }

    v7 = [*(a1 + 32) connectedDevices];
    [v7 enumerateObjectsUsingBlock:&__block_literal_global_74];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityBluetooth);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v18 = [v5 count];
        *buf = 134217984;
        v24 = v18;
        _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "%lu newly connected devices", buf, 0xCu);
      }
    }

    [v5 enumerateObjectsUsingBlock:&__block_literal_global_7];
  }

  v9 = [*(a1 + 32) connectedDevices];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [*(a1 + 32) connectedDevices];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __56__RTBluetoothManager_BluetoothManager_updateConnections__block_invoke_8;
    v20[3] = &unk_2788CC2F8;
    v12 = v5;
    v13 = *(a1 + 32);
    v21 = v12;
    v22 = v13;
    [v11 enumerateObjectsUsingBlock:v20];
  }

  if ([v5 count])
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __56__RTBluetoothManager_BluetoothManager_updateConnections__block_invoke_10;
    v19[3] = &unk_2788CC320;
    v19[4] = *(a1 + 32);
    [v5 enumerateObjectsUsingBlock:v19];
  }

  [*(a1 + 32) setConnectedDevices:v5];
  v14 = *(a1 + 32);
  v15 = [v14 bluetoothManager];
  v16 = [v15 connectedDevices];
  [*(a1 + 32) setCarKitConnectionState:{objc_msgSend(v14, "getCarKitConnectionStateFromConnectedDevices:", v16)}];
}

void __56__RTBluetoothManager_BluetoothManager_updateConnections__block_invoke_3(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityBluetooth);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_debug_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEBUG, "%@", &v4, 0xCu);
    }
  }
}

void __56__RTBluetoothManager_BluetoothManager_updateConnections__block_invoke_5(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityBluetooth);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_debug_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEBUG, "%@", &v4, 0xCu);
    }
  }
}

void __56__RTBluetoothManager_BluetoothManager_updateConnections__block_invoke_8(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([*(a1 + 32) containsObject:v3] & 1) == 0 && objc_msgSend(v3, "type") == 17)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityBluetooth);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = v3;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "handsfree device disconnected, %@", &v9, 0xCu);
      }
    }

    v5 = [RTBluetoothManagerNotificationDisconnected alloc];
    v6 = [v3 name];
    v7 = [v3 address];
    v8 = [(RTBluetoothManagerNotificationDisconnected *)v5 initWithDeviceName:v6 andDeviceAddress:v7];

    [*(a1 + 40) postNotification:v8];
  }
}

void __56__RTBluetoothManager_BluetoothManager_updateConnections__block_invoke_10(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) connectedDevices];
  v5 = [v4 containsObject:v3];

  if ((v5 & 1) == 0 && [v3 type] == 17)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityBluetooth);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = v3;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "handsfree device connected, %@", &v11, 0xCu);
      }
    }

    v7 = [RTBluetoothManagerNotificationConnected alloc];
    v8 = [v3 name];
    v9 = [v3 address];
    v10 = [(RTBluetoothManagerNotificationConnected *)v7 initWithDeviceName:v8 andDeviceAddress:v9];

    [*(a1 + 32) postNotification:v10];
  }
}

+ (id)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [RTBluetoothManager_BluetoothManager allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___RTBluetoothManager;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

- (void)internalAddObserver:(id)a3 name:(id)a4
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a4;
  if (([objc_opt_class() supportsNotificationName:v4] & 1) == 0)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityBluetooth);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "unsupported notification, %@", &v6, 0xCu);
    }
  }
}

- (void)internalRemoveObserver:(id)a3 name:(id)a4
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a4;
  if (([objc_opt_class() supportsNotificationName:v4] & 1) == 0)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityBluetooth);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "unsupported notification, %@", &v6, 0xCu);
    }
  }
}

+ (BOOL)supportsNotificationName:(id)a3
{
  v3 = a3;
  v4 = +[(RTNotification *)RTBluetoothManagerNotificationConnected];
  if ([v3 isEqualToString:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = +[(RTNotification *)RTBluetoothManagerNotificationDisconnected];
    if ([v3 isEqualToString:v6])
    {
      v5 = 1;
    }

    else
    {
      v7 = +[(RTNotification *)RTBluetoothManagerNotificationCarKitConnectionStateChanged];
      v5 = [v3 isEqualToString:v7];
    }
  }

  return v5;
}

- (void)fetchCarKitConnectedStateWithHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(RTNotifier *)self queue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __59__RTBluetoothManager_fetchCarKitConnectedStateWithHandler___block_invoke;
    v6[3] = &unk_2788C4938;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

- (void)_fetchCarKitConnectedStateWithHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__RTBluetoothManager__fetchCarKitConnectedStateWithHandler___block_invoke;
    block[3] = &unk_2788C4758;
    v7 = v4;
    dispatch_async(v5, block);
  }
}

+ (id)carKitConnectionStateToString:(int64_t)a3
{
  v3 = @"unknown";
  if (a3 == 1)
  {
    v3 = @"connected";
  }

  if (a3 == 2)
  {
    return @"disconnected";
  }

  else
  {
    return v3;
  }
}

@end