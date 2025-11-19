@interface VGExternalAccessory
- (BOOL)_currentStatePassesEVRoutingRequirements;
- (BOOL)_isAccessoryTracked:(id)a3;
- (BOOL)_isConnectedToCarPlayAccessory;
- (BOOL)_isConnectedToElectricVehicle;
- (BOOL)_isConnectedVehicleAllowlisted;
- (BOOL)isConnectedToAccessoryWithIdentifier:(id)a3;
- (BOOL)isConnectedToVehicle:(id)a3;
- (VGExternalAccessory)init;
- (VGExternalAccessoryUpdating)accessoryUpdateDelegate;
- (id)_bluetoothIdentifier;
- (id)_firmwareId;
- (id)_identifier;
- (id)_modelIdFromArguments:(id)a3;
- (id)_vehicleForCurrentState;
- (id)_vehicleStateForCurrentState;
- (void)_accessoryDidConnect:(id)a3;
- (void)_accessoryDidDisconnect:(id)a3;
- (void)_accessoryDidUpdateVehicle:(id)a3;
- (void)_addNewCarPlayAccessory:(id)a3;
- (void)_checkAvailableAccessoriesAndAttachIfNeeded;
- (void)_notifyDelegateWithCurrentVehicle;
- (void)_removeCarPlayAccessory:(id)a3;
- (void)_updateFromVehicleInfo:(id)a3;
- (void)dealloc;
- (void)getStateOfChargeForVehicle:(id)a3 completion:(id)a4;
- (void)listCarsWithCompletion:(id)a3;
@end

@implementation VGExternalAccessory

- (VGExternalAccessory)init
{
  v26 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = VGExternalAccessory;
  v2 = [(VGExternalAccessory *)&v23 init];
  if (v2)
  {
    v3 = VGGetExternalAccessoryLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v25 = v2;
      _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_INFO, "[%{public}p] init: created new VGExternalAccessory", buf, 0xCu);
    }

    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("VGExternalAccessory.WorkQueue", v4);
    workQueue = v2->_workQueue;
    v2->_workQueue = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("VGExternalAccessory.DelegateQueue", v7);
    delegateQueue = v2->_delegateQueue;
    v2->_delegateQueue = v8;

    v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
    trackedAccessoriesByConnectionId = v2->_trackedAccessoriesByConnectionId;
    v2->_trackedAccessoriesByConnectionId = v10;

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v2 selector:sel__accessoryDidConnect_ name:*MEMORY[0x277CC5E88] object:0];
    [v12 addObserver:v2 selector:sel__accessoryDidUpdateVehicle_ name:*MEMORY[0x277CC5EA8] object:0];
    [v12 addObserver:v2 selector:sel__accessoryDidDisconnect_ name:*MEMORY[0x277CC5E90] object:0];
    v13 = VGGetExternalAccessoryLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v25 = v2;
      _os_log_impl(&dword_270EC1000, v13, OS_LOG_TYPE_INFO, "[%{public}p] Registering for local accessory notifications", buf, 0xCu);
    }

    v14 = [MEMORY[0x277CC5FB0] sharedAccessoryManager];
    [v14 registerForLocalNotifications];

    [(VGExternalAccessory *)v2 _checkAvailableAccessoriesAndAttachIfNeeded];
    v15 = *MEMORY[0x277D0EA90];
    v16 = *(MEMORY[0x277D0EA90] + 8);
    BOOL = GEOConfigGetBOOL();
    p_super = VGGetExternalAccessoryLog();
    v19 = os_log_type_enabled(p_super, OS_LOG_TYPE_INFO);
    if (BOOL)
    {
      if (v19)
      {
        *buf = 134349056;
        v25 = v2;
        _os_log_impl(&dword_270EC1000, p_super, OS_LOG_TYPE_INFO, "[%{public}p] Allowlisting enabled, will initialize model filter", buf, 0xCu);
      }

      v20 = objc_alloc_init(VGExternalAccessoryModelFilter);
      p_super = &v2->_modelFilter->super;
      v2->_modelFilter = v20;
    }

    else if (v19)
    {
      *buf = 134349056;
      v25 = v2;
      _os_log_impl(&dword_270EC1000, p_super, OS_LOG_TYPE_INFO, "[%{public}p] Allowlisting disabled, will not initialize model filter", buf, 0xCu);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)_checkAvailableAccessoriesAndAttachIfNeeded
{
  v3 = [MEMORY[0x277CC5FB0] sharedAccessoryManager];
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__VGExternalAccessory__checkAvailableAccessoriesAndAttachIfNeeded__block_invoke;
  block[3] = &unk_279E26F20;
  objc_copyWeak(&v8, &location);
  v7 = v3;
  v5 = v3;
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __66__VGExternalAccessory__checkAvailableAccessoriesAndAttachIfNeeded__block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v2 = [*(a1 + 32) connectedAccessories];
    v3 = [v2 countByEnumeratingWithState:&v31 objects:v45 count:16];
    if (v3)
    {
      v5 = v3;
      v6 = *v32;
      *&v4 = 134349570;
      v28 = v4;
      do
      {
        v7 = 0;
        v29 = v5;
        do
        {
          if (*v32 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v31 + 1) + 8 * v7);
          v9 = [(__CFString *)v8 _vg_supportsCarPlay];
          v10 = VGGetExternalAccessoryLog();
          v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
          if (v9)
          {
            if (v11)
            {
              v12 = [(__CFString *)v8 supportsCarPlay];
              v13 = v6;
              v14 = @"YES";
              if (!v12)
              {
                v14 = @"NO";
              }

              v15 = v14;
              if ([(__CFString *)v8 supportsWirelessCarPlay])
              {
                v16 = @"YES";
              }

              else
              {
                v16 = @"NO";
              }

              v17 = v16;
              if ([(__CFString *)v8 supportsUSBCarPlay])
              {
                v18 = @"YES";
              }

              else
              {
                v18 = @"NO";
              }

              v19 = v2;
              v20 = v18;
              *buf = 134350082;
              v36 = WeakRetained;
              v37 = 2112;
              v38 = v8;
              v39 = 2112;
              v40 = v15;
              v41 = 2112;
              v42 = v17;
              v43 = 2112;
              v44 = v20;
              _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_INFO, "[%{public}p] init: will use accessory: %@ supportsCarPlay: %@, supportsWirelessCarPlay: %@. supportsUSBCarPlay: %@", buf, 0x34u);

              v2 = v19;
              v6 = v13;
              v5 = v29;
            }

            [WeakRetained _addNewCarPlayAccessory:v8];
          }

          else
          {
            if (v11)
            {
              *buf = v28;
              v36 = WeakRetained;
              v37 = 2048;
              v38 = v8;
              v39 = 2112;
              v40 = v8;
              _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_INFO, "[%{public}p] init: skipping accessory as it doesn't support CarPlay: %p %@", buf, 0x20u);
            }
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v2 countByEnumeratingWithState:&v31 objects:v45 count:16];
      }

      while (v5);
    }

    v21 = VGGetExternalAccessoryLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [WeakRetained[3] count];
      *buf = 134349312;
      v36 = WeakRetained;
      v37 = 2048;
      v38 = v22;
      v23 = "[%{public}p] _checkCurrentAccessoriesAndAttachIfNeeded: currently connected to %lu CarPlay accessories";
      v24 = v21;
      v25 = OS_LOG_TYPE_INFO;
      v26 = 22;
LABEL_28:
      _os_log_impl(&dword_270EC1000, v24, v25, v23, buf, v26);
    }
  }

  else
  {
    v21 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "[VGExternalAccessory _checkAvailableAccessoriesAndAttachIfNeeded]_block_invoke";
      v37 = 1024;
      LODWORD(v38) = 269;
      v23 = "strongSelf went away in %s line %d";
      v24 = v21;
      v25 = OS_LOG_TYPE_ERROR;
      v26 = 18;
      goto LABEL_28;
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (VGExternalAccessoryUpdating)accessoryUpdateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryUpdateDelegate);

  return WeakRetained;
}

- (void)listCarsWithCompletion:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VGGetExternalAccessoryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    if (self)
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = self;
      v8 = [v6 stringWithFormat:@"%@<%p>", objc_opt_class(), v7];
    }

    else
    {
      v8 = @"<nil>";
    }

    *buf = 138543618;
    v16 = v8;
    v17 = 2080;
    v18 = "[VGExternalAccessory listCarsWithCompletion:]";
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] %s", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__VGExternalAccessory_listCarsWithCompletion___block_invoke;
  block[3] = &unk_279E26F48;
  objc_copyWeak(&v14, buf);
  v13 = v4;
  v10 = v4;
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
  v11 = *MEMORY[0x277D85DE8];
}

void __46__VGExternalAccessory_listCarsWithCompletion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 6) && [*(WeakRetained + 3) count])
    {
      v4 = *(a1 + 32);
      v10 = *(v3 + 6);
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
      (*(v4 + 16))(v4, v5, 0);
    }

    else
    {
      v6 = MEMORY[0x277CCA9B8];
      v7 = GEOErrorDomain();
      v5 = [v6 errorWithDomain:v7 code:-11 userInfo:0];

      v8 = VGGetExternalAccessoryLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        v12 = v3;
        _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_ERROR, "[%{public}p] Either accessory is not connected or we don't have any _currentVehicleState yet.", buf, 0xCu);
      }

      (*(*(a1 + 32) + 16))(*(a1 + 32), 0, v5);
    }
  }

  else
  {
    v5 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[VGExternalAccessory listCarsWithCompletion:]_block_invoke";
      v13 = 1024;
      v14 = 682;
      _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)getStateOfChargeForVehicle:(id)a3 completion:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = VGGetExternalAccessoryLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    if (self)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = self;
      v11 = [v9 stringWithFormat:@"%@<%p>", objc_opt_class(), v10];
    }

    else
    {
      v11 = @"<nil>";
    }

    *buf = 138543618;
    v21 = v11;
    v22 = 2080;
    v23 = "[VGExternalAccessory getStateOfChargeForVehicle:completion:]";
    _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_DEBUG, "[%{public}@] %s", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__VGExternalAccessory_getStateOfChargeForVehicle_completion___block_invoke;
  block[3] = &unk_279E26CD0;
  objc_copyWeak(&v19, buf);
  v17 = v6;
  v18 = v7;
  v13 = v6;
  v14 = v7;
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
  v15 = *MEMORY[0x277D85DE8];
}

void __61__VGExternalAccessory_getStateOfChargeForVehicle_completion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[5] && [WeakRetained[3] count])
    {
      v4 = [*(a1 + 32) iapIdentifier];
      v5 = [v3[5] identifier];
      v6 = [v4 isEqualToString:v5];

      if (v6)
      {
        v7 = v3[5];
        (*(*(a1 + 40) + 16))();
        goto LABEL_14;
      }

      v13 = MEMORY[0x277CCA9B8];
      v14 = GEOErrorDomain();
      v10 = [v13 errorWithDomain:v14 code:-13 userInfo:0];

      v11 = VGGetExternalAccessoryLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v15 = [*(a1 + 32) identifier];
        v16 = v3[5];
        v18 = 134349570;
        v19 = v3;
        v20 = 2112;
        v21 = v15;
        v22 = 2112;
        v23 = v16;
        _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_ERROR, "[%{public}p] SoC requested for %@ but the currently connected vehicle is %@", &v18, 0x20u);
      }
    }

    else
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = GEOErrorDomain();
      v10 = [v8 errorWithDomain:v9 code:-11 userInfo:0];

      v11 = VGGetExternalAccessoryLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v18 = 134349056;
        v19 = v3;
        _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_ERROR, "[%{public}p] Either accessory is not connected or we don't have any _currentVehicleState yet.", &v18, 0xCu);
      }
    }

    (*(*(a1 + 40) + 16))();
    goto LABEL_14;
  }

  v12 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v18 = 136315394;
    v19 = "[VGExternalAccessory getStateOfChargeForVehicle:completion:]_block_invoke";
    v20 = 1024;
    LODWORD(v21) = 660;
    _os_log_impl(&dword_270EC1000, v12, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", &v18, 0x12u);
  }

LABEL_14:
  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)isConnectedToAccessoryWithIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VGGetExternalAccessoryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    if (self)
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = self;
      v8 = [v6 stringWithFormat:@"%@<%p>", objc_opt_class(), v7];
    }

    else
    {
      v8 = @"<nil>";
    }

    *buf = 138543618;
    *&buf[4] = v8;
    *&buf[12] = 2080;
    *&buf[14] = "[VGExternalAccessory isConnectedToAccessoryWithIdentifier:]";
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] %s", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v18 = 0;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__VGExternalAccessory_isConnectedToAccessoryWithIdentifier___block_invoke;
  block[3] = &unk_279E26E60;
  v15 = v4;
  v16 = buf;
  block[4] = self;
  v10 = v4;
  dispatch_sync(workQueue, block);
  v11 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void __60__VGExternalAccessory_isConnectedToAccessoryWithIdentifier___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _isConnectedToCarPlayAccessory])
  {
    v2 = [*(a1 + 32) _identifier];
    *(*(*(a1 + 48) + 8) + 24) = [v2 isEqualToString:*(a1 + 40)];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

- (BOOL)isConnectedToVehicle:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VGGetExternalAccessoryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    if (self)
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = self;
      v8 = [v6 stringWithFormat:@"%@<%p>", objc_opt_class(), v7];
    }

    else
    {
      v8 = @"<nil>";
    }

    *buf = 138543618;
    *&buf[4] = v8;
    *&buf[12] = 2080;
    *&buf[14] = "[VGExternalAccessory isConnectedToVehicle:]";
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] %s", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v18 = 0;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__VGExternalAccessory_isConnectedToVehicle___block_invoke;
  block[3] = &unk_279E26E60;
  block[4] = self;
  v15 = v4;
  v16 = buf;
  v10 = v4;
  dispatch_sync(workQueue, block);
  v11 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void __44__VGExternalAccessory_isConnectedToVehicle___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _isConnectedToCarPlayAccessory];
  v3 = [*(a1 + 40) iapIdentifier];

  v4 = [*(*(a1 + 32) + 48) iapIdentifier];
  v5 = [*(a1 + 40) iapIdentifier];
  v6 = [v4 isEqualToString:v5];

  v7 = VGGetExternalAccessoryLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = *(a1 + 32);
    v10 = [v8 stringWithFormat:@"%@<%p>", objc_opt_class(), v9];

    v11 = [*(*(a1 + 32) + 48) iapIdentifier];
    *buf = 138544386;
    v15 = v10;
    v16 = 1024;
    v17 = v2;
    v18 = 1024;
    v19 = v3 != 0;
    v20 = 1024;
    v21 = v6;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] isConnectedToVehicle: isConnected: %d, hasIdentifier: %d, identifierMatches: %d, currentVehicleIdentifier: %@", buf, 0x28u);
  }

  if (v3)
  {
    v12 = v2;
  }

  else
  {
    v12 = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v12 & v6;
  v13 = *MEMORY[0x277D85DE8];
}

- (id)_firmwareId
{
  v2 = [(NSMutableDictionary *)self->_trackedAccessoriesByConnectionId allValues];
  v3 = [v2 firstObject];

  if (v3)
  {
    if (GEOConfigGetBOOL())
    {
      v4 = @"CarDisplaySimFirmware";
    }

    else
    {
      v5 = [v3 firmwareRevision];
      v4 = [v5 copy];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_bluetoothIdentifier
{
  v2 = [(NSMutableDictionary *)self->_trackedAccessoriesByConnectionId allValues];
  v3 = [v2 firstObject];

  if (v3)
  {
    if (GEOConfigGetBOOL())
    {
      v4 = @"CarDisplaySim";
    }

    else
    {
      v5 = [v3 macAddress];
      v4 = [v5 copy];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_identifier
{
  v2 = [(NSMutableDictionary *)self->_trackedAccessoriesByConnectionId allValues];
  v3 = [v2 firstObject];

  if (v3)
  {
    if (GEOConfigGetBOOL())
    {
      v4 = @"CarDisplaySim";
    }

    else
    {
      v5 = [v3 serialNumber];
      v4 = [v5 copy];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_isConnectedToCarPlayAccessory
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(NSMutableDictionary *)self->_trackedAccessoriesByConnectionId allValues];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) isConnected])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)_isConnectedToElectricVehicle
{
  if (![(VGExternalAccessory *)self _isConnectedToCarPlayAccessory])
  {
    return 0;
  }

  v3 = [(VGExternalAccessoryState *)self->_accessoryState consumptionArguments];
  if ([v3 length])
  {
    v4 = [(VGExternalAccessoryState *)self->_accessoryState chargingArguments];
    v5 = [v4 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isConnectedVehicleAllowlisted
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D0EA90];
  v4 = *(MEMORY[0x277D0EA90] + 8);
  if (GEOConfigGetBOOL())
  {
    v5 = [(VGExternalAccessoryState *)self->_accessoryState consumptionArguments];
    v6 = [(VGExternalAccessory *)self _modelIdFromArguments:v5];

    v7 = [(VGExternalAccessoryState *)self->_accessoryState chargingArguments];
    v8 = [(VGExternalAccessory *)self _modelIdFromArguments:v7];

    if (v6 && v8)
    {
      modelFilter = self->_modelFilter;
      v10 = [(VGExternalAccessory *)self _firmwareId];
      v11 = [(VGExternalAccessoryState *)self->_accessoryState year];
      v12 = [(VGExternalAccessoryState *)self->_accessoryState model];
      v13 = [(VGExternalAccessoryModelFilter *)modelFilter allowsVehicleWithModelId:v6 firmwareId:v10 year:v11 model:v12];

      v14 = self->_modelFilter;
      v15 = [(VGExternalAccessory *)self _firmwareId];
      v16 = [(VGExternalAccessoryState *)self->_accessoryState year];
      v17 = [(VGExternalAccessoryState *)self->_accessoryState model];
      v18 = [(VGExternalAccessoryModelFilter *)v14 allowsVehicleWithModelId:v8 firmwareId:v15 year:v16 model:v17];

      if (v13 && v18)
      {
        v19 = 1;
LABEL_13:

        goto LABEL_14;
      }

      v20 = VGGetExternalAccessoryLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v25 = 134349056;
        v26 = self;
        _os_log_impl(&dword_270EC1000, v20, OS_LOG_TYPE_ERROR, "[%{public}p] Currently connected vehicle is an EV, but does is not allow listed. Onboarding won't be allowed", &v25, 0xCu);
      }
    }

    else
    {
      v20 = VGGetExternalAccessoryLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        v21 = [(VGExternalAccessoryState *)self->_accessoryState consumptionArguments];
        v22 = [(VGExternalAccessoryState *)self->_accessoryState chargingArguments];
        v25 = 134349570;
        v26 = self;
        v27 = 2112;
        v28 = v21;
        v29 = 2112;
        v30 = v22;
        _os_log_impl(&dword_270EC1000, v20, OS_LOG_TYPE_FAULT, "[%{public}p] Vehicle does not have valid consumption or charging arguments. consumption: %@, charging: %@", &v25, 0x20u);
      }
    }

    v19 = 0;
    goto LABEL_13;
  }

  v19 = 1;
LABEL_14:
  v23 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)_modelIdFromArguments:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VGDictionaryFromVGVehicleArguments(v4);
  if (v5)
  {
    v6 = GEOConfigGetString();
    v7 = [v5 objectForKeyedSubscript:v6];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v7;
      v8 = v7;
      goto LABEL_10;
    }

    v9 = VGGetExternalAccessoryLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v12 = 134349314;
      v13 = self;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_FAULT, "[%{public}p] Failed to parse model id from arguments: %@", &v12, 0x16u);
    }
  }

  else
  {
    v7 = VGGetExternalAccessoryLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v12 = 134349314;
      v13 = self;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_FAULT, "[%{public}p] Failed to parse arguments: %@", &v12, 0x16u);
    }
  }

  v8 = 0;
LABEL_10:

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)_currentStatePassesEVRoutingRequirements
{
  v27 = *MEMORY[0x277D85DE8];
  LODWORD(v3) = [(VGExternalAccessory *)self _isConnectedToElectricVehicle];
  if (v3)
  {
    v3 = [(VGExternalAccessory *)self _identifier];
    if (v3)
    {
      accessoryState = self->_accessoryState;

      if (accessoryState)
      {
        if ([(VGExternalAccessory *)self _isConnectedVehicleAllowlisted])
        {
          LOBYTE(v3) = 1;
          goto LABEL_10;
        }

        v5 = VGGetExternalAccessoryLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v6 = [(VGExternalAccessoryState *)self->_accessoryState consumptionArguments];
          v7 = [(VGExternalAccessory *)self _modelIdFromArguments:v6];
          v8 = [(VGExternalAccessoryState *)self->_accessoryState chargingArguments];
          v9 = [(VGExternalAccessory *)self _modelIdFromArguments:v8];
          v10 = [(VGExternalAccessory *)self _firmwareId];
          v11 = [(VGExternalAccessoryState *)self->_accessoryState year];
          v12 = [(VGExternalAccessoryState *)self->_accessoryState model];
          v15 = 134350338;
          v16 = self;
          v17 = 2112;
          v18 = v7;
          v19 = 2112;
          v20 = v9;
          v21 = 2112;
          v22 = v10;
          v23 = 2112;
          v24 = v11;
          v25 = 2112;
          v26 = v12;
          _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "[%{public}p] Connected vehicle is not allowlisted. consumption modelId: %@, charging modelId: %@, firmwareId: %@, year: %@, model: %@", &v15, 0x3Eu);
        }
      }

      LOBYTE(v3) = 0;
    }
  }

LABEL_10:
  v13 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)_vehicleStateForCurrentState
{
  if ([(VGExternalAccessory *)self _currentStatePassesEVRoutingRequirements])
  {
    v20 = [VGVehicleState alloc];
    v22 = [(VGExternalAccessory *)self _identifier];
    v3 = [v22 copy];
    v4 = [MEMORY[0x277CBEAA8] date];
    v21 = [(VGExternalAccessoryState *)self->_accessoryState batteryCharge];
    v19 = [(VGExternalAccessoryState *)self->_accessoryState currentEVRange];
    v18 = [(VGExternalAccessoryState *)self->_accessoryState maxEVRange];
    v15 = [(VGExternalAccessoryState *)self->_accessoryState minBatteryCapacity];
    v5 = [(VGExternalAccessoryState *)self->_accessoryState currentBatteryCapacity];
    v14 = [(VGExternalAccessoryState *)self->_accessoryState maxBatteryCapacity];
    v17 = [(VGExternalAccessoryState *)self->_accessoryState consumptionArguments];
    v6 = [v17 copy];
    v16 = [(VGExternalAccessoryState *)self->_accessoryState chargingArguments];
    v7 = [v16 copy];
    v8 = [(VGExternalAccessoryState *)self->_accessoryState isCharging];
    v9 = [(VGExternalAccessoryState *)self->_accessoryState activeConnector];
    v10 = [v9 unsignedIntegerValue];
    LOBYTE(v13) = v8;
    v11 = [(VGVehicleState *)v20 initWithIdentifier:v3 dateOfUpdate:v4 origin:1 batteryPercentage:v21 currentEVRange:v19 maxEVRange:v18 minBatteryCapacity:v15 currentBatteryCapacity:v5 maxBatteryCapacity:v14 consumptionArguments:v6 chargingArguments:v7 isCharging:v13 activeConnector:v10 & 0x128 | (v10 >> 2) & 1 | (2 * (v10 & 3)) & 0x7F | (v10 >> 2) & 0x10 | (v10 >> 1) & 0x40 | (((v10 >> 4) & 1) << 7)];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_vehicleForCurrentState
{
  if ([(VGExternalAccessory *)self _currentStatePassesEVRoutingRequirements])
  {
    v3 = [VGVehicle alloc];
    v24 = [(VGExternalAccessoryState *)self->_accessoryState name];
    v26 = [v24 copy];
    v25 = [(VGExternalAccessoryState *)self->_accessoryState year];
    v23 = [(VGExternalAccessoryState *)self->_accessoryState manufacturer];
    v22 = [v23 copy];
    v21 = [(VGExternalAccessoryState *)self->_accessoryState model];
    v20 = [v21 copy];
    v19 = [(VGExternalAccessoryState *)self->_accessoryState colorHex];
    v4 = [v19 stringByReplacingOccurrencesOfString:@"#" withString:&stru_2880E19B8];
    if ([v4 length] == 6)
    {
      v18 = [v4 stringByAppendingString:@"ff"];
    }

    else
    {
      v18 = 0;
    }

    v17 = [(VGExternalAccessory *)self _identifier];
    v6 = [v17 copy];
    v16 = [(VGExternalAccessory *)self _bluetoothIdentifier];
    v7 = [v16 copy];
    v8 = [(VGExternalAccessoryState *)self->_accessoryState supportedConnectors];
    v9 = [v8 unsignedIntegerValue];
    v10 = v9 & 0x128 | (v9 >> 2) & 1 | (2 * (v9 & 3)) & 0x7F | (v9 >> 2) & 0x10 | (v9 >> 1) & 0x40 | (((v9 >> 4) & 1) << 7);
    v11 = [(VGExternalAccessoryState *)self->_accessoryState powerByConnector];
    v12 = [v11 copy];
    v5 = [(VGVehicle *)v3 initWithDisplayName:v26 year:v25 manufacturer:v22 model:v20 colorHex:v18 headUnitIdentifier:v6 headUnitBluetoothIdentifier:v7 supportedConnectors:v10 powerByConnector:v12];

    v13 = [(VGExternalAccessory *)self _identifier];
    v14 = [v13 copy];
    [(VGVehicle *)v5 setIapIdentifier:v14];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_notifyDelegateWithCurrentVehicle
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = VGGetExternalAccessoryLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v14 = self;
    _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_INFO, "[%{public}p] _notifyDelegateWithCurrentVehicle", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v4 = [(VGExternalAccessory *)self accessoryUpdateDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(VGVehicle *)self->_currentVehicle copy];
    delegateQueue = self->_delegateQueue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __56__VGExternalAccessory__notifyDelegateWithCurrentVehicle__block_invoke;
    v10[3] = &unk_279E26F20;
    objc_copyWeak(&v12, buf);
    v11 = v6;
    v8 = v6;
    dispatch_async(delegateQueue, v10);

    objc_destroyWeak(&v12);
  }

  objc_destroyWeak(buf);
  v9 = *MEMORY[0x277D85DE8];
}

void __56__VGExternalAccessory__notifyDelegateWithCurrentVehicle__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained accessoryUpdateDelegate];
    if (v4)
    {
      v5 = v4;
      v6 = VGGetExternalAccessoryLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 32);
        v10 = 134349314;
        v11 = v3;
        v12 = 2112;
        v13 = v7;
        _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_INFO, "[%{public}p] notifying delegate with vehicle: %@", &v10, 0x16u);
      }

      [v5 accessoryUpdatedWithVehicle:*(a1 + 32)];
    }

    else
    {
      v8 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = 136315394;
        v11 = "[VGExternalAccessory _notifyDelegateWithCurrentVehicle]_block_invoke";
        v12 = 1024;
        LODWORD(v13) = 435;
        _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_ERROR, "strongDelegate went away in %s line %d", &v10, 0x12u);
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[VGExternalAccessory _notifyDelegateWithCurrentVehicle]_block_invoke";
      v12 = 1024;
      LODWORD(v13) = 434;
      _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", &v10, 0x12u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_updateFromVehicleInfo:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VGGetExternalAccessoryLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 134349314;
      v13 = self;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_INFO, "[%{public}p] _updateFromVehicleInfo: %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    workQueue = self->_workQueue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __46__VGExternalAccessory__updateFromVehicleInfo___block_invoke;
    v9[3] = &unk_279E26F20;
    objc_copyWeak(&v11, buf);
    v10 = v4;
    dispatch_async(workQueue, v9);

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      v13 = self;
      _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_ERROR, "[%{public}p] _updateFromVehicleInfo: tried to update from a nil vehicleInfo.", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __46__VGExternalAccessory__updateFromVehicleInfo___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[4];
    if (!v4)
    {
      v5 = objc_alloc_init(VGExternalAccessoryState);
      v6 = *(v3 + 4);
      *(v3 + 4) = v5;

      v4 = *(v3 + 4);
    }

    [v4 _updateWithVehicleInfo:*(a1 + 32)];
    v7 = VGGetExternalAccessoryLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(v3 + 4);
      v9 = *(a1 + 32);
      v18 = 134349570;
      v19 = v3;
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_INFO, "[%{public}p] _updateFromVehicleInfo: did update accessoryState: %@ from vehicleInfo: %@", &v18, 0x20u);
    }

    v10 = [v3 _vehicleStateForCurrentState];
    v11 = *(v3 + 5);
    *(v3 + 5) = v10;

    v12 = [v3 _vehicleForCurrentState];
    v13 = *(v3 + 6);
    *(v3 + 6) = v12;

    [*(v3 + 6) _updateWithVehicleState:*(v3 + 5)];
    v14 = VGGetExternalAccessoryLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *(v3 + 6);
      v18 = 134349314;
      v19 = v3;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_270EC1000, v14, OS_LOG_TYPE_INFO, "[%{public}p] updated _currentVehicle: %@", &v18, 0x16u);
    }

    [v3 _notifyDelegateWithCurrentVehicle];
  }

  else
  {
    v16 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315394;
      v19 = "[VGExternalAccessory _updateFromVehicleInfo:]_block_invoke";
      v20 = 1024;
      LODWORD(v21) = 412;
      _os_log_impl(&dword_270EC1000, v16, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", &v18, 0x12u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_accessoryDidUpdateVehicle:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VGGetExternalAccessoryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    v13 = self;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "[%{public}p] _accessoryDidUpdateVehicle: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  workQueue = self->_workQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__VGExternalAccessory__accessoryDidUpdateVehicle___block_invoke;
  v9[3] = &unk_279E26F20;
  objc_copyWeak(&v11, buf);
  v10 = v4;
  v7 = v4;
  dispatch_async(workQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
  v8 = *MEMORY[0x277D85DE8];
}

void __50__VGExternalAccessory__accessoryDidUpdateVehicle___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) userInfo];
    v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CC5E98]];

    if (v4 && ([v4 _vg_supportsCarPlay]& 1) == 0)
    {
      v10 = VGGetExternalAccessoryLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = [v4 name];
        v13 = 134349314;
        v14 = WeakRetained;
        v15 = 2112;
        v16 = v12;
        _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_INFO, "[%{public}p] _accessoryDidUpdateVehicle: accessory %@ does not support CarPlay, ignoring update", &v13, 0x16u);
      }
    }

    else
    {
      v5 = VGGetExternalAccessoryLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [v4 name];
        v7 = [*(a1 + 32) userInfo];
        v13 = 134349570;
        v14 = WeakRetained;
        v15 = 2112;
        v16 = v6;
        v17 = 2112;
        v18 = v7;
        _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "[%{public}p] _accessoryDidUpdateVehicle: received a vehicle update update for accessory %@ with userInfo: %@", &v13, 0x20u);
      }

      if (v4 && ([WeakRetained _isAccessoryTracked:v4] & 1) == 0)
      {
        v8 = VGGetExternalAccessoryLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          v9 = [v4 name];
          v13 = 134349314;
          v14 = WeakRetained;
          v15 = 2112;
          v16 = v9;
        }

        [WeakRetained _addNewCarPlayAccessory:v4];
      }

      v10 = [*(a1 + 32) userInfo];
      [WeakRetained _updateFromVehicleInfo:v10];
    }
  }

  else
  {
    v4 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "[VGExternalAccessory _accessoryDidUpdateVehicle:]_block_invoke";
      v15 = 1024;
      LODWORD(v16) = 385;
      _os_log_impl(&dword_270EC1000, v4, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", &v13, 0x12u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_accessoryDidDisconnect:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VGGetExternalAccessoryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    v13 = self;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "[%{public}p] _accessoryDidDisconnect: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  workQueue = self->_workQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__VGExternalAccessory__accessoryDidDisconnect___block_invoke;
  v9[3] = &unk_279E26F20;
  objc_copyWeak(&v11, buf);
  v10 = v4;
  v7 = v4;
  dispatch_async(workQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
  v8 = *MEMORY[0x277D85DE8];
}

void __47__VGExternalAccessory__accessoryDidDisconnect___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) userInfo];
    v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CC5E98]];

    v5 = [v4 _vg_supportsCarPlay];
    v6 = VGGetExternalAccessoryLog();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if (v5)
    {
      if (v7)
      {
        v10 = 134349314;
        v11 = WeakRetained;
        v12 = 2112;
        v13 = v4;
        _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_INFO, "[%{public}p] _accessoryDidDisconnect: will disconnect a tracked accessory: %@", &v10, 0x16u);
      }

      [WeakRetained _removeCarPlayAccessory:v4];
    }

    else
    {
      if (v7)
      {
        v8 = [v4 name];
        v10 = 134349314;
        v11 = WeakRetained;
        v12 = 2112;
        v13 = v8;
        _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_INFO, "[%{public}p] _accessoryDidDisconnect: disconnected accessory that is not tracked %@", &v10, 0x16u);
      }
    }
  }

  else
  {
    v4 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[VGExternalAccessory _accessoryDidDisconnect:]_block_invoke";
      v12 = 1024;
      LODWORD(v13) = 369;
      _os_log_impl(&dword_270EC1000, v4, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", &v10, 0x12u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_accessoryDidConnect:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VGGetExternalAccessoryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    v13 = self;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "[%{public}p] _accessoryDidConnect: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  workQueue = self->_workQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__VGExternalAccessory__accessoryDidConnect___block_invoke;
  v9[3] = &unk_279E26F20;
  objc_copyWeak(&v11, buf);
  v10 = v4;
  v7 = v4;
  dispatch_async(workQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
  v8 = *MEMORY[0x277D85DE8];
}

void __44__VGExternalAccessory__accessoryDidConnect___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) userInfo];
    v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CC5E98]];

    if (v4 && ([v4 _vg_supportsCarPlay]& 1) != 0)
    {
      v5 = VGGetExternalAccessoryLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        if ([v4 supportsCarPlay])
        {
          v6 = @"YES";
        }

        else
        {
          v6 = @"NO";
        }

        v7 = v6;
        if ([v4 supportsWirelessCarPlay])
        {
          v8 = @"YES";
        }

        else
        {
          v8 = @"NO";
        }

        v9 = v8;
        if ([v4 supportsUSBCarPlay])
        {
          v10 = @"YES";
        }

        else
        {
          v10 = @"NO";
        }

        v11 = v10;
        v14 = 134350338;
        v15 = WeakRetained;
        v16 = 2048;
        v17 = v4;
        v18 = 2112;
        v19 = v4;
        v20 = 2112;
        v21 = v7;
        v22 = 2112;
        v23 = v9;
        v24 = 2112;
        v25 = v11;
        _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "[%{public}p] _accessoryDidConnect: new accessory: %p, %@, supportsCarPlay: %@, supportsWirelessCarPlay: %@. supportsUSBCarPlay: %@", &v14, 0x3Eu);
      }

      [WeakRetained _addNewCarPlayAccessory:v4];
    }

    else
    {
      v12 = VGGetExternalAccessoryLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = 134349570;
        v15 = WeakRetained;
        v16 = 2048;
        v17 = v4;
        v18 = 2112;
        v19 = v4;
        _os_log_impl(&dword_270EC1000, v12, OS_LOG_TYPE_ERROR, "[%{public}p] _accessoryDidConnect: received an unsupported accessory: %p, %@", &v14, 0x20u);
      }
    }
  }

  else
  {
    v4 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[VGExternalAccessory _accessoryDidConnect:]_block_invoke";
      v16 = 1024;
      LODWORD(v17) = 353;
      _os_log_impl(&dword_270EC1000, v4, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", &v14, 0x12u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isAccessoryTracked:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 connectionID])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "connectionID")}];
    v6 = [(NSMutableDictionary *)self->_trackedAccessoriesByConnectionId objectForKeyedSubscript:v5];
    v7 = v6 != 0;
  }

  else
  {
    v8 = VGGetExternalAccessoryLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v4 name];
      v12 = 134349570;
      v13 = self;
      v14 = 2112;
      v15 = v9;
      v16 = 2048;
      v17 = [v4 connectionID];
      _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_ERROR, "[%{public}p] _isAccessoryTracked: tried to check status of accessory with an invalid key. %@ %lu", &v12, 0x20u);
    }

    v7 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)_removeCarPlayAccessory:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![v4 connectionID])
  {
    v5 = VGGetExternalAccessoryLog();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v8 = [v4 name];
    v16 = 134349570;
    v17 = self;
    v18 = 2112;
    v19 = v8;
    v20 = 2048;
    v21 = [v4 connectionID];
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_ERROR, "[%{public}p] _removeCarPlayAccessory: tried to remove an accessory that has an invalid key. %@, %lu", &v16, 0x20u);
LABEL_13:

    goto LABEL_14;
  }

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "connectionID")}];
  v6 = [(NSMutableDictionary *)self->_trackedAccessoriesByConnectionId objectForKeyedSubscript:v5];

  v7 = VGGetExternalAccessoryLog();
  v8 = v7;
  if (!v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = [v4 name];
      v16 = 134349570;
      v17 = self;
      v18 = 2112;
      v19 = v14;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_ERROR, "[%{public}p] _removeCarPlayAccessory: tried to remove an accessory that was not tracked. %@, %@", &v16, 0x20u);
    }

    goto LABEL_13;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = [v4 name];
    v16 = 134349570;
    v17 = self;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_INFO, "[%{public}p] _removeCarPlayAccessory: removing accessory with key. %@, %@", &v16, 0x20u);
  }

  [(NSMutableDictionary *)self->_trackedAccessoriesByConnectionId removeObjectForKey:v5];
  if (![(NSMutableDictionary *)self->_trackedAccessoriesByConnectionId count])
  {
    v10 = VGGetExternalAccessoryLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v16 = 134349056;
      v17 = self;
      _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_INFO, "[%{public}p] _removeCarPlayAccessory: currently not tracking any accessories. clearing tracked vehicle state", &v16, 0xCu);
    }

    accessoryState = self->_accessoryState;
    self->_accessoryState = 0;

    currentVehicleState = self->_currentVehicleState;
    self->_currentVehicleState = 0;

    currentVehicle = self->_currentVehicle;
    self->_currentVehicle = 0;

    [(VGExternalAccessory *)self _notifyDelegateWithCurrentVehicle];
  }

LABEL_14:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_addNewCarPlayAccessory:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 connectionID])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "connectionID")}];
    v6 = [(NSMutableDictionary *)self->_trackedAccessoriesByConnectionId objectForKeyedSubscript:v5];

    if (v6)
    {
      v7 = VGGetExternalAccessoryLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [v4 name];
        v14 = 134349570;
        v15 = self;
        v16 = 2112;
        v17 = v8;
        v18 = 2112;
        v19 = v5;
        _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_ERROR, "[%{public}p] _addNewCarPlayAccessory: trying to add an accessory, it is already tracked -> replacing, name: %@ key: %@", &v14, 0x20u);
      }
    }

    v9 = VGGetExternalAccessoryLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v4 name];
      v14 = 134349570;
      v15 = self;
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_INFO, "[%{public}p] _addNewCarPlayAccessory: added a new accessory: %@ key: %@.", &v14, 0x20u);
    }

    [(NSMutableDictionary *)self->_trackedAccessoriesByConnectionId setObject:v4 forKeyedSubscript:v5];
    v11 = [v4 getVehicleInfoData];
    [(VGExternalAccessory *)self _updateFromVehicleInfo:v11];

    v12 = [v4 vehicleInfoInitialData];
    [(VGExternalAccessory *)self _updateFromVehicleInfo:v12];
    goto LABEL_11;
  }

  v5 = VGGetExternalAccessoryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v12 = [v4 name];
    v14 = 134349570;
    v15 = self;
    v16 = 2112;
    v17 = v12;
    v18 = 2048;
    v19 = [v4 connectionID];
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_FAULT, "[%{public}p] _addNewCarPlayAccessory: tried to add an accessory, but it has an invalid key. %@, %lu", &v14, 0x20u);
LABEL_11:
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = VGGetExternalAccessoryLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v9 = self;
    _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_INFO, "[%{public}p] dealloc: deallocating accessory", buf, 0xCu);
  }

  v4 = [MEMORY[0x277CC5FB0] sharedAccessoryManager];
  [v4 unregisterForLocalNotifications];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self];

  v7.receiver = self;
  v7.super_class = VGExternalAccessory;
  [(VGExternalAccessory *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

@end