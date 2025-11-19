@interface PKEnhancedMerchantsViewController
- (PKEnhancedMerchantsViewController)initWithAccount:(id)a3 accountService:(id)a4 paymentPass:(id)a5 enhancedMerchantsFetcher:(id)a6;
- (id)_nonNilSections;
- (void)navigateToRewardsHubDestination:(int64_t)a3;
- (void)openURL:(id)a3 sensitive:(BOOL)a4 preferInApp:(BOOL)a5;
- (void)preflightWithCompletion:(id)a3;
- (void)presentDisplayableError:(id)a3;
- (void)reportEventIfNecessary:(id)a3;
- (void)scrollToMerchantWithPrivateIdentifier:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PKEnhancedMerchantsViewController

- (PKEnhancedMerchantsViewController)initWithAccount:(id)a3 accountService:(id)a4 paymentPass:(id)a5 enhancedMerchantsFetcher:(id)a6
{
  v24[2] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = PKEnhancedMerchantsViewController;
  v15 = [(PKDynamicCollectionViewController *)&v22 init];
  v16 = v15;
  if (v15)
  {
    [(PKDynamicCollectionViewController *)v15 setUseItemIdentityWhenUpdating:1];
    objc_storeStrong(&v16->_account, a3);
    objc_storeStrong(&v16->_accountService, a4);
    objc_storeStrong(&v16->_paymentPass, a5);
    objc_storeStrong(&v16->_enhancedMerchantsFetcher, a6);
    v24[0] = @"PKEnhancedMerchantsListSectionMerchantList";
    v24[1] = @"PKEnhancedMerchantsListSectionMerchantDisclosures";
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v18 = [[PKEnhancedMerchantsListSectionController alloc] initWithSectionIdentifiers:v17 paymentPass:v16->_paymentPass fetcher:v16->_enhancedMerchantsFetcher delegate:v16];
    enhancedMerchantsListSectionController = v16->_enhancedMerchantsListSectionController;
    v16->_enhancedMerchantsListSectionController = v18;

    v23 = v16->_enhancedMerchantsListSectionController;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    [(PKDynamicCollectionViewController *)v16 setSections:v20 animated:0];
  }

  return v16;
}

- (void)preflightWithCompletion:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v4 = dispatch_group_create();
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 1;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2810000000;
  v24[3] = &unk_1BE347799;
  v25 = 0;
  v10 = [(PKEnhancedMerchantsViewController *)self _nonNilSections];
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  v20 = 0u;
  v5 = [(PKEnhancedMerchantsViewController *)self _nonNilSections];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v6)
  {
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        dispatch_group_enter(v4);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __61__PKEnhancedMerchantsViewController_preflightWithCompletion___block_invoke;
        v16[3] = &unk_1E8014B08;
        v18 = v24;
        v19 = v26;
        v17 = v4;
        [v9 preflightWithCompletion:v16];
      }

      v6 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v6);
  }

  if (v11)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__PKEnhancedMerchantsViewController_preflightWithCompletion___block_invoke_2;
    block[3] = &unk_1E8014B30;
    block[4] = self;
    v13 = v10;
    v14 = v11;
    v15 = v26;
    dispatch_group_notify(v4, MEMORY[0x1E69E96A0], block);
  }

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v26, 8);
}

void __61__PKEnhancedMerchantsViewController_preflightWithCompletion___block_invoke(void *a1, char a2)
{
  os_unfair_lock_lock((*(a1[5] + 8) + 32));
  *(*(a1[6] + 8) + 24) &= a2;
  os_unfair_lock_unlock((*(a1[5] + 8) + 32));
  v4 = a1[4];

  dispatch_group_leave(v4);
}

uint64_t __61__PKEnhancedMerchantsViewController_preflightWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setSections:*(a1 + 40) animated:0];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = PKEnhancedMerchantsViewController;
  [(PKDynamicCollectionViewController *)&v16 viewDidLoad];
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x1E69DC708]);
  v4 = MEMORY[0x1E69DC628];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __48__PKEnhancedMerchantsViewController_viewDidLoad__block_invoke;
  v13 = &unk_1E8010A60;
  objc_copyWeak(&v14, &location);
  v5 = [v4 actionWithHandler:&v10];
  v6 = [v3 initWithBarButtonSystemItem:24 primaryAction:{v5, v10, v11, v12, v13}];

  v7 = [(PKEnhancedMerchantsViewController *)self navigationItem];
  [v7 setLeftBarButtonItem:v6];

  v8 = [(PKDynamicCollectionViewController *)self collectionView];
  [v8 setShowsVerticalScrollIndicator:1];
  [v8 setAlwaysBounceVertical:1];
  [v8 setBounces:1];
  v9 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v8 setBackgroundColor:v9];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __48__PKEnhancedMerchantsViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained presentingViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = PKEnhancedMerchantsViewController;
  [(PKDynamicCollectionViewController *)&v5 viewDidAppear:a3];
  v6 = *MEMORY[0x1E69BA680];
  v7[0] = *MEMORY[0x1E69BA818];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [(PKEnhancedMerchantsViewController *)self reportEventIfNecessary:v4];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = PKEnhancedMerchantsViewController;
  [(PKEnhancedMerchantsViewController *)&v5 viewDidDisappear:a3];
  v6 = *MEMORY[0x1E69BA680];
  v7[0] = *MEMORY[0x1E69BA820];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [(PKEnhancedMerchantsViewController *)self reportEventIfNecessary:v4];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v5.receiver = self;
  v5.super_class = PKEnhancedMerchantsViewController;
  [(PKEnhancedMerchantsViewController *)&v5 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  [(PKDynamicCollectionViewController *)self reloadDataWithoutRebuildingDataStores];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKEnhancedMerchantsViewController;
  [(PKEnhancedMerchantsViewController *)&v10 traitCollectionDidChange:v4];
  v5 = [(PKEnhancedMerchantsViewController *)self traitCollection];
  v6 = v5;
  if (v4)
  {
    if (v5)
    {
      v7 = [v4 preferredContentSizeCategory];
      v8 = [v6 preferredContentSizeCategory];
      v9 = UIContentSizeCategoryCompareToCategory(v7, v8);

      if (v9)
      {
        [(PKDynamicCollectionViewController *)self reloadDataWithoutRebuildingDataStores];
      }
    }
  }
}

- (void)scrollToMerchantWithPrivateIdentifier:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __95__PKEnhancedMerchantsViewController_scrollToMerchantWithPrivateIdentifier_animated_completion___block_invoke;
  aBlock[3] = &unk_1E8010AD8;
  v9 = v8;
  v16 = v9;
  v10 = _Block_copy(aBlock);
  v11 = v10;
  if (v7)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __95__PKEnhancedMerchantsViewController_scrollToMerchantWithPrivateIdentifier_animated_completion___block_invoke_2;
    v12[3] = &unk_1E8012300;
    v12[4] = self;
    v13 = v7;
    v14 = v11;
    dispatch_async(MEMORY[0x1E69E96A0], v12);
  }

  else
  {
    (*(v10 + 2))(v10, 0);
  }
}

uint64_t __95__PKEnhancedMerchantsViewController_scrollToMerchantWithPrivateIdentifier_animated_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __95__PKEnhancedMerchantsViewController_scrollToMerchantWithPrivateIdentifier_animated_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1104) merchantForPrivateIdentifier:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    [*(a1 + 32) scrollToItem:v2 atScrollPosition:1 animated:1];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)navigateToRewardsHubDestination:(int64_t)a3
{
  if (!a3)
  {
    v7[3] = v3;
    v7[4] = v4;
    objc_initWeak(v7, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __69__PKEnhancedMerchantsViewController_navigateToRewardsHubDestination___block_invoke;
    v5[3] = &unk_1E8010998;
    objc_copyWeak(&v6, v7);
    dispatch_async(MEMORY[0x1E69E96A0], v5);
    objc_destroyWeak(&v6);
    objc_destroyWeak(v7);
  }
}

void __69__PKEnhancedMerchantsViewController_navigateToRewardsHubDestination___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained navigationController];
  v2 = [v1 topViewController];

  if (v2 == WeakRetained)
  {
    v3 = [WeakRetained navigationController];
    v4 = [v3 popViewControllerAnimated:1];
  }
}

- (void)openURL:(id)a3 sensitive:(BOOL)a4 preferInApp:(BOOL)a5
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    PKOpenURL();
    v5 = v6;
  }
}

- (void)reportEventIfNecessary:(id)a3
{
  v5 = [a3 mutableCopy];
  [v5 setObject:*MEMORY[0x1E69BA650] forKey:*MEMORY[0x1E69BABE8]];
  v3 = MEMORY[0x1E69B8540];
  v4 = [v5 copy];
  [v3 reportAccountRewardsEventIfNecessary:v4];
}

- (void)presentDisplayableError:(id)a3
{
  v4 = PKAlertForDisplayableErrorWithHandlers(a3, 0, 0, 0);
  [(PKEnhancedMerchantsViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (id)_nonNilSections
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_enhancedMerchantsListSectionController];
  v4 = [v3 copy];

  return v4;
}

@end