@interface STAppRatingsAndExceptionsViewController
- (void)addChildViewController:(id)controller;
- (void)viewDidLoad;
@end

@implementation STAppRatingsAndExceptionsViewController

- (void)viewDidLoad
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  selfCopy = self;
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

- (void)addChildViewController:(id)controller
{
  v31[4] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  view = [controllerCopy view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  [controllerCopy willMoveToParentViewController:self];
  v30.receiver = self;
  v30.super_class = STAppRatingsAndExceptionsViewController;
  [(STAppRatingsAndExceptionsViewController *)&v30 addChildViewController:controllerCopy];
  view2 = [(STAppRatingsAndExceptionsViewController *)self view];
  view3 = [controllerCopy view];
  [view2 addSubview:view3];

  v20 = MEMORY[0x277CCAAD0];
  view4 = [controllerCopy view];
  leadingAnchor = [view4 leadingAnchor];
  view5 = [(STAppRatingsAndExceptionsViewController *)self view];
  leadingAnchor2 = [view5 leadingAnchor];
  v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v31[0] = v25;
  view6 = [controllerCopy view];
  trailingAnchor = [view6 trailingAnchor];
  view7 = [(STAppRatingsAndExceptionsViewController *)self view];
  trailingAnchor2 = [view7 trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v31[1] = v19;
  view8 = [controllerCopy view];
  topAnchor = [view8 topAnchor];
  view9 = [(STAppRatingsAndExceptionsViewController *)self view];
  topAnchor2 = [view9 topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v31[2] = v9;
  view10 = [controllerCopy view];
  bottomAnchor = [view10 bottomAnchor];
  view11 = [(STAppRatingsAndExceptionsViewController *)self view];
  bottomAnchor2 = [view11 bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v31[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
  [v20 activateConstraints:v15];

  [controllerCopy didMoveToParentViewController:self];
}

@end