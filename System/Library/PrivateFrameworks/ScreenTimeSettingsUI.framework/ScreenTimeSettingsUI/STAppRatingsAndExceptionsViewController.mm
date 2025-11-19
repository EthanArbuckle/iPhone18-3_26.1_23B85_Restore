@interface STAppRatingsAndExceptionsViewController
- (void)addChildViewController:(id)a3;
- (void)viewDidLoad;
@end

@implementation STAppRatingsAndExceptionsViewController

- (void)viewDidLoad
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_264BA2000, log, OS_LOG_TYPE_ERROR, "Cannot create AppRatings&Exceptions content controller. Coordinator:%{public}@ controller: %{public}@", &v3, 0x16u);
}

void __54__STAppRatingsAndExceptionsViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained st_shouldShowPINSheetForPINSpecifier];

  if (v5)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__STAppRatingsAndExceptionsViewController_viewDidLoad__block_invoke_2;
    v7[3] = &unk_279B7DA58;
    v8 = v3;
    [v6 st_showPINSheetWithCompletion:v7];
  }

  else
  {
    v3[2](v3);
  }
}

void __54__STAppRatingsAndExceptionsViewController_viewDidLoad__block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v5 = +[STUILog contentPrivacy];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_264BA2000, v5, OS_LOG_TYPE_DEFAULT, "Did not enter PIN successfully for app ratings and exceptions", v6, 2u);
    }
  }
}

- (void)addChildViewController:(id)a3
{
  v31[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 view];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  [v4 willMoveToParentViewController:self];
  v30.receiver = self;
  v30.super_class = STAppRatingsAndExceptionsViewController;
  [(STAppRatingsAndExceptionsViewController *)&v30 addChildViewController:v4];
  v6 = [(STAppRatingsAndExceptionsViewController *)self view];
  v7 = [v4 view];
  [v6 addSubview:v7];

  v20 = MEMORY[0x277CCAAD0];
  v29 = [v4 view];
  v27 = [v29 leadingAnchor];
  v28 = [(STAppRatingsAndExceptionsViewController *)self view];
  v26 = [v28 leadingAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v31[0] = v25;
  v24 = [v4 view];
  v22 = [v24 trailingAnchor];
  v23 = [(STAppRatingsAndExceptionsViewController *)self view];
  v21 = [v23 trailingAnchor];
  v19 = [v22 constraintEqualToAnchor:v21];
  v31[1] = v19;
  v18 = [v4 view];
  v16 = [v18 topAnchor];
  v17 = [(STAppRatingsAndExceptionsViewController *)self view];
  v8 = [v17 topAnchor];
  v9 = [v16 constraintEqualToAnchor:v8];
  v31[2] = v9;
  v10 = [v4 view];
  v11 = [v10 bottomAnchor];
  v12 = [(STAppRatingsAndExceptionsViewController *)self view];
  v13 = [v12 bottomAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v31[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
  [v20 activateConstraints:v15];

  [v4 didMoveToParentViewController:self];
}

@end