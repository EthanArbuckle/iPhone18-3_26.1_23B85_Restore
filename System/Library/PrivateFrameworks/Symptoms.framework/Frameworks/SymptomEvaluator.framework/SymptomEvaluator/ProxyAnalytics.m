@interface ProxyAnalytics
- (void)dealloc;
- (void)donateBiomeEventForEdgeSelectionWithPrefix:(id)a3 interfaceType:(id)a4 radioType:(id)a5 radioBand:(id)a6 latitude:(double)a7 longitude:(double)a8;
- (void)performAppEndpointTrackingPeriodicTasks;
- (void)performAppExperiencePeriodicTasks;
- (void)performAppPeriodicTasks;
- (void)performAppTrackingPeriodicTasks;
- (void)performPersistentStoreHealthCheck;
@end

@implementation ProxyAnalytics

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = ProxyAnalytics;
  [(ProxyAnalytics *)&v3 dealloc];
}

void __51__ProxyAnalytics_trainModelAndScore_lastScoreDate___block_invoke(uint64_t a1)
{
  v2 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_ERROR, "ProxyAnalytics's Interruption Handler called", v8, 2u);
  }

  +[NetworkAnalyticsModel purgeAllJournalRecords];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [v4 delegate];
      [v7 proxyAnalyticsTrainAndScoreInterrupted];
    }
  }
}

void __51__ProxyAnalytics_trainModelAndScore_lastScoreDate___block_invoke_76(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained connection];
    [v8 setInterruptionHandler:0];
    v9 = [v7 delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [v7 delegate];
      [v11 proxyAnalyticsTrainAndScoreComplete:v12 error:v5];
    }

    [v8 invalidate];
  }
}

- (void)performAppPeriodicTasks
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.symptomsd.helper" options:4096];
  [(ProxyAnalytics *)self setConnection:v3];

  if (self->_connection)
  {
    v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28480F890];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v4];

    objc_initWeak(&location, self);
    [(NSXPCConnection *)self->_connection setInterruptionHandler:&__block_literal_global_19];
    [(NSXPCConnection *)self->_connection resume];
    v5 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    if (v5)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __41__ProxyAnalytics_performAppPeriodicTasks__block_invoke_2;
      v8[3] = &unk_27898CE90;
      objc_copyWeak(&v9, &location);
      [v5 performAppPeriodicTasksWithReply:v8];
      objc_destroyWeak(&v9);
    }

    else
    {
      v6 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "performAppPeriodicTasks: remoteObjectProxy returned nil", v7, 2u);
      }
    }

    objc_destroyWeak(&location);
  }
}

void __41__ProxyAnalytics_performAppPeriodicTasks__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained connection];
    [v8 setInterruptionHandler:0];
    v9 = [v7 delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [v7 delegate];
      [v11 performAppPeriodicTasksComplete:v12 error:v5];
    }

    [v8 invalidate];
  }
}

- (void)donateBiomeEventForEdgeSelectionWithPrefix:(id)a3 interfaceType:(id)a4 radioType:(id)a5 radioBand:(id)a6 latitude:(double)a7 longitude:(double)a8
{
  v31 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.symptomsd.helper" options:4096];
  v19 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v18;
    _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "GeoIP: Creating new %@", buf, 0xCu);
  }

  if (v18)
  {
    v20 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28480F890];
    [v18 setRemoteObjectInterface:v20];

    objc_initWeak(&location, self);
    [v18 setInterruptionHandler:&__block_literal_global_83];
    v21 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v18;
      _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "GeoIP: Activating %@", buf, 0xCu);
    }

    [v18 activate];
    v22 = [v18 remoteObjectProxy];
    if (v22)
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __114__ProxyAnalytics_donateBiomeEventForEdgeSelectionWithPrefix_interfaceType_radioType_radioBand_latitude_longitude___block_invoke_84;
      v25[3] = &unk_27898CEB8;
      objc_copyWeak(&v27, &location);
      v26 = v18;
      [v22 donateBiomeEventForEdgeSelectionWithPrefix:v14 interfaceType:v15 radioType:v16 radioBand:v17 latitude:v25 longitude:a7 reply:a8];

      objc_destroyWeak(&v27);
    }

    else
    {
      v23 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v30 = v18;
        _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_ERROR, "GeoIP: donateBiomeEventForEdgeSelectionWithPrefix: remoteObjectProxy returned nil for %@", buf, 0xCu);
      }
    }

    objc_destroyWeak(&location);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __114__ProxyAnalytics_donateBiomeEventForEdgeSelectionWithPrefix_interfaceType_radioType_radioBand_latitude_longitude___block_invoke_84(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) setInterruptionHandler:0];
  v8 = [WeakRetained delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [WeakRetained delegate];
    [v10 donateBiomeEventForEdgeSelectionWithPrefixComplete:v5 error:v6];
  }

  v11 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v14 = 138412290;
    v15 = v12;
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "GeoIP: Invalidating %@", &v14, 0xCu);
  }

  [*(a1 + 32) invalidate];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)performAppTrackingPeriodicTasks
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.symptomsd.helper" options:4096];
  [(ProxyAnalytics *)self setConnection:v3];

  if (self->_connection)
  {
    v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28480F890];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v4];

    objc_initWeak(&location, self);
    [(NSXPCConnection *)self->_connection setInterruptionHandler:&__block_literal_global_88];
    [(NSXPCConnection *)self->_connection resume];
    v5 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    if (v5)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __49__ProxyAnalytics_performAppTrackingPeriodicTasks__block_invoke_2;
      v8[3] = &unk_27898CE90;
      objc_copyWeak(&v9, &location);
      [v5 performAppTrackingPeriodicTasksWithReply:v8];
      objc_destroyWeak(&v9);
    }

    else
    {
      v6 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "performAppTrackingPeriodicTasks: remoteObjectProxy returned nil", v7, 2u);
      }
    }

    objc_destroyWeak(&location);
  }
}

void __49__ProxyAnalytics_performAppTrackingPeriodicTasks__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained connection];
    [v8 setInterruptionHandler:0];
    v9 = [v7 delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [v7 delegate];
      [v11 performAppTrackingPeriodicTasksComplete:v12 error:v5];
    }

    [v8 invalidate];
  }
}

- (void)performAppEndpointTrackingPeriodicTasks
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.symptomsd.helper" options:4096];
  [(ProxyAnalytics *)self setConnection:v3];

  if (self->_connection)
  {
    v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28480F890];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v4];

    objc_initWeak(&location, self);
    [(NSXPCConnection *)self->_connection setInterruptionHandler:&__block_literal_global_92];
    [(NSXPCConnection *)self->_connection resume];
    v5 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    if (v5)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __57__ProxyAnalytics_performAppEndpointTrackingPeriodicTasks__block_invoke_2;
      v8[3] = &unk_27898CE90;
      objc_copyWeak(&v9, &location);
      [v5 performAppEndpointTrackingPeriodicTasksWithReply:v8];
      objc_destroyWeak(&v9);
    }

    else
    {
      v6 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "performAppEndpointTrackingPeriodicTasks: remoteObjectProxy returned nil", v7, 2u);
      }
    }

    objc_destroyWeak(&location);
  }
}

void __57__ProxyAnalytics_performAppEndpointTrackingPeriodicTasks__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained connection];
    [v8 setInterruptionHandler:0];
    v9 = [v7 delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [v7 delegate];
      [v11 performAppEndpointTrackingPeriodicTasksComplete:v12 error:v5];
    }

    [v8 invalidate];
  }
}

- (void)performAppExperiencePeriodicTasks
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.symptomsd.helper" options:4096];
  [(ProxyAnalytics *)self setConnection:v3];

  if (self->_connection)
  {
    v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28480F890];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v4];

    objc_initWeak(&location, self);
    [(NSXPCConnection *)self->_connection setInterruptionHandler:&__block_literal_global_96];
    [(NSXPCConnection *)self->_connection resume];
    v5 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    if (v5)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __51__ProxyAnalytics_performAppExperiencePeriodicTasks__block_invoke_2;
      v8[3] = &unk_27898CE90;
      objc_copyWeak(&v9, &location);
      [v5 performAppExperiencePeriodicTasksWithReply:v8];
      objc_destroyWeak(&v9);
    }

    else
    {
      v6 = appExperienceLogHandle;
      if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "performAppExperiencePeriodicTasks: remoteObjectProxy returned nil", v7, 2u);
      }
    }

    objc_destroyWeak(&location);
  }
}

void __51__ProxyAnalytics_performAppExperiencePeriodicTasks__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained connection];
    [v8 setInterruptionHandler:0];
    v9 = [v7 delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [v7 delegate];
      [v11 performAppExperiencePeriodicTasksComplete:v12 error:v5];
    }

    [v8 invalidate];
  }
}

- (void)performPersistentStoreHealthCheck
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.symptomsd.helper" options:4096];
  [(ProxyAnalytics *)self setConnection:v3];

  if (self->_connection)
  {
    objc_initWeak(&location, self);
    v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28480F890];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v4];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __51__ProxyAnalytics_performPersistentStoreHealthCheck__block_invoke;
    v10[3] = &unk_27898C3B0;
    objc_copyWeak(&v11, &location);
    [(NSXPCConnection *)self->_connection setInterruptionHandler:v10];
    [(NSXPCConnection *)self->_connection resume];
    v5 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    if (v5)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __51__ProxyAnalytics_performPersistentStoreHealthCheck__block_invoke_104;
      v8[3] = &unk_27898CE90;
      objc_copyWeak(&v9, &location);
      [v5 performPersistentStoreHealthCheckWithReply:v8];
      objc_destroyWeak(&v9);
    }

    else
    {
      v6 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "performPersistentStoreHealthCheck: remoteObjectProxy returned nil", v7, 2u);
      }
    }

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __51__ProxyAnalytics_performPersistentStoreHealthCheck__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_ERROR, "WARNING: ProxyAnalytics's Interruption Handler called. Integrity check crashed?", v7, 2u);
  }

  if (WeakRetained)
  {
    v3 = [WeakRetained delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [WeakRetained delegate];
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:259 userInfo:0];
      [v5 performPersistentStoreHealthCheckComplete:&unk_2847EF520 error:v6];
    }
  }
}

void __51__ProxyAnalytics_performPersistentStoreHealthCheck__block_invoke_104(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained connection];
    [v9 setInterruptionHandler:0];
    v10 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138412546;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "performPersistentStoreHealthCheckWithReply:%@ err:%@", &v15, 0x16u);
    }

    v11 = [v8 delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [v8 delegate];
      [v13 performPersistentStoreHealthCheckComplete:v5 error:v6];
    }

    [v9 invalidate];
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end