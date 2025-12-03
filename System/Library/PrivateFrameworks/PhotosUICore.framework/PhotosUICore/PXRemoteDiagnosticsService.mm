@interface PXRemoteDiagnosticsService
+ (void)startServerOnInternalDevicesWithAgentClass:(Class)class;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (PXRemoteDiagnosticsService)init;
- (void)_startListening;
@end

@implementation PXRemoteDiagnosticsService

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v5 = MEMORY[0x1E696B0D0];
  connectionCopy = connection;
  v7 = [v5 interfaceWithProtocol:&unk_1F1B45C80];
  [connectionCopy setExportedInterface:v7];

  agent = [(PXRemoteDiagnosticsService *)self agent];
  [connectionCopy setExportedObject:agent];

  [connectionCopy resume];
  return 1;
}

- (void)_startListening
{
  diagnosticsQueue = self->_diagnosticsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__PXRemoteDiagnosticsService__startListening__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(diagnosticsQueue, block);
}

void __45__PXRemoteDiagnosticsService__startListening__block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 8))
  {
    v14[11] = v1;
    v14[12] = v2;
    v4 = [MEMORY[0x1E696B0D8] anonymousListener];
    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    *(v5 + 8) = v4;

    [*(*(a1 + 32) + 8) setDelegate:?];
    v7 = [*(*(a1 + 32) + 8) endpoint];
    v8 = [v7 _endpoint];
    v9 = [*(a1 + 32) agent];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [*(a1 + 32) agent];
      [v11 assetsdClient];
    }

    else
    {
      v11 = [MEMORY[0x1E69BF2A0] systemLibraryURL];
      [MEMORY[0x1E69BE688] sharedAssetsdClientForPhotoLibraryURL:v11];
    }
    v12 = ;

    v13 = [v12 diagnosticsClient];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __45__PXRemoteDiagnosticsService__startListening__block_invoke_2;
    v14[3] = &unk_1E774C5C0;
    v14[4] = *(a1 + 32);
    [v13 setPhotosXPCEndpoint:v8 completionHandler:v14];
  }
}

void __45__PXRemoteDiagnosticsService__startListening__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "Error setting photos XPC endpoint: %@", &v7, 0xCu);
    }
  }

  [*(*(a1 + 32) + 8) resume];
}

- (PXRemoteDiagnosticsService)init
{
  v7.receiver = self;
  v7.super_class = PXRemoteDiagnosticsService;
  v2 = [(PXRemoteDiagnosticsService *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.photosuicore.diagnostics", 0);
    diagnosticsQueue = v2->_diagnosticsQueue;
    v2->_diagnosticsQueue = v3;

    v5 = v2;
  }

  return v2;
}

+ (void)startServerOnInternalDevicesWithAgentClass:(Class)class
{
  if (!+[PXApplicationState isRunningInPhotosApp])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXRemoteDiagnosticsService.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"PXApplicationState.isRunningInPhotosApp"}];
  }

  if (PFOSVariantHasInternalUI())
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__PXRemoteDiagnosticsService_startServerOnInternalDevicesWithAgentClass___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = class;
    if (startServerOnInternalDevicesWithAgentClass__onceToken != -1)
    {
      dispatch_once(&startServerOnInternalDevicesWithAgentClass__onceToken, block);
    }
  }
}

uint64_t __73__PXRemoteDiagnosticsService_startServerOnInternalDevicesWithAgentClass___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(PXRemoteDiagnosticsService);
  v3 = startServerOnInternalDevicesWithAgentClass__service;
  startServerOnInternalDevicesWithAgentClass__service = v2;

  v4 = [*(a1 + 32) localDiagnosticsAgent];
  [startServerOnInternalDevicesWithAgentClass__service setAgent:v4];

  v5 = startServerOnInternalDevicesWithAgentClass__service;

  return [v5 _startListening];
}

@end