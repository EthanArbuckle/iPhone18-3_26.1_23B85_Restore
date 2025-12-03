@interface STLocalDynamicActivityAttributionManager
- (STLocalDynamicActivityAttributionManager)init;
- (id)currentAttributedAppForClient:(id)client;
- (id)currentAttributionForAttribution:(id)attribution;
- (id)currentAttributionForClient:(id *)client;
- (id)currentAttributionKeyForClient:(id)client;
- (void)_updateAttributionMapWithAttribution:(void *)attribution clientID:;
- (void)setAttributionLocalizableKey:(id)key maskingClientAuditToken:(id *)token forClient:(id)client;
- (void)setAttributionStringWithFormat:(id)format maskingClientAuditToken:(id *)token forClient:(id)client;
- (void)setAttributionWebsiteString:(id)string maskingClientAuditToken:(id *)token forClient:(id)client;
- (void)setLocalizableAttributionKey:(id)key andApplication:(id)application forClient:(id)client;
- (void)subscribeToUpdates:(id)updates;
- (void)unsubscribeFromUpdates:(id)updates;
@end

@implementation STLocalDynamicActivityAttributionManager

- (STLocalDynamicActivityAttributionManager)init
{
  v12.receiver = self;
  v12.super_class = STLocalDynamicActivityAttributionManager;
  v2 = [(STLocalDynamicActivityAttributionManager *)&v12 init];
  if (v2)
  {
    Serial = BSDispatchQueueCreateSerial();
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = Serial;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    clientAttributionMap = v2->_clientAttributionMap;
    v2->_clientAttributionMap = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    monitorClients = v2->_monitorClients;
    v2->_monitorClients = v7;

    v9 = [[STDynamicActivityAttributionListener alloc] initWithServerHandle:v2];
    dynamicAttributionListener = v2->_dynamicAttributionListener;
    v2->_dynamicAttributionListener = v9;
  }

  return v2;
}

- (id)currentAttributionKeyForClient:(id)client
{
  clientCopy = client;
  v5 = clientCopy;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  if (clientCopy)
  {
    if (self)
    {
      internalQueue = self->_internalQueue;
    }

    else
    {
      internalQueue = 0;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__STLocalDynamicActivityAttributionManager_currentAttributionKeyForClient___block_invoke;
    block[3] = &unk_1E85DDDF0;
    v12 = &v13;
    block[4] = self;
    v11 = clientCopy;
    dispatch_sync(internalQueue, block);

    v7 = v14[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __75__STLocalDynamicActivityAttributionManager_currentAttributionKeyForClient___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 24) objectForKey:a1[5]];
  v2 = [v5 localizationKey];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)currentAttributedAppForClient:(id)client
{
  clientCopy = client;
  v5 = clientCopy;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  if (clientCopy)
  {
    if (self)
    {
      internalQueue = self->_internalQueue;
    }

    else
    {
      internalQueue = 0;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__STLocalDynamicActivityAttributionManager_currentAttributedAppForClient___block_invoke;
    block[3] = &unk_1E85DDDF0;
    v12 = &v13;
    block[4] = self;
    v11 = clientCopy;
    dispatch_sync(internalQueue, block);

    v7 = v14[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __74__STLocalDynamicActivityAttributionManager_currentAttributedAppForClient___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 24) objectForKey:a1[5]];
  v2 = [v5 bundleIdentifier];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)currentAttributionForClient:(id *)client
{
  v4 = *&client->var0[4];
  v13 = *client->var0;
  v14 = v4;
  v5 = BSExecutablePathForAuditToken();
  lastPathComponent = [v5 lastPathComponent];

  if (lastPathComponent)
  {
    *&v13 = 0;
    *(&v13 + 1) = &v13;
    *&v14 = 0x3032000000;
    *(&v14 + 1) = __Block_byref_object_copy_;
    v15 = __Block_byref_object_dispose_;
    v16 = 0;
    if (self)
    {
      internalQueue = self->_internalQueue;
    }

    else
    {
      internalQueue = 0;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__STLocalDynamicActivityAttributionManager_currentAttributionForClient___block_invoke;
    block[3] = &unk_1E85DDDF0;
    v12 = &v13;
    block[4] = self;
    v11 = lastPathComponent;
    dispatch_sync(internalQueue, block);
    v8 = *(*(&v13 + 1) + 40);

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __72__STLocalDynamicActivityAttributionManager_currentAttributionForClient___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)currentAttributionForAttribution:(id)attribution
{
  attributionCopy = attribution;
  v5 = attributionCopy;
  v19 = 0u;
  v20 = 0u;
  if (attributionCopy)
  {
    [attributionCopy auditToken];
  }

  v15 = v19;
  v16 = v20;
  v6 = BSExecutablePathForAuditToken();
  if (!v6)
  {
    [v5 pid];
    v6 = BSExecutablePathForPID();
  }

  lastPathComponent = [v6 lastPathComponent];
  v8 = lastPathComponent;
  if (lastPathComponent)
  {
    *&v15 = 0;
    *(&v15 + 1) = &v15;
    *&v16 = 0x3032000000;
    *(&v16 + 1) = __Block_byref_object_copy_;
    v17 = __Block_byref_object_dispose_;
    v18 = 0;
    if (self)
    {
      internalQueue = self->_internalQueue;
    }

    else
    {
      internalQueue = 0;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__STLocalDynamicActivityAttributionManager_currentAttributionForAttribution___block_invoke;
    block[3] = &unk_1E85DDDF0;
    v14 = &v15;
    block[4] = self;
    v13 = lastPathComponent;
    dispatch_sync(internalQueue, block);
    v10 = *(*(&v15 + 1) + 40);

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __77__STLocalDynamicActivityAttributionManager_currentAttributionForAttribution___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)setLocalizableAttributionKey:(id)key andApplication:(id)application forClient:(id)client
{
  keyCopy = key;
  applicationCopy = application;
  clientCopy = client;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __98__STLocalDynamicActivityAttributionManager_setLocalizableAttributionKey_andApplication_forClient___block_invoke;
  v15[3] = &unk_1E85DDE18;
  v15[4] = self;
  v16 = keyCopy;
  v17 = applicationCopy;
  v18 = clientCopy;
  v12 = clientCopy;
  v13 = applicationCopy;
  v14 = keyCopy;
  dispatch_async(internalQueue, v15);
}

void __98__STLocalDynamicActivityAttributionManager_setLocalizableAttributionKey_andApplication_forClient___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  v7 = v6;
  if (v1)
  {
    if (v6)
    {
      [v6 auditToken];
    }

    memset(buf, 0, 32);
    v8 = BSExecutablePathForAuditToken();
    v9 = v8;
    if (v8)
    {
      v10 = [v8 lastPathComponent];
      if (STSystemStatusIsInternalLoggingEnabled_onceToken != -1)
      {
        dispatch_once(&STSystemStatusIsInternalLoggingEnabled_onceToken, &__block_literal_global_56);
      }

      if (STSystemStatusIsInternalLoggingEnabled___internalLoggingEnabled == 1)
      {
        v11 = STSystemStatusLogDynamicAttribution();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          *&buf[4] = v10;
          *&buf[12] = 2112;
          *&buf[14] = v4;
          *&buf[22] = 2112;
          *&buf[24] = v5;
          _os_log_impl(&dword_1DA9C2000, v11, OS_LOG_TYPE_DEFAULT, "setAttributionKey:andApplication:forClient: updating dynamic attribution map with values ={%@ : (%@, %@)}", buf, 0x20u);
        }
      }

      if (v4 | v5)
      {
        memset(buf, 0, 32);
        v12 = [STDynamicActivityAttribution attributionForClientAuditToken:buf clientExecutablePath:v9 bundleID:v5 localizationKey:v4];
      }

      else
      {
        v12 = 0;
      }

      [(STLocalDynamicActivityAttributionManager *)v1 _updateAttributionMapWithAttribution:v12 clientID:v10];
    }

    else
    {
      v10 = STSystemStatusLogDynamicAttribution();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = BSProcessDescriptionForAuditToken();
        *buf = 138412290;
        *&buf[4] = v13;
        _os_log_error_impl(&dword_1DA9C2000, v10, OS_LOG_TYPE_ERROR, "setAttributionKey:andApplication:forClient: unable to get executable path from client audit token: %@", buf, 0xCu);
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)setAttributionLocalizableKey:(id)key maskingClientAuditToken:(id *)token forClient:(id)client
{
  keyCopy = key;
  clientCopy = client;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v11 = *&token->var0[4];
  v17 = *token->var0;
  v18 = v11;
  block[2] = __107__STLocalDynamicActivityAttributionManager_setAttributionLocalizableKey_maskingClientAuditToken_forClient___block_invoke;
  block[3] = &unk_1E85DDE40;
  block[4] = self;
  v15 = keyCopy;
  v16 = clientCopy;
  v12 = clientCopy;
  v13 = keyCopy;
  dispatch_async(internalQueue, block);
}

void __107__STLocalDynamicActivityAttributionManager_setAttributionLocalizableKey_maskingClientAuditToken_forClient___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 72);
  v18 = *(a1 + 56);
  v19 = v4;
  v5 = v1;
  v6 = v3;
  v7 = v6;
  if (v2)
  {
    v16 = 0u;
    v17 = 0u;
    if (v6)
    {
      [v6 auditToken];
    }

    *buf = v16;
    v21 = v17;
    v8 = BSExecutablePathForAuditToken();
    if (v8)
    {
      *buf = v18;
      v21 = v19;
      v9 = BSExecutablePathForAuditToken();
      if (v5 | v9)
      {
        *buf = v16;
        v21 = v17;
        v15[0] = v18;
        v15[1] = v19;
        v10 = [STDynamicActivityAttribution attributionForClientAuditToken:buf maskingClientAuditToken:v15 clientExecutablePath:v8 maskingClientExecutablePath:v9 localizationKey:v5];
      }

      else
      {
        v10 = 0;
      }

      if (STSystemStatusIsInternalLoggingEnabled_onceToken != -1)
      {
        dispatch_once(&STSystemStatusIsInternalLoggingEnabled_onceToken, &__block_literal_global_56);
      }

      if (STSystemStatusIsInternalLoggingEnabled___internalLoggingEnabled == 1)
      {
        v12 = STSystemStatusLogDynamicAttribution();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v10;
          _os_log_impl(&dword_1DA9C2000, v12, OS_LOG_TYPE_DEFAULT, "New dynamic attribution: %@", buf, 0xCu);
        }
      }

      v13 = [v8 lastPathComponent];
      [(STLocalDynamicActivityAttributionManager *)v2 _updateAttributionMapWithAttribution:v10 clientID:v13];
    }

    else
    {
      v10 = STSystemStatusLogDynamicAttribution();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = BSProcessDescriptionForAuditToken();
        *buf = 138412290;
        *&buf[4] = v11;
        _os_log_error_impl(&dword_1DA9C2000, v10, OS_LOG_TYPE_ERROR, "setAttributionLocalizableKey:maskingClientAuditToken:forClient: unable to get executable path from client audit token: %@", buf, 0xCu);
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)setAttributionStringWithFormat:(id)format maskingClientAuditToken:(id *)token forClient:(id)client
{
  formatCopy = format;
  clientCopy = client;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v11 = *&token->var0[4];
  v17 = *token->var0;
  v18 = v11;
  block[2] = __109__STLocalDynamicActivityAttributionManager_setAttributionStringWithFormat_maskingClientAuditToken_forClient___block_invoke;
  block[3] = &unk_1E85DDE40;
  block[4] = self;
  v15 = formatCopy;
  v16 = clientCopy;
  v12 = clientCopy;
  v13 = formatCopy;
  dispatch_async(internalQueue, block);
}

void __109__STLocalDynamicActivityAttributionManager_setAttributionStringWithFormat_maskingClientAuditToken_forClient___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 72);
  v17 = *(a1 + 56);
  v18 = v4;
  v5 = v1;
  v6 = v3;
  if (v2)
  {
    if ([v5 containsString:@"%@"])
    {
      *buf = 0u;
      v16 = 0u;
      if (v6)
      {
        [v6 auditToken];
      }

      *v19 = *buf;
      v20 = v16;
      v7 = BSExecutablePathForAuditToken();
      if (v7)
      {
        *v19 = v17;
        v20 = v18;
        v8 = BSExecutablePathForAuditToken();
        if (v5)
        {
          *v19 = *buf;
          v20 = v16;
          v14[0] = v17;
          v14[1] = v18;
          v9 = [STDynamicActivityAttribution attributionForClientAuditToken:v19 maskingClientAuditToken:v14 clientExecutablePath:v7 maskingClientExecutablePath:v8 stringWithFormat:v5];
        }

        else
        {
          v9 = 0;
        }

        if (STSystemStatusIsInternalLoggingEnabled_onceToken != -1)
        {
          dispatch_once(&STSystemStatusIsInternalLoggingEnabled_onceToken, &__block_literal_global_56);
        }

        if (STSystemStatusIsInternalLoggingEnabled___internalLoggingEnabled == 1)
        {
          v11 = STSystemStatusLogDynamicAttribution();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *v19 = 138412290;
            *&v19[4] = v9;
            _os_log_impl(&dword_1DA9C2000, v11, OS_LOG_TYPE_DEFAULT, "New dynamic attribution: %@", v19, 0xCu);
          }
        }

        v12 = [v7 lastPathComponent];
        [(STLocalDynamicActivityAttributionManager *)v2 _updateAttributionMapWithAttribution:v9 clientID:v12];
      }

      else
      {
        v9 = STSystemStatusLogDynamicAttribution();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = BSProcessDescriptionForAuditToken();
          *v19 = 138412290;
          *&v19[4] = v10;
          _os_log_error_impl(&dword_1DA9C2000, v9, OS_LOG_TYPE_ERROR, "setAttributionStringWithFormat:maskingClientAuditToken:forClient: unable to get executable path from client audit token: %@", v19, 0xCu);
        }
      }
    }

    else
    {
      v7 = STSystemStatusLogDynamicAttribution();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1DA9C2000, v7, OS_LOG_TYPE_ERROR, "Attribution string with format did not include a wild card for the app name. Please include a %%@.", buf, 2u);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setAttributionWebsiteString:(id)string maskingClientAuditToken:(id *)token forClient:(id)client
{
  stringCopy = string;
  clientCopy = client;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v11 = *&token->var0[4];
  v17 = *token->var0;
  v18 = v11;
  block[2] = __106__STLocalDynamicActivityAttributionManager_setAttributionWebsiteString_maskingClientAuditToken_forClient___block_invoke;
  block[3] = &unk_1E85DDE40;
  block[4] = self;
  v15 = stringCopy;
  v16 = clientCopy;
  v12 = clientCopy;
  v13 = stringCopy;
  dispatch_async(internalQueue, block);
}

void __106__STLocalDynamicActivityAttributionManager_setAttributionWebsiteString_maskingClientAuditToken_forClient___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 72);
  v18 = *(a1 + 56);
  v19 = v4;
  v5 = v1;
  v6 = v3;
  v7 = v6;
  if (v2)
  {
    v16 = 0u;
    v17 = 0u;
    if (v6)
    {
      [v6 auditToken];
    }

    *buf = v16;
    v21 = v17;
    v8 = BSExecutablePathForAuditToken();
    if (v8)
    {
      *buf = v18;
      v21 = v19;
      v9 = BSExecutablePathForAuditToken();
      if (v5)
      {
        *buf = v16;
        v21 = v17;
        v15[0] = v18;
        v15[1] = v19;
        v10 = [STDynamicActivityAttribution attributionForClientAuditToken:buf maskingClientAuditToken:v15 clientExecutablePath:v8 maskingClientExecutablePath:v9 website:v5];
      }

      else
      {
        v10 = 0;
      }

      if (STSystemStatusIsInternalLoggingEnabled_onceToken != -1)
      {
        dispatch_once(&STSystemStatusIsInternalLoggingEnabled_onceToken, &__block_literal_global_56);
      }

      if (STSystemStatusIsInternalLoggingEnabled___internalLoggingEnabled == 1)
      {
        v12 = STSystemStatusLogDynamicAttribution();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v10;
          _os_log_impl(&dword_1DA9C2000, v12, OS_LOG_TYPE_DEFAULT, "New dynamic attribution: %@", buf, 0xCu);
        }
      }

      v13 = [v8 lastPathComponent];
      [(STLocalDynamicActivityAttributionManager *)v2 _updateAttributionMapWithAttribution:v10 clientID:v13];
    }

    else
    {
      v10 = STSystemStatusLogDynamicAttribution();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = BSProcessDescriptionForAuditToken();
        *buf = 138412290;
        *&buf[4] = v11;
        _os_log_error_impl(&dword_1DA9C2000, v10, OS_LOG_TYPE_ERROR, "setAttributionWebsiteString:maskingClientAuditToken:forClient: unable to get executable path from client audit token: %@", buf, 0xCu);
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)subscribeToUpdates:(id)updates
{
  updatesCopy = updates;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__STLocalDynamicActivityAttributionManager_subscribeToUpdates___block_invoke;
  v7[3] = &unk_1E85DDD00;
  v7[4] = self;
  v8 = updatesCopy;
  v6 = updatesCopy;
  dispatch_async(internalQueue, v7);
}

void __63__STLocalDynamicActivityAttributionManager_subscribeToUpdates___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) addObject:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 24) allValues];
  if ([v2 count])
  {
    [*(a1 + 40) currentAttributionsDidChange:v2];
  }
}

- (void)unsubscribeFromUpdates:(id)updates
{
  updatesCopy = updates;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__STLocalDynamicActivityAttributionManager_unsubscribeFromUpdates___block_invoke;
  v7[3] = &unk_1E85DDD00;
  v7[4] = self;
  v8 = updatesCopy;
  v6 = updatesCopy;
  dispatch_async(internalQueue, v7);
}

void __67__STLocalDynamicActivityAttributionManager_unsubscribeFromUpdates___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v2 = [*(*(a1 + 32) + 24) copy];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__STLocalDynamicActivityAttributionManager_unsubscribeFromUpdates___block_invoke_2;
  v15[3] = &unk_1E85DDE68;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v16 = v3;
  v17 = v4;
  v18 = &v19;
  [v2 enumerateKeysAndObjectsUsingBlock:v15];

  [*(*(a1 + 32) + 32) removeObject:*(a1 + 40)];
  if (*(v20 + 24) == 1 && [*(*(a1 + 32) + 32) count])
  {
    v5 = [*(*(a1 + 32) + 24) allValues];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = *(*(a1 + 32) + 32);
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v23 count:16];
    if (v7)
    {
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v9++) currentAttributionsDidChange:{v5, v11}];
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v11 objects:v23 count:16];
      }

      while (v7);
    }
  }

  _Block_object_dispose(&v19, 8);
  v10 = *MEMORY[0x1E69E9840];
}

void __67__STLocalDynamicActivityAttributionManager_unsubscribeFromUpdates___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    [v6 clientAuditToken];
  }

  v8 = BSVersionedPIDForAuditToken();
  v9 = a1[4];
  if (v9)
  {
    [v9 auditToken];
  }

  if (v8 == BSVersionedPIDForAuditToken())
  {
    [*(a1[5] + 24) removeObjectForKey:v5];
    *(*(a1[6] + 8) + 24) = 1;
  }
}

- (void)_updateAttributionMapWithAttribution:(void *)attribution clientID:
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  attributionCopy = attribution;
  v7 = *(self + 24);
  if (v5)
  {
    [v7 setObject:v5 forKey:attributionCopy];
  }

  else
  {
    [v7 removeObjectForKey:attributionCopy];
  }

  if ([*(self + 32) count])
  {
    allValues = [*(self + 24) allValues];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = *(self + 32);
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v15 + 1) + 8 * v13++) currentAttributionsDidChange:{allValues, v15}];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end