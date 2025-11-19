@interface PXStorageTipNavigationViewController
- (PXStorageTipNavigationViewController)init;
- (RecommendationFlowControllerDelegate)cloudRecommendationsDelegate;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)setPreferenceValue:(id)a3 specifier:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation PXStorageTipNavigationViewController

- (RecommendationFlowControllerDelegate)cloudRecommendationsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->cloudRecommendationsDelegate);

  return WeakRetained;
}

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)setPreferenceValue:(id)a3 specifier:(id)a4
{
  v5 = [a4 copy];
  preferenceValue = self->_preferenceValue;
  self->_preferenceValue = v5;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = PXStorageTipNavigationViewController;
  [(PXStorageTipNavigationViewController *)&v12 viewDidDisappear:a3];
  v4 = [(PXStorageTipNavigationViewController *)self presentingViewController];

  if (!v4)
  {
    v5 = [(PXStorageTipNavigationViewController *)self listViewController];
    v6 = [v5 storageRecovered];

    v7 = PLUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v14 = v6;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_INFO, "Storage recovered before clamping = %td", buf, 0xCu);
    }

    v8 = v6 & ~(v6 >> 63);
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v14 = v8;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_INFO, "Storage recovered given to cloud delegate = %td", buf, 0xCu);
    }

    v10 = [(PXStorageTipNavigationViewController *)self cloudRecommendationsDelegate];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
    [v10 userDidCompleteAction:v11];
  }
}

- (PXStorageTipNavigationViewController)init
{
  v3 = objc_alloc_init(PXStorageTipListViewController);
  v8.receiver = self;
  v8.super_class = PXStorageTipNavigationViewController;
  v4 = [(PXStorageTipNavigationViewController *)&v8 initWithRootViewController:v3];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v3 action:sel_dismiss];
    v6 = [(PXStorageTipListViewController *)v3 navigationItem];
    [v6 setRightBarButtonItem:v5];

    objc_storeStrong(&v4->_listViewController, v3);
  }

  return v4;
}

@end