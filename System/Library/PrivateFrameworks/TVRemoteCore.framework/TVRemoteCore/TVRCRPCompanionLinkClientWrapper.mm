@interface TVRCRPCompanionLinkClientWrapper
+ (TVRCRPCompanionLinkClientWrapper)wrapperWithDevice:(id)a3;
- (BOOL)_featureSupported:(id)a3;
- (NSDictionary)alternateIdentifiers;
- (NSString)description;
- (NSString)identifier;
- (NSString)idsIdentifier;
- (NSString)model;
- (NSString)name;
- (NSString)sourceVersion;
- (TVRCRPCompanionLinkClientWrapper)initWithDevice:(id)a3;
- (_TVRCCompanionLinkClientWrapperDelegate)delegate;
- (id)_stringForFeatureFlags:(unint64_t)a3;
- (id)newCompanionLinkClient;
- (id)supportedButtons;
- (int)_commandForButtonEvent:(id)a3;
- (int)_stateForButtonEvent:(id)a3;
- (int64_t)linkType;
- (void)_disconnectWithError:(id)a3;
- (void)_fetchSiriEnabledWithSiriInfo:(id)a3 completionHandler:(id)a4;
- (void)_fetchTVSystemStatusAndStartMonitoring;
- (void)_handleSideEffectsForEvent:(id)a3;
- (void)_invalidateAndReset;
- (void)_invalidateAndResetWithCompletionHandler:(id)a3;
- (void)_invalidateRemoteFindingManager;
- (void)_launchApplicationOrURL:(id)a3;
- (void)_resetState;
- (void)_resolveFeatureFlags;
- (void)_sendSessionStart;
- (void)_sendSessionStop;
- (void)_setupFeatureServicesIfNeeded;
- (void)_setupHidSessionIfNeeded;
- (void)_setupLegacyMediaEventsManager;
- (void)_setupMediaEventsManager;
- (void)_setupRemoteFindingManagerIfNeeded;
- (void)_setupTextInputSessionIfNeeded;
- (void)_setupTouchSessionIfNeeded;
- (void)_startMonitoringNowPlayingInfo;
- (void)_startMonitoringSupportedActions;
- (void)_startMonitoringTVSystemStatus;
- (void)_stopMonitoringNowPlayingInfo;
- (void)_stopMonitoringSupportedActions;
- (void)_stopMonitoringTVSystemStatus;
- (void)_updateAttentionState:(int64_t)a3;
- (void)_updateConnectedState;
- (void)_updateNowPlayingInfo:(id)a3;
- (void)_updateSiriRemoteFindingState:(int64_t)a3;
- (void)_updateSiriStatusFromSiriInfo:(id)a3;
- (void)_updateSupportedButtons;
- (void)addItemWithMediaIdentifier:(id)a3 completion:(id)a4;
- (void)connect;
- (void)dealloc;
- (void)deregisterEvent:(id)a3;
- (void)disconnect;
- (void)disconnectWithError:(id)a3;
- (void)fetchLaunchableAppsWithCompletion:(id)a3;
- (void)fetchUpNextInfoWithPaginationToken:(id)a3 completion:(id)a4;
- (void)getCurrentRTISourceSession:(id)a3;
- (void)launchAppWithBundleID:(id)a3 completion:(id)a4;
- (void)markAsWatchedWithMediaIdentifier:(id)a3 completion:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)playItem:(id)a3 completion:(id)a4;
- (void)reconnect;
- (void)reestablishConnectionWithCompletionHandler:(id)a3;
- (void)registerEvent:(id)a3 options:(id)a4 handler:(id)a5;
- (void)removeItemWithMediaIdentifier:(id)a3 completion:(id)a4;
- (void)rpSiriSessionDidReceiveStopRecording;
- (void)sendButtonEvent:(id)a3;
- (void)sendEvent:(id)a3 options:(id)a4 shouldRetry:(BOOL)a5 response:(id)a6;
- (void)sendTouchEvent:(id)a3;
- (void)setRTISessionHandler:(id)a3;
- (void)sourceVersion;
- (void)toggleCaptions:(BOOL)a3;
- (void)updateWithDevice:(id)a3;
@end

@implementation TVRCRPCompanionLinkClientWrapper

+ (TVRCRPCompanionLinkClientWrapper)wrapperWithDevice:(id)a3
{
  v3 = a3;
  v4 = [[TVRCRPCompanionLinkClientWrapper alloc] initWithDevice:v3];

  return v4;
}

- (TVRCRPCompanionLinkClientWrapper)initWithDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TVRCRPCompanionLinkClientWrapper;
  v6 = [(TVRCRPCompanionLinkClientWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v7->_connected = 0;
    [(TVRCRPCompanionLinkClientWrapper *)v7 _resolveFeatureFlags];
  }

  return v7;
}

- (NSString)name
{
  v2 = [(RPCompanionLinkDevice *)self->_device name];
  v3 = [v2 copy];

  return v3;
}

- (NSString)identifier
{
  v2 = [(RPCompanionLinkDevice *)self->_device effectiveIdentifier];
  v3 = [v2 copy];

  return v3;
}

- (NSString)idsIdentifier
{
  v2 = [(RPCompanionLinkDevice *)self->_device idsDeviceIdentifier];
  v3 = [v2 copy];

  return v3;
}

- (NSDictionary)alternateIdentifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(RPCompanionLinkDevice *)self->_device mediaRemoteIdentifier];
  v5 = [(RPCompanionLinkDevice *)self->_device mediaRouteIdentifier];
  v6 = [(RPCompanionLinkDevice *)self->_device name];
  v7 = [(RPCompanionLinkDevice *)self->_device idsDeviceIdentifier];
  v8 = [(RPCompanionLinkDevice *)self->_device homeKitIdentifier];
  v9 = [v8 UUIDString];

  if (v7)
  {
    [v3 setObject:v7 forKey:@"TVRCIDSID"];
  }

  if (v9)
  {
    [v3 setObject:v9 forKey:@"HomeKitID"];
  }

  if (v4)
  {
    [v3 setObject:v4 forKey:@"MediaRemoteID"];
  }

  if (v5)
  {
    [v3 setObject:v5 forKey:@"AirplayID"];
  }

  if (v6)
  {
    [v3 setObject:v6 forKey:@"DeviceName"];
  }

  v10 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];

  return v10;
}

- (NSString)model
{
  v2 = [(RPCompanionLinkDevice *)self->_device model];
  v3 = [v2 copy];

  return v3;
}

- (int64_t)linkType
{
  if (([(RPCompanionLinkDevice *)self->_device statusFlags]& 4) != 0)
  {
    return 3;
  }

  if (([(RPCompanionLinkDevice *)self->_device statusFlags]& 0x200) != 0)
  {
    return 2;
  }

  return ([(RPCompanionLinkDevice *)self->_device statusFlags]>> 1) & 1;
}

- (void)updateWithDevice:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _TVRCRapportLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *v28 = "[TVRCRPCompanionLinkClientWrapper updateWithDevice:]";
    *&v28[8] = 2114;
    v29 = v5;
    v30 = 2114;
    v31 = self;
    _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "%s - device: %{public}@, %{public}@", buf, 0x20u);
  }

  p_device = &self->_device;
  v8 = [(RPCompanionLinkDevice *)self->_device isEqualToRPDevice:v5];
  v9 = _TVRCRapportLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_26CF7F000, v9, OS_LOG_TYPE_DEFAULT, "Devices are the same", buf, 2u);
    }

    v11 = [(RPCompanionLinkDevice *)*p_device deviceCapabilityFlags];
    v12 = [v5 deviceCapabilityFlags];
    if (v11 != v12)
    {
      v13 = _TVRCRapportLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(RPCompanionLinkDevice *)*p_device deviceCapabilityFlags];
        v15 = [v5 deviceCapabilityFlags];
        *buf = 67109376;
        *v28 = v14;
        *&v28[4] = 1024;
        *&v28[6] = v15;
        _os_log_impl(&dword_26CF7F000, v13, OS_LOG_TYPE_DEFAULT, "Device capabilities changed: old: %d, new: %d", buf, 0xEu);
      }
    }

    v16 = [(RPCompanionLinkDevice *)*p_device name];
    v17 = [v5 name];
    if (([v16 isEqualToString:v17] & 1) == 0)
    {
      v18 = _TVRCRapportLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [(RPCompanionLinkDevice *)*p_device name];
        v19 = [v5 name];
        *buf = 138543618;
        *v28 = v26;
        *&v28[8] = 2114;
        v29 = v19;
        v20 = v19;
        _os_log_impl(&dword_26CF7F000, v18, OS_LOG_TYPE_DEFAULT, "Device name changed: old: %{public}@, new: %{public}@", buf, 0x16u);
      }
    }

    objc_storeStrong(&self->_device, a3);
    if (v11 != v12)
    {
      v21 = [(TVRCRPCompanionLinkClientWrapper *)self _findMyRemoteSupportedForDevice:v5];
      v22 = [(TVRCRPCompanionLinkClientWrapper *)self delegate];
      [v22 deviceSupportsFindMyRemote:v21];
    }

    v23 = [(TVRCRPCompanionLinkClientWrapper *)self delegate];
    [v23 didUpdateDevice:self];
  }

  else
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_26CF7F000, v9, OS_LOG_TYPE_DEFAULT, "Devices are not the same", buf, 2u);
    }

    objc_storeStrong(&self->_device, a3);
    if ([(TVRCRPCompanionLinkClientWrapper *)self connected])
    {
      v24 = _TVRCRapportLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *v28 = v5;
        _os_log_impl(&dword_26CF7F000, v24, OS_LOG_TYPE_DEFAULT, "Device was connected. Attempting to reconnect to new device: %{public}@", buf, 0xCu);
      }

      [(TVRCRPCompanionLinkClientWrapper *)self reconnect];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)reconnect
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _TVRCRapportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "[TVRCRPCompanionLinkClientWrapper reconnect]";
    v8 = 2112;
    v9 = self;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__TVRCRPCompanionLinkClientWrapper_reconnect__block_invoke;
  v5[3] = &unk_279D825E0;
  v5[4] = self;
  [(TVRCRPCompanionLinkClientWrapper *)self _invalidateAndResetWithCompletionHandler:v5];
  self->_connectionState = 1;
  v4 = *MEMORY[0x277D85DE8];
}

- (void)reestablishConnectionWithCompletionHandler:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRCRapportLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[TVRCRPCompanionLinkClientWrapper reestablishConnectionWithCompletionHandler:]";
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v6 = [(TVRCRPCompanionLinkClientWrapper *)self newCompanionLinkClient];
  objc_initWeak(buf, v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__TVRCRPCompanionLinkClientWrapper_reestablishConnectionWithCompletionHandler___block_invoke;
  v9[3] = &unk_279D83278;
  v7 = v4;
  v10 = v7;
  objc_copyWeak(&v11, buf);
  [v6 activateWithCompletion:v9];
  objc_destroyWeak(&v11);

  objc_destroyWeak(buf);
  v8 = *MEMORY[0x277D85DE8];
}

void __79__TVRCRPCompanionLinkClientWrapper_reestablishConnectionWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _TVRCRapportLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __79__TVRCRPCompanionLinkClientWrapper_reestablishConnectionWithCompletionHandler___block_invoke_cold_1(v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Reestablished connection with success", v8, 2u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];
}

- (void)connect
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = _TVRCRapportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    device = self->_device;
    *buf = 136315650;
    v34 = "[TVRCRPCompanionLinkClientWrapper connect]";
    v35 = 2112;
    v36 = self;
    v37 = 2114;
    v38 = device;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s %@ %{public}@", buf, 0x20u);
  }

  objc_initWeak(&location, self);
  if (![(TVRCRPCompanionLinkClientWrapper *)self activated]|| ([(TVRCRPCompanionLinkClientWrapper *)self companionClient], v5 = objc_claimAutoreleasedReturnValue(), v6 = v5 == 0, v5, v6))
  {
    self->_connectionState = 1;
    if (!self->_companionClient)
    {
      v8 = [(TVRCRPCompanionLinkClientWrapper *)self newCompanionLinkClient];
      companionClient = self->_companionClient;
      self->_companionClient = v8;

      v10 = self->_companionClient;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke;
      v30[3] = &unk_279D826E8;
      objc_copyWeak(&v31, &location);
      [(RPCompanionLinkClient *)v10 setInvalidationHandler:v30];
      v11 = self->_companionClient;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke_4;
      v28[3] = &unk_279D826E8;
      objc_copyWeak(&v29, &location);
      [(RPCompanionLinkClient *)v11 setInterruptionHandler:v28];
      v12 = [(RPCompanionLinkDevice *)self->_device flags];
      self->_authenticated = (v12 & 1) == 0;
      if (v12)
      {
        v13 = _TVRCRapportLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26CF7F000, v13, OS_LOG_TYPE_DEFAULT, "Device is not authenticated. Setting up prompt for password handlers.", buf, 2u);
        }

        [(RPCompanionLinkClient *)self->_companionClient setFlags:1];
        [(RPCompanionLinkClient *)self->_companionClient setPasswordType:1];
        v14 = self->_companionClient;
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke_5;
        v26[3] = &unk_279D832C8;
        objc_copyWeak(&v27, &location);
        [(RPCompanionLinkClient *)v14 setPromptForPasswordHandler:v26];
        v15 = self->_companionClient;
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke_10;
        v24[3] = &unk_279D82D38;
        objc_copyWeak(&v25, &location);
        [(RPCompanionLinkClient *)v15 setAuthCompletionHandler:v24];
        objc_destroyWeak(&v25);
        objc_destroyWeak(&v27);
      }

      objc_destroyWeak(&v29);
      objc_destroyWeak(&v31);
    }

    v16 = _TVRCRapportLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = self;
      _os_log_impl(&dword_26CF7F000, v16, OS_LOG_TYPE_DEFAULT, "Activate companion client %@", buf, 0xCu);
    }

    v17 = self->_companionClient;
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke_11;
    v22 = &unk_279D82D38;
    objc_copyWeak(&v23, &location);
    [(RPCompanionLinkClient *)v17 activateWithCompletion:&v19];
    [(RPCompanionLinkClient *)self->_companionClient setEventIDRegistrationCompletion:&__block_literal_global_10, v19, v20, v21, v22];
    [(TVRCRPCompanionLinkClientWrapper *)self _updateConnectedState];
    objc_destroyWeak(&v23);
  }

  else
  {
    v7 = _TVRCRapportLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = self;
      _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "CompanionClient is already activated %@", buf, 0xCu);
    }

    [(TVRCRPCompanionLinkClientWrapper *)self _updateConnectedState];
  }

  objc_destroyWeak(&location);
  v18 = *MEMORY[0x277D85DE8];
}

void __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = _TVRCRapportLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CF7F000, v2, OS_LOG_TYPE_DEFAULT, "companionLinkClient invalidationHandler", buf, 2u);
    }

    if (WeakRetained[8] == 1)
    {
      v3 = TVRCMakeError(400, 0);
      [WeakRetained _disconnectWithError:v3];
    }

    WeakRetained[18] = 0;
    v4 = [WeakRetained invalidationCompletionBlock];

    if (v4)
    {
      v5 = _TVRCRapportLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Executing queued connection request", v7, 2u);
      }

      v6 = [WeakRetained invalidationCompletionBlock];
      v6[2]();

      [WeakRetained setInvalidationCompletionBlock:0];
    }
  }
}

void __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = _TVRCRapportLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_26CF7F000, v2, OS_LOG_TYPE_DEFAULT, "companionLinkClient interruptionHandler", v3, 2u);
    }
  }
}

void __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke_5(uint64_t a1, uint64_t a2, int a3)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = _TVRCRapportLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(WeakRetained + 3);
      *buf = 138543362;
      v13 = v6;
      _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "PromptForPasswordHandler called on companionLinkClient for device %{public}@", buf, 0xCu);
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke_7;
    v11[3] = &unk_279D832A0;
    v11[4] = WeakRetained;
    v7 = [TVRXDeviceAuthenticationChallenge _challengeWithCodeToEnterLocally:v11];
    [v7 setThrottleSeconds:a3];
    if ([*(WeakRetained + 10) passwordTypeActual] == 7)
    {
      v8 = _TVRCRapportLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "companionLinkClient reports password type is text", buf, 2u);
      }

      [v7 setChallengeAttributes:2];
    }

    v9 = objc_loadWeakRetained(WeakRetained + 8);
    [v9 deviceEncounteredAuthenticationChallenge:v7];
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke_7(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = _TVRCRapportLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke_7_cold_1();
    }

    return [*(a1 + 32) disconnect];
  }

  else
  {
    v6 = *(*(a1 + 32) + 80);

    return [v6 tryPassword:a2];
  }
}

void __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke_10(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = _TVRCRapportLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = WeakRetained[3];
      v10 = 138543618;
      v11 = v6;
      v12 = 2114;
      v13 = v3;
      _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "AuthCompletionHandler called on companionLinkClient for device %{public}@. Error - %{public}@", &v10, 0x16u);
    }

    if (v3)
    {
      v7 = _TVRCRapportLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke_10_cold_1();
      }

      if ([v3 code] == -6776)
      {
        v8 = TVRCMakeError(104, 0);
        [WeakRetained _disconnectWithError:v8];
      }

      else
      {
        [WeakRetained _disconnectWithError:v3];
      }
    }

    else
    {
      *(WeakRetained + 10) = 1;
      [WeakRetained _updateConnectedState];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke_11(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = _TVRCRapportLog();
    v6 = v5;
    if (v3)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke_11_cold_1(WeakRetained);
      }

      [WeakRetained _disconnectWithError:v3];
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412290;
        v9 = WeakRetained;
        _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "companionLinkClient activateWithCompletion %@", &v8, 0xCu);
      }

      WeakRetained[9] = 1;
      [WeakRetained _updateConnectedState];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke_12(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _TVRCRapportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Successfully registered %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)disconnect
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = _TVRCRapportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(TVRCRPCompanionLinkClientWrapper *)self device];
    v6 = 136315650;
    v7 = "[TVRCRPCompanionLinkClientWrapper disconnect]";
    v8 = 2114;
    v9 = v4;
    v10 = 2112;
    v11 = self;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s - Disconnecting %{public}@ %@", &v6, 0x20u);
  }

  [(TVRCRPCompanionLinkClientWrapper *)self _disconnectWithError:0];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)disconnectWithError:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRCRapportLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "[TVRCRPCompanionLinkClientWrapper disconnectWithError:]";
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = self;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s error:%@ %@", &v7, 0x20u);
  }

  [(TVRCRPCompanionLinkClientWrapper *)self _disconnectWithError:v4];
  v6 = *MEMORY[0x277D85DE8];
}

- (id)supportedButtons
{
  v34[12] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (([(TVRCRPCompanionLinkClientWrapper *)self featureFlags]& 1) != 0)
  {
    v30 = [[TVRCButton alloc] _initWithButtonType:12];
    v34[0] = v30;
    v29 = [[TVRCButton alloc] _initWithButtonType:13];
    v34[1] = v29;
    v28 = [[TVRCButton alloc] _initWithButtonType:14];
    v34[2] = v28;
    v27 = [[TVRCButton alloc] _initWithButtonType:15];
    v34[3] = v27;
    v26 = [[TVRCButton alloc] _initWithButtonType:5];
    v34[4] = v26;
    v25 = [[TVRCButton alloc] _initWithButtonType:3];
    v34[5] = v25;
    v24 = [[TVRCButton alloc] _initWithButtonType:2];
    v34[6] = v24;
    v4 = [[TVRCButton alloc] _initWithButtonType:1];
    v34[7] = v4;
    v5 = [[TVRCButton alloc] _initWithButtonType:21];
    v34[8] = v5;
    v6 = [[TVRCButton alloc] _initWithButtonType:22];
    v34[9] = v6;
    v7 = [[TVRCButton alloc] _initWithButtonType:19];
    v34[10] = v7;
    v8 = [[TVRCButton alloc] _initWithButtonType:20 hasTapAction:1 properties:0];
    v34[11] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:12];
    [v3 addObjectsFromArray:v9];
  }

  if ([(TVRCRPCompanionLinkClientWrapper *)self isSiriEnabled])
  {
    v10 = [[TVRCButton alloc] _initWithButtonType:4];
    v33 = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
    [v3 addObjectsFromArray:v11];
  }

  if (([(TVRCRPCompanionLinkClientWrapper *)self featureFlags]& 2) != 0)
  {
    v12 = [[TVRCButton alloc] _initWithButtonType:5];
    v32[0] = v12;
    v13 = [[TVRCButton alloc] _initWithButtonType:16 hasTapAction:1 properties:0];
    v32[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    [v3 addObjectsFromArray:v14];

    v15 = [(TVRCMediaEventsManaging *)self->_mediaManager supportedMediaCommands];
    if (v15)
    {
      [v3 unionSet:v15];
    }
  }

  if (([(TVRCRPCompanionLinkClientWrapper *)self featureFlags]& 8) != 0)
  {
    v16 = [[TVRCButton alloc] _initWithButtonType:30];
    v31[0] = v16;
    v17 = [[TVRCButton alloc] _initWithButtonType:26];
    v31[1] = v17;
    v18 = [[TVRCButton alloc] _initWithButtonType:27];
    v31[2] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:3];
    [v3 addObjectsFromArray:v19];
  }

  if ([(TVRCRPCompanionLinkClientWrapper *)self isGuideButtonSupported])
  {
    v20 = [[TVRCButton alloc] _initWithButtonType:28];
    [v3 addObject:v20];
  }

  v21 = [MEMORY[0x277CBEB98] setWithSet:v3];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)sendButtonEvent:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRCRapportLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v29 = "[TVRCRPCompanionLinkClientWrapper sendButtonEvent:]";
    v30 = 2112;
    v31 = v4;
    v32 = 2112;
    v33 = self;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s event:%@ %@", buf, 0x20u);
  }

  if ([(TVRCRPCompanionLinkClientWrapper *)self connected])
  {
    if ([TVRCButton _isMediaButtonEvent:v4])
    {
      [(TVRCMediaEventsManaging *)self->_mediaManager sendMediaEvent:v4];
      v6 = [v4 button];
      v7 = [v6 buttonType];

      if ((v7 - 17) <= 1)
      {
        [(TVRCRPCompanionLinkClientWrapper *)self toggleCaptions:v7 == 17];
      }

      goto LABEL_24;
    }

    v9 = [v4 button];
    if ([v9 buttonType] == 20)
    {
      v10 = [v4 eventType] == 0;

      if (v10)
      {
        v11 = [v4 button];
        v12 = [v11 properties];

        v13 = [v12 objectForKey:@"TVRCButtonApplicationBundleIDKey"];
        [(TVRCRPCompanionLinkClientWrapper *)self _launchApplicationOrURL:v13];

        goto LABEL_24;
      }
    }

    else
    {
    }

    v14 = [v4 button];
    if ([v14 buttonType] == 2)
    {
    }

    else
    {
      v15 = [v4 button];
      v16 = [v15 buttonType] == 23;

      if (!v16)
      {
LABEL_21:
        v19 = [(TVRCRPCompanionLinkClientWrapper *)self _commandForButtonEvent:v4];
        v20 = [(TVRCRPCompanionLinkClientWrapper *)self _stateForButtonEvent:v4];
        v21 = _TVRCRapportLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          [(TVRCRPCompanionLinkClientWrapper *)v4 sendButtonEvent:?];
        }

        objc_initWeak(buf, self);
        hidSession = self->_hidSession;
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __52__TVRCRPCompanionLinkClientWrapper_sendButtonEvent___block_invoke;
        v25[3] = &unk_279D83310;
        objc_copyWeak(&v27, buf);
        v23 = *MEMORY[0x277D44228];
        v25[4] = self;
        v26 = v4;
        [(RPHIDSession *)hidSession hidCommand:v19 buttonState:v20 destinationID:v23 completion:v25];

        objc_destroyWeak(&v27);
        objc_destroyWeak(buf);
        goto LABEL_24;
      }
    }

    if (self->_siriSession)
    {
      v17 = _TVRCRapportLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [TVRCRPCompanionLinkClientWrapper sendButtonEvent:];
      }

      [(RPSiriSession *)self->_siriSession invalidate];
      siriSession = self->_siriSession;
      self->_siriSession = 0;
    }

    goto LABEL_21;
  }

  v8 = _TVRCRapportLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [TVRCRPCompanionLinkClientWrapper sendButtonEvent:];
  }

LABEL_24:
  v24 = *MEMORY[0x277D85DE8];
}

void __52__TVRCRPCompanionLinkClientWrapper_sendButtonEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v6 = _TVRCRapportLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __52__TVRCRPCompanionLinkClientWrapper_sendButtonEvent___block_invoke_cold_1(v5);
      }

      v7 = _TVRCRapportLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "Attempting to reconnect after an issue sending a HID event", v8, 2u);
      }

      [*(a1 + 32) reconnect];
    }

    else
    {
      [WeakRetained _handleSideEffectsForEvent:*(a1 + 40)];
    }
  }
}

- (void)sendTouchEvent:(id)a3
{
  v4 = a3;
  v5 = _TVRCRapportLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [TVRCRPCompanionLinkClientWrapper sendTouchEvent:];
  }

  if (![(TVRCRPCompanionLinkClientWrapper *)self connected])
  {
    v6 = _TVRCRapportLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [TVRCRPCompanionLinkClientWrapper sendTouchEvent:];
    }

    goto LABEL_22;
  }

  if (self->_hidTouchSession)
  {
    v6 = objc_alloc_init(MEMORY[0x277D441A0]);
    -[NSObject setFinger:](v6, "setFinger:", [v4 finger]);
    [v4 digitizerLocation];
    [v6 setLocation:?];
    v7 = [v4 phase];
    if (v7 <= 2)
    {
      if (v7 == 1)
      {
        v9 = 1;
        goto LABEL_21;
      }

      if (v7 != 2)
      {
        v9 = 0;
        goto LABEL_21;
      }

      [v6 setPhase:2];
    }

    else if (v7 != 3)
    {
      if (v7 == 5)
      {
        v8 = 5;
      }

      else
      {
        v8 = 0;
      }

      if (v7 == 4)
      {
        v9 = 4;
      }

      else
      {
        v9 = v8;
      }

      goto LABEL_21;
    }

    v9 = 3;
LABEL_21:
    [v6 setPhase:v9];
    [v4 timestamp];
    [v6 setTimestampSeconds:?];
    objc_initWeak(&location, self);
    hidTouchSession = self->_hidTouchSession;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __51__TVRCRPCompanionLinkClientWrapper_sendTouchEvent___block_invoke;
    v11[3] = &unk_279D83338;
    objc_copyWeak(&v12, &location);
    v11[4] = self;
    [(RPHIDTouchSession *)hidTouchSession sendTouchEvent:v6 completion:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
LABEL_22:
  }
}

void __51__TVRCRPCompanionLinkClientWrapper_sendTouchEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = _TVRCRapportLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __51__TVRCRPCompanionLinkClientWrapper_sendTouchEvent___block_invoke_cold_1(WeakRetained);
      }

      v6 = _TVRCRapportLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "Attempting to reconnect after an issue sending a touch event", v8, 2u);
      }

      [*(a1 + 32) reconnect];
    }

    v7 = _TVRCRapportLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __51__TVRCRPCompanionLinkClientWrapper_sendTouchEvent___block_invoke_cold_2(WeakRetained);
    }
  }
}

- (void)getCurrentRTISourceSession:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRCRapportLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[TVRCRPCompanionLinkClientWrapper getCurrentRTISourceSession:]";
    v13 = 2112;
    v14 = self;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__TVRCRPCompanionLinkClientWrapper_getCurrentRTISourceSession___block_invoke;
  v8[3] = &unk_279D82F58;
  objc_copyWeak(&v10, buf);
  v9 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
  v7 = *MEMORY[0x277D85DE8];
}

void __63__TVRCRPCompanionLinkClientWrapper_getCurrentRTISourceSession___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v5 = WeakRetained;
      v4 = [WeakRetained[14] rtiSession];
      (*(v3 + 16))(v3, v4, 0);

      WeakRetained = v5;
    }
  }
}

- (void)setRTISessionHandler:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRCRapportLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[TVRCRPCompanionLinkClientWrapper setRTISessionHandler:]";
    v13 = 2112;
    v14 = self;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  [(TVRCRPCompanionLinkClientWrapper *)self setRtiSessionHandler:v4];
  objc_initWeak(buf, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__TVRCRPCompanionLinkClientWrapper_setRTISessionHandler___block_invoke;
  v8[3] = &unk_279D82F58;
  objc_copyWeak(&v10, buf);
  v6 = v4;
  v9 = v6;
  [(RPTextInputSession *)self->_textInputSession setRtiUpdatedHandler:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);

  v7 = *MEMORY[0x277D85DE8];
}

void __57__TVRCRPCompanionLinkClientWrapper_setRTISessionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v5 = WeakRetained;
      v4 = [WeakRetained[14] rtiSession];
      (*(v3 + 16))(v3, v4);

      WeakRetained = v5;
    }
  }
}

- (void)sendEvent:(id)a3 options:(id)a4 shouldRetry:(BOOL)a5 response:(id)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = _TVRCRapportLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v29 = v10;
    v30 = 2112;
    v31 = self;
    _os_log_impl(&dword_26CF7F000, v13, OS_LOG_TYPE_DEFAULT, "Sending companion request with ID %@ %@", buf, 0x16u);
  }

  v14 = MEMORY[0x277CBEC10];
  if (v11)
  {
    v14 = v11;
  }

  v15 = v14;
  objc_initWeak(buf, self);
  companionClient = self->_companionClient;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __75__TVRCRPCompanionLinkClientWrapper_sendEvent_options_shouldRetry_response___block_invoke;
  v22[3] = &unk_279D83388;
  v17 = v10;
  v23 = v17;
  v27 = a5;
  objc_copyWeak(&v26, buf);
  v18 = *MEMORY[0x277D44228];
  v19 = v12;
  v25 = v19;
  v20 = v11;
  v24 = v20;
  [(RPCompanionLinkClient *)companionClient sendRequestID:v17 request:v15 destinationID:v18 options:0 responseHandler:v22];

  objc_destroyWeak(&v26);
  objc_destroyWeak(buf);

  v21 = *MEMORY[0x277D85DE8];
}

void __75__TVRCRPCompanionLinkClientWrapper_sendEvent_options_shouldRetry_response___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = _TVRCRapportLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    *buf = 138543874;
    v24 = v11;
    v25 = 2114;
    v26 = v7;
    v27 = 2114;
    v28 = v9;
    _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "Received request response with ID %{public}@, response %{public}@, error %{public}@", buf, 0x20u);
  }

  if (v9 && *(a1 + 64) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    if (WeakRetained)
    {
      v13 = _TVRCRapportLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CF7F000, v13, OS_LOG_TYPE_DEFAULT, "Reestablishing connection after error", buf, 2u);
      }

      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __75__TVRCRPCompanionLinkClientWrapper_sendEvent_options_shouldRetry_response___block_invoke_19;
      v16[3] = &unk_279D83360;
      v17 = *(a1 + 32);
      v21 = *(a1 + 48);
      v18 = v7;
      v19 = v8;
      objc_copyWeak(&v22, (a1 + 56));
      v20 = *(a1 + 40);
      [WeakRetained reestablishConnectionWithCompletionHandler:v16];

      objc_destroyWeak(&v22);
    }
  }

  else
  {
    v14 = *(a1 + 48);
    if (v14)
    {
      (*(v14 + 16))(v14, v7, v8, v9);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __75__TVRCRPCompanionLinkClientWrapper_sendEvent_options_shouldRetry_response___block_invoke_19(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _TVRCRapportLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __75__TVRCRPCompanionLinkClientWrapper_sendEvent_options_shouldRetry_response___block_invoke_19_cold_1(a1);
    }

    v5 = *(a1 + 64);
    if (v5)
    {
      (*(v5 + 16))(v5, *(a1 + 40), *(a1 + 48), v3);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    [WeakRetained sendEvent:*(a1 + 32) options:*(a1 + 56) shouldRetry:0 response:*(a1 + 64)];
  }
}

- (void)registerEvent:(id)a3 options:(id)a4 handler:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(TVRCRPCompanionLinkClientWrapper *)self activated];
  v12 = _TVRCRapportLog();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543618;
      v16 = v8;
      v17 = 2112;
      v18 = self;
      _os_log_impl(&dword_26CF7F000, v13, OS_LOG_TYPE_DEFAULT, "Registering event with ID %{public}@ %@", &v15, 0x16u);
    }

    v13 = [(TVRCRPCompanionLinkClientWrapper *)self companionClient];
    [v13 registerEventID:v8 options:v9 handler:v10];
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [TVRCRPCompanionLinkClientWrapper registerEvent:options:handler:];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)deregisterEvent:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRCRapportLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = v4;
    v10 = 2112;
    v11 = self;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "De-registering event %{public}@ %@", &v8, 0x16u);
  }

  v6 = [(TVRCRPCompanionLinkClientWrapper *)self companionClient];
  [v6 deregisterEventID:v4];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)toggleCaptions:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x277D85DE8];
  if ([(TVRCRPCompanionLinkClientWrapper *)self supportsDirectCaptionQueries])
  {
    v5 = _TVRCRapportLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v14 = "[TVRCRPCompanionLinkClientWrapper toggleCaptions:]";
      v15 = 1026;
      v16 = v3;
      v17 = 2112;
      v18 = self;
      _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s: %{public,BOOL}d %@", buf, 0x1Cu);
    }

    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    v11 = @"CaptionsEnabled";
    v12 = v6;
    v7 = MEMORY[0x277CBEAC0];
    v8 = v6;
    v9 = [v7 dictionaryWithObjects:&v12 forKeys:&v11 count:1];

    [(TVRCRPCompanionLinkClientWrapper *)self sendEvent:@"ToggleCaptions" options:v9 shouldRetry:0 response:0, v11, v12];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)fetchUpNextInfoWithPaginationToken:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = @"FetchUpNextInfoEvent";
  v9 = _TVRCRapportLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = v8;
    v24 = 2112;
    v25 = self;
    _os_log_impl(&dword_26CF7F000, v9, OS_LOG_TYPE_DEFAULT, "Sending companion request with ID %@ %@", buf, 0x16u);
  }

  companionClient = self->_companionClient;
  v20 = @"PaginationTokenKey";
  v11 = v6;
  if (!v6)
  {
    v11 = [MEMORY[0x277CBEB68] null];
  }

  v21 = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v13 = *MEMORY[0x277D44228];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __82__TVRCRPCompanionLinkClientWrapper_fetchUpNextInfoWithPaginationToken_completion___block_invoke;
  v17[3] = &unk_279D833B0;
  v14 = v8;
  v18 = v14;
  v19 = v7;
  v15 = v7;
  [(RPCompanionLinkClient *)companionClient sendRequestID:v14 request:v12 destinationID:v13 options:0 responseHandler:v17];

  if (!v6)
  {
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __82__TVRCRPCompanionLinkClientWrapper_fetchUpNextInfoWithPaginationToken_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = _TVRCRapportLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v12 = 138543874;
    v13 = v9;
    v14 = 2114;
    v15 = v6;
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Received request response with ID %{public}@, response %{public}@, error %{public}@", &v12, 0x20u);
  }

  v10 = [v6 objectForKeyedSubscript:@"PaginationTokenKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v10 = 0;
  }

  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)markAsWatchedWithMediaIdentifier:(id)a3 completion:(id)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = @"MarkAsWatchedEvent";
  if ([v6 length])
  {
    v22 = @"IdentifierKey";
    v23[0] = v6;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v10 = _TVRCRapportLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = v8;
      v20 = 2112;
      v21 = self;
      _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "Sending companion request with ID %@ %@", buf, 0x16u);
    }

    companionClient = self->_companionClient;
    v12 = *MEMORY[0x277D44228];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __80__TVRCRPCompanionLinkClientWrapper_markAsWatchedWithMediaIdentifier_completion___block_invoke;
    v15[3] = &unk_279D833B0;
    v16 = v8;
    v17 = v7;
    [(RPCompanionLinkClient *)companionClient sendRequestID:v16 request:v9 destinationID:v12 options:0 responseHandler:v15];
  }

  else
  {
    v13 = _TVRCRapportLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v8;
      _os_log_impl(&dword_26CF7F000, v13, OS_LOG_TYPE_DEFAULT, "Invalid mediaIdentifier sent to %@", buf, 0xCu);
    }

    (*(v7 + 2))(v7, 0);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __80__TVRCRPCompanionLinkClientWrapper_markAsWatchedWithMediaIdentifier_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = _TVRCRapportLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v11 = 138543874;
    v12 = v9;
    v13 = 2114;
    v14 = v6;
    v15 = 2114;
    v16 = v7;
    _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Received request response with ID %{public}@, response %{public}@, error %{public}@", &v11, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x277D85DE8];
}

- (void)addItemWithMediaIdentifier:(id)a3 completion:(id)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = @"AddToUpNextEvent";
  if ([v6 length])
  {
    v22 = @"IdentifierKey";
    v23[0] = v6;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v10 = _TVRCRapportLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = v8;
      v20 = 2112;
      v21 = self;
      _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "Sending companion request with ID %@ %@", buf, 0x16u);
    }

    companionClient = self->_companionClient;
    v12 = *MEMORY[0x277D44228];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __74__TVRCRPCompanionLinkClientWrapper_addItemWithMediaIdentifier_completion___block_invoke;
    v15[3] = &unk_279D833B0;
    v16 = v8;
    v17 = v7;
    [(RPCompanionLinkClient *)companionClient sendRequestID:v16 request:v9 destinationID:v12 options:0 responseHandler:v15];
  }

  else
  {
    v13 = _TVRCRapportLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v8;
      _os_log_impl(&dword_26CF7F000, v13, OS_LOG_TYPE_DEFAULT, "Invalid mediaIdentifier sent to %@", buf, 0xCu);
    }

    (*(v7 + 2))(v7, 0);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __74__TVRCRPCompanionLinkClientWrapper_addItemWithMediaIdentifier_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = _TVRCRapportLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v11 = 138543874;
    v12 = v9;
    v13 = 2114;
    v14 = v6;
    v15 = 2114;
    v16 = v7;
    _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Received request response with ID %{public}@, response %{public}@, error %{public}@", &v11, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeItemWithMediaIdentifier:(id)a3 completion:(id)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = @"RemoveFromUpNextEvent";
  if ([v6 length])
  {
    v22 = @"IdentifierKey";
    v23[0] = v6;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v10 = _TVRCRapportLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = v8;
      v20 = 2112;
      v21 = self;
      _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "Sending companion request with ID %@ %@", buf, 0x16u);
    }

    companionClient = self->_companionClient;
    v12 = *MEMORY[0x277D44228];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __77__TVRCRPCompanionLinkClientWrapper_removeItemWithMediaIdentifier_completion___block_invoke;
    v15[3] = &unk_279D833B0;
    v16 = v8;
    v17 = v7;
    [(RPCompanionLinkClient *)companionClient sendRequestID:v16 request:v9 destinationID:v12 options:0 responseHandler:v15];
  }

  else
  {
    v13 = _TVRCRapportLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v8;
      _os_log_impl(&dword_26CF7F000, v13, OS_LOG_TYPE_DEFAULT, "Invalid mediaIdentifier sent to %@", buf, 0xCu);
    }

    (*(v7 + 2))(v7, 0);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __77__TVRCRPCompanionLinkClientWrapper_removeItemWithMediaIdentifier_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = _TVRCRapportLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v11 = 138543874;
    v12 = v9;
    v13 = 2114;
    v14 = v6;
    v15 = 2114;
    v16 = v7;
    _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Received request response with ID %{public}@, response %{public}@, error %{public}@", &v11, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x277D85DE8];
}

- (void)playItem:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = @"PlayMediaEvent";
  if ([v6 isValid])
  {
    v9 = [v6 dictionaryRepresentation];
    v10 = _TVRCRapportLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = v8;
      v20 = 2112;
      v21 = self;
      _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "Sending companion request with ID %@ %@", buf, 0x16u);
    }

    companionClient = self->_companionClient;
    v12 = *MEMORY[0x277D44228];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __56__TVRCRPCompanionLinkClientWrapper_playItem_completion___block_invoke;
    v15[3] = &unk_279D833B0;
    v16 = v8;
    v17 = v7;
    [(RPCompanionLinkClient *)companionClient sendRequestID:v16 request:v9 destinationID:v12 options:0 responseHandler:v15];
  }

  else
  {
    v13 = _TVRCRapportLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v8;
      _os_log_impl(&dword_26CF7F000, v13, OS_LOG_TYPE_DEFAULT, "Invalid item sent to %@", buf, 0xCu);
    }

    (*(v7 + 2))(v7, 0);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __56__TVRCRPCompanionLinkClientWrapper_playItem_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = _TVRCRapportLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v11 = 138543874;
    v12 = v9;
    v13 = 2114;
    v14 = v6;
    v15 = 2114;
    v16 = v7;
    _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Received request response with ID %{public}@, response %{public}@, error %{public}@", &v11, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x277D85DE8];
}

- (void)fetchLaunchableAppsWithCompletion:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = @"FetchLaunchableApplicationsEvent";
  v17 = @"IncludeAppMetadataKey";
  v18[0] = MEMORY[0x277CBEC38];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v7 = _TVRCRapportLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v5;
    _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "Sending companion request with ID %@", buf, 0xCu);
  }

  companionClient = self->_companionClient;
  v9 = *MEMORY[0x277D44228];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__TVRCRPCompanionLinkClientWrapper_fetchLaunchableAppsWithCompletion___block_invoke;
  v12[3] = &unk_279D833B0;
  v13 = v5;
  v14 = v4;
  v10 = v4;
  [(RPCompanionLinkClient *)companionClient sendRequestID:v5 request:v6 destinationID:v9 options:0 responseHandler:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __70__TVRCRPCompanionLinkClientWrapper_fetchLaunchableAppsWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = _TVRCRapportLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v11 = 138543874;
    v12 = v9;
    v13 = 2114;
    v14 = v6;
    v15 = 2114;
    v16 = v7;
    _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Received request response with ID %{public}@, response %{public}@, error %{public}@", &v11, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x277D85DE8];
}

- (void)launchAppWithBundleID:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = @"LaunchApp";
  if ([v6 length])
  {
    v18 = @"BundleIDKey";
    v19 = v6;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v10 = _TVRCRapportLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v8;
      _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "Sending companion request with ID %@", buf, 0xCu);
    }

    companionClient = self->_companionClient;
    v12 = *MEMORY[0x277D44228];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __69__TVRCRPCompanionLinkClientWrapper_launchAppWithBundleID_completion___block_invoke;
    v15[3] = &unk_279D833B0;
    v16 = v8;
    v17 = v7;
    [(RPCompanionLinkClient *)companionClient sendRequestID:v16 request:v9 destinationID:v12 options:0 responseHandler:v15];
  }

  else
  {
    v13 = _TVRCRapportLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v8;
      _os_log_impl(&dword_26CF7F000, v13, OS_LOG_TYPE_DEFAULT, "Invalid bundleID sent to %@", buf, 0xCu);
    }

    (*(v7 + 2))(v7, 0);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __69__TVRCRPCompanionLinkClientWrapper_launchAppWithBundleID_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = _TVRCRapportLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v11 = 138543874;
    v12 = v9;
    v13 = 2114;
    v14 = v6;
    v15 = 2114;
    v16 = v7;
    _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Received request response with ID %{public}@, response %{public}@, error %{public}@", &v11, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(TVRCRPCompanionLinkClientWrapper *)self name];
  [v3 appendString:v4 withName:@"name"];

  v5 = [(TVRCRPCompanionLinkClientWrapper *)self identifier];
  [v3 appendString:v5 withName:@"Identifier"];

  v6 = [(TVRCRPCompanionLinkClientWrapper *)self model];
  [v3 appendString:v6 withName:@"model"];

  v7 = [(TVRCRPCompanionLinkClientWrapper *)self sourceVersion];
  [v3 appendString:v7 withName:@"sourceVersion"];

  v8 = [v3 appendBool:-[TVRCRPCompanionLinkClientWrapper isSiriEnabled](self withName:{"isSiriEnabled"), @"siriEnabled"}];
  v9 = [v3 appendBool:-[TVRCRPCompanionLinkClientWrapper activated](self withName:{"activated"), @"activated"}];
  v10 = [v3 appendBool:-[TVRCRPCompanionLinkClientWrapper authenticated](self withName:{"authenticated"), @"authenticated"}];
  v11 = [v3 appendBool:-[TVRCRPCompanionLinkClientWrapper pttFeatureSupported](self withName:{"pttFeatureSupported"), @"siriPTTEnabled"}];
  v12 = [(TVRCRPCompanionLinkClientWrapper *)self _stringForFeatureFlags:self->_featureFlags];
  [v3 appendString:v12 withName:@"featureFlags"];

  v13 = [v3 appendBool:-[TVRCRPCompanionLinkClientWrapper connected](self withName:{"connected"), @"connected"}];
  v14 = [v3 appendBool:-[TVRCRPCompanionLinkClientWrapper isPaired](self withName:{"isPaired"), @"isPaired"}];
  v15 = [v3 appendBool:-[TVRCRPCompanionLinkClientWrapper supportsFindMyRemote](self withName:{"supportsFindMyRemote"), @"supportsFindMyRemote"}];
  v16 = [(TVRCRPCompanionLinkClientWrapper *)self alternateIdentifiers];
  [v3 appendDictionarySection:v16 withName:@"alternateIdentifiers" skipIfEmpty:0];

  v17 = [(TVRCRPCompanionLinkClientWrapper *)self companionClient];
  v18 = [v3 appendObject:v17 withName:@"companionClient"];

  v19 = [v3 build];

  return v19;
}

- (BOOL)_featureSupported:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TVRCRPCompanionLinkClientWrapper *)self sourceVersion];
  v6 = [v5 compare:v4 options:64];
  v7 = _TVRCRapportLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = [(TVRCRPCompanionLinkClientWrapper *)self name];
    v11 = 138413058;
    v12 = v4;
    v13 = 2112;
    v14 = v10;
    v15 = 2112;
    v16 = v5;
    v17 = 1024;
    v18 = v6 < 2;
    _os_log_debug_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEBUG, "Checking if '%@' is supported on '%@' for sourceVersion '%@': %{BOOL}d", &v11, 0x26u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6 < 2;
}

- (NSString)sourceVersion
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(TVRCRPCompanionLinkClientWrapper *)self device];
  v4 = [v3 sourceVersion];

  v5 = MEMORY[0x277CCACA8];
  v6 = [(TVRCRPCompanionLinkClientWrapper *)self device];
  v7 = [v6 name];
  v8 = [v5 stringWithFormat:@"%@-SourceVersion", v7];

  v9 = [(__CFString *)v4 length];
  v10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v11 = [v10 objectForKey:v8];
  if (v9)
  {

    if ([(__CFString *)v11 length])
    {
      v12 = _TVRCRapportLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [TVRCRPCompanionLinkClientWrapper sourceVersion];
      }
    }

    else
    {

      v12 = _TVRCRapportLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [TVRCRPCompanionLinkClientWrapper sourceVersion];
      }

      v11 = @"0.0";
    }

    v17 = [(__CFString *)v11 compare:v4 options:64];
    v18 = _TVRCRapportLog();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
    if (v17 > 1)
    {
      if (v19)
      {
        *buf = 138412802;
        v24 = v4;
        v25 = 2112;
        v26 = v8;
        v27 = 2112;
        v28 = v11;
        _os_log_debug_impl(&dword_26CF7F000, v18, OS_LOG_TYPE_DEBUG, "sourceVersion '%@' for '%@' is greater than cached version '%@' so caching and returning it", buf, 0x20u);
      }

      v18 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [v18 setObject:v4 forKey:v8];
      v20 = v4;
    }

    else
    {
      if (v19)
      {
        *buf = 138412802;
        v24 = v11;
        v25 = 2112;
        v26 = v8;
        v27 = 2112;
        v28 = v4;
        _os_log_debug_impl(&dword_26CF7F000, v18, OS_LOG_TYPE_DEBUG, "Cached version '%@' for '%@' is >= reported version '%@' so returning it", buf, 0x20u);
      }

      v20 = v11;
    }

    v16 = v20;
  }

  else
  {

    v13 = [(__CFString *)v11 length];
    v14 = _TVRCRapportLog();
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [TVRCRPCompanionLinkClientWrapper sourceVersion];
      }

      v4 = v11;
      v16 = v4;
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CF7F000, v15, OS_LOG_TYPE_DEFAULT, "Unknown sourceVersion, allowing all features", buf, 2u);
      }

      v16 = @"9999.9";
      v4 = v11;
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)_resolveFeatureFlags
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = _TVRCRapportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[TVRCRPCompanionLinkClientWrapper _resolveFeatureFlags]";
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v12, 0xCu);
  }

  v4 = [(RPCompanionLinkDevice *)self->_device flags];
  v5 = ([(RPCompanionLinkDevice *)self->_device flags]>> 7) & 2 | (v4 >> 10) & 1;
  v6 = v5 | ([(RPCompanionLinkDevice *)self->_device flags]>> 10) & 4;
  if ([(TVRCRPCompanionLinkClientWrapper *)self _featureSupported:@"250.3"])
  {
    v6 |= 8uLL;
  }

  if ([(TVRCRPCompanionLinkClientWrapper *)self _featureSupported:@"340.15"])
  {
    v6 |= 0x10uLL;
  }

  if ([(TVRCRPCompanionLinkClientWrapper *)self _featureSupported:@"600.20"])
  {
    v6 |= 0x20uLL;
  }

  v7 = _TVRCRapportLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(TVRCRPCompanionLinkClientWrapper *)self _stringForFeatureFlags:v6];
    v12 = 138543362;
    v13 = v8;
    _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "Resolved Feature Flags: %{public}@", &v12, 0xCu);
  }

  self->_pttFeatureSupported = 0;
  v9 = _TVRCRapportLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    pttFeatureSupported = self->_pttFeatureSupported;
    v12 = 67109120;
    LODWORD(v13) = pttFeatureSupported;
    _os_log_impl(&dword_26CF7F000, v9, OS_LOG_TYPE_DEFAULT, "PTT feature supported: %d", &v12, 8u);
  }

  self->_featureFlags = v6;
  v11 = *MEMORY[0x277D85DE8];
}

- (id)_stringForFeatureFlags:(unint64_t)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = v4;
  if (v3)
  {
    [v4 addObject:@"HID"];
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v5 addObject:@"MediaControl"];
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  [v5 addObject:@"TextInput"];
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  [v5 addObject:@"MVPD"];
  if ((v3 & 0x10) != 0)
  {
LABEL_6:
    [v5 addObject:@"SiriPTT"];
  }

LABEL_7:
  v6 = MEMORY[0x277CCACA8];
  v7 = [v5 componentsJoinedByString:@" | "];
  v8 = [v6 stringWithFormat:@"[%@]", v7];

  return v8;
}

- (void)_disconnectWithError:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRCRapportLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [TVRCRPCompanionLinkClientWrapper _disconnectWithError:];
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[TVRCRPCompanionLinkClientWrapper _disconnectWithError:]";
    v11 = 2112;
    v12 = self;
    _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "%s %@", &v9, 0x16u);
  }

  [(TVRCRPCompanionLinkClientWrapper *)self _invalidateAndReset];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained disconnectedFromDevice:self error:v4];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_invalidateAndReset
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _TVRCRapportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[TVRCRPCompanionLinkClientWrapper _invalidateAndReset]";
    v7 = 2112;
    v8 = self;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s %@", &v5, 0x16u);
  }

  [(TVRCRPCompanionLinkClientWrapper *)self _invalidateAndResetWithCompletionHandler:0];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_invalidateAndResetWithCompletionHandler:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRCRapportLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v28 = "[TVRCRPCompanionLinkClientWrapper _invalidateAndResetWithCompletionHandler:]";
    v29 = 2112;
    v30 = self;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  if (![(TVRCRPCompanionLinkClientWrapper *)self isInvalidating])
  {
    self->_isInvalidating = 1;
    self->_connectionState = 0;
    [(TVRCRPCompanionLinkClientWrapper *)self _sendSessionStop];
    [(TVRCRPCompanionLinkClientWrapper *)self _stopMonitoringTVSystemStatus];
    [(TVRCRPCompanionLinkClientWrapper *)self _stopMonitoringSupportedActions];
    [(TVRCRPCompanionLinkClientWrapper *)self _stopMonitoringNowPlayingInfo];
    [(TVRCRPCompanionLinkClientWrapper *)self _invalidateRemoteFindingManager];
    v7 = dispatch_group_create();
    v8 = MEMORY[0x277D85CD0];
    v9 = MEMORY[0x277D85CD0];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__TVRCRPCompanionLinkClientWrapper__invalidateAndResetWithCompletionHandler___block_invoke;
    block[3] = &unk_279D825E0;
    block[4] = self;
    dispatch_group_async(v7, v8, block);
    v10 = [(TVRCRPCompanionLinkClientWrapper *)self siriSession];

    if (v10)
    {
      dispatch_group_enter(v7);
      v11 = [(TVRCRPCompanionLinkClientWrapper *)self siriSession];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __77__TVRCRPCompanionLinkClientWrapper__invalidateAndResetWithCompletionHandler___block_invoke_111;
      v24[3] = &unk_279D82DD8;
      v24[4] = self;
      v25 = v7;
      [v11 invalidateWithCompletion:v24];
    }

    v12 = [(TVRCRPCompanionLinkClientWrapper *)self hidTouchSession];
    if (v12)
    {
    }

    else if (![(TVRCRPCompanionLinkClientWrapper *)self hidTouchSessionActivated])
    {
LABEL_14:
      v15 = dispatch_get_global_queue(25, 0);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __77__TVRCRPCompanionLinkClientWrapper__invalidateAndResetWithCompletionHandler___block_invoke_113;
      v17[3] = &unk_279D83400;
      v18 = v7;
      v19 = v8;
      v20 = self;
      v21 = v4;
      v6 = v7;
      dispatch_async(v15, v17);

      goto LABEL_15;
    }

    v13 = _TVRCRapportLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CF7F000, v13, OS_LOG_TYPE_DEFAULT, "Invalidating HIDTouchSession", buf, 2u);
    }

    dispatch_group_enter(v7);
    v14 = [(TVRCRPCompanionLinkClientWrapper *)self hidTouchSession];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __77__TVRCRPCompanionLinkClientWrapper__invalidateAndResetWithCompletionHandler___block_invoke_112;
    v22[3] = &unk_279D82DD8;
    v22[4] = self;
    v23 = v7;
    [v14 invalidateWithCompletion:v22];

    goto LABEL_14;
  }

  v6 = _TVRCRapportLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = self;
    _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "Already in the process of invalidating. Ignoring this request. %@", buf, 0xCu);
  }

LABEL_15:

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __77__TVRCRPCompanionLinkClientWrapper__invalidateAndResetWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = _TVRCRapportLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CF7F000, v2, OS_LOG_TYPE_DEFAULT, "Invalidating MediaManager", buf, 2u);
  }

  v3 = [*(a1 + 32) mediaManager];
  [v3 invalidate];

  [*(a1 + 32) setMediaManager:0];
  v4 = _TVRCRapportLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Invalidating HIDSession", v10, 2u);
  }

  v5 = [*(a1 + 32) hidSession];
  [v5 invalidate];

  [*(a1 + 32) setHidSession:0];
  [*(a1 + 32) setHidSessionActivated:0];
  v6 = _TVRCRapportLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "Invalidating TextInputSession", v9, 2u);
  }

  v7 = [*(a1 + 32) textInputSession];
  [v7 invalidate];

  [*(a1 + 32) setTextInputSession:0];
  return [*(a1 + 32) setTextInputSessionActivated:0];
}

void __77__TVRCRPCompanionLinkClientWrapper__invalidateAndResetWithCompletionHandler___block_invoke_111(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _TVRCRapportLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __77__TVRCRPCompanionLinkClientWrapper__invalidateAndResetWithCompletionHandler___block_invoke_111_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Successfully invalidated RPSiriSession", v6, 2u);
  }

  if ([*(a1 + 32) isInvalidating])
  {
    [*(a1 + 32) setSiriSession:0];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __77__TVRCRPCompanionLinkClientWrapper__invalidateAndResetWithCompletionHandler___block_invoke_112(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _TVRCRapportLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __77__TVRCRPCompanionLinkClientWrapper__invalidateAndResetWithCompletionHandler___block_invoke_112_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Successfully invalidated HIDTouchSession", v6, 2u);
  }

  if ([*(a1 + 32) isInvalidating])
  {
    [*(a1 + 32) setHidTouchSession:0];
    [*(a1 + 32) setHidTouchSessionActivated:0];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __77__TVRCRPCompanionLinkClientWrapper__invalidateAndResetWithCompletionHandler___block_invoke_113(void *a1)
{
  v2 = _TVRCRapportLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CF7F000, v2, OS_LOG_TYPE_DEFAULT, "Waiting for rapport to invalidate all sessions", buf, 2u);
  }

  v3 = a1[4];
  v4 = dispatch_time(0, 2000000000);
  v5 = dispatch_group_wait(v3, v4);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__TVRCRPCompanionLinkClientWrapper__invalidateAndResetWithCompletionHandler___block_invoke_114;
  block[3] = &unk_279D833D8;
  v7 = a1[5];
  v6 = a1[6];
  v8 = a1[7];
  v11 = v5;
  block[4] = v6;
  v10 = v8;
  dispatch_sync(v7, block);
}

uint64_t __77__TVRCRPCompanionLinkClientWrapper__invalidateAndResetWithCompletionHandler___block_invoke_114(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = _TVRCRapportLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    v8 = 0;
    v5 = "Failed to invalidate all sessions. Will force reset rapport sessions";
    v6 = &v8;
  }

  else
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v5 = "Invalidated all sessions. Invalidating CompanionLinkClient.";
    v6 = buf;
  }

  _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
LABEL_7:

  [*(a1 + 32) _resetState];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result);
  }

  return result;
}

- (void)_resetState
{
  v3 = _TVRCRapportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Resetting state", v6, 2u);
  }

  v4 = [(TVRCRPCompanionLinkClientWrapper *)self companionClient];
  [v4 invalidate];

  companionClient = self->_companionClient;
  self->_companionClient = 0;

  [(TVRCRPCompanionLinkClientWrapper *)self setConnected:0];
  [(TVRCRPCompanionLinkClientWrapper *)self setActivated:0];
  [(TVRCRPCompanionLinkClientWrapper *)self setAuthenticated:0];
  [(TVRCRPCompanionLinkClientWrapper *)self setHidSession:0];
  [(TVRCRPCompanionLinkClientWrapper *)self setHidSessionActivated:0];
  [(TVRCRPCompanionLinkClientWrapper *)self setHidTouchSession:0];
  [(TVRCRPCompanionLinkClientWrapper *)self setHidTouchSessionActivated:0];
  [(TVRCRPCompanionLinkClientWrapper *)self setMediaManager:0];
  [(TVRCRPCompanionLinkClientWrapper *)self setReceivedVolumeSettings:0];
  [(TVRCRPCompanionLinkClientWrapper *)self setTextInputSession:0];
  [(TVRCRPCompanionLinkClientWrapper *)self setTextInputSessionActivated:0];
  [(TVRCRPCompanionLinkClientWrapper *)self setSiriSession:0];
  [(TVRCRPCompanionLinkClientWrapper *)self setReceivedSiriSettings:0];
  [(TVRCRPCompanionLinkClientWrapper *)self setStartedSetup:0];
  [(TVRCRPCompanionLinkClientWrapper *)self setIsInvalidating:0];
}

- (void)_sendSessionStart
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__TVRCRPCompanionLinkClientWrapper__sendSessionStart__block_invoke;
  v3[3] = &unk_279D82788;
  objc_copyWeak(&v4, &location);
  [(TVRCRPCompanionLinkClientWrapper *)self sendEvent:@"TVRCSessionStart" options:0 shouldRetry:0 response:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __53__TVRCRPCompanionLinkClientWrapper__sendSessionStart__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = _TVRCRapportLog();
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __53__TVRCRPCompanionLinkClientWrapper__sendSessionStart__block_invoke_cold_1(WeakRetained);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = WeakRetained[10];
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Session started for companionLinkClient %{public}@.", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_sendSessionStop
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__TVRCRPCompanionLinkClientWrapper__sendSessionStop__block_invoke;
  v3[3] = &unk_279D82788;
  objc_copyWeak(&v4, &location);
  [(TVRCRPCompanionLinkClientWrapper *)self sendEvent:@"TVRCSessionStop" options:0 shouldRetry:0 response:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __52__TVRCRPCompanionLinkClientWrapper__sendSessionStop__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = _TVRCRapportLog();
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __52__TVRCRPCompanionLinkClientWrapper__sendSessionStop__block_invoke_cold_1(WeakRetained);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = WeakRetained[10];
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Session stopped for companionLinkClient %{public}@.", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_setupHidSessionIfNeeded
{
  if (self->_hidSession)
  {
    v2 = _TVRCRapportLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_26CF7F000, v2, OS_LOG_TYPE_DEFAULT, "Active HIDSession already exists", buf, 2u);
    }
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277D44198]);
    hidSession = self->_hidSession;
    self->_hidSession = v4;

    [(RPHIDSession *)self->_hidSession setMessenger:self->_companionClient];
    objc_initWeak(buf, self);
    v6 = self->_hidSession;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__TVRCRPCompanionLinkClientWrapper__setupHidSessionIfNeeded__block_invoke;
    v7[3] = &unk_279D83338;
    objc_copyWeak(&v8, buf);
    v7[4] = self;
    [(RPHIDSession *)v6 activateWithCompletion:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

void __60__TVRCRPCompanionLinkClientWrapper__setupHidSessionIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = _TVRCRapportLog();
    v6 = v5;
    if (v3)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __60__TVRCRPCompanionLinkClientWrapper__setupHidSessionIfNeeded__block_invoke_cold_1(WeakRetained);
      }

      [*(a1 + 32) _disconnectWithError:v3];
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = WeakRetained[10];
        v9 = 138543362;
        v10 = v7;
        _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "Successfully created hidSession for companionLinkClient %{public}@.", &v9, 0xCu);
      }

      *(WeakRetained + 12) = 1;
      [WeakRetained _updateConnectedState];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_setupFeatureServicesIfNeeded
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = _TVRCRapportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[TVRCRPCompanionLinkClientWrapper _setupFeatureServicesIfNeeded]";
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (self->_mediaManager)
  {
    v4 = _TVRCRapportLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "_TVRCRapportMediaEventsManager is already set up", buf, 2u);
    }
  }

  else
  {
    [(TVRCRPCompanionLinkClientWrapper *)self _setupMediaEventsManager];
    objc_initWeak(buf, self);
    v5 = dispatch_time(0, 300000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__TVRCRPCompanionLinkClientWrapper__setupFeatureServicesIfNeeded__block_invoke;
    block[3] = &unk_279D826E8;
    objc_copyWeak(&v10, buf);
    dispatch_after(v5, MEMORY[0x277D85CD0], block);
    v6 = [(TVRCRPCompanionLinkClientWrapper *)self device];
    v7 = [v6 siriInfo];
    [(TVRCRPCompanionLinkClientWrapper *)self _updateSiriStatusFromSiriInfo:v7];

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __65__TVRCRPCompanionLinkClientWrapper__setupFeatureServicesIfNeeded__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && (WeakRetained[16] != 1 || (WeakRetained[15] & 1) == 0))
  {
    v3 = _TVRCRapportLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v2[16];
      v5 = v2[15];
      v7[0] = 67109376;
      v7[1] = v4;
      v8 = 1024;
      v9 = v5;
      _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "TVRCMediaEventsManager timed out waiting for volume:%d or siri:%d settings, meaning it is unsupported", v7, 0xEu);
    }

    *(v2 + 15) = 257;
    [v2 _updateConnectedState];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setupMediaEventsManager
{
  v3 = _TVRCRapportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Setting up TVRCMediaEventsManager", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4 = [TVRCMediaEventsManager alloc];
  companionClient = self->_companionClient;
  v6 = [(TVRCRPCompanionLinkClientWrapper *)self supportsDirectCaptionQueries];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__TVRCRPCompanionLinkClientWrapper__setupMediaEventsManager__block_invoke;
  v11[3] = &unk_279D826E8;
  objc_copyWeak(&v12, buf);
  v7 = [(TVRCMediaEventsManager *)v4 initWithCompanionLinkClient:companionClient supportsDirectCaptionQueries:v6 eventHandler:v11];
  mediaManager = self->_mediaManager;
  self->_mediaManager = v7;

  v9 = self->_mediaManager;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__TVRCRPCompanionLinkClientWrapper__setupMediaEventsManager__block_invoke_123;
  v10[3] = &unk_279D82DB0;
  v10[4] = self;
  [(TVRCMediaEventsManaging *)v9 activateWithCompletionHandler:v10];
  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

void __60__TVRCRPCompanionLinkClientWrapper__setupMediaEventsManager__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = _TVRCRapportLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_26CF7F000, v2, OS_LOG_TYPE_DEFAULT, "TVRCMediaEventsManager eventHandlerCalled", &v7, 2u);
    }

    if (*(WeakRetained + 16))
    {
      goto LABEL_10;
    }

    v3 = _TVRCRapportLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(WeakRetained + 9) volumeSupported];
      v5 = @"unsupported";
      if (v4)
      {
        v5 = @"supported";
      }

      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "TVRCMediaEventsManager volume control is: %@", &v7, 0xCu);
    }

    *(WeakRetained + 16) = 1;
    if (*(WeakRetained + 8))
    {
LABEL_10:
      [WeakRetained _updateSupportedButtons];
    }

    else
    {
      [WeakRetained _updateConnectedState];
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __60__TVRCRPCompanionLinkClientWrapper__setupMediaEventsManager__block_invoke_123(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _TVRCRapportLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __60__TVRCRPCompanionLinkClientWrapper__setupMediaEventsManager__block_invoke_123_cold_1();
    }

    [*(a1 + 32) _setupLegacyMediaEventsManager];
  }
}

- (void)_setupLegacyMediaEventsManager
{
  v3 = _TVRCRapportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Setting up legacy TVRCRapportMediaEventsManager", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4 = [TVRCRapportMediaEventsManager alloc];
  companionClient = self->_companionClient;
  v6 = [(TVRCRPCompanionLinkClientWrapper *)self supportsDirectCaptionQueries];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__TVRCRPCompanionLinkClientWrapper__setupLegacyMediaEventsManager__block_invoke;
  v9[3] = &unk_279D826E8;
  objc_copyWeak(&v10, buf);
  v7 = [(TVRCRapportMediaEventsManager *)v4 initWithCompanionLinkClient:companionClient supportsDirectCaptionQueries:v6 eventHandler:v9];
  mediaManager = self->_mediaManager;
  self->_mediaManager = v7;

  [(TVRCMediaEventsManaging *)self->_mediaManager activateWithCompletionHandler:&__block_literal_global_127];
  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __66__TVRCRPCompanionLinkClientWrapper__setupLegacyMediaEventsManager__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = _TVRCRapportLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_26CF7F000, v2, OS_LOG_TYPE_DEFAULT, "TVRCRapportMediaEventsManager eventHandlerCalled", &v7, 2u);
    }

    if (*(WeakRetained + 16))
    {
      goto LABEL_10;
    }

    v3 = _TVRCRapportLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(WeakRetained + 9) volumeSupported];
      v5 = @"unsupported";
      if (v4)
      {
        v5 = @"supported";
      }

      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "TVRCRapportMediaEventsManager volume control is: %@", &v7, 0xCu);
    }

    *(WeakRetained + 16) = 1;
    if (*(WeakRetained + 8))
    {
LABEL_10:
      [WeakRetained _updateSupportedButtons];
    }

    else
    {
      [WeakRetained _updateConnectedState];
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __66__TVRCRPCompanionLinkClientWrapper__setupLegacyMediaEventsManager__block_invoke_125(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _TVRCRapportLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __66__TVRCRPCompanionLinkClientWrapper__setupLegacyMediaEventsManager__block_invoke_125_cold_1();
    }
  }
}

- (void)_setupTouchSessionIfNeeded
{
  if (self->_hidTouchSession)
  {
    v2 = _TVRCRapportLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_26CF7F000, v2, OS_LOG_TYPE_DEFAULT, "Active HIDTouchSession already exists", buf, 2u);
    }
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277D441A8]);
    hidTouchSession = self->_hidTouchSession;
    self->_hidTouchSession = v4;

    [(RPHIDTouchSession *)self->_hidTouchSession setMessenger:self->_companionClient];
    objc_initWeak(buf, self);
    v6 = self->_hidTouchSession;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__TVRCRPCompanionLinkClientWrapper__setupTouchSessionIfNeeded__block_invoke;
    v7[3] = &unk_279D82D38;
    objc_copyWeak(&v8, buf);
    [(RPHIDTouchSession *)v6 activateWithCompletion:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

void __62__TVRCRPCompanionLinkClientWrapper__setupTouchSessionIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = _TVRCRapportLog();
    v6 = v5;
    if (v3)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __62__TVRCRPCompanionLinkClientWrapper__setupTouchSessionIfNeeded__block_invoke_cold_1(WeakRetained);
      }

      WeakRetained[13] = 0;
      [WeakRetained _disconnectWithError:v3];
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(WeakRetained + 10);
        v9 = 138543362;
        v10 = v7;
        _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "Successfully created hidTouchSession for companionLinkClient %{public}@.", &v9, 0xCu);
      }

      WeakRetained[13] = 1;
      [WeakRetained _updateConnectedState];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_setupTextInputSessionIfNeeded
{
  if (self->_textInputSession)
  {
    v2 = _TVRCRapportLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_26CF7F000, v2, OS_LOG_TYPE_DEFAULT, "Active TextInputSession already exists", buf, 2u);
    }
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277D44218]);
    textInputSession = self->_textInputSession;
    self->_textInputSession = v4;

    [(RPTextInputSession *)self->_textInputSession setMessenger:self->_companionClient];
    objc_initWeak(buf, self);
    v6 = self->_textInputSession;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __66__TVRCRPCompanionLinkClientWrapper__setupTextInputSessionIfNeeded__block_invoke;
    v7[3] = &unk_279D82D38;
    objc_copyWeak(&v8, buf);
    [(RPTextInputSession *)v6 activateWithCompletion:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

void __66__TVRCRPCompanionLinkClientWrapper__setupTextInputSessionIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = _TVRCRapportLog();
    v6 = v5;
    if (v3)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __66__TVRCRPCompanionLinkClientWrapper__setupTextInputSessionIfNeeded__block_invoke_cold_1(WeakRetained);
      }

      [WeakRetained _disconnectWithError:v3];
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = WeakRetained[10];
        v11 = 138543362;
        v12 = v7;
        _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "Successfully created textInputSession for companionLinkClient %{public}@.", &v11, 0xCu);
      }

      *(WeakRetained + 14) = 1;
      [WeakRetained _updateConnectedState];
      v8 = WeakRetained[15];
      if (v8)
      {
        v9 = [WeakRetained[14] rtiSession];
        v8[2](v8, v9);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_updateSupportedButtons
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(TVRCRPCompanionLinkClientWrapper *)self receivedSiriSettings]&& [(TVRCRPCompanionLinkClientWrapper *)self receivedVolumeSettings])
  {
    v6 = [(TVRCRPCompanionLinkClientWrapper *)self delegate];
    [v6 deviceUpdatedSupportedButtons:self];
    v3 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v4 = _TVRCRapportLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v8 = [(TVRCRPCompanionLinkClientWrapper *)self receivedSiriSettings];
      v9 = 1024;
      v10 = [(TVRCRPCompanionLinkClientWrapper *)self receivedVolumeSettings];
      _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Waiting for volume or siri settings before notifying client of supported buttons. receivedSiriSettings:%d, receivedVolumeSettings:%d", buf, 0xEu);
    }

    v5 = *MEMORY[0x277D85DE8];
  }
}

- (void)_updateAttentionState:(int64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(TVRCRPCompanionLinkClientWrapper *)self attentionState]!= a3)
  {
    v5 = _TVRCRapportLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if ((a3 - 1) >= 3)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %ld)", a3];
      }

      else
      {
        v6 = off_279D834E8[a3 - 1];
      }

      v7 = v6;
      v8 = [(TVRCRPCompanionLinkClientWrapper *)self attentionState];
      if ((v8 - 1) >= 3)
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %ld)", v8];
      }

      else
      {
        v9 = off_279D834E8[v8 - 1];
      }

      *buf = 138543618;
      v13 = v7;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "TV attention state updated to %{public}@ from %{public}@", buf, 0x16u);
    }

    self->_attentionState = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained deviceUpdatedAttentionState];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_fetchTVSystemStatusAndStartMonitoring
{
  v3 = _TVRCRapportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Fetching TV System Status", buf, 2u);
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __74__TVRCRPCompanionLinkClientWrapper__fetchTVSystemStatusAndStartMonitoring__block_invoke;
  v4[3] = &unk_279D83428;
  v4[4] = self;
  [(TVRCRPCompanionLinkClientWrapper *)self sendEvent:@"FetchAttentionState" options:MEMORY[0x277CBEC10] response:v4];
  [(TVRCRPCompanionLinkClientWrapper *)self _startMonitoringTVSystemStatus];
}

void __74__TVRCRPCompanionLinkClientWrapper__fetchTVSystemStatusAndStartMonitoring__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"state"];
  [*(a1 + 32) _updateAttentionState:{objc_msgSend(v3, "intValue")}];
}

- (void)_startMonitoringTVSystemStatus
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = _TVRCRapportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[TVRCRPCompanionLinkClientWrapper _startMonitoringTVSystemStatus]";
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v9 = *MEMORY[0x277D44280];
  v10 = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  objc_initWeak(buf, self);
  v5 = [(TVRCRPCompanionLinkClientWrapper *)self companionClient];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__TVRCRPCompanionLinkClientWrapper__startMonitoringTVSystemStatus__block_invoke;
  v7[3] = &unk_279D827B0;
  objc_copyWeak(&v8, buf);
  [v5 registerEventID:@"TVSystemStatus" options:v4 handler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);

  v6 = *MEMORY[0x277D85DE8];
}

void __66__TVRCRPCompanionLinkClientWrapper__startMonitoringTVSystemStatus__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v5 objectForKeyedSubscript:@"state"];
    [WeakRetained _updateAttentionState:{objc_msgSend(v4, "intValue")}];
  }
}

- (void)_stopMonitoringTVSystemStatus
{
  v3 = _TVRCRapportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Stopped monitoring TVSystemStatus", v5, 2u);
  }

  v4 = [(TVRCRPCompanionLinkClientWrapper *)self companionClient];
  [v4 deregisterRequestID:@"TVSystemStatus"];
}

- (void)_setupRemoteFindingManagerIfNeeded
{
  remoteFindingManager = self->_remoteFindingManager;
  v4 = _TVRCRapportLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (remoteFindingManager)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Active RemoteFindingManager already exists", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *v8 = 0;
      _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Creating RemoteFindingManager", v8, 2u);
    }

    v6 = [[TVRCSiriRemoteFindingManager alloc] initWithCompanionLinkClientWrapper:self];
    v7 = self->_remoteFindingManager;
    self->_remoteFindingManager = v6;

    [(TVRCSiriRemoteFindingManager *)self->_remoteFindingManager addObserver:self forKeyPath:@"pairedRemoteInfo" options:0 context:TVRCSiriRemoteObserverContext];
  }
}

- (void)_invalidateRemoteFindingManager
{
  v3 = _TVRCRapportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating RemoteFindingManager", v5, 2u);
  }

  [(TVRCSiriRemoteFindingManager *)self->_remoteFindingManager removeObserver:self forKeyPath:@"pairedRemoteInfo" context:TVRCSiriRemoteObserverContext];
  remoteFindingManager = self->_remoteFindingManager;
  self->_remoteFindingManager = 0;
}

- (void)_updateSiriRemoteFindingState:(int64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = _TVRCRapportLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[TVRCRPCompanionLinkClientWrapper _updateSiriRemoteFindingState:]";
    v10 = 2112;
    v11 = self;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v8, 0x16u);
  }

  if (self->_siriRemoteFindingSessionState != a3)
  {
    self->_siriRemoteFindingSessionState = a3;
    v6 = [(TVRCRPCompanionLinkClientWrapper *)self delegate];
    [v6 deviceUpdateSiriRemoteFindingState];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_startMonitoringNowPlayingInfo
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = *MEMORY[0x277D44280];
  v10[0] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  objc_initWeak(&location, self);
  v4 = [(TVRCRPCompanionLinkClientWrapper *)self companionClient];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__TVRCRPCompanionLinkClientWrapper__startMonitoringNowPlayingInfo__block_invoke;
  v6[3] = &unk_279D827B0;
  objc_copyWeak(&v7, &location);
  [v4 registerEventID:@"NowPlayingInfo" options:v3 handler:v6];

  [(TVRCRPCompanionLinkClientWrapper *)self sendEvent:@"FetchCurrentNowPlayingInfoEvent" options:MEMORY[0x277CBEC10] response:&__block_literal_global_141];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  v5 = *MEMORY[0x277D85DE8];
}

void __66__TVRCRPCompanionLinkClientWrapper__startMonitoringNowPlayingInfo__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateNowPlayingInfo:v5];
  }
}

- (void)_stopMonitoringNowPlayingInfo
{
  v3 = _TVRCRapportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Stopped monitoring NowPlayingInfo", v5, 2u);
  }

  v4 = [(TVRCRPCompanionLinkClientWrapper *)self companionClient];
  [v4 deregisterEventID:@"NowPlayingInfo"];
}

- (void)_updateNowPlayingInfo:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [a3 objectForKeyedSubscript:@"NowPlayingInfoKey"];
  if (v4)
  {
    v10 = 0;
    v5 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v10];
    v6 = v10;
    v7 = _TVRCRapportLog();
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [TVRCRPCompanionLinkClientWrapper _updateNowPlayingInfo:];
      }
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v12 = v5;
        _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Updated now playing info: %{public}@", buf, 0xCu);
      }

      [(TVRCRPCompanionLinkClientWrapper *)self setNowPlayingInfo:v5];
      v8 = [(TVRCRPCompanionLinkClientWrapper *)self delegate];
      [v8 deviceUpdatedNowPlayingInfo:self];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_startMonitoringSupportedActions
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = *MEMORY[0x277D44280];
  v10[0] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  objc_initWeak(&location, self);
  v4 = [(TVRCRPCompanionLinkClientWrapper *)self companionClient];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__TVRCRPCompanionLinkClientWrapper__startMonitoringSupportedActions__block_invoke;
  v6[3] = &unk_279D827B0;
  objc_copyWeak(&v7, &location);
  [v4 registerEventID:@"SupportedActions" options:v3 handler:v6];

  [(TVRCRPCompanionLinkClientWrapper *)self sendEvent:@"FetchSupportedActionsEvent" options:MEMORY[0x277CBEC10] response:0];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  v5 = *MEMORY[0x277D85DE8];
}

void __68__TVRCRPCompanionLinkClientWrapper__startMonitoringSupportedActions__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v5 objectForKeyedSubscript:@"GuideSupportedKey"];
    [WeakRetained setGuideButtonSupported:{objc_msgSend(v4, "BOOLValue")}];
    [WeakRetained _updateSupportedButtons];
  }
}

- (void)_stopMonitoringSupportedActions
{
  v2 = [(TVRCRPCompanionLinkClientWrapper *)self companionClient];
  [v2 deregisterEventID:@"SupportedActions"];
}

- (int)_commandForButtonEvent:(id)a3
{
  v3 = [a3 button];
  v4 = [v3 buttonType];

  if ((v4 - 1) > 0x1D)
  {
    return 0;
  }

  else
  {
    return dword_26CFC8920[v4 - 1];
  }
}

- (int)_stateForButtonEvent:(id)a3
{
  v3 = [a3 eventType];
  if (v3 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (v3 == 2);
  }
}

- (void)_handleSideEffectsForEvent:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__TVRCRPCompanionLinkClientWrapper__handleSideEffectsForEvent___block_invoke;
  v6[3] = &unk_279D83450;
  objc_copyWeak(&v9, &location);
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __63__TVRCRPCompanionLinkClientWrapper__handleSideEffectsForEvent___block_invoke(id *a1)
{
  v39 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = [a1[4] button];
    v4 = [v3 buttonType];

    if (v4 == 4)
    {
      v5 = [a1[4] eventType];
      if ([a1[5] attentionState] == 1 && (v5 & 0xFFFFFFFFFFFFFFFDLL) == 1)
      {
        v6 = _TVRCRapportLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = [a1[5] attentionState];
          if ((v7 - 1) >= 3)
          {
            v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %ld)", v7];
          }

          else
          {
            v8 = off_279D834E8[v7 - 1];
          }

          *buf = 138543362;
          v38 = v8;
          _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "TV is in %{public}@ state. Ignoring Siri invocation", buf, 0xCu);
        }
      }

      else
      {
        if (![a1[5] attentionState])
        {
          v9 = _TVRCRapportLog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_26CF7F000, v9, OS_LOG_TYPE_DEFAULT, "TV is in an unkown state. Allowing Siri invocation", buf, 2u);
          }
        }

        switch(v5)
        {
          case 3:
            if (!*(WeakRetained + 11))
            {
              v23 = objc_alloc_init(MEMORY[0x277D44200]);
              v24 = *(WeakRetained + 11);
              *(WeakRetained + 11) = v23;

              [*(WeakRetained + 11) setIsDestinationPTTEligible:WeakRetained[17]];
              if (WeakRetained[17] == 1)
              {
                [*(WeakRetained + 11) setDelegate:a1[5]];
              }
            }

            v25 = _TVRCRapportLog();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_26CF7F000, v25, OS_LOG_TYPE_DEFAULT, "Prewarming Siri Session", buf, 2u);
            }

            v26 = *(WeakRetained + 11);
            v32[0] = MEMORY[0x277D85DD0];
            v32[1] = 3221225472;
            v32[2] = __63__TVRCRPCompanionLinkClientWrapper__handleSideEffectsForEvent___block_invoke_150;
            v32[3] = &unk_279D82D38;
            objc_copyWeak(&v33, a1 + 6);
            [v26 prewarmWithCompletion:v32];
            objc_destroyWeak(&v33);
            break;
          case 2:
            [*(WeakRetained + 11) setIsDestinationPTTEligible:WeakRetained[17]];
            if (WeakRetained[17])
            {
              v22 = *(WeakRetained + 11);
              v30[0] = MEMORY[0x277D85DD0];
              v30[1] = 3221225472;
              v30[2] = __63__TVRCRPCompanionLinkClientWrapper__handleSideEffectsForEvent___block_invoke_151;
              v30[3] = &unk_279D82D38;
              objc_copyWeak(&v31, a1 + 6);
              [v22 receivedButtonUpWithCompletion:v30];
              objc_destroyWeak(&v31);
            }

            else
            {
              v28 = _TVRCRapportLog();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                __63__TVRCRPCompanionLinkClientWrapper__handleSideEffectsForEvent___block_invoke_cold_1();
              }

              [*(WeakRetained + 11) invalidate];
              v29 = *(WeakRetained + 11);
              *(WeakRetained + 11) = 0;
            }

            break;
          case 1:
            if (!*(WeakRetained + 11))
            {
              v10 = objc_alloc_init(MEMORY[0x277D44200]);
              v11 = *(WeakRetained + 11);
              *(WeakRetained + 11) = v10;

              [*(WeakRetained + 11) setIsDestinationPTTEligible:WeakRetained[17]];
              if (WeakRetained[17] == 1)
              {
                [*(WeakRetained + 11) setDelegate:a1[5]];
              }
            }

            if (WeakRetained[17] == 1)
            {
              v12 = [*(WeakRetained + 10) localDevice];
              v13 = [v12 effectiveIdentifier];

              v14 = _TVRCRapportLog();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v38 = v13;
                _os_log_impl(&dword_26CF7F000, v14, OS_LOG_TYPE_DEFAULT, "Setting source Id - %@", buf, 0xCu);
              }

              [*(WeakRetained + 11) setSourceID:v13];
            }

            [*(WeakRetained + 11) setMessenger:*(WeakRetained + 10)];
            v15 = *(WeakRetained + 11);
            v16 = [WeakRetained identifier];
            [v15 setDestinationID:v16];

            v17 = _TVRCRapportLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_26CF7F000, v17, OS_LOG_TYPE_DEFAULT, "Activating Siri Session", buf, 2u);
            }

            v18 = [MEMORY[0x277CB83F8] sharedInstance];
            v36 = 0;
            [v18 setHostProcessAttribution:&unk_287E66CE8 error:&v36];
            v19 = v36;

            if (v19)
            {
              v20 = _TVRCRapportLog();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                __63__TVRCRPCompanionLinkClientWrapper__handleSideEffectsForEvent___block_invoke_cold_2();
              }
            }

            v21 = *(WeakRetained + 11);
            v34[0] = MEMORY[0x277D85DD0];
            v34[1] = 3221225472;
            v34[2] = __63__TVRCRPCompanionLinkClientWrapper__handleSideEffectsForEvent___block_invoke_149;
            v34[3] = &unk_279D82D38;
            objc_copyWeak(&v35, a1 + 6);
            [v21 activateWithCompletion:v34];
            objc_destroyWeak(&v35);

            break;
        }
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __63__TVRCRPCompanionLinkClientWrapper__handleSideEffectsForEvent___block_invoke_149(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v5 = WeakRetained;
      v6 = _TVRCRapportLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __63__TVRCRPCompanionLinkClientWrapper__handleSideEffectsForEvent___block_invoke_149_cold_1(v5);
      }
    }
  }
}

void __63__TVRCRPCompanionLinkClientWrapper__handleSideEffectsForEvent___block_invoke_150(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v5 = _TVRCRapportLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Prewarmed Rapport Siri Session", v7, 2u);
    }

    goto LABEL_8;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = _TVRCRapportLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __63__TVRCRPCompanionLinkClientWrapper__handleSideEffectsForEvent___block_invoke_150_cold_1(v5);
    }

LABEL_8:
  }
}

void __63__TVRCRPCompanionLinkClientWrapper__handleSideEffectsForEvent___block_invoke_151(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v5 = WeakRetained;
      v6 = _TVRCRapportLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __63__TVRCRPCompanionLinkClientWrapper__handleSideEffectsForEvent___block_invoke_149_cold_1(v5);
      }
    }
  }
}

- (void)_updateConnectedState
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = _TVRCRapportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[TVRCRPCompanionLinkClientWrapper _updateConnectedState]";
    v10 = 2112;
    v11 = self;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s %@", &v8, 0x16u);
  }

  if (!self->_isInvalidating)
  {
    if (!self->_startedSetup && self->_activated && self->_authenticated)
    {
      self->_startedSetup = 1;
      self->_isInvalidating = 0;
      [(TVRCRPCompanionLinkClientWrapper *)self _sendSessionStart];
      [(TVRCRPCompanionLinkClientWrapper *)self _setupHidSessionIfNeeded];
      [(TVRCRPCompanionLinkClientWrapper *)self _setupFeatureServicesIfNeeded];
      [(TVRCRPCompanionLinkClientWrapper *)self _setupTouchSessionIfNeeded];
      [(TVRCRPCompanionLinkClientWrapper *)self _setupTextInputSessionIfNeeded];
      [(TVRCRPCompanionLinkClientWrapper *)self _fetchTVSystemStatusAndStartMonitoring];
      [(TVRCRPCompanionLinkClientWrapper *)self _setupRemoteFindingManagerIfNeeded];
      [(TVRCRPCompanionLinkClientWrapper *)self _startMonitoringSupportedActions];
      [(TVRCRPCompanionLinkClientWrapper *)self _startMonitoringNowPlayingInfo];
    }

    if (!self->_connected && self->_hidSessionActivated && self->_hidTouchSessionActivated && self->_textInputSessionActivated && self->_receivedSiriSettings && self->_receivedVolumeSettings)
    {
      v4 = _TVRCRapportLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        companionClient = self->_companionClient;
        v8 = 138543362;
        v9 = companionClient;
        _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Successfully set up companionLinkClient %{public}@. Letting clients know we connected successfully", &v8, 0xCu);
      }

      self->_connected = 1;
      self->_connectionState = 2;
      [(TVRCRPCompanionLinkClientWrapper *)self _updateSupportedButtons];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained connectedToDevice:self];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_launchApplicationOrURL:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 containsString:@"://"])
    {
      v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v5];
      v7 = _TVRCRapportLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v6;
        _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "Attempting to launch application with URL %@", buf, 0xCu);
      }

      companionClient = self->_companionClient;
      v9 = *MEMORY[0x277D44228];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __60__TVRCRPCompanionLinkClientWrapper__launchApplicationOrURL___block_invoke;
      v17[3] = &unk_279D82DB0;
      v18 = v6;
      v10 = v6;
      [(RPCompanionLinkClient *)companionClient launchAppWithURL:v10 destinationID:v9 completion:v17];
    }

    else
    {
      v11 = _TVRCRapportLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v5;
        _os_log_impl(&dword_26CF7F000, v11, OS_LOG_TYPE_DEFAULT, "Attempting to launch application with bundle ID %@", buf, 0xCu);
      }

      v12 = self->_companionClient;
      v13 = *MEMORY[0x277D44228];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __60__TVRCRPCompanionLinkClientWrapper__launchApplicationOrURL___block_invoke_156;
      v15[3] = &unk_279D82DB0;
      v16 = v5;
      [(RPCompanionLinkClient *)v12 launchAppWithBundleID:v16 destinationID:v13 completion:v15];
      v10 = v16;
    }
  }

  else
  {
    v10 = _TVRCRapportLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = 0;
      _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "Failed to launch App/URL %@", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __60__TVRCRPCompanionLinkClientWrapper__launchApplicationOrURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _TVRCRapportLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __60__TVRCRPCompanionLinkClientWrapper__launchApplicationOrURL___block_invoke_cold_1(a1);
    }
  }
}

void __60__TVRCRPCompanionLinkClientWrapper__launchApplicationOrURL___block_invoke_156(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _TVRCRapportLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __60__TVRCRPCompanionLinkClientWrapper__launchApplicationOrURL___block_invoke_156_cold_1(a1);
    }
  }
}

- (id)newCompanionLinkClient
{
  v3 = objc_alloc_init(MEMORY[0x277D44160]);
  [v3 setControlFlags:{objc_msgSend(v3, "controlFlags")}];
  [v3 setDispatchQueue:MEMORY[0x277D85CD0]];
  [v3 setDestinationDevice:self->_device];
  [v3 setRssiThreshold:-75];
  [v3 tvrc_setAllowedTVs];
  [v3 setServiceType:@"com.apple.tvremoteservices"];
  return v3;
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _TVRCRapportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "[TVRCRPCompanionLinkClientWrapper dealloc]";
    v8 = 2112;
    v9 = self;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  v5.receiver = self;
  v5.super_class = TVRCRPCompanionLinkClientWrapper;
  [(TVRCRPCompanionLinkClientWrapper *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_fetchSiriEnabledWithSiriInfo:(id)a3 completionHandler:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _TVRCRapportLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[TVRCRPCompanionLinkClientWrapper _fetchSiriEnabledWithSiriInfo:completionHandler:]";
    _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = objc_alloc_init(MEMORY[0x277CEF3A8]);
  v9 = *(*(&buf + 1) + 40);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__TVRCRPCompanionLinkClientWrapper__fetchSiriEnabledWithSiriInfo_completionHandler___block_invoke;
  v12[3] = &unk_279D834A0;
  v12[4] = self;
  v10 = v7;
  v13 = v10;
  p_buf = &buf;
  [v9 getAssistantIsEnabledForDeviceWithSiriInfo:v6 withCompletion:v12];

  _Block_object_dispose(&buf, 8);
  v11 = *MEMORY[0x277D85DE8];
}

void __84__TVRCRPCompanionLinkClientWrapper__fetchSiriEnabledWithSiriInfo_completionHandler___block_invoke(void *a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__TVRCRPCompanionLinkClientWrapper__fetchSiriEnabledWithSiriInfo_completionHandler___block_invoke_2;
  block[3] = &unk_279D83478;
  v16 = a2;
  v6 = a1[4];
  v7 = a1[5];
  v12 = v5;
  v13 = v6;
  v8 = v7;
  v9 = a1[6];
  v14 = v8;
  v15 = v9;
  v10 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __84__TVRCRPCompanionLinkClientWrapper__fetchSiriEnabledWithSiriInfo_completionHandler___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = _TVRCRapportLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 32);
    v12 = 67109378;
    *v13 = v3;
    *&v13[4] = 2114;
    *&v13[6] = v4;
    _os_log_impl(&dword_26CF7F000, v2, OS_LOG_TYPE_DEFAULT, "getAssistantIsEnabledForDeviceWithSiriInfo, enabled=%{BOOL}d, error=%{public}@", &v12, 0x12u);
  }

  if (*(a1 + 32))
  {
    [*(a1 + 40) setSiriEnabled:1];
    v5 = _TVRCRapportLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __84__TVRCRPCompanionLinkClientWrapper__fetchSiriEnabledWithSiriInfo_completionHandler___block_invoke_2_cold_1((a1 + 32));
    }
  }

  else
  {
    [*(a1 + 40) setSiriEnabled:*(a1 + 64)];
    v5 = _TVRCRapportLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 40) device];
      v7 = *(a1 + 64);
      v12 = 138543618;
      *v13 = v6;
      *&v13[8] = 1024;
      *&v13[10] = v7;
      _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Siri Enabled on device %{public}@ : %d", &v12, 0x12u);
    }
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, [*(a1 + 40) isSiriEnabled]);
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_updateSiriStatusFromSiriInfo:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRCRapportLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[TVRCRPCompanionLinkClientWrapper _updateSiriStatusFromSiriInfo:]";
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__TVRCRPCompanionLinkClientWrapper__updateSiriStatusFromSiriInfo___block_invoke;
  v7[3] = &unk_279D834C8;
  objc_copyWeak(&v8, buf);
  [(TVRCRPCompanionLinkClientWrapper *)self _fetchSiriEnabledWithSiriInfo:v4 completionHandler:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);

  v6 = *MEMORY[0x277D85DE8];
}

void __66__TVRCRPCompanionLinkClientWrapper__updateSiriStatusFromSiriInfo___block_invoke(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = _TVRCRapportLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = @"disabled";
      if (a2)
      {
        v5 = @"enabled";
      }

      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Siri is %{public}@. Calling delegate to update supported buttons", &v7, 0xCu);
    }

    WeakRetained[15] = 1;
    if (WeakRetained[8])
    {
      [WeakRetained _updateSupportedButtons];
    }

    else
    {
      [WeakRetained _updateConnectedState];
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)rpSiriSessionDidReceiveStopRecording
{
  if (self->_pttFeatureSupported)
  {
    v6[3] = v2;
    v6[4] = v3;
    objc_initWeak(v6, self);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __72__TVRCRPCompanionLinkClientWrapper_rpSiriSessionDidReceiveStopRecording__block_invoke;
    v4[3] = &unk_279D826E8;
    objc_copyWeak(&v5, v6);
    dispatch_async(MEMORY[0x277D85CD0], v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(v6);
  }
}

void __72__TVRCRPCompanionLinkClientWrapper_rpSiriSessionDidReceiveStopRecording__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && WeakRetained[11])
  {
    v3 = _TVRCRapportLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Received Stop recording - Invalidating RPSiriSession", v5, 2u);
    }

    [v2[11] invalidate];
    v4 = v2[11];
    v2[11] = 0;
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (TVRCSiriRemoteObserverContext == a6)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__TVRCRPCompanionLinkClientWrapper_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_279D825E0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TVRCRPCompanionLinkClientWrapper;
    [(TVRCRPCompanionLinkClientWrapper *)&v6 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

void __83__TVRCRPCompanionLinkClientWrapper_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 deviceUpdatedPairedRemoteInfo:*(a1 + 32)];
}

- (_TVRCCompanionLinkClientWrapperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __79__TVRCRPCompanionLinkClientWrapper_reestablishConnectionWithCompletionHandler___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_ERROR, "Failed to reestablish connection with client: %{public}@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke_7_cold_1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke_10_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __43__TVRCRPCompanionLinkClientWrapper_connect__block_invoke_11_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 24);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)sendButtonEvent:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendButtonEvent:(uint64_t)a1 .cold.3(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 24);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_9(v3, v4, v5, v6, v7);
  v8 = *MEMORY[0x277D85DE8];
}

void __52__TVRCRPCompanionLinkClientWrapper_sendButtonEvent___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)sendTouchEvent:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x20u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)sendTouchEvent:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __51__TVRCRPCompanionLinkClientWrapper_sendTouchEvent___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __51__TVRCRPCompanionLinkClientWrapper_sendTouchEvent___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  v4 = 138543362;
  v5 = v1;
  _os_log_debug_impl(&dword_26CF7F000, v2, OS_LOG_TYPE_DEBUG, "Sent touch event to companionLinkClient %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __75__TVRCRPCompanionLinkClientWrapper_sendEvent_options_shouldRetry_response___block_invoke_19_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)registerEvent:options:handler:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)sourceVersion
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_9(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_disconnectWithError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void __77__TVRCRPCompanionLinkClientWrapper__invalidateAndResetWithCompletionHandler___block_invoke_111_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __77__TVRCRPCompanionLinkClientWrapper__invalidateAndResetWithCompletionHandler___block_invoke_112_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __53__TVRCRPCompanionLinkClientWrapper__sendSessionStart__block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __52__TVRCRPCompanionLinkClientWrapper__sendSessionStop__block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __60__TVRCRPCompanionLinkClientWrapper__setupHidSessionIfNeeded__block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __60__TVRCRPCompanionLinkClientWrapper__setupMediaEventsManager__block_invoke_123_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __66__TVRCRPCompanionLinkClientWrapper__setupLegacyMediaEventsManager__block_invoke_125_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __62__TVRCRPCompanionLinkClientWrapper__setupTouchSessionIfNeeded__block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __66__TVRCRPCompanionLinkClientWrapper__setupTextInputSessionIfNeeded__block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_updateNowPlayingInfo:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __63__TVRCRPCompanionLinkClientWrapper__handleSideEffectsForEvent___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __63__TVRCRPCompanionLinkClientWrapper__handleSideEffectsForEvent___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __63__TVRCRPCompanionLinkClientWrapper__handleSideEffectsForEvent___block_invoke_149_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __63__TVRCRPCompanionLinkClientWrapper__handleSideEffectsForEvent___block_invoke_150_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __60__TVRCRPCompanionLinkClientWrapper__launchApplicationOrURL___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __60__TVRCRPCompanionLinkClientWrapper__launchApplicationOrURL___block_invoke_156_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __84__TVRCRPCompanionLinkClientWrapper__fetchSiriEnabledWithSiriInfo_completionHandler___block_invoke_2_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

@end