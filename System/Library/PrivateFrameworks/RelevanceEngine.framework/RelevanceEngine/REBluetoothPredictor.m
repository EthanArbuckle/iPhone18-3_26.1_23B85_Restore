@interface REBluetoothPredictor
+ (id)bluetoothQueue;
+ (id)supportedFeatures;
- (BOOL)connectedToCar;
- (BOOL)connectedToSpeaker;
- (id)_init;
- (id)featureValueForFeature:(id)a3 element:(id)a4 engine:(id)a5 trainingContext:(id)a6;
- (void)_registerForBluetoothNotifications;
- (void)_unregisterForBluetoothNotifications;
- (void)pause;
- (void)resume;
- (void)update;
@end

@implementation REBluetoothPredictor

+ (id)bluetoothQueue
{
  if (bluetoothQueue_onceToken != -1)
  {
    +[REBluetoothPredictor bluetoothQueue];
  }

  v3 = bluetoothQueue_queue;

  return v3;
}

uint64_t __38__REBluetoothPredictor_bluetoothQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.relevanceengine.predictor.bluetooth", 0);
  v1 = bluetoothQueue_queue;
  bluetoothQueue_queue = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)_init
{
  v23.receiver = self;
  v23.super_class = REBluetoothPredictor;
  v2 = [(REPredictor *)&v23 _init];
  v3 = v2;
  if (v2)
  {
    [v2 setLocalDevices:MEMORY[0x277CBEC10]];
    objc_initWeak(&location, v3);
    v4 = [v3 queue];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __29__REBluetoothPredictor__init__block_invoke;
    v20 = &unk_2785F9A90;
    objc_copyWeak(&v21, &location);
    v5 = [REUpNextScheduler schedulerWithQueue:v4 delay:&v17 updateBlock:0.1];
    v6 = v3[10];
    v3[10] = v5;

    v7 = MEMORY[0x277CBEB98];
    v8 = [REDuetContextDevice localDevice:v17];
    v9 = [v7 setWithObject:v8];

    v10 = +[(RESingleton *)REDuetContextStore];
    v11 = [v10 isConnectedToCarQuery];
    v12 = v3[8];
    v3[8] = v11;

    [v3[8] setDevices:v9];
    v13 = +[(RESingleton *)REDuetContextStore];
    v14 = [v13 isConnectedToAudioBluetoothDeviceQuery];
    v15 = v3[9];
    v3[9] = v14;

    [v3[9] setDevices:v9];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __29__REBluetoothPredictor__init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained update];
}

+ (id)supportedFeatures
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = [REFeatureSet alloc];
  v3 = +[REFeature isConnectedToCarFeature];
  v9[0] = v3;
  v4 = +[REFeature isConnectedToBluetoothSpeakerFeature];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v6 = [(REFeatureSet *)v2 initWithFeatures:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)featureValueForFeature:(id)a3 element:(id)a4 engine:(id)a5 trainingContext:(id)a6
{
  v7 = a3;
  v8 = +[REFeature isConnectedToCarFeature];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = [(REBluetoothPredictor *)self connectedToCar];
LABEL_5:
    v13 = [REFeatureValue featureValueWithBool:v10];
    goto LABEL_7;
  }

  v11 = +[REFeature isConnectedToBluetoothSpeakerFeature];
  v12 = [v7 isEqual:v11];

  if (v12)
  {
    v10 = [(REBluetoothPredictor *)self connectedToSpeaker];
    goto LABEL_5;
  }

  v13 = 0;
LABEL_7:

  return v13;
}

- (void)resume
{
  objc_initWeak(&location, self);
  [(REBluetoothPredictor *)self _setConnectedToSpeaker:0];
  [(REBluetoothPredictor *)self _setConnectedToCar:0];
  v3 = +[(RESingleton *)REDuetContextStore];
  connectCarQuery = self->_connectCarQuery;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __30__REBluetoothPredictor_resume__block_invoke;
  v9[3] = &unk_2785FD258;
  objc_copyWeak(&v10, &location);
  [v3 registerForQuery:connectCarQuery updateBlock:v9];

  v5 = +[(RESingleton *)REDuetContextStore];
  connectAudioQuery = self->_connectAudioQuery;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__REBluetoothPredictor_resume__block_invoke_2;
  v7[3] = &unk_2785FD258;
  objc_copyWeak(&v8, &location);
  [v5 registerForQuery:connectAudioQuery updateBlock:v7];

  [(REBluetoothPredictor *)self _registerForBluetoothNotifications];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __30__REBluetoothPredictor_resume__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v6 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setConnectedToCar:v4];
  [WeakRetained updateObservers];
}

void __30__REBluetoothPredictor_resume__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v6 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setConnectedToSpeaker:v4];
  [WeakRetained updateObservers];
}

- (void)pause
{
  v3 = +[(RESingleton *)REDuetContextStore];
  [v3 unregisterForQuery:self->_connectCarQuery];

  v4 = +[(RESingleton *)REDuetContextStore];
  [v4 unregisterForQuery:self->_connectAudioQuery];

  [(REBluetoothPredictor *)self _unregisterForBluetoothNotifications];
}

- (void)update
{
  if (BluetoothManagerLibraryCore())
  {
    [(REPredictor *)self beginFetchingData];
    if (update_onceToken != -1)
    {
      [REBluetoothPredictor update];
    }

    v3 = [(REPredictor *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__REBluetoothPredictor_update__block_invoke_2;
    block[3] = &unk_2785F9AB8;
    block[4] = self;
    dispatch_async(v3, block);
  }
}

void __30__REBluetoothPredictor_update__block_invoke()
{
  BluetoothManagerClass = getBluetoothManagerClass();
  v1 = +[REBluetoothPredictor bluetoothQueue];
  [BluetoothManagerClass setSharedInstanceQueue:v1];
}

void __30__REBluetoothPredictor_update__block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [getBluetoothManagerClass() sharedInstance];
  v17 = a1;
  v3 = [*(a1 + 32) localDevices];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [v2 connectedDevices];
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [v10 address];
        if ([v11 length])
        {
          v12 = [v10 type];
          if (v12 <= 0x2F && ((1 << v12) & 0x800000DB0000) != 0)
          {
            [v4 setObject:v10 forKeyedSubscript:v11];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__REBluetoothPredictor_update__block_invoke_3;
  block[3] = &unk_2785FB070;
  v19 = v3;
  v20 = v4;
  v21 = *(v17 + 32);
  v14 = v4;
  v15 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v16 = *MEMORY[0x277D85DE8];
}

void __30__REBluetoothPredictor_update__block_invoke_3(id *a1)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [a1[4] allKeys];
  v10 = [v2 setWithArray:v3];

  v4 = MEMORY[0x277CBEB98];
  v5 = [a1[5] allKeys];
  v6 = [v4 setWithArray:v5];

  v7 = [v6 isEqualToSet:v10];
  v8 = a1[6];
  if (v7)
  {
    [a1[6] finishFetchingData];
  }

  else
  {
    v9 = [a1[5] copy];
    [v8 setLocalDevices:v9];

    [a1[6] finishFetchingData];
    [a1[6] updateObservers];
  }
}

- (BOOL)connectedToSpeaker
{
  v20 = *MEMORY[0x277D85DE8];
  if ([(REBluetoothPredictor *)self _isConnectedToSpeaker])
  {
    v3 = 1;
  }

  else
  {
    v4 = [(REBluetoothPredictor *)self localDevices];
    [v4 allValues];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v18 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [v10 type];
          if (v11 <= 0x2F && ((1 << v11) & 0x800000DB0000) != 0)
          {

            v3 = 1;
            goto LABEL_17;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v3 = 0;
      }

      while (v7);
    }

    else
    {
      v3 = 0;
    }

LABEL_17:
  }

  v13 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)connectedToCar
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(REBluetoothPredictor *)self _isConnctedToCar])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v4 = [(REBluetoothPredictor *)self localDevices];
    [v4 allValues];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = v13 = 0u;
    v3 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v10 + 1) + 8 * i) type] == 22)
          {
            LOBYTE(v3) = 1;
            goto LABEL_13;
          }
        }

        v3 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v8 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)_registerForBluetoothNotifications
{
  if (BluetoothManagerLibraryCore())
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    bluetoothNotificationScheduler = self->_bluetoothNotificationScheduler;
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v5 = getBluetoothAvailabilityChangedNotificationSymbolLoc_ptr;
    v38 = getBluetoothAvailabilityChangedNotificationSymbolLoc_ptr;
    if (!getBluetoothAvailabilityChangedNotificationSymbolLoc_ptr)
    {
      v6 = BluetoothManagerLibrary();
      v36[3] = dlsym(v6, "BluetoothAvailabilityChangedNotification");
      getBluetoothAvailabilityChangedNotificationSymbolLoc_ptr = v36[3];
      v5 = v36[3];
    }

    _Block_object_dispose(&v35, 8);
    if (v5)
    {
      [v3 addObserver:bluetoothNotificationScheduler selector:sel_schedule name:*v5 object:0];
      v7 = self->_bluetoothNotificationScheduler;
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v8 = getBluetoothPowerChangedNotificationSymbolLoc_ptr;
      v38 = getBluetoothPowerChangedNotificationSymbolLoc_ptr;
      if (!getBluetoothPowerChangedNotificationSymbolLoc_ptr)
      {
        v9 = BluetoothManagerLibrary();
        v36[3] = dlsym(v9, "BluetoothPowerChangedNotification");
        getBluetoothPowerChangedNotificationSymbolLoc_ptr = v36[3];
        v8 = v36[3];
      }

      _Block_object_dispose(&v35, 8);
      if (v8)
      {
        [v3 addObserver:v7 selector:sel_schedule name:*v8 object:0];
        v10 = self->_bluetoothNotificationScheduler;
        v35 = 0;
        v36 = &v35;
        v37 = 0x2020000000;
        v11 = getBluetoothDeviceRemovedNotificationSymbolLoc_ptr;
        v38 = getBluetoothDeviceRemovedNotificationSymbolLoc_ptr;
        if (!getBluetoothDeviceRemovedNotificationSymbolLoc_ptr)
        {
          v12 = BluetoothManagerLibrary();
          v36[3] = dlsym(v12, "BluetoothDeviceRemovedNotification");
          getBluetoothDeviceRemovedNotificationSymbolLoc_ptr = v36[3];
          v11 = v36[3];
        }

        _Block_object_dispose(&v35, 8);
        if (v11)
        {
          [v3 addObserver:v10 selector:sel_schedule name:*v11 object:0];
          v13 = self->_bluetoothNotificationScheduler;
          v35 = 0;
          v36 = &v35;
          v37 = 0x2020000000;
          v14 = getBluetoothDeviceUnpairedNotificationSymbolLoc_ptr;
          v38 = getBluetoothDeviceUnpairedNotificationSymbolLoc_ptr;
          if (!getBluetoothDeviceUnpairedNotificationSymbolLoc_ptr)
          {
            v15 = BluetoothManagerLibrary();
            v36[3] = dlsym(v15, "BluetoothDeviceUnpairedNotification");
            getBluetoothDeviceUnpairedNotificationSymbolLoc_ptr = v36[3];
            v14 = v36[3];
          }

          _Block_object_dispose(&v35, 8);
          if (v14)
          {
            [v3 addObserver:v13 selector:sel_schedule name:*v14 object:0];
            v16 = self->_bluetoothNotificationScheduler;
            v35 = 0;
            v36 = &v35;
            v37 = 0x2020000000;
            v17 = getBluetoothDeviceConnectSuccessNotificationSymbolLoc_ptr;
            v38 = getBluetoothDeviceConnectSuccessNotificationSymbolLoc_ptr;
            if (!getBluetoothDeviceConnectSuccessNotificationSymbolLoc_ptr)
            {
              v18 = BluetoothManagerLibrary();
              v36[3] = dlsym(v18, "BluetoothDeviceConnectSuccessNotification");
              getBluetoothDeviceConnectSuccessNotificationSymbolLoc_ptr = v36[3];
              v17 = v36[3];
            }

            _Block_object_dispose(&v35, 8);
            if (v17)
            {
              [v3 addObserver:v16 selector:sel_schedule name:*v17 object:0];
              v19 = self->_bluetoothNotificationScheduler;
              v35 = 0;
              v36 = &v35;
              v37 = 0x2020000000;
              v20 = getBluetoothDeviceConnectFailedNotificationSymbolLoc_ptr;
              v38 = getBluetoothDeviceConnectFailedNotificationSymbolLoc_ptr;
              if (!getBluetoothDeviceConnectFailedNotificationSymbolLoc_ptr)
              {
                v21 = BluetoothManagerLibrary();
                v36[3] = dlsym(v21, "BluetoothDeviceConnectFailedNotification");
                getBluetoothDeviceConnectFailedNotificationSymbolLoc_ptr = v36[3];
                v20 = v36[3];
              }

              _Block_object_dispose(&v35, 8);
              if (v20)
              {
                [v3 addObserver:v19 selector:sel_schedule name:*v20 object:0];
                v22 = self->_bluetoothNotificationScheduler;
                v35 = 0;
                v36 = &v35;
                v37 = 0x2020000000;
                v23 = getBluetoothDeviceDisconnectSuccessNotificationSymbolLoc_ptr;
                v38 = getBluetoothDeviceDisconnectSuccessNotificationSymbolLoc_ptr;
                if (!getBluetoothDeviceDisconnectSuccessNotificationSymbolLoc_ptr)
                {
                  v24 = BluetoothManagerLibrary();
                  v36[3] = dlsym(v24, "BluetoothDeviceDisconnectSuccessNotification");
                  getBluetoothDeviceDisconnectSuccessNotificationSymbolLoc_ptr = v36[3];
                  v23 = v36[3];
                }

                _Block_object_dispose(&v35, 8);
                if (v23)
                {
                  [v3 addObserver:v22 selector:sel_schedule name:*v23 object:0];
                  v25 = self->_bluetoothNotificationScheduler;
                  v35 = 0;
                  v36 = &v35;
                  v37 = 0x2020000000;
                  v26 = getBluetoothDeviceDisconnectFailedNotificationSymbolLoc_ptr;
                  v38 = getBluetoothDeviceDisconnectFailedNotificationSymbolLoc_ptr;
                  if (!getBluetoothDeviceDisconnectFailedNotificationSymbolLoc_ptr)
                  {
                    v27 = BluetoothManagerLibrary();
                    v36[3] = dlsym(v27, "BluetoothDeviceDisconnectFailedNotification");
                    getBluetoothDeviceDisconnectFailedNotificationSymbolLoc_ptr = v36[3];
                    v26 = v36[3];
                  }

                  _Block_object_dispose(&v35, 8);
                  if (v26)
                  {
                    [v3 addObserver:v25 selector:sel_schedule name:*v26 object:0];
                    v28 = self->_bluetoothNotificationScheduler;
                    v35 = 0;
                    v36 = &v35;
                    v37 = 0x2020000000;
                    v29 = getBluetoothConnectionStatusChangedNotificationSymbolLoc_ptr;
                    v38 = getBluetoothConnectionStatusChangedNotificationSymbolLoc_ptr;
                    if (!getBluetoothConnectionStatusChangedNotificationSymbolLoc_ptr)
                    {
                      v30 = BluetoothManagerLibrary();
                      v36[3] = dlsym(v30, "BluetoothConnectionStatusChangedNotification");
                      getBluetoothConnectionStatusChangedNotificationSymbolLoc_ptr = v36[3];
                      v29 = v36[3];
                    }

                    _Block_object_dispose(&v35, 8);
                    if (v29)
                    {
                      [v3 addObserver:v28 selector:sel_schedule name:*v29 object:0];
                      v31 = self->_bluetoothNotificationScheduler;
                      v35 = 0;
                      v36 = &v35;
                      v37 = 0x2020000000;
                      v32 = getBluetoothPairedStatusChangedNotificationSymbolLoc_ptr;
                      v38 = getBluetoothPairedStatusChangedNotificationSymbolLoc_ptr;
                      if (!getBluetoothPairedStatusChangedNotificationSymbolLoc_ptr)
                      {
                        v33 = BluetoothManagerLibrary();
                        v36[3] = dlsym(v33, "BluetoothPairedStatusChangedNotification");
                        getBluetoothPairedStatusChangedNotificationSymbolLoc_ptr = v36[3];
                        v32 = v36[3];
                      }

                      _Block_object_dispose(&v35, 8);
                      if (v32)
                      {
                        [v3 addObserver:v31 selector:sel_schedule name:*v32 object:0];

                        return;
                      }

LABEL_43:
                      v34 = [RELemmaEnumerator init];
                      _Block_object_dispose(&v35, 8);
                      _Unwind_Resume(v34);
                    }

LABEL_42:
                    [RELemmaEnumerator init];
                    goto LABEL_43;
                  }

LABEL_41:
                  [RELemmaEnumerator init];
                  goto LABEL_42;
                }

LABEL_40:
                [RELemmaEnumerator init];
                goto LABEL_41;
              }

LABEL_39:
              [RELemmaEnumerator init];
              goto LABEL_40;
            }

LABEL_38:
            [RELemmaEnumerator init];
            goto LABEL_39;
          }

LABEL_37:
          [RELemmaEnumerator init];
          goto LABEL_38;
        }

LABEL_36:
        [RELemmaEnumerator init];
        goto LABEL_37;
      }
    }

    else
    {
      [RELemmaEnumerator init];
    }

    [RELemmaEnumerator init];
    goto LABEL_36;
  }
}

- (void)_unregisterForBluetoothNotifications
{
  if (BluetoothManagerLibraryCore())
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self->_bluetoothNotificationScheduler];
  }
}

@end