@interface HVXPCSysdiagnoseService
- (HVXPCSysdiagnoseService)init;
- (id)sysdiagnoseStringWithError:(id *)a3;
@end

@implementation HVXPCSysdiagnoseService

- (id)sysdiagnoseStringWithError:(id *)a3
{
  v5 = hv_default_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2321EC000, v5, OS_LOG_TYPE_DEFAULT, "HVXPCSysdiagnoseService: sysdiagnoseStringWithError called.", buf, 2u);
  }

  *buf = 0;
  v18 = buf;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__594;
  v21 = __Block_byref_object_dispose__595;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__594;
  v15 = __Block_byref_object_dispose__595;
  v16 = 0;
  v6 = [(HVXPCSysdiagnoseService *)self synchronousProxy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__HVXPCSysdiagnoseService_sysdiagnoseStringWithError___block_invoke;
  v10[3] = &unk_278968DE0;
  v10[4] = buf;
  v10[5] = &v11;
  [v6 sysdiagnoseStringWithCompletion:v10];

  v7 = *(v18 + 5);
  if (a3 && !v7)
  {
    *a3 = v12[5];
    v7 = *(v18 + 5);
  }

  v8 = v7;
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(buf, 8);

  return v8;
}

void __54__HVXPCSysdiagnoseService_sysdiagnoseStringWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __43__HVXPCSysdiagnoseService_synchronousProxy__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = hv_default_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_2321EC000, v3, OS_LOG_TYPE_ERROR, "HVXPCSysdiagnoseService: error: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (HVXPCSysdiagnoseService)init
{
  v11.receiver = self;
  v11.super_class = HVXPCSysdiagnoseService;
  v2 = [(HVXPCSysdiagnoseService *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284753DD0];
    v4 = objc_autoreleasePoolPush();
    v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v4);
    [v3 setClasses:v5 forSelector:sel_sysdiagnoseStringWithCompletion_ argumentIndex:0 ofReply:1];

    v6 = objc_alloc(MEMORY[0x277D42650]);
    v7 = hv_default_log_handle();
    v8 = [v6 initWithServiceName:@"com.apple.proactive.ProactiveHarvesting.Sysdiagnose" whitelistedServerInterface:v3 whitelistedClientInterface:0 serverInitiatedRequestHandler:0 interruptionHandler:&__block_literal_global_605 invalidationHandler:&__block_literal_global_16 logHandle:v7];
    helper = v2->_helper;
    v2->_helper = v8;
  }

  return v2;
}

void __31__HVXPCSysdiagnoseService_init__block_invoke_14()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = hv_default_log_handle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 138412290;
    v3 = @"com.apple.proactive.ProactiveHarvesting.Sysdiagnose";
    _os_log_impl(&dword_2321EC000, v0, OS_LOG_TYPE_DEFAULT, "Connection to %@ invalidated", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void __31__HVXPCSysdiagnoseService_init__block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = hv_default_log_handle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 138412290;
    v3 = @"com.apple.proactive.ProactiveHarvesting.Sysdiagnose";
    _os_log_impl(&dword_2321EC000, v0, OS_LOG_TYPE_DEFAULT, "Connection to %@ interrupted", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

@end