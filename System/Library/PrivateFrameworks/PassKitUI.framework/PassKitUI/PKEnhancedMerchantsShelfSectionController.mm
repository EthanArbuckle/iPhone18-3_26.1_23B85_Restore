@interface PKEnhancedMerchantsShelfSectionController
- (Class)supplementaryRegistrationClassForKind:(id)a3 sectionIdentifier:(id)a4;
- (PKEnhancedMerchantsShelfSectionController)initWithSectionIdentifier:(id)a3 fetcher:(id)a4 delegate:(id)a5;
- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4;
- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4;
- (void)_configureDataSource;
- (void)configureSupplementaryRegistration:(id)a3 elementKind:(id)a4 sectionIdentifier:(id)a5;
- (void)dealloc;
- (void)didPressEnhancedMerchantsListButton;
- (void)didSelectItem:(id)a3;
@end

@implementation PKEnhancedMerchantsShelfSectionController

- (PKEnhancedMerchantsShelfSectionController)initWithSectionIdentifier:(id)a3 fetcher:(id)a4 delegate:(id)a5
{
  v24[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = PKEnhancedMerchantsShelfSectionController;
  v11 = [(PKEnhancedMerchantsShelfSectionController *)&v23 init];
  if (v11)
  {
    v12 = @"PKRewardsHubSectionEnhancedMerchantShelf";
    if (v8)
    {
      v12 = v8;
    }

    v13 = v12;
    v24[0] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    identifiers = v11->_identifiers;
    v11->_identifiers = v14;

    objc_storeStrong(&v11->_fetcher, a4);
    objc_storeWeak(&v11->_delegate, v10);
    [(PKEnhancedMerchantsShelfSectionController *)v11 _configureDataSource];
    objc_initWeak(&location, v11);
    fetcher = v11->_fetcher;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __88__PKEnhancedMerchantsShelfSectionController_initWithSectionIdentifier_fetcher_delegate___block_invoke;
    v20[3] = &unk_1E8010998;
    objc_copyWeak(&v21, &location);
    v17 = [(PKAccountEnhancedMerchantsFetcher *)fetcher addUpdateHandler:v20];
    merchantsUpdateToken = v11->_merchantsUpdateToken;
    v11->_merchantsUpdateToken = v17;

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v11;
}

void __88__PKEnhancedMerchantsShelfSectionController_initWithSectionIdentifier_fetcher_delegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 2);
    if (objc_opt_respondsToSelector())
    {
      [v2 reloadDataForSectionIdentifier:@"PKRewardsHubSectionEnhancedMerchantShelf" animated:1];
    }

    WeakRetained = v3;
  }
}

- (void)dealloc
{
  if (self->_merchantsUpdateToken)
  {
    [(PKAccountEnhancedMerchantsFetcher *)self->_fetcher removeUpdateHandler:?];
  }

  v3.receiver = self;
  v3.super_class = PKEnhancedMerchantsShelfSectionController;
  [(PKEnhancedMerchantsShelfSectionController *)&v3 dealloc];
}

- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4
{
  v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  v6 = [(PKAccountEnhancedMerchantsFetcher *)self->_fetcher enhancedMerchantsWithOrderingContext:1];
  if (!v6)
  {
    v6 = [(PKAccountEnhancedMerchantsFetcher *)self->_fetcher enhancedMerchants];
  }

  [v5 appendItems:v6];

  return v5;
}

- (void)_configureDataSource
{
  v3 = [MEMORY[0x1E69DC800] registrationWithCellClass:objc_opt_class() configurationHandler:&__block_literal_global_174];
  cellRegistration = self->_cellRegistration;
  self->_cellRegistration = v3;
}

void __65__PKEnhancedMerchantsShelfSectionController__configureDataSource__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v6 = a4;
  v7 = [v5 enhancedMerchant];
  v8 = PKEqualObjects();

  if ((v8 & 1) == 0)
  {
    [v5 updateWithAccountEnhancedMerchant:v6];
    v9 = [v6 logoImage];
    PKScreenScale();
    v10 = [v9 imageForScaleFactorValue:?];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65__PKEnhancedMerchantsShelfSectionController__configureDataSource__block_invoke_2;
    v11[3] = &unk_1E801D8B8;
    v12 = v5;
    v13 = v6;
    [v10 fetchImageWithCompletion:v11];
  }
}

void __65__PKEnhancedMerchantsShelfSectionController__configureDataSource__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PKEnhancedMerchantsShelfSectionController__configureDataSource__block_invoke_3;
  block[3] = &unk_1E8010A88;
  v6 = v3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __65__PKEnhancedMerchantsShelfSectionController__configureDataSource__block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v10 = [MEMORY[0x1E69DCAB8] imageWithPKImage:?];
  }

  else
  {
    v10 = 0;
  }

  v2 = [*(a1 + 40) enhancedMerchant];
  v3 = [v2 privateIdentifier];
  v4 = [*(a1 + 48) privateIdentifier];
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {

    goto LABEL_13;
  }

  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {

LABEL_14:
    goto LABEL_15;
  }

  v9 = [v5 isEqualToString:v6];

  if (v9)
  {
LABEL_13:
    v2 = [*(a1 + 40) imageView];
    [v2 setImage:v10];
    goto LABEL_14;
  }

LABEL_15:
}

- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v19 = [MEMORY[0x1E6995558] fractionalWidthDimension:{a3, a4, 1.0}];
  v18 = [MEMORY[0x1E6995558] fractionalHeightDimension:1.0];
  v17 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v19 heightDimension:v18];
  v16 = [MEMORY[0x1E6995578] itemWithLayoutSize:v17];
  v4 = [MEMORY[0x1E6995558] absoluteDimension:140.0];
  v5 = [MEMORY[0x1E6995558] absoluteDimension:120.0];
  v6 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v4 heightDimension:v5];
  v7 = [MEMORY[0x1E6995568] verticalGroupWithLayoutSize:v6 repeatingSubitem:v16 count:1];
  v8 = [MEMORY[0x1E6995580] sectionWithGroup:v7];
  [v8 setInterGroupSpacing:10.0];
  [v8 setOrthogonalScrollingBehavior:1];
  v9 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v10 = [MEMORY[0x1E6995558] estimatedDimension:40.0];
  v11 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v9 heightDimension:v10];
  v12 = [MEMORY[0x1E6995548] boundarySupplementaryItemWithLayoutSize:v11 elementKind:@"PKEnhancedMerchantsShelfHeaderIdentifier" alignment:2];
  v20[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  [v8 setBoundarySupplementaryItems:v13];

  +[PKDashboardCollectionViewCell defaultHorizontalInset];
  [v8 setContentInsets:{0.0, v14, 35.0, v14}];

  return v8;
}

- (Class)supplementaryRegistrationClassForKind:(id)a3 sectionIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = v7;
  if (v7 != @"PKEnhancedMerchantsShelfHeaderIdentifier" && v7)
  {
    [(__CFString *)v7 isEqualToString:@"PKEnhancedMerchantsShelfHeaderIdentifier"];
  }

  v9 = objc_opt_class();

  return v9;
}

- (void)configureSupplementaryRegistration:(id)a3 elementKind:(id)a4 sectionIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v9;
  v12 = v11;
  if (v11 == @"PKEnhancedMerchantsShelfHeaderIdentifier" || v11 && (v13 = [(__CFString *)v11 isEqualToString:@"PKEnhancedMerchantsShelfHeaderIdentifier"], v12, v13))
  {
    v14 = v8;
    v15 = PKLocalizedFeatureString();
    [v14 setTitle:v15];

    v16 = PKLocalizedFeatureString();
    [v14 setActionTitle:v16];
    v17 = [MEMORY[0x1E69DC888] systemBlueColor];
    [v14 setActionColor:v17];

    [v14 setActionStyle:1];
    [v14 setPreferTitleWrapOverStackedLayout:1];
    objc_initWeak(&location, self);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __110__PKEnhancedMerchantsShelfSectionController_configureSupplementaryRegistration_elementKind_sectionIdentifier___block_invoke;
    v18[3] = &unk_1E8010998;
    objc_copyWeak(&v19, &location);
    [v14 setAction:v18];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

void __110__PKEnhancedMerchantsShelfSectionController_configureSupplementaryRegistration_elementKind_sectionIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didPressEnhancedMerchantsListButton];
}

- (void)didSelectItem:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__PKEnhancedMerchantsShelfSectionController_didSelectItem___block_invoke;
    block[3] = &unk_1E8010970;
    v7 = WeakRetained;
    v9 = v7;
    dispatch_after(v6, MEMORY[0x1E69E96A0], block);
    [v7 presentEnhancedMerchant:v4];
  }
}

- (void)didPressEnhancedMerchantsListButton
{
  v8[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v3 = *MEMORY[0x1E69BA6F0];
    v4 = *MEMORY[0x1E69BA440];
    v7[0] = *MEMORY[0x1E69BA680];
    v7[1] = v4;
    v5 = *MEMORY[0x1E69BB480];
    v8[0] = v3;
    v8[1] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
    [WeakRetained reportEventIfNecessary:v6];

    [WeakRetained navigateToRewardsHubDestination:1];
  }
}

@end