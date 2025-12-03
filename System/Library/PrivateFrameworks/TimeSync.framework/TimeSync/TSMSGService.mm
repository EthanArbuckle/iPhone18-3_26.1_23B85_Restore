@interface TSMSGService
+ (id)sharedMSGService;
- (BOOL)startExternalSync:(id *)sync error:(id *)error;
- (TSMSGService)init;
- (void)daemonClientRefresh;
- (void)dispatchMSGNotification:(unsigned __int16)notification args:(const unint64_t *)args numArgs:(unsigned int)numArgs;
@end

@implementation TSMSGService

+ (id)sharedMSGService
{
  if (sharedMSGService_onceToken != -1)
  {
    +[TSMSGService sharedMSGService];
  }

  v3 = _sharedMSGService;

  return v3;
}

void __32__TSMSGService_sharedMSGService__block_invoke()
{
  if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
  {
    v2 = +[TSXDaemonServiceClient sharedDaemonServiceClient];
    if ([v2 isMSGServiceAvailable])
    {
      v0 = objc_alloc_init(TSMSGService);
      v1 = _sharedMSGService;
      _sharedMSGService = v0;
    }
  }
}

- (TSMSGService)init
{
  v15.receiver = self;
  v15.super_class = TSMSGService;
  v2 = [(TSMSGService *)&v15 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_extSyncSessionsLock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    activeExtSyncSessionsByTriggerId = v3->_activeExtSyncSessionsByTriggerId;
    v3->_activeExtSyncSessionsByTriggerId = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    activeClockSessionsBySyncId = v3->_activeClockSessionsBySyncId;
    v3->_activeClockSessionsBySyncId = dictionary2;

    v8 = MEMORY[0x277CCACA8];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 stringWithFormat:@"com.apple.TimeSync.%@", v10];

    v12 = dispatch_queue_create([v11 UTF8String], 0);
    msgDispatchQueue = v3->_msgDispatchQueue;
    v3->_msgDispatchQueue = v12;
  }

  return v3;
}

- (void)daemonClientRefresh
{
  objc_initWeak(&location, self);
  msgDispatchQueue = self->_msgDispatchQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__TSMSGService_daemonClientRefresh__block_invoke;
  v4[3] = &unk_279DBD6F0;
  objc_copyWeak(&v5, &location);
  dispatch_async(msgDispatchQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __35__TSMSGService_daemonClientRefresh__block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = +[TSXDaemonServiceClient sharedDaemonServiceClient];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 8);
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v5 = *&v4[2]._os_unfair_lock_opaque;
    v6 = [v5 countByEnumeratingWithState:&v32 objects:v48 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v33;
      v9 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v33 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = [*&v4[2]._os_unfair_lock_opaque objectForKeyedSubscript:*(*(&v32 + 1) + 8 * i)];
          v12 = v11;
          v47 = 0;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          if (v11)
          {
            [v11 TSMSGExternalSyncConfigValue];
          }

          if ([v2 startMSGExternalSync:&v41])
          {
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              __35__TSMSGService_daemonClientRefresh__block_invoke_cold_1(v37, &v41 + 1, v38);
            }
          }

          else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v40[0] = DWORD1(v41);
            _os_log_impl(&dword_26F080000, v9, OS_LOG_TYPE_DEFAULT, "Restarted MSG external sync session for triggerId: %u\n", buf, 8u);
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v32 objects:v48 count:16];
      }

      while (v7);
    }

    os_unfair_lock_unlock(v4 + 8);
    os_unfair_lock_lock(v4 + 9);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = *&v4[4]._os_unfair_lock_opaque;
    v13 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v13)
    {
      v15 = v13;
      v16 = *v29;
      v17 = MEMORY[0x277D86220];
      *&v14 = 67109120;
      v25 = v14;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v19 = [*&v4[4]._os_unfair_lock_opaque objectForKeyedSubscript:{*(*(&v28 + 1) + 8 * j), v25}];
          v20 = [v19 syncId];
          v21 = [v19 refCnt];
          v22 = [v19 nominalSyncDuration];
          v27 = 0;
          if ([v2 restoreMSGClockSession:v20 withNominalSyncDuration:v22 refCnt:v23 error:{v21, &v27}] == -1)
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              __35__TSMSGService_daemonClientRefresh__block_invoke_cold_2(buf, v20, v40);
            }
          }

          else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *&v41 = __PAIR64__(v20, v25);
            _os_log_impl(&dword_26F080000, v17, OS_LOG_TYPE_DEFAULT, "Restarted MSG clock session for syncId: %u\n", &v41, 8u);
          }
        }

        v15 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v15);
    }

    os_unfair_lock_unlock(v4 + 9);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)startExternalSync:(id *)sync error:(id *)error
{
  if (_os_feature_enabled_impl())
  {
    v7 = +[TSXDaemonServiceClient sharedDaemonServiceClient];
    os_unfair_lock_lock(&self->_extSyncSessionsLock);
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:sync->var0.var1];
    v9 = [(NSMutableDictionary *)self->_activeExtSyncSessionsByTriggerId objectForKey:v8];

    if (v9)
    {
      v10 = -536870203;
    }

    else
    {
      v10 = [v7 startMSGExternalSync:sync];
      if (!v10)
      {
        v12 = *&sync->var2;
        v17[4] = *&sync->var0.var7;
        v17[5] = v12;
        var4 = sync->var4;
        v13 = *&sync->var0.var2.var1;
        v17[0] = *&sync->var0.var0;
        v17[1] = v13;
        v14 = *&sync->var0.var5;
        v17[2] = *&sync->var0.var3.var1;
        v17[3] = v14;
        v15 = [MEMORY[0x277CCAE60] valuewithTSMSGExternalSyncConfig:v17];
        [(NSMutableDictionary *)self->_activeExtSyncSessionsByTriggerId setObject:v15 forKeyedSubscript:v8];
      }
    }

    os_unfair_lock_unlock(&self->_extSyncSessionsLock);
    v11 = v10 == 0;
    if (error && v10)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"TSErrorDomain" code:v10 userInfo:0];
    }
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"TSErrorDomain" code:-536870201 userInfo:0];
    *error = v11 = 0;
  }

  else
  {
    return 0;
  }

  return v11;
}

- (void)dispatchMSGNotification:(unsigned __int16)notification args:(const unint64_t *)args numArgs:(unsigned int)numArgs
{
  notificationCopy = notification;
  v39 = *MEMORY[0x277D85DE8];
  if (notification <= 3u)
  {
    v8 = TSMSGNotifyTypeToString_TSMSGNotifyTypeStrings[notification];
  }

  else
  {
    v8 = @"Unknown";
  }

  v9 = [MEMORY[0x277CCAB68] stringWithFormat:@"msgType: %@, args: [", v8];
  if (args && numArgs)
  {
    v10 = 0;
    do
    {
      [v9 appendFormat:@"%llu", args[v10]];
      if (v10 < numArgs - 1)
      {
        [v9 appendString:{@", "}];
      }

      ++v10;
    }

    while (numArgs != v10);
  }

  [v9 appendString:@"]\n"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = [v9 UTF8String];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Received MSG notification: %s\n", buf, 0xCu);
  }

  if (notificationCopy <= 1)
  {
    if (notificationCopy)
    {
      if (notificationCopy == 1)
      {
        if (!args || numArgs != 2)
        {
          [TSMSGService dispatchMSGNotification:args:numArgs:];
          goto LABEL_41;
        }

        v11 = *args;
        v12 = args[1];
        os_unfair_lock_lock(&self->_extSyncSessionsLock);
        activeExtSyncSessionsByTriggerId = self->_activeExtSyncSessionsByTriggerId;
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11];
        v15 = [(NSMutableDictionary *)activeExtSyncSessionsByTriggerId objectForKeyedSubscript:v14];

        os_unfair_lock_unlock(&self->_extSyncSessionsLock);
        v38 = 0;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        *buf = 0u;
        v33 = 0u;
        if (!v15)
        {
          goto LABEL_27;
        }

        [v15 TSMSGExternalSyncConfigValue];
        v16 = v37;
        if (!v37)
        {
          goto LABEL_27;
        }

LABEL_26:
        v16(v11, v12 != 0);
LABEL_27:

        goto LABEL_41;
      }

      goto LABEL_28;
    }

    if (!args || numArgs != 2)
    {
      [TSMSGService dispatchMSGNotification:args:numArgs:];
      goto LABEL_41;
    }

    v19 = *args;
    v20 = args[1];
    os_unfair_lock_lock(&self->_extSyncSessionsLock);
    v21 = self->_activeExtSyncSessionsByTriggerId;
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v19];
    v23 = [(NSMutableDictionary *)v21 objectForKeyedSubscript:v22];

    os_unfair_lock_unlock(&self->_extSyncSessionsLock);
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    *buf = 0u;
    v33 = 0u;
    if (v23)
    {
      [v23 TSMSGExternalSyncConfigValue];
      if (*(&v36 + 1))
      {
        (*(&v36 + 1))(v19, v20);
      }
    }

LABEL_40:

    goto LABEL_41;
  }

  if (notificationCopy == 2)
  {
    if (!args || numArgs != 2)
    {
      [TSMSGService dispatchMSGNotification:args:numArgs:];
      goto LABEL_41;
    }

    v24 = *args;
    v25 = *(args + 2);
    os_unfair_lock_lock(&self->_extSyncSessionsLock);
    v26 = self->_activeExtSyncSessionsByTriggerId;
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v24];
    v23 = [(NSMutableDictionary *)v26 objectForKeyedSubscript:v27];

    v28 = self->_activeExtSyncSessionsByTriggerId;
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v24];
    [(NSMutableDictionary *)v28 removeObjectForKey:v29];

    os_unfair_lock_unlock(&self->_extSyncSessionsLock);
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    *buf = 0u;
    v33 = 0u;
    if (v23)
    {
      [v23 TSMSGExternalSyncConfigValue];
      if (*(&v37 + 1))
      {
        (*(&v37 + 1))(v24, v25);
      }
    }

    goto LABEL_40;
  }

  if (notificationCopy == 3)
  {
    if (!args || numArgs != 2)
    {
      [TSMSGService dispatchMSGNotification:args:numArgs:];
      goto LABEL_41;
    }

    v11 = *args;
    v12 = args[1];
    os_unfair_lock_lock(&self->_extSyncSessionsLock);
    v17 = self->_activeExtSyncSessionsByTriggerId;
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11];
    v15 = [(NSMutableDictionary *)v17 objectForKeyedSubscript:v18];

    os_unfair_lock_unlock(&self->_extSyncSessionsLock);
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    *buf = 0u;
    v33 = 0u;
    if (!v15)
    {
      goto LABEL_27;
    }

    [v15 TSMSGExternalSyncConfigValue];
    v16 = v38;
    if (!v38)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_28:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [TSMSGService dispatchMSGNotification:notificationCopy args:? numArgs:?];
  }

LABEL_41:

  v30 = *MEMORY[0x277D85DE8];
}

void __35__TSMSGService_daemonClientRefresh__block_invoke_cold_1(uint8_t *buf, int *a2, _DWORD *a3)
{
  v3 = *a2;
  *buf = 67109120;
  *a3 = v3;
  _os_log_error_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "FAILED to restart MSG external sync session for triggerId: %u\n", buf, 8u);
}

void __35__TSMSGService_daemonClientRefresh__block_invoke_cold_2(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "FAILED to restart MSG clock session for syncId: %u\n", buf, 8u);
}

- (void)dispatchMSGNotification:args:numArgs:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)dispatchMSGNotification:args:numArgs:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)dispatchMSGNotification:args:numArgs:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)dispatchMSGNotification:args:numArgs:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)dispatchMSGNotification:(int)a1 args:numArgs:.cold.5(int a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unknown/Unsupported TSMSGNotifyType: %u", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}

@end