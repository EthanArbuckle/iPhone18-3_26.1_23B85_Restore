@interface WPBonjourNearBy
- (WPBonjourNearBy)initWithDelegate:(id)delegate queue:(id)queue;
- (void)_listenForSFBonjourEvents;
- (void)connectToPeer:(id)peer withOptions:(id)options;
- (void)disconnectFromPeer:(id)peer;
- (void)sendData:(id)data toPeer:(id)peer;
- (void)startAdvertisingOfType:(int64_t)type data:(id)data priority:(int64_t)priority mode:(int64_t)mode options:(id)options;
- (void)startScanningForType:(int64_t)type data:(id)data mask:(id)mask peers:(id)peers scanMode:(int64_t)mode rssi:(id)rssi duplicates:(BOOL)duplicates scanCache:(BOOL)self0 useCaseList:(id)self1;
- (void)stopAdvertisingOfType:(int64_t)type;
- (void)stopScanningForType:(int64_t)type;
@end

@implementation WPBonjourNearBy

- (WPBonjourNearBy)initWithDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = WPBonjourNearBy;
  v9 = [(WPBonjourNearBy *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_delegate, delegate);
    objc_storeStrong(&v10->_dispatch_queue, queue);
    v11 = [[SFBonjourNearBy alloc] initWithQueue:queueCopy];
    sfBonjourNearBy = v10->_sfBonjourNearBy;
    v10->_sfBonjourNearBy = v11;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    advertiserNearbyTypesAdvData = v10->_advertiserNearbyTypesAdvData;
    v10->_advertiserNearbyTypesAdvData = dictionary;

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

- (void)startAdvertisingOfType:(int64_t)type data:(id)data priority:(int64_t)priority mode:(int64_t)mode options:(id)options
{
  v28 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  optionsCopy = options;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = daemon_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    typeCopy = type;
    v26 = 2112;
    v27 = dataCopy;
    _os_log_impl(&dword_1A9662000, v13, OS_LOG_TYPE_DEFAULT, "startAdvertisingOfType %ld with data %@\n", buf, 0x16u);
  }

  advertiserNearbyTypesAdvData = selfCopy->_advertiserNearbyTypesAdvData;
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [(NSMutableDictionary *)advertiserNearbyTypesAdvData setObject:dataCopy forKeyedSubscript:v15];

  objc_initWeak(buf, selfCopy);
  v22[0] = @"WPBonjourNearbyType";
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v22[1] = @"WPBonjourNearbyPayloadKey";
  v23[0] = v16;
  v23[1] = dataCopy;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];

  sfBonjourNearBy = selfCopy->_sfBonjourNearBy;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __69__WPBonjourNearBy_startAdvertisingOfType_data_priority_mode_options___block_invoke;
  v20[3] = &unk_1E788F9B8;
  objc_copyWeak(v21, buf);
  v21[1] = type;
  v20[4] = selfCopy;
  [(SFBonjourNearBy *)sfBonjourNearBy startAdvertisingWithData:v17 completionHandler:v20];
  objc_destroyWeak(v21);

  objc_destroyWeak(buf);
  objc_sync_exit(selfCopy);

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

- (void)stopAdvertisingOfType:(int64_t)type
{
  v24 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  advertiserNearbyTypesAdvData = selfCopy->_advertiserNearbyTypesAdvData;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v7 = [(NSMutableDictionary *)advertiserNearbyTypesAdvData objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      typeCopy2 = type;
      _os_log_impl(&dword_1A9662000, v8, OS_LOG_TYPE_DEFAULT, "stopAdvertisingOfType %ld", buf, 0xCu);
    }

    v20[0] = @"WPBonjourNearbyType";
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    v20[1] = @"WPBonjourNearbyPayloadKey";
    v21[0] = v9;
    v10 = selfCopy->_advertiserNearbyTypesAdvData;
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    v12 = [(NSMutableDictionary *)v10 objectForKeyedSubscript:v11];
    v21[1] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];

    v14 = selfCopy->_advertiserNearbyTypesAdvData;
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    [(NSMutableDictionary *)v14 removeObjectForKey:v15];

    objc_initWeak(buf, selfCopy);
    sfBonjourNearBy = selfCopy->_sfBonjourNearBy;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __41__WPBonjourNearBy_stopAdvertisingOfType___block_invoke;
    v18[3] = &unk_1E788F9E0;
    objc_copyWeak(v19, buf);
    v19[1] = type;
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
      typeCopy2 = type;
      _os_log_impl(&dword_1A9662000, v13, OS_LOG_TYPE_DEFAULT, "No Advertising for type %ld, not stopping anything!\n", buf, 0xCu);
    }
  }

  objc_sync_exit(selfCopy);
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

- (void)startScanningForType:(int64_t)type data:(id)data mask:(id)mask peers:(id)peers scanMode:(int64_t)mode rssi:(id)rssi duplicates:(BOOL)duplicates scanCache:(BOOL)self0 useCaseList:(id)self1
{
  v41[8] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  maskCopy = mask;
  peersCopy = peers;
  rssiCopy = rssi;
  listCopy = list;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v40[0] = @"scanMode";
  v19 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
  v41[0] = v19;
  v41[1] = rssiCopy;
  v40[1] = @"rssi";
  v40[2] = @"duplicates";
  v20 = [MEMORY[0x1E696AD98] numberWithBool:duplicates];
  v41[2] = v20;
  v40[3] = @"scanCache";
  v21 = [MEMORY[0x1E696AD98] numberWithBool:cache];
  v22 = v21;
  v23 = MEMORY[0x1E695E0F0];
  v24 = listCopy;
  if (!listCopy)
  {
    v24 = MEMORY[0x1E695E0F0];
  }

  v41[3] = v21;
  v41[4] = v24;
  v40[4] = @"useCaseList";
  v40[5] = @"payloadFilterData";
  data = dataCopy;
  if (!dataCopy)
  {
    data = [MEMORY[0x1E695DEF0] data];
  }

  v41[5] = data;
  v40[6] = @"payloadFilterMaskData";
  data2 = maskCopy;
  if (!maskCopy)
  {
    data2 = [MEMORY[0x1E695DEF0] data];
  }

  v40[7] = @"peers";
  v27 = peersCopy;
  if (!peersCopy)
  {
    v27 = v23;
  }

  v41[6] = data2;
  v41[7] = v27;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:{8, type}];
  if (!maskCopy)
  {
  }

  if (!dataCopy)
  {
  }

  scannerNearbyTypesToScan = selfCopy->_scannerNearbyTypesToScan;
  v30 = [MEMORY[0x1E696AD98] numberWithInteger:v34];
  [(NSMutableDictionary *)scannerNearbyTypesToScan setObject:v28 forKey:v30];

  v31 = daemon_log();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v39 = v34;
    _os_log_impl(&dword_1A9662000, v31, OS_LOG_TYPE_DEFAULT, "[Discovery] starting for type %ld\n", buf, 0xCu);
  }

  [(SFBonjourNearBy *)selfCopy->_sfBonjourNearBy startDiscovery];
  objc_sync_exit(selfCopy);

  v32 = *MEMORY[0x1E69E9840];
}

- (void)stopScanningForType:(int64_t)type
{
  v13 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = daemon_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    typeCopy = type;
    _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "[Discovery] stopping for type %ld\n", &v11, 0xCu);
  }

  scannerNearbyTypesToScan = selfCopy->_scannerNearbyTypesToScan;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [(NSMutableDictionary *)scannerNearbyTypesToScan removeObjectForKey:v7];

  allKeys = [(NSMutableDictionary *)selfCopy->_scannerNearbyTypesToScan allKeys];
  LODWORD(scannerNearbyTypesToScan) = [allKeys count] == 0;

  sfBonjourNearBy = selfCopy->_sfBonjourNearBy;
  if (scannerNearbyTypesToScan)
  {
    [(SFBonjourNearBy *)sfBonjourNearBy stopDiscovery];
  }

  else
  {
    [(SFBonjourNearBy *)sfBonjourNearBy startDiscovery];
  }

  objc_sync_exit(selfCopy);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)connectToPeer:(id)peer withOptions:(id)options
{
  v10 = *MEMORY[0x1E69E9840];
  peerCopy = peer;
  v6 = daemon_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = peerCopy;
    _os_log_impl(&dword_1A9662000, v6, OS_LOG_TYPE_DEFAULT, "Connecting to peer %@", &v8, 0xCu);
  }

  [(SFBonjourNearBy *)self->_sfBonjourNearBy connectToDevice:peerCopy];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)disconnectFromPeer:(id)peer
{
  v9 = *MEMORY[0x1E69E9840];
  peerCopy = peer;
  v5 = daemon_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = peerCopy;
    _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "Disconnecting from peer %@", &v7, 0xCu);
  }

  [(SFBonjourNearBy *)self->_sfBonjourNearBy disconnectFromDevice:peerCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)sendData:(id)data toPeer:(id)peer
{
  dataCopy = data;
  peerCopy = peer;
  objc_initWeak(&location, self);
  sfBonjourNearBy = self->_sfBonjourNearBy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __35__WPBonjourNearBy_sendData_toPeer___block_invoke;
  v11[3] = &unk_1E788FA08;
  objc_copyWeak(&v14, &location);
  v9 = dataCopy;
  v12 = v9;
  v10 = peerCopy;
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