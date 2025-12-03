@interface PKPassSharesListSectionController
- (PKPassSharesListSectionController)initWithMode:(unint64_t)mode sharesController:(id)controller rootShare:(id)share delegate:(id)delegate;
- (PKPassSharesListSectionControllerDelegate)delegate;
- (id)_alertForDisplayableError:(id)error;
- (id)_alertForRevokeOptionsForShare:(id)share;
- (id)_contactForPKShareRowItem:(id)item;
- (id)_displayableShares;
- (id)_subtitleForShare:(id)share;
- (id)_titleForPKShareRowItem:(id)item;
- (id)decorateListCell:(id)cell forPKShareRowItem:(id)item;
- (id)headerAttributedStringForIdentifier:(id)identifier;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)_confirmRevokeShare:(id)share forItem:(id)item;
- (void)_revokeAllShares;
- (void)_revokeShare:(id)share cascade:(BOOL)cascade;
- (void)_updatePKShareRowItems;
- (void)_updateStopSharingItemToDisabled:(BOOL)disabled;
- (void)dealloc;
- (void)didSelectItem:(id)item;
- (void)sharedPassSharesControllerDidUpdateShares:(id)shares;
@end

@implementation PKPassSharesListSectionController

- (PKPassSharesListSectionController)initWithMode:(unint64_t)mode sharesController:(id)controller rootShare:(id)share delegate:(id)delegate
{
  v24[2] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  shareCopy = share;
  delegateCopy = delegate;
  v24[0] = @"SharesSection";
  v24[1] = @"ShareActionsSection";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v23.receiver = self;
  v23.super_class = PKPassSharesListSectionController;
  v15 = [(PKPassShareSectionController *)&v23 initWithIdentifiers:v14];

  if (v15)
  {
    v15->_mode = mode;
    objc_storeStrong(&v15->_sharesController, controller);
    [(PKSharedPassSharesController *)v15->_sharesController addDelegate:v15];
    objc_storeWeak(&v15->_delegate, delegateCopy);
    objc_storeStrong(&v15->_rootShare, share);
    objc_initWeak(&location, v15);
    v16 = MEMORY[0x1E69DC800];
    v17 = objc_opt_class();
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __86__PKPassSharesListSectionController_initWithMode_sharesController_rootShare_delegate___block_invoke;
    v20[3] = &unk_1E8012088;
    objc_copyWeak(&v21, &location);
    v18 = [v16 registrationWithCellClass:v17 configurationHandler:v20];
    [(PKPaymentSetupListSectionController *)v15 setCellRegistration:v18];

    [(PKPassSharesListSectionController *)v15 _updatePKShareRowItems];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v15;
}

void __86__PKPassSharesListSectionController_initWithMode_sharesController_rootShare_delegate___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = [WeakRetained decorateListCell:v9 forPKShareRowItem:v6];
  }
}

- (void)dealloc
{
  [(PKSharedPassSharesController *)self->_sharesController removeDelegate:self];
  v3.receiver = self;
  v3.super_class = PKPassSharesListSectionController;
  [(PKPassSharesListSectionController *)&v3 dealloc];
}

- (void)_updatePKShareRowItems
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  _displayableShares = [(PKPassSharesListSectionController *)self _displayableShares];
  v5 = [_displayableShares countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v36;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(_displayableShares);
        }

        v9 = *(*(&v35 + 1) + 8 * i);
        v10 = objc_alloc_init(PKShareRowItem);
        [(PKShareRowItem *)v10 setShare:v9];
        v11 = [(PKPassSharesListSectionController *)self _titleForPKShareRowItem:v10];
        [(PKShareRowItem *)v10 setTitle:v11];

        v12 = [(PKPassSharesListSectionController *)self _subtitleForShare:v9];
        [(PKShareRowItem *)v10 setSubtitle:v12];

        v13 = [(PKPassSharesListSectionController *)self _contactForPKShareRowItem:v10];
        [(PKShareRowItem *)v10 setContact:v13];

        [(PKShareRowItem *)v10 setShowContactAvatar:1];
        [v3 addObject:v10];
      }

      v6 = [_displayableShares countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v6);
  }

  if ([(PKSharedPassSharesController *)self->_sharesController sharingEnabled]&& !self->_rootShare)
  {
    v14 = objc_alloc_init(PKShareRowItem);
    v15 = PKLocalizedShareableCredentialString(&cfstr_ShareManagemen.isa);
    [(PKShareRowItem *)v14 setTitle:v15];

    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    [(PKShareRowItem *)v14 setTitleTextColor:systemBlueColor];

    v17 = MEMORY[0x1E69DCAD8];
    systemBlueColor2 = [MEMORY[0x1E69DC888] systemBlueColor];
    v39[0] = systemBlueColor2;
    quaternaryLabelColor = [MEMORY[0x1E69DC888] quaternaryLabelColor];
    v39[1] = quaternaryLabelColor;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
    v21 = [v17 configurationWithPaletteColors:v20];

    v22 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus.circle.fill" withConfiguration:v21];
    [(PKShareRowItem *)v14 setIcon:v22];

    [(PKShareRowItem *)v14 setIsAddShareItem:1];
    [v3 addObject:v14];
  }

  v23 = [v3 copy];
  shareItems = self->_shareItems;
  self->_shareItems = v23;

  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  rootShare = self->_rootShare;
  if (rootShare)
  {
    isRevokable = [(PKPassShare *)rootShare isRevokable];
    v28 = isRevokable;
    if (self->_rootShare)
    {
      if (!isRevokable)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v28 = 0;
  }

  hasRevokableShares = [(PKSharedPassSharesController *)self->_sharesController hasRevokableShares];
  if (v28 & 1) != 0 || (hasRevokableShares)
  {
LABEL_18:
    v30 = objc_alloc_init(PKShareRowItem);
    v31 = PKLocalizedShareableCredentialString(&cfstr_SharesListStop.isa);
    [(PKShareRowItem *)v30 setTitle:v31];

    systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
    [(PKShareRowItem *)v30 setTitleTextColor:systemRedColor];

    [(PKShareRowItem *)v30 setIsStopSharingItem:1];
    [(PKShareRowItem *)v30 setShouldCenterText:1];
    [v25 addObject:v30];
  }

LABEL_19:
  v33 = [v25 copy];
  actionItems = self->_actionItems;
  self->_actionItems = v33;
}

- (id)_contactForPKShareRowItem:(id)item
{
  itemCopy = item;
  contact = [itemCopy contact];

  if (contact)
  {
    contact2 = [itemCopy contact];
  }

  else
  {
    share = [itemCopy share];
    contact2 = [(PKSharedPassSharesController *)self->_sharesController contactForShare:share];
    if (!contact2 && ([itemCopy hasFetchedContact] & 1) == 0)
    {
      [itemCopy setHasFetchedContact:1];
      objc_initWeak(&location, self);
      sharesController = self->_sharesController;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __63__PKPassSharesListSectionController__contactForPKShareRowItem___block_invoke;
      v10[3] = &unk_1E8013F10;
      objc_copyWeak(&v12, &location);
      v11 = itemCopy;
      [(PKSharedPassSharesController *)sharesController fetchContactForShare:share withCompletion:v10];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }

  return contact2;
}

void __63__PKPassSharesListSectionController__contactForPKShareRowItem___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v5 && WeakRetained)
  {
    [*(a1 + 32) setContact:v5];
    v4 = objc_loadWeakRetained(WeakRetained + 14);
    [v4 reloadItem:*(a1 + 32) animated:1];
  }
}

- (id)_titleForPKShareRowItem:(id)item
{
  itemCopy = item;
  share = [itemCopy share];
  contact = [itemCopy contact];

  if (contact)
  {
    v6 = MEMORY[0x1E69B8F30];
    recipientHandle = [share recipientHandle];
    v8 = [v6 displayNameForCounterpartHandle:recipientHandle contact:contact];

    if ([v8 length])
    {
      goto LABEL_9;
    }

    recipientNickname = [share recipientNickname];
  }

  else
  {
    recipientNickname2 = [share recipientNickname];
    if (!recipientNickname2)
    {
      recipientHandle2 = [share recipientHandle];
      v8 = 0;
      goto LABEL_8;
    }

    recipientNickname = recipientNickname2;
    v8 = recipientNickname;
  }

  recipientHandle2 = recipientNickname;
LABEL_8:

  v8 = recipientHandle2;
LABEL_9:

  return v8;
}

- (id)_subtitleForShare:(id)share
{
  shareCopy = share;
  status = [shareCopy status];
  if (status <= 8)
  {
    if (((1 << status) & 0x2C) != 0)
    {
      v6 = @"SHARED_KEY_INVITED_CELL_SUBTITLE";
      goto LABEL_8;
    }

    if (((1 << status) & 0x1C0) != 0)
    {
      v6 = @"SHARED_KEY_REVOKING_CELL_SUBTITLE";
LABEL_8:
      v7 = PKLocalizedCredentialString(&v6->isa);
      goto LABEL_9;
    }

    if (status == 4)
    {
      v6 = @"SHARED_KEY_PENDING_ACTIVATION_CELL_SUBTITLE";
      goto LABEL_8;
    }
  }

  if (status == 1)
  {
    pass = [(PKSharedPassSharesController *)self->_sharesController pass];
    isCarKeyPass = [pass isCarKeyPass];

    if (isCarKeyPass)
    {
      v11 = objc_alloc(MEMORY[0x1E69B8A38]);
      sharedEntitlements = [shareCopy sharedEntitlements];
      shareableEntitlements = [(PKSharedPassSharesController *)self->_sharesController shareableEntitlements];
      possiblePredefinedEntitlements = [(PKSharedPassSharesController *)self->_sharesController possiblePredefinedEntitlements];
      displayableSharedEntitlements = [v11 initWithSharedEntitlements:sharedEntitlements availableEntitlements:shareableEntitlements predefinedSharedEntitlements:possiblePredefinedEntitlements editable:{objc_msgSend(shareCopy, "isEditable")}];

      v7 = [displayableSharedEntitlements localizedSelectedEntitlementSummaryForAccessType:4];
    }

    else
    {
      displayableSharedEntitlements = [shareCopy displayableSharedEntitlements];
      shareableEntitlements2 = [(PKSharedPassSharesController *)self->_sharesController shareableEntitlements];
      v17 = [displayableSharedEntitlements count];
      if (v17 >= [shareableEntitlements2 count])
      {
        v18 = @"SHARE_OVERVIEW_SECTION_ENTITLEMENTS_FULL_ACCESS";
      }

      else
      {
        v18 = @"SHARE_OVERVIEW_SECTION_ENTITLEMENTS_CUSTOM_ACCESS";
      }

      v7 = PKLocalizedShareableCredentialString(&v18->isa);
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_9:

  return v7;
}

- (id)_displayableShares
{
  if (self->_rootShare)
  {
    v3 = [(PKSharedPassSharesController *)self->_sharesController childSharesOfShare:?];
  }

  else
  {
    v4 = PKShowLocalPassShares();
    sharesController = self->_sharesController;
    if (v4)
    {
      [(PKSharedPassSharesController *)sharesController shares];
    }

    else
    {
      [(PKSharedPassSharesController *)sharesController interAccountUserShares];
    }
    v3 = ;
  }

  return v3;
}

- (void)_updateStopSharingItemToDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  v5 = [(NSArray *)self->_actionItems pk_firstObjectPassingTest:&__block_literal_global_41];
  if (v5)
  {
    v8 = v5;
    if (disabledCopy)
    {
      [MEMORY[0x1E69DC888] secondaryLabelColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] systemRedColor];
    }
    v6 = ;
    [v8 setTitleTextColor:v6];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained reloadItem:v8 animated:1];

    v5 = v8;
  }
}

- (id)decorateListCell:(id)cell forPKShareRowItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  subtitleCellConfiguration = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  title = [itemCopy title];
  [subtitleCellConfiguration setText:title];

  textProperties = [subtitleCellConfiguration textProperties];
  v11 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], 0);
  [textProperties setFont:v11];

  titleTextColor = [itemCopy titleTextColor];

  if (titleTextColor)
  {
    titleTextColor2 = [itemCopy titleTextColor];
    [textProperties setColor:titleTextColor2];
  }

  if ([itemCopy showContactAvatar])
  {
    v14 = objc_alloc_init(PKAvatarView);
    [(PKAvatarView *)v14 setDiameter:35.0];
    contact = [itemCopy contact];
    if (contact)
    {
      [(PKAvatarView *)v14 setContact:contact];
    }

    else
    {
      share = [itemCopy share];
      recipientNickname = [share recipientNickname];
      [(PKAvatarView *)v14 setPlaceholderName:recipientNickname];
    }

    v20 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v14 placement:0];
    [v8 addObject:v20];
    [v20 setReservedLayoutWidth:35.0];
  }

  else
  {
    icon = [itemCopy icon];

    if (!icon)
    {
      goto LABEL_11;
    }

    v14 = objc_alloc_init(PKAvatarView);
    [(PKAvatarView *)v14 setDiameter:35.0];
    icon2 = [itemCopy icon];
    [(PKAvatarView *)v14 setPlaceholderImage:icon2];

    contact = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v14 placement:0];
    [v8 addObject:contact];
    [contact setReservedLayoutWidth:35.0];
  }

LABEL_11:
  if ([itemCopy shouldCenterText])
  {
    [textProperties setAlignment:1];
  }

  [subtitleCellConfiguration directionalLayoutMargins];
  v22 = v21;
  v24 = v23;
  subtitle = [itemCopy subtitle];
  if (subtitle)
  {
    subtitle2 = [itemCopy subtitle];
    [subtitleCellConfiguration setSecondaryText:subtitle2];

    secondaryTextProperties = [subtitleCellConfiguration secondaryTextProperties];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [secondaryTextProperties setColor:secondaryLabelColor];

    v29 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], 0);
    [secondaryTextProperties setFont:v29];

    v30 = 10.0;
  }

  else
  {
    v30 = 15.0;
  }

  [subtitleCellConfiguration setDirectionalLayoutMargins:{v30, v22, v30, v24}];
  [cellCopy setContentConfiguration:subtitleCellConfiguration];
  [cellCopy setConfigurationUpdateHandler:&__block_literal_global_176];
  share2 = [itemCopy share];

  if (share2)
  {
    v32 = objc_alloc_init(MEMORY[0x1E69DC7A8]);
    [v8 addObject:v32];
  }

  [cellCopy setAccessories:v8];

  return subtitleCellConfiguration;
}

void __72__PKPassSharesListSectionController_decorateListCell_forPKShareRowItem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v4 = MEMORY[0x1E69DC6E8];
  v5 = a2;
  v6 = [v4 listCellConfiguration];
  if ([v9 isHighlighted] & 1) != 0 || (objc_msgSend(v9, "isSelected"))
  {
    v7 = [MEMORY[0x1E69DC888] tableCellDefaultSelectionTintColor];
  }

  else
  {
    v7 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  }

  v8 = v7;
  [v6 setBackgroundColor:v7];

  [v5 setBackgroundConfiguration:v6];
}

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  if (!PKEqualObjects() || (actionItems = self->_shareItems) == 0)
  {
    if (!PKEqualObjects())
    {
      goto LABEL_6;
    }

    actionItems = self->_actionItems;
  }

  [v6 appendItems:actionItems];
LABEL_6:

  return v6;
}

- (void)didSelectItem:(id)item
{
  itemCopy = item;
  share = [itemCopy share];

  if (share)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    share2 = [itemCopy share];
    [WeakRetained passSharesListSectionController:self didSelectShare:share2];

LABEL_5:
    goto LABEL_6;
  }

  if ([itemCopy isAddShareItem])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained passSharesListSectionControllerDidSelectAddShare:self];
    goto LABEL_5;
  }

  if ([itemCopy isStopSharingItem])
  {
    [(PKPassSharesListSectionController *)self _updateStopSharingItemToDisabled:1];
    [(PKPassSharesListSectionController *)self _confirmRevokeShare:self->_rootShare forItem:itemCopy];
  }

LABEL_6:
  v7 = objc_loadWeakRetained(&self->_delegate);
  [v7 deselectCells];
}

- (void)_confirmRevokeShare:(id)share forItem:(id)item
{
  shareCopy = share;
  itemCopy = item;
  v7 = [(PKPassSharesListSectionController *)self _alertForRevokeOptionsForShare:shareCopy];
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained passSharesListSectionController:self presentAlert:v7 forItem:itemCopy];
  }

  else
  {
    [(PKPassSharesListSectionController *)self _revokeShare:shareCopy cascade:0];
  }
}

- (void)_revokeShare:(id)share cascade:(BOOL)cascade
{
  cascadeCopy = cascade;
  shareCopy = share;
  objc_initWeak(&location, self);
  sharesController = self->_sharesController;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__PKPassSharesListSectionController__revokeShare_cascade___block_invoke;
  v8[3] = &unk_1E8013F58;
  objc_copyWeak(&v9, &location);
  v8[4] = self;
  [(PKSharedPassSharesController *)sharesController revokeShare:shareCopy shouldCascade:cascadeCopy withCompletion:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __58__PKPassSharesListSectionController__revokeShare_cascade___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 112));
    [v4 passSharesListSectionController:WeakRetained setIsLoading:0];

    [WeakRetained _updateStopSharingItemToDisabled:0];
    v5 = objc_loadWeakRetained((*(a1 + 32) + 112));
    v6 = v5;
    if (v9)
    {
      v7 = *(a1 + 32);
      v8 = [v7 _alertForDisplayableError:?];
      [v6 passSharesListSectionController:v7 presentAlert:v8 forItem:0];
    }

    else
    {
      [v5 passSharesListSectionControllerDidFinishRevokingShares:WeakRetained];
    }
  }
}

- (void)_revokeAllShares
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained passSharesListSectionController:self setIsLoading:1];

  objc_initWeak(&location, self);
  sharesController = self->_sharesController;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__PKPassSharesListSectionController__revokeAllShares__block_invoke;
  v5[3] = &unk_1E8013F58;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  [(PKSharedPassSharesController *)sharesController revokeAllSharesWithCompletion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __53__PKPassSharesListSectionController__revokeAllShares__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 112));
    [v4 passSharesListSectionController:WeakRetained setIsLoading:0];

    [WeakRetained _updateStopSharingItemToDisabled:0];
    v5 = objc_loadWeakRetained((*(a1 + 32) + 112));
    v6 = v5;
    if (v9)
    {
      v7 = *(a1 + 32);
      v8 = [v7 _alertForDisplayableError:?];
      [v6 passSharesListSectionController:v7 presentAlert:v8 forItem:0];
    }

    else
    {
      [v5 passSharesListSectionControllerDidFinishRevokingShares:WeakRetained];
    }
  }
}

- (id)_alertForRevokeOptionsForShare:(id)share
{
  shareCopy = share;
  v5 = [(PKSharedPassSharesController *)self->_sharesController childSharesOfShare:shareCopy];
  v6 = [v5 count];

  if (!shareCopy || v6)
  {
    if (self->_rootShare)
    {
      v8 = @"SHARE_MANAGEMENT_REVOKE_CONFIRMATION_STOP_SHARING";
    }

    else
    {
      v8 = @"SHARE_MANAGEMENT_REVOKE_CONFIRMATION_STOP_SHARING_ALL_SHARE";
    }

    v9 = PKLocalizedShareableCredentialString(&v8->isa);
    v7 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v9 message:0 preferredStyle:0];
    if (!shareCopy || (v10 = MEMORY[0x1E69DC648], PKLocalizedShareableCredentialString(&cfstr_ShareManagemen_2.isa), v11 = objc_claimAutoreleasedReturnValue(), v24[0] = MEMORY[0x1E69E9820], v24[1] = 3221225472, v24[2] = __68__PKPassSharesListSectionController__alertForRevokeOptionsForShare___block_invoke, v24[3] = &unk_1E8011310, v24[4] = self, v25 = shareCopy, [v10 actionWithTitle:v11 style:2 handler:v24], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "addAction:", v12), v12, v11, v25, v6))
    {
      v13 = MEMORY[0x1E69DC648];
      v14 = PKLocalizedShareableCredentialString(&cfstr_ShareManagemen_3.isa);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __68__PKPassSharesListSectionController__alertForRevokeOptionsForShare___block_invoke_2;
      v21[3] = &unk_1E8011310;
      v22 = shareCopy;
      selfCopy = self;
      v15 = [v13 actionWithTitle:v14 style:2 handler:v21];
      [v7 addAction:v15];
    }

    v16 = MEMORY[0x1E69DC648];
    v17 = PKLocalizedString(&cfstr_CancelButtonTi.isa);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __68__PKPassSharesListSectionController__alertForRevokeOptionsForShare___block_invoke_3;
    v20[3] = &unk_1E80112E8;
    v20[4] = self;
    v18 = [v16 actionWithTitle:v17 style:1 handler:v20];
    [v7 addAction:v18];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __68__PKPassSharesListSectionController__alertForRevokeOptionsForShare___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v2)
  {
    return [v1 _revokeShare:v2 cascade:1];
  }

  else
  {
    return [v1 _revokeAllShares];
  }
}

- (id)_alertForDisplayableError:(id)error
{
  errorCopy = error;
  v4 = PKSharingDisplayableError(errorCopy);
  if (!v4)
  {
    v5 = PKLocalizedShareableCredentialString(&cfstr_RevokeShareErr.isa);
    v6 = PKLocalizedShareableCredentialString(&cfstr_RevokeShareErr_0.isa);
    v4 = PKDisplayableErrorCustom();
  }

  userInfo = [v4 userInfo];
  v8 = MEMORY[0x1E69DC650];
  v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A578]];
  v10 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A598]];
  v11 = [v8 alertControllerWithTitle:v9 message:v10 preferredStyle:1];

  v12 = MEMORY[0x1E69DC648];
  v13 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
  v14 = [v12 actionWithTitle:v13 style:0 handler:0];
  [v11 addAction:v14];

  return v11;
}

- (id)headerAttributedStringForIdentifier:(id)identifier
{
  v13[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (self->_rootShare && [(NSArray *)self->_shareItems count]&& PKEqualObjects())
  {
    v5 = objc_alloc(MEMORY[0x1E696AAB0]);
    v6 = PKLocalizedShareableCredentialString(&cfstr_ShareViewingSh.isa);
    v12[0] = *MEMORY[0x1E69DB648];
    v7 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC58], 2, 0);
    v13[0] = v7;
    v12[1] = *MEMORY[0x1E69DB650];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v13[1] = secondaryLabelColor;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v10 = [v5 initWithString:v6 attributes:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)sharedPassSharesControllerDidUpdateShares:(id)shares
{
  [(PKPassSharesListSectionController *)self _updatePKShareRowItems];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained reloadDataAnimated:1];
}

- (PKPassSharesListSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end