@interface PKDashboardMapItemPresenter
- (BOOL)canSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path;
- (PKDashboardMapItemPresenter)init;
- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)collectionViewCellClasses;
- (void)_configureCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path;
- (void)didSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present;
- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view;
@end

@implementation PKDashboardMapItemPresenter

- (PKDashboardMapItemPresenter)init
{
  v7.receiver = self;
  v7.super_class = PKDashboardMapItemPresenter;
  v2 = [(PKDashboardMapItemPresenter *)&v7 init];
  if (v2)
  {
    v3 = [PKPaymentTransactionMapCollectionViewCell alloc];
    v4 = [(PKPaymentTransactionMapCollectionViewCell *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    sampleCell = v2->_sampleCell;
    v2->_sampleCell = v4;
  }

  return v2;
}

- (id)collectionViewCellClasses
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"TransactionMapItemCellReuseIdentifier";
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (BOOL)canSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  itemCopy = item;
  merchant = [itemCopy merchant];
  if (!merchant)
  {
    transaction = [itemCopy transaction];
    merchant = [transaction merchant];
  }

  if ([merchant shouldIgnoreMapsMatches])
  {
    v8 = 0;
  }

  else
  {
    mapsMerchant = [merchant mapsMerchant];
    v8 = mapsMerchant != 0;
  }

  return v8;
}

- (void)didSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present
{
  v45[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  viewCopy = view;
  pathCopy = path;
  controllerCopy = controller;
  presentCopy = present;
  if (!self->_loadingMapsViewController)
  {
    v31 = itemCopy;
    merchant = [v31 merchant];
    mapsMerchant = [merchant mapsMerchant];

    if (mapsMerchant || ([v31 transaction], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "merchant"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "mapsMerchant"), mapsMerchant = objc_claimAutoreleasedReturnValue(), v18, v17, mapsMerchant))
    {
      identifier = [mapsMerchant identifier];
      if (identifier)
      {
        v20 = identifier;
        self->_loadingMapsViewController = 1;
        v21 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
        v22 = dispatch_time(0, 1000000000);
        dispatch_source_set_timer(v21, v22, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __106__PKDashboardMapItemPresenter_didSelectItem_inCollectionView_atIndexPath_navigationController_canPresent___block_invoke;
        handler[3] = &unk_1E8010A88;
        v23 = v21;
        v42 = v23;
        v30 = viewCopy;
        v43 = v30;
        v29 = pathCopy;
        v44 = v29;
        dispatch_source_set_event_handler(v23, handler);
        dispatch_resume(v23);
        v24 = objc_alloc_init(MEMORY[0x1E696F260]);
        v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v20];
        v45[0] = v25;
        v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
        [v24 _setMuids:v26];

        objc_initWeak(&location, self);
        v27 = [objc_alloc(MEMORY[0x1E696F248]) initWithRequest:v24];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __106__PKDashboardMapItemPresenter_didSelectItem_inCollectionView_atIndexPath_navigationController_canPresent___block_invoke_2;
        v34[3] = &unk_1E8021070;
        v28 = v23;
        v35 = v28;
        objc_copyWeak(v39, &location);
        v38 = presentCopy;
        v36 = v30;
        v37 = v29;
        v39[1] = v20;
        [v27 startWithCompletionHandler:v34];

        objc_destroyWeak(v39);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __106__PKDashboardMapItemPresenter_didSelectItem_inCollectionView_atIndexPath_navigationController_canPresent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_source_cancel(v2);
  }

  v3 = [*(a1 + 40) cellForItemAtIndexPath:*(a1 + 48)];
  [v3 setShowSpinner:1];
}

void __106__PKDashboardMapItemPresenter_didSelectItem_inCollectionView_atIndexPath_navigationController_canPresent___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __106__PKDashboardMapItemPresenter_didSelectItem_inCollectionView_atIndexPath_navigationController_canPresent___block_invoke_3;
  v10[3] = &unk_1E8021048;
  v11 = *(a1 + 32);
  objc_copyWeak(v17, (a1 + 64));
  v16 = *(a1 + 56);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = v6;
  v7 = *(a1 + 72);
  v15 = v5;
  v17[1] = v7;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v10);

  objc_destroyWeak(v17);
}

void __106__PKDashboardMapItemPresenter_didSelectItem_inCollectionView_atIndexPath_navigationController_canPresent___block_invoke_3(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_source_cancel(v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 16) = 0;
    v5 = *(a1 + 72);
    if (!v5 || (*(v5 + 16))())
    {
      v6 = [*(a1 + 40) cellForItemAtIndexPath:*(a1 + 48)];
      [v6 setShowSpinner:0];
      if (*(a1 + 56) || ([*(a1 + 64) mapItems], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, !v12))
      {
        v7 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a1 + 88);
          v9 = *(a1 + 56);
          if (v9)
          {
            v10 = [*(a1 + 56) localizedDescription];
          }

          else
          {
            v10 = @"no map items.";
          }

          v24 = 134218242;
          v25 = v8;
          v26 = 2112;
          v27 = v10;
          _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "PKDashboardTransactionMapItemPresenter: MKLocalSearch could not resolve merchant maps for mapsID: %llu. Error: %@", &v24, 0x16u);
          if (v9)
          {
          }
        }

        v19 = MEMORY[0x1E69DC650];
        v20 = PKLocalizedPaymentString(&cfstr_DashboardMapsM.isa);
        v16 = [v19 alertControllerWithTitle:0 message:v20 preferredStyle:1];

        v21 = MEMORY[0x1E69DC648];
        v22 = PKLocalizedPaymentString(&cfstr_DashboardMapsM_0.isa);
        v23 = [v21 actionWithTitle:v22 style:0 handler:0];
        [(PKMerchantMapViewController *)v16 addAction:v23];

        v17 = [*(a1 + 40) pkui_viewControllerFromResponderChain];
        [v17 presentViewController:v16 animated:1 completion:0];
      }

      else
      {
        v13 = [PKMerchantMapViewController alloc];
        v14 = [*(a1 + 64) mapItems];
        v15 = [v14 firstObject];
        v16 = [(PKMerchantMapViewController *)v13 initWithMapItem:v15 configOptions:0x2000000000000];

        v17 = [*(a1 + 40) pkui_viewControllerFromResponderChain];
        v18 = [v17 navigationController];
        [v18 pushViewController:v16 animated:1];
      }
    }
  }
}

- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  itemCopy = item;
  v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"TransactionMapItemCellReuseIdentifier" forIndexPath:pathCopy];
  [(PKDashboardMapItemPresenter *)self _configureCell:v11 forItem:itemCopy inCollectionView:viewCopy forIndexPath:pathCopy];

  return v11;
}

- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path
{
  [(PKDashboardMapItemPresenter *)self _configureCell:self->_sampleCell forItem:item inCollectionView:view forIndexPath:path];
  sampleCell = self->_sampleCell;

  [(PKPaymentTransactionMapCollectionViewCell *)sampleCell sizeThatFits:width, 1.79769313e308];
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)_configureCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  transaction = [itemCopy transaction];
  [cellCopy setItem:itemCopy];
  mapView = [cellCopy mapView];
  [mapView setTransaction:transaction];

  merchant = [itemCopy merchant];

  if (!merchant)
  {
    merchant = [transaction merchant];
  }

  mapView2 = [cellCopy mapView];
  [mapView2 setMerchant:merchant];

  if ([merchant shouldIgnoreMapsMatches])
  {
    v13 = 0;
  }

  else
  {
    mapsMerchant = [merchant mapsMerchant];
    v13 = mapsMerchant != 0;
  }

  [cellCopy setShowDisclosureIndicator:v13];
  [cellCopy setShowSpinner:self->_loadingMapsViewController];
  displayName = [merchant displayName];
  if ([merchant useDisplayNameIgnoringBrand])
  {
    displayNameIgnoringBrand = [merchant displayNameIgnoringBrand];

    displayName = displayNameIgnoringBrand;
  }

  displayLocation = [transaction displayLocation];

  if (displayLocation)
  {
    if (displayName)
    {
      v18 = MEMORY[0x1E696AEC0];
      displayLocation2 = [transaction displayLocation];
      v20 = [v18 stringWithFormat:@"%@, %@", displayName, displayLocation2];

      displayName = v20;
    }

    else
    {
      displayName = [transaction displayLocation];
    }
  }

  titleLabel = [cellCopy titleLabel];
  [titleLabel setText:displayName];
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
        v11 = [PKPaymentTransactionMapCollectionViewCell alloc];
        v12 = [(PKPaymentTransactionMapCollectionViewCell *)v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        sampleCell = self->_sampleCell;
        self->_sampleCell = v12;
      }
    }
  }
}

@end