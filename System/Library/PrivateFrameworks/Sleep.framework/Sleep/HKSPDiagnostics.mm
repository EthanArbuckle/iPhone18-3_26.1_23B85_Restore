@interface HKSPDiagnostics
- (HKSPDiagnostics)initWithLabel:(id)a3;
- (void)_registerStateHandler;
- (void)addProvider:(id)a3;
- (void)removeProvider:(id)a3;
@end

@implementation HKSPDiagnostics

- (HKSPDiagnostics)initWithLabel:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HKSPDiagnostics;
  v5 = [(HKSPDiagnostics *)&v14 init];
  if (v5)
  {
    v6 = [v4 copy];
    label = v5->_label;
    v5->_label = v6;

    v8 = [HKSPObserverSet alloc];
    v9 = [MEMORY[0x277D2C938] immediateScheduler];
    v10 = [(HKSPObserverSet *)v8 initWithCallbackScheduler:v9];
    providers = v5->_providers;
    v5->_providers = v10;

    [(HKSPDiagnostics *)v5 _registerStateHandler];
    v12 = v5;
  }

  return v5;
}

- (void)addProvider:(id)a3
{
  if (a3)
  {
    [(HKSPObserverSet *)self->_providers addObserver:?];
  }
}

- (void)removeProvider:(id)a3
{
  if (a3)
  {
    [(HKSPObserverSet *)self->_providers removeObserver:?];
  }
}

- (void)_registerStateHandler
{
  objc_initWeak(&location, self);
  v2 = dispatch_get_global_queue(0, 0);
  objc_copyWeak(&v3, &location);
  os_state_add_handler();

  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

_DWORD *__40__HKSPDiagnostics__registerStateHandler__block_invoke(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*(a2 + 16) == 3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = HKSPLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = objc_opt_class();
      v7 = v26;
      _os_log_impl(&dword_269A84000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] processing os_state handler", buf, 0xCu);
    }

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = WeakRetained[2];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __40__HKSPDiagnostics__registerStateHandler__block_invoke_294;
    v23[3] = &unk_279C73D98;
    v10 = v8;
    v24 = v10;
    [v9 enumerateObserversWithBlock:v23];
    v22 = 0;
    v11 = [MEMORY[0x277CCAC58] dataWithPropertyList:v10 format:200 options:0 error:&v22];
    v12 = v22;
    v13 = [v11 length];
    if (v12)
    {
      v14 = HKSPLogForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v20 = objc_opt_class();
        *buf = 138543618;
        v26 = v20;
        v27 = 2114;
        v28 = v12;
        v21 = v20;
        _os_log_error_impl(&dword_269A84000, v14, OS_LOG_TYPE_ERROR, "[%{public}@] error serializing state data: %{public}@", buf, 0x16u);
      }

      v15 = 0;
    }

    else
    {
      v16 = v13;
      v17 = v13;
      v15 = malloc_type_calloc(1uLL, v13 + 200, 0x1000040BEF03554uLL);
      *v15 = 1;
      v15[1] = v16;
      [*(*(a1 + 32) + 8) UTF8String];
      __strlcpy_chk();
      memcpy(v15 + 50, [v11 bytes], v17);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v15 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

void __40__HKSPDiagnostics__registerStateHandler__block_invoke_294(uint64_t a1, void *a2)
{
  v9 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [v9 diagnosticInfo];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = MEMORY[0x277CBEC10];
    }

    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v6 setObject:v5 forKeyedSubscript:v8];
  }
}

@end