@interface STKUSSDAlertSessionManager
- (STKUSSDAlertSessionManager)initWithSubscriptionMonitor:(id)a3;
- (id)_supplementaryServicesResponder;
- (id)remoteAlertDescriptorForSession:(id)a3;
- (void)_executeOnQueue:(id)a3;
- (void)_queue_handleUSSDEvent:(int64_t)a3 responder:(id)a4 userInfo:(id)a5;
- (void)_queue_startListening;
- (void)handleUSSDEvent:(int64_t)a3 responder:(id)a4 userInfo:(id)a5;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
- (void)suppServicesCompleted:(id)a3;
- (void)suppServicesError:(id)a3 error:(id)a4;
- (void)suppServicesStarted:(id)a3;
@end

@implementation STKUSSDAlertSessionManager

- (STKUSSDAlertSessionManager)initWithSubscriptionMonitor:(id)a3
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = STKUSSDLog();
  v25.receiver = self;
  v25.super_class = STKUSSDAlertSessionManager;
  v8 = [(STKAlertSessionManager *)&v25 initWithEventQueue:v6 logger:v7];

  if (v8)
  {
    v9 = BSDispatchQueueCreateWithQualityOfService();
    queue = v8->_queue;
    v8->_queue = v9;

    v11 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:v8->_queue];
    telephonyClient = v8->_telephonyClient;
    v8->_telephonyClient = v11;

    objc_storeStrong(&v8->_subscriptionMonitor, a3);
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    activeUSSDSessions = v8->_activeUSSDSessions;
    v8->_activeUSSDSessions = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    finishedUSSDSessions = v8->_finishedUSSDSessions;
    v8->_finishedUSSDSessions = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    activeSupplementaryServicesSessions = v8->_activeSupplementaryServicesSessions;
    v8->_activeSupplementaryServicesSessions = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    finishedSupplementaryServicesSessions = v8->_finishedSupplementaryServicesSessions;
    v8->_finishedSupplementaryServicesSessions = v19;

    v21 = v8->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__STKUSSDAlertSessionManager_initWithSubscriptionMonitor___block_invoke;
    block[3] = &unk_279B4C428;
    v24 = v8;
    dispatch_sync(v21, block);
  }

  return v8;
}

- (id)remoteAlertDescriptorForSession:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_initWeak(&location, self);
    v5 = [[STKUSSDSessionData alloc] initWithText:0 allowsResponse:0];
    v6 = [STKUSSDSessionAction alloc];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __62__STKUSSDAlertSessionManager_remoteAlertDescriptorForSession___block_invoke;
    v14 = &unk_279B4C478;
    objc_copyWeak(&v17, &location);
    v15 = v4;
    v16 = self;
    v7 = [(STKUSSDSessionAction *)v6 initWithInputData:v5 response:&v11];
    v8 = [_STKRemoteAlertDescriptor alloc];
    v9 = [(_STKRemoteAlertDescriptor *)v8 initWithAction:v7 viewControllerName:@"STKUSSDViewController", v11, v12, v13, v14];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __62__STKUSSDAlertSessionManager_remoteAlertDescriptorForSession___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained[4];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__STKUSSDAlertSessionManager_remoteAlertDescriptorForSession___block_invoke_2;
    block[3] = &unk_279B4C450;
    block[4] = WeakRetained;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = v9;
    v13 = v10;
    v14 = v5;
    v15 = a2;
    dispatch_async(v8, block);
  }
}

uint64_t __62__STKUSSDAlertSessionManager_remoteAlertDescriptorForSession___block_invoke_2(uint64_t a1)
{
  if ([*(*(a1 + 32) + 56) containsObject:*(a1 + 40)])
  {
    v2 = [*(a1 + 48) log];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_262BB4000, v2, OS_LOG_TYPE_DEFAULT, "Sending response for active session - marking it as finished.", v6, 2u);
    }

    [*(*(a1 + 32) + 64) addObject:*(a1 + 40)];
    [*(*(a1 + 32) + 56) removeObject:*(a1 + 40)];
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  if (*(a1 + 56))
  {
    return [v3 sendResponse:v4 withStringResult:?];
  }

  else
  {
    return [v3 sendResponse:v4];
  }
}

- (void)handleUSSDEvent:(int64_t)a3 responder:(id)a4 userInfo:(id)a5
{
  v8 = a4;
  v9 = a5;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__STKUSSDAlertSessionManager_handleUSSDEvent_responder_userInfo___block_invoke;
  v13[3] = &unk_279B4C4A0;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, v13);
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__STKUSSDAlertSessionManager_remoteAlertHandleDidDeactivate___block_invoke;
  v7[3] = &unk_279B4C4C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __61__STKUSSDAlertSessionManager_remoteAlertHandleDidDeactivate___block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x277D85DE8];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v2 = [*(*(a1 + 32) + 56) copy];
  v3 = [v2 countByEnumeratingWithState:&v59 objects:v68 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v60;
    *&v4 = 134217984;
    v43 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v60 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v59 + 1) + 8 * i);
        v9 = [v8 alertHandle];
        v10 = *(a1 + 40);

        if (v9 == v10)
        {
          v11 = [*(a1 + 32) log];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v43;
            v67 = v8;
            _os_log_impl(&dword_262BB4000, v11, OS_LOG_TYPE_DEFAULT, "Session <%p> - AlertHandleDeactivated - ended active session", buf, 0xCu);
          }

          [v8 invalidate];
          [*(*(a1 + 32) + 56) removeObject:v8];
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v59 objects:v68 count:16];
    }

    while (v5);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v12 = [*(*(a1 + 32) + 64) copy];
  v13 = [v12 countByEnumeratingWithState:&v55 objects:v65 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = *v56;
    *&v14 = 134217984;
    v44 = v14;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v56 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v55 + 1) + 8 * j);
        v19 = [v18 alertHandle];
        v20 = *(a1 + 40);

        if (v19 == v20)
        {
          [v18 invalidate];
          v21 = [*(a1 + 32) log];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v44;
            v67 = v18;
            _os_log_impl(&dword_262BB4000, v21, OS_LOG_TYPE_DEFAULT, "Session <%p> - AlertHandleDeactivated - Ended finished session", buf, 0xCu);
          }

          [*(*(a1 + 32) + 64) removeObject:v18];
        }
      }

      v15 = [v12 countByEnumeratingWithState:&v55 objects:v65 count:16];
    }

    while (v15);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v22 = [*(*(a1 + 32) + 80) copy];
  v23 = [v22 countByEnumeratingWithState:&v51 objects:v64 count:16];
  if (v23)
  {
    v25 = v23;
    v26 = *v52;
    *&v24 = 134217984;
    v45 = v24;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v52 != v26)
        {
          objc_enumerationMutation(v22);
        }

        v28 = *(*(&v51 + 1) + 8 * k);
        v29 = [v28 alertHandle];
        v30 = *(a1 + 40);

        if (v29 == v30)
        {
          [v28 invalidate];
          v31 = [*(a1 + 32) log];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v45;
            v67 = v28;
            _os_log_impl(&dword_262BB4000, v31, OS_LOG_TYPE_DEFAULT, "Session <%p> - AlertHandleDeactivated - Ended active supplementary services session", buf, 0xCu);
          }

          [*(*(a1 + 32) + 80) removeObject:v28];
        }
      }

      v25 = [v22 countByEnumeratingWithState:&v51 objects:v64 count:16];
    }

    while (v25);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v32 = [*(*(a1 + 32) + 88) copy];
  v33 = [v32 countByEnumeratingWithState:&v47 objects:v63 count:16];
  if (v33)
  {
    v35 = v33;
    v36 = *v48;
    *&v34 = 134217984;
    v46 = v34;
    do
    {
      for (m = 0; m != v35; ++m)
      {
        if (*v48 != v36)
        {
          objc_enumerationMutation(v32);
        }

        v38 = *(*(&v47 + 1) + 8 * m);
        v39 = [v38 alertHandle];
        v40 = *(a1 + 40);

        if (v39 == v40)
        {
          [v38 invalidate];
          v41 = [*(a1 + 32) log];
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v46;
            v67 = v38;
            _os_log_impl(&dword_262BB4000, v41, OS_LOG_TYPE_DEFAULT, "Session <%p> - AlertHandleDeactivated - Ended finished supplementary services session", buf, 0xCu);
          }

          [*(*(a1 + 32) + 88) removeObject:v38];
        }
      }

      v35 = [v32 countByEnumeratingWithState:&v47 objects:v63 count:16];
    }

    while (v35);
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v5 = a3;
  [v5 removeObserver:self];
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__STKUSSDAlertSessionManager_remoteAlertHandle_didInvalidateWithError___block_invoke;
  v8[3] = &unk_279B4C4C8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

void __71__STKUSSDAlertSessionManager_remoteAlertHandle_didInvalidateWithError___block_invoke(uint64_t a1)
{
  v75 = *MEMORY[0x277D85DE8];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v2 = [*(*(a1 + 32) + 56) copy];
  v3 = [v2 countByEnumeratingWithState:&v65 objects:v74 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v66;
    *&v4 = 134217984;
    v49 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v66 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v65 + 1) + 8 * i);
        v9 = [v8 alertHandle];
        v10 = *(a1 + 40);

        if (v9 == v10)
        {
          v11 = [*(a1 + 32) log];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v49;
            v73 = v8;
            _os_log_impl(&dword_262BB4000, v11, OS_LOG_TYPE_DEFAULT, "Session <%p> - AlertHandleInvalidated - Ended active session", buf, 0xCu);
          }

          [v8 invalidate];
          [*(*(a1 + 32) + 56) removeObject:v8];
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v65 objects:v74 count:16];
    }

    while (v5);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v12 = [*(*(a1 + 32) + 64) copy];
  v13 = [v12 countByEnumeratingWithState:&v61 objects:v71 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = *v62;
    *&v14 = 134217984;
    v50 = v14;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v62 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v61 + 1) + 8 * j);
        v19 = [v18 alertHandle];
        v20 = *(a1 + 40);

        if (v19 == v20)
        {
          v21 = [*(a1 + 32) log];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v50;
            v73 = v18;
            _os_log_impl(&dword_262BB4000, v21, OS_LOG_TYPE_DEFAULT, "Session <%p> - AlertHandleInvalidated - Ended finished session", buf, 0xCu);
          }

          [v18 invalidate];
          [*(*(a1 + 32) + 64) removeObject:v18];
        }
      }

      v15 = [v12 countByEnumeratingWithState:&v61 objects:v71 count:16];
    }

    while (v15);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v22 = [*(*(a1 + 32) + 80) copy];
  v23 = [v22 countByEnumeratingWithState:&v57 objects:v70 count:16];
  if (v23)
  {
    v25 = v23;
    v26 = *v58;
    *&v24 = 134217984;
    v51 = v24;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v58 != v26)
        {
          objc_enumerationMutation(v22);
        }

        v28 = *(*(&v57 + 1) + 8 * k);
        v29 = [v28 alertHandle];
        v30 = *(a1 + 40);

        if (v29 == v30)
        {
          v31 = [*(a1 + 32) log];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v51;
            v73 = v28;
            _os_log_impl(&dword_262BB4000, v31, OS_LOG_TYPE_DEFAULT, "Session <%p> - AlertHandleInvalidated - Ended active supplementary services session", buf, 0xCu);
          }

          [v28 invalidate];
          [*(*(a1 + 32) + 80) removeObject:v28];
        }
      }

      v25 = [v22 countByEnumeratingWithState:&v57 objects:v70 count:16];
    }

    while (v25);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v32 = [*(*(a1 + 32) + 88) copy];
  v33 = [v32 countByEnumeratingWithState:&v53 objects:v69 count:16];
  if (v33)
  {
    v35 = v33;
    v36 = *v54;
    *&v34 = 134217984;
    v52 = v34;
    do
    {
      for (m = 0; m != v35; ++m)
      {
        if (*v54 != v36)
        {
          objc_enumerationMutation(v32);
        }

        v38 = *(*(&v53 + 1) + 8 * m);
        v39 = [v38 alertHandle];
        v40 = *(a1 + 40);

        if (v39 == v40)
        {
          v41 = [*(a1 + 32) log];
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v52;
            v73 = v38;
            _os_log_impl(&dword_262BB4000, v41, OS_LOG_TYPE_DEFAULT, "Session <%p> - AlertHandleInvalidated - Ended finished supplementary services session", buf, 0xCu);
          }

          [v38 invalidate];
          [*(*(a1 + 32) + 88) removeObject:v38];
        }
      }

      v35 = [v32 countByEnumeratingWithState:&v53 objects:v69 count:16];
    }

    while (v35);
  }

  v42 = [*(*(a1 + 32) + 72) alertHandle];
  v43 = *(a1 + 40);

  if (v42 == v43)
  {
    v44 = [*(a1 + 32) log];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = *(*(a1 + 32) + 72);
      *buf = 134217984;
      v73 = v45;
      _os_log_impl(&dword_262BB4000, v44, OS_LOG_TYPE_DEFAULT, "Session <%p> - AlertHandleInvalidated - Ended coalescing session", buf, 0xCu);
    }

    [*(*(a1 + 32) + 72) invalidate];
    v46 = *(a1 + 32);
    v47 = *(v46 + 72);
    *(v46 + 72) = 0;
  }

  v48 = *MEMORY[0x277D85DE8];
}

- (void)suppServicesStarted:(id)a3
{
  v4 = [(STKUSSDAlertSessionManager *)self _supplementaryServicesResponder];
  [(STKUSSDAlertSessionManager *)self _queue_handleUSSDEvent:6 responder:v4 userInfo:MEMORY[0x277CBEC10]];
}

- (void)suppServicesCompleted:(id)a3
{
  v4 = [(STKUSSDAlertSessionManager *)self _supplementaryServicesResponder];
  [(STKUSSDAlertSessionManager *)self _queue_handleUSSDEvent:9 responder:v4 userInfo:MEMORY[0x277CBEC10]];
}

- (void)suppServicesError:(id)a3 error:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "code")}];
    [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x277CC4328]];

    v9 = [v6 localizedDescription];

    if (v9)
    {
      v10 = [v6 localizedDescription];
      [v7 setObject:v10 forKeyedSubscript:*MEMORY[0x277CC4338]];
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = [(STKUSSDAlertSessionManager *)self _supplementaryServicesResponder];
  [(STKUSSDAlertSessionManager *)self _queue_handleUSSDEvent:8 responder:v11 userInfo:v7];
}

- (void)_executeOnQueue:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(STKUSSDAlertSessionManager *)a2 _executeOnQueue:?];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__STKUSSDAlertSessionManager__executeOnQueue___block_invoke;
  block[3] = &unk_279B4C4F0;
  v9 = v5;
  v7 = v5;
  dispatch_sync(queue, block);
}

- (void)_queue_handleUSSDEvent:(int64_t)a3 responder:(id)a4 userInfo:(id)a5
{
  v73 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  queue = self->_queue;
  BSDispatchQueueAssert();
  if (a3 > 4)
  {
    if (a3 <= 6)
    {
      if (a3 == 5)
      {
        v11 = [(NSMutableArray *)self->_activeUSSDSessions lastObject];
        v26 = [(STKAlertSessionManager *)self log];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v68 = v11;
          _os_log_impl(&dword_262BB4000, v26, OS_LOG_TYPE_DEFAULT, "Session <%p> - Terminated Event", buf, 0xCu);
        }

        if (v11)
        {
          [(NSMutableArray *)self->_finishedUSSDSessions addObject:v11];
          [(NSMutableArray *)self->_activeUSSDSessions removeLastObject];
          [v11 performUSSDUpdate:&__block_literal_global_43];
        }

        goto LABEL_73;
      }

      v23 = [(STKAlertSessionManager *)self log];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_262BB4000, v23, OS_LOG_TYPE_DEFAULT, "Supplementary Services Begin", buf, 2u);
      }

      v24 = [STKUSSDAlertSession alloc];
      v25 = [(STKAlertSessionManager *)self log];
      v11 = [(STKUSSDAlertSession *)v24 initWithLogger:v25 responseProvider:v8 event:6 options:v9 sound:0];

      [(NSMutableArray *)self->_activeSupplementaryServicesSessions addObject:v11];
      v22 = &__block_literal_global_46;
      goto LABEL_27;
    }

    switch(a3)
    {
      case 7:
        v11 = [(NSMutableArray *)self->_activeSupplementaryServicesSessions lastObject];
        v38 = [(STKAlertSessionManager *)self log];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v68 = v11;
          _os_log_impl(&dword_262BB4000, v38, OS_LOG_TYPE_DEFAULT, "Session <%p> - Supplementary Services Event", buf, 0xCu);
        }

        if (v11)
        {
          v56[0] = MEMORY[0x277D85DD0];
          v56[1] = 3221225472;
          v56[2] = __72__STKUSSDAlertSessionManager__queue_handleUSSDEvent_responder_userInfo___block_invoke_47;
          v56[3] = &unk_279B4C5D0;
          v57 = v9;
          [v11 performUSSDUpdate:v56];
          [v11 setHasReceivedContent:1];
        }

        goto LABEL_73;
      case 8:
        v11 = [v9 objectForKeyedSubscript:*MEMORY[0x277CC4338]];
        v40 = [v9 objectForKeyedSubscript:*MEMORY[0x277CC4328]];
        v41 = [v40 integerValue];

        v14 = [(NSMutableArray *)self->_activeSupplementaryServicesSessions lastObject];
        v42 = [(STKAlertSessionManager *)self log];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          v68 = v14;
          v69 = 1024;
          v70 = v41;
          v71 = 2112;
          v72 = v11;
          _os_log_impl(&dword_262BB4000, v42, OS_LOG_TYPE_DEFAULT, "Session <%p> - Supplementary Services Error, errorCode: %d, error: %@", buf, 0x1Cu);
        }

        if (!v14)
        {
          goto LABEL_51;
        }

        [(NSMutableArray *)self->_finishedSupplementaryServicesSessions addObject:v14];
        [(NSMutableArray *)self->_activeSupplementaryServicesSessions removeLastObject];
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __72__STKUSSDAlertSessionManager__queue_handleUSSDEvent_responder_userInfo___block_invoke_48;
        v53[3] = &unk_279B4C588;
        v55 = v41;
        v54 = v11;
        [(STKUSSDAlertSession *)v14 performUSSDUpdate:v53];
        [(STKUSSDAlertSession *)v14 setHasReceivedContent:1];
        v16 = v54;
        goto LABEL_50;
      case 9:
        v17 = 80;
        v11 = [(NSMutableArray *)self->_activeSupplementaryServicesSessions lastObject];
        v18 = [(STKAlertSessionManager *)self log];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v68 = v11;
          _os_log_impl(&dword_262BB4000, v18, OS_LOG_TYPE_DEFAULT, "Session <%p> - Supplementary Services End", buf, 0xCu);
        }

        if (!v11)
        {
          goto LABEL_73;
        }

        if (([v11 hasReceivedContent]& 1) != 0)
        {
          [(NSMutableArray *)self->_finishedSupplementaryServicesSessions addObject:v11];
          [v11 performUSSDUpdate:&__block_literal_global_51];
LABEL_53:
          [*(&self->super.super.isa + v17) removeLastObject];
          goto LABEL_73;
        }

LABEL_52:
        [v11 invalidate];
        goto LABEL_53;
    }
  }

  else
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v27 = [v9 objectForKeyedSubscript:*MEMORY[0x277CC4348]];
        v28 = [v9 objectForKeyedSubscript:*MEMORY[0x277CC4340]];
        v52 = [v28 BOOLValue];

        v29 = [v9 objectForKeyedSubscript:@"kCallSimSlot"];
        v30 = [v29 integerValue];

        v31 = [(STKCarrierSubscriptionMonitor *)self->_subscriptionMonitor subscriptionInfoForSlot:v30];
        v32 = [v31 ussdFilter];

        v33 = [(NSMutableArray *)self->_activeUSSDSessions lastObject];
        v34 = [(STKAlertSessionManager *)self log];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v51 = v32;
          v35 = [MEMORY[0x277CF0CA8] sharedInstance];
          v36 = [v35 isInternalInstall];
          if (v36)
          {
            v37 = [MEMORY[0x277CCACA8] stringWithFormat:@", string: %@", v27];
          }

          else
          {
            v37 = &stru_287584798;
          }

          *buf = 134218498;
          v68 = v33;
          v69 = 1024;
          v70 = v52;
          v71 = 2114;
          v72 = v37;
          _os_log_impl(&dword_262BB4000, v34, OS_LOG_TYPE_DEFAULT, "Session <%p> - String Event (should respond? %d%{public}@)", buf, 0x1Cu);
          if (v36)
          {
          }

          v32 = v51;
        }

        v66 = 0;
        if (!v33)
        {
          if ((v52 & 1) != 0 || ([v32 shouldFilterString:v27 coalescable:&v66] & 1) == 0)
          {
            v43 = [STKUSSDAlertSession alloc];
            v44 = [(STKAlertSessionManager *)self log];
            v33 = [(STKUSSDAlertSession *)v43 initWithLogger:v44 responseProvider:v8 event:2 options:v9 sound:0];

            if (v66 == 1)
            {
              v45 = [(STKAlertSessionManager *)self log];
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                v68 = v33;
                _os_log_impl(&dword_262BB4000, v45, OS_LOG_TYPE_DEFAULT, "Session <%p> - String should coalesce.", buf, 0xCu);
              }

              if (self->_coalescingUSSDSession)
              {
                [(NSMutableArray *)self->_finishedUSSDSessions addObject:?];
                coalescingUSSDSession = self->_coalescingUSSDSession;
                v64[0] = MEMORY[0x277D85DD0];
                v64[1] = 3221225472;
                v64[2] = __72__STKUSSDAlertSessionManager__queue_handleUSSDEvent_responder_userInfo___block_invoke_34;
                v64[3] = &unk_279B4C538;
                v64[4] = self;
                v65 = v33;
                [(STKUSSDAlertSession *)coalescingUSSDSession performUSSDUpdate:v64];
                [(STKUSSDAlertSession *)self->_coalescingUSSDSession invalidate];
              }

              objc_storeStrong(&self->_coalescingUSSDSession, v33);
            }

            else
            {
              [(NSMutableArray *)self->_activeUSSDSessions addObject:v33];
            }

            [(STKAlertSessionManager *)self enqueuePresentationForSession:v33 completion:&__block_literal_global_38];
          }

          else
          {
            v33 = 0;
          }
        }

        v61[0] = MEMORY[0x277D85DD0];
        v61[1] = 3221225472;
        v61[2] = __72__STKUSSDAlertSessionManager__queue_handleUSSDEvent_responder_userInfo___block_invoke_2;
        v61[3] = &unk_279B4C560;
        v11 = v27;
        v62 = v11;
        v63 = v52;
        [(STKUSSDAlertSession *)v33 performUSSDUpdate:v61];
        [(STKUSSDAlertSession *)v33 setHasReceivedContent:1];
        v47 = [v9 objectForKeyedSubscript:*MEMORY[0x277CC4350]];
        v48 = [v47 BOOLValue];

        if ((v48 & 1) == 0)
        {
          v49 = [STKSoundFactory soundForSystemSoundID:1050 duration:0.0];
          [(STKAlertSession *)v33 setSound:v49];
          [v49 playSound];
        }

        goto LABEL_73;
      }

      if (a3 != 3)
      {
        v11 = [v9 objectForKeyedSubscript:*MEMORY[0x277CC4338]];
        v12 = [v9 objectForKeyedSubscript:*MEMORY[0x277CC4328]];
        v13 = [v12 integerValue];

        v14 = [(NSMutableArray *)self->_activeUSSDSessions lastObject];
        v15 = [(STKAlertSessionManager *)self log];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          v68 = v14;
          v69 = 1024;
          v70 = v13;
          v71 = 2112;
          v72 = v11;
          _os_log_impl(&dword_262BB4000, v15, OS_LOG_TYPE_DEFAULT, "Session <%p> - Error Event, errorCode: %d, error: %@", buf, 0x1Cu);
        }

        if (!v14)
        {
          goto LABEL_51;
        }

        [(NSMutableArray *)self->_finishedUSSDSessions addObject:v14];
        [(NSMutableArray *)self->_activeUSSDSessions removeObject:v14];
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __72__STKUSSDAlertSessionManager__queue_handleUSSDEvent_responder_userInfo___block_invoke_40;
        v58[3] = &unk_279B4C588;
        v60 = v13;
        v59 = v11;
        [(STKUSSDAlertSession *)v14 performUSSDUpdate:v58];
        [(STKUSSDAlertSession *)v14 setHasReceivedContent:1];
        v16 = v59;
LABEL_50:

LABEL_51:
        goto LABEL_73;
      }

      v17 = 56;
      v11 = [(NSMutableArray *)self->_activeUSSDSessions lastObject];
      v39 = [(STKAlertSessionManager *)self log];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v68 = v11;
        _os_log_impl(&dword_262BB4000, v39, OS_LOG_TYPE_DEFAULT, "Session <%p> - End Event", buf, 0xCu);
      }

      if (!v11)
      {
        goto LABEL_73;
      }

      if (([v11 hasReceivedContent]& 1) != 0)
      {
        [(NSMutableArray *)self->_finishedUSSDSessions addObject:v11];
        goto LABEL_53;
      }

      goto LABEL_52;
    }

    if (!a3)
    {
      v11 = [(STKAlertSessionManager *)self log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_262BB4000, v11, OS_LOG_TYPE_DEFAULT, "Unknown STKUSSDEvent", buf, 2u);
      }

      goto LABEL_73;
    }

    if (a3 == 1)
    {
      v19 = [(STKAlertSessionManager *)self log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_262BB4000, v19, OS_LOG_TYPE_DEFAULT, "Event Begin", buf, 2u);
      }

      v20 = [STKUSSDAlertSession alloc];
      v21 = [(STKAlertSessionManager *)self log];
      v11 = [(STKUSSDAlertSession *)v20 initWithLogger:v21 responseProvider:v8 event:1 options:v9 sound:0];

      [(NSMutableArray *)self->_activeUSSDSessions addObject:v11];
      v22 = &__block_literal_global_0;
LABEL_27:
      [(STKAlertSessionManager *)self enqueuePresentationForSession:v11 completion:v22];
LABEL_73:
    }
  }

  v50 = *MEMORY[0x277D85DE8];
}

void __72__STKUSSDAlertSessionManager__queue_handleUSSDEvent_responder_userInfo___block_invoke_34(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v8 = 134217984;
    v9 = v6;
    _os_log_impl(&dword_262BB4000, v5, OS_LOG_TYPE_DEFAULT, "Session <%p> - Dismissing prior coalesced session.", &v8, 0xCu);
  }

  [v4 dismissCoalescingSession];
  v7 = *MEMORY[0x277D85DE8];
}

void __72__STKUSSDAlertSessionManager__queue_handleUSSDEvent_responder_userInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 sessionDidReceiveString:v3];
  [v4 sessionWantsResponse:*(a1 + 40)];
}

- (id)_supplementaryServicesResponder
{
  v3 = [_STKUSSDResponseProvider alloc];
  queue = self->_queue;
  telephonyClient = self->_telephonyClient;
  v6 = [(STKAlertSessionManager *)self log];
  v7 = [(_STKUSSDResponseProvider *)v3 initWithQueue:queue telephonyClient:telephonyClient options:MEMORY[0x277CBEC10] logger:v6];

  return v7;
}

- (void)_queue_startListening
{
  queue = self->_queue;
  BSDispatchQueueAssert();
  if (!self->_serverConnection)
  {
    v4 = *MEMORY[0x277CBECE8];
    v5 = _CTServerConnectionCreate();
    self->_serverConnection = v5;
    if (v5)
    {
      v6 = self->_queue;
      _CTServerConnectionSetTargetQueue();
      serverConnection = self->_serverConnection;
      v8 = *MEMORY[0x277CC4318];
      _CTServerConnectionRegisterForNotification();
      v9 = self->_serverConnection;
      v10 = *MEMORY[0x277CC4358];
      _CTServerConnectionRegisterForNotification();
      v11 = self->_serverConnection;
      v12 = *MEMORY[0x277CC4320];
      _CTServerConnectionRegisterForNotification();
      v13 = self->_serverConnection;
      v14 = *MEMORY[0x277CC4330];
      _CTServerConnectionRegisterForNotification();
      v15 = self->_serverConnection;
      v16 = *MEMORY[0x277CC4360];
      _CTServerConnectionRegisterForNotification();
    }
  }

  telephonyClient = self->_telephonyClient;
  if (telephonyClient)
  {
    [(CoreTelephonyClient *)telephonyClient setDelegate:self];
  }
}

- (void)_executeOnQueue:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STKUSSDAlertSessionManager.m" lineNumber:219 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

@end