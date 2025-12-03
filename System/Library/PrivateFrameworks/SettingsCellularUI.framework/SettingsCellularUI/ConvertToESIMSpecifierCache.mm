@interface ConvertToESIMSpecifierCache
- (ConvertToESIMSpecifierCache)initWithDelegate:(id)delegate isViewControllerPopNeeded:(BOOL)needed odcFlow:(id)flow delegate:(id)a6 iccid:(id)iccid;
- (UINavigationController)navigationController;
- (void)dealloc;
- (void)simSetupFlowCompleted:(unint64_t)completed;
@end

@implementation ConvertToESIMSpecifierCache

- (ConvertToESIMSpecifierCache)initWithDelegate:(id)delegate isViewControllerPopNeeded:(BOOL)needed odcFlow:(id)flow delegate:(id)a6 iccid:(id)iccid
{
  delegateCopy = delegate;
  flowCopy = flow;
  v14 = a6;
  iccidCopy = iccid;
  getLogger = [(ConvertToESIMSpecifierCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "in initWithSpecifer for ConvertToESIMSpecifierCache\n", buf, 2u);
  }

  v20.receiver = self;
  v20.super_class = ConvertToESIMSpecifierCache;
  v17 = [(ConvertToESIMSpecifierCache *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_navigationController, delegateCopy);
    objc_storeStrong(&v18->_flow, flow);
    v18->_isViewControllerPopNeeded = needed;
    objc_storeStrong(&v18->_iccid, iccid);
    objc_storeStrong(&v18->_delegate, a6);
    [(TSSIMSetupFlow *)v18->_flow setDelegate:v18];
  }

  return v18;
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  getLogger = [(ConvertToESIMSpecifierCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    flow = self->_flow;
    *buf = 138412290;
    v9 = flow;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "ODC complete releasing SS flow: %@", buf, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v7.receiver = self;
  v7.super_class = ConvertToESIMSpecifierCache;
  [(ConvertToESIMSpecifierCache *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)simSetupFlowCompleted:(unint64_t)completed
{
  v11 = *MEMORY[0x277D85DE8];
  getLogger = [(ConvertToESIMSpecifierCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    completedCopy = completed;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "ConvertToESIMSpecifierCache simSetupFlowCompleted with completionType:%ld", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ConvertToESIMSpecifierCache_simSetupFlowCompleted___block_invoke;
  block[3] = &unk_279BA9FE0;
  objc_copyWeak(v8, buf);
  v8[1] = completed;
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