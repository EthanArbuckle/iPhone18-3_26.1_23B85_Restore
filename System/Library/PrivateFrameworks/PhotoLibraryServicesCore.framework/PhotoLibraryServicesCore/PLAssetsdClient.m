@interface PLAssetsdClient
+ (id)sharedSystemLibraryAssetsdClient;
- (BOOL)_isSecondXPCConnectionDisabled;
- (PLAssetsdClient)initWithPhotoLibraryURL:(id)a3;
- (PLAssetsdCloudClient)cloudClient;
- (PLAssetsdCloudInternalClient)cloudInternalClient;
- (PLAssetsdDebugClient)debugClient;
- (PLAssetsdDemoClient)demoClient;
- (PLAssetsdDiagnosticsClient)diagnosticsClient;
- (PLAssetsdLibraryClient)libraryClient;
- (PLAssetsdLibraryInternalClient)libraryInternalClient;
- (PLAssetsdLibraryManagementClient)libraryManagementClient;
- (PLAssetsdMigrationClient)migrationClient;
- (PLAssetsdNonBindingDebugClient)nonBindingDebugClient;
- (PLAssetsdNotificationClient)notificationClient;
- (PLAssetsdPhotoKitAddClient)photoKitAddClient;
- (PLAssetsdPhotoKitClient)photoKitClient;
- (PLAssetsdResourceAvailabilityClient)resourceAvailabilityClient;
- (PLAssetsdResourceClient)resourceClient;
- (PLAssetsdResourceInternalClient)resourceInternalClient;
- (PLAssetsdSyncClient)syncClient;
- (PLNonBindingAssetsdPhotoKitAddClient)nonBindingPhotoKitAddClient;
- (PLNonBindingAssetsdPhotoKitClient)nonBindingPhotoKitClient;
- (id)_primitiveClientForCurrentQoS;
- (id)privacySupportClient;
- (id)resourceWriteOnlyClient;
- (id)systemLibraryURLReadOnlyClient;
- (void)addPhotoLibraryUnavailabilityHandler:(id)a3;
- (void)sendDaemonJob:(id)a3 shouldRunSerially:(BOOL)a4 replyHandler:(id)a5;
- (void)waitUntilConnectionSendsAllMessages;
@end

@implementation PLAssetsdClient

- (PLAssetsdLibraryClient)libraryClient
{
  v2 = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  v3 = [v2 libraryClient];

  return v3;
}

- (id)_primitiveClientForCurrentQoS
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = qos_class_self();
  if ([(PLAssetsdClient *)self _isSecondXPCConnectionDisabled]|| v3 == QOS_CLASS_USER_INTERACTIVE || v3 == QOS_CLASS_USER_INITIATED)
  {
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      highPriorityClient = self->_highPriorityClient;
      v10 = 138412290;
      v11 = highPriorityClient;
      _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_DEBUG, "Using high priority assetsd XPC client: %@", &v10, 0xCu);
    }

    v6 = 16;
  }

  else
  {
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      lowPriorityClient = self->_lowPriorityClient;
      v10 = 138412290;
      v11 = lowPriorityClient;
      _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_DEBUG, "Using low priority assetsd XPC client: %@", &v10, 0xCu);
    }

    v6 = 24;
  }

  v7 = *(&self->super.isa + v6);

  return v7;
}

- (BOOL)_isSecondXPCConnectionDisabled
{
  if (_isSecondXPCConnectionDisabled_sOnceToken != -1)
  {
    dispatch_once(&_isSecondXPCConnectionDisabled_sOnceToken, &__block_literal_global_201_6452);
  }

  return _isSecondXPCConnectionDisabled_sIsSecondConnectionDisabled;
}

void __51__PLAssetsdClient_sharedSystemLibraryAssetsdClient__block_invoke_3()
{
  if (!sharedSystemLibraryAssetsdClient_sharedAssetsdClient)
  {
    v0 = [PLAssetsdClient alloc];
    v3 = +[PLPhotoLibraryPathManagerCore systemLibraryURL];
    v1 = [(PLAssetsdClient *)v0 initWithPhotoLibraryURL:v3];
    v2 = sharedSystemLibraryAssetsdClient_sharedAssetsdClient;
    sharedSystemLibraryAssetsdClient_sharedAssetsdClient = v1;
  }
}

- (PLNonBindingAssetsdPhotoKitAddClient)nonBindingPhotoKitAddClient
{
  v2 = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  v3 = [v2 nonBindingPhotoKitAddClient];

  return v3;
}

- (PLNonBindingAssetsdPhotoKitClient)nonBindingPhotoKitClient
{
  v2 = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  v3 = [v2 nonBindingPhotoKitClient];

  return v3;
}

void __49__PLAssetsdClient__isSecondXPCConnectionDisabled__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"com.apple.photos.backend.disableSecondXPCConnection"];
  _isSecondXPCConnectionDisabled_sIsSecondConnectionDisabled = v1;
  if (v1)
  {
    v2 = PLBackendGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_impl(&dword_1AA9BD000, v2, OS_LOG_TYPE_ERROR, "Second assetsd XPC connection is disabled due to user default", v3, 2u);
    }
  }
}

- (PLAssetsdNonBindingDebugClient)nonBindingDebugClient
{
  v2 = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  v3 = [v2 nonBindingDebugClient];

  return v3;
}

- (id)privacySupportClient
{
  v2 = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  v3 = [v2 privacySupportClient];

  return v3;
}

- (PLAssetsdDebugClient)debugClient
{
  v2 = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  v3 = [v2 debugClient];

  return v3;
}

- (PLAssetsdDiagnosticsClient)diagnosticsClient
{
  v2 = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  v3 = [v2 diagnosticsClient];

  return v3;
}

- (PLAssetsdDemoClient)demoClient
{
  v2 = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  v3 = [v2 demoClient];

  return v3;
}

- (PLAssetsdNotificationClient)notificationClient
{
  v2 = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  v3 = [v2 notificationClient];

  return v3;
}

- (PLAssetsdSyncClient)syncClient
{
  v2 = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  v3 = [v2 syncClient];

  return v3;
}

- (PLAssetsdMigrationClient)migrationClient
{
  v2 = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  v3 = [v2 migrationClient];

  return v3;
}

- (PLAssetsdCloudInternalClient)cloudInternalClient
{
  v2 = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  v3 = [v2 cloudInternalClient];

  return v3;
}

- (PLAssetsdCloudClient)cloudClient
{
  v2 = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  v3 = [v2 cloudClient];

  return v3;
}

- (PLAssetsdResourceInternalClient)resourceInternalClient
{
  v2 = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  v3 = [v2 resourceInternalClient];

  return v3;
}

- (id)resourceWriteOnlyClient
{
  v2 = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  v3 = [v2 resourceWriteOnlyClient];

  return v3;
}

- (PLAssetsdResourceClient)resourceClient
{
  v2 = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  v3 = [v2 resourceClient];

  return v3;
}

- (PLAssetsdPhotoKitAddClient)photoKitAddClient
{
  v2 = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  v3 = [v2 photoKitAddClient];

  return v3;
}

- (PLAssetsdResourceAvailabilityClient)resourceAvailabilityClient
{
  v2 = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  v3 = [v2 resourceAvailabilityClient];

  return v3;
}

- (PLAssetsdPhotoKitClient)photoKitClient
{
  v2 = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  v3 = [v2 photoKitClient];

  return v3;
}

- (PLAssetsdLibraryManagementClient)libraryManagementClient
{
  v2 = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  v3 = [v2 libraryManagementClient];

  return v3;
}

- (id)systemLibraryURLReadOnlyClient
{
  v2 = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  v3 = [v2 systemLibraryURLReadOnlyClient];

  return v3;
}

- (PLAssetsdLibraryInternalClient)libraryInternalClient
{
  v2 = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  v3 = [v2 libraryInternalClient];

  return v3;
}

- (void)waitUntilConnectionSendsAllMessages
{
  [(PLPrimitiveAssetsdClient *)self->_highPriorityClient waitUntilConnectionSendsAllMessages];
  lowPriorityClient = self->_lowPriorityClient;

  [(PLPrimitiveAssetsdClient *)lowPriorityClient waitUntilConnectionSendsAllMessages];
}

- (void)sendDaemonJob:(id)a3 shouldRunSerially:(BOOL)a4 replyHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  [v10 sendDaemonJob:v9 shouldRunSerially:v5 replyHandler:v8];
}

- (void)addPhotoLibraryUnavailabilityHandler:(id)a3
{
  highPriorityClient = self->_highPriorityClient;
  v5 = a3;
  [(PLPrimitiveAssetsdClient *)highPriorityClient addPhotoLibraryUnavailabilityHandler:v5];
  [(PLPrimitiveAssetsdClient *)self->_lowPriorityClient addPhotoLibraryUnavailabilityHandler:v5];
}

- (PLAssetsdClient)initWithPhotoLibraryURL:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PLAssetsdClient;
  v5 = [(PLAssetsdClient *)&v14 init];
  if (v5)
  {
    v6 = objc_alloc_init(PLAssetsdClientState);
    clientState = v5->_clientState;
    v5->_clientState = v6;

    v8 = [[PLPrimitiveAssetsdClient alloc] initWithPhotoLibraryURL:v4 clientState:v5->_clientState];
    highPriorityClient = v5->_highPriorityClient;
    v5->_highPriorityClient = v8;

    v10 = [[PLPrimitiveAssetsdClient alloc] initWithPhotoLibraryURL:v4 clientState:v5->_clientState];
    lowPriorityClient = v5->_lowPriorityClient;
    v5->_lowPriorityClient = v10;

    v12 = v5;
  }

  return v5;
}

+ (id)sharedSystemLibraryAssetsdClient
{
  if (sharedSystemLibraryAssetsdClient_onceToken != -1)
  {
    dispatch_once(&sharedSystemLibraryAssetsdClient_onceToken, &__block_literal_global_188_6458);
  }

  notify_register_dispatch("com.apple.photos.systemphotolibraryurl", &sharedSystemLibraryAssetsdClient_splURLChangeNotificationToken, sharedSystemLibraryAssetsdClient_sharedAssetsdClientQueue, &__block_literal_global_192_6459);
  dispatch_sync(sharedSystemLibraryAssetsdClient_sharedAssetsdClientQueue, &__block_literal_global_194);
  v2 = sharedSystemLibraryAssetsdClient_sharedAssetsdClient;

  return v2;
}

void __51__PLAssetsdClient_sharedSystemLibraryAssetsdClient__block_invoke_2()
{
  v0 = sharedSystemLibraryAssetsdClient_sharedAssetsdClient;
  sharedSystemLibraryAssetsdClient_sharedAssetsdClient = 0;
}

uint64_t __51__PLAssetsdClient_sharedSystemLibraryAssetsdClient__block_invoke()
{
  sharedSystemLibraryAssetsdClient_sharedAssetsdClientQueue = dispatch_queue_create("sharedSystemLibraryAssetsdClient", 0);

  return MEMORY[0x1EEE66BB8]();
}

@end