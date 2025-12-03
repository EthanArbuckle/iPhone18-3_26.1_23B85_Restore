@interface ICCloudClientAvailabilityService
- (BOOL)canShowCloudDownloadButtons;
- (BOOL)canShowCloudMusic;
- (BOOL)canShowCloudVideo;
- (BOOL)hasProperNetworkConditionsToPlayMedia;
- (BOOL)hasProperNetworkConditionsToShowCloudMedia;
- (BOOL)isCellularDataRestrictedForMusic;
- (BOOL)isCellularDataRestrictedForStoreApps;
- (BOOL)isCellularDataRestrictedForVideos;
- (BOOL)shouldProhibitMusicActionForCurrentNetworkConditions;
- (BOOL)shouldProhibitStoreAppsActionForCurrentNetworkConditions;
- (BOOL)shouldProhibitVideosActionForCurrentNetworkConditions;
- (ICCloudClientAvailabilityService)initWithListenerEndpointProvider:(id)provider;
- (ICCloudServerListenerEndpointProviding)listenerEndpointProvider;
- (NSXPCConnection)xpcConnection;
- (id)_xpcConnectionWithListenerEndpoint:(id)endpoint;
@end

@implementation ICCloudClientAvailabilityService

- (ICCloudServerListenerEndpointProviding)listenerEndpointProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_listenerEndpointProvider);

  return WeakRetained;
}

- (id)_xpcConnectionWithListenerEndpoint:(id)endpoint
{
  location[3] = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  if (endpointCopy)
  {
    v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:endpointCopy];
    v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2CCEF38];
    [v5 setRemoteObjectInterface:v6];
    [v5 setExportedObject:self];
    objc_initWeak(location, self);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __71__ICCloudClientAvailabilityService__xpcConnectionWithListenerEndpoint___block_invoke;
    v13[3] = &unk_1E7BFA328;
    objc_copyWeak(&v14, location);
    [v5 setInterruptionHandler:v13];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __71__ICCloudClientAvailabilityService__xpcConnectionWithListenerEndpoint___block_invoke_80;
    v11 = &unk_1E7BFA328;
    objc_copyWeak(&v12, location);
    [v5 setInvalidationHandler:&v8];
    [v5 resume];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(location);
  }

  else
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 134217984;
      *(location + 4) = self;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_ERROR, "ICCloudClientAvailabilityService %p - Unable to create XPC Connection [no listener endpoint]", location, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

void __71__ICCloudClientAvailabilityService__xpcConnectionWithListenerEndpoint___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v8 = WeakRetained;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "ICCloudClientAvailabilityService %p - Connection to cloud availability service interrupted", buf, 0xCu);
  }

  v3 = [WeakRetained serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__ICCloudClientAvailabilityService__xpcConnectionWithListenerEndpoint___block_invoke_79;
  block[3] = &unk_1E7BFA300;
  v6 = WeakRetained;
  v4 = WeakRetained;
  dispatch_sync(v3, block);
}

void __71__ICCloudClientAvailabilityService__xpcConnectionWithListenerEndpoint___block_invoke_80(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v8 = WeakRetained;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "ICCloudClientAvailabilityService %p - Connection to cloud availability service invalidated", buf, 0xCu);
  }

  v3 = [WeakRetained serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__ICCloudClientAvailabilityService__xpcConnectionWithListenerEndpoint___block_invoke_81;
  block[3] = &unk_1E7BFA300;
  v6 = WeakRetained;
  v4 = WeakRetained;
  dispatch_sync(v3, block);
}

void __71__ICCloudClientAvailabilityService__xpcConnectionWithListenerEndpoint___block_invoke_81(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "ICCloudClientAvailabilityService %p - Resetting XPC connection to nil", &v6, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;
}

void __71__ICCloudClientAvailabilityService__xpcConnectionWithListenerEndpoint___block_invoke_79(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "ICCloudClientAvailabilityService %p - Resetting XPC connection to nil", &v6, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;
}

- (NSXPCConnection)xpcConnection
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__26402;
  v11 = __Block_byref_object_dispose__26403;
  v12 = 0;
  serialQueue = [(ICCloudClientAvailabilityService *)self serialQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__ICCloudClientAvailabilityService_xpcConnection__block_invoke;
  v6[3] = &unk_1E7BFA430;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __49__ICCloudClientAvailabilityService_xpcConnection__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  if (!v2)
  {
    v3 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 134217984;
      v21 = v4;
      _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "ICCloudClientAvailabilityService %p - Creating XPC Client Connection [started]", buf, 0xCu);
    }

    v5 = [*(a1 + 32) listenerEndpointProvider];
    v19 = 0;
    v6 = [v5 listenerEndpointForService:2 error:&v19];
    v7 = v19;

    if (!v6 || v7)
    {
      v11 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v18 = *(a1 + 32);
        *buf = 134218498;
        v21 = v18;
        v22 = 2114;
        v23 = v6;
        v24 = 2114;
        v25 = v7;
        v14 = "ICCloudClientAvailabilityService %p - Creating XPC Client Connection [failed] - endpoint=%{public}@ - error=%{public}@";
        v15 = v11;
        v16 = OS_LOG_TYPE_ERROR;
        v17 = 32;
        goto LABEL_10;
      }
    }

    else
    {
      v8 = [*(a1 + 32) _xpcConnectionWithListenerEndpoint:v6];
      v9 = *(a1 + 32);
      v10 = *(v9 + 8);
      *(v9 + 8) = v8;

      v11 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        v13 = *(v12 + 8);
        *buf = 134218242;
        v21 = v12;
        v22 = 2114;
        v23 = v13;
        v14 = "ICCloudClientAvailabilityService %p - Creating XPC Client Connection [done] - connection=%{public}@";
        v15 = v11;
        v16 = OS_LOG_TYPE_DEFAULT;
        v17 = 22;
LABEL_10:
        _os_log_impl(&dword_1B4491000, v15, v16, v14, buf, v17);
      }
    }

    v2 = *(*(a1 + 32) + 8);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

- (BOOL)canShowCloudVideo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  xpcConnection = [(ICCloudClientAvailabilityService *)self xpcConnection];
  v3 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_22_26407];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__ICCloudClientAvailabilityService_canShowCloudVideo__block_invoke_2;
  v5[3] = &unk_1E7BF7088;
  v5[4] = &v6;
  [v3 canShowCloudVideoWithCompletion:v5];

  LOBYTE(xpcConnection) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return xpcConnection;
}

- (BOOL)canShowCloudMusic
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  xpcConnection = [(ICCloudClientAvailabilityService *)self xpcConnection];
  v3 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_20_26410];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__ICCloudClientAvailabilityService_canShowCloudMusic__block_invoke_2;
  v5[3] = &unk_1E7BF7088;
  v5[4] = &v6;
  [v3 canShowCloudMusicWithCompletion:v5];

  LOBYTE(xpcConnection) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return xpcConnection;
}

- (BOOL)canShowCloudDownloadButtons
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  xpcConnection = [(ICCloudClientAvailabilityService *)self xpcConnection];
  v3 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_18_26412];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__ICCloudClientAvailabilityService_canShowCloudDownloadButtons__block_invoke_2;
  v5[3] = &unk_1E7BF7088;
  v5[4] = &v6;
  [v3 canShowCloudDownloadButtonsWithCompletion:v5];

  LOBYTE(xpcConnection) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return xpcConnection;
}

- (BOOL)shouldProhibitStoreAppsActionForCurrentNetworkConditions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  xpcConnection = [(ICCloudClientAvailabilityService *)self xpcConnection];
  v3 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_16];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __92__ICCloudClientAvailabilityService_shouldProhibitStoreAppsActionForCurrentNetworkConditions__block_invoke_2;
  v5[3] = &unk_1E7BF7088;
  v5[4] = &v6;
  [v3 shouldProhibitStoreAppsActionForCurrentNetworkConditionsWithCompletion:v5];

  LOBYTE(xpcConnection) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return xpcConnection;
}

- (BOOL)isCellularDataRestrictedForStoreApps
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  xpcConnection = [(ICCloudClientAvailabilityService *)self xpcConnection];
  v3 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_14];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__ICCloudClientAvailabilityService_isCellularDataRestrictedForStoreApps__block_invoke_2;
  v5[3] = &unk_1E7BF7088;
  v5[4] = &v6;
  [v3 isCellularDataRestrictedForStoreAppsWithCompletion:v5];

  LOBYTE(xpcConnection) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return xpcConnection;
}

- (BOOL)shouldProhibitVideosActionForCurrentNetworkConditions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  xpcConnection = [(ICCloudClientAvailabilityService *)self xpcConnection];
  v3 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_12_26414];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __89__ICCloudClientAvailabilityService_shouldProhibitVideosActionForCurrentNetworkConditions__block_invoke_2;
  v5[3] = &unk_1E7BF7088;
  v5[4] = &v6;
  [v3 shouldProhibitVideosActionForCurrentNetworkConditionsWithCompletion:v5];

  LOBYTE(xpcConnection) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return xpcConnection;
}

- (BOOL)isCellularDataRestrictedForVideos
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  xpcConnection = [(ICCloudClientAvailabilityService *)self xpcConnection];
  v3 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_10_26416];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__ICCloudClientAvailabilityService_isCellularDataRestrictedForVideos__block_invoke_2;
  v5[3] = &unk_1E7BF7088;
  v5[4] = &v6;
  [v3 isCellularDataRestrictedForVideosWithCompletion:v5];

  LOBYTE(xpcConnection) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return xpcConnection;
}

- (BOOL)shouldProhibitMusicActionForCurrentNetworkConditions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  xpcConnection = [(ICCloudClientAvailabilityService *)self xpcConnection];
  v3 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_8_26418];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __88__ICCloudClientAvailabilityService_shouldProhibitMusicActionForCurrentNetworkConditions__block_invoke_2;
  v5[3] = &unk_1E7BF7088;
  v5[4] = &v6;
  [v3 shouldProhibitMusicActionForCurrentNetworkConditionsWithCompletion:v5];

  LOBYTE(xpcConnection) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return xpcConnection;
}

- (BOOL)isCellularDataRestrictedForMusic
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  xpcConnection = [(ICCloudClientAvailabilityService *)self xpcConnection];
  v3 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_6_26420];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__ICCloudClientAvailabilityService_isCellularDataRestrictedForMusic__block_invoke_2;
  v5[3] = &unk_1E7BF7088;
  v5[4] = &v6;
  [v3 isCellularDataRestrictedForMusicWithCompletion:v5];

  LOBYTE(xpcConnection) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return xpcConnection;
}

- (BOOL)hasProperNetworkConditionsToShowCloudMedia
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  xpcConnection = [(ICCloudClientAvailabilityService *)self xpcConnection];
  v3 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_4];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __78__ICCloudClientAvailabilityService_hasProperNetworkConditionsToShowCloudMedia__block_invoke_2;
  v5[3] = &unk_1E7BF7088;
  v5[4] = &v6;
  [v3 hasProperNetworkConditionsToShowCloudMediaWithCompletion:v5];

  LOBYTE(xpcConnection) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return xpcConnection;
}

- (BOOL)hasProperNetworkConditionsToPlayMedia
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  xpcConnection = [(ICCloudClientAvailabilityService *)self xpcConnection];
  v3 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_26422];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__ICCloudClientAvailabilityService_hasProperNetworkConditionsToPlayMedia__block_invoke_2;
  v5[3] = &unk_1E7BF7088;
  v5[4] = &v6;
  [v3 hasProperNetworkConditionsToPlayMediaWithCompletion:v5];

  LOBYTE(xpcConnection) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return xpcConnection;
}

- (ICCloudClientAvailabilityService)initWithListenerEndpointProvider:(id)provider
{
  providerCopy = provider;
  v10.receiver = self;
  v10.super_class = ICCloudClientAvailabilityService;
  v5 = [(ICCloudClientAvailabilityService *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_listenerEndpointProvider, providerCopy);
    v7 = dispatch_queue_create("com.apple.itunescloudd.ICCloudClientAvailabilityService.serial.queue", 0);
    serialQueue = v6->_serialQueue;
    v6->_serialQueue = v7;
  }

  return v6;
}

@end