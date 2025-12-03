@interface NWActivityXPC
- (void)cancel;
- (void)dealloc;
- (void)retrieveMetricsForActivity:(unsigned __int8)activity[16] completion:(id)completion;
- (void)start;
@end

@implementation NWActivityXPC

- (void)start
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(NWActivityXPC *)self setPendingCompletionHandlers:v3];

  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.symptom_analytics" options:4096];
  [(NWActivityXPC *)self setConnection:v4];

  connection = [(NWActivityXPC *)self connection];

  if (connection)
  {
    v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28478F8C8];
    connection2 = [(NWActivityXPC *)self connection];
    [connection2 setRemoteObjectInterface:v6];

    objc_initWeak(&location, self);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __22__NWActivityXPC_start__block_invoke;
    v16[3] = &unk_278987530;
    objc_copyWeak(&v17, &location);
    connection3 = [(NWActivityXPC *)self connection];
    [connection3 setInvalidationHandler:v16];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __22__NWActivityXPC_start__block_invoke_75;
    v14[3] = &unk_278987530;
    objc_copyWeak(&v15, &location);
    connection4 = [(NWActivityXPC *)self connection];
    [connection4 setInterruptionHandler:v14];

    connection5 = [(NWActivityXPC *)self connection];
    [connection5 resume];

    v11 = objectanalyticsHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      connection6 = [(NWActivityXPC *)self connection];
      *buf = 136315394;
      v20 = "[NWActivityXPC start]";
      v21 = 2112;
      v22 = connection6;
      _os_log_impl(&dword_2324AD000, v11, OS_LOG_TYPE_INFO, "%s started %@", buf, 0x16u);
    }

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __22__NWActivityXPC_start__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objectanalyticsHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    v9 = "[NWActivityXPC start]_block_invoke";
    v10 = 2112;
    v11 = @"com.apple.symptom_analytics";
    _os_log_impl(&dword_2324AD000, v2, OS_LOG_TYPE_ERROR, "%s invalidation handler called, potentially denied lookup for %@", &v8, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objectanalyticsHandle();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (WeakRetained)
  {
    if (v5)
    {
      v6 = [WeakRetained connection];
      v8 = 136315394;
      v9 = "[NWActivityXPC start]_block_invoke";
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_2324AD000, v4, OS_LOG_TYPE_ERROR, "%s invalidated: %@", &v8, 0x16u);
    }

    [WeakRetained cancel];
  }

  else
  {
    if (v5)
    {
      v8 = 136315138;
      v9 = "[NWActivityXPC start]_block_invoke";
      _os_log_impl(&dword_2324AD000, v4, OS_LOG_TYPE_ERROR, "%s no longer exists, returning", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __22__NWActivityXPC_start__block_invoke_75(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objectanalyticsHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315138;
    v8 = "[NWActivityXPC start]_block_invoke";
    _os_log_impl(&dword_2324AD000, v2, OS_LOG_TYPE_ERROR, "%s interruption handler called", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cancel];
  }

  else
  {
    v5 = objectanalyticsHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[NWActivityXPC start]_block_invoke";
      _os_log_impl(&dword_2324AD000, v5, OS_LOG_TYPE_ERROR, "%s no longer exists, returning", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objectanalyticsHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v7 = "[NWActivityXPC dealloc]";
    v8 = 2112;
    selfCopy = self;
    v10 = 2048;
    selfCopy2 = self;
    _os_log_impl(&dword_2324AD000, v3, OS_LOG_TYPE_DEFAULT, "%s %@ dealloc %p", buf, 0x20u);
  }

  [(NWActivityXPC *)self cancel];
  v5.receiver = self;
  v5.super_class = NWActivityXPC;
  [(NWActivityXPC *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)cancel
{
  v27 = *MEMORY[0x277D85DE8];
  pendingCompletionHandlers = [(NWActivityXPC *)self pendingCompletionHandlers];

  if (pendingCompletionHandlers)
  {
    pendingCompletionHandlers2 = [(NWActivityXPC *)self pendingCompletionHandlers];
    v5 = [pendingCompletionHandlers2 count];

    if (v5)
    {
      *&v6 = 136315394;
      v22 = v6;
      do
      {
        pendingCompletionHandlers3 = [(NWActivityXPC *)self pendingCompletionHandlers];
        firstObject = [pendingCompletionHandlers3 firstObject];

        v9 = objectanalyticsHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = MEMORY[0x2383849E0](firstObject);
          *buf = v22;
          v24 = "[NWActivityXPC cancel]";
          v25 = 2048;
          selfCopy = v10;
          _os_log_impl(&dword_2324AD000, v9, OS_LOG_TYPE_DEBUG, "%s Removing and calling pending completion handler %p", buf, 0x16u);
        }

        pendingCompletionHandlers4 = [(NWActivityXPC *)self pendingCompletionHandlers];
        v12 = MEMORY[0x2383849E0](firstObject);
        [pendingCompletionHandlers4 removeObject:v12];

        firstObject[2](firstObject, 0, 54);
        pendingCompletionHandlers5 = [(NWActivityXPC *)self pendingCompletionHandlers];
        v14 = [pendingCompletionHandlers5 count];
      }

      while (v14);
    }

    pendingCompletionHandlers6 = [(NWActivityXPC *)self pendingCompletionHandlers];
    [pendingCompletionHandlers6 removeAllObjects];

    [(NWActivityXPC *)self setPendingCompletionHandlers:0];
  }

  connection = [(NWActivityXPC *)self connection];

  if (connection)
  {
    connection2 = [(NWActivityXPC *)self connection];
    [connection2 setInvalidationHandler:0];

    connection3 = [(NWActivityXPC *)self connection];
    [connection3 setInterruptionHandler:0];

    connection4 = [(NWActivityXPC *)self connection];
    [connection4 invalidate];

    [(NWActivityXPC *)self setConnection:0];
  }

  v20 = objectanalyticsHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v24 = "[NWActivityXPC cancel]";
    v25 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_2324AD000, v20, OS_LOG_TYPE_INFO, "%s %@ cancelled", buf, 0x16u);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)retrieveMetricsForActivity:(unsigned __int8)activity[16] completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = objectanalyticsHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "[NWActivityXPC retrieveMetricsForActivity:completion:]";
    *&buf[12] = 1040;
    *&buf[14] = 16;
    *&buf[18] = 2096;
    *&buf[20] = activity;
    _os_log_impl(&dword_2324AD000, v7, OS_LOG_TYPE_INFO, "%s Retrieving metrics for %{uuid_t}.16P", buf, 0x1Cu);
  }

  if (completionCopy)
  {
    if (uuid_is_null(activity))
    {
      v8 = objectanalyticsHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "[NWActivityXPC retrieveMetricsForActivity:completion:]";
        _os_log_impl(&dword_2324AD000, v8, OS_LOG_TYPE_ERROR, "%s UUID is required", buf, 0xCu);
      }

      completionCopy[2](completionCopy, 0, 22);
    }

    else
    {
      connection = [(NWActivityXPC *)self connection];
      v11 = connection == 0;

      if (v11)
      {
        v22 = objectanalyticsHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "[NWActivityXPC retrieveMetricsForActivity:completion:]";
          *&buf[12] = 1040;
          *&buf[14] = 16;
          *&buf[18] = 2096;
          *&buf[20] = activity;
          _os_log_impl(&dword_2324AD000, v22, OS_LOG_TYPE_ERROR, "%s %{uuid_t}.16P: connection lost, retrying", buf, 0x1Cu);
        }

        [(NWActivityXPC *)self cancel];
        [(NWActivityXPC *)self start];
        completionCopy[2](completionCopy, 0, 22);
      }

      else
      {
        connection2 = [(NWActivityXPC *)self connection];
        remoteObjectProxy = [connection2 remoteObjectProxy];

        v14 = objectanalyticsHandle();
        v15 = v14;
        if (remoteObjectProxy)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            *&buf[4] = "[NWActivityXPC retrieveMetricsForActivity:completion:]";
            *&buf[12] = 1040;
            *&buf[14] = 16;
            *&buf[18] = 2096;
            *&buf[20] = activity;
            _os_log_impl(&dword_2324AD000, v15, OS_LOG_TYPE_DEBUG, "%s Querying symptoms for activity %{uuid_t}.16P", buf, 0x1Cu);
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          *&buf[24] = __Block_byref_object_copy_;
          v33 = __Block_byref_object_dispose_;
          v34 = MEMORY[0x2383849E0](completionCopy);
          v16 = objectanalyticsHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v17 = MEMORY[0x2383849E0](*(*&buf[8] + 40));
            *v28 = 136315394;
            v29 = "[NWActivityXPC retrieveMetricsForActivity:completion:]";
            v30 = 2048;
            v31 = v17;
            _os_log_impl(&dword_2324AD000, v16, OS_LOG_TYPE_DEBUG, "%s Adding pending completion handler %p", v28, 0x16u);
          }

          pendingCompletionHandlers = [(NWActivityXPC *)self pendingCompletionHandlers];
          v19 = MEMORY[0x2383849E0](*(*&buf[8] + 40));
          [pendingCompletionHandlers addObject:v19];

          objc_initWeak(v28, self);
          v20 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:activity];
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __55__NWActivityXPC_retrieveMetricsForActivity_completion___block_invoke;
          v24[3] = &unk_278987580;
          v24[4] = self;
          v21 = v20;
          v25 = v21;
          objc_copyWeak(&v27, v28);
          v26 = buf;
          [remoteObjectProxy retrieveActivityMetrics:v21 reply:v24];
          objc_destroyWeak(&v27);

          objc_destroyWeak(v28);
          _Block_object_dispose(buf, 8);
        }

        else
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            *&buf[4] = "[NWActivityXPC retrieveMetricsForActivity:completion:]";
            _os_log_impl(&dword_2324AD000, v15, OS_LOG_TYPE_ERROR, "%s NWActivityXPC remoteObjectProxy returned nil", buf, 0xCu);
          }

          completionCopy[2](completionCopy, 0, 45);
        }
      }
    }
  }

  else
  {
    v9 = objectanalyticsHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "[NWActivityXPC retrieveMetricsForActivity:completion:]";
      *&buf[12] = 1040;
      *&buf[14] = 16;
      *&buf[18] = 2096;
      *&buf[20] = activity;
      _os_log_impl(&dword_2324AD000, v9, OS_LOG_TYPE_ERROR, "%s %{uuid_t}.16P: completion is required", buf, 0x1Cu);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __55__NWActivityXPC_retrieveMetricsForActivity_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v8 = [*(a1 + 32) qosClass];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__NWActivityXPC_retrieveMetricsForActivity_completion___block_invoke_2;
  block[3] = &unk_278987558;
  v14 = v5;
  v15 = v6;
  v16 = *(a1 + 40);
  v9 = v6;
  v10 = v5;
  objc_copyWeak(&v18, (a1 + 56));
  v17 = *(a1 + 48);
  v11 = v7;
  v12 = dispatch_block_create_with_qos_class(0, v8, 0, block);
  dispatch_async(v11, v12);

  objc_destroyWeak(&v18);
}

void __55__NWActivityXPC_retrieveMetricsForActivity_completion___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = objectanalyticsHandle();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      v6 = *(a1 + 48);
      v21 = 136315650;
      v22 = "[NWActivityXPC retrieveMetricsForActivity:completion:]_block_invoke_2";
      v23 = 2112;
      v24 = v6;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&dword_2324AD000, v5, OS_LOG_TYPE_ERROR, "%s Failed to retrieve metrics for %@: %@", &v21, 0x20u);
    }

    v8 = v2;
    v2 = 0;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v9 = [*(a1 + 32) count];
      v21 = 136315394;
      v22 = "[NWActivityXPC retrieveMetricsForActivity:completion:]_block_invoke";
      v23 = 2048;
      v24 = v9;
      _os_log_impl(&dword_2324AD000, v5, OS_LOG_TYPE_DEBUG, "%s Got reply with %lu metrics", &v21, 0x16u);
    }

    v8 = objectanalyticsHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 32);
      v21 = 136315394;
      v22 = "[NWActivityXPC retrieveMetricsForActivity:completion:]_block_invoke";
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_2324AD000, v8, OS_LOG_TYPE_DEBUG, "%s Reply: %@", &v21, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v12 = objectanalyticsHandle();
  v13 = v12;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = MEMORY[0x2383849E0](*(*(*(a1 + 56) + 8) + 40));
      v21 = 136315394;
      v22 = "[NWActivityXPC retrieveMetricsForActivity:completion:]_block_invoke";
      v23 = 2048;
      v24 = v14;
      _os_log_impl(&dword_2324AD000, v13, OS_LOG_TYPE_DEBUG, "%s Removing pending completion handler %p", &v21, 0x16u);
    }

    v15 = [WeakRetained pendingCompletionHandlers];
    v16 = MEMORY[0x2383849E0](*(*(*(a1 + 56) + 8) + 40));
    [v15 removeObject:v16];

    v17 = *(*(*(a1 + 56) + 8) + 40);
    v18 = *(a1 + 40);
    if (v18)
    {
      v19 = [v18 code];
    }

    else
    {
      v19 = 0;
    }

    (*(v17 + 16))(v17, v2, v19);
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315138;
      v22 = "[NWActivityXPC retrieveMetricsForActivity:completion:]_block_invoke";
      _os_log_impl(&dword_2324AD000, v13, OS_LOG_TYPE_ERROR, "%s no longer exists, completion has already been cleaned up", &v21, 0xCu);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end