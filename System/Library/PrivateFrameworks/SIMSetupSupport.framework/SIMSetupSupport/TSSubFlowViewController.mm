@interface TSSubFlowViewController
- (TSSIMSetupFlowDelegate)delegate;
- (TSSubFlowViewController)initWithFlow:(id)flow navigationController:(id)controller delegate:(id)delegate;
- (TSSubFlowViewController)initWithOptions:(id)options navigationController:(id)controller delegate:(id)delegate;
- (UIViewController)prevViewController;
- (void)_presentFirstViewController;
- (void)prepare:(id)prepare;
- (void)setDelegate:(id)delegate;
- (void)simSetupFlowCompleted:(unint64_t)completed;
- (void)takeScreenShot:(id)shot;
- (void)viewDidLoad;
@end

@implementation TSSubFlowViewController

- (TSSubFlowViewController)initWithOptions:(id)options navigationController:(id)controller delegate:(id)delegate
{
  delegateCopy = delegate;
  controllerCopy = controller;
  v10 = [TSSIMSetupFlow flowWithOptions:options];
  v11 = [(TSSubFlowViewController *)self initWithFlow:v10 navigationController:controllerCopy delegate:delegateCopy];

  return v11;
}

- (TSSubFlowViewController)initWithFlow:(id)flow navigationController:(id)controller delegate:(id)delegate
{
  flowCopy = flow;
  controllerCopy = controller;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = TSSubFlowViewController;
  v12 = [(TSSubFlowViewController *)&v16 initWithTitle:&stru_28753DF48 detailText:0 icon:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_subFlow, flow);
    [(TSSIMSetupFlow *)v13->_subFlow setDelegate:v13];
    v13->_subFlowType = [flowCopy flowType];
    [(TSSIMSetupFlow *)v13->_subFlow setNavigationController:controllerCopy];
    v13->_isViewControllerPresenting = 0;
    v13->_isViewControllerPresented = 0;
    [(TSSIMSetupFlow *)v13->_subFlow setParentFlow:delegateCopy];
    objc_storeWeak(&v13->_delegate, delegateCopy);
    v14 = v13;
  }

  return v13;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = objc_loadWeakRetained(&self->_delegate);

    if (v7 != delegateCopy)
    {
      v8 = _TSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [(TSSubFlowViewController *)delegateCopy setDelegate:v8];
      }
    }
  }

  objc_storeWeak(&self->_delegate, delegateCopy);
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)takeScreenShot:(id)shot
{
  shotCopy = shot;
  objc_storeWeak(&self->_prevViewController, shotCopy);
  view = [shotCopy view];

  v5 = [view snapshotViewAfterScreenUpdates:0];
  snapshot = self->_snapshot;
  self->_snapshot = v5;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = TSSubFlowViewController;
  [(TSOBWelcomeController *)&v5 viewDidLoad];
  if (self->_snapshot)
  {
    view = [(TSSubFlowViewController *)self view];
    [view addSubview:self->_snapshot];
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    [(TSSubFlowViewController *)self _presentFirstViewController];
  }

  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setHidesBackButton:1 animated:0];
}

- (void)_presentFirstViewController
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_firstViewController)
  {
    if (!self->_isViewControllerPresenting)
    {
      navigationController = [(TSSubFlowViewController *)self navigationController];

      if (navigationController)
      {
        self->_isViewControllerPresenting = 1;
        v4 = _TSLogDomain();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          firstViewController = self->_firstViewController;
          v8 = 138412546;
          v9 = firstViewController;
          v10 = 2080;
          v11 = "[TSSubFlowViewController _presentFirstViewController]";
          _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_DEFAULT, "presenting : %@ @%s", &v8, 0x16u);
        }

        navigationController2 = [(TSSubFlowViewController *)self navigationController];
        [navigationController2 pushViewController:self->_firstViewController animated:1];
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)prepare:(id)prepare
{
  prepareCopy = prepare;
  v5 = prepareCopy;
  if (self->_subFlow)
  {
    objc_initWeak(&location, self);
    subFlow = self->_subFlow;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_usingFirstViewControllerParadigm = 0;
      v7 = self->_subFlow;
      navigationController = [(TSSIMSetupFlow *)v7 navigationController];
      topViewController = [navigationController topViewController];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __35__TSSubFlowViewController_prepare___block_invoke;
      v15[3] = &unk_279B45618;
      v16 = v5;
      [(TSSIMSetupFlow *)v7 showFirstViewControllerWithHostController:topViewController completion:v15];
      v10 = &v16;
    }

    else
    {
      self->_usingFirstViewControllerParadigm = 1;
      v11 = self->_subFlow;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __35__TSSubFlowViewController_prepare___block_invoke_2;
      v12[3] = &unk_279B458D0;
      v13 = v5;
      objc_copyWeak(&v14, &location);
      [(TSSIMSetupFlow *)v11 firstViewController:v12];
      v10 = &v13;
      objc_destroyWeak(&v14);
    }

    objc_destroyWeak(&location);
  }

  else
  {
    (*(prepareCopy + 2))(prepareCopy, 0);
  }
}

void __35__TSSubFlowViewController_prepare___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setFirstViewController:v4];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)simSetupFlowCompleted:(unint64_t)completed
{
  v25 = *MEMORY[0x277D85DE8];
  subFlow = [(TSSubFlowViewController *)self subFlow];
  parentFlow = [subFlow parentFlow];
  if (parentFlow)
  {
    v7 = parentFlow;
    subFlow2 = [(TSSubFlowViewController *)self subFlow];
    parentFlow2 = [subFlow2 parentFlow];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    if (parentFlow2 == WeakRetained)
    {
      goto LABEL_6;
    }

    subFlow = _TSLogDomain();
    if (os_log_type_enabled(subFlow, OS_LOG_TYPE_FAULT))
    {
      [(TSSubFlowViewController *)self simSetupFlowCompleted:subFlow];
    }
  }

LABEL_6:
  v11 = _TSLogDomain();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    subFlow = self->_subFlow;
    v13 = objc_loadWeakRetained(&self->_delegate);
    v17 = 138413058;
    v18 = subFlow;
    v19 = 2048;
    completedCopy = completed;
    v21 = 2112;
    v22 = v13;
    v23 = 2080;
    v24 = "[TSSubFlowViewController simSetupFlowCompleted:]";
    _os_log_impl(&dword_262AA8000, v11, OS_LOG_TYPE_DEFAULT, "sub flow %@ completed with type:%ld, delegate: %@ @%s", &v17, 0x2Au);
  }

  if (completed == 3)
  {
    v14 = objc_loadWeakRetained(&self->_delegate);
    [v14 attemptFailed];
    goto LABEL_17;
  }

  if (completed == 2)
  {
LABEL_16:
    v14 = objc_loadWeakRetained(&self->_delegate);
    [v14 viewControllerDidComplete:self];
    goto LABEL_17;
  }

  if (completed != 1)
  {
    v15 = _TSLogDomain();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [TSSubFlowViewController simSetupFlowCompleted:v15];
    }

    goto LABEL_16;
  }

  v14 = objc_loadWeakRetained(&self->_delegate);
  [v14 userDidTapCancel];
LABEL_17:

  v16 = *MEMORY[0x277D85DE8];
}

- (UIViewController)prevViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_prevViewController);

  return WeakRetained;
}

- (void)setDelegate:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2080;
  v6 = "[TSSubFlowViewController setDelegate:]";
  _os_log_fault_impl(&dword_262AA8000, a2, OS_LOG_TYPE_FAULT, "[F]unexpect change of delegate: %@ @%s", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)simSetupFlowCompleted:(NSObject *)a3 .cold.1(void *a1, id *a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = [a1 subFlow];
  v6 = [v5 parentFlow];
  WeakRetained = objc_loadWeakRetained(a2);
  v9 = 138412802;
  v10 = v6;
  v11 = 2112;
  v12 = WeakRetained;
  v13 = 2080;
  v14 = "[TSSubFlowViewController simSetupFlowCompleted:]";
  _os_log_fault_impl(&dword_262AA8000, a3, OS_LOG_TYPE_FAULT, "[F]delegate is wrong. expected: %@, actual: %@ @%s", &v9, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)simSetupFlowCompleted:(os_log_t)log .cold.2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSSubFlowViewController simSetupFlowCompleted:]";
  _os_log_fault_impl(&dword_262AA8000, log, OS_LOG_TYPE_FAULT, "[F]unhandled completion type @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end