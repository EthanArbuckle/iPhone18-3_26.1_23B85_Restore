@interface PKPassShareDetailsViewController
- (PKPassShareDetailsViewController)initWithShare:(id)a3 sharesController:(id)a4 authorizer:(id)a5;
- (id)avatarView;
- (void)_saveTapped;
- (void)_setIsLoading:(BOOL)a3;
- (void)_setRecipient:(id)a3;
- (void)_setSender:(id)a3;
- (void)_showDisplayableError:(id)a3;
- (void)_updateShareToShare:(id)a3;
- (void)loadView;
- (void)passSharesListSectionController:(id)a3 didSelectShare:(id)a4;
- (void)passSharesListSectionController:(id)a3 presentAlert:(id)a4 forItem:(id)a5;
- (void)passSharesListSectionControllerDidFinishRevokingShares:(id)a3;
- (void)sharePreviewSectionControllerDidSelectEntitlements:(id)a3;
- (void)showSaveButtonIfNecessary;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PKPassShareDetailsViewController

- (PKPassShareDetailsViewController)initWithShare:(id)a3 sharesController:(id)a4 authorizer:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v36.receiver = self;
  v36.super_class = PKPassShareDetailsViewController;
  v11 = [(PKPaymentSetupOptionsViewController *)&v36 init];
  if (v11)
  {
    v12 = [v8 copy];
    share = v11->_share;
    v11->_share = v12;

    objc_storeStrong(&v11->_sharesController, a4);
    objc_storeStrong(&v11->_authorizer, a5);
    v14 = [(PKSharedPassSharesController *)v11->_sharesController senderShareForShare:v11->_share];
    senderShare = v11->_senderShare;
    v11->_senderShare = v14;

    v16 = objc_alloc(MEMORY[0x1E69B8A38]);
    v17 = [(PKPassShare *)v11->_share sharedEntitlements];
    v18 = [(PKSharedPassSharesController *)v11->_sharesController shareableEntitlements];
    v19 = [(PKSharedPassSharesController *)v11->_sharesController possiblePredefinedEntitlements];
    v20 = [v16 initWithSharedEntitlements:v17 availableEntitlements:v18 predefinedSharedEntitlements:v19 editable:{-[PKPassShare isEditable](v11->_share, "isEditable")}];
    entitlementComposer = v11->_entitlementComposer;
    v11->_entitlementComposer = v20;

    [(PKPassEntitlementsComposer *)v11->_entitlementComposer setMaxSelectionCount:[(PKSharedPassSharesController *)v11->_sharesController maxEntitlementSelectionCount]];
    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v23 = [PKSharePreviewOverviewSectionController alloc];
    v24 = [(PKSharedPassSharesController *)v11->_sharesController pass];
    v25 = -[PKSharePreviewOverviewSectionController initWithMode:accessType:entitlementComposer:delegate:](v23, "initWithMode:accessType:entitlementComposer:delegate:", 2, [v24 accessType], v11->_entitlementComposer, v11);
    overviewSectionController = v11->_overviewSectionController;
    v11->_overviewSectionController = v25;

    [v22 addObject:v11->_overviewSectionController];
    [v8 status];
    if (PKShareStatusIsPending() & 1) != 0 || ([v8 status], (PKShareStatusIsPendingVerification()) || (-[PKPassShare activationOptions](v11->_share, "activationOptions"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "containsVehicleEnteredPin"), v27, v28))
    {
      v29 = [PKSharePreviewAdditionalSecuritySectionController alloc];
      v30 = [(PKPassShare *)v11->_share activationOptions];
      v31 = [(PKSharePreviewAdditionalSecuritySectionController *)v29 initWithMode:2 activationOptions:v30 delegate:v11];
      additionalSecuritySectionController = v11->_additionalSecuritySectionController;
      v11->_additionalSecuritySectionController = v31;

      [v22 addObject:v11->_additionalSecuritySectionController];
    }

    v33 = [[PKPassSharesListSectionController alloc] initWithMode:2 sharesController:v11->_sharesController rootShare:v11->_share delegate:v11];
    sharesSectionController = v11->_sharesSectionController;
    v11->_sharesSectionController = v33;

    [v22 addObject:v11->_sharesSectionController];
    [(PKPaymentSetupOptionsViewController *)v11 setSections:v22 animated:0];
  }

  return v11;
}

- (void)loadView
{
  v15.receiver = self;
  v15.super_class = PKPassShareDetailsViewController;
  [(PKDynamicCollectionViewController *)&v15 loadView];
  v3 = objc_alloc_init(PKAvatarView);
  [(PKAvatarView *)v3 setDiameter:100.0];
  v4 = [(PKPaymentSetupOptionsViewController *)self headerView];
  [v4 setTopArtView:v3];

  v5 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [(PKPaymentSetupOptionsViewController *)self setBackgroundColor:v5];

  v6 = [(PKDynamicCollectionViewController *)self collectionView];
  [v6 setContentInset:{10.0, 0.0, 0.0, 0.0}];

  if (self->_senderShare)
  {
    v7 = [(PKSharedPassSharesController *)self->_sharesController contactForShare:?];
    if (v7)
    {
      [(PKPassShareDetailsViewController *)self _setSender:v7];
    }

    else
    {
      sharesController = self->_sharesController;
      senderShare = self->_senderShare;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __44__PKPassShareDetailsViewController_loadView__block_invoke;
      v14[3] = &unk_1E80178C0;
      v14[4] = self;
      [(PKSharedPassSharesController *)sharesController fetchContactForShare:senderShare withCompletion:v14];
    }
  }

  v10 = [(PKSharedPassSharesController *)self->_sharesController contactForShare:self->_share];
  if (v10)
  {
    [(PKPassShareDetailsViewController *)self _setRecipient:v10];
  }

  else
  {
    v11 = self->_sharesController;
    share = self->_share;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __44__PKPassShareDetailsViewController_loadView__block_invoke_2;
    v13[3] = &unk_1E80178C0;
    v13[4] = self;
    [(PKSharedPassSharesController *)v11 fetchContactForShare:share withCompletion:v13];
  }
}

void __44__PKPassShareDetailsViewController_loadView__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 _setSender:a2];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695CF18]);
    v4 = [*(*(a1 + 32) + 1304) recipientNickname];
    [v5 setNickname:v4];

    [*(a1 + 32) _setSender:v5];
  }
}

void __44__PKPassShareDetailsViewController_loadView__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 _setRecipient:a2];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695CF18]);
    v4 = [*(*(a1 + 32) + 1296) recipientNickname];
    [v6 setNickname:v4];

    v5 = [*(*(a1 + 32) + 1296) recipientNickname];
    [v6 setGivenName:v5];

    [*(a1 + 32) _setRecipient:v6];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = PKPassShareDetailsViewController;
  [(PKPaymentSetupOptionsViewController *)&v10 viewWillAppear:a3];
  [(PKPassShareDetailsViewController *)self showSaveButtonIfNecessary];
  v4 = [(PKPassShareDetailsViewController *)self navigationController];
  v5 = [v4 viewControllers];
  v6 = [v5 count];

  if (v6 == 1)
  {
    v7 = [(PKPassShareDetailsViewController *)self navigationItem];
    v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__donePressed];
    [v7 setRightBarButtonItem:v8];
  }

  v9 = [(PKPassShareDetailsViewController *)self navigationItem];
  [v9 setLargeTitleDisplayMode:2];
}

- (void)_setSender:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v15[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v7 = [v4 areKeysAvailable:v6];

  if (!v7 || ([MEMORY[0x1E695CD80] stringFromContact:v4 style:0], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = [(PKPassShare *)self->_senderShare recipientNickname];
  }

  v9 = [(PKPassShare *)self->_share status];
  if (v9 > 8)
  {
    goto LABEL_13;
  }

  if (((1 << v9) & 0x2C) != 0)
  {
    v10 = @"SHARED_KEY_INVITED_CELL_SUBTITLE";
    goto LABEL_11;
  }

  if (((1 << v9) & 0x1C0) == 0)
  {
    if (v9 == 4)
    {
      v10 = @"SHARED_KEY_PENDING_ACTIVATION_CELL_SUBTITLE";
      goto LABEL_11;
    }

LABEL_13:
    if (v9 != 1)
    {
      v11 = 0;
      goto LABEL_12;
    }

    v12 = [(PKPassShare *)self->_share creationDate];
    v13 = v12;
    if (v8 && v12)
    {
      v14 = PKLongDateString();
      PKLocalizedShareableCredentialString(&cfstr_ShareManagemen_4.isa, &stru_1F3BD6370.isa, v8, v14);
    }

    else
    {
      if (v8)
      {
        v11 = PKLocalizedShareableCredentialString(&cfstr_ShareManagemen_5.isa, &stru_1F3BD5BF0.isa, v8);
        goto LABEL_21;
      }

      if (!v12)
      {
        v11 = 0;
        goto LABEL_21;
      }

      v14 = PKLongDateString();
      PKLocalizedShareableCredentialString(&cfstr_ShareManagemen_6.isa, &stru_1F3BD5BF0.isa, v14);
    }
    v11 = ;

LABEL_21:
    goto LABEL_12;
  }

  v10 = @"SHARED_KEY_REVOKING_CELL_SUBTITLE";
LABEL_11:
  v11 = PKLocalizedCredentialString(&v10->isa);
LABEL_12:
  [(PKPaymentSetupOptionsViewController *)self setSubtitleText:v11];
}

- (void)_setRecipient:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKPassShareDetailsViewController *)self avatarView];
  [v5 setContact:v4];

  v6 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v10[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v8 = [v4 areKeysAvailable:v7];

  if (!v8 || ([MEMORY[0x1E695CD80] stringFromContact:v4 style:0], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = [(PKPassShare *)self->_share recipientNickname];
  }

  [(PKPaymentSetupOptionsViewController *)self setTitleText:v9];
}

- (void)_saveTapped
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = [(PKPassEntitlementsComposer *)self->_entitlementComposer composeSharedEntitlements];
  v4 = [(PKPassShare *)self->_share copy];
  [v4 setSharedEntitlements:v3];
  if ([v3 count])
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v5 = v3;
    v6 = 0;
    v7 = [v5 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v7)
    {
      v8 = *v36;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v36 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v35 + 1) + 8 * i);
          if (v6 <= [v10 creationVersion])
          {
            v6 = [v10 creationVersion];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v7);
    }

    if (v6 <= *MEMORY[0x1E69BC508])
    {
      [(PKPassShareDetailsViewController *)self _updateShareToShare:v4];
    }

    else
    {
      v11 = [(PKSharedPassSharesController *)self->_sharesController pass];
      v12 = PKLocalizationKeyForPassType();
      v13 = PKLocalizedShareableCredentialString(v12);

      v14 = [(PKSharedPassSharesController *)self->_sharesController pass];
      v15 = PKLocalizationKeyForPassType();
      v16 = PKLocalizedShareableCredentialString(v15);

      v17 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v13 message:v16 preferredStyle:1];
      objc_initWeak(&location, self);
      v18 = MEMORY[0x1E69DC648];
      v19 = PKLocalizedPaymentString(&cfstr_Continue.isa);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __47__PKPassShareDetailsViewController__saveTapped__block_invoke;
      v31[3] = &unk_1E80178E8;
      objc_copyWeak(&v33, &location);
      v32 = v4;
      v20 = [v18 actionWithTitle:v19 style:0 handler:v31];
      [v17 addAction:v20];

      v21 = MEMORY[0x1E69DC648];
      v22 = PKLocalizedString(&cfstr_CancelButtonTi.isa);
      v23 = [v21 actionWithTitle:v22 style:0 handler:0];
      [v17 addAction:v23];

      [(PKPassShareDetailsViewController *)self presentViewController:v17 animated:1 completion:0];
      objc_destroyWeak(&v33);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v24 = MEMORY[0x1E69DC650];
    v25 = PKLocalizedShareableCredentialString(&cfstr_ShareManagemen_7.isa);
    v26 = PKLocalizedShareableCredentialString(&cfstr_ShareManagemen_8.isa);
    v27 = [v24 alertControllerWithTitle:v25 message:v26 preferredStyle:1];

    v28 = MEMORY[0x1E69DC648];
    v29 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
    v30 = [v28 actionWithTitle:v29 style:0 handler:0];
    [v27 addAction:v30];

    [(PKPassShareDetailsViewController *)self presentViewController:v27 animated:1 completion:0];
  }
}

void __47__PKPassShareDetailsViewController__saveTapped__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateShareToShare:*(a1 + 32)];
}

- (void)_updateShareToShare:(id)a3
{
  v4 = a3;
  [(PKPassShareDetailsViewController *)self _setIsLoading:1];
  objc_initWeak(&location, self);
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__16;
  v15[4] = __Block_byref_object_dispose__16;
  v16 = 0;
  authorizer = self->_authorizer;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__PKPassShareDetailsViewController__updateShareToShare___block_invoke;
  v12[3] = &unk_1E8017938;
  v12[4] = self;
  v6 = v4;
  v13 = v6;
  v14 = v15;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__PKPassShareDetailsViewController__updateShareToShare___block_invoke_3;
  v8[3] = &unk_1E8017960;
  objc_copyWeak(&v11, &location);
  v10 = v15;
  v7 = v6;
  v9 = v7;
  [(PKShareAuthorizationSession *)authorizer authorizeDeviceOwnerWithAuthHandler:v12 completion:v8];

  objc_destroyWeak(&v11);
  _Block_object_dispose(v15, 8);

  objc_destroyWeak(&location);
}

void __56__PKPassShareDetailsViewController__updateShareToShare___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1[5];
  v7 = *(a1[4] + 1312);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__PKPassShareDetailsViewController__updateShareToShare___block_invoke_2;
  v10[3] = &unk_1E8017910;
  v8 = a1[6];
  v11 = v5;
  v12 = v8;
  v9 = v5;
  [v7 updateShare:v6 authorization:a2 completion:v10];
}

void __56__PKPassShareDetailsViewController__updateShareToShare___block_invoke_2(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  (*(*(a1 + 32) + 16))();
}

void __56__PKPassShareDetailsViewController__updateShareToShare___block_invoke_3(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    [WeakRetained _setIsLoading:0];
    if (*(*(*(a1 + 40) + 8) + 40) || (a2 & 1) == 0)
    {
      v6 = [MEMORY[0x1E696ABC0] pkSharingError:9];
      [v7 _showDisplayableError:v6];
    }

    else
    {
      v5 = *(a1 + 32);
      v6 = v7[162];
      v7[162] = v5;
    }

    [v7 showSaveButtonIfNecessary];
    [v7 reloadDataAnimated:1];
    WeakRetained = v7;
  }
}

- (void)_setIsLoading:(BOOL)a3
{
  if (a3)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [v8 startAnimating];
    v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v8];
    v5 = [(PKPassShareDetailsViewController *)self navigationItem];
    [v5 setRightBarButtonItem:v4];

    v6 = [(PKDynamicCollectionViewController *)self collectionView];
    [v6 setUserInteractionEnabled:0];
  }

  else
  {
    v7 = [(PKPassShareDetailsViewController *)self navigationItem];
    [v7 setRightBarButtonItem:0];

    v8 = [(PKDynamicCollectionViewController *)self collectionView];
    [v8 setUserInteractionEnabled:1];
  }
}

- (void)_showDisplayableError:(id)a3
{
  v4 = PKSharingDisplayableError(a3);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = PKDisplayableErrorForCommonType();
  }

  v14 = v6;

  v7 = MEMORY[0x1E69DC650];
  v8 = PKTitleForDisplayableError();
  v9 = MEMORY[0x1BFB42D10](v14);
  v10 = [v7 alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  v11 = MEMORY[0x1E69DC648];
  v12 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
  v13 = [v11 actionWithTitle:v12 style:0 handler:0];
  [v10 addAction:v13];

  [(PKPassShareDetailsViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (id)avatarView
{
  v2 = [(PKPaymentSetupOptionsViewController *)self headerView];
  v3 = [v2 topArtView];

  return v3;
}

- (void)showSaveButtonIfNecessary
{
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4 = [(PKPassShare *)self->_share sharedEntitlements];
  v16 = [v3 initWithArray:v4];

  v5 = objc_alloc(MEMORY[0x1E695DFD8]);
  v6 = [(PKPassEntitlementsComposer *)self->_entitlementComposer composeSharedEntitlements];
  v7 = [v5 initWithArray:v6];

  v8 = [(PKPassShare *)self->_share isEditable];
  v9 = [v7 isEqualToSet:v16];
  if (!self->_saveButton)
  {
    v10 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:3 target:self action:sel__saveTapped];
    saveButton = self->_saveButton;
    self->_saveButton = v10;
  }

  v12 = v9 | ~v8;
  v13 = [(PKPassShareDetailsViewController *)self navigationItem];
  v14 = v13;
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = self->_saveButton;
  }

  [v13 setRightBarButtonItem:v15];
}

- (void)passSharesListSectionController:(id)a3 didSelectShare:(id)a4
{
  v5 = a4;
  v7 = [[PKPassShareDetailsViewController alloc] initWithShare:v5 sharesController:self->_sharesController authorizer:self->_authorizer];

  v6 = [(PKPassShareDetailsViewController *)self navigationController];
  [v6 pushViewController:v7 animated:1];
}

- (void)passSharesListSectionControllerDidFinishRevokingShares:(id)a3
{
  v4 = [(PKPassShareDetailsViewController *)self navigationController];
  v3 = [v4 popViewControllerAnimated:1];
}

- (void)passSharesListSectionController:(id)a3 presentAlert:(id)a4 forItem:(id)a5
{
  v9 = a4;
  if (a5)
  {
    v7 = [(PKDynamicCollectionViewController *)self cellForItem:a5];
    v8 = [v9 popoverPresentationController];
    [v8 setSourceItem:v7];
  }

  [(PKPassShareDetailsViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)sharePreviewSectionControllerDidSelectEntitlements:(id)a3
{
  v4 = [PKPassShareEntitlementSelectionViewController alloc];
  v5 = [(PKSharedPassSharesController *)self->_sharesController pass];
  v7 = -[PKPassShareEntitlementSelectionViewController initWithAccessType:mode:entitlementComposer:](v4, "initWithAccessType:mode:entitlementComposer:", [v5 accessType], 2, self->_entitlementComposer);

  v6 = [(PKPassShareDetailsViewController *)self navigationController];
  [v6 pushViewController:v7 animated:1];
}

@end