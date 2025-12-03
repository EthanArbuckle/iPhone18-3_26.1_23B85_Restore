@interface PSGInternalClient
+ (id)sharedInstance;
- (PSGInternalClient)init;
- (id)sysdiagnoseInformationWithError:(id *)error;
@end

@implementation PSGInternalClient

- (id)sysdiagnoseInformationWithError:(id *)error
{
  _remoteObjectProxy = [(PSGInternalClient *)self _remoteObjectProxy];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__57;
  v24 = __Block_byref_object_dispose__58;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__57;
  v18 = __Block_byref_object_dispose__58;
  v19 = 0;
  v5 = dispatch_semaphore_create(0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__PSGInternalClient_sysdiagnoseInformationWithError___block_invoke;
  v10[3] = &unk_279ABCDC8;
  v12 = &v20;
  v13 = &v14;
  v6 = v5;
  v11 = v6;
  [_remoteObjectProxy sysdiagnoseInformationWithCompletion:v10];
  [MEMORY[0x277D425A0] waitForSemaphore:v6];
  if (error)
  {
    *error = v15[5];
  }

  v7 = v21[5];
  if (!v7)
  {
    v21[5] = @"{error: No info returned from server}";
    v7 = v21[5];
  }

  v8 = v7;

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v8;
}

void __53__PSGInternalClient_sysdiagnoseInformationWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (PSGInternalClient)init
{
  v9.receiver = self;
  v9.super_class = PSGInternalClient;
  v2 = [(PSGInternalClient *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287349D40];
    v4 = objc_alloc(MEMORY[0x277D42650]);
    v5 = psg_default_log_handle();
    v6 = [v4 initWithServiceName:@"com.apple.private.psg.internal" whitelistedServerInterface:v3 whitelistedClientInterface:0 serverInitiatedRequestHandler:0 interruptionHandler:&__block_literal_global_12 invalidationHandler:&__block_literal_global_15 logHandle:v5];
    clientHelper = v2->_clientHelper;
    v2->_clientHelper = v6;
  }

  return v2;
}

void __25__PSGInternalClient_init__block_invoke_13()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = psg_default_log_handle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v2 = 138412290;
    v3 = @"com.apple.private.psg.internal";
    _os_log_impl(&dword_260D18000, v0, OS_LOG_TYPE_INFO, "Connection to %@ invalidated.", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void __25__PSGInternalClient_init__block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = psg_default_log_handle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v2 = 138412290;
    v3 = @"com.apple.private.psg.internal";
    _os_log_error_impl(&dword_260D18000, v0, OS_LOG_TYPE_ERROR, "Connection to %@ interrupted.", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken2_72 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2_72, &__block_literal_global_73);
  }

  v3 = sharedInstance__pasExprOnceResult_74;

  return v3;
}

void __35__PSGInternalClient_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_74;
  sharedInstance__pasExprOnceResult_74 = v1;

  objc_autoreleasePoolPop(v0);
}

@end