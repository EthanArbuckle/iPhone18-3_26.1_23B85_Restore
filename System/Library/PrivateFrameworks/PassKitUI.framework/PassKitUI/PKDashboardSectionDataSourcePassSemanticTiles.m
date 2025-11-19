@interface PKDashboardSectionDataSourcePassSemanticTiles
- (BOOL)supportsPaymentPassAction:(id)a3;
- (PKDashboardSectionDataSourceDelegate)delegate;
- (PKDashboardSectionDataSourcePassSemanticTiles)initWithDescriptor:(id)a3 forContext:(int64_t)a4 tileFactory:(id)a5 tileGroupID:(id)a6 passStateProvider:(id)a7 overridesMaximumRows:(BOOL)a8;
- (id)footerTextItemForSectionIdentifier:(id)a3;
- (id)itemForSectionIdentifier:(id)a3 atIndex:(unint64_t)a4;
- (id)titleForSectionIdentifier:(id)a3;
- (unint64_t)numberOfItemsInSection:(id)a3;
- (void)_reloadTiles:(id)a3 descriptorIdentifier:(id)a4;
- (void)_updateWithTiles:(id)a3;
- (void)dealloc;
- (void)handlePaymentPassAction:(id)a3;
- (void)passStateProvider:(id)a3 didUpdatePassState:(id)a4;
- (void)reloadTiles;
- (void)tileFactory:(id)a3 didUpdateTiles:(id)a4 forContext:(int64_t)a5 descriptorIdentifier:(id)a6;
@end

@implementation PKDashboardSectionDataSourcePassSemanticTiles

- (PKDashboardSectionDataSourcePassSemanticTiles)initWithDescriptor:(id)a3 forContext:(int64_t)a4 tileFactory:(id)a5 tileGroupID:(id)a6 passStateProvider:(id)a7 overridesMaximumRows:(BOOL)a8
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v24.receiver = self;
  v24.super_class = PKDashboardSectionDataSourcePassSemanticTiles;
  v19 = [(PKDashboardSectionDataSourcePassSemanticTiles *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_descriptor, a3);
    v20->_context = a4;
    objc_storeStrong(&v20->_tileGroupID, a6);
    v20->_overridesMaximumRows = a8;
    objc_storeStrong(&v20->_passStateProvider, a7);
    [v18 addPassStateObserver:v20];
    if (v16)
    {
      v21 = v16;
    }

    else
    {
      v21 = objc_alloc_init(PKPassSemanticTileFactory);
    }

    tileFactory = v20->_tileFactory;
    v20->_tileFactory = v21;

    [v16 addObserver:v20];
    [(PKDashboardSectionDataSourcePassSemanticTiles *)v20 reloadTiles];
  }

  return v20;
}

- (void)dealloc
{
  [(PKPassDynamicStateProviding *)self->_passStateProvider removePassStateObserver:self];
  [(PKPassSemanticTileFactory *)self->_tileFactory removeObserver:self];
  v3.receiver = self;
  v3.super_class = PKDashboardSectionDataSourcePassSemanticTiles;
  [(PKDashboardSectionDataSourcePassSemanticTiles *)&v3 dealloc];
}

- (void)reloadTiles
{
  v3 = [(PKPassSemanticTileDescriptor *)self->_descriptor identifier];
  objc_initWeak(&location, self);
  tileFactory = self->_tileFactory;
  descriptor = self->_descriptor;
  context = self->_context;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__PKDashboardSectionDataSourcePassSemanticTiles_reloadTiles__block_invoke;
  v7[3] = &unk_1E8011850;
  objc_copyWeak(&v8, &location);
  v7[4] = v3;
  [(PKPassSemanticTileFactory *)tileFactory fetchTilesForDescriptor:descriptor context:context queueUpdates:1 completion:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __60__PKDashboardSectionDataSourcePassSemanticTiles_reloadTiles__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__PKDashboardSectionDataSourcePassSemanticTiles_reloadTiles__block_invoke_2;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v9, (a1 + 40));
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __60__PKDashboardSectionDataSourcePassSemanticTiles_reloadTiles__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _reloadTiles:*(a1 + 32) descriptorIdentifier:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)_reloadTiles:(id)a3 descriptorIdentifier:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(PKPassSemanticTileDescriptor *)self->_descriptor identifier];
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {

    goto LABEL_7;
  }

  if (!v8 || !v7)
  {

    goto LABEL_9;
  }

  v10 = [v7 isEqualToString:v8];

  if (v10)
  {
LABEL_7:
    [(PKDashboardSectionDataSourcePassSemanticTiles *)self _updateWithTiles:v11];
  }

LABEL_9:
}

- (void)_updateWithTiles:(id)a3
{
  v4 = a3;
  v5 = self->_tileGroups;
  if ([v4 count])
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __66__PKDashboardSectionDataSourcePassSemanticTiles__updateWithTiles___block_invoke;
    v14[3] = &unk_1E8011878;
    v14[4] = self;
    v6 = [v4 pk_objectsPassingTest:v14];
  }

  else
  {
    v6 = 0;
  }

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__PKDashboardSectionDataSourcePassSemanticTiles__updateWithTiles___block_invoke_2;
  aBlock[3] = &unk_1E80110E0;
  objc_copyWeak(&v12, &location);
  aBlock[4] = v6;
  v7 = _Block_copy(aBlock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__PKDashboardSectionDataSourcePassSemanticTiles__updateWithTiles___block_invoke_3;
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

uint64_t __66__PKDashboardSectionDataSourcePassSemanticTiles__updateWithTiles___block_invoke(uint64_t a1, void *a2)
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

void __66__PKDashboardSectionDataSourcePassSemanticTiles__updateWithTiles___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_storeStrong(WeakRetained + 4, *(a1 + 32));
  *(WeakRetained + 40) = 1;
}

id __66__PKDashboardSectionDataSourcePassSemanticTiles__updateWithTiles___block_invoke_3(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = [PKCollectionViewItemsDiffCalculator calculateDiffBetweenOldSections:*(a1 + 32) andNewSections:*(a1 + 40) sectionIdentifierAccessor:&__block_literal_global_180 sectionItemsAccessor:&__block_literal_global_22_2 firstSectionIndex:a2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __66__PKDashboardSectionDataSourcePassSemanticTiles__updateWithTiles___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 metadata];
  v3 = [v2 identifier];

  return v3;
}

id __66__PKDashboardSectionDataSourcePassSemanticTiles__updateWithTiles___block_invoke_5(uint64_t a1, void *a2)
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

- (void)passStateProvider:(id)a3 didUpdatePassState:(id)a4
{
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__PKDashboardSectionDataSourcePassSemanticTiles_passStateProvider_didUpdatePassState___block_invoke;
  block[3] = &unk_1E80110E0;
  objc_copyWeak(&v6, &location);
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __86__PKDashboardSectionDataSourcePassSemanticTiles_passStateProvider_didUpdatePassState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(WeakRetained + 6);
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __86__PKDashboardSectionDataSourcePassSemanticTiles_passStateProvider_didUpdatePassState___block_invoke_3;
    v6[3] = &unk_1E8011928;
    objc_copyWeak(&v7, (a1 + 40));
    v6[4] = *(a1 + 32);
    [v4 updateSectionDataSource:v5 withUpdates:&__block_literal_global_27_1 diff:v6];

    objc_destroyWeak(&v7);
  }
}

id __86__PKDashboardSectionDataSourcePassSemanticTiles_passStateProvider_didUpdatePassState___block_invoke_3(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [PKCollectionViewItemsDiffCalculator calculateDiffBetweenOldSections:*(*(a1 + 32) + 32) andNewSections:*(*(a1 + 32) + 32) sectionIdentifierAccessor:&__block_literal_global_29_1 sectionItemsAccessor:&__block_literal_global_31_1 firstSectionIndex:a2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __86__PKDashboardSectionDataSourcePassSemanticTiles_passStateProvider_didUpdatePassState___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 metadata];
  v3 = [v2 identifier];

  return v3;
}

id __86__PKDashboardSectionDataSourcePassSemanticTiles_passStateProvider_didUpdatePassState___block_invoke_5(uint64_t a1, void *a2)
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

- (void)tileFactory:(id)a3 didUpdateTiles:(id)a4 forContext:(int64_t)a5 descriptorIdentifier:(id)a6
{
  v9 = a4;
  v10 = a6;
  if (self->_context == a5)
  {
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __108__PKDashboardSectionDataSourcePassSemanticTiles_tileFactory_didUpdateTiles_forContext_descriptorIdentifier___block_invoke;
    v11[3] = &unk_1E8011828;
    objc_copyWeak(&v14, &location);
    v12 = v9;
    v13 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], v11);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __108__PKDashboardSectionDataSourcePassSemanticTiles_tileFactory_didUpdateTiles_forContext_descriptorIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _reloadTiles:*(a1 + 32) descriptorIdentifier:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (id)itemForSectionIdentifier:(id)a3 atIndex:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(PKDashboardPassTilesItem);
  v7 = [(PKPassSemanticTileDescriptor *)self->_descriptor pass];
  [(PKDashboardPassTilesItem *)v6 setPass:v7];

  v8 = [(PKPassDynamicStateProviding *)self->_passStateProvider passState];
  [(PKDashboardPassTilesItem *)v6 setPassState:v8];

  tileGroups = self->_tileGroups;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___groupForSectionIdentifier_block_invoke_0;
  v13[3] = &unk_1E8011998;
  v14 = v5;
  v10 = v5;
  v11 = [(NSArray *)tileGroups pk_firstObjectPassingTest:v13];

  [(PKDashboardPassTilesItem *)v6 setGroupTile:v11];
  if (self->_overridesMaximumRows)
  {
    [(PKDashboardPassTilesItem *)v6 setMaximumRowsOverride:-1];
  }

  return v6;
}

- (unint64_t)numberOfItemsInSection:(id)a3
{
  v4 = a3;
  tileGroups = self->_tileGroups;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___groupForSectionIdentifier_block_invoke_0;
  v10[3] = &unk_1E8011998;
  v11 = v4;
  v6 = v4;
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

id __67__PKDashboardSectionDataSourcePassSemanticTiles_sectionIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 metadata];
  v3 = [v2 identifier];

  return v3;
}

- (id)titleForSectionIdentifier:(id)a3
{
  v4 = a3;
  tileGroups = self->_tileGroups;
  v6 = v4;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = ___groupForSectionIdentifier_block_invoke_0;
  v24[3] = &unk_1E8011998;
  v25 = v6;
  v7 = [(NSArray *)tileGroups pk_firstObjectPassingTest:v24];

  v8 = [v7 tiles];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [v7 state];
    v11 = [v10 stateTypeGroup];
    v12 = [v11 header];

    v13 = v12;
    v14 = v13;
    if (v13)
    {
      v9 = [v13 length];

      if (v9)
      {
        v15 = [v7 metadata];
        v16 = [v15 metadataTypeHorizontalFlowGroup];
        v17 = [v16 groupStyle];

        if (v17)
        {
          v18 = 3;
        }

        else
        {
          v18 = 0;
        }

        v9 = [PKDashboardHeaderTextItem itemWithHeaderText:v14 style:v18];
        v19 = [v7 state];
        v20 = [v19 stateTypeGroup];
        v21 = [v20 headerActionTitle];

        if (v21)
        {
          [v9 setActionTitle:v21];
          v22 = [MEMORY[0x1E69DC888] secondaryLabelColor];
          [v9 setActionColor:v22];

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

- (id)footerTextItemForSectionIdentifier:(id)a3
{
  v35[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  tileGroups = self->_tileGroups;
  v6 = v4;
  location[0] = MEMORY[0x1E69E9820];
  location[1] = 3221225472;
  location[2] = ___groupForSectionIdentifier_block_invoke_0;
  location[3] = &unk_1E8011998;
  v34 = v6;
  v7 = v6;
  v8 = [(NSArray *)tileGroups pk_firstObjectPassingTest:location];

  v9 = [v8 tiles];
  v10 = [v9 count] == 0;

  if (v10)
  {
    v21 = 0;
    goto LABEL_30;
  }

  v11 = [v8 state];
  v12 = [v11 stateTypeGroup];

  v13 = [v12 footer];
  v14 = [v12 footerActionTitle];
  v15 = v14;
  if (v14)
  {
    if (v13)
    {
      v16 = [v13 length];
      v17 = [v15 length];
      if (v17)
      {
        v18 = v16 != 0;
      }

      else
      {
        v18 = 0;
      }

      if (v18)
      {
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@", v15, v13];
        if (v19)
        {
          v20 = 1;
LABEL_24:
          v21 = [PKDashboardFooterTextItem itemWithFooterText:v19];
          if (v20)
          {
            v26 = [[PKTextRangeHyperlink alloc] initWithLinkText:v15 action:&__block_literal_global_45];
            v35[0] = v26;
            v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
            [v21 setSources:v27];

            v28 = [MEMORY[0x1E69DC888] labelColor];
            [v21 setLinkTextColor:v28];
          }

          [v21 setMaximumNumberOfLines:4];
          v29 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC30], 0x8000, 0);
          [v21 setFont:v29];

          [v21 setUseCustomContentInsets:1];
          [v21 setCustomContentInsets:{7.0, 5.0, 10.0, 5.0}];
          goto LABEL_27;
        }

LABEL_28:
        v21 = 0;
        goto LABEL_29;
      }

      if (v16)
      {
        v25 = v13;
      }

      else
      {
        v25 = v15;
      }

      if (v17)
      {
        v20 = 1;
      }

      else
      {
        v20 = v16 == 0;
      }

      if (!(v16 | v17))
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (![v14 length])
      {
        goto LABEL_28;
      }

      v20 = 1;
      v25 = v15;
    }

    v19 = v25;
    goto LABEL_24;
  }

  v22 = v13;
  v21 = v22;
  if (v22)
  {
    v23 = [v22 length] == 0;

    if (!v23)
    {
      v21 = [PKDashboardFooterTextItem itemWithFooterText:v21];
      v19 = [v12 footerActions];
      objc_initWeak(location, self);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __84__PKDashboardSectionDataSourcePassSemanticTiles_footerTextItemForSectionIdentifier___block_invoke_2;
      v31[3] = &unk_1E8011970;
      v31[4] = self;
      objc_copyWeak(&v32, location);
      v24 = [v19 pk_createArrayBySafelyApplyingBlock:v31];
      [v21 setSources:v24];

      objc_destroyWeak(&v32);
      objc_destroyWeak(location);
LABEL_27:

      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_29:

LABEL_30:

  return v21;
}

PKTextRangeHyperlink *__84__PKDashboardSectionDataSourcePassSemanticTiles_footerTextItemForSectionIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) supportsPaymentPassAction:v3])
  {
    v4 = [PKTextRangeHyperlink alloc];
    v5 = [v3 title];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __84__PKDashboardSectionDataSourcePassSemanticTiles_footerTextItemForSectionIdentifier___block_invoke_3;
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

void __84__PKDashboardSectionDataSourcePassSemanticTiles_footerTextItemForSectionIdentifier___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained handlePaymentPassAction:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (BOOL)supportsPaymentPassAction:(id)a3
{
  v3 = a3;
  v4 = v3;
  v5 = v3 && [v3 isActionAvailable] && objc_msgSend(v4, "type") == 3;

  return v5;
}

- (void)handlePaymentPassAction:(id)a3
{
  v6 = a3;
  if (-[PKDashboardSectionDataSourcePassSemanticTiles supportsPaymentPassAction:](self, "supportsPaymentPassAction:") && [v6 type] == 3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [WeakRetained presentationWindowForSectionDataSource:self];
    PKPaymentPassActionPerformOpenExternalURL(v6, v5);
  }
}

- (PKDashboardSectionDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end