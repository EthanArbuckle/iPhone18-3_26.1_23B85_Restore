@interface TRAnisetteDataHandler
- (void)registerForAnisetteDataRequestsFromSession:(id)a3;
@end

@implementation TRAnisetteDataHandler

- (void)registerForAnisetteDataRequestsFromSession:(id)a3
{
  v3 = a3;
  [v3 setRequestHandler:&__block_literal_global_3 forRequestClass:objc_opt_class()];
  [v3 setRequestHandler:&__block_literal_global_7 forRequestClass:objc_opt_class()];
  [v3 setRequestHandler:&__block_literal_global_13 forRequestClass:objc_opt_class()];
  [v3 setRequestHandler:&__block_literal_global_19 forRequestClass:objc_opt_class()];
  [v3 setRequestHandler:&__block_literal_global_26 forRequestClass:objc_opt_class()];
}

void __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if (_TRLogEnabled == 1)
  {
    v6 = TRLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&dword_26F2A2000, v6, OS_LOG_TYPE_DEFAULT, "Received provision request: %@", buf, 0xCu);
    }
  }

  v7 = objc_alloc_init(MEMORY[0x277CF0168]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_1;
  v10[3] = &unk_279DCEEC8;
  v11 = v5;
  v8 = v5;
  [v7 provisionWithCompletion:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_1(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = TRLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_1_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = objc_alloc_init(TRProvisionAnisetteDataResponse);
    [(TRProvisionAnisetteDataResponse *)v7 setDidSucceed:a2];
    (*(*(a1 + 32) + 16))();
  }
}

void __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if (_TRLogEnabled == 1)
  {
    v6 = TRLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&dword_26F2A2000, v6, OS_LOG_TYPE_DEFAULT, "Received sync request: %@", buf, 0xCu);
    }
  }

  v7 = MEMORY[0x277CF0168];
  v8 = v4;
  v9 = objc_alloc_init(v7);
  v10 = [v8 simData];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_8;
  v13[3] = &unk_279DCEEC8;
  v14 = v5;
  v11 = v5;
  [v9 syncWithSIMData:v10 completion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = TRLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_8_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = objc_alloc_init(TRSyncAnisetteDataResponse);
    [(TRSyncAnisetteDataResponse *)v7 setDidSucceed:a2];
    (*(*(a1 + 32) + 16))();
  }
}

void __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if (_TRLogEnabled == 1)
  {
    v6 = TRLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&dword_26F2A2000, v6, OS_LOG_TYPE_DEFAULT, "Received erase request: %@", buf, 0xCu);
    }
  }

  v7 = objc_alloc_init(MEMORY[0x277CF0168]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_14;
  v10[3] = &unk_279DCEEC8;
  v11 = v5;
  v8 = v5;
  [v7 eraseWithCompletion:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_14(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = TRLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_14_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = objc_alloc_init(TREraseAnisetteDataResponse);
    [(TREraseAnisetteDataResponse *)v7 setDidSucceed:a2];
    (*(*(a1 + 32) + 16))();
  }
}

void __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_17(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if (_TRLogEnabled == 1)
  {
    v6 = TRLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&dword_26F2A2000, v6, OS_LOG_TYPE_DEFAULT, "Received fetch request: %@", buf, 0xCu);
    }
  }

  v7 = objc_alloc_init(MEMORY[0x277CF0168]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_20;
  v10[3] = &unk_279DCF6E8;
  v11 = v5;
  v8 = v5;
  [v7 anisetteDataWithCompletion:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = TRLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_20_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = objc_alloc_init(TRFetchAnisetteDataResponse);
    [(TRFetchAnisetteDataResponse *)v8 setAnisetteData:v5];
    (*(*(a1 + 32) + 16))();
  }
}

void __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_24(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if (_TRLogEnabled == 1)
  {
    v6 = TRLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&dword_26F2A2000, v6, OS_LOG_TYPE_DEFAULT, "Received legacy request: %@", buf, 0xCu);
    }
  }

  v7 = MEMORY[0x277CF0168];
  v8 = v4;
  v9 = objc_alloc_init(v7);
  v10 = [v8 dsid];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_27;
  v13[3] = &unk_279DCF6E8;
  v14 = v5;
  v11 = v5;
  [v9 legacyAnisetteDataForDSID:v10 withCompletion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_27(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = TRLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_27_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = objc_alloc_init(TRLegacyAnisetteDataResponse);
    [(TRLegacyAnisetteDataResponse *)v8 setAnisetteData:v5];
    (*(*(a1 + 32) + 16))();
  }
}

void __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_1_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_26F2A2000, v0, v1, "TRProvisionAnisetteDataRequest error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_8_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_26F2A2000, v0, v1, "TRSyncAnisetteDataRequest error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_14_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_26F2A2000, v0, v1, "TREraseAnisetteDataResponse error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_20_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_26F2A2000, v0, v1, "TRFetchAnisetteDataResponse error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_27_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_26F2A2000, v0, v1, "TRLegacyAnisetteDataResponse error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end