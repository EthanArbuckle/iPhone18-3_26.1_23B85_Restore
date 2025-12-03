@interface TSBootstrapCrossPlatformTransferFlow
- (TSBootstrapCrossPlatformTransferFlow)initWithRetainedObject:(id)object isSource:(BOOL)source;
- (id)firstViewController;
- (id)nextViewControllerFrom:(id)from;
- (void)firstViewController;
- (void)firstViewController:(id)controller;
- (void)flowCompleted:(unint64_t)completed;
@end

@implementation TSBootstrapCrossPlatformTransferFlow

- (TSBootstrapCrossPlatformTransferFlow)initWithRetainedObject:(id)object isSource:(BOOL)source
{
  objectCopy = object;
  v19.receiver = self;
  v19.super_class = TSBootstrapCrossPlatformTransferFlow;
  v8 = [(TSSIMSetupFlow *)&v19 init];
  v9 = v8;
  if (v8)
  {
    v8->_isSource = source;
    v10 = objc_alloc(MEMORY[0x277CC37B0]);
    v11 = [v10 initWithQueue:MEMORY[0x277D85CD0]];
    client = v9->_client;
    v9->_client = v11;

    objc_storeStrong(&v9->_retainedObject, object);
    v9->_preWarmOngoing = 1;
    objc_initWeak(&location, v9);
    v13 = v9->_client;
    if (v9->_isSource)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __72__TSBootstrapCrossPlatformTransferFlow_initWithRetainedObject_isSource___block_invoke;
    v16[3] = &unk_279B44828;
    objc_copyWeak(&v17, &location);
    [(CoreTelephonyClient *)v13 activateCrossPlatformTransport:v14 completion:v16];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __72__TSBootstrapCrossPlatformTransferFlow_initWithRetainedObject_isSource___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    v8 = _TSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[TSBootstrapCrossPlatformTransferFlow initWithRetainedObject:isSource:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, "unable to get strong self @%s", &v11, 0xCu);
    }

    goto LABEL_10;
  }

  WeakRetained[120] = 0;
  if (!v3)
  {
    WeakRetained[121] = 1;
    if (!*(WeakRetained + 14))
    {
      goto LABEL_11;
    }

    v8 = MEMORY[0x2667315D0]();
    v9 = v5[14];
    v5[14] = 0;

    [v5 firstViewController:v8];
LABEL_10:

    goto LABEL_11;
  }

  v6 = _TSLogDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v3 localizedDescription];
    v11 = 138412546;
    v12 = v7;
    v13 = 2080;
    v14 = "[TSBootstrapCrossPlatformTransferFlow initWithRetainedObject:isSource:]_block_invoke";
    _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "bootstrapping CT failed with: %@ @%s", &v11, 0x16u);
  }

  *(v5 + 121) = 0;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
}

- (id)firstViewController
{
  v2 = _TSLogDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(TSBootstrapCrossPlatformTransferFlow *)v2 firstViewController];
  }

  return 0;
}

- (void)firstViewController:(id)controller
{
  controllerCopy = controller;
  v5 = controllerCopy;
  if (controllerCopy)
  {
    if (self->_preWarmOngoing)
    {
      v6 = MEMORY[0x2667315D0](controllerCopy);
      firstViewControllerCallback = self->_firstViewControllerCallback;
      self->_firstViewControllerCallback = v6;
    }

    else if (self->_dctPrewarmSucceded)
    {
      objc_initWeak(&location, self);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__TSBootstrapCrossPlatformTransferFlow_firstViewController___block_invoke;
      block[3] = &unk_279B44C58;
      objc_copyWeak(&v12, &location);
      v11 = v5;
      dispatch_async(MEMORY[0x277D85CD0], block);

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }

    else
    {
      retainedObject = self->_retainedObject;
      self->_retainedObject = 0;

      v5[2](v5, 0);
    }
  }

  else
  {
    v8 = _TSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [TSBootstrapCrossPlatformTransferFlow firstViewController:v8];
    }
  }
}

void __60__TSBootstrapCrossPlatformTransferFlow_firstViewController___block_invoke(uint64_t a1)
{
  v15[3] = *MEMORY[0x277D85DE8];
  v2 = [TSSubFlowViewController alloc];
  v15[0] = &unk_287583DD8;
  v14[0] = @"FlowTypeKey";
  v14[1] = @"IsSourceKey";
  v3 = MEMORY[0x277CCABB0];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 numberWithBool:{objc_msgSend(WeakRetained, "isSource")}];
  v15[1] = v5;
  v14[2] = @"IsFromDataTransferSession";
  v15[2] = MEMORY[0x277CBEC38];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v7 = objc_loadWeakRetained((a1 + 40));
  v8 = [(TSSubFlowViewController *)v2 initWithOptions:v6 navigationController:0 delegate:v7];

  v9 = objc_loadWeakRetained((a1 + 40));
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__TSBootstrapCrossPlatformTransferFlow_firstViewController___block_invoke_27;
  v11[3] = &unk_279B458D0;
  v12 = *(a1 + 32);
  objc_copyWeak(&v13, (a1 + 40));
  [v9 maybePrepareNextDisplayViewController:v8 completion:v11];

  objc_destroyWeak(&v13);
  v10 = *MEMORY[0x277D85DE8];
}

void __60__TSBootstrapCrossPlatformTransferFlow_firstViewController___block_invoke_27(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _TSLogDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    v10 = v3;
    v11 = 2080;
    v12 = "[TSBootstrapCrossPlatformTransferFlow firstViewController:]_block_invoke";
    _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_DEFAULT, "return vc %p to MK in firstViewController call @%s", &v9, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  if (!v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v6 = _TSLogDomain();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315138;
        v10 = "[TSBootstrapCrossPlatformTransferFlow firstViewController:]_block_invoke";
        _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "release retaind mk object @%s", &v9, 0xCu);
      }

      v7 = WeakRetained[13];
      WeakRetained[13] = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)nextViewControllerFrom:(id)from
{
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [fromCopy setSubFlow:0];
  }

  v7.receiver = self;
  v7.super_class = TSBootstrapCrossPlatformTransferFlow;
  v5 = [(TSSIMSetupFlow *)&v7 nextViewControllerFrom:fromCopy];

  return v5;
}

- (void)flowCompleted:(unint64_t)completed
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = TSBootstrapCrossPlatformTransferFlow;
  [(TSSIMSetupFlow *)&v8 flowCompleted:?];
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    completedCopy = completed;
    v11 = 2080;
    v12 = "[TSBootstrapCrossPlatformTransferFlow flowCompleted:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "FlowCompleted: %lu release retained mk object @%s", buf, 0x16u);
  }

  retainedObject = self->_retainedObject;
  self->_retainedObject = 0;

  v7 = *MEMORY[0x277D85DE8];
}

- (void)firstViewController
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSBootstrapCrossPlatformTransferFlow firstViewController]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]unimplemented - please use async version @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)firstViewController:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSBootstrapCrossPlatformTransferFlow firstViewController:]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]missing completion @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end