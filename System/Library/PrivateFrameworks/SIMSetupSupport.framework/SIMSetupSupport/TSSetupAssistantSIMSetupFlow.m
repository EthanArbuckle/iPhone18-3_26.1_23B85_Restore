@interface TSSetupAssistantSIMSetupFlow
+ (void)needsToRun:(id)a3;
- (TSSetupAssistantSIMSetupFlow)init;
- (TSSetupAssistantSIMSetupFlow)initWithIccid:(id)a3 showAddPlan:(BOOL)a4 forceDualSIMSetup:(BOOL)a5 allowDismiss:(BOOL)a6;
- (id)firstViewController;
- (id)nextViewControllerFrom:(id)a3;
- (void)dealloc;
- (void)firstViewController:(id)a3;
- (void)setCancelNavigationBarItems:(id)a3;
@end

@implementation TSSetupAssistantSIMSetupFlow

+ (void)needsToRun:(id)a3
{
  v3 = a3;
  if (v3)
  {
    if (+[TSUtilities hasCellularBaseband])
    {
      v4 = +[TSCellularPlanManagerCache sharedInstance];
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __43__TSSetupAssistantSIMSetupFlow_needsToRun___block_invoke;
      v5[3] = &unk_279B44E98;
      v6 = v3;
      [v4 planItemsWithCompletion:v5];
    }

    else
    {
      (*(v3 + 2))(v3, 0);
    }
  }
}

void __43__TSSetupAssistantSIMSetupFlow_needsToRun___block_invoke(uint64_t a1)
{
  v2 = +[TSCellularPlanManagerCache sharedInstance];
  [v2 shouldShowPlanSetupWithCompletion:*(a1 + 32)];
}

- (TSSetupAssistantSIMSetupFlow)init
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = TSSetupAssistantSIMSetupFlow;
  v2 = [(TSSIMSetupFlow *)&v8 init];
  if (v2)
  {
    v2->_inBuddy = BYSetupAssistantNeedsToRun();
    v3 = _TSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      inBuddy = v2->_inBuddy;
      *buf = 67109378;
      v10 = inBuddy;
      v11 = 2080;
      v12 = "[TSSetupAssistantSIMSetupFlow init]";
      _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "_inBuddy:%d @%s", buf, 0x12u);
    }

    v5 = +[TSUserInPurchaseFlowAssertion sharedInstance];
    [v5 assertUserInPurchaseFlowStartOver:0 caller:v2];
  }

  v6 = *MEMORY[0x277D85DE8];
  return v2;
}

- (TSSetupAssistantSIMSetupFlow)initWithIccid:(id)a3 showAddPlan:(BOOL)a4 forceDualSIMSetup:(BOOL)a5 allowDismiss:(BOOL)a6
{
  v6 = a6;
  v23 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = _TSLogDomain();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v20[0] = 67109378;
    v20[1] = v6;
    v21 = 2080;
    v22 = "[TSSetupAssistantSIMSetupFlow initWithIccid:showAddPlan:forceDualSIMSetup:allowDismiss:]";
    _os_log_impl(&dword_262AA8000, v12, OS_LOG_TYPE_DEFAULT, "allowDismiss: %d @%s", v20, 0x12u);
  }

  v13 = [(TSSetupAssistantSIMSetupFlow *)self init];
  v14 = v13;
  if (v13)
  {
    v13->_showAddPlan = a4;
    objc_storeStrong(&v13->_iccid, a3);
    v14->_forceDualSIMSetup = a5;
    if (v6)
    {
      v15 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v14 action:sel_userDidTapCancel];
      cancelButton = v14->_cancelButton;
      v14->_cancelButton = v15;
    }

    v17 = +[TSUserInPurchaseFlowAssertion sharedInstance];
    [v17 assertUserInPurchaseFlowStartOver:0 caller:v14];
  }

  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)dealloc
{
  v3 = +[TSUserInPurchaseFlowAssertion sharedInstance];
  [v3 deassertUserInPurchaseFlowWithForce:0 caller:self];

  v4.receiver = self;
  v4.super_class = TSSetupAssistantSIMSetupFlow;
  [(TSSetupAssistantSIMSetupFlow *)&v4 dealloc];
}

- (id)firstViewController
{
  v12 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = [[TSAddCellularPlanViewController alloc] initWithType:!self->_showAddPlan allowDismiss:self->_cancelButton != 0];
  [(TSAddCellularPlanViewController *)v3 setDelegate:self];
  v4 = _TSLogDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = objc_opt_class();
    v10 = 2080;
    v11 = "[TSSetupAssistantSIMSetupFlow firstViewController]";
    v5 = v9;
    _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_DEFAULT, "first view: %@ @%s", &v8, 0x16u);
  }

  [(TSSIMSetupFlow *)self setTopViewController:v3];
  v6 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)firstViewController:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (+[TSUtilities isPad])
    {
      v4[2](v4, 0);
    }

    else
    {
      objc_initWeak(&location, self);
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __52__TSSetupAssistantSIMSetupFlow_firstViewController___block_invoke;
      v5[3] = &unk_279B44EE8;
      v6 = v4;
      objc_copyWeak(&v7, &location);
      [TSSetupAssistantSIMSetupFlow needsToRun:v5];
      objc_destroyWeak(&v7);

      objc_destroyWeak(&location);
    }
  }
}

void __52__TSSetupAssistantSIMSetupFlow_firstViewController___block_invoke(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__TSSetupAssistantSIMSetupFlow_firstViewController___block_invoke_2;
  block[3] = &unk_279B44EC0;
  v6 = a2;
  v4 = *(a1 + 32);
  objc_copyWeak(&v5, (a1 + 40));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v5);
}

void __52__TSSetupAssistantSIMSetupFlow_firstViewController___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = WeakRetained;
    if (WeakRetained)
    {
      *(WeakRetained + 97) = 1;
      v3 = *(a1 + 32);
      v4 = objc_loadWeakRetained((a1 + 40));
      v5 = [v4 firstViewController];
      (*(v3 + 16))(v3, v5);
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(*(a1 + 32) + 16);

    v7();
  }
}

- (id)nextViewControllerFrom:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[TSCellularPlanLabelsViewController alloc] initWithIccid:self->_iccid forceDualSIMSetup:self->_forceDualSIMSetup allowDismiss:self->_cancelButton != 0];
LABEL_7:
    v9 = v5;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [TSCellularPlanUsesViewController alloc];
    v7 = 0;
LABEL_5:
    v8 = 0;
LABEL_6:
    v5 = [(TSCellularPlanUsesViewController *)v6 initWithType:v7 withDoneButton:v8];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v4 usesType];
    if (v11 == 2)
    {
      v18 = MEMORY[0x277CBEB18];
      v19 = +[TSCellularPlanManagerCache sharedInstance];
      v20 = [v19 getDanglingPlanItems];
      v21 = [v18 arrayWithArray:v20];
      danglingPlanItems = self->_danglingPlanItems;
      self->_danglingPlanItems = v21;

      v23 = [TSCellularPlanUsesViewController alloc];
      if ([(NSMutableArray *)self->_danglingPlanItems count])
      {
        v8 = 0;
      }

      else
      {
        v8 = self->_cancelButton != 0;
      }

      v6 = v23;
      v7 = 1;
      goto LABEL_6;
    }

    if (v11 != 1)
    {
      if (!v11)
      {
        v6 = [TSCellularPlanUsesViewController alloc];
        v7 = 2;
        goto LABEL_5;
      }

      goto LABEL_22;
    }

    if ([(NSMutableArray *)self->_danglingPlanItems count])
    {
      v17 = [TSCellularPlanRemapViewController alloc];
      v13 = [(NSMutableArray *)self->_danglingPlanItems count]> 1;
      v14 = [(NSMutableArray *)self->_danglingPlanItems objectAtIndex:0];
      v15 = v17;
      v16 = 1;
      goto LABEL_21;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(NSMutableArray *)self->_danglingPlanItems count]>= 2)
    {
      [(NSMutableArray *)self->_danglingPlanItems removeObjectAtIndex:0];
      v12 = [TSCellularPlanRemapViewController alloc];
      v13 = [(NSMutableArray *)self->_danglingPlanItems count]> 1;
      v14 = [(NSMutableArray *)self->_danglingPlanItems objectAtIndex:0];
      v15 = v12;
      v16 = 0;
LABEL_21:
      v9 = [(TSCellularPlanRemapViewController *)v15 initWithBackButton:v16 continueButton:v13 danglingPlanItem:v14];

      goto LABEL_8;
    }
  }

LABEL_22:
  v9 = 0;
LABEL_8:

  return v9;
}

- (void)setCancelNavigationBarItems:(id)a3
{
  if (self->_cancelButton)
  {
    v4 = a3;
    v5 = [v4 navigationItem];
    [v5 setHidesBackButton:1 animated:0];

    v6 = [v4 navigationItem];

    [v6 setLeftBarButtonItem:self->_cancelButton];
  }
}

@end