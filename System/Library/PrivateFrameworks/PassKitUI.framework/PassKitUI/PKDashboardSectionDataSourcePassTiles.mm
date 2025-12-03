@interface PKDashboardSectionDataSourcePassTiles
- (BOOL)supportsPaymentPassAction:(id)action;
- (PKDashboardSectionDataSourceDelegate)delegate;
- (PKDashboardSectionDataSourcePassTiles)initWithPass:(id)pass forContext:(int64_t)context tileGroupID:(id)d passStateProvider:(id)provider overridesMaximumRows:(BOOL)rows;
- (id)footerTextItemForSectionIdentifier:(id)identifier;
- (id)itemForSectionIdentifier:(id)identifier atIndex:(unint64_t)index;
- (id)titleForSectionIdentifier:(id)identifier;
- (unint64_t)numberOfItemsInSection:(id)section;
- (void)_reloadTiles:(id)tiles passUniqueIdentifier:(id)identifier;
- (void)_updateWithTiles:(id)tiles;
- (void)dealloc;
- (void)handlePaymentPassAction:(id)action;
- (void)passStateProvider:(id)provider didUpdatePassState:(id)state;
- (void)passWithUniqueIdentifier:(id)identifier didUpdateTiles:(id)tiles forContext:(int64_t)context;
- (void)reloadTiles;
@end

@implementation PKDashboardSectionDataSourcePassTiles

- (PKDashboardSectionDataSourcePassTiles)initWithPass:(id)pass forContext:(int64_t)context tileGroupID:(id)d passStateProvider:(id)provider overridesMaximumRows:(BOOL)rows
{
  passCopy = pass;
  dCopy = d;
  providerCopy = provider;
  v21.receiver = self;
  v21.super_class = PKDashboardSectionDataSourcePassTiles;
  v16 = [(PKDashboardSectionDataSourcePassTiles *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_pass, pass);
    v17->_context = context;
    objc_storeStrong(&v17->_tileGroupID, d);
    v17->_overridesMaximumRows = rows;
    objc_storeStrong(&v17->_passStateProvider, provider);
    [providerCopy addPassStateObserver:v17];
    defaultDataProvider = [MEMORY[0x1E69B8BD8] defaultDataProvider];
    paymentDataProvider = v17->_paymentDataProvider;
    v17->_paymentDataProvider = defaultDataProvider;

    [(PKPaymentDefaultDataProvider *)v17->_paymentDataProvider addDelegate:v17];
    [(PKDashboardSectionDataSourcePassTiles *)v17 reloadTiles];
  }

  return v17;
}

- (void)dealloc
{
  [(PKPassDynamicStateProviding *)self->_passStateProvider removePassStateObserver:self];
  [(PKPaymentDefaultDataProvider *)self->_paymentDataProvider removeDelegate:self];
  v3.receiver = self;
  v3.super_class = PKDashboardSectionDataSourcePassTiles;
  [(PKDashboardSectionDataSourcePassTiles *)&v3 dealloc];
}

- (void)reloadTiles
{
  uniqueID = [(PKPass *)self->_pass uniqueID];
  objc_initWeak(&location, self);
  paymentDataProvider = self->_paymentDataProvider;
  context = self->_context;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__PKDashboardSectionDataSourcePassTiles_reloadTiles__block_invoke;
  v6[3] = &unk_1E8011850;
  objc_copyWeak(&v7, &location);
  v6[4] = uniqueID;
  [(PKPaymentDefaultDataProvider *)paymentDataProvider tilesForPassWithUniqueIdentifier:uniqueID context:context completion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __52__PKDashboardSectionDataSourcePassTiles_reloadTiles__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PKDashboardSectionDataSourcePassTiles_reloadTiles__block_invoke_2;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v9, (a1 + 40));
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __52__PKDashboardSectionDataSourcePassTiles_reloadTiles__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _reloadTiles:*(a1 + 32) passUniqueIdentifier:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)_reloadTiles:(id)tiles passUniqueIdentifier:(id)identifier
{
  tilesCopy = tiles;
  identifierCopy = identifier;
  uniqueID = [(PKPass *)self->_pass uniqueID];
  v8 = identifierCopy;
  v9 = v8;
  if (uniqueID == v8)
  {

    goto LABEL_7;
  }

  if (!v8 || !uniqueID)
  {

    goto LABEL_9;
  }

  v10 = [uniqueID isEqualToString:v8];

  if (v10)
  {
LABEL_7:
    [(PKDashboardSectionDataSourcePassTiles *)self _updateWithTiles:tilesCopy];
  }

LABEL_9:
}

- (void)_updateWithTiles:(id)tiles
{
  tilesCopy = tiles;
  v5 = self->_tileGroups;
  if ([tilesCopy count])
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __58__PKDashboardSectionDataSourcePassTiles__updateWithTiles___block_invoke;
    v14[3] = &unk_1E8011878;
    v14[4] = self;
    v6 = [tilesCopy pk_objectsPassingTest:v14];
  }

  else
  {
    v6 = 0;
  }

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__PKDashboardSectionDataSourcePassTiles__updateWithTiles___block_invoke_2;
  aBlock[3] = &unk_1E80110E0;
  objc_copyWeak(&v12, &location);
  aBlock[4] = v6;
  v7 = _Block_copy(aBlock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__PKDashboardSectionDataSourcePassTiles__updateWithTiles___block_invoke_3;
    v9[3] = &unk_1E80118E0;
    objc_copyWeak(&v10, &location);
    v9[4] = v5;
    v9[5] = v6;
    [WeakRetained updateSectionDataSource:self withUpdates:v7 diff:v9];
    objc_destroyWeak(&v10);
  }

  else
  {
    v7[2](v7);
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

uint64_t __58__PKDashboardSectionDataSourcePassTiles__updateWithTiles___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    return 1;
  }

  v3 = [a2 metadata];
  v4 = [v3 identifier];
  v5 = v2;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else if (v6)
  {
    v8 = [v5 isEqualToString:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __58__PKDashboardSectionDataSourcePassTiles__updateWithTiles___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_storeStrong(WeakRetained + 5, *(a1 + 32));
  *(WeakRetained + 48) = 1;
}

id __58__PKDashboardSectionDataSourcePassTiles__updateWithTiles___block_invoke_3(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = [PKCollectionViewItemsDiffCalculator calculateDiffBetweenOldSections:*(a1 + 32) andNewSections:*(a1 + 40) sectionIdentifierAccessor:&__block_literal_global_4 sectionItemsAccessor:&__block_literal_global_22 firstSectionIndex:a2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __58__PKDashboardSectionDataSourcePassTiles__updateWithTiles___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 metadata];
  v3 = [v2 identifier];

  return v3;
}

id __58__PKDashboardSectionDataSourcePassTiles__updateWithTiles___block_invoke_5(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [a2 tiles];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [MEMORY[0x1E696AFB0] UUID];
    v5 = [v4 UUIDString];
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (void)passStateProvider:(id)provider didUpdatePassState:(id)state
{
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PKDashboardSectionDataSourcePassTiles_passStateProvider_didUpdatePassState___block_invoke;
  block[3] = &unk_1E80110E0;
  objc_copyWeak(&v6, &location);
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __78__PKDashboardSectionDataSourcePassTiles_passStateProvider_didUpdatePassState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(WeakRetained + 7);
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __78__PKDashboardSectionDataSourcePassTiles_passStateProvider_didUpdatePassState___block_invoke_3;
    v6[3] = &unk_1E8011928;
    objc_copyWeak(&v7, (a1 + 40));
    v6[4] = *(a1 + 32);
    [v4 updateSectionDataSource:v5 withUpdates:&__block_literal_global_27 diff:v6];

    objc_destroyWeak(&v7);
  }
}

id __78__PKDashboardSectionDataSourcePassTiles_passStateProvider_didUpdatePassState___block_invoke_3(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [PKCollectionViewItemsDiffCalculator calculateDiffBetweenOldSections:*(*(a1 + 32) + 40) andNewSections:*(*(a1 + 32) + 40) sectionIdentifierAccessor:&__block_literal_global_29 sectionItemsAccessor:&__block_literal_global_31 firstSectionIndex:a2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __78__PKDashboardSectionDataSourcePassTiles_passStateProvider_didUpdatePassState___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 metadata];
  v3 = [v2 identifier];

  return v3;
}

id __78__PKDashboardSectionDataSourcePassTiles_passStateProvider_didUpdatePassState___block_invoke_5(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [a2 tiles];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [MEMORY[0x1E696AFB0] UUID];
    v5 = [v4 UUIDString];
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (void)passWithUniqueIdentifier:(id)identifier didUpdateTiles:(id)tiles forContext:(int64_t)context
{
  identifierCopy = identifier;
  tilesCopy = tiles;
  if (self->_context == context)
  {
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __92__PKDashboardSectionDataSourcePassTiles_passWithUniqueIdentifier_didUpdateTiles_forContext___block_invoke;
    v10[3] = &unk_1E8011828;
    objc_copyWeak(&v13, &location);
    v11 = tilesCopy;
    v12 = identifierCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v10);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __92__PKDashboardSectionDataSourcePassTiles_passWithUniqueIdentifier_didUpdateTiles_forContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _reloadTiles:*(a1 + 32) passUniqueIdentifier:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (id)itemForSectionIdentifier:(id)identifier atIndex:(unint64_t)index
{
  identifierCopy = identifier;
  v6 = objc_alloc_init(PKDashboardPassTilesItem);
  [(PKDashboardPassTilesItem *)v6 setPass:self->_pass];
  passState = [(PKPassDynamicStateProviding *)self->_passStateProvider passState];
  [(PKDashboardPassTilesItem *)v6 setPassState:passState];

  tileGroups = self->_tileGroups;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___groupForSectionIdentifier_block_invoke;
  v12[3] = &unk_1E8011998;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = [(NSArray *)tileGroups pk_firstObjectPassingTest:v12];

  [(PKDashboardPassTilesItem *)v6 setGroupTile:v10];
  if (self->_overridesMaximumRows)
  {
    [(PKDashboardPassTilesItem *)v6 setMaximumRowsOverride:-1];
  }

  return v6;
}

- (unint64_t)numberOfItemsInSection:(id)section
{
  sectionCopy = section;
  tileGroups = self->_tileGroups;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___groupForSectionIdentifier_block_invoke;
  v10[3] = &unk_1E8011998;
  v11 = sectionCopy;
  v6 = sectionCopy;
  v7 = [(NSArray *)tileGroups pk_firstObjectPassingTest:v10];

  if (v7)
  {
    isContentLoaded = self->_isContentLoaded;
  }

  else
  {
    isContentLoaded = 0;
  }

  return isContentLoaded;
}

id __59__PKDashboardSectionDataSourcePassTiles_sectionIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 metadata];
  v3 = [v2 identifier];

  return v3;
}

- (id)titleForSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  tileGroups = self->_tileGroups;
  v6 = identifierCopy;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = ___groupForSectionIdentifier_block_invoke;
  v24[3] = &unk_1E8011998;
  v25 = v6;
  v7 = [(NSArray *)tileGroups pk_firstObjectPassingTest:v24];

  tiles = [v7 tiles];
  v9 = [tiles count];

  if (v9)
  {
    state = [v7 state];
    stateTypeGroup = [state stateTypeGroup];
    header = [stateTypeGroup header];

    v13 = header;
    v14 = v13;
    if (v13)
    {
      v9 = [v13 length];

      if (v9)
      {
        metadata = [v7 metadata];
        metadataTypeHorizontalFlowGroup = [metadata metadataTypeHorizontalFlowGroup];
        groupStyle = [metadataTypeHorizontalFlowGroup groupStyle];

        if (groupStyle)
        {
          v18 = 3;
        }

        else
        {
          v18 = 0;
        }

        v9 = [PKDashboardHeaderTextItem itemWithHeaderText:v14 style:v18];
        state2 = [v7 state];
        stateTypeGroup2 = [state2 stateTypeGroup];
        headerActionTitle = [stateTypeGroup2 headerActionTitle];

        if (headerActionTitle)
        {
          [v9 setActionTitle:headerActionTitle];
          secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
          [v9 setActionColor:secondaryLabelColor];

          [v9 setActionStyle:1];
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)footerTextItemForSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  tileGroups = self->_tileGroups;
  v6 = identifierCopy;
  location[0] = MEMORY[0x1E69E9820];
  location[1] = 3221225472;
  location[2] = ___groupForSectionIdentifier_block_invoke;
  location[3] = &unk_1E8011998;
  v22 = v6;
  v7 = v6;
  v8 = [(NSArray *)tileGroups pk_firstObjectPassingTest:location];

  tiles = [v8 tiles];
  v10 = [tiles count];

  if (v10)
  {
    state = [v8 state];
    stateTypeGroup = [state stateTypeGroup];

    footer = [stateTypeGroup footer];
    v14 = footer;
    if (footer)
    {
      v15 = [footer length];

      if (v15)
      {
        v15 = [PKDashboardFooterTextItem itemWithFooterText:v14];
        footerActions = [stateTypeGroup footerActions];
        objc_initWeak(location, self);
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __76__PKDashboardSectionDataSourcePassTiles_footerTextItemForSectionIdentifier___block_invoke;
        v19[3] = &unk_1E8011970;
        v19[4] = self;
        objc_copyWeak(&v20, location);
        v17 = [footerActions pk_createArrayBySafelyApplyingBlock:v19];
        [v15 setSources:v17];

        objc_destroyWeak(&v20);
        objc_destroyWeak(location);
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

PKTextRangeHyperlink *__76__PKDashboardSectionDataSourcePassTiles_footerTextItemForSectionIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) supportsPaymentPassAction:v3])
  {
    v4 = [PKTextRangeHyperlink alloc];
    v5 = [v3 title];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __76__PKDashboardSectionDataSourcePassTiles_footerTextItemForSectionIdentifier___block_invoke_2;
    v8[3] = &unk_1E80110E0;
    objc_copyWeak(&v10, (a1 + 40));
    v9 = v3;
    v6 = [(PKTextRangeHyperlink *)v4 initWithLinkText:v5 action:v8];

    objc_destroyWeak(&v10);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __76__PKDashboardSectionDataSourcePassTiles_footerTextItemForSectionIdentifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained handlePaymentPassAction:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (BOOL)supportsPaymentPassAction:(id)action
{
  actionCopy = action;
  v4 = actionCopy;
  v5 = actionCopy && [actionCopy isActionAvailable] && objc_msgSend(v4, "type") == 3;

  return v5;
}

- (void)handlePaymentPassAction:(id)action
{
  actionCopy = action;
  if (-[PKDashboardSectionDataSourcePassTiles supportsPaymentPassAction:](self, "supportsPaymentPassAction:") && [actionCopy type] == 3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [WeakRetained presentationWindowForSectionDataSource:self];
    PKPaymentPassActionPerformOpenExternalURL(actionCopy, v5);
  }
}

- (PKDashboardSectionDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end