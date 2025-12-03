@interface RMConfigurationSubscriberService
+ (id)newConfigurationSubscriberServiceWithXPCConnection:(id)connection;
- (RMConfigurationSubscriberService)initWithXPCConnection:(id)connection;
- (void)fetchThenApplyConfigurationsWithScope:(int64_t)scope completionHandler:(id)handler;
- (void)fetchThenUpdateConfigurationUIsWithScope:(int64_t)scope completionHandler:(id)handler;
- (void)publishStatusKeys:(id)keys storeIdentifier:(id)identifier scope:(int64_t)scope completionHandler:(id)handler;
@end

@implementation RMConfigurationSubscriberService

+ (id)newConfigurationSubscriberServiceWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v4 = [[RMConfigurationSubscriberService alloc] initWithXPCConnection:connectionCopy];

  return v4;
}

- (RMConfigurationSubscriberService)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v21.receiver = self;
  v21.super_class = RMConfigurationSubscriberService;
  v5 = [(RMConfigurationSubscriberService *)&v21 init];
  if (v5)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    infoDictionary = [mainBundle infoDictionary];
    v8 = [RMConfigurationSubscriberDescription descriptionWithServiceDictionary:infoDictionary];

    types = [v8 types];
    v10 = [types copy];
    configurationTypes = v5->_configurationTypes;
    v5->_configurationTypes = v10;

    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    infoDictionary2 = [mainBundle2 infoDictionary];
    v14 = [RMStatusPublisherDescription descriptionWithServiceDictionary:infoDictionary2];

    statusKeys = [v14 statusKeys];
    allObjects = [statusKeys allObjects];
    statusKeys = v5->_statusKeys;
    v5->_statusKeys = allObjects;

    v18 = [connectionCopy valueForEntitlement:@"com.apple.private.remotemanagement.configuration-subscriber-service"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v18 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    v5->_hasServiceEntitlement = bOOLValue;
  }

  return v5;
}

- (void)fetchThenApplyConfigurationsWithScope:(int64_t)scope completionHandler:(id)handler
{
  handlerCopy = handler;
  hasServiceEntitlement = [(RMConfigurationSubscriberService *)self hasServiceEntitlement];
  configurationSubscriberService = [MEMORY[0x277D45F58] configurationSubscriberService];
  v9 = configurationSubscriberService;
  if (hasServiceEntitlement)
  {
    if (os_log_type_enabled(configurationSubscriberService, OS_LOG_TYPE_DEBUG))
    {
      [RMConfigurationSubscriberService fetchThenApplyConfigurationsWithScope:scope completionHandler:self];
    }

    v10 = MEMORY[0x277CBEB98];
    configurationTypes = [(RMConfigurationSubscriberService *)self configurationTypes];
    v12 = [v10 setWithArray:configurationTypes];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __92__RMConfigurationSubscriberService_fetchThenApplyConfigurationsWithScope_completionHandler___block_invoke;
    v21[3] = &unk_279B05B60;
    scopeCopy = scope;
    v21[4] = self;
    v22 = handlerCopy;
    [(RMConfigurationSubscriberClient *)self fetchConfigurationsWithTypes:v12 scope:scope completionHandler:v21];
  }

  else
  {
    if (os_log_type_enabled(configurationSubscriberService, OS_LOG_TYPE_ERROR))
    {
      [(RMConfigurationSubscriberService *)v9 fetchThenApplyConfigurationsWithScope:v13 completionHandler:v14, v15, v16, v17, v18, v19];
    }

    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:1 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v20);
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

- (void)fetchThenUpdateConfigurationUIsWithScope:(int64_t)scope completionHandler:(id)handler
{
  handlerCopy = handler;
  hasServiceEntitlement = [(RMConfigurationSubscriberService *)self hasServiceEntitlement];
  configurationSubscriberService = [MEMORY[0x277D45F58] configurationSubscriberService];
  v9 = configurationSubscriberService;
  if (hasServiceEntitlement)
  {
    if (os_log_type_enabled(configurationSubscriberService, OS_LOG_TYPE_DEBUG))
    {
      [RMConfigurationSubscriberService fetchThenUpdateConfigurationUIsWithScope:scope completionHandler:?];
    }

    v10 = MEMORY[0x277CBEB98];
    configurationTypes = [(RMConfigurationSubscriberService *)self configurationTypes];
    v12 = [v10 setWithArray:configurationTypes];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __95__RMConfigurationSubscriberService_fetchThenUpdateConfigurationUIsWithScope_completionHandler___block_invoke;
    v21[3] = &unk_279B05B88;
    scopeCopy = scope;
    v22 = handlerCopy;
    [(RMConfigurationSubscriberClient *)self fetchConfigurationUIsWithTypes:v12 scope:scope completionHandler:v21];

    v13 = v22;
  }

  else
  {
    if (os_log_type_enabled(configurationSubscriberService, OS_LOG_TYPE_ERROR))
    {
      [(RMConfigurationSubscriberService *)v9 fetchThenApplyConfigurationsWithScope:v14 completionHandler:v15, v16, v17, v18, v19, v20];
    }

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:1 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v13);
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

- (void)publishStatusKeys:(id)keys storeIdentifier:(id)identifier scope:(int64_t)scope completionHandler:(id)handler
{
  keysCopy = keys;
  identifierCopy = identifier;
  handlerCopy = handler;
  hasServiceEntitlement = [(RMConfigurationSubscriberService *)self hasServiceEntitlement];
  configurationSubscriberService = [MEMORY[0x277D45F58] configurationSubscriberService];
  v15 = configurationSubscriberService;
  if (hasServiceEntitlement)
  {
    if (os_log_type_enabled(configurationSubscriberService, OS_LOG_TYPE_DEBUG))
    {
      [RMConfigurationSubscriberService publishStatusKeys:keysCopy storeIdentifier:v15 scope:? completionHandler:?];
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __94__RMConfigurationSubscriberService_publishStatusKeys_storeIdentifier_scope_completionHandler___block_invoke;
    v24[3] = &unk_279B05808;
    v25 = keysCopy;
    v26 = handlerCopy;
    [(RMConfigurationSubscriberClient *)self sendStatusKeys:v25 storeIdentifier:identifierCopy scope:scope completionHandler:v24];

    v16 = v25;
  }

  else
  {
    if (os_log_type_enabled(configurationSubscriberService, OS_LOG_TYPE_ERROR))
    {
      [(RMConfigurationSubscriberService *)v15 fetchThenApplyConfigurationsWithScope:v17 completionHandler:v18, v19, v20, v21, v22, v23];
    }

    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:1 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v16);
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