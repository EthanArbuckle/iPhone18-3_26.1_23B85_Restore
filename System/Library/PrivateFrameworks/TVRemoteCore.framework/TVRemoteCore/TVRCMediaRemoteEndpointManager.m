@interface TVRCMediaRemoteEndpointManager
+ (id)sharedInstance;
- (TVRCMediaRemoteEndpointManager)init;
- (void)fetchActiveEndpointWithCompletion:(id)a3;
- (void)updateActiveEndpoint:(id)a3 withCompletion:(id)a4;
@end

@implementation TVRCMediaRemoteEndpointManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[TVRCMediaRemoteEndpointManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

uint64_t __48__TVRCMediaRemoteEndpointManager_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(TVRCMediaRemoteEndpointManager);

  return MEMORY[0x2821F96F8]();
}

- (TVRCMediaRemoteEndpointManager)init
{
  v6.receiver = self;
  v6.super_class = TVRCMediaRemoteEndpointManager;
  v2 = [(TVRCMediaRemoteEndpointManager *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.TVRemoteCore.mediaremote", 0);
    mediaRemoteQueue = v2->_mediaRemoteQueue;
    v2->_mediaRemoteQueue = v3;
  }

  return v2;
}

- (void)updateActiveEndpoint:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TVRCMediaRemoteEndpointManager *)self mediaRemoteQueue];
  v11 = v7;
  v9 = v6;
  v10 = v7;
  MRMediaRemoteGetNowPlayingApplicationPlaybackState();
}

void __70__TVRCMediaRemoteEndpointManager_updateActiveEndpoint_withCompletion___block_invoke(id *a1, int a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (a2 == 1)
  {
    if (a1[7])
    {
      v22 = *MEMORY[0x277CCA450];
      v23[0] = @"Skipping MediaRemote endpoint update because MRPlaybackState is MRPlaybackStatePlaying";
      v3 = MEMORY[0x277CBEAC0];
      v4 = v23;
      v5 = &v22;
LABEL_12:
      v13 = [v3 dictionaryWithObjects:v4 forKeys:v5 count:1];
      v11 = TVRCMakeError(200, v13);

      (*(a1[7] + 2))();
      goto LABEL_13;
    }
  }

  else
  {
    v6 = _TVRCMediaRemoteLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      *buf = 138412290;
      v21 = v7;
      _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "Requesting MediaRemote to update active endpoint to %@", buf, 0xCu);
    }

    if ([a1[4] length])
    {
      v8 = a1[4];
      v9 = a1[5];
      v10 = [a1[6] mediaRemoteQueue];
      v15 = a1[4];
      v16 = a1[5];
      v17 = a1[7];
      MRAVEndpointUpdateActiveSystemEndpointForOutputDeviceUIDWithReason();

      v11 = v15;
LABEL_13:

      goto LABEL_14;
    }

    v12 = _TVRCMediaRemoteLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __70__TVRCMediaRemoteEndpointManager_updateActiveEndpoint_withCompletion___block_invoke_cold_1(v12);
    }

    if (a1[7])
    {
      v18 = *MEMORY[0x277CCA450];
      v19 = @"Requested MediaRemote to update endpoint with an invalid UID";
      v3 = MEMORY[0x277CBEAC0];
      v4 = &v19;
      v5 = &v18;
      goto LABEL_12;
    }
  }

LABEL_14:
  v14 = *MEMORY[0x277D85DE8];
}

void __70__TVRCMediaRemoteEndpointManager_updateActiveEndpoint_withCompletion___block_invoke_7(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _TVRCMediaRemoteLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __70__TVRCMediaRemoteEndpointManager_updateActiveEndpoint_withCompletion___block_invoke_7_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = a1[5];
    v10 = 138412546;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "MRAVEndpointUpdateActiveSystemEndpointForOutputDeviceUIDWithReason completion with reason=MRMediaRemoteActiveEndpointOperationActivate, endpointUID=%@, reason=%{public}@", &v10, 0x16u);
  }

  v8 = a1[6];
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)fetchActiveEndpointWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _TVRCMediaRemoteLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Fetching active endpoint from MediaRemote", buf, 2u);
  }

  v6 = [(TVRCMediaRemoteEndpointManager *)self mediaRemoteQueue];
  v8 = v4;
  v7 = v4;
  MRAVEndpointGetActiveSystemEndpointUID();
}

void __68__TVRCMediaRemoteEndpointManager_fetchActiveEndpointWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _TVRCMediaRemoteLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "MRAVEndpointGetActiveSystemEndpointUID returned %@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __70__TVRCMediaRemoteEndpointManager_updateActiveEndpoint_withCompletion___block_invoke_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = @"Requested MediaRemote to update endpoint with an invalid UID";
  _os_log_error_impl(&dword_26CF7F000, log, OS_LOG_TYPE_ERROR, "%@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __70__TVRCMediaRemoteEndpointManager_updateActiveEndpoint_withCompletion___block_invoke_7_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = 138412802;
  v7 = v3;
  v8 = 2114;
  v9 = v4;
  v10 = 2114;
  v11 = a2;
  _os_log_error_impl(&dword_26CF7F000, log, OS_LOG_TYPE_ERROR, "MRAVEndpointUpdateActiveSystemEndpointForOutputDeviceUIDWithReason completion with reason=MRMediaRemoteActiveEndpointOperationActivate, endpointUID=%@, reason=%{public}@, error=%{public}@", &v6, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

@end