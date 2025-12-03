@interface TVRCSiriRemoteFindingManager
- (TVRCRPCompanionLinkClientWrapper)wrapper;
- (TVRCSiriRemoteFindingManager)initWithCompanionLinkClientWrapper:(id)wrapper;
- (id)_cachedRemoteInfoForRPDevice:(id)device;
- (void)_fetchPairedRemoteInfoAndStartMonitoring;
- (void)_saveRemoteInfoToUserDefaultsIfNeeded;
- (void)_startHeartbeatTimer;
- (void)_startMonitoringPairedRemoteInfo;
- (void)_stopHeartbeatTimer;
- (void)_updatePairedRemoteInfo:(id)info;
- (void)dealloc;
- (void)setPairedRemoteInfo:(id)info;
@end

@implementation TVRCSiriRemoteFindingManager

- (TVRCSiriRemoteFindingManager)initWithCompanionLinkClientWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v8.receiver = self;
  v8.super_class = TVRCSiriRemoteFindingManager;
  v5 = [(TVRCSiriRemoteFindingManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_wrapper, wrapperCopy);
    [(TVRCSiriRemoteFindingManager *)v6 _fetchPairedRemoteInfoAndStartMonitoring];
  }

  return v6;
}

void __53__TVRCSiriRemoteFindingManager_enableFindingSession___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _TVRCRapportLog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __53__TVRCSiriRemoteFindingManager_enableFindingSession___block_invoke_cold_1(a1, v5, v7);
    }

    v8 = 3;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 40))
      {
        v9 = @"started";
      }

      else
      {
        v9 = @"stopped";
      }

      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "Successfully %{public}@ finding session", &v13, 0xCu);
    }

    v8 = 1;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained wrapper];
  [v11 _updateSiriRemoteFindingState:v8];

  v12 = *MEMORY[0x277D85DE8];
}

void __53__TVRCSiriRemoteFindingManager_enableFindingSession___block_invoke_18(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained wrapper];
  [v3 _updateSiriRemoteFindingState:a2];
}

- (void)_startHeartbeatTimer
{
  v16 = *MEMORY[0x277D85DE8];
  heartbeatTimer = self->_heartbeatTimer;
  v4 = _TVRCRapportLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (heartbeatTimer)
  {
    if (v5)
    {
      pairedRemoteInfo = [(TVRCSiriRemoteFindingManager *)self pairedRemoteInfo];
      name = [pairedRemoteInfo name];
      *buf = 138543362;
      v15 = name;
      _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Skipping. Timer already exists for remote: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      pairedRemoteInfo2 = [(TVRCSiriRemoteFindingManager *)self pairedRemoteInfo];
      name2 = [pairedRemoteInfo2 name];
      *buf = 138543362;
      v15 = name2;
      _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Starting heartbeat timer for remote: %{public}@", buf, 0xCu);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__TVRCSiriRemoteFindingManager__startHeartbeatTimer__block_invoke;
    v13[3] = &unk_279D82760;
    v13[4] = self;
    v10 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:1 repeats:v13 block:540.0];
    v11 = self->_heartbeatTimer;
    self->_heartbeatTimer = v10;
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __52__TVRCSiriRemoteFindingManager__startHeartbeatTimer__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = _TVRCRapportLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) pairedRemoteInfo];
    v4 = [v3 name];
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_26CF7F000, v2, OS_LOG_TYPE_DEFAULT, "Heartbeat timer fired for remote: %{public}@", &v7, 0xCu);
  }

  result = [*(a1 + 32) enableFindingSession:1];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_stopHeartbeatTimer
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = _TVRCRapportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    pairedRemoteInfo = [(TVRCSiriRemoteFindingManager *)self pairedRemoteInfo];
    name = [pairedRemoteInfo name];
    pairedRemoteInfo2 = [(TVRCSiriRemoteFindingManager *)self pairedRemoteInfo];
    tvName = [pairedRemoteInfo2 tvName];
    v10 = 138543618;
    v11 = name;
    v12 = 2114;
    v13 = tvName;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Stopping heartbeat timer for remote: %{public}@ tv: %{public}@", &v10, 0x16u);
  }

  [(NSTimer *)self->_heartbeatTimer invalidate];
  heartbeatTimer = self->_heartbeatTimer;
  self->_heartbeatTimer = 0;

  v9 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = _TVRCRapportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Stopped monitoring PairedRemoteInfo", buf, 2u);
  }

  connectionManager = [(TVRCSiriRemoteFindingManager *)self connectionManager];
  [connectionManager teardown];

  wrapper = [(TVRCSiriRemoteFindingManager *)self wrapper];
  [wrapper deregisterEvent:@"PushSiriRemoteInfo"];

  heartbeatTimer = [(TVRCSiriRemoteFindingManager *)self heartbeatTimer];
  [heartbeatTimer invalidate];

  heartbeatTimer = self->_heartbeatTimer;
  self->_heartbeatTimer = 0;

  v8.receiver = self;
  v8.super_class = TVRCSiriRemoteFindingManager;
  [(TVRCSiriRemoteFindingManager *)&v8 dealloc];
}

- (void)setPairedRemoteInfo:(id)info
{
  infoCopy = info;
  if (self->_pairedRemoteInfo != infoCopy)
  {
    v6 = infoCopy;
    [(TVRCSiriRemoteFindingManager *)self willChangeValueForKey:@"pairedRemoteInfo"];
    objc_storeStrong(&self->_pairedRemoteInfo, info);
    [(TVRCSiriRemoteFindingManager *)self didChangeValueForKey:@"pairedRemoteInfo"];
    infoCopy = v6;
  }
}

- (void)_fetchPairedRemoteInfoAndStartMonitoring
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _TVRCRapportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[TVRCSiriRemoteFindingManager _fetchPairedRemoteInfoAndStartMonitoring]";
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  wrapper = [(TVRCSiriRemoteFindingManager *)self wrapper];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__TVRCSiriRemoteFindingManager__fetchPairedRemoteInfoAndStartMonitoring__block_invoke;
  v6[3] = &unk_279D82788;
  objc_copyWeak(&v7, buf);
  [wrapper sendEvent:@"FetchSiriRemoteInfo" options:MEMORY[0x277CBEC10] response:v6];

  [(TVRCSiriRemoteFindingManager *)self _startMonitoringPairedRemoteInfo];
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
  v5 = *MEMORY[0x277D85DE8];
}

void __72__TVRCSiriRemoteFindingManager__fetchPairedRemoteInfoAndStartMonitoring__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updatePairedRemoteInfo:v5];
  }
}

- (void)_startMonitoringPairedRemoteInfo
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = _TVRCRapportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Start monitoring PairedRemoteInfo", &buf, 2u);
  }

  v10 = *MEMORY[0x277D44280];
  v11[0] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  objc_initWeak(&buf, self);
  wrapper = [(TVRCSiriRemoteFindingManager *)self wrapper];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__TVRCSiriRemoteFindingManager__startMonitoringPairedRemoteInfo__block_invoke;
  v7[3] = &unk_279D827B0;
  objc_copyWeak(&v8, &buf);
  [wrapper registerEvent:@"PushSiriRemoteInfo" options:v4 handler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&buf);

  v6 = *MEMORY[0x277D85DE8];
}

void __64__TVRCSiriRemoteFindingManager__startMonitoringPairedRemoteInfo__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _TVRCRapportLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "Received event response: %{public}@, options %{public}@", &v11, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updatePairedRemoteInfo:v5];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_cachedRemoteInfoForRPDevice:(id)device
{
  deviceCopy = device;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  identifier = [deviceCopy identifier];
  v6 = [standardUserDefaults dataForKey:identifier];

  if (v6 || ([deviceCopy idsDeviceIdentifier], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(standardUserDefaults, "dataForKey:", v7), v6 = objc_claimAutoreleasedReturnValue(), v7, v6))
  {
    v8 = _TVRCRapportLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Found cached remote info", v10, 2u);
    }
  }

  else
  {
    v8 = _TVRCRapportLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [TVRCSiriRemoteFindingManager _cachedRemoteInfoForRPDevice:v8];
    }

    v6 = 0;
  }

  return v6;
}

- (void)_updatePairedRemoteInfo:(id)info
{
  v21 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = _TVRCRapportLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = infoCopy;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Remote info dict: %{public}@", buf, 0xCu);
  }

  v6 = [infoCopy objectForKeyedSubscript:@"SiriRemoteInfoKey"];
  if (v6)
  {
    v7 = v6;
    goto LABEL_5;
  }

  v12 = _TVRCRapportLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CF7F000, v12, OS_LOG_TYPE_DEFAULT, "No paired remote found", buf, 2u);
  }

  if (![(TVRCSiriRemoteFindingManager *)self shouldLoadCachedRemoteInfo])
  {
LABEL_16:
    v7 = 0;
    v8 = 0;
    goto LABEL_17;
  }

  wrapper = [(TVRCSiriRemoteFindingManager *)self wrapper];
  device = [wrapper device];
  v7 = [(TVRCSiriRemoteFindingManager *)self _cachedRemoteInfoForRPDevice:device];

  if (!v7)
  {
    v15 = _TVRCRapportLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(TVRCSiriRemoteFindingManager *)self _updatePairedRemoteInfo:v15];
    }

    goto LABEL_16;
  }

LABEL_5:
  v18 = 0;
  v8 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v18];
  v9 = v18;
  if (v9)
  {
    v10 = v9;
    v11 = _TVRCRapportLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(TVRCSiriRemoteFindingManager *)v10 _updatePairedRemoteInfo:v11];
    }

    goto LABEL_20;
  }

LABEL_17:
  v16 = _TVRCRapportLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = v8;
    _os_log_impl(&dword_26CF7F000, v16, OS_LOG_TYPE_DEFAULT, "Updated connected remote info: %{public}@", buf, 0xCu);
  }

  [(TVRCSiriRemoteFindingManager *)self setPairedRemoteInfo:v8];
  [(TVRCSiriRemoteFindingManager *)self _saveRemoteInfoToUserDefaultsIfNeeded];
LABEL_20:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_saveRemoteInfoToUserDefaultsIfNeeded
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_ERROR, "Failed to archive remoteInfo %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (TVRCRPCompanionLinkClientWrapper)wrapper
{
  WeakRetained = objc_loadWeakRetained(&self->_wrapper);

  return WeakRetained;
}

void __53__TVRCSiriRemoteFindingManager_enableFindingSession___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = @"stopped";
  if (*(a1 + 40))
  {
    v3 = @"started";
  }

  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_26CF7F000, log, OS_LOG_TYPE_ERROR, "Failed to %{public}@ finding mode: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_updatePairedRemoteInfo:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_ERROR, "%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_updatePairedRemoteInfo:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 wrapper];
  v4 = [v3 device];
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_ERROR, "Could not find paired remote for device: %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end