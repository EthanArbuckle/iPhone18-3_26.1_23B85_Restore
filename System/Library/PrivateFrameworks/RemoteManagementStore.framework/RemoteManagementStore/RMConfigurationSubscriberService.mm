@interface RMConfigurationSubscriberService
+ (id)newConfigurationSubscriberServiceWithXPCConnection:(id)a3;
- (RMConfigurationSubscriberService)initWithXPCConnection:(id)a3;
- (void)fetchThenApplyConfigurationsWithScope:(int64_t)a3 completionHandler:(id)a4;
- (void)fetchThenUpdateConfigurationUIsWithScope:(int64_t)a3 completionHandler:(id)a4;
- (void)publishStatusKeys:(id)a3 storeIdentifier:(id)a4 scope:(int64_t)a5 completionHandler:(id)a6;
@end

@implementation RMConfigurationSubscriberService

+ (id)newConfigurationSubscriberServiceWithXPCConnection:(id)a3
{
  v3 = a3;
  v4 = [[RMConfigurationSubscriberService alloc] initWithXPCConnection:v3];

  return v4;
}

- (RMConfigurationSubscriberService)initWithXPCConnection:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = RMConfigurationSubscriberService;
  v5 = [(RMConfigurationSubscriberService *)&v21 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = [v6 infoDictionary];
    v8 = [RMConfigurationSubscriberDescription descriptionWithServiceDictionary:v7];

    v9 = [v8 types];
    v10 = [v9 copy];
    configurationTypes = v5->_configurationTypes;
    v5->_configurationTypes = v10;

    v12 = [MEMORY[0x277CCA8D8] mainBundle];
    v13 = [v12 infoDictionary];
    v14 = [RMStatusPublisherDescription descriptionWithServiceDictionary:v13];

    v15 = [v14 statusKeys];
    v16 = [v15 allObjects];
    statusKeys = v5->_statusKeys;
    v5->_statusKeys = v16;

    v18 = [v4 valueForEntitlement:@"com.apple.private.remotemanagement.configuration-subscriber-service"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 BOOLValue];
    }

    else
    {
      v19 = 0;
    }

    v5->_hasServiceEntitlement = v19;
  }

  return v5;
}

- (void)fetchThenApplyConfigurationsWithScope:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(RMConfigurationSubscriberService *)self hasServiceEntitlement];
  v8 = [MEMORY[0x277D45F58] configurationSubscriberService];
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [RMConfigurationSubscriberService fetchThenApplyConfigurationsWithScope:a3 completionHandler:self];
    }

    v10 = MEMORY[0x277CBEB98];
    v11 = [(RMConfigurationSubscriberService *)self configurationTypes];
    v12 = [v10 setWithArray:v11];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __92__RMConfigurationSubscriberService_fetchThenApplyConfigurationsWithScope_completionHandler___block_invoke;
    v21[3] = &unk_279B05B60;
    v23 = a3;
    v21[4] = self;
    v22 = v6;
    [(RMConfigurationSubscriberClient *)self fetchConfigurationsWithTypes:v12 scope:a3 completionHandler:v21];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(RMConfigurationSubscriberService *)v9 fetchThenApplyConfigurationsWithScope:v13 completionHandler:v14, v15, v16, v17, v18, v19];
    }

    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:1 userInfo:0];
    (*(v6 + 2))(v6, v20);
  }
}

void __92__RMConfigurationSubscriberService_fetchThenApplyConfigurationsWithScope_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D45F58] configurationSubscriberService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __92__RMConfigurationSubscriberService_fetchThenApplyConfigurationsWithScope_completionHandler___block_invoke_cold_1(a1);
  }

  if (v3)
  {
    v5 = MEMORY[0x277D45F40];
    v6 = [v3 debugDescription];
    v7 = [v5 createInternalErrorWithDescription:v6];
  }

  else
  {
    v7 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchThenUpdateConfigurationUIsWithScope:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(RMConfigurationSubscriberService *)self hasServiceEntitlement];
  v8 = [MEMORY[0x277D45F58] configurationSubscriberService];
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [RMConfigurationSubscriberService fetchThenUpdateConfigurationUIsWithScope:a3 completionHandler:?];
    }

    v10 = MEMORY[0x277CBEB98];
    v11 = [(RMConfigurationSubscriberService *)self configurationTypes];
    v12 = [v10 setWithArray:v11];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __95__RMConfigurationSubscriberService_fetchThenUpdateConfigurationUIsWithScope_completionHandler___block_invoke;
    v21[3] = &unk_279B05B88;
    v23 = a3;
    v22 = v6;
    [(RMConfigurationSubscriberClient *)self fetchConfigurationUIsWithTypes:v12 scope:a3 completionHandler:v21];

    v13 = v22;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(RMConfigurationSubscriberService *)v9 fetchThenApplyConfigurationsWithScope:v14 completionHandler:v15, v16, v17, v18, v19, v20];
    }

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:1 userInfo:0];
    (*(v6 + 2))(v6, v13);
  }
}

void __95__RMConfigurationSubscriberService_fetchThenUpdateConfigurationUIsWithScope_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D45F58] configurationSubscriberService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __95__RMConfigurationSubscriberService_fetchThenUpdateConfigurationUIsWithScope_completionHandler___block_invoke_cold_1(a1);
  }

  if (v3)
  {
    v5 = MEMORY[0x277D45F40];
    v6 = [v3 debugDescription];
    v7 = [v5 createInternalErrorWithDescription:v6];
  }

  else
  {
    v7 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)publishStatusKeys:(id)a3 storeIdentifier:(id)a4 scope:(int64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(RMConfigurationSubscriberService *)self hasServiceEntitlement];
  v14 = [MEMORY[0x277D45F58] configurationSubscriberService];
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [RMConfigurationSubscriberService publishStatusKeys:v10 storeIdentifier:v15 scope:? completionHandler:?];
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __94__RMConfigurationSubscriberService_publishStatusKeys_storeIdentifier_scope_completionHandler___block_invoke;
    v24[3] = &unk_279B05808;
    v25 = v10;
    v26 = v12;
    [(RMConfigurationSubscriberClient *)self sendStatusKeys:v25 storeIdentifier:v11 scope:a5 completionHandler:v24];

    v16 = v25;
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(RMConfigurationSubscriberService *)v15 fetchThenApplyConfigurationsWithScope:v17 completionHandler:v18, v19, v20, v21, v22, v23];
    }

    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:1 userInfo:0];
    (*(v12 + 2))(v12, v16);
  }
}

void __94__RMConfigurationSubscriberService_publishStatusKeys_storeIdentifier_scope_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D45F58] configurationSubscriberService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __94__RMConfigurationSubscriberService_publishStatusKeys_storeIdentifier_scope_completionHandler___block_invoke_cold_1(a1, v4);
  }

  if (v3)
  {
    v5 = MEMORY[0x277D45F40];
    v6 = [v3 debugDescription];
    v7 = [v5 createInternalErrorWithDescription:v6];
  }

  else
  {
    v7 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchThenApplyConfigurationsWithScope:(uint64_t)a1 completionHandler:(void *)a2 .cold.2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] rms_stringWithScope:a1];
  v4 = [a2 configurationTypes];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

void __92__RMConfigurationSubscriberService_fetchThenApplyConfigurationsWithScope_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] rms_stringWithScope:*(a1 + 48)];
  v3 = [*(a1 + 32) configurationTypes];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)fetchThenUpdateConfigurationUIsWithScope:(uint64_t)a1 completionHandler:.cold.2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CCACA8] rms_stringWithScope:a1];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

void __95__RMConfigurationSubscriberService_fetchThenUpdateConfigurationUIsWithScope_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CCACA8] rms_stringWithScope:*(a1 + 40)];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)publishStatusKeys:(uint64_t)a1 storeIdentifier:(NSObject *)a2 scope:completionHandler:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_261E36000, a2, OS_LOG_TYPE_DEBUG, "Fetch status keys: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __94__RMConfigurationSubscriberService_publishStatusKeys_storeIdentifier_scope_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = 138543362;
  v5 = v2;
  _os_log_debug_impl(&dword_261E36000, a2, OS_LOG_TYPE_DEBUG, "Processed status keys: %{public}@...", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end