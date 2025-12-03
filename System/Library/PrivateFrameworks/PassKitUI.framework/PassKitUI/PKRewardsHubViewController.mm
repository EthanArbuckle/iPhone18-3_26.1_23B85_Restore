@interface PKRewardsHubViewController
- (PKRewardsHubViewController)initWithAccount:(id)account transactionSourceCollection:(id)collection accountService:(id)service;
- (id)_nonNilSections;
- (void)navigateToRewardsHubDestination:(int64_t)destination;
- (void)openURL:(id)l sensitive:(BOOL)sensitive preferInApp:(BOOL)app;
- (void)preflightWithCompletion:(id)completion;
- (void)presentEducationViewController;
- (void)presentEnhancedMerchant:(id)merchant;
- (void)presentEnhancedMerchantsListWithCompletion:(id)completion;
- (void)reportEventIfNecessary:(id)necessary;
- (void)scrollToPromotionWithProgramIdentifier:(id)identifier animated:(BOOL)animated completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation PKRewardsHubViewController

- (PKRewardsHubViewController)initWithAccount:(id)account transactionSourceCollection:(id)collection accountService:(id)service
{
  v38[1] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  collectionCopy = collection;
  serviceCopy = service;
  v36.receiver = self;
  v36.super_class = PKRewardsHubViewController;
  v12 = [(PKDynamicCollectionViewController *)&v36 init];
  v13 = v12;
  if (v12)
  {
    [(PKDynamicCollectionViewController *)v12 setUseItemIdentityWhenUpdating:1];
    objc_storeStrong(&v13->_account, account);
    objc_storeStrong(&v13->_accountService, service);
    objc_storeStrong(&v13->_transactionSourceCollection, collection);
    v14 = [objc_alloc(MEMORY[0x1E69B9158]) initWithTransactionSourceCollection:v13->_transactionSourceCollection account:v13->_account];
    rewardsFetcher = v13->_rewardsFetcher;
    v13->_rewardsFetcher = v14;

    v16 = objc_alloc(MEMORY[0x1E69B8368]);
    accountIdentifier = [(PKAccount *)v13->_account accountIdentifier];
    v18 = [v16 initWithAccountIdentifier:accountIdentifier accountService:v13->_accountService];
    enhancedMerchantsFetcher = v13->_enhancedMerchantsFetcher;
    v13->_enhancedMerchantsFetcher = v18;

    showRewardsGraph = [(PKAccount *)v13->_account showRewardsGraph];
    v38[0] = @"PKRewardsHubSectionLifetimeSummary";
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
    v22 = v21;
    if ((showRewardsGraph & 1) == 0)
    {
      v23 = [v21 arrayByAddingObject:@"PKRewardsHubSectionDateRangeSummary"];

      v22 = v23;
    }

    defaultDataProvider = [MEMORY[0x1E69B8BD8] defaultDataProvider];
    v25 = [[PKRewardsHubSummarySectionController alloc] initWithSectionIdentifiers:v22 rewardsFetcher:v13->_rewardsFetcher paymentDataProvider:defaultDataProvider showRewardsGraph:showRewardsGraph delegate:v13];
    summariesSectionController = v13->_summariesSectionController;
    v13->_summariesSectionController = v25;

    v27 = [[PKEnhancedMerchantsShelfSectionController alloc] initWithSectionIdentifier:@"PKRewardsHubSectionEnhancedMerchantShelf" fetcher:v13->_enhancedMerchantsFetcher delegate:v13];
    enhancedMerchantsShelfSectionController = v13->_enhancedMerchantsShelfSectionController;
    v13->_enhancedMerchantsShelfSectionController = v27;

    v29 = [[PKAccountPromotionsSectionController alloc] initWithSectionIdentifier:@"PKRewardsHubSectionAccountPromotions" account:v13->_account accountService:v13->_accountService delegate:v13];
    promotionsSectionController = v13->_promotionsSectionController;
    v13->_promotionsSectionController = v29;

    v31 = [[PKDailyCashSelectionSectionController alloc] initWithSectionIdentifier:@"PKRewardsHubSectionDailyCashSelection" account:v13->_account accountService:v13->_accountService delegate:v13];
    dailyCashSelectionSectionController = v13->_dailyCashSelectionSectionController;
    v13->_dailyCashSelectionSectionController = v31;

    v37 = objc_opt_class();
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
    v34 = [(PKRewardsHubViewController *)v13 registerForTraitChanges:v33 withHandler:&__block_literal_global_179];
  }

  return v13;
}

void __89__PKRewardsHubViewController_initWithAccount_transactionSourceCollection_accountService___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2[139];
  v5 = a3;
  v8 = a2;
  v6 = [v8 traitCollection];
  v7 = [v8 collectionView];
  [v4 traitCollectionDidChangeFromTrait:v5 toTrait:v6 inCollectionView:v7];

  [v8 reloadDataWithoutRebuildingDataStores];
}

- (void)preflightWithCompletion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v4 = dispatch_group_create();
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 1;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2810000000;
  v23[3] = &unk_1BE347799;
  v24 = 0;
  [(PKRewardsHubViewController *)self _nonNilSections];
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  obj = v19 = 0u;
  v5 = [obj countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v5)
  {
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        dispatch_group_enter(v4);
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __54__PKRewardsHubViewController_preflightWithCompletion___block_invoke;
        v15[3] = &unk_1E8014B08;
        v17 = v23;
        v18 = v25;
        v16 = v4;
        [v8 preflightWithCompletion:v15];
      }

      v5 = [obj countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v5);
  }

  if (completionCopy)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__PKRewardsHubViewController_preflightWithCompletion___block_invoke_2;
    block[3] = &unk_1E8014B30;
    block[4] = self;
    v12 = obj;
    v13 = completionCopy;
    v14 = v25;
    dispatch_group_notify(v4, MEMORY[0x1E69E96A0], block);
  }

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v25, 8);
}

void __54__PKRewardsHubViewController_preflightWithCompletion___block_invoke(void *a1, char a2)
{
  os_unfair_lock_lock((*(a1[5] + 8) + 32));
  *(*(a1[6] + 8) + 24) &= a2;
  os_unfair_lock_unlock((*(a1[5] + 8) + 32));
  v4 = a1[4];

  dispatch_group_leave(v4);
}

uint64_t __54__PKRewardsHubViewController_preflightWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setSections:*(a1 + 40) animated:0];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = PKRewardsHubViewController;
  [(PKDynamicCollectionViewController *)&v8 viewDidLoad];
  collectionView = [(PKDynamicCollectionViewController *)self collectionView];
  [collectionView setShowsVerticalScrollIndicator:1];
  [collectionView setAlwaysBounceVertical:1];
  [collectionView setBounces:1];
  v4 = +[PKDashboardViewController backgroundColor];
  [collectionView setBackgroundColor:v4];

  navigationItem = [(PKRewardsHubViewController *)self navigationItem];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    [navigationItem pkui_setupScrollEdgeChromelessAppearance];
    [navigationItem pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
  }

  [navigationItem setLargeTitleDisplayMode:1];
  v6 = PKLocalizedFeatureString();
  [navigationItem setTitle:v6];

  view = [(PKRewardsHubViewController *)self view];
  [view setAccessibilityIdentifier:*MEMORY[0x1E69B9B98]];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = PKRewardsHubViewController;
  [(PKDynamicCollectionViewController *)&v6 viewWillAppear:appear];
  navigationController = [(PKRewardsHubViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setPrefersLargeTitles:1];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PKRewardsHubViewController;
  [(PKDynamicCollectionViewController *)&v5 viewDidAppear:appear];
  v4 = [(PKDailyCashSelectionSectionController *)self->_dailyCashSelectionSectionController analyticsEventReportWithPreSelect:1];
  [v4 setObject:*MEMORY[0x1E69BA818] forKeyedSubscript:*MEMORY[0x1E69BA680]];
  [(PKRewardsHubViewController *)self reportEventIfNecessary:v4];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7[1] = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = PKRewardsHubViewController;
  [(PKRewardsHubViewController *)&v5 viewDidDisappear:disappear];
  v6 = *MEMORY[0x1E69BA680];
  v7[0] = *MEMORY[0x1E69BA820];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [(PKRewardsHubViewController *)self reportEventIfNecessary:v4];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v5.receiver = self;
  v5.super_class = PKRewardsHubViewController;
  [(PKRewardsHubViewController *)&v5 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  [(PKDynamicCollectionViewController *)self reloadDataWithoutRebuildingDataStores];
}

- (void)willMoveToParentViewController:(id)controller
{
  v11[2] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = PKRewardsHubViewController;
  [(PKRewardsHubViewController *)&v9 willMoveToParentViewController:?];
  if (!controller)
  {
    v5 = *MEMORY[0x1E69BA6F0];
    v6 = *MEMORY[0x1E69BA440];
    v10[0] = *MEMORY[0x1E69BA680];
    v10[1] = v6;
    v7 = *MEMORY[0x1E69BA3A8];
    v11[0] = v5;
    v11[1] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
    [(PKRewardsHubViewController *)self reportEventIfNecessary:v8];
  }
}

- (void)scrollToPromotionWithProgramIdentifier:(id)identifier animated:(BOOL)animated completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__PKRewardsHubViewController_scrollToPromotionWithProgramIdentifier_animated_completion___block_invoke;
  aBlock[3] = &unk_1E8010AD8;
  v9 = completionCopy;
  v16 = v9;
  v10 = _Block_copy(aBlock);
  v11 = v10;
  if (identifierCopy)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __89__PKRewardsHubViewController_scrollToPromotionWithProgramIdentifier_animated_completion___block_invoke_2;
    v12[3] = &unk_1E8012300;
    v12[4] = self;
    v13 = identifierCopy;
    v14 = v11;
    dispatch_async(MEMORY[0x1E69E96A0], v12);
  }

  else
  {
    (*(v10 + 2))(v10, 0);
  }
}

uint64_t __89__PKRewardsHubViewController_scrollToPromotionWithProgramIdentifier_animated_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __89__PKRewardsHubViewController_scrollToPromotionWithProgramIdentifier_animated_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1128) promotionForProgramIdentifier:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    [*(a1 + 32) scrollToItem:v2 atScrollPosition:1 animated:1];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)navigateToRewardsHubDestination:(int64_t)destination
{
  if (destination == 1)
  {
    [(PKRewardsHubViewController *)self presentEnhancedMerchantsListWithCompletion:0];
  }
}

- (void)openURL:(id)l sensitive:(BOOL)sensitive preferInApp:(BOOL)app
{
  appCopy = app;
  sensitiveCopy = sensitive;
  lCopy = l;
  if (lCopy)
  {
    v11 = lCopy;
    if ([MEMORY[0x1E696F4A8] canHandleURL:lCopy])
    {
      [MEMORY[0x1E696F270] _openDefaultNavigationWithURL:v11 fromScene:0 completionHandler:0];
    }

    else if (!sensitiveCopy && appCopy && PKIsURLHttpScheme())
    {
      v9 = [[PKBasicWebViewController alloc] initWithURL:v11];
      v10 = [[PKNavigationController alloc] initWithRootViewController:v9];
      [(PKRewardsHubViewController *)self presentViewController:v10 animated:1 completion:0];
    }

    else
    {
      PKOpenURL();
    }

    lCopy = v11;
  }
}

- (void)presentEducationViewController
{
  paymentPass = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
  v3 = [[PKRewardsEducationViewController alloc] initWithAccount:self->_account accountService:self->_accountService paymentPass:paymentPass enhancedMerchantsFetcher:self->_enhancedMerchantsFetcher];
  v4 = [[PKNavigationController alloc] initWithRootViewController:v3];
  [(PKRewardsHubViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)reportEventIfNecessary:(id)necessary
{
  v5 = [necessary mutableCopy];
  [v5 setObject:*MEMORY[0x1E69BA558] forKey:*MEMORY[0x1E69BABE8]];
  v3 = MEMORY[0x1E69B8540];
  v4 = [v5 copy];
  [v3 reportAccountRewardsEventIfNecessary:v4];
}

- (void)presentEnhancedMerchant:(id)merchant
{
  merchantCopy = merchant;
  v5 = merchantCopy;
  if (merchantCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __54__PKRewardsHubViewController_presentEnhancedMerchant___block_invoke;
    v6[3] = &unk_1E801EDA0;
    v7 = merchantCopy;
    [(PKRewardsHubViewController *)self presentEnhancedMerchantsListWithCompletion:v6];
  }
}

- (id)_nonNilSections
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_summariesSectionController];
  [array safelyAddObject:self->_dailyCashSelectionSectionController];
  if ([(PKAccount *)self->_account showEnhancedMerchants])
  {
    [array safelyAddObject:self->_enhancedMerchantsShelfSectionController];
  }

  if ([(PKAccount *)self->_account showCardPromotions])
  {
    [array safelyAddObject:self->_promotionsSectionController];
  }

  v4 = [array copy];

  return v4;
}

- (void)presentEnhancedMerchantsListWithCompletion:(id)completion
{
  completionCopy = completion;
  paymentPass = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
  v6 = [[PKEnhancedMerchantsViewController alloc] initWithAccount:self->_account accountService:self->_accountService paymentPass:paymentPass enhancedMerchantsFetcher:self->_enhancedMerchantsFetcher];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__PKRewardsHubViewController_presentEnhancedMerchantsListWithCompletion___block_invoke;
  aBlock[3] = &unk_1E80111F8;
  objc_copyWeak(&v16, &location);
  v7 = v6;
  v14 = v7;
  v8 = completionCopy;
  v15 = v8;
  v9 = _Block_copy(aBlock);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__PKRewardsHubViewController_presentEnhancedMerchantsListWithCompletion___block_invoke_4;
  v11[3] = &unk_1E8010AD8;
  v10 = v9;
  v12 = v10;
  [(PKEnhancedMerchantsViewController *)v7 preflightWithCompletion:v11];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __73__PKRewardsHubViewController_presentEnhancedMerchantsListWithCompletion___block_invoke(id *a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PKRewardsHubViewController_presentEnhancedMerchantsListWithCompletion___block_invoke_2;
  block[3] = &unk_1E80111F8;
  objc_copyWeak(&v5, a1 + 6);
  v3 = a1[4];
  v4 = a1[5];
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v5);
}

void __73__PKRewardsHubViewController_presentEnhancedMerchantsListWithCompletion___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:a1[4]];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73__PKRewardsHubViewController_presentEnhancedMerchantsListWithCompletion___block_invoke_3;
  v4[3] = &unk_1E8010E20;
  v6 = a1[5];
  v5 = a1[4];
  [WeakRetained presentViewController:v3 animated:1 completion:v4];
}

uint64_t __73__PKRewardsHubViewController_presentEnhancedMerchantsListWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

@end