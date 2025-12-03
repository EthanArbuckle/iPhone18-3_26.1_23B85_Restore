@interface WLKDebouncingQueue
- (WLKDebouncingQueue)init;
- (void)addOperationWithBlock:(id)block;
@end

@implementation WLKDebouncingQueue

- (WLKDebouncingQueue)init
{
  v9.receiver = self;
  v9.super_class = WLKDebouncingQueue;
  v2 = [(WLKDebouncingQueue *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_delay = 250000;
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    queue = v3->_queue;
    v3->_queue = v4;

    [(NSOperationQueue *)v3->_queue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v3->_queue setQualityOfService:-1];
    v6 = v3->_queue;
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"WLKDebouncingQueue-%p", v3];
    [(NSOperationQueue *)v6 setName:v7];
  }

  return v3;
}

- (void)addOperationWithBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    [WLKDebouncingQueue addOperationWithBlock:];
  }

  v5 = blockCopy;
  queue = [(WLKDebouncingQueue *)self queue];
  [queue cancelAllOperations];

  v7 = objc_alloc_init(MEMORY[0x277CCA8C8]);
  objc_initWeak(&location, v7);
  objc_initWeak(&from, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__WLKDebouncingQueue_addOperationWithBlock___block_invoke;
  v10[3] = &unk_279E5E9E8;
  objc_copyWeak(&v12, &from);
  objc_copyWeak(&v13, &location);
  v8 = v5;
  v11 = v8;
  [v7 addExecutionBlock:v10];
  queue2 = [(WLKDebouncingQueue *)self queue];
  [queue2 addOperation:v7];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __44__WLKDebouncingQueue_addOperationWithBlock___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    usleep([WeakRetained delay]);
    v4 = objc_loadWeakRetained((a1 + 48));
    v5 = [v4 isCancelled];

    v6 = WLKSystemLogObject();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v8 = objc_loadWeakRetained((a1 + 48));
        v11 = 138412290;
        v12 = v8;
        _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKDebouncingQueue - Debouncing op. %@", &v11, 0xCu);
      }
    }

    else
    {
      if (v7)
      {
        v9 = objc_loadWeakRetained((a1 + 48));
        v11 = 138412290;
        v12 = v9;
        _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKDebouncingQueue - Running op. %@", &v11, 0xCu);
      }

      (*(*(a1 + 32) + 16))();
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end