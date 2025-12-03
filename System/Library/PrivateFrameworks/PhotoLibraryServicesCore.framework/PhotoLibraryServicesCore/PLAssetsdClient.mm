@interface PLAssetsdClient
+ (id)sharedSystemLibraryAssetsdClient;
- (BOOL)_isSecondXPCConnectionDisabled;
- (PLAssetsdClient)initWithPhotoLibraryURL:(id)l;
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
- (void)addPhotoLibraryUnavailabilityHandler:(id)handler;
- (void)sendDaemonJob:(id)job shouldRunSerially:(BOOL)serially replyHandler:(id)handler;
- (void)waitUntilConnectionSendsAllMessages;
@end

@implementation PLAssetsdClient

- (PLAssetsdLibraryClient)libraryClient
{
  _primitiveClientForCurrentQoS = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  libraryClient = [_primitiveClientForCurrentQoS libraryClient];

  return libraryClient;
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
  _primitiveClientForCurrentQoS = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  nonBindingPhotoKitAddClient = [_primitiveClientForCurrentQoS nonBindingPhotoKitAddClient];

  return nonBindingPhotoKitAddClient;
}

- (PLNonBindingAssetsdPhotoKitClient)nonBindingPhotoKitClient
{
  _primitiveClientForCurrentQoS = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  nonBindingPhotoKitClient = [_primitiveClientForCurrentQoS nonBindingPhotoKitClient];

  return nonBindingPhotoKitClient;
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
  _primitiveClientForCurrentQoS = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  nonBindingDebugClient = [_primitiveClientForCurrentQoS nonBindingDebugClient];

  return nonBindingDebugClient;
}

- (id)privacySupportClient
{
  _primitiveClientForCurrentQoS = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  privacySupportClient = [_primitiveClientForCurrentQoS privacySupportClient];

  return privacySupportClient;
}

- (PLAssetsdDebugClient)debugClient
{
  _primitiveClientForCurrentQoS = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  debugClient = [_primitiveClientForCurrentQoS debugClient];

  return debugClient;
}

- (PLAssetsdDiagnosticsClient)diagnosticsClient
{
  _primitiveClientForCurrentQoS = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  diagnosticsClient = [_primitiveClientForCurrentQoS diagnosticsClient];

  return diagnosticsClient;
}

- (PLAssetsdDemoClient)demoClient
{
  _primitiveClientForCurrentQoS = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  demoClient = [_primitiveClientForCurrentQoS demoClient];

  return demoClient;
}

- (PLAssetsdNotificationClient)notificationClient
{
  _primitiveClientForCurrentQoS = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  notificationClient = [_primitiveClientForCurrentQoS notificationClient];

  return notificationClient;
}

- (PLAssetsdSyncClient)syncClient
{
  _primitiveClientForCurrentQoS = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  syncClient = [_primitiveClientForCurrentQoS syncClient];

  return syncClient;
}

- (PLAssetsdMigrationClient)migrationClient
{
  _primitiveClientForCurrentQoS = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  migrationClient = [_primitiveClientForCurrentQoS migrationClient];

  return migrationClient;
}

- (PLAssetsdCloudInternalClient)cloudInternalClient
{
  _primitiveClientForCurrentQoS = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  cloudInternalClient = [_primitiveClientForCurrentQoS cloudInternalClient];

  return cloudInternalClient;
}

- (PLAssetsdCloudClient)cloudClient
{
  _primitiveClientForCurrentQoS = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  cloudClient = [_primitiveClientForCurrentQoS cloudClient];

  return cloudClient;
}

- (PLAssetsdResourceInternalClient)resourceInternalClient
{
  _primitiveClientForCurrentQoS = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  resourceInternalClient = [_primitiveClientForCurrentQoS resourceInternalClient];

  return resourceInternalClient;
}

- (id)resourceWriteOnlyClient
{
  _primitiveClientForCurrentQoS = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  resourceWriteOnlyClient = [_primitiveClientForCurrentQoS resourceWriteOnlyClient];

  return resourceWriteOnlyClient;
}

- (PLAssetsdResourceClient)resourceClient
{
  _primitiveClientForCurrentQoS = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  resourceClient = [_primitiveClientForCurrentQoS resourceClient];

  return resourceClient;
}

- (PLAssetsdPhotoKitAddClient)photoKitAddClient
{
  _primitiveClientForCurrentQoS = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  photoKitAddClient = [_primitiveClientForCurrentQoS photoKitAddClient];

  return photoKitAddClient;
}

- (PLAssetsdResourceAvailabilityClient)resourceAvailabilityClient
{
  _primitiveClientForCurrentQoS = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  resourceAvailabilityClient = [_primitiveClientForCurrentQoS resourceAvailabilityClient];

  return resourceAvailabilityClient;
}

- (PLAssetsdPhotoKitClient)photoKitClient
{
  _primitiveClientForCurrentQoS = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  photoKitClient = [_primitiveClientForCurrentQoS photoKitClient];

  return photoKitClient;
}

- (PLAssetsdLibraryManagementClient)libraryManagementClient
{
  _primitiveClientForCurrentQoS = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  libraryManagementClient = [_primitiveClientForCurrentQoS libraryManagementClient];

  return libraryManagementClient;
}

- (id)systemLibraryURLReadOnlyClient
{
  _primitiveClientForCurrentQoS = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  systemLibraryURLReadOnlyClient = [_primitiveClientForCurrentQoS systemLibraryURLReadOnlyClient];

  return systemLibraryURLReadOnlyClient;
}

- (PLAssetsdLibraryInternalClient)libraryInternalClient
{
  _primitiveClientForCurrentQoS = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  libraryInternalClient = [_primitiveClientForCurrentQoS libraryInternalClient];

  return libraryInternalClient;
}

- (void)waitUntilConnectionSendsAllMessages
{
  [(PLPrimitiveAssetsdClient *)self->_highPriorityClient waitUntilConnectionSendsAllMessages];
  lowPriorityClient = self->_lowPriorityClient;

  [(PLPrimitiveAssetsdClient *)lowPriorityClient waitUntilConnectionSendsAllMessages];
}

- (void)sendDaemonJob:(id)job shouldRunSerially:(BOOL)serially replyHandler:(id)handler
{
  seriallyCopy = serially;
  handlerCopy = handler;
  jobCopy = job;
  _primitiveClientForCurrentQoS = [(PLAssetsdClient *)self _primitiveClientForCurrentQoS];
  [_primitiveClientForCurrentQoS sendDaemonJob:jobCopy shouldRunSerially:seriallyCopy replyHandler:handlerCopy];
}

- (void)addPhotoLibraryUnavailabilityHandler:(id)handler
{
  highPriorityClient = self->_highPriorityClient;
  handlerCopy = handler;
  [(PLPrimitiveAssetsdClient *)highPriorityClient addPhotoLibraryUnavailabilityHandler:handlerCopy];
  [(PLPrimitiveAssetsdClient *)self->_lowPriorityClient addPhotoLibraryUnavailabilityHandler:handlerCopy];
}

- (PLAssetsdClient)initWithPhotoLibraryURL:(id)l
{
  lCopy = l;
  v14.receiver = self;
  v14.super_class = PLAssetsdClient;
  v5 = [(PLAssetsdClient *)&v14 init];
  if (v5)
  {
    v6 = objc_alloc_init(PLAssetsdClientState);
    clientState = v5->_clientState;
    v5->_clientState = v6;

    v8 = [[PLPrimitiveAssetsdClient alloc] initWithPhotoLibraryURL:lCopy clientState:v5->_clientState];
    highPriorityClient = v5->_highPriorityClient;
    v5->_highPriorityClient = v8;

    v10 = [[PLPrimitiveAssetsdClient alloc] initWithPhotoLibraryURL:lCopy clientState:v5->_clientState];
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