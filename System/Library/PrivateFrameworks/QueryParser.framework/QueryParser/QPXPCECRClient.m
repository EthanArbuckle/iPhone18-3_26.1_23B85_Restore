@interface QPXPCECRClient
+ (id)sharedClient;
- (BOOL)warmUpECRClientSyncWithError:(id *)a3;
- (QPXPCECRClient)init;
@end

@implementation QPXPCECRClient

+ (id)sharedClient
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__QPXPCECRClient_sharedClient__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedClient_onceToken_118 != -1)
  {
    dispatch_once(&sharedClient_onceToken_118, block);
  }

  v2 = sharedClient_client_117;

  return v2;
}

void __30__QPXPCECRClient_sharedClient__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedClient_client_117;
  sharedClient_client_117 = v1;
}

- (QPXPCECRClient)init
{
  v8.receiver = self;
  v8.super_class = QPXPCECRClient;
  v2 = [(QPXPCECRClient *)&v8 init];
  if (v2)
  {
    if (ecrClientLogger_token != -1)
    {
      [QPECRClient warmUpSync];
    }

    v3 = ecrClientLogger_log;
    if (os_log_type_enabled(ecrClientLogger_log, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C6584000, v3, OS_LOG_TYPE_DEFAULT, "Initializing QPXPCECRClient", v7, 2u);
    }

    v4 = objc_alloc_init(MEMORY[0x1E69A9E98]);
    client = v2->_client;
    v2->_client = v4;
  }

  return v2;
}

- (BOOL)warmUpECRClientSyncWithError:(id *)a3
{
  client = self->_client;
  v8 = 0;
  [(GDEntityResolutionTextClient *)client warmupForMode:3 error:&v8];
  v5 = v8;
  if (a3)
  {
    v5 = v5;
    *a3 = v5;
  }

  v6 = v5 == 0;

  return v6;
}

@end