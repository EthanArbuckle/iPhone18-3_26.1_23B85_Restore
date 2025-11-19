@interface PKPaymentSetupBankAppDisambiguationController
- (PKPaymentSetupBankAppDisambiguationController)initWithPaymentSetupProduct:(id)a3 inAppMethod:(id)a4 cameraCaptureMethod:(id)a5;
- (PKPaymentSetupBankAppDisambiguationControllerDelegate)delegate;
- (id)_listItemWithName:(id)a3;
- (id)identifiers;
- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4;
- (void)_updateItemWithIdentifier:(id)a3 loadingIndicatorVisibility:(BOOL)a4;
- (void)didSelectItem:(id)a3;
@end

@implementation PKPaymentSetupBankAppDisambiguationController

- (PKPaymentSetupBankAppDisambiguationController)initWithPaymentSetupProduct:(id)a3 inAppMethod:(id)a4 cameraCaptureMethod:(id)a5
{
  v53 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v48.receiver = self;
  v48.super_class = PKPaymentSetupBankAppDisambiguationController;
  v12 = [(PKPaymentSetupListSectionController *)&v48 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_paymentSetupProduct, a3);
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    inAppItemIdentifierToItemMapping = v13->_inAppItemIdentifierToItemMapping;
    v13->_inAppItemIdentifierToItemMapping = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    cameraItemIdentifierToItemMapping = v13->_cameraItemIdentifierToItemMapping;
    v13->_cameraItemIdentifierToItemMapping = v16;

    v39 = v10;
    v18 = [v10 cardTypeSupport];
    v19 = [v11 cardTypeSupport];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v20 = v18;
    v21 = [v20 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v45;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v45 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [(PKPaymentSetupBankAppDisambiguationController *)v13 _listItemWithName:*(*(&v44 + 1) + 8 * i)];
          [(NSMutableArray *)v13->_inAppItemIdentifierToItemMapping addObject:v25];
        }

        v22 = [v20 countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v22);
    }

    v26 = v13->_inAppItemIdentifierToItemMapping;
    v27 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"title" ascending:1];
    v51 = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
    [(NSMutableArray *)v26 sortUsingDescriptors:v28];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v29 = v19;
    v30 = [v29 countByEnumeratingWithState:&v40 objects:v50 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v41;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v41 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = [(PKPaymentSetupBankAppDisambiguationController *)v13 _listItemWithName:*(*(&v40 + 1) + 8 * j)];
          [(NSMutableArray *)v13->_cameraItemIdentifierToItemMapping addObject:v34];
        }

        v31 = [v29 countByEnumeratingWithState:&v40 objects:v50 count:16];
      }

      while (v31);
    }

    v35 = v13->_cameraItemIdentifierToItemMapping;
    v36 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"title" ascending:1];
    v49 = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
    [(NSMutableArray *)v35 sortUsingDescriptors:v37];

    v10 = v39;
  }

  return v13;
}

- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4
{
  v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v6 addObjectsFromArray:self->_inAppItemIdentifierToItemMapping];
  [v6 addObjectsFromArray:self->_cameraItemIdentifierToItemMapping];
  [v5 appendItems:v6];

  return v5;
}

- (id)identifiers
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"PKPaymentSetupBankAppDisambiguationControllerSectionIdentifier";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)didSelectItem:(id)a3
{
  v4 = [a3 identifier];
  [(PKPaymentSetupBankAppDisambiguationController *)self _updateItemWithIdentifier:v4 loadingIndicatorVisibility:1];
  inAppItemIdentifierToItemMapping = self->_inAppItemIdentifierToItemMapping;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __63__PKPaymentSetupBankAppDisambiguationController_didSelectItem___block_invoke;
  v16[3] = &unk_1E801AB30;
  v6 = v4;
  v17 = v6;
  v7 = [(NSMutableArray *)inAppItemIdentifierToItemMapping pk_containsObjectPassingTest:v16];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (v7)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __63__PKPaymentSetupBankAppDisambiguationController_didSelectItem___block_invoke_2;
    v14[3] = &unk_1E8010A10;
    v9 = &v15;
    v14[4] = self;
    v15 = v6;
    v10 = v6;
    [WeakRetained didSelectInAppWithCompletion:v14];
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__PKPaymentSetupBankAppDisambiguationController_didSelectItem___block_invoke_3;
    v12[3] = &unk_1E8010A10;
    v9 = &v13;
    v12[4] = self;
    v13 = v6;
    v11 = v6;
    [WeakRetained didSelectCameraWithCompletion:v12];
  }
}

uint64_t __63__PKPaymentSetupBankAppDisambiguationController_didSelectItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)_listItemWithName:(id)a3
{
  v3 = a3;
  v4 = [PKPaymentSetupListItem alloc];
  v5 = PKUIImageNamed(@"PlaceholderCardArt_Small");
  v6 = [(PKPaymentSetupListItem *)v4 initWithTitle:v3 subtitle:0 icon:v5];

  [(PKPaymentSetupListItem *)v6 setDisplayChevron:1];

  return v6;
}

- (void)_updateItemWithIdentifier:(id)a3 loadingIndicatorVisibility:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self->_inAppItemIdentifierToItemMapping;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __102__PKPaymentSetupBankAppDisambiguationController__updateItemWithIdentifier_loadingIndicatorVisibility___block_invoke;
  v21[3] = &unk_1E801AB58;
  v8 = v6;
  v22 = v8;
  v9 = [(NSMutableArray *)v7 indexOfObjectPassingTest:v21];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = self->_cameraItemIdentifierToItemMapping;

    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __102__PKPaymentSetupBankAppDisambiguationController__updateItemWithIdentifier_loadingIndicatorVisibility___block_invoke_2;
    v19 = &unk_1E801AB58;
    v20 = v8;
    v11 = [(NSMutableArray *)v10 indexOfObjectPassingTest:&v16];

    v7 = v10;
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = v9;
  }

  v12 = [(NSMutableArray *)v7 objectAtIndex:v11, v16, v17, v18, v19];
  v13 = v12;
  if (v12 && [v12 loadingIndicatorVisible] != v4)
  {
    v14 = [v13 copy];
    [v14 setLoadingIndicatorVisible:v4];
    [(NSMutableArray *)v7 replaceObjectAtIndex:v11 withObject:v14];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained reloadItem:v14 animated:1];
  }

LABEL_9:
}

uint64_t __102__PKPaymentSetupBankAppDisambiguationController__updateItemWithIdentifier_loadingIndicatorVisibility___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __102__PKPaymentSetupBankAppDisambiguationController__updateItemWithIdentifier_loadingIndicatorVisibility___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (PKPaymentSetupBankAppDisambiguationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end