@interface WFSmartPromptDialogViewController
- (NSArray)actions;
- (UIStackView)sourceDestinationView;
- (void)finishWithResult:(unint64_t)a3;
- (void)loadContentCollection;
- (void)loadView;
@end

@implementation WFSmartPromptDialogViewController

- (UIStackView)sourceDestinationView
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceDestinationView);

  return WeakRetained;
}

- (void)finishWithResult:(unint64_t)a3
{
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [(WFCompactDialogViewController *)self request];
  v7 = [v6 configuration];
  v8 = [v7 deletionAuthorizationState];

  v9 = MEMORY[0x277D7C8F0];
  v10 = [(WFCompactDialogViewController *)self request];
  v11 = [v10 configuration];
  if (v8)
  {
    v17 = 0;
    v12 = [v9 prepareDeletionAuthorizationDatabaseDataFromConfiguration:v11 resultCode:a3 error:&v17];
    v13 = v17;
    [v5 addObject:v12];
  }

  else
  {
    v16 = 0;
    v12 = [v9 prepareSmartPromptsDatabaseDataFromConfiguration:v11 resultCode:a3 error:&v16];
    v13 = v16;
    v14 = [v12 mutableCopy];

    v5 = v14;
  }

  v15 = [objc_alloc(MEMORY[0x277D7C8F0]) initWithResult:a3 promptedStatesData:v5];
  [(WFCompactDialogViewController *)self finishWithResponse:v15];
}

- (void)loadContentCollection
{
  v3 = [(WFSmartPromptDialogViewController *)self dataSource];

  if (!v3)
  {
    v4 = [(WFCompactDialogViewController *)self request];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __58__WFSmartPromptDialogViewController_loadContentCollection__block_invoke;
    v5[3] = &unk_279EE83B0;
    v5[4] = self;
    [v4 getContentCollectionWithCompletionHandler:v5];
  }
}

void __58__WFSmartPromptDialogViewController_loadContentCollection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setDataSource:v3];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__WFSmartPromptDialogViewController_loadContentCollection__block_invoke_2;
  v6[3] = &unk_279EE8C58;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __58__WFSmartPromptDialogViewController_loadContentCollection__block_invoke_2(uint64_t a1)
{
  v31[4] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) numberOfItems])
  {
    v29 = objc_opt_new();
    [*(a1 + 40) setContentViewController:v29];
    v2 = [*(a1 + 40) dataSource];
    v3 = [WFSmartPromptHostingControllerFactory makeHostingController:v2];

    v4 = [*(a1 + 40) contentViewController];
    [v4 addChildViewController:v3];

    v5 = [*(a1 + 40) contentViewController];
    v6 = [v5 view];

    v7 = [v3 view];
    [v6 addSubview:v7];
    v28 = v3;
    v8 = [v3 view];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

    v9 = [MEMORY[0x277D75348] clearColor];
    v10 = [v3 view];
    [v10 setBackgroundColor:v9];

    v21 = MEMORY[0x277CCAAD0];
    v26 = [v7 topAnchor];
    v25 = [v6 topAnchor];
    v24 = [v26 constraintEqualToAnchor:v25];
    v31[0] = v24;
    v23 = [v7 bottomAnchor];
    v22 = [v6 bottomAnchor];
    v11 = [v23 constraintEqualToAnchor:v22];
    v31[1] = v11;
    v12 = [v7 leftAnchor];
    v27 = v6;
    v13 = [v6 leftAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v31[2] = v14;
    v15 = [v7 rightAnchor];
    v16 = [v6 rightAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    v31[3] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
    [v21 activateConstraints:v18];

    v19 = [*(a1 + 40) contentViewController];
    [v28 didMoveToParentViewController:v19];

    [*(a1 + 40) invalidateContentSize];
    v20 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__WFSmartPromptDialogViewController_loadContentCollection__block_invoke_3;
    block[3] = &unk_279EE8A78;
    block[4] = *(a1 + 40);
    dispatch_after(v20, MEMORY[0x277D85CD0], block);
  }
}

- (void)loadView
{
  v11.receiver = self;
  v11.super_class = WFSmartPromptDialogViewController;
  [(WFCompactDialogViewController *)&v11 loadView];
  v3 = [(WFSmartPromptDialogViewController *)self actions];
  v4 = [v3 count] > 2;
  v5 = [(WFCompactPlatterViewController *)self platterView];
  [v5 setArrangeActionsVertically:v4];

  v6 = [(WFCompactPlatterViewController *)self platterView];
  v7 = [(WFCompactDialogViewController *)self request];
  v8 = [v7 secondaryText];
  [v6 setSecondaryText:v8];

  v9 = [(WFCompactPlatterViewController *)self platterView];
  [v9 setSecondaryTextAlignment:1];

  v10 = [(WFCompactPlatterViewController *)self platterView];
  [v10 setSecondaryTextFontStyle:*MEMORY[0x277D76968]];

  [(WFCompactDialogViewController *)self configureActionGroupWithActions:v3];
  [(WFSmartPromptDialogViewController *)self loadContentCollection];
}

- (NSArray)actions
{
  actions = self->_actions;
  if (actions)
  {
    v3 = actions;
  }

  else
  {
    objc_initWeak(location, self);
    v3 = objc_opt_new();
    v5 = [(WFCompactDialogViewController *)self request];
    v6 = [v5 previewButton];

    if (v6)
    {
      v7 = [(WFCompactDialogViewController *)self request];
      v8 = [v7 previewButton];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __44__WFSmartPromptDialogViewController_actions__block_invoke;
      v35[3] = &unk_279EE8908;
      objc_copyWeak(&v36, location);
      v9 = [WFCompactDialogAction actionForButton:v8 handler:v35];
      [(NSArray *)v3 addObject:v9];

      objc_destroyWeak(&v36);
    }

    v10 = [(WFCompactDialogViewController *)self request];
    v11 = [v10 allowOnceButton];

    if (v11)
    {
      v12 = [(WFCompactDialogViewController *)self request];
      v13 = [v12 allowOnceButton];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __44__WFSmartPromptDialogViewController_actions__block_invoke_3;
      v33[3] = &unk_279EE8908;
      objc_copyWeak(&v34, location);
      v14 = [WFCompactDialogAction actionForButton:v13 handler:v33];
      [(NSArray *)v3 addObject:v14];

      objc_destroyWeak(&v34);
    }

    v15 = [(WFCompactDialogViewController *)self request];
    v16 = [v15 allowAlwaysButton];

    if (v16)
    {
      v17 = [(WFCompactDialogViewController *)self request];
      v18 = [v17 allowAlwaysButton];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __44__WFSmartPromptDialogViewController_actions__block_invoke_4;
      v31[3] = &unk_279EE8908;
      objc_copyWeak(&v32, location);
      v19 = [WFCompactDialogAction actionForButton:v18 handler:v31];
      [(NSArray *)v3 addObject:v19];

      objc_destroyWeak(&v32);
    }

    v20 = [(WFCompactDialogViewController *)self request];
    v21 = [v20 denyButton];

    if (v21)
    {
      v22 = [(WFCompactDialogViewController *)self request];
      v23 = [v22 denyButton];
      v26 = MEMORY[0x277D85DD0];
      v27 = 3221225472;
      v28 = __44__WFSmartPromptDialogViewController_actions__block_invoke_5;
      v29 = &unk_279EE8908;
      objc_copyWeak(&v30, location);
      v24 = [WFCompactDialogAction actionForButton:v23 handler:&v26];
      [(NSArray *)v3 addObject:v24, v26, v27, v28, v29];

      objc_destroyWeak(&v30);
    }

    objc_storeStrong(&self->_actions, v3);
    objc_destroyWeak(location);
  }

  return v3;
}

void __44__WFSmartPromptDialogViewController_actions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained dataSource];
  v3 = objc_alloc_init(MEMORY[0x277D7BDE0]);
  [v3 setDelegate:WeakRetained];
  [v3 setDataSource:v2];
  [v3 setModalPresentationStyle:2];
  [v3 setOverrideParentApplicationDisplayIdentifier:*MEMORY[0x277D7A338]];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v4 = [v2 items];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__WFSmartPromptDialogViewController_actions__block_invoke_2;
  v5[3] = &unk_279EE8BE0;
  v5[4] = &v10;
  v5[5] = &v6;
  [v4 enumerateObjectsUsingBlock:v5];

  [v3 setIsContentManaged:v7[3] > v11[3]];
  [WeakRetained presentViewController:v3 animated:1 completion:0];
  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
}

void __44__WFSmartPromptDialogViewController_actions__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finishWithResult:2];
}

void __44__WFSmartPromptDialogViewController_actions__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finishWithResult:1];
}

void __44__WFSmartPromptDialogViewController_actions__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained request];
  v2 = [v1 denyButton];
  v3 = [v2 identifier];
  v4 = [v3 isEqualToString:*MEMORY[0x277D7CFC8]];

  if (v4)
  {
    v5 = 5;
  }

  else
  {
    v5 = 0;
  }

  [WeakRetained finishWithResult:v5];
}

void __44__WFSmartPromptDialogViewController_actions__block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 attributionSet];
  v4 = [v3 isAllowedToBeSentToDestinationWithManagedLevel:1];

  if (v4)
  {
    v5 = 32;
    v6 = v9;
  }

  else
  {
    v7 = [v9 attributionSet];
    v8 = [v7 isAllowedToBeSentToDestinationWithManagedLevel:2];

    v6 = v9;
    if (!v8)
    {
      goto LABEL_6;
    }

    v5 = 40;
  }

  ++*(*(*(a1 + v5) + 8) + 24);
LABEL_6:
}

@end