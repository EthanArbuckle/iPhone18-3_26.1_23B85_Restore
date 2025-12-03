@interface PKDashboardPaymentSetupProductPresenter
- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path;
- (PKDashboardPaymentSetupProductPresenter)init;
- (PKDashboardPaymentSetupProductPresenterDelegate)delegate;
- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)collectionViewCellClasses;
- (id)searchHistoryStringForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (void)_preflightingFinished;
- (void)_updateCell:(id)cell withPaymentSetupProductItem:(id)item atIndexPath:(id)path;
- (void)paymentSetupDidFinish:(id)finish;
- (void)performActionForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present;
- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view;
@end

@implementation PKDashboardPaymentSetupProductPresenter

- (PKDashboardPaymentSetupProductPresenter)init
{
  v7.receiver = self;
  v7.super_class = PKDashboardPaymentSetupProductPresenter;
  v2 = [(PKDashboardPaymentSetupProductPresenter *)&v7 init];
  if (v2)
  {
    v3 = [PKDashboardSearchResultCell alloc];
    v4 = [(PKDashboardSearchResultCell *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    sampleSearchResultCell = v2->_sampleSearchResultCell;
    v2->_sampleSearchResultCell = v4;
  }

  return v2;
}

- (void)performActionForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present
{
  itemCopy = item;
  viewCopy = view;
  pathCopy = path;
  controllerCopy = controller;
  presentCopy = present;
  if (!self->_preflightingSetupVC)
  {
    v17 = [viewCopy cellForItemAtIndexPath:pathCopy];
    [v17 setShowSpinner:1];
    v28 = v17;
    objc_storeWeak(&self->_cellWithSpinner, v17);
    productIdentifier = [itemCopy productIdentifier];
    objc_storeStrong(&self->_productIdentifier, productIdentifier);
    mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
    v19 = [objc_alloc(MEMORY[0x1E69B8D48]) initWithWebService:mEMORY[0x1E69B8EF8]];
    v20 = [MEMORY[0x1E695DFD8] setWithObject:productIdentifier];
    [v19 setAllowedProductIdentifiers:v20];

    [v19 setAllowProductsInUnsupportedRegion:1];
    objc_initWeak(location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __125__PKDashboardPaymentSetupProductPresenter_performActionForItem_inCollectionView_atIndexPath_navigationController_canPresent___block_invoke;
    aBlock[3] = &unk_1E8010998;
    objc_copyWeak(&v39, location);
    v21 = _Block_copy(aBlock);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __125__PKDashboardPaymentSetupProductPresenter_performActionForItem_inCollectionView_atIndexPath_navigationController_canPresent___block_invoke_2;
    v32[3] = &unk_1E8027710;
    v36 = presentCopy;
    v22 = v21;
    v37 = v22;
    v23 = v19;
    v33 = v23;
    selfCopy = self;
    v35 = controllerCopy;
    v24 = _Block_copy(v32);
    self->_preflightingSetupVC = 1;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __125__PKDashboardPaymentSetupProductPresenter_performActionForItem_inCollectionView_atIndexPath_navigationController_canPresent___block_invoke_6;
    v29[3] = &unk_1E8017A28;
    v25 = v23;
    v30 = v25;
    v26 = v24;
    v31 = v26;
    [v25 preflightWithCompletion:v29];

    objc_destroyWeak(&v39);
    objc_destroyWeak(location);
  }
}

void __125__PKDashboardPaymentSetupProductPresenter_performActionForItem_inCollectionView_atIndexPath_navigationController_canPresent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _preflightingFinished];
}

void __125__PKDashboardPaymentSetupProductPresenter_performActionForItem_inCollectionView_atIndexPath_navigationController_canPresent___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 56);
  if (v6 && ((*(v6 + 16))() & 1) == 0)
  {
    (*(*(a1 + 64) + 16))();
  }

  else if (a2)
  {
    v7 = [[PKPaymentSetupNavigationController alloc] initWithProvisioningController:*(a1 + 32) context:0];
    [(PKPaymentSetupNavigationController *)v7 setSetupDelegate:*(a1 + 40)];
    [(PKPaymentSetupNavigationController *)v7 setPaymentSetupMode:3];
    [(PKPaymentSetupNavigationController *)v7 setParentNavigationController:*(a1 + 48)];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __125__PKDashboardPaymentSetupProductPresenter_performActionForItem_inCollectionView_atIndexPath_navigationController_canPresent___block_invoke_3;
    v13[3] = &unk_1E8019A98;
    v14 = *(a1 + 48);
    v15 = v7;
    v16 = *(a1 + 64);
    v8 = v7;
    [(PKPaymentSetupNavigationController *)v8 preflightWithCompletion:v13];
  }

  else
  {
    v9 = PKAlertForDisplayableErrorWithHandlers(v5, 0, 0, 0);
    if (v9)
    {
      v10 = *(a1 + 48);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __125__PKDashboardPaymentSetupProductPresenter_performActionForItem_inCollectionView_atIndexPath_navigationController_canPresent___block_invoke_5;
      v11[3] = &unk_1E8010B50;
      v12 = *(a1 + 64);
      [v10 presentViewController:v9 animated:1 completion:v11];
    }

    else
    {
      (*(*(a1 + 64) + 16))();
    }
  }
}

void __125__PKDashboardPaymentSetupProductPresenter_performActionForItem_inCollectionView_atIndexPath_navigationController_canPresent___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __125__PKDashboardPaymentSetupProductPresenter_performActionForItem_inCollectionView_atIndexPath_navigationController_canPresent___block_invoke_4;
  v3[3] = &unk_1E8010B50;
  v4 = *(a1 + 48);
  [v1 presentViewController:v2 animated:1 completion:v3];
}

void __125__PKDashboardPaymentSetupProductPresenter_performActionForItem_inCollectionView_atIndexPath_navigationController_canPresent___block_invoke_6(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) paymentSetupProductModel];
  v7 = [v6 allSetupProducts];

  if (a2 && [v7 count] == 1)
  {
    v8 = *(a1 + 32);
    v9 = [v7 firstObject];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __125__PKDashboardPaymentSetupProductPresenter_performActionForItem_inCollectionView_atIndexPath_navigationController_canPresent___block_invoke_7;
    v10[3] = &unk_1E8010B28;
    v11 = *(a1 + 40);
    [v8 setupProductForProvisioning:v9 includePurchases:1 withCompletionHandler:v10];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (id)collectionViewCellClasses
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"PKDashboardPaymentSetupProductPresenterIdentifier";
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  itemCopy = item;
  pathCopy = path;
  viewCopy = view;
  v11 = [(PKDashboardPaymentSetupProductPresenter *)self _identifierForItem:itemCopy];
  v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:pathCopy];

  [(PKDashboardPaymentSetupProductPresenter *)self _updateCell:v12 withPaymentSetupProductItem:itemCopy atIndexPath:pathCopy];

  return v12;
}

- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path
{
  [(PKDashboardPaymentSetupProductPresenter *)self _updateCell:self->_sampleSearchResultCell withPaymentSetupProductItem:item atIndexPath:path];
  +[PKDashboardCollectionViewCell defaultHorizontalInset];
  v9 = width + v8 * -2.0;
  [(PKDashboardSearchResultCell *)self->_sampleSearchResultCell sizeThatFits:v9, 1.79769313e308];
  v11 = v10;
  [(PKDashboardSearchResultCell *)self->_sampleSearchResultCell prepareForReuse];
  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view
{
  if (trait)
  {
    if (toTrait)
    {
      toTraitCopy = toTrait;
      preferredContentSizeCategory = [trait preferredContentSizeCategory];
      preferredContentSizeCategory2 = [toTraitCopy preferredContentSizeCategory];

      v10 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, preferredContentSizeCategory2);
      if (v10)
      {
        v11 = [PKDashboardSearchResultCell alloc];
        v12 = [(PKDashboardSearchResultCell *)v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        sampleSearchResultCell = self->_sampleSearchResultCell;
        self->_sampleSearchResultCell = v12;
      }
    }
  }
}

- (id)searchHistoryStringForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  v5 = [view cellForItemAtIndexPath:path];
  title = [v5 title];

  return title;
}

- (void)paymentSetupDidFinish:(id)finish
{
  finishCopy = finish;
  [(PKDashboardPaymentSetupProductPresenter *)self _preflightingFinished];
  [finishCopy dismissViewControllerAnimated:1 completion:0];
}

- (void)_preflightingFinished
{
  self->_preflightingSetupVC = 0;
  WeakRetained = objc_loadWeakRetained(&self->_cellWithSpinner);
  identifier = [WeakRetained identifier];
  v5 = [identifier isEqualToString:self->_productIdentifier];

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_cellWithSpinner);
    [v6 setShowSpinner:0];
  }
}

- (void)_updateCell:(id)cell withPaymentSetupProductItem:(id)item atIndexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  pathCopy = path;
  productIdentifier = [itemCopy productIdentifier];
  [cellCopy setIdentifier:productIdentifier];

  displayName = [itemCopy displayName];
  [cellCopy setTitle:displayName];

  contentDescription = [itemCopy contentDescription];
  [cellCopy setSubtitle:contentDescription];

  [cellCopy setStyle:2];
  thumbnailData = [itemCopy thumbnailData];
  if (thumbnailData)
  {
    v15 = objc_alloc(MEMORY[0x1E69DCAB8]);
    thumbnailData2 = [itemCopy thumbnailData];
    v17 = [v15 initWithData:thumbnailData2];

    [cellCopy setThumbnail:v17];
  }

  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __95__PKDashboardPaymentSetupProductPresenter__updateCell_withPaymentSetupProductItem_atIndexPath___block_invoke;
  v19[3] = &unk_1E80110E0;
  objc_copyWeak(&v21, &location);
  v18 = pathCopy;
  v20 = v18;
  [cellCopy setAction:v19 withButtonType:2];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __95__PKDashboardPaymentSetupProductPresenter__updateCell_withPaymentSetupProductItem_atIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained(WeakRetained + 5);
  [v2 dashboardPaymentSetupProductPresenter:WeakRetained actionButtonPressedOnCellAtIndexPath:*(a1 + 32)];
}

- (PKDashboardPaymentSetupProductPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end