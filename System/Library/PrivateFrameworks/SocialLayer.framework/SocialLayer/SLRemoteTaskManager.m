@interface SLRemoteTaskManager
- (SLRemoteTaskManager)initWithDelegate:(id)a3 targetSerialQueue:(id)a4 synchronous:(BOOL)a5;
- (SLRemoteTaskManagerDelegate)delegate;
- (id)_serviceWithErrorHandler:(id)a3;
- (void)startTask:(id)a3 withTimeout:(double)a4 timeoutHandler:(id)a5 errorHandler:(id)a6;
@end

@implementation SLRemoteTaskManager

- (SLRemoteTaskManager)initWithDelegate:(id)a3 targetSerialQueue:(id)a4 synchronous:(BOOL)a5
{
  v5 = a5;
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v19.receiver = self;
  v19.super_class = SLRemoteTaskManager;
  v10 = [(SLRemoteTaskManager *)&v19 init];
  if (v10)
  {
    v11 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = @"NO";
      *buf = 134218754;
      v21 = v10;
      if (v5)
      {
        v12 = @"YES";
      }

      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = v9;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&dword_231772000, v11, OS_LOG_TYPE_INFO, "[%p] initWithDelegate: %@ targetSerialQueue: %@ synchronous: %@", buf, 0x2Au);
    }

    objc_storeWeak(&v10->_delegate, v8);
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_USER_INTERACTIVE, 0);

    v15 = dispatch_queue_create("com.apple.SocialLayer.SLRemoteTaskManager", v14);
    backgroundConcurrentQueue = v10->_backgroundConcurrentQueue;
    v10->_backgroundConcurrentQueue = v15;

    objc_storeStrong(&v10->_targetSerialQueue, a4);
    v10->_synchronous = v5;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)startTask:(id)a3 withTimeout:(double)a4 timeoutHandler:(id)a5 errorHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([(SLRemoteTaskManager *)self synchronous])
  {
    [(SLRemoteTaskManager *)self targetSerialQueue];
  }

  else
  {
    [(SLRemoteTaskManager *)self backgroundConcurrentQueue];
  }
  v13 = ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__SLRemoteTaskManager_startTask_withTimeout_timeoutHandler_errorHandler___block_invoke;
  block[3] = &unk_278927818;
  v21 = a4;
  block[4] = self;
  v18 = v11;
  v19 = v12;
  v20 = v10;
  v14 = v10;
  v15 = v12;
  v16 = v11;
  dispatch_async(v13, block);
}

void __73__SLRemoteTaskManager_startTask_withTimeout_timeoutHandler_errorHandler___block_invoke(uint64_t a1)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__14;
  v31 = __Block_byref_object_dispose__14;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__14;
  v25 = __Block_byref_object_dispose__14;
  v2 = [*(a1 + 32) targetSerialQueue];
  v3 = *(a1 + 64);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __73__SLRemoteTaskManager_startTask_withTimeout_timeoutHandler_errorHandler___block_invoke_5;
  v18[3] = &unk_278926290;
  v20 = &v27;
  v19 = *(a1 + 40);
  v26 = [SLGracePeriodTimer timerWithQueue:v2 delay:v18 action:v3];

  v4 = *(a1 + 32);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__SLRemoteTaskManager_startTask_withTimeout_timeoutHandler_errorHandler___block_invoke_2;
  v14[3] = &unk_2789277C8;
  v16 = &v27;
  v17 = &v21;
  v15 = *(a1 + 48);
  v5 = [v4 _serviceWithErrorHandler:v14];
  if (v5)
  {
    [v22[5] arm];
    v6 = v22[5];
    v7 = (*(*(a1 + 56) + 16))();
    v8 = v28[5];
    v28[5] = v7;

    v9 = [*(a1 + 32) targetSerialQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __73__SLRemoteTaskManager_startTask_withTimeout_timeoutHandler_errorHandler___block_invoke_3;
    v13[3] = &unk_2789277F0;
    v13[4] = &v27;
    v13[5] = &v21;
    dispatch_async(v9, v13);
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA068];
    v34[0] = @"XPC connection error. We were unable to retrieve a connection to the handshake service in sociallayerd";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v9 = [v10 errorWithDomain:@"com.apple.SocialLayer.SLRemoteTaskManager" code:1 userInfo:v11];

    (*(*(a1 + 48) + 16))();
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __73__SLRemoteTaskManager_startTask_withTimeout_timeoutHandler_errorHandler___block_invoke_5(uint64_t a1)
{
  [*(*(*(a1 + 40) + 8) + 40) cancel];
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

void __73__SLRemoteTaskManager_startTask_withTimeout_timeoutHandler_errorHandler___block_invoke_2(void *a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  [*(*(a1[5] + 8) + 40) cancel];
  if ([*(*(a1[6] + 8) + 40) isValid])
  {
    [*(*(a1[6] + 8) + 40) suppress];
    v2 = MEMORY[0x277CCA9B8];
    v6 = *MEMORY[0x277CCA068];
    v7[0] = @"XPC connection error. sociallayerd may have crashed";
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    v4 = [v2 errorWithDomain:@"com.apple.SocialLayer.SLRemoteTaskManager" code:1 userInfo:v3];

    (*(a1[4] + 16))();
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __73__SLRemoteTaskManager_startTask_withTimeout_timeoutHandler_errorHandler___block_invoke_3(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 40) isCancelled];
  if ((result & 1) == 0)
  {
    result = [*(*(*(a1 + 40) + 8) + 40) isValid];
    if ((result & 1) == 0)
    {
      v3 = *(*(*(a1 + 32) + 8) + 40);

      return [v3 cancel];
    }
  }

  return result;
}

- (id)_serviceWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(SLRemoteTaskManager *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SLRemoteTaskManager *)self delegate];
    v8 = [v7 taskServiceWithErrorHandler:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (SLRemoteTaskManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end