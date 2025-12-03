@interface PMMAudioDisconnectListener
- (PMMAudioDisconnectListener)initWithHandler:(id)handler;
- (void)_setupAudioDisconnectListener;
- (void)_setupBluetoothDisconnectListener;
@end

@implementation PMMAudioDisconnectListener

- (PMMAudioDisconnectListener)initWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v11.receiver = self;
    v11.super_class = PMMAudioDisconnectListener;
    v6 = [(PMMAudioDisconnectListener *)&v11 init];
    if (v6)
    {
      v7 = [handlerCopy copy];
      disconnectHandler = v6->_disconnectHandler;
      v6->_disconnectHandler = v7;

      [(PMMAudioDisconnectListener *)v6 _setupAudioDisconnectListener];
      [(PMMAudioDisconnectListener *)v6 _setupBluetoothDisconnectListener];
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    [(PMMAudioDisconnectListener *)a2 initWithHandler:?];
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_setupAudioDisconnectListener
{
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__PMMAudioDisconnectListener__setupAudioDisconnectListener__block_invoke;
  v8[3] = &unk_278592560;
  objc_copyWeak(&v9, &location);
  v2 = MEMORY[0x22AA7E1B0](v8);
  v3 = __atxlog_handle_pmm();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_22639A000, v3, OS_LOG_TYPE_DEFAULT, "registering for audio disconnect callbacks", v7, 2u);
  }

  v4 = [MEMORY[0x277CFE338] predicateForAudioOutputStatus:0];
  v5 = [MEMORY[0x277CFE350] localWakingRegistrationWithIdentifier:@"com.apple.duetexpertd.mm.audiodisconnect" contextualPredicate:v4 clientIdentifier:@"com.apple.duetexpertd.cdidentifier" callback:v2];
  v6 = +[PMMContextHelper sharedInstance];
  [v6 registerForNotifications:v5];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __59__PMMAudioDisconnectListener__setupAudioDisconnectListener__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = __atxlog_handle_pmm();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_22639A000, v5, OS_LOG_TYPE_DEFAULT, "audio disconnect listener called, %@", &v8, 0xCu);
  }

  if (WeakRetained)
  {
    v6 = WeakRetained[1];
    if (v6)
    {
      (*(v6 + 16))();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_setupBluetoothDisconnectListener
{
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__PMMAudioDisconnectListener__setupBluetoothDisconnectListener__block_invoke;
  v8[3] = &unk_278592560;
  objc_copyWeak(&v9, &location);
  v2 = MEMORY[0x22AA7E1B0](v8);
  v3 = __atxlog_handle_pmm();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_22639A000, v3, OS_LOG_TYPE_DEFAULT, "registering for bluetooth disconnect callbacks", v7, 2u);
  }

  v4 = [MEMORY[0x277CFE338] predicateForBluetoothConnectionStatus:0];
  v5 = [MEMORY[0x277CFE350] localWakingRegistrationWithIdentifier:@"com.apple.duetexpertd.mm.bluetoothdisconnect" contextualPredicate:v4 clientIdentifier:@"com.apple.duetexpertd.cdidentifier" callback:v2];
  v6 = +[PMMContextHelper sharedInstance];
  [v6 registerForNotifications:v5];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __63__PMMAudioDisconnectListener__setupBluetoothDisconnectListener__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = __atxlog_handle_pmm();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v3;
    _os_log_impl(&dword_22639A000, v5, OS_LOG_TYPE_DEFAULT, "bluetooth disconnect listener called, %@", &v13, 0xCu);
  }

  if (WeakRetained)
  {
    v6 = [MEMORY[0x277CFE338] keyPathForBluetoothDataDictionary];
    v7 = +[PMMContextHelper sharedInstance];
    v8 = [v7 fetchDataDictionaryForKeyPath:v6];

    if (v8)
    {
      v9 = [MEMORY[0x277CFE338] bluetoothDeviceTypeKey];
      v10 = [v8 objectForKeyedSubscript:v9];

      if (v10)
      {
        if ([PMMAudioDisconnectListener bluetoothDeviceTypeIsAudio:v10])
        {
          v11 = WeakRetained[1];
          if (v11)
          {
            (*(v11 + 16))();
          }
        }
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)initWithHandler:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PMMAudioDisconnectListener.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
}

@end