@interface SymptomsCAObserver
+ (id)sharedInstance;
- (SymptomsCAObserver)init;
- (id)description;
- (void)addDelegate:(id)a3 forEvents:(id)a4 withQueue:(id)a5 completion:(id)a6;
- (void)dealloc;
- (void)observer:(id)a3 didEmitMessage:(id)a4;
- (void)removeDelegate:(id)a3 withQueue:(id)a4 completion:(id)a5;
- (void)updateAnalyticsEventObserverRegistrationOnQueueWithCompletion:(id)a3 completionQueue:(id)a4;
@end

@implementation SymptomsCAObserver

- (SymptomsCAObserver)init
{
  v11.receiver = self;
  v11.super_class = SymptomsCAObserver;
  v2 = [(SymptomsCAObserver *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    delegates = v2->_delegates;
    v2->_delegates = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    combinedEvents = v2->_combinedEvents;
    v2->_combinedEvents = v5;

    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v8 = dispatch_queue_create("com.apple.symptoms.analytics.observer.queue", v7);
    queue = v2->_queue;
    v2->_queue = v8;
  }

  return v2;
}

- (void)dealloc
{
  analyticsEventObserver = self->_analyticsEventObserver;
  self->_analyticsEventObserver = 0;

  v4 = [(SymptomsCAObserver *)self delegates];
  [v4 removeAllObjects];

  [(SymptomsCAObserver *)self setDelegates:0];
  v5.receiver = self;
  v5.super_class = SymptomsCAObserver;
  [(SymptomsCAObserver *)&v5 dealloc];
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<SymptomsCAObserver: observer %@, %lu delegates, %lu events>", self->_analyticsEventObserver, -[NSMutableSet count](self->_delegates, "count"), -[NSMutableSet count](self->_combinedEvents, "count")];

  return v2;
}

- (void)addDelegate:(id)a3 forEvents:(id)a4 withQueue:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10)
  {
    if (v11)
    {
      if (v12)
      {
        v14 = [(SymptomsCAObserver *)self queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __65__SymptomsCAObserver_addDelegate_forEvents_withQueue_completion___block_invoke;
        block[3] = &unk_27898C1A8;
        block[4] = self;
        v16 = v10;
        v17 = v12;
        v18 = v11;
        v19 = v13;
        dispatch_async(v14, block);
      }

      else
      {
        [SymptomsCAObserver addDelegate:forEvents:withQueue:completion:];
      }
    }

    else
    {
      [SymptomsCAObserver addDelegate:forEvents:withQueue:completion:];
    }
  }

  else
  {
    [SymptomsCAObserver addDelegate:forEvents:withQueue:completion:];
  }
}

void __65__SymptomsCAObserver_addDelegate_forEvents_withQueue_completion___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [*(a1 + 32) delegates];
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v3)
  {
    v4 = *v17;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v17 != v4)
      {
        objc_enumerationMutation(v2);
      }

      v6 = *(*(&v16 + 1) + 8 * v5);
      if ([v6 matchesDelegate:*(a1 + 40)])
      {
        break;
      }

      if (v3 == ++v5)
      {
        v3 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v3)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v7 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 40);
      *buf = 138412546;
      v21 = 0;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "Found current entry (%@) for delegate: %@", buf, 0x16u);
    }

    v9 = v6;

    if (v9)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_9:
  }

  v10 = objc_alloc_init(SymptomsCAObserverDelegateEntry);
  v11 = [*(a1 + 32) delegates];
  [v11 addObject:v10];

  v9 = v10;
LABEL_14:
  [(SymptomsCAObserverDelegateEntry *)v9 setDelegate:*(a1 + 40)];
  [(SymptomsCAObserverDelegateEntry *)v9 setQueue:*(a1 + 48)];
  v12 = [MEMORY[0x277CBEB58] setWithArray:*(a1 + 56)];
  [(SymptomsCAObserverDelegateEntry *)v9 setEvents:v12];

  v13 = metricsLogHandle;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [(SymptomsCAObserverDelegateEntry *)v9 events];
    *buf = 138412546;
    v21 = v9;
    v22 = 2112;
    v23 = v14;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_INFO, "Registered delegate %@ with events %@", buf, 0x16u);
  }

  [*(a1 + 32) updateAnalyticsEventObserverRegistrationOnQueueWithCompletion:*(a1 + 64) completionQueue:*(a1 + 48)];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)removeDelegate:(id)a3 withQueue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = [(SymptomsCAObserver *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __58__SymptomsCAObserver_removeDelegate_withQueue_completion___block_invoke;
    v12[3] = &unk_27898C1D0;
    v12[4] = self;
    v13 = v8;
    v15 = v10;
    v14 = v9;
    dispatch_async(v11, v12);
  }

  else
  {
    [SymptomsCAObserver addDelegate:forEvents:withQueue:completion:];
  }
}

void __58__SymptomsCAObserver_removeDelegate_withQueue_completion___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) delegates];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v3)
  {
    v4 = *v13;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        if ([v6 matchesDelegate:*(a1 + 40)])
        {
          v7 = metricsLogHandle;
          if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
          {
            v8 = *(a1 + 40);
            *buf = 138412546;
            v17 = 0;
            v18 = 2112;
            v19 = v8;
            _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "Found current entry (%@) for delegate: %@", buf, 0x16u);
          }

          v3 = v6;
          goto LABEL_13;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v12 objects:v20 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v9 = [*(a1 + 32) delegates];
  [v9 removeObject:v3];

  v10 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v17 = v3;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_INFO, "Unregistered delegate %@", buf, 0xCu);
  }

  [*(a1 + 32) updateAnalyticsEventObserverRegistrationOnQueueWithCompletion:*(a1 + 56) completionQueue:*(a1 + 48)];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)observer:(id)a3 didEmitMessage:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = metricsLogHandle;
  if (v7)
  {
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v24 = v7;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "AnalyticsEventObserver didEmitMessage %@", buf, 0xCu);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v7 dataUsingEncoding:4];
      v10 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v9 options:0 error:0];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 objectForKeyedSubscript:@"name"];
        v13 = [v11 objectForKeyedSubscript:@"message"];
        v14 = metricsLogHandle;
        if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v24 = v12;
          _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_INFO, "SymptomsCAObserver received event %@", buf, 0xCu);
        }

        v15 = metricsLogHandle;
        if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v24 = v12;
          v25 = 2112;
          v26 = v11;
          _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "SymptomsCAObserver received event %@: %@", buf, 0x16u);
        }

        if ([v12 length])
        {
          v16 = [(SymptomsCAObserver *)self queue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __46__SymptomsCAObserver_observer_didEmitMessage___block_invoke;
          block[3] = &unk_27898C1F8;
          block[4] = self;
          v21 = v12;
          v22 = v13;
          dispatch_async(v16, block);
        }
      }
    }

    else
    {
      v17 = metricsLogHandle;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        *buf = 138412546;
        v24 = v7;
        v25 = 2112;
        v26 = v18;
        _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "SymptomsCAObserver returned invalid message %@ (%@)", buf, 0x16u);
      }
    }
  }

  else if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v24 = v6;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "AnalyticsEventObserver %@ called handleEvent with nil message", buf, 0xCu);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __46__SymptomsCAObserver_observer_didEmitMessage___block_invoke(id *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [a1[4] delegates];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v3)
  {
    v4 = *v20;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v20 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v19 + 1) + 8 * i);
        v7 = [v6 events];
        v8 = [v7 containsObject:a1[5]];

        if (v8)
        {
          v9 = metricsLogHandle;
          if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO))
          {
            v10 = a1[5];
            *buf = 138412546;
            v24 = v6;
            v25 = 2112;
            v26 = v10;
            _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, "Delegate %@ is registered for event %@", buf, 0x16u);
          }

          v11 = [v6 delegate];
          if (v11)
          {
            v12 = [v6 queue];
            v13 = v12 == 0;

            if (!v13)
            {
              v14 = [v6 queue];
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __46__SymptomsCAObserver_observer_didEmitMessage___block_invoke_43;
              block[3] = &unk_27898C1F8;
              block[4] = v6;
              v17 = a1[5];
              v18 = a1[6];
              dispatch_async(v14, block);
            }
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v3);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __46__SymptomsCAObserver_observer_didEmitMessage___block_invoke_43(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v8 = 138412802;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "Calling handleEvent for delegate %@ with event %@:%@", &v8, 0x20u);
  }

  v6 = [*(a1 + 32) delegate];
  [v6 handleEvent:*(a1 + 48) forEventName:*(a1 + 40)];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateAnalyticsEventObserverRegistrationOnQueueWithCompletion:(id)a3 completionQueue:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v34 = a3;
  queue = a4;
  v6 = [(SymptomsCAObserver *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "Updating AnalyticsEventObserver registration", buf, 2u);
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v9 = [(SymptomsCAObserver *)self delegates];
  v10 = [v9 countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v10)
  {
    v11 = *v46;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v46 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v45 + 1) + 8 * i);
        v14 = [v13 events];
        v15 = v14 == 0;

        if (!v15)
        {
          v16 = [v13 events];
          v17 = [v16 allObjects];
          [v8 addObjectsFromArray:v17];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v10);
  }

  if (self->_analyticsEventObserver && (-[SymptomsCAObserver combinedEvents](self, "combinedEvents"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v8 isEqualToSet:v18], v18, v19))
  {
    v20 = metricsLogHandle;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [(SymptomsCAObserver *)self combinedEvents];
      *buf = 138412290;
      v50 = v21;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_INFO, "Combined metric list for registration does not differ from current registration, delivering completion immediately: %@", buf, 0xCu);
    }

    if (v34 && queue)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __100__SymptomsCAObserver_updateAnalyticsEventObserverRegistrationOnQueueWithCompletion_completionQueue___block_invoke;
      block[3] = &unk_27898C220;
      v44 = v34;
      dispatch_async(queue, block);
    }
  }

  else
  {
    v22 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v50 = v8;
      _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_INFO, "Updated metric list for registration: %@", buf, 0xCu);
    }

    if (!self->_analyticsEventObserver)
    {
      v23 = metricsLogHandle;
      if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_ERROR, "About to create AnalyticsEventObserver", buf, 2u);
      }

      v24 = objc_alloc_init(MEMORY[0x277CFD378]);
      analyticsEventObserver = self->_analyticsEventObserver;
      self->_analyticsEventObserver = v24;

      v26 = metricsLogHandle;
      if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v27 = self->_analyticsEventObserver;
        *buf = 138412290;
        v50 = v27;
        _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEBUG, "Created AnalyticsEventObserver %@", buf, 0xCu);
      }

      [(AnalyticsEventObserver *)self->_analyticsEventObserver setEventObserverDelegate:self queue:MEMORY[0x277D85CD0]];
      v28 = metricsLogHandle;
      if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v29 = self->_analyticsEventObserver;
        *buf = 138412290;
        v50 = v29;
        _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_DEBUG, "Set Delegate on AnalyticsEventObserver %@", buf, 0xCu);
      }
    }

    if ([v8 count])
    {
      v30 = [(SymptomsCAObserver *)self queue];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __100__SymptomsCAObserver_updateAnalyticsEventObserverRegistrationOnQueueWithCompletion_completionQueue___block_invoke_45;
      v39[3] = &unk_27898C1D0;
      v39[4] = self;
      v40 = v8;
      v42 = v34;
      v41 = queue;
      dispatch_async(v30, v39);
    }

    else
    {
      v31 = [(SymptomsCAObserver *)self queue];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __100__SymptomsCAObserver_updateAnalyticsEventObserverRegistrationOnQueueWithCompletion_completionQueue___block_invoke_51;
      v35[3] = &unk_27898C1D0;
      v35[4] = self;
      v36 = v8;
      v38 = v34;
      v37 = queue;
      dispatch_async(v31, v35);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

uint64_t __100__SymptomsCAObserver_updateAnalyticsEventObserverRegistrationOnQueueWithCompletion_completionQueue___block_invoke(uint64_t a1)
{
  v2 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "Calling completion for no change with success: YES and error: nil", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void __100__SymptomsCAObserver_updateAnalyticsEventObserverRegistrationOnQueueWithCompletion_completionQueue___block_invoke_45(id *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, a1[4]);
  v2 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO))
  {
    v3 = a1[5];
    *buf = 138412290;
    v19 = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "About to call startObservingEventList with %@", buf, 0xCu);
  }

  v4 = *(a1[4] + 1);
  v5 = [a1[5] allObjects];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __100__SymptomsCAObserver_updateAnalyticsEventObserverRegistrationOnQueueWithCompletion_completionQueue___block_invoke_46;
  v13[3] = &unk_27898C298;
  objc_copyWeak(&v16, &location);
  v15 = a1[7];
  v14 = a1[6];
  [v4 startObservingEventList:v5 withErrorHandler:v13];

  v6 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO))
  {
    v7 = a1[5];
    *buf = 138412290;
    v19 = v7;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "Successfully called startObservingEventList with %@", buf, 0xCu);
  }

  [a1[4] setCombinedEvents:a1[5]];
  v8 = a1[7];
  if (v8)
  {
    v9 = a1[6];
    if (v9)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __100__SymptomsCAObserver_updateAnalyticsEventObserverRegistrationOnQueueWithCompletion_completionQueue___block_invoke_50;
      block[3] = &unk_27898C220;
      v12 = v8;
      dispatch_async(v9, block);
    }
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
  v10 = *MEMORY[0x277D85DE8];
}

void __100__SymptomsCAObserver_updateAnalyticsEventObserverRegistrationOnQueueWithCompletion_completionQueue___block_invoke_46(id *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v14 = v3;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_ERROR, "startObservingEventList ErrorHandler called (%@)", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v6 = [WeakRetained queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__SymptomsCAObserver_updateAnalyticsEventObserverRegistrationOnQueueWithCompletion_completionQueue___block_invoke_47;
  block[3] = &unk_27898C270;
  v10 = v3;
  v12 = a1[5];
  v11 = a1[4];
  v7 = v3;
  dispatch_async(v6, block);

  v8 = *MEMORY[0x277D85DE8];
}

void __100__SymptomsCAObserver_updateAnalyticsEventObserverRegistrationOnQueueWithCompletion_completionQueue___block_invoke_47(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_ERROR, "Failed to register with AnalyticsEventObserver, error: %@", buf, 0xCu);
  }

  if (*(a1 + 48))
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __100__SymptomsCAObserver_updateAnalyticsEventObserverRegistrationOnQueueWithCompletion_completionQueue___block_invoke_48;
      v6[3] = &unk_27898C248;
      v7 = *(a1 + 32);
      v8 = *(a1 + 48);
      dispatch_async(v4, v6);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __100__SymptomsCAObserver_updateAnalyticsEventObserverRegistrationOnQueueWithCompletion_completionQueue___block_invoke_48(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "Calling completion after failing to register with error: %@", &v7, 0xCu);
  }

  v4 = *(a1 + 32);
  result = (*(*(a1 + 40) + 16))();
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __100__SymptomsCAObserver_updateAnalyticsEventObserverRegistrationOnQueueWithCompletion_completionQueue___block_invoke_50(uint64_t a1)
{
  v2 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "Calling completion after successfully registering", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void __100__SymptomsCAObserver_updateAnalyticsEventObserverRegistrationOnQueueWithCompletion_completionQueue___block_invoke_51(uint64_t a1)
{
  [*(*(a1 + 32) + 8) stopObserving];
  v2 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "Successfully stopped Observing with AnalyticsEventObserver", buf, 2u);
  }

  [*(a1 + 32) setCombinedEvents:*(a1 + 40)];
  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __100__SymptomsCAObserver_updateAnalyticsEventObserverRegistrationOnQueueWithCompletion_completionQueue___block_invoke_52;
      block[3] = &unk_27898C220;
      v6 = v3;
      dispatch_async(v4, block);
    }
  }
}

uint64_t __100__SymptomsCAObserver_updateAnalyticsEventObserverRegistrationOnQueueWithCompletion_completionQueue___block_invoke_52(uint64_t a1)
{
  v2 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "Calling completion after stopping observation with AnalyticsEventObserver", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__SymptomsCAObserver_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[SymptomsCAObserver sharedInstance]::onceToken != -1)
  {
    dispatch_once(&+[SymptomsCAObserver sharedInstance]::onceToken, block);
  }

  v2 = +[SymptomsCAObserver sharedInstance]::sharedInstance;

  return v2;
}

uint64_t __36__SymptomsCAObserver_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = +[SymptomsCAObserver sharedInstance]::sharedInstance;
  +[SymptomsCAObserver sharedInstance]::sharedInstance = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (void)addDelegate:forEvents:withQueue:completion:.cold.1()
{
  if (OUTLINED_FUNCTION_1_1())
  {
    OUTLINED_FUNCTION_0_2(&dword_23255B000, v0, v1, "called with null queue", v2, v3, v4, v5, 0);
  }
}

- (void)addDelegate:forEvents:withQueue:completion:.cold.2()
{
  if (OUTLINED_FUNCTION_1_1())
  {
    OUTLINED_FUNCTION_0_2(&dword_23255B000, v0, v1, "called with null events", v2, v3, v4, v5, 0);
  }
}

- (void)addDelegate:forEvents:withQueue:completion:.cold.3()
{
  if (OUTLINED_FUNCTION_1_1())
  {
    OUTLINED_FUNCTION_0_2(&dword_23255B000, v0, v1, "called with null delegate", v2, v3, v4, v5, 0);
  }
}

@end