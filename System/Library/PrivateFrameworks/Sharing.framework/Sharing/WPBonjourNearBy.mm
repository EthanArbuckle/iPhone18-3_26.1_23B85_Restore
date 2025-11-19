@interface WPBonjourNearBy
- (WPBonjourNearBy)initWithDelegate:(id)a3 queue:(id)a4;
- (void)_listenForSFBonjourEvents;
- (void)connectToPeer:(id)a3 withOptions:(id)a4;
- (void)disconnectFromPeer:(id)a3;
- (void)sendData:(id)a3 toPeer:(id)a4;
- (void)startAdvertisingOfType:(int64_t)a3 data:(id)a4 priority:(int64_t)a5 mode:(int64_t)a6 options:(id)a7;
- (void)startScanningForType:(int64_t)a3 data:(id)a4 mask:(id)a5 peers:(id)a6 scanMode:(int64_t)a7 rssi:(id)a8 duplicates:(BOOL)a9 scanCache:(BOOL)a10 useCaseList:(id)a11;
- (void)stopAdvertisingOfType:(int64_t)a3;
- (void)stopScanningForType:(int64_t)a3;
@end

@implementation WPBonjourNearBy

- (WPBonjourNearBy)initWithDelegate:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = WPBonjourNearBy;
  v9 = [(WPBonjourNearBy *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_delegate, a3);
    objc_storeStrong(&v10->_dispatch_queue, a4);
    v11 = [[SFBonjourNearBy alloc] initWithQueue:v8];
    sfBonjourNearBy = v10->_sfBonjourNearBy;
    v10->_sfBonjourNearBy = v11;

    v13 = [MEMORY[0x1E695DF90] dictionary];
    advertiserNearbyTypesAdvData = v10->_advertiserNearbyTypesAdvData;
    v10->_advertiserNearbyTypesAdvData = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    scannerNearbyTypesToScan = v10->_scannerNearbyTypesToScan;
    v10->_scannerNearbyTypesToScan = v15;

    v10->_state = 3;
    [(WPBonjourNearBy *)v10 _listenForSFBonjourEvents];
  }

  return v10;
}

- (void)_listenForSFBonjourEvents
{
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __44__WPBonjourNearBy__listenForSFBonjourEvents__block_invoke;
  v15[3] = &unk_1E788B4A8;
  objc_copyWeak(&v16, &location);
  [(SFBonjourNearBy *)self->_sfBonjourNearBy setDeviceDidStartScanning:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __44__WPBonjourNearBy__listenForSFBonjourEvents__block_invoke_2;
  v13[3] = &unk_1E788F8F0;
  objc_copyWeak(&v14, &location);
  [(SFBonjourNearBy *)self->_sfBonjourNearBy setDeviceFoundHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__WPBonjourNearBy__listenForSFBonjourEvents__block_invoke_2_138;
  v11[3] = &unk_1E788F8F0;
  objc_copyWeak(&v12, &location);
  [(SFBonjourNearBy *)self->_sfBonjourNearBy setDeviceLostHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__WPBonjourNearBy__listenForSFBonjourEvents__block_invoke_2_142;
  v9[3] = &unk_1E788AE00;
  objc_copyWeak(&v10, &location);
  [(SFBonjourNearBy *)self->_sfBonjourNearBy setAdvertisingStateUpdateHandler:v9];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__WPBonjourNearBy__listenForSFBonjourEvents__block_invoke_2_149;
  v7[3] = &unk_1E788F940;
  objc_copyWeak(&v8, &location);
  [(SFBonjourNearBy *)self->_sfBonjourNearBy setDeviceDidConnectHandler:v7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__WPBonjourNearBy__listenForSFBonjourEvents__block_invoke_153;
  v5[3] = &unk_1E788F968;
  objc_copyWeak(&v6, &location);
  [(SFBonjourNearBy *)self->_sfBonjourNearBy setDeviceDidDisconnectHandler:v5];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__WPBonjourNearBy__listenForSFBonjourEvents__block_invoke_157;
  v3[3] = &unk_1E788F990;
  objc_copyWeak(&v4, &location);
  [(SFBonjourNearBy *)self->_sfBonjourNearBy setDeviceDidReceiveDataHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __44__WPBonjourNearBy__listenForSFBonjourEvents__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v3;
      _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "deviceDidStartScanning with error %@\n", buf, 0xCu);
    }

    v6 = WeakRetained[5];
    if (objc_opt_respondsToSelector())
    {
      v7 = WeakRetained[3];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __44__WPBonjourNearBy__listenForSFBonjourEvents__block_invoke_124;
      v9[3] = &unk_1E788F430;
      v9[4] = WeakRetained;
      [v7 enumerateKeysAndObjectsUsingBlock:v9];
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __44__WPBonjourNearBy__listenForSFBonjourEvents__block_invoke_124(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  v4 = [a2 unsignedIntValue];

  return [v3 nearby:v2 didStartScanningForType:v4];
}

void __44__WPBonjourNearBy__listenForSFBonjourEvents__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 UUIDString];
      *buf = 138412546;
      v15 = v9;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_1A9662000, v8, OS_LOG_TYPE_DEFAULT, "Found device %@ with advertisementData %@\n", buf, 0x16u);
    }

    v10 = WeakRetained[5];
    if (objc_opt_respondsToSelector())
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __44__WPBonjourNearBy__listenForSFBonjourEvents__block_invoke_129;
      v12[3] = &unk_1E788F8C8;
      v12[4] = WeakRetained;
      v13 = v5;
      [v6 enumerateObjectsUsingBlock:v12];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __44__WPBonjourNearBy__listenForSFBonjourEvents__block_invoke_129(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  v5 = a2;
  v8 = [v5 objectForKeyedSubscript:@"WPBonjourNearbyType"];
  v6 = [v8 unsignedIntValue];
  v7 = [v5 objectForKeyedSubscript:@"WPBonjourNearbyPayloadKey"];

  [v4 nearby:v3 didDiscoverType:v6 withData:v7 fromPeer:*(a1 + 40) peerInfo:0];
}

void __44__WPBonjourNearBy__listenForSFBonjourEvents__block_invoke_2_138(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = daemon_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v5 UUIDString];
    *buf = 138412290;
    v16 = v9;
    _os_log_impl(&dword_1A9662000, v8, OS_LOG_TYPE_DEFAULT, "Lost device %@\n", buf, 0xCu);
  }

  if (WeakRetained)
  {
    if (v6)
    {
      [v6 valueForKey:@"WPBonjourNearbyType"];
    }

    else
    {
      [WeakRetained[3] allKeys];
    }
    v10 = ;
    v11 = WeakRetained[5];
    if (objc_opt_respondsToSelector())
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __44__WPBonjourNearBy__listenForSFBonjourEvents__block_invoke_141;
      v13[3] = &unk_1E788F8C8;
      v13[4] = WeakRetained;
      v14 = v5;
      [v10 enumerateObjectsUsingBlock:v13];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __44__WPBonjourNearBy__listenForSFBonjourEvents__block_invoke_141(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v2 + 40);
  v5 = [a2 unsignedIntValue];

  return [v4 nearby:v2 didLosePeer:v3 type:v5];
}

void __44__WPBonjourNearBy__listenForSFBonjourEvents__block_invoke_2_142(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v14 = a2;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_1A9662000, v7, OS_LOG_TYPE_DEFAULT, "Advertising state update isStarted %d with error %@\n", buf, 0x12u);
    }

    v8 = WeakRetained[3];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__WPBonjourNearBy__listenForSFBonjourEvents__block_invoke_143;
    v10[3] = &unk_1E788F918;
    v12 = a2;
    v10[4] = WeakRetained;
    v11 = v5;
    [v8 enumerateKeysAndObjectsUsingBlock:v10];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __44__WPBonjourNearBy__listenForSFBonjourEvents__block_invoke_143(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(*(a1 + 32) + 40);
  if (*(a1 + 48) == 1)
  {
    if (objc_opt_respondsToSelector())
    {
      [*(*(a1 + 32) + 40) nearby:*(a1 + 32) didStartAdvertisingType:{objc_msgSend(v7, "unsignedIntValue")}];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    [*(*(a1 + 32) + 40) nearby:*(a1 + 32) didStopAdvertisingType:objc_msgSend(v7 withError:{"unsignedIntValue"), *(a1 + 40)}];
  }
}

void __44__WPBonjourNearBy__listenForSFBonjourEvents__block_invoke_2_149(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_1A9662000, v8, OS_LOG_TYPE_DEFAULT, "Device didConnect %@ with error %@\n", &v11, 0x16u);
    }

    v9 = WeakRetained[5];
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained[5] nearby:WeakRetained didConnectToPeer:v5 transport:0 error:v6];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __44__WPBonjourNearBy__listenForSFBonjourEvents__block_invoke_153(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "Device didDisConnect %@", &v8, 0xCu);
    }

    v6 = WeakRetained[5];
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained[5] nearby:WeakRetained didDisconnectFromPeer:v3 error:0];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __44__WPBonjourNearBy__listenForSFBonjourEvents__block_invoke_157(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_1A9662000, v8, OS_LOG_TYPE_DEFAULT, "Device didReceiveData from %@ with data %@\n", &v11, 0x16u);
    }

    v9 = WeakRetained[5];
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained[5] nearby:WeakRetained didReceiveData:v6 fromPeer:v5];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)startAdvertisingOfType:(int64_t)a3 data:(id)a4 priority:(int64_t)a5 mode:(int64_t)a6 options:(id)a7
{
  v28 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a7;
  v12 = self;
  objc_sync_enter(v12);
  v13 = daemon_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v25 = a3;
    v26 = 2112;
    v27 = v10;
    _os_log_impl(&dword_1A9662000, v13, OS_LOG_TYPE_DEFAULT, "startAdvertisingOfType %ld with data %@\n", buf, 0x16u);
  }

  advertiserNearbyTypesAdvData = v12->_advertiserNearbyTypesAdvData;
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(NSMutableDictionary *)advertiserNearbyTypesAdvData setObject:v10 forKeyedSubscript:v15];

  objc_initWeak(buf, v12);
  v22[0] = @"WPBonjourNearbyType";
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v22[1] = @"WPBonjourNearbyPayloadKey";
  v23[0] = v16;
  v23[1] = v10;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];

  sfBonjourNearBy = v12->_sfBonjourNearBy;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __69__WPBonjourNearBy_startAdvertisingOfType_data_priority_mode_options___block_invoke;
  v20[3] = &unk_1E788F9B8;
  objc_copyWeak(v21, buf);
  v21[1] = a3;
  v20[4] = v12;
  [(SFBonjourNearBy *)sfBonjourNearBy startAdvertisingWithData:v17 completionHandler:v20];
  objc_destroyWeak(v21);

  objc_destroyWeak(buf);
  objc_sync_exit(v12);

  v19 = *MEMORY[0x1E69E9840];
}

void __69__WPBonjourNearBy_startAdvertisingOfType_data_priority_mode_options___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 5);
    v7 = *(a1 + 48);
    if (v10)
    {
      [v6 nearby:v5 didFailToStartAdvertisingOfType:v7 withError:v10];
      v8 = *(*(a1 + 32) + 16);
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
      [v8 removeObjectForKey:v9];
    }

    else
    {
      [v6 nearby:v5 didStartAdvertisingType:v7];
    }
  }
}

- (void)stopAdvertisingOfType:(int64_t)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = self;
  objc_sync_enter(v4);
  advertiserNearbyTypesAdvData = v4->_advertiserNearbyTypesAdvData;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v7 = [(NSMutableDictionary *)advertiserNearbyTypesAdvData objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v23 = a3;
      _os_log_impl(&dword_1A9662000, v8, OS_LOG_TYPE_DEFAULT, "stopAdvertisingOfType %ld", buf, 0xCu);
    }

    v20[0] = @"WPBonjourNearbyType";
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v20[1] = @"WPBonjourNearbyPayloadKey";
    v21[0] = v9;
    v10 = v4->_advertiserNearbyTypesAdvData;
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v12 = [(NSMutableDictionary *)v10 objectForKeyedSubscript:v11];
    v21[1] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];

    v14 = v4->_advertiserNearbyTypesAdvData;
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [(NSMutableDictionary *)v14 removeObjectForKey:v15];

    objc_initWeak(buf, v4);
    sfBonjourNearBy = v4->_sfBonjourNearBy;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __41__WPBonjourNearBy_stopAdvertisingOfType___block_invoke;
    v18[3] = &unk_1E788F9E0;
    objc_copyWeak(v19, buf);
    v19[1] = a3;
    [(SFBonjourNearBy *)sfBonjourNearBy stopAdvertisingForData:v13 completionHandler:v18];
    objc_destroyWeak(v19);
    objc_destroyWeak(buf);
  }

  else
  {
    v13 = daemon_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v23 = a3;
      _os_log_impl(&dword_1A9662000, v13, OS_LOG_TYPE_DEFAULT, "No Advertising for type %ld, not stopping anything!\n", buf, 0xCu);
    }
  }

  objc_sync_exit(v4);
  v17 = *MEMORY[0x1E69E9840];
}

void __41__WPBonjourNearBy_stopAdvertisingOfType___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[5] nearby:WeakRetained didStopAdvertisingType:*(a1 + 40) withError:v6];
  }
}

- (void)startScanningForType:(int64_t)a3 data:(id)a4 mask:(id)a5 peers:(id)a6 scanMode:(int64_t)a7 rssi:(id)a8 duplicates:(BOOL)a9 scanCache:(BOOL)a10 useCaseList:(id)a11
{
  v41[8] = *MEMORY[0x1E69E9840];
  v16 = a4;
  v17 = a5;
  v35 = a6;
  v37 = a8;
  v36 = a11;
  v18 = self;
  objc_sync_enter(v18);
  v40[0] = @"scanMode";
  v19 = [MEMORY[0x1E696AD98] numberWithInteger:a7];
  v41[0] = v19;
  v41[1] = v37;
  v40[1] = @"rssi";
  v40[2] = @"duplicates";
  v20 = [MEMORY[0x1E696AD98] numberWithBool:a9];
  v41[2] = v20;
  v40[3] = @"scanCache";
  v21 = [MEMORY[0x1E696AD98] numberWithBool:a10];
  v22 = v21;
  v23 = MEMORY[0x1E695E0F0];
  v24 = v36;
  if (!v36)
  {
    v24 = MEMORY[0x1E695E0F0];
  }

  v41[3] = v21;
  v41[4] = v24;
  v40[4] = @"useCaseList";
  v40[5] = @"payloadFilterData";
  v25 = v16;
  if (!v16)
  {
    v25 = [MEMORY[0x1E695DEF0] data];
  }

  v41[5] = v25;
  v40[6] = @"payloadFilterMaskData";
  v26 = v17;
  if (!v17)
  {
    v26 = [MEMORY[0x1E695DEF0] data];
  }

  v40[7] = @"peers";
  v27 = v35;
  if (!v35)
  {
    v27 = v23;
  }

  v41[6] = v26;
  v41[7] = v27;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:{8, a3}];
  if (!v17)
  {
  }

  if (!v16)
  {
  }

  scannerNearbyTypesToScan = v18->_scannerNearbyTypesToScan;
  v30 = [MEMORY[0x1E696AD98] numberWithInteger:v34];
  [(NSMutableDictionary *)scannerNearbyTypesToScan setObject:v28 forKey:v30];

  v31 = daemon_log();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v39 = v34;
    _os_log_impl(&dword_1A9662000, v31, OS_LOG_TYPE_DEFAULT, "[Discovery] starting for type %ld\n", buf, 0xCu);
  }

  [(SFBonjourNearBy *)v18->_sfBonjourNearBy startDiscovery];
  objc_sync_exit(v18);

  v32 = *MEMORY[0x1E69E9840];
}

- (void)stopScanningForType:(int64_t)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = self;
  objc_sync_enter(v4);
  v5 = daemon_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = a3;
    _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "[Discovery] stopping for type %ld\n", &v11, 0xCu);
  }

  scannerNearbyTypesToScan = v4->_scannerNearbyTypesToScan;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(NSMutableDictionary *)scannerNearbyTypesToScan removeObjectForKey:v7];

  v8 = [(NSMutableDictionary *)v4->_scannerNearbyTypesToScan allKeys];
  LODWORD(scannerNearbyTypesToScan) = [v8 count] == 0;

  sfBonjourNearBy = v4->_sfBonjourNearBy;
  if (scannerNearbyTypesToScan)
  {
    [(SFBonjourNearBy *)sfBonjourNearBy stopDiscovery];
  }

  else
  {
    [(SFBonjourNearBy *)sfBonjourNearBy startDiscovery];
  }

  objc_sync_exit(v4);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)connectToPeer:(id)a3 withOptions:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = daemon_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1A9662000, v6, OS_LOG_TYPE_DEFAULT, "Connecting to peer %@", &v8, 0xCu);
  }

  [(SFBonjourNearBy *)self->_sfBonjourNearBy connectToDevice:v5];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)disconnectFromPeer:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = daemon_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "Disconnecting from peer %@", &v7, 0xCu);
  }

  [(SFBonjourNearBy *)self->_sfBonjourNearBy disconnectFromDevice:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)sendData:(id)a3 toPeer:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  sfBonjourNearBy = self->_sfBonjourNearBy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __35__WPBonjourNearBy_sendData_toPeer___block_invoke;
  v11[3] = &unk_1E788FA08;
  objc_copyWeak(&v14, &location);
  v9 = v6;
  v12 = v9;
  v10 = v7;
  v13 = v10;
  [(SFBonjourNearBy *)sfBonjourNearBy sendData:v9 toDevice:v10 completionHandler:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __35__WPBonjourNearBy_sendData_toPeer___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[5];
    if (objc_opt_respondsToSelector())
    {
      [v4[5] nearby:v4 didSendData:*(a1 + 32) toPeer:*(a1 + 40) error:v6];
    }
  }
}

@end