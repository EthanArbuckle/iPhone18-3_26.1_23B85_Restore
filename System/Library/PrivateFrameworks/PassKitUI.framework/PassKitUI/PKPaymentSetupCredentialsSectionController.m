@interface PKPaymentSetupCredentialsSectionController
- ($96EE1C12479E9B303E9C2794B92A11A2)credentialSelectionState;
- (BOOL)_canSelectedCredential:(id)a3;
- (BOOL)_enumerateCredentials:(id)a3;
- (BOOL)_hasCredentialsToShow;
- (BOOL)_isCarKeyProduct;
- (BOOL)_setCredential:(id)a3 selected:(BOOL)a4 silently:(BOOL)a5;
- (BOOL)hasSelectedCredentials;
- (BOOL)shouldShowEditButton;
- (PKDynamicListDataChangeDelegate)dataChangeDelegate;
- (PKPaymentSetupCredentialsSectionController)initWithCredentials:(id)a3 provisioningController:(id)a4 context:(int64_t)a5 product:(id)a6;
- (PKPaymentSetupCredentialsSectionControllerDelegate)delegate;
- (id)_cardArtForCredentialItem:(id)a3;
- (id)_credentialItemForCredential:(id)a3;
- (id)_credentialItemFromIndexPath:(id)a3;
- (id)_detailTextForCredential:(id)a3;
- (id)availableCredentialRequiringAction;
- (id)decoratePaymentSetListCell:(id)a3 forItem:(id)a4 style:(unint64_t)a5;
- (id)headerForSectionIdentifier:(id)a3;
- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4;
- (id)selectedCredentials;
- (id)snapshotForSectionIdentifier:(id)a3;
- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4;
- (id)unselectedCredentialRequiringAction;
- (unint64_t)_numberOfSelectedCredentials;
- (unint64_t)_numberOfSelectedPeerPaymentCredentials;
- (void)_loadCredentials:(id)a3 create:(BOOL)a4;
- (void)_primeItemSelectionAndReloadData:(BOOL)a3;
- (void)_promptToDeleteItem:(id)a3 completion:(id)a4;
- (void)_removeCredentialItem:(id)a3;
- (void)_replaceAndReloadItem:(id)a3 withNewItem:(id)a4;
- (void)_sortCredentialItems:(id)a3;
- (void)_updateMaximumSelectableCredentials;
- (void)_updateRemoteCredentialCache;
- (void)configureSupplementaryRegistration:(id)a3 elementKind:(id)a4 sectionIdentifier:(id)a5;
- (void)dealloc;
- (void)deleteItem:(id)a3;
- (void)didSelectItem:(id)a3;
- (void)paymentPassUpdatedOnCredential:(id)a3;
- (void)reloadCredentialStores;
- (void)setEditing:(BOOL)a3;
@end

@implementation PKPaymentSetupCredentialsSectionController

- (PKPaymentSetupCredentialsSectionController)initWithCredentials:(id)a3 provisioningController:(id)a4 context:(int64_t)a5 product:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v25.receiver = self;
  v25.super_class = PKPaymentSetupCredentialsSectionController;
  v13 = [(PKPaymentSetupListSectionController *)&v25 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_provisioningController, a4);
    v15 = PKLastBackedUpDefaultPaymentPassSerialNumber();
    lastBackedUpDefaultPaymentPassSerialNumber = v14->_lastBackedUpDefaultPaymentPassSerialNumber;
    v14->_lastBackedUpDefaultPaymentPassSerialNumber = v15;

    v14->_setupContext = a5;
    objc_storeStrong(&v14->_product, a6);
    v17 = [(PKPaymentProvisioningController *)v14->_provisioningController webService];
    v18 = [v17 targetDevice];
    v19 = [v18 secureElementIdentifiers];

    v20 = [[PKPassSnapshotCoordinator alloc] initWithSEIDs:v19];
    snapshotCoordinator = v14->_snapshotCoordinator;
    v14->_snapshotCoordinator = v20;

    v22 = [(PKPaymentProvisioningController *)v14->_provisioningController storageSnapshot];
    storageSnapshot = v14->_storageSnapshot;
    v14->_storageSnapshot = v22;

    [(PKProvisioningSEStorageSnapshot *)v14->_storageSnapshot reset];
    [(PKPaymentProvisioningController *)v14->_provisioningController addDelegate:v14];
    [(PKPaymentSetupCredentialsSectionController *)v14 _loadCredentials:v10 create:1];
    [(PKPaymentSetupCredentialsSectionController *)v14 _updateMaximumSelectableCredentials];
    [(PKPaymentSetupCredentialsSectionController *)v14 _primeItemSelectionAndReloadData:0];
  }

  return v14;
}

- (void)dealloc
{
  [(PKPaymentProvisioningController *)self->_provisioningController removeDelegate:self];
  v3.receiver = self;
  v3.super_class = PKPaymentSetupCredentialsSectionController;
  [(PKPaymentSetupCredentialsSectionController *)&v3 dealloc];
}

- (id)selectedCredentials
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = self->_sectionIdentifiers;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v9 = [(NSMutableDictionary *)self->_allCredentials objectForKeyedSubscript:v8];
        v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v20;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v20 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v19 + 1) + 8 * j);
              if ([v14 selected])
              {
                v15 = [v14 credential];
                [v3 addObject:v15];
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v11);
        }
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  v16 = [v3 copy];

  return v16;
}

- (BOOL)hasSelectedCredentials
{
  v2 = [(PKPaymentSetupCredentialsSectionController *)self selectedCredentials];
  v3 = [v2 count] != 0;

  return v3;
}

- ($96EE1C12479E9B303E9C2794B92A11A2)credentialSelectionState
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__PKPaymentSetupCredentialsSectionController_credentialSelectionState__block_invoke;
  v5[3] = &unk_1E801BCE8;
  v5[4] = &v10;
  v5[5] = &v6;
  [(PKPaymentSetupCredentialsSectionController *)self _enumerateCredentials:v5];
  v2 = *(v11 + 24);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
  return (v2 | (v3 << 8));
}

uint64_t __70__PKPaymentSetupCredentialsSectionController_credentialSelectionState__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  v10 = *(*(a1 + 32) + 8);
  if (*(v10 + 24))
  {
    v11 = 1;
  }

  else
  {
    v11 = [v8 isAvailable];
    v10 = *(*(a1 + 32) + 8);
  }

  *(v10 + 24) = v11;
  v12 = *(*(a1 + 40) + 8);
  if (*(v12 + 24))
  {
    v13 = 1;
  }

  else
  {
    v13 = [v9 selected];
    v12 = *(*(a1 + 40) + 8);
  }

  *(v12 + 24) = v13;
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v14 = *(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v14 = 0;
  }

  *a4 = v14 & 1;

  return 0;
}

- (id)unselectedCredentialRequiringAction
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__34;
  v9 = __Block_byref_object_dispose__34;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __81__PKPaymentSetupCredentialsSectionController_unselectedCredentialRequiringAction__block_invoke;
  v4[3] = &unk_1E801BD10;
  v4[4] = &v5;
  [(PKPaymentSetupCredentialsSectionController *)self _enumerateCredentials:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __81__PKPaymentSetupCredentialsSectionController_unselectedCredentialRequiringAction__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = [v6 credential];
  if (([v6 selected] & 1) == 0 && objc_msgSend(v6, "isAvailable"))
  {
    v8 = [v7 accountCredential];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 account];
      v11 = [v10 feature];

      if (v11 == 2)
      {
        objc_storeStrong((*(*(a1 + 32) + 8) + 40), v7);
        *a4 = 1;
      }
    }
  }

  return 0;
}

- (id)availableCredentialRequiringAction
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__34;
  v9 = __Block_byref_object_dispose__34;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __80__PKPaymentSetupCredentialsSectionController_availableCredentialRequiringAction__block_invoke;
  v4[3] = &unk_1E801BD10;
  v4[4] = &v5;
  [(PKPaymentSetupCredentialsSectionController *)self _enumerateCredentials:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __80__PKPaymentSetupCredentialsSectionController_availableCredentialRequiringAction__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 credential];
  v7 = [v6 accountCredential];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 account];
    v10 = [v9 feature];

    if (v10 == 2)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), v6);
      *a4 = 1;
    }
  }

  return 0;
}

- (void)reloadCredentialStores
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__PKPaymentSetupCredentialsSectionController_reloadCredentialStores__block_invoke;
  aBlock[3] = &unk_1E801BD38;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = v3[2]();
  [(PKPaymentSetupCredentialsSectionController *)self _updateRemoteCredentialCache];
  [(PKPaymentSetupCredentialsSectionController *)self _updateMaximumSelectableCredentials];
  v5 = (v3[2])(v3);
  WeakRetained = objc_loadWeakRetained(&self->_dataChangeDelegate);
  [WeakRetained reloadAnimated:v4 != v5];
}

uint64_t __68__PKPaymentSetupCredentialsSectionController_reloadCredentialStores__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(a1 + 32) + 88);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(a1 + 32) + 96) objectForKeyedSubscript:{*(*(&v10 + 1) + 8 * i), v10}];
        v5 += [v8 count];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setEditing:(BOOL)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_isEditing == !a3)
  {
    self->_isEditing = a3;
    if (a3)
    {
      v5 = [MEMORY[0x1E696AC70] pk_hashTableUsingPointerPersonality];
      selectedCredentialsBeforeEditing = self->_selectedCredentialsBeforeEditing;
      self->_selectedCredentialsBeforeEditing = v5;

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v7 = [(PKPaymentSetupCredentialsSectionController *)self selectedCredentials];
      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v17;
        do
        {
          v11 = 0;
          do
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [(NSHashTable *)self->_selectedCredentialsBeforeEditing addObject:*(*(&v16 + 1) + 8 * v11++)];
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v9);
      }
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __57__PKPaymentSetupCredentialsSectionController_setEditing___block_invoke;
    v14[3] = &unk_1E801BD80;
    v15 = a3;
    v14[4] = self;
    [(PKPaymentSetupCredentialsSectionController *)self _enumerateCredentials:v14];
    WeakRetained = objc_loadWeakRetained(&self->_dataChangeDelegate);
    [WeakRetained reloadAnimated:0];

    if (!a3)
    {
      v13 = self->_selectedCredentialsBeforeEditing;
      self->_selectedCredentialsBeforeEditing = 0;
    }
  }
}

id __57__PKPaymentSetupCredentialsSectionController_setEditing___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 isRefund] & 1) != 0 || (objc_msgSend(v4, "isUnavailable") & 1) != 0 || (objc_msgSend(v4, "isBeingProvisioned"))
  {
    v5 = 0;
  }

  else
  {
    v7 = [v4 copy];
    v5 = v7;
    if (*(a1 + 40) == 1)
    {
      [v7 setSelected:0];
      [v5 setUseMultiSelectAccessory:0];
      v8 = [v4 isDeletable] ^ 1;
    }

    else
    {
      v9 = *(*(a1 + 32) + 120);
      v10 = [v4 credential];
      v11 = [v9 containsObject:v10];

      [v5 setSelected:v11];
      [v5 setUseMultiSelectAccessory:1];
      v8 = 0;
    }

    [v5 setDisplayInfo:v8];
  }

  return v5;
}

- (BOOL)shouldShowEditButton
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__PKPaymentSetupCredentialsSectionController_shouldShowEditButton__block_invoke;
  v4[3] = &unk_1E801BD10;
  v4[4] = &v5;
  [(PKPaymentSetupCredentialsSectionController *)self _enumerateCredentials:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __66__PKPaymentSetupCredentialsSectionController_shouldShowEditButton__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  if ([v6 isAvailable] && objc_msgSend(v6, "isDeletable"))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return 0;
}

- (id)snapshotForSectionIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_allCredentials objectForKeyedSubscript:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (id)decoratePaymentSetListCell:(id)a3 forItem:(id)a4 style:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v26.receiver = self;
  v26.super_class = PKPaymentSetupCredentialsSectionController;
  v9 = [(PKPaymentSetupListSectionController *)&v26 decoratePaymentSetListCell:v7 forItem:v8 style:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v8;
    v11 = [v9 textProperties];
    [v11 setNumberOfLines:1];
    v12 = [v9 secondaryTextProperties];

    [v12 setLineBreakMode:4];
    [v12 setNumberOfLines:2];
    v13 = [(PKPaymentSetupCredentialsSectionController *)self _cardArtForCredentialItem:v10];
    [v9 setImage:v13];

    v14 = [v9 imageProperties];
    v15 = _UISolariumFeatureFlagEnabled();
    if (v15)
    {
      v16 = 40.0;
    }

    else
    {
      v16 = 53.0;
    }

    if (v15)
    {
      v17 = 26.0;
    }

    else
    {
      v17 = 32.0;
    }

    [v14 setMaximumSize:{v16, v17}];
    [v14 setReservedLayoutSize:{v16, v17}];
    [v14 setCornerRadius:3.0];
    [v7 setContentConfiguration:v9];
    if ([v10 isDeletable])
    {
      v18 = [v7 accessories];
      v19 = [v18 mutableCopy];

      v20 = objc_alloc_init(MEMORY[0x1E69DC798]);
      [v20 setReservedLayoutWidth:50.0];
      [v19 addObject:v20];
      [v7 setAccessories:v19];
      if (self->_isEditing)
      {
        v21 = [v10 title];
        v22 = PKLocalizedPaymentString(&cfstr_RemoveParkedPa.isa, &stru_1F3BD5BF0.isa, v21);
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }

    [v7 setAccessibilityLabel:v22];
    if ([v10 isCellDisabled])
    {
      v23 = 0.4;
    }

    else
    {
      v23 = 1.0;
    }

    v24 = [v7 contentView];
    [v24 setAlpha:v23];
  }

  return v9;
}

- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4
{
  v5 = MEMORY[0x1E69DC5D0];
  v6 = a4;
  v7 = objc_alloc_init(v5);
  v8 = [(PKPaymentSetupCredentialsSectionController *)self snapshotForSectionIdentifier:v6];

  [v7 appendItems:v8];

  return v7;
}

- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKPaymentSetupListSectionController *)self defaultListLayout];
  [v8 setHeaderMode:1];
  [v8 setFooterMode:1];
  objc_initWeak(&location, self);
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __92__PKPaymentSetupCredentialsSectionController_layoutWithLayoutEnvironment_sectionIdentifier___block_invoke;
  v15 = &unk_1E8013B50;
  objc_copyWeak(&v16, &location);
  [v8 setTrailingSwipeActionsConfigurationProvider:&v12];
  v9 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v8 layoutEnvironment:{v6, v12, v13, v14, v15}];
  [v9 contentInsets];
  [v9 setContentInsets:PKSetupViewConstantsListSectionInset(v10)];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v9;
}

id __92__PKPaymentSetupCredentialsSectionController_layoutWithLayoutEnvironment_sectionIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _credentialItemFromIndexPath:v3];

  if ([v5 isDeletable])
  {
    v6 = MEMORY[0x1E69DC8E8];
    v7 = PKLocalizedPaymentString(&cfstr_RemoveParkedPa_0.isa);
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __92__PKPaymentSetupCredentialsSectionController_layoutWithLayoutEnvironment_sectionIdentifier___block_invoke_2;
    v17 = &unk_1E801BDA8;
    objc_copyWeak(&v19, (a1 + 32));
    v18 = v5;
    v8 = [v6 contextualActionWithStyle:1 title:v7 handler:&v14];

    v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:{@"trash", v14, v15, v16, v17}];
    [v8 setImage:v9];

    v10 = MEMORY[0x1E69DCFC0];
    v20[0] = v8;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v12 = [v10 configurationWithActions:v11];

    objc_destroyWeak(&v19);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __92__PKPaymentSetupCredentialsSectionController_layoutWithLayoutEnvironment_sectionIdentifier___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _promptToDeleteItem:*(a1 + 32) completion:v5];
}

- (void)configureSupplementaryRegistration:(id)a3 elementKind:(id)a4 sectionIdentifier:(id)a5
{
  v54[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PKSetupViewConstantsViewMargin();
  v12 = PKSetupListViewConstantsViewMargin();
  if (v12 <= v11)
  {
    v13 = v11 - v12;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = *MEMORY[0x1E69DDC08];
  v15 = v9;
  v16 = v15;
  if (v14 == v15)
  {
  }

  else
  {
    if (!v15 || !v14)
    {

      goto LABEL_16;
    }

    v17 = [v15 isEqualToString:v14];

    if (!v17)
    {
LABEL_16:
      v19 = [MEMORY[0x1E69DCC28] footerConfiguration];
      v46 = *MEMORY[0x1E69DB648];
      v27 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD28], *MEMORY[0x1E69DDC60]);
      v28 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      v47[1] = v28;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:2];

      v18 = [(NSDictionary *)self->_footerForSectionIdentifier objectForKeyedSubscript:v10];
      v13 = 0.0;
      v26 = 5.0;
      v29 = 5.0;
      if (!v18)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }
  }

  v18 = [(PKPaymentSetupCredentialsSectionController *)self headerForSectionIdentifier:v10];
  v19 = [MEMORY[0x1E69DCC28] headerConfiguration];
  [v19 setAxesPreservingSuperviewLayoutMargins:0];
  v20 = v10;
  v21 = v20;
  if (v20 == @"available")
  {
    v25 = 0;
    v26 = 0.0;
    goto LABEL_29;
  }

  if (!v20)
  {
    goto LABEL_26;
  }

  v22 = [(__CFString *)v20 isEqualToString:@"available"];

  v23 = v21;
  v24 = v23;
  if (v22)
  {
    v25 = 0;
    v26 = 0.0;
    if (v23 == @"background_provisioning")
    {
      goto LABEL_30;
    }

LABEL_29:
    v42 = [(__CFString *)v21 isEqualToString:@"background_provisioning"];

    if (v42)
    {
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if (v23 == @"background_provisioning" || (v30 = [(__CFString *)v23 isEqualToString:@"background_provisioning"], v24, (v30 & 1) != 0) || (v31 = v24, v31 == @"unavailable") || (v32 = v31, v33 = [(__CFString *)v31 isEqualToString:@"unavailable"], v32, (v33 & 1) != 0) || (v34 = v32, v34 == @"refund") || (v35 = v34, v36 = [(__CFString *)v34 isEqualToString:@"refund"], v35, (v36 & 1) != 0))
  {
    v51 = *MEMORY[0x1E69DB648];
    v37 = v51;
    v38 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:25.0];
    v52 = v38;
    v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];

    v49[0] = v37;
    v40 = PKOBKListHeaderFont();
    v50[0] = v40;
    v49[1] = *MEMORY[0x1E69DB650];
    v41 = PKOBKListHeaderTextColor();
    v50[1] = v41;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:2];
  }

  else
  {
LABEL_26:
    v53[0] = *MEMORY[0x1E69DB648];
    v40 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD00], *MEMORY[0x1E69DDC60]);
    v54[0] = v40;
    v53[1] = *MEMORY[0x1E69DB650];
    v41 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v54[1] = v41;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:2];
  }

  v26 = 10.0;
  if (v21 == @"background_provisioning")
  {
LABEL_30:
    v43 = +[PKCellAccessoryLoadingIndicator accessory];
    v48 = v43;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
    [v8 setAccessories:v44];

    goto LABEL_32;
  }

  if (v21)
  {
    goto LABEL_29;
  }

LABEL_31:
  [v8 setAccessories:MEMORY[0x1E695E0F0]];
LABEL_32:
  v29 = 10.0;
  if (v18)
  {
LABEL_33:
    [v19 setDirectionalLayoutMargins:{v29, v13, v26, v13}];
    v45 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v18 attributes:v25];
    [v19 setAttributedText:v45];
  }

LABEL_34:
  [v8 setContentConfiguration:{v19, v29}];
}

- (id)headerForSectionIdentifier:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 == @"unavailable")
  {
    goto LABEL_4;
  }

  if (!v3)
  {
LABEL_15:
    v7 = v4;
    goto LABEL_16;
  }

  v5 = [(__CFString *)v3 isEqualToString:@"unavailable"];

  if (!v5)
  {
    v8 = v4;
    if (v8 == @"refund" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"refund"], v9, v10))
    {
      v6 = @"REFUNDED_PURCHASES";
      goto LABEL_5;
    }

    v11 = v9;
    if (v11 == @"background_provisioning" || (v12 = v11, v13 = [(__CFString *)v11 isEqualToString:@"background_provisioning"], v12, v13))
    {
      v6 = @"CARDS_BEING_BACKGROUND_PROVISIONED_SECTION_HEADER";
      goto LABEL_5;
    }

    v14 = v12;
    if (v14 == @"available" || (v15 = v14, v16 = [(__CFString *)v14 isEqualToString:@"available"], v15, (v16 & 1) != 0))
    {
      v17 = 0;
      goto LABEL_17;
    }

    goto LABEL_15;
  }

LABEL_4:
  v6 = @"UNAVAILABLE_CARDS";
LABEL_5:
  v7 = PKLocalizedPaymentString(&v6->isa);
LABEL_16:
  v17 = v7;
LABEL_17:

  return v17;
}

- (void)didSelectItem:(id)a3
{
  v7 = a3;
  if ([v7 isRefund])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [v7 credential];
    [WeakRetained presentRefundFlowForCredential:v5];
LABEL_5:

LABEL_6:
    goto LABEL_7;
  }

  if ([v7 isUnavailable])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [v7 credential];
    [WeakRetained presentUnavailableDetailsForCredential:v5];
    goto LABEL_5;
  }

  if (self->_isEditing)
  {
    if (([v7 isDeletable] & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained showUnableToDeleteCredentialError];
      goto LABEL_6;
    }

    if (UIAccessibilityIsVoiceOverRunning())
    {
      [(PKPaymentSetupCredentialsSectionController *)self _promptToDeleteItem:v7 completion:0];
    }
  }

  else if (([v7 isBeingProvisioned] & 1) == 0)
  {
    WeakRetained = [v7 credential];
    -[PKPaymentSetupCredentialsSectionController setCredential:selected:](self, "setCredential:selected:", WeakRetained, [v7 selected] ^ 1);
    goto LABEL_6;
  }

LABEL_7:
  v6 = objc_loadWeakRetained(&self->_dataChangeDelegate);
  [v6 deselectCells];
}

- (void)paymentPassUpdatedOnCredential:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77__PKPaymentSetupCredentialsSectionController_paymentPassUpdatedOnCredential___block_invoke;
  v6[3] = &unk_1E8010A10;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __77__PKPaymentSetupCredentialsSectionController_paymentPassUpdatedOnCredential___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _credentialItemForCredential:*(a1 + 40)];
  [v4 setPassSnapshot:0];
  v2 = [*(a1 + 32) _cardArtForCredentialItem:v4];
  if (v2)
  {
    v3 = [v4 copy];
    [v3 setPassSnapshot:v2];
    [*(a1 + 32) _replaceAndReloadItem:v4 withNewItem:v3];
  }
}

- (void)_loadCredentials:(id)a3 create:(BOOL)a4
{
  v72 = a4;
  v103 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E696AD18] pk_weakPointerPersonalityToStrongObjectsMapTable];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__PKPaymentSetupCredentialsSectionController__loadCredentials_create___block_invoke;
  aBlock[3] = &unk_1E8014878;
  v7 = v6;
  v97 = v7;
  v81 = _Block_copy(aBlock);
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v8 = self->_sectionIdentifiers;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v92 objects:v102 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v93;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v93 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(NSMutableDictionary *)self->_allCredentials objectForKeyedSubscript:*(*(&v92 + 1) + 8 * i)];
        v81[2](v81, v13);
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v92 objects:v102 count:16];
    }

    while (v10);
  }

  v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v71 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v70 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  allCredentials = self->_allCredentials;
  self->_allCredentials = v15;

  IsSetupAssistant = PKPaymentSetupContextIsSetupAssistant();
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = v5;
  v17 = [obj countByEnumeratingWithState:&v88 objects:v101 count:16];
  v76 = v14;
  if (v17)
  {
    v18 = v17;
    v19 = *v89;
    v73 = *v89;
    v74 = v7;
    v83 = self;
    do
    {
      v20 = 0;
      v77 = v18;
      do
      {
        if (*v89 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v88 + 1) + 8 * v20);
        if (![v14 containsObject:v21])
        {
          v23 = [v7 objectForKey:v21];
          v22 = [v23 copy];

          if (v22)
          {
            [v7 removeObjectForKey:v21];
          }

          else
          {
            if (!v72)
            {
              goto LABEL_54;
            }

            v22 = [[PKPaymentSetupCredentialListItem alloc] initWithCredential:v21];
          }

          if (IsSetupAssistant)
          {
            v24 = [v21 remoteCredential];
            goto LABEL_24;
          }

          v25 = [(PKPaymentProvisioningController *)self->_provisioningController pendingProvisioningForCredential:v21];

          v24 = [v21 remoteCredential];
          if (v25)
          {
            v79 = 0;
            v82 = 0;
            v26 = 0;
            v27 = 1;
            v28 = @"background_provisioning";
LABEL_40:
            v43 = [(NSMutableDictionary *)v83->_allCredentials objectForKeyedSubscript:v28];
            if (!v43)
            {
              v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
              [(NSMutableDictionary *)v83->_allCredentials setObject:v43 forKeyedSubscript:v28];
            }

            [v43 addObject:v22];
            v44 = [v21 hash];
            v80 = v28;
            if ([(PKPaymentSetupCredentialListItem *)v22 lastCheckedCredentialHash]!= v44)
            {
              v45 = [(PKPaymentSetupCredentialsSectionController *)v83 _titleTextForCredential:v21];
              [(PKPaymentSetupListItem *)v22 setTitle:v45];

              v46 = [(PKPaymentSetupCredentialsSectionController *)v83 _detailTextForCredential:v21];
              [(PKPaymentSetupListItem *)v22 setSubtitle:v46];

              [(PKPaymentSetupCredentialListItem *)v22 setLastCheckedCredentialHash:v44];
            }

            if (v26)
            {
              v47 = (v27 | [v21 isDeletable]) ^ 1;
            }

            else
            {
              v47 = 0;
            }

            [(PKPaymentSetupCredentialListItem *)v22 setIsAvailable:v26];
            [(PKPaymentSetupCredentialListItem *)v22 setIsUnavailable:v79];
            [(PKPaymentSetupCredentialListItem *)v22 setIsRefund:v82];
            [(PKPaymentSetupCredentialListItem *)v22 setIsBeingProvisioned:v27];
            if (v79)
            {
              v48 = 1;
            }

            else
            {
              v48 = v83->_isEditing & v47;
            }

            v18 = v77;
            [(PKPaymentSetupListItem *)v22 setDisplayInfo:v48 & 1];
            [(PKPaymentSetupListItem *)v22 setUseMultiSelectAccessory:v26];
            [(PKPaymentSetupListItem *)v22 setDisplayChevron:v82];
            [(PKPaymentSetupCredentialListItem *)v22 setIsCellDisabled:v27];
            if ((v79 | v82 | v27) == 1)
            {
              [(PKPaymentSetupListItem *)v22 setSelected:0];
            }

            v14 = v76;
            [v76 addObject:v21];

            v19 = v73;
            v7 = v74;
            self = v83;
            goto LABEL_53;
          }

LABEL_24:
          if (v24)
          {
            v29 = [v24 status];
            if (v29 == 3)
            {
              v82 = 0;
              v27 = 0;
              v26 = 0;
              v79 = 1;
              v28 = @"unavailable";
              goto LABEL_40;
            }

            if (v29 == 5)
            {
              v30 = [v24 transferableFromDevices];
              v31 = [v30 firstObject];
              v32 = [v31 name];

              [v24 transferType];
              IsCopyable = PKPRemoteCredentialTransferTypeIsCopyable();
              v34 = @"TRANSFERABLE_FROM_CARDS";
              if (IsCopyable)
              {
                v34 = @"COPYABLE_FROM_CARDS";
              }

              v35 = v34;
              p_isa = &v35->isa;
              if (v32)
              {
                v37 = [(__CFString *)v35 stringByAppendingString:@"_DEVICE_NAME"];

                v38 = PKLocalizedPaymentString(v37, &stru_1F3BD5BF0.isa, v32);
                v39 = PKLocalizedPaymentString(&cfstr_TransferableFr_0.isa, &stru_1F3BD5BF0.isa, v32);
                [v70 setObject:v39 forKeyedSubscript:v38];
                p_isa = v37;
              }

              else
              {
                v38 = PKLocalizedPaymentString(&v35->isa);
                v39 = PKLocalizedPaymentString(&cfstr_TransferableFr_1.isa);
                [v70 setObject:v39 forKeyedSubscript:v38];
              }

              v28 = v38;
              if (([v71 containsObject:v38] & 1) == 0)
              {
                [v71 addObject:v38];
              }

              if (v38)
              {
                v79 = 0;
                v82 = 0;
                v27 = 0;
                v26 = 1;
                goto LABEL_40;
              }
            }
          }

          else
          {
            v40 = [v21 purchasedProductCredential];
            v41 = [v40 purchase];
            v42 = [v41 state];

            if (v42 == 3)
            {
              v79 = 0;
              v27 = 0;
              v24 = 0;
              v26 = 0;
              v82 = 1;
              v28 = @"refund";
              goto LABEL_40;
            }
          }

          v79 = 0;
          v82 = 0;
          v27 = 0;
          v26 = 1;
          v28 = @"available";
          goto LABEL_40;
        }

        v22 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(&v22->super.super, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v100 = v21;
          _os_log_impl(&dword_1BD026000, &v22->super.super, OS_LOG_TYPE_DEFAULT, "Attempting to show parked card screen with duplicate credential %@", buf, 0xCu);
        }

LABEL_53:

LABEL_54:
        ++v20;
      }

      while (v18 != v20);
      v18 = [obj countByEnumeratingWithState:&v88 objects:v101 count:16];
    }

    while (v18);
  }

  v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v50 = [(NSMutableDictionary *)self->_allCredentials objectForKeyedSubscript:@"available"];
  v51 = [v50 count];

  if (v51)
  {
    [v49 addObject:@"available"];
  }

  [v49 addObjectsFromArray:v71];
  v52 = [(NSMutableDictionary *)self->_allCredentials objectForKeyedSubscript:@"background_provisioning"];
  v53 = [v52 count];

  if (v53)
  {
    [v49 addObject:@"background_provisioning"];
  }

  v54 = [(NSMutableDictionary *)self->_allCredentials objectForKeyedSubscript:@"refund"];
  v55 = [v54 count];

  if (v55)
  {
    [v49 addObject:@"refund"];
  }

  v56 = [(NSMutableDictionary *)self->_allCredentials objectForKeyedSubscript:@"unavailable"];
  v57 = [v56 count];

  if (v57)
  {
    [v49 addObject:@"unavailable"];
  }

  v58 = [v49 copy];
  sectionIdentifiers = self->_sectionIdentifiers;
  self->_sectionIdentifiers = v58;

  v60 = [v70 copy];
  footerForSectionIdentifier = self->_footerForSectionIdentifier;
  self->_footerForSectionIdentifier = v60;

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v62 = self->_sectionIdentifiers;
  v63 = [(NSArray *)v62 countByEnumeratingWithState:&v84 objects:v98 count:16];
  if (v63)
  {
    v64 = v63;
    v65 = *v85;
    do
    {
      for (j = 0; j != v64; ++j)
      {
        if (*v85 != v65)
        {
          objc_enumerationMutation(v62);
        }

        v67 = [(NSMutableDictionary *)self->_allCredentials objectForKeyedSubscript:*(*(&v84 + 1) + 8 * j)];
        [(PKPaymentSetupCredentialsSectionController *)self _sortCredentialItems:v67];
      }

      v64 = [(NSArray *)v62 countByEnumeratingWithState:&v84 objects:v98 count:16];
    }

    while (v64);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained setShowNoResultsView:{-[PKPaymentSetupCredentialsSectionController _hasCredentialsToShow](self, "_hasCredentialsToShow") ^ 1}];

  v69 = objc_loadWeakRetained(&self->_delegate);
  [v69 credentialSelectionDidChange];
}

void __70__PKPaymentSetupCredentialsSectionController__loadCredentials_create___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = *(a1 + 32);
        v10 = [v8 credential];
        [v9 setObject:v8 forKey:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)_sortCredentialItems:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__PKPaymentSetupCredentialsSectionController__sortCredentialItems___block_invoke;
  v3[3] = &unk_1E801BDD0;
  v3[4] = self;
  [a3 sortUsingComparator:v3];
}

uint64_t __67__PKPaymentSetupCredentialsSectionController__sortCredentialItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 credential];
  v7 = [v5 credential];

  v8 = [v6 compare:v7 withBackedUpDefaultPaymentPassSerialNumber:*(*(a1 + 32) + 80)];
  return v8;
}

- (void)_updateRemoteCredentialCache
{
  v3 = [(PKPaymentProvisioningController *)self->_provisioningController associatedCredentials];
  v4 = [v3 mutableCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v10 = v6;

  v7 = [(PKPaymentProvisioningController *)self->_provisioningController purchaseCredentials];
  [v10 pk_safelyAddObjectsFromArray:v7];

  v8 = [(PKPaymentProvisioningController *)self->_provisioningController provisioningExtensionCredentials];
  [v10 pk_safelyAddObjectsFromArray:v8];

  v9 = [(PKPaymentProvisioningController *)self->_provisioningController pendingCarKeyCredentials];
  [v10 pk_safelyAddObjectsFromArray:v9];

  [(PKPaymentSetupCredentialsSectionController *)self _loadCredentials:v10 create:0];
}

- (unint64_t)_numberOfSelectedCredentials
{
  v2 = [(PKPaymentSetupCredentialsSectionController *)self selectedCredentials];
  v3 = [v2 pk_countObjectsPassingTest:&__block_literal_global_97];

  return v3;
}

- (unint64_t)_numberOfSelectedPeerPaymentCredentials
{
  v2 = [(PKPaymentSetupCredentialsSectionController *)self selectedCredentials];
  v3 = [v2 pk_countObjectsPassingTest:&__block_literal_global_99];

  return v3;
}

- (BOOL)_canSelectedCredential:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_storageSnapshot)
  {
    if ([(PKPaymentSetupCredentialsSectionController *)self _numberOfSelectedCredentials]< self->_maximumNumberOfSelectableCredentials)
    {
      v6 = [v5 appletTypes];
      v7 = v6;
      if (v6 && [v6 count])
      {
        if (([(PKProvisioningSEStorageSnapshot *)self->_storageSnapshot addAppletTypesToSnapshot:v7]& 1) == 0)
        {
          v8 = [(PKPaymentSetupCredentialsSectionController *)self _numberOfSelectedCredentials]== 0;
LABEL_14:

          goto LABEL_16;
        }
      }

      else
      {
        v9 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v11 = 0;
          _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Allowing credential to be selected because no applet type specified", v11, 2u);
        }
      }

      v8 = 1;
      goto LABEL_14;
    }

    v8 = 0;
  }

  else
  {
    v8 = ([v4 isPeerPaymentCredential] & 1) != 0 || -[PKPaymentSetupCredentialsSectionController _numberOfSelectedCredentials](self, "_numberOfSelectedCredentials") < self->_maximumNumberOfSelectableCredentials;
  }

LABEL_16:

  return v8;
}

- (BOOL)_hasCredentialsToShow
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_allCredentials;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_allCredentials objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i), v12];
        v9 = [v8 count];

        if (v9)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (BOOL)_isCarKeyProduct
{
  v2 = [(PKPaymentSetupProduct *)self->_product productIdentifier];
  v3 = [v2 isEqualToString:*MEMORY[0x1E69BC2B8]];

  return v3;
}

- (void)_updateMaximumSelectableCredentials
{
  if ((PKPaymentSetupContextIsMerchantApp() & 1) != 0 || [(PKPaymentSetupCredentialsSectionController *)self _isCarKeyProduct])
  {
    self->_maximumNumberOfSelectableCredentials = 1;
  }

  else
  {
    if ((PKDisableDynamicSEAllocation() & 1) != 0 || !self->_storageSnapshot)
    {
      v3 = [(PKPaymentProvisioningController *)self->_provisioningController availableSecureElementPassSpaces];
      v8 = 0;
      v9 = &v8;
      v10 = 0x2020000000;
      v11 = 0;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __81__PKPaymentSetupCredentialsSectionController__updateMaximumSelectableCredentials__block_invoke;
      v7[3] = &unk_1E801BD10;
      v7[4] = &v8;
      [(PKPaymentSetupCredentialsSectionController *)self _enumerateCredentials:v7];
      if (v3 == 0x7FFFFFFFFFFFFFFFLL || v3 == 0)
      {
        v5 = v9[3];
      }

      else
      {
        v5 = v9[3];
        if (v3 < v5)
        {
          v5 = v3;
        }
      }

      self->_maximumNumberOfSelectableCredentials = v5;
      _Block_object_dispose(&v8, 8);
    }

    else if (!self->_maximumNumberOfSelectableCredentials)
    {
      self->_maximumNumberOfSelectableCredentials = -1;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained credentialSelectionDidChange];
  }
}

- (BOOL)_setCredential:(id)a3 selected:(BOOL)a4 silently:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v38 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v32 = self;
  WeakRetained = self->_sectionIdentifiers;
  v10 = [(NSArray *)WeakRetained countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (!v10)
  {
    v12 = 0;
    v15 = 0;
    goto LABEL_27;
  }

  v11 = v10;
  v30 = v5;
  v31 = v6;
  v12 = 0;
  v13 = *v34;
LABEL_3:
  v14 = 0;
  while (1)
  {
    if (*v34 != v13)
    {
      objc_enumerationMutation(WeakRetained);
    }

    v15 = [(NSMutableDictionary *)v32->_allCredentials objectForKeyedSubscript:*(*(&v33 + 1) + 8 * v14)];
    v16 = [v15 count];
    if (v16)
    {
      break;
    }

LABEL_10:

LABEL_12:
    if (++v14 == v11)
    {
      v11 = [(NSArray *)WeakRetained countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v11)
      {
        goto LABEL_3;
      }

      v15 = 0;
      v21 = 0;
      goto LABEL_37;
    }
  }

  v17 = v16;
  v18 = 0;
  while (1)
  {
    v19 = v12;
    v12 = [v15 objectAtIndexedSubscript:v18];

    v20 = [v12 credential];

    if (v20 == v8)
    {
      break;
    }

    if (v17 == ++v18)
    {
      goto LABEL_10;
    }
  }

  if (!v15)
  {
    goto LABEL_12;
  }

  if (!v12)
  {
    goto LABEL_39;
  }

  if ([v12 selected] == v31)
  {
    v21 = 1;
    goto LABEL_40;
  }

  if (v31)
  {
    v22 = v30;
    if ([(PKPaymentSetupCredentialsSectionController *)v32 _canSelectedCredential:v8])
    {
      goto LABEL_33;
    }

    if (v32->_maximumNumberOfSelectableCredentials == 1 && !v30)
    {
      v23 = [v15 count];
      if (v23)
      {
        v24 = v23;
        v25 = 0;
        while (1)
        {
          v26 = [v15 objectAtIndexedSubscript:v25];
          if ([v26 selected])
          {
            break;
          }

          if (v24 == ++v25)
          {
            goto LABEL_33;
          }
        }

        v29 = [v26 copy];
        [v29 setSelected:0];
        [(PKPaymentSetupCredentialsSectionController *)v32 _replaceAndReloadItem:v26 withNewItem:v29];

LABEL_32:
      }

      goto LABEL_33;
    }

    if (v30)
    {
LABEL_39:
      v21 = 0;
      goto LABEL_40;
    }

    WeakRetained = objc_loadWeakRetained(&v32->_delegate);
    [(NSArray *)WeakRetained showMaxSelectionAlertForCredential:v8];
LABEL_27:
    v21 = 0;
  }

  else
  {
    v22 = v30;
    if (v32->_storageSnapshot)
    {
      v26 = [v8 appletTypes];
      if ([v26 count])
      {
        [(PKProvisioningSEStorageSnapshot *)v32->_storageSnapshot removeAppletTypesFromSnapshot:v26];
      }

      goto LABEL_32;
    }

LABEL_33:
    WeakRetained = [v12 copy];
    [(NSArray *)WeakRetained setSelected:v31];
    if (v22)
    {
      [v15 replaceObjectAtIndex:v18 withObject:WeakRetained];
    }

    else
    {
      [(PKPaymentSetupCredentialsSectionController *)v32 _replaceAndReloadItem:v12 withNewItem:WeakRetained];
      v27 = objc_loadWeakRetained(&v32->_delegate);
      [v27 credentialSelectionDidChange];
    }

    v21 = 1;
  }

LABEL_37:

LABEL_40:
  return v21;
}

- (void)_primeItemSelectionAndReloadData:(BOOL)a3
{
  if (!self->_isEditing)
  {
    v3 = a3;
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x2020000000;
    v23[3] = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v5 = [(PKPaymentProvisioningController *)self->_provisioningController webService];
    v6 = [v5 targetDevice];
    v7 = [v6 deviceClass];

    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __79__PKPaymentSetupCredentialsSectionController__primeItemSelectionAndReloadData___block_invoke;
    v14 = &unk_1E801BE18;
    v8 = v7;
    v15 = v8;
    v16 = self;
    v17 = v23;
    v18 = &v19;
    [(PKPaymentSetupCredentialsSectionController *)self _enumerateCredentials:&v11];
    if (v3 && *(v20 + 24) == 1)
    {
      WeakRetained = objc_loadWeakRetained(&self->_dataChangeDelegate);
      [WeakRetained reloadAnimated:{0, v11, v12, v13, v14}];

      v10 = objc_loadWeakRetained(&self->_delegate);
      [v10 credentialSelectionDidChange];
    }

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(v23, 8);
  }
}

uint64_t __79__PKPaymentSetupCredentialsSectionController__primeItemSelectionAndReloadData___block_invoke(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  if (([v6 selected] & 1) == 0 && objc_msgSend(v6, "isAvailable"))
  {
    v7 = [v6 credential];
    v8 = [v7 remoteCredential];

    if (!v8 || [v8 status] != 5)
    {
      goto LABEL_12;
    }

    v9 = [v8 transferableFromDevices];
    v10 = [v9 firstObject];

    v11 = [v10 deviceClass];
    v12 = v11;
    if (v11)
    {
      v13 = a1[4];
      v14 = v11;
      v15 = v13;
      v16 = v15;
      if (v14 == v15)
      {

LABEL_11:
LABEL_12:
        v18 = a1[5];
        v19 = [v6 credential];
        v20 = [v18 _setCredential:v19 selected:1 silently:1];

        if ((v20 & 1) == 0)
        {
          if ((PKDisableDynamicSEAllocation() & 1) == 0 && !*(*(a1[6] + 8) + 24))
          {
            *(a1[5] + 152) = 1;
          }

          *a4 = 1;
        }

        ++*(*(a1[6] + 8) + 24);
        *(*(a1[7] + 8) + 24) = (*(*(a1[7] + 8) + 24) | v20) & 1;
        goto LABEL_20;
      }

      if (v15)
      {
        v17 = [v14 isEqualToString:v15];

        if (!v17)
        {
          goto LABEL_19;
        }

        goto LABEL_11;
      }
    }

LABEL_19:

LABEL_20:
  }

  return 0;
}

- (void)_promptToDeleteItem:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [v6 credential];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__PKPaymentSetupCredentialsSectionController__promptToDeleteItem_completion___block_invoke;
  v12[3] = &unk_1E801BE40;
  objc_copyWeak(&v15, &location);
  v10 = v6;
  v13 = v10;
  v11 = v7;
  v14 = v11;
  [WeakRetained showDeleteConfirmationWithCredential:v9 completion:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

uint64_t __77__PKPaymentSetupCredentialsSectionController__promptToDeleteItem_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained deleteItem:*(a1 + 32)];
  }

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)deleteItem:(id)a3
{
  v4 = a3;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__34;
  v34 = __Block_byref_object_dispose__34;
  v35 = [v4 copy];
  [v31[5] setSelected:0];
  [v31[5] setLoadingIndicatorVisible:1];
  [(PKPaymentSetupCredentialsSectionController *)self _replaceAndReloadItem:v4 withNewItem:v31[5]];
  if ([v4 selected])
  {
    v5 = 1;
  }

  else
  {
    selectedCredentialsBeforeEditing = self->_selectedCredentialsBeforeEditing;
    v7 = [v4 credential];
    v5 = [(NSHashTable *)selectedCredentialsBeforeEditing containsObject:v7];
  }

  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__34;
  v28[4] = __Block_byref_object_dispose__34;
  v29 = 0;
  provisioningController = self->_provisioningController;
  v10 = [v4 credential];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __57__PKPaymentSetupCredentialsSectionController_deleteItem___block_invoke;
  v25[3] = &unk_1E801BE68;
  v27 = v28;
  v11 = v8;
  v26 = v11;
  [(PKPaymentProvisioningController *)provisioningController deleteCredential:v10 completionHandler:v25];

  dispatch_group_enter(v11);
  v12 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PKPaymentSetupCredentialsSectionController_deleteItem___block_invoke_2;
  block[3] = &unk_1E8010970;
  v24 = v11;
  v13 = v11;
  v14 = MEMORY[0x1E69E96A0];
  dispatch_after(v12, MEMORY[0x1E69E96A0], block);
  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __57__PKPaymentSetupCredentialsSectionController_deleteItem___block_invoke_3;
  v16[3] = &unk_1E801BE90;
  objc_copyWeak(&v20, &location);
  v18 = &v30;
  v19 = v28;
  v21 = v5;
  v16[4] = self;
  v17 = v4;
  v15 = v4;
  dispatch_group_notify(v13, v14, v16);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(&v30, 8);
}

void __57__PKPaymentSetupCredentialsSectionController_deleteItem___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __57__PKPaymentSetupCredentialsSectionController_deleteItem___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v3 = [*(*(*(a1 + 48) + 8) + 40) copy];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    if (*(*(*(a1 + 56) + 8) + 40))
    {
      if (*(a1 + 72) == 1)
      {
        if (*(*(a1 + 32) + 128) == 1)
        {
          v6 = *(v10 + 15);
          v7 = [*(a1 + 40) credential];
          [v6 addObject:v7];
        }

        else
        {
          [*(*(*(a1 + 48) + 8) + 40) setSelected:1];
        }
      }

      [*(*(*(a1 + 48) + 8) + 40) setLoadingIndicatorVisible:0];
      [v10 _replaceAndReloadItem:*(a1 + 40) withNewItem:*(*(*(a1 + 48) + 8) + 40)];
      v9 = objc_loadWeakRetained(v10 + 20);
      [v9 showCredentialDeletionError];
    }

    else
    {
      [v10 _removeCredentialItem:*(a1 + 40)];
      v8 = objc_loadWeakRetained(v10 + 21);
      [v8 reloadAnimated:1];

      v9 = objc_loadWeakRetained((*(a1 + 32) + 160));
      [v9 setShowNoResultsView:{objc_msgSend(*(a1 + 32), "_hasCredentialsToShow") ^ 1}];
    }

    WeakRetained = v10;
  }
}

- (id)_detailTextForCredential:(id)a3
{
  v3 = a3;
  v4 = [v3 detailDescriptionWithEnvironment:PKPaymentSetupContextIsSetupAssistant()];

  return v4;
}

- (id)_cardArtForCredentialItem:(id)a3
{
  v4 = a3;
  v5 = _UISolariumFeatureFlagEnabled();
  if (v5)
  {
    v6 = 40.0;
  }

  else
  {
    v6 = 53.0;
  }

  snapshotCoordinator = self->_snapshotCoordinator;
  v12[1] = 3221225472;
  v12[0] = MEMORY[0x1E69E9820];
  v12[2] = __72__PKPaymentSetupCredentialsSectionController__cardArtForCredentialItem___block_invoke;
  v12[3] = &unk_1E801BEB8;
  if (v5)
  {
    v8 = 26.0;
  }

  else
  {
    v8 = 32.0;
  }

  v12[4] = self;
  v13 = v4;
  v9 = v4;
  v10 = [(PKPassSnapshotCoordinator *)snapshotCoordinator cardSnapshotForSource:v9 withSize:v12 completion:v6, v8];

  return v10;
}

void __72__PKPaymentSetupCredentialsSectionController__cardArtForCredentialItem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = [a3 credential];
  v6 = [*(a1 + 32) _credentialItemForCredential:v8];
  v7 = [v6 copy];

  [v7 setPassSnapshot:v5];
  [v7 setIsSnapshotFetchInProgress:0];
  [*(a1 + 32) _replaceAndReloadItem:*(a1 + 40) withNewItem:v7];
}

- (void)_replaceAndReloadItem:(id)a3 withNewItem:(id)a4
{
  v5 = a4;
  v6 = [v5 credential];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __80__PKPaymentSetupCredentialsSectionController__replaceAndReloadItem_withNewItem___block_invoke;
  v13 = &unk_1E801BEE0;
  v14 = v6;
  v7 = v5;
  v15 = v7;
  v8 = v6;
  if ([(PKPaymentSetupCredentialsSectionController *)self _enumerateCredentials:&v10])
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataChangeDelegate);
    [WeakRetained reloadItem:v7 animated:{0, v10, v11, v12, v13, v14, v15}];
  }
}

id __80__PKPaymentSetupCredentialsSectionController__replaceAndReloadItem_withNewItem___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 credential];
  v7 = PKEqualObjects();

  if (v7)
  {
    *a4 = 1;
    v8 = *(a1 + 40);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_credentialItemForCredential:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__34;
  v15 = __Block_byref_object_dispose__34;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__PKPaymentSetupCredentialsSectionController__credentialItemForCredential___block_invoke;
  v8[3] = &unk_1E801BF08;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(PKPaymentSetupCredentialsSectionController *)self _enumerateCredentials:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __75__PKPaymentSetupCredentialsSectionController__credentialItemForCredential___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = [v7 credential];
  v9 = PKEqualObjects();

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }

  return 0;
}

- (id)_credentialItemFromIndexPath:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataChangeDelegate);
  v6 = [WeakRetained sectionIdentifierForIndex:{objc_msgSend(v4, "section")}];

  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_allCredentials objectForKeyedSubscript:v6];
    v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_removeCredentialItem:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__PKPaymentSetupCredentialsSectionController__removeCredentialItem___block_invoke;
  aBlock[3] = &unk_1E801BF30;
  v13 = v4;
  v19 = v13;
  v5 = _Block_copy(aBlock);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_sectionIdentifiers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = [(NSMutableDictionary *)self->_allCredentials objectForKeyedSubscript:*(*(&v14 + 1) + 8 * v10)];
      v12 = v5[2](v5, v11);

      if (v12)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

BOOL __68__PKPaymentSetupCredentialsSectionController__removeCredentialItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 1;
    while (1)
    {
      v8 = [v3 objectAtIndexedSubscript:v6];
      v9 = [v8 credential];
      v10 = [*(a1 + 32) credential];

      if (v9 == v10)
      {
        break;
      }

      v7 = ++v6 < v5;
      if (v5 == v6)
      {
        goto LABEL_5;
      }
    }

    [v3 removeObjectAtIndex:v6];
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

  return v7;
}

- (BOOL)_enumerateCredentials:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_sectionIdentifiers;
  v21 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  v5 = 0;
  if (v21)
  {
    v19 = *v25;
    v20 = self;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v25 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v24 + 1) + 8 * v6);
      v22 = v6;
      v8 = [(NSMutableDictionary *)self->_allCredentials objectForKeyedSubscript:v7];
      v9 = [v8 count];
      v23 = 0;
      if (v9)
      {
        v10 = v9;
        v11 = 1;
        do
        {
          v12 = [v8 objectAtIndexedSubscript:v11 - 1];
          v13 = v4[2](v4, v7, v12, &v23);

          if (v13)
          {
            [v8 setObject:v13 atIndexedSubscript:v11 - 1];
            v5 = 1;
          }

          v14 = v23;

          if (v14)
          {
            break;
          }
        }

        while (v11++ < v10);
      }

      self = v20;
      [(NSMutableDictionary *)v20->_allCredentials setObject:v8 forKeyedSubscript:v7];
      v16 = v23;

      if (v16)
      {
        break;
      }

      v6 = v22 + 1;
      if (v22 + 1 == v21)
      {
        v21 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v21)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v5 & 1;
}

- (PKPaymentSetupCredentialsSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PKDynamicListDataChangeDelegate)dataChangeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dataChangeDelegate);

  return WeakRetained;
}

@end