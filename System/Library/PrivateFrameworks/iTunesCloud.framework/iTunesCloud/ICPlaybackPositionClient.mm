@interface ICPlaybackPositionClient
+ (id)sharedService;
- (ICPlaybackPositionClient)init;
- (NSXPCConnection)connection;
- (void)deletePlaybackPositionEntities;
- (void)deletePlaybackPositionEntitiesFromLibraryWithIdentifier:(id)a3;
- (void)deletePlaybackPositionEntity:(id)a3;
- (void)getLocalPlaybackPositionForEntityIdentifiers:(id)a3 completionBlock:(id)a4;
- (void)getLocalPlaybackPositionForEntityIdentifiers:(id)a3 forDomain:(id)a4 fromLibraryWithIdentifier:(id)a5 completionBlock:(id)a6;
- (void)persistPlaybackPositionEntity:(id)a3 isCheckpoint:(BOOL)a4 completionBlock:(id)a5;
- (void)pullPlaybackPositionEntity:(id)a3 completionBlock:(id)a4;
- (void)pushPlaybackPositionEntity:(id)a3 completionBlock:(id)a4;
- (void)synchronizePlaybackPositions;
- (void)synchronizePlaybackPositionsForLibraryWithIdentifier:(id)a3 forDomain:(id)a4 isCheckpoint:(BOOL)a5;
- (void)updateForeignDatabaseWithValuesFromPlaybackPositionEntity:(id)a3;
@end

@implementation ICPlaybackPositionClient

- (ICPlaybackPositionClient)init
{
  v8.receiver = self;
  v8.super_class = ICPlaybackPositionClient;
  v2 = [(ICPlaybackPositionClient *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.iTunesCloud.ICPlaybackPositionClient.serialQueue", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v3;

    v5 = objc_alloc_init(ICCloudServerListenerEndpointProvider);
    listenerEndpointProvider = v2->_listenerEndpointProvider;
    v2->_listenerEndpointProvider = v5;
  }

  return v2;
}

+ (id)sharedService
{
  if (sharedService_onceToken != -1)
  {
    dispatch_once(&sharedService_onceToken, &__block_literal_global_22283);
  }

  v3 = sharedService___sharedService;

  return v3;
}

uint64_t __41__ICPlaybackPositionClient_sharedService__block_invoke()
{
  sharedService___sharedService = objc_alloc_init(ICPlaybackPositionClient);

  return MEMORY[0x1EEE66BB8]();
}

- (void)synchronizePlaybackPositions
{
  v4 = [getML3MusicLibraryClass_22257() autoupdatingSharedLibrary];
  v3 = [v4 libraryUID];
  [(ICPlaybackPositionClient *)self synchronizePlaybackPositionsForLibraryWithIdentifier:v3 forDomain:@"com.apple.upp" isCheckpoint:0];
}

- (NSXPCConnection)connection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__22223;
  v10 = __Block_byref_object_dispose__22224;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__ICPlaybackPositionClient_connection__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __38__ICPlaybackPositionClient_connection__block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    goto LABEL_4;
  }

  v4 = *(v2 + 24);
  v35 = 0;
  v30 = [v4 listenerEndpointForService:6 error:&v35];
  v5 = v35;
  if (v30)
  {
    v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v30];
    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    *(v7 + 16) = v6;

    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2CAFAF0];
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    [v9 setClasses:v12 forSelector:sel_pushPlaybackPositionEntity_completionBlock_ argumentIndex:0 ofReply:0];

    v13 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    [v9 setClasses:v13 forSelector:sel_pushPlaybackPositionEntity_completionBlock_ argumentIndex:1 ofReply:1];

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    [v9 setClasses:v16 forSelector:sel_pushPlaybackPositionEntity_completionBlock_ argumentIndex:2 ofReply:1];

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    [v9 setClasses:v19 forSelector:sel_persistPlaybackPositionEntity_isCheckpoint_completionBlock_ argumentIndex:0 ofReply:0];

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = [v20 setWithObjects:{v21, v22, objc_opt_class(), 0}];
    [v9 setClasses:v23 forSelector:sel_pushPlaybackPositionEntity_completionBlock_ argumentIndex:0 ofReply:1];

    [*(*(a1 + 32) + 16) setRemoteObjectInterface:v9];
    [*(*(a1 + 32) + 16) setExportedObject:?];
    objc_initWeak(location, *(a1 + 32));
    v24 = *(*(a1 + 32) + 16);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __38__ICPlaybackPositionClient_connection__block_invoke_79;
    v33[3] = &unk_1E7BFA328;
    objc_copyWeak(&v34, location);
    [v24 setInterruptionHandler:v33];
    v25 = *(*(a1 + 32) + 16);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __38__ICPlaybackPositionClient_connection__block_invoke_80;
    v31[3] = &unk_1E7BFA328;
    objc_copyWeak(&v32, location);
    [v25 setInvalidationHandler:v31];
    [*(*(a1 + 32) + 16) resume];
    objc_destroyWeak(&v32);
    objc_destroyWeak(&v34);
    objc_destroyWeak(location);

    v3 = *(*(a1 + 32) + 16);
LABEL_4:
    v26 = *(*(a1 + 40) + 8);
    v27 = v3;
    v5 = *(v26 + 40);
    *(v26 + 40) = v27;
    goto LABEL_5;
  }

  v28 = os_log_create("com.apple.amp.iTunesCloud", "PlaybackPosition");
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = *(a1 + 32);
    *location = 138543618;
    *&location[4] = v29;
    v37 = 2114;
    v38 = v5;
    _os_log_impl(&dword_1B4491000, v28, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve listener endpoint. error=%{public}@", location, 0x16u);
  }

LABEL_5:
}

void __38__ICPlaybackPositionClient_connection__block_invoke_79(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = os_log_create("com.apple.amp.iTunesCloud", "PlaybackPosition");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138543362;
    v4 = WeakRetained;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Connection interrupted", &v3, 0xCu);
  }
}

void __38__ICPlaybackPositionClient_connection__block_invoke_80(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = os_log_create("com.apple.amp.iTunesCloud", "PlaybackPosition");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = WeakRetained;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Connection invalidated", &v4, 0xCu);
  }

  v3 = WeakRetained[2];
  WeakRetained[2] = 0;
}

- (void)pushPlaybackPositionEntity:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICPlaybackPositionClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__ICPlaybackPositionClient_pushPlaybackPositionEntity_completionBlock___block_invoke;
  v14[3] = &unk_1E7BF77C0;
  v9 = v6;
  v15 = v9;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__ICPlaybackPositionClient_pushPlaybackPositionEntity_completionBlock___block_invoke_10;
  v12[3] = &unk_1E7BF65F0;
  v13 = v9;
  v11 = v9;
  [v10 pushPlaybackPositionEntity:v7 completionBlock:v12];
}

void __71__ICPlaybackPositionClient_pushPlaybackPositionEntity_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "PlaybackPosition");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "ICPlaybackPositionClient - pushPlaybackPositionEntity: Failed to get remote object proxy. error=%{public}@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3, 0);
  }
}

void __71__ICPlaybackPositionClient_pushPlaybackPositionEntity_completionBlock___block_invoke_10(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = os_log_create("com.apple.amp.iTunesCloud", "PlaybackPosition");
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = [v7 msv_description];
      v13 = 67109634;
      v14 = a2;
      v15 = 2114;
      v16 = v8;
      v17 = 2114;
      v18 = v11;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_ERROR, "ICPlaybackPositionClient - pushPlaybackPositionEntity: Completed. success=%{BOOL}u cloudEntity=%{public}@ error=%{public}@", &v13, 0x1Cu);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 67109378;
    v14 = a2;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "ICPlaybackPositionClient - pushPlaybackPositionEntity: Completed. success=%{BOOL}u cloudEntity=%{public}@", &v13, 0x12u);
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    (*(v12 + 16))(v12, a2, v7, v8);
  }
}

- (void)pullPlaybackPositionEntity:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICPlaybackPositionClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__ICPlaybackPositionClient_pullPlaybackPositionEntity_completionBlock___block_invoke;
  v14[3] = &unk_1E7BF77C0;
  v9 = v6;
  v15 = v9;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__ICPlaybackPositionClient_pullPlaybackPositionEntity_completionBlock___block_invoke_8;
  v12[3] = &unk_1E7BF65F0;
  v13 = v9;
  v11 = v9;
  [v10 pullPlaybackPositionEntity:v7 completionBlock:v12];
}

void __71__ICPlaybackPositionClient_pullPlaybackPositionEntity_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "PlaybackPosition");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "ICPlaybackPositionClient - pullPlaybackPositionEntity: Failed to get remote object proxy. error=%{public}@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3, 0);
  }
}

void __71__ICPlaybackPositionClient_pullPlaybackPositionEntity_completionBlock___block_invoke_8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = os_log_create("com.apple.amp.iTunesCloud", "PlaybackPosition");
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = [v7 msv_description];
      v13 = 67109634;
      v14 = a2;
      v15 = 2114;
      v16 = v8;
      v17 = 2114;
      v18 = v11;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_ERROR, "ICPlaybackPositionClient - pullPlaybackPositionEntity: Completed. success=%{BOOL}u cloudEntity=%{public}@ error=%{public}@", &v13, 0x1Cu);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 67109378;
    v14 = a2;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "ICPlaybackPositionClient - pullPlaybackPositionEntity: Completed. success=%{BOOL}u cloudEntity=%{public}@", &v13, 0x12u);
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    (*(v12 + 16))(v12, a2, v7, v8);
  }
}

- (void)updateForeignDatabaseWithValuesFromPlaybackPositionEntity:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ICPlaybackPositionClient *)self connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86__ICPlaybackPositionClient_updateForeignDatabaseWithValuesFromPlaybackPositionEntity___block_invoke;
  v8[3] = &unk_1E7BF9308;
  v8[4] = self;
  v6 = [v5 remoteObjectProxyWithErrorHandler:v8];
  [v6 updateForeignDatabaseWithValuesFromPlaybackPositionEntity:v4];

  v7 = os_log_create("com.apple.amp.iTunesCloud", "PlaybackPosition");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v10 = self;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@ updateForeignDatabaseWithValuesFromPlaybackPositionEntity:] Completed for entity %{public}@", buf, 0x16u);
  }
}

void __86__ICPlaybackPositionClient_updateForeignDatabaseWithValuesFromPlaybackPositionEntity___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "PlaybackPosition");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "[%{publie}@ updateForeignDatabaseWithValuesFromPlaybackPositionEntity:] Failed to get remote object proxy. error=%{public}@", &v6, 0x16u);
  }
}

- (void)getLocalPlaybackPositionForEntityIdentifiers:(id)a3 forDomain:(id)a4 fromLibraryWithIdentifier:(id)a5 completionBlock:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = [(ICPlaybackPositionClient *)self connection];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __125__ICPlaybackPositionClient_getLocalPlaybackPositionForEntityIdentifiers_forDomain_fromLibraryWithIdentifier_completionBlock___block_invoke;
  v24[3] = &unk_1E7BFA490;
  v24[4] = self;
  v15 = v12;
  v25 = v15;
  v16 = [v14 remoteObjectProxyWithErrorHandler:v24];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __125__ICPlaybackPositionClient_getLocalPlaybackPositionForEntityIdentifiers_forDomain_fromLibraryWithIdentifier_completionBlock___block_invoke_6;
  v20[3] = &unk_1E7BF65C8;
  v20[4] = self;
  v21 = v10;
  v22 = v11;
  v23 = v15;
  v17 = v15;
  v18 = v11;
  v19 = v10;
  [v16 getLocalPlaybackPositionForEntityIdentifiers:v13 forDomain:v19 fromLibraryWithIdentifier:v18 completionBlock:v20];
}

void __125__ICPlaybackPositionClient_getLocalPlaybackPositionForEntityIdentifiers_forDomain_fromLibraryWithIdentifier_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "PlaybackPosition");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "[%{publie}@ getLocalPlaybackPositionForEntityIdentifiers:] Failed to get remote object proxy. error=%{public}@", &v7, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v3, 0);
  }
}

void __125__ICPlaybackPositionClient_getLocalPlaybackPositionForEntityIdentifiers_forDomain_fromLibraryWithIdentifier_completionBlock___block_invoke_6(void *a1, uint64_t a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = os_log_create("com.apple.amp.iTunesCloud", "PlaybackPosition");
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = a1[4];
      v12 = [v8 count];
      v13 = a1[5];
      v14 = a1[6];
      v15 = [v7 msv_description];
      v21 = 138544642;
      v22 = v11;
      v23 = 2048;
      v24 = v12;
      v25 = 2114;
      v26 = v13;
      v27 = 2114;
      v28 = v14;
      v29 = 1024;
      v30 = a2;
      v31 = 2114;
      v32 = v15;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_ERROR, "[%{public}@ getLocalPlaybackPositionForEntityIdentifiers:] Completed with %llu entities for domain %{public}@ with library (%{public}@). success=%{BOOL}u error=%{public}@", &v21, 0x3Au);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v16 = a1[4];
    v17 = [v8 count];
    v18 = a1[5];
    v19 = a1[6];
    v21 = 138544386;
    v22 = v16;
    v23 = 2048;
    v24 = v17;
    v25 = 2114;
    v26 = v18;
    v27 = 2114;
    v28 = v19;
    v29 = 1024;
    v30 = a2;
    _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@ getLocalPlaybackPositionForEntityIdentifiers:] Completed with %llu entities for domain %{public}@ with library (%{public}@). success=%{BOOL}u", &v21, 0x30u);
  }

  v20 = a1[7];
  if (v20)
  {
    (*(v20 + 16))(v20, a2, v7, v8);
  }
}

- (void)persistPlaybackPositionEntity:(id)a3 isCheckpoint:(BOOL)a4 completionBlock:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(ICPlaybackPositionClient *)self connection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __87__ICPlaybackPositionClient_persistPlaybackPositionEntity_isCheckpoint_completionBlock___block_invoke;
  v16[3] = &unk_1E7BFA490;
  v16[4] = self;
  v11 = v8;
  v17 = v11;
  v12 = [v10 remoteObjectProxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __87__ICPlaybackPositionClient_persistPlaybackPositionEntity_isCheckpoint_completionBlock___block_invoke_4;
  v14[3] = &unk_1E7BF8450;
  v15 = v11;
  v13 = v11;
  [v12 persistPlaybackPositionEntity:v9 isCheckpoint:v5 completionBlock:v14];
}

void __87__ICPlaybackPositionClient_persistPlaybackPositionEntity_isCheckpoint_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "PlaybackPosition");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "[%{public}@ persistPlaybackPositionEntity:] Failed to get remote object proxy. error=%{public}@", &v7, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v3);
  }
}

void __87__ICPlaybackPositionClient_persistPlaybackPositionEntity_isCheckpoint_completionBlock___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = os_log_create("com.apple.amp.iTunesCloud", "PlaybackPosition");
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = [v5 msv_description];
      v10 = 67109378;
      v11 = a2;
      v12 = 2114;
      v13 = v8;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "ICPlaybackPositionClient - persistPlaybackPositionEntity: Completed. success=%{BOOL}u error=%{public}@", &v10, 0x12u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 67109120;
    v11 = a2;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "ICPlaybackPositionClient - persistPlaybackPositionEntity: Completed. success=%{BOOL}u", &v10, 8u);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v5);
  }
}

- (void)deletePlaybackPositionEntity:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ICPlaybackPositionClient *)self connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__ICPlaybackPositionClient_deletePlaybackPositionEntity___block_invoke;
  v8[3] = &unk_1E7BF9308;
  v8[4] = self;
  v6 = [v5 remoteObjectProxyWithErrorHandler:v8];
  [v6 deletePlaybackPositionEntity:v4];

  v7 = os_log_create("com.apple.amp.iTunesCloud", "PlaybackPosition");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v10 = self;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@ deletePlaybackPositionEntity:] Completed for entity %{public}@", buf, 0x16u);
  }
}

void __57__ICPlaybackPositionClient_deletePlaybackPositionEntity___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "PlaybackPosition");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "[%{public}@ deletePlaybackPositionEntity:] Failed to get remote object proxy. error=%{public}@", &v6, 0x16u);
  }
}

- (void)deletePlaybackPositionEntitiesFromLibraryWithIdentifier:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ICPlaybackPositionClient *)self connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__ICPlaybackPositionClient_deletePlaybackPositionEntitiesFromLibraryWithIdentifier___block_invoke;
  v8[3] = &unk_1E7BF9308;
  v8[4] = self;
  v6 = [v5 remoteObjectProxyWithErrorHandler:v8];
  [v6 deletePlaybackPositionEntitiesFromLibraryWithIdentifier:v4];

  v7 = os_log_create("com.apple.amp.iTunesCloud", "PlaybackPosition");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v10 = self;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@ deletePlaybackPositionEntitiesFromLibraryWithIdentifier:] Completed for library with identifier %{public}@", buf, 0x16u);
  }
}

void __84__ICPlaybackPositionClient_deletePlaybackPositionEntitiesFromLibraryWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "PlaybackPosition");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "[%{public}@ deletePlaybackPositionEntitiesFromLibraryWithIdentifier:] Failed to get remote object proxy. error=%{public}@", &v6, 0x16u);
  }
}

- (void)synchronizePlaybackPositionsForLibraryWithIdentifier:(id)a3 forDomain:(id)a4 isCheckpoint:(BOOL)a5
{
  v5 = a5;
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(ICPlaybackPositionClient *)self connection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __104__ICPlaybackPositionClient_synchronizePlaybackPositionsForLibraryWithIdentifier_forDomain_isCheckpoint___block_invoke;
  v13[3] = &unk_1E7BF9308;
  v13[4] = self;
  v11 = [v10 remoteObjectProxyWithErrorHandler:v13];
  [v11 synchronizePlaybackPositionsForLibraryWithIdentifier:v8 forDomain:v9 isCheckpoint:v5];

  v12 = os_log_create("com.apple.amp.iTunesCloud", "PlaybackPosition");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v15 = self;
    v16 = 2114;
    v17 = v8;
    v18 = 1024;
    v19 = v5;
    _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@ synchronizePlaybackPositionsForLibraryWithIdentifier:] Completed sync for library with identifier %{public}@. checkpoint=%{BOOL}u", buf, 0x1Cu);
  }
}

void __104__ICPlaybackPositionClient_synchronizePlaybackPositionsForLibraryWithIdentifier_forDomain_isCheckpoint___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "PlaybackPosition");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "[%{public}@ synchronizePlaybackPositionsForLibraryWithIdentifier:] Failed to get remote object proxy. error=%{public}@", &v6, 0x16u);
  }
}

- (void)getLocalPlaybackPositionForEntityIdentifiers:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [getML3MusicLibraryClass_22257() autoupdatingSharedLibrary];
  v8 = [v9 libraryUID];
  [(ICPlaybackPositionClient *)self getLocalPlaybackPositionForEntityIdentifiers:v7 forDomain:@"com.apple.upp" fromLibraryWithIdentifier:v8 completionBlock:v6];
}

- (void)deletePlaybackPositionEntities
{
  v4 = [getML3MusicLibraryClass_22257() autoupdatingSharedLibrary];
  v3 = [v4 libraryUID];
  [(ICPlaybackPositionClient *)self deletePlaybackPositionEntitiesFromLibraryWithIdentifier:v3];
}

@end