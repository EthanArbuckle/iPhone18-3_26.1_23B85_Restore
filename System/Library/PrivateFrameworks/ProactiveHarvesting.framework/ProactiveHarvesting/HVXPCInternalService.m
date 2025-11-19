@interface HVXPCInternalService
- (BOOL)deleteContentWithRequest:(id)a3 error:(id *)a4;
- (BOOL)donateSearchableItem:(id)a3 error:(id *)a4;
- (BOOL)harvestWithError:(id *)a3;
- (BOOL)overrideIsConnectedToPower:(id)a3 error:(id *)a4;
- (BOOL)refillHarvestBudgetWithError:(id *)a3;
- (HVXPCInternalService)init;
- (id)statsWithError:(id *)a3;
@end

@implementation HVXPCInternalService

- (BOOL)harvestWithError:(id *)a3
{
  v5 = hv_default_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2321EC000, v5, OS_LOG_TYPE_DEFAULT, "HVXPCInternalService: harvestWithError called.", buf, 2u);
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  *buf = 0;
  v11 = buf;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1752;
  v14 = __Block_byref_object_dispose__1753;
  v15 = 0;
  v6 = [(HVXPCInternalService *)self synchronousProxy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__HVXPCInternalService_harvestWithError___block_invoke;
  v9[3] = &unk_278969A90;
  v9[4] = &v16;
  v9[5] = buf;
  [v6 harvestWithCompletion:v9];

  v7 = *(v17 + 24);
  if (a3 && (v17[3] & 1) == 0)
  {
    *a3 = *(v11 + 5);
    v7 = *(v17 + 24);
  }

  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v16, 8);
  return v7 & 1;
}

- (id)statsWithError:(id *)a3
{
  v5 = hv_default_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2321EC000, v5, OS_LOG_TYPE_DEFAULT, "HVXPCInternalService: statsWithError called.", buf, 2u);
  }

  *buf = 0;
  v18 = buf;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1752;
  v21 = __Block_byref_object_dispose__1753;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1752;
  v15 = __Block_byref_object_dispose__1753;
  v16 = 0;
  v6 = [(HVXPCInternalService *)self synchronousProxy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__HVXPCInternalService_statsWithError___block_invoke;
  v10[3] = &unk_278969AB8;
  v10[4] = buf;
  v10[5] = &v11;
  [v6 statsWithCompletion:v10];

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

void __39__HVXPCInternalService_statsWithError___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (BOOL)deleteContentWithRequest:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = hv_default_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2321EC000, v8, OS_LOG_TYPE_DEFAULT, "HVXPCInternalService: deleteContentWithRequest called.", buf, 2u);
  }

  if (!v7)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"HVXPCInternalService.m" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"request"}];
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  *buf = 0;
  v15 = buf;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1752;
  v18 = __Block_byref_object_dispose__1753;
  v19 = 0;
  v9 = [(HVXPCInternalService *)self synchronousProxy];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__HVXPCInternalService_deleteContentWithRequest_error___block_invoke;
  v13[3] = &unk_278969A90;
  v13[4] = &v20;
  v13[5] = buf;
  [v9 deleteContentWithRequest:v7 completion:v13];

  v10 = *(v21 + 24);
  if (a4 && (v21[3] & 1) == 0)
  {
    *a4 = *(v15 + 5);
    v10 = *(v21 + 24);
  }

  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v20, 8);
  return v10 & 1;
}

- (BOOL)donateSearchableItem:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = hv_default_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2321EC000, v8, OS_LOG_TYPE_DEFAULT, "HVXPCInternalService: donateSearchableItem called.", buf, 2u);
  }

  if (!v7)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"HVXPCInternalService.m" lineNumber:180 description:{@"Invalid parameter not satisfying: %@", @"searchableItem"}];
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  *buf = 0;
  v15 = buf;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1752;
  v18 = __Block_byref_object_dispose__1753;
  v19 = 0;
  v9 = [(HVXPCInternalService *)self synchronousProxy];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__HVXPCInternalService_donateSearchableItem_error___block_invoke;
  v13[3] = &unk_278969A90;
  v13[4] = &v20;
  v13[5] = buf;
  [v9 donateSearchableItem:v7 completion:v13];

  v10 = *(v21 + 24);
  if (a4 && (v21[3] & 1) == 0)
  {
    *a4 = *(v15 + 5);
    v10 = *(v21 + 24);
  }

  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v20, 8);
  return v10 & 1;
}

- (BOOL)refillHarvestBudgetWithError:(id *)a3
{
  v5 = hv_default_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2321EC000, v5, OS_LOG_TYPE_DEFAULT, "HVXPCInternalService: refillHarvestBudgetWithError", buf, 2u);
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  *buf = 0;
  v11 = buf;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1752;
  v14 = __Block_byref_object_dispose__1753;
  v15 = 0;
  v6 = [(HVXPCInternalService *)self synchronousProxy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__HVXPCInternalService_refillHarvestBudgetWithError___block_invoke;
  v9[3] = &unk_278969A90;
  v9[4] = &v16;
  v9[5] = buf;
  [v6 refillHarvestBudgetWithCompletion:v9];

  v7 = *(v17 + 24);
  if (a3 && (v17[3] & 1) == 0)
  {
    *a3 = *(v11 + 5);
    v7 = *(v17 + 24);
  }

  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v16, 8);
  return v7 & 1;
}

- (BOOL)overrideIsConnectedToPower:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = hv_default_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2321EC000, v7, OS_LOG_TYPE_DEFAULT, "HVXPCInternalService: overrideIsConnectedToPower", buf, 2u);
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  *buf = 0;
  v13 = buf;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1752;
  v16 = __Block_byref_object_dispose__1753;
  v17 = 0;
  v8 = [(HVXPCInternalService *)self synchronousProxy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__HVXPCInternalService_overrideIsConnectedToPower_error___block_invoke;
  v11[3] = &unk_278969A90;
  v11[4] = &v18;
  v11[5] = buf;
  [v8 overrideIsConnectedToPower:v6 completion:v11];

  v9 = *(v19 + 24);
  if (a4 && (v19[3] & 1) == 0)
  {
    *a4 = *(v13 + 5);
    v9 = *(v19 + 24);
  }

  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v18, 8);
  return v9 & 1;
}

void __40__HVXPCInternalService_synchronousProxy__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = hv_default_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_2321EC000, v3, OS_LOG_TYPE_ERROR, "HVXPCInternalService: error: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (HVXPCInternalService)init
{
  v17.receiver = self;
  v17.super_class = HVXPCInternalService;
  v2 = [(HVXPCInternalService *)&v17 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28475F1F0];
    v4 = objc_autoreleasePoolPush();
    v5 = objc_alloc(MEMORY[0x277CBEB98]);
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v5 initWithObjects:{v6, v7, v8, v9, v10, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v4);
    [v3 setClasses:v11 forSelector:sel_statsWithCompletion_ argumentIndex:0 ofReply:1];

    v12 = objc_alloc(MEMORY[0x277D42650]);
    v13 = hv_default_log_handle();
    v14 = [v12 initWithServiceName:@"com.apple.proactive.ProactiveHarvesting.Internal" whitelistedServerInterface:v3 whitelistedClientInterface:0 serverInitiatedRequestHandler:0 interruptionHandler:&__block_literal_global_1789 invalidationHandler:&__block_literal_global_37 logHandle:v13];
    helper = v2->_helper;
    v2->_helper = v14;
  }

  return v2;
}

void __28__HVXPCInternalService_init__block_invoke_35()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = hv_default_log_handle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 138412290;
    v3 = @"com.apple.proactive.ProactiveHarvesting.Internal";
    _os_log_impl(&dword_2321EC000, v0, OS_LOG_TYPE_DEFAULT, "Connection to %@ invalidated", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void __28__HVXPCInternalService_init__block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = hv_default_log_handle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 138412290;
    v3 = @"com.apple.proactive.ProactiveHarvesting.Internal";
    _os_log_impl(&dword_2321EC000, v0, OS_LOG_TYPE_DEFAULT, "Connection to %@ interrupted", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

@end