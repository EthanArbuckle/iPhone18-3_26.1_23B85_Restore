@interface ConvertToESIMSpecifierCache
- (ConvertToESIMSpecifierCache)initWithDelegate:(id)a3 isViewControllerPopNeeded:(BOOL)a4 odcFlow:(id)a5 delegate:(id)a6 iccid:(id)a7;
- (UINavigationController)navigationController;
- (void)dealloc;
- (void)simSetupFlowCompleted:(unint64_t)a3;
@end

@implementation ConvertToESIMSpecifierCache

- (ConvertToESIMSpecifierCache)initWithDelegate:(id)a3 isViewControllerPopNeeded:(BOOL)a4 odcFlow:(id)a5 delegate:(id)a6 iccid:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [(ConvertToESIMSpecifierCache *)self getLogger];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, v16, OS_LOG_TYPE_DEFAULT, "in initWithSpecifer for ConvertToESIMSpecifierCache\n", buf, 2u);
  }

  v20.receiver = self;
  v20.super_class = ConvertToESIMSpecifierCache;
  v17 = [(ConvertToESIMSpecifierCache *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_navigationController, v12);
    objc_storeStrong(&v18->_flow, a5);
    v18->_isViewControllerPopNeeded = a4;
    objc_storeStrong(&v18->_iccid, a7);
    objc_storeStrong(&v18->_delegate, a6);
    [(TSSIMSetupFlow *)v18->_flow setDelegate:v18];
  }

  return v18;
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(ConvertToESIMSpecifierCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    flow = self->_flow;
    *buf = 138412290;
    v9 = flow;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "ODC complete releasing SS flow: %@", buf, 0xCu);
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self];

  v7.receiver = self;
  v7.super_class = ConvertToESIMSpecifierCache;
  [(ConvertToESIMSpecifierCache *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)simSetupFlowCompleted:(unint64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [(ConvertToESIMSpecifierCache *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = a3;
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "ConvertToESIMSpecifierCache simSetupFlowCompleted with completionType:%ld", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ConvertToESIMSpecifierCache_simSetupFlowCompleted___block_invoke;
  block[3] = &unk_279BA9FE0;
  objc_copyWeak(v8, buf);
  v8[1] = a3;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(v8);
  objc_destroyWeak(buf);
  v6 = *MEMORY[0x277D85DE8];
}

void __53__ConvertToESIMSpecifierCache_simSetupFlowCompleted___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(WeakRetained + 4);
    [v4 dismissViewControllerAnimated:1 completion:0];

    v5 = *(a1 + 48);
    if (v5 == 1)
    {
      v6 = [*(a1 + 32) getLogger];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2658DE000, v6, OS_LOG_TYPE_DEFAULT, "ConvertToESIMSpecifierCache The odc flow was canceled", buf, 2u);
      }

      [v3[2] odcCanceled:v3[5]];
      v5 = *(a1 + 48);
    }

    if (v5 == 3)
    {
      v7 = [*(a1 + 32) getLogger];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_2658DE000, v7, OS_LOG_TYPE_DEFAULT, "ConvertToESIMSpecifierCache The odc flow failed", v11, 2u);
      }

      [v3[2] odcFailed:v3[5]];
      v5 = *(a1 + 48);
    }

    if (v5 == 2)
    {
      v8 = [*(a1 + 32) getLogger];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10[0] = 0;
        _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, "ConvertToESIMSpecifierCache The odc flow succeeded", v10, 2u);
      }

      [v3[2] odcSuccess:v3[5] isViewControllerPopNeeded:*(v3 + 8)];
    }

    v9 = v3[3];
    v3[3] = 0;

    objc_storeWeak(v3 + 4, 0);
    *(v3 + 8) = 0;
  }
}

- (UINavigationController)navigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);

  return WeakRetained;
}

@end