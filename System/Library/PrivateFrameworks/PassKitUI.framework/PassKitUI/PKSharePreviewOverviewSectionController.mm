@interface PKSharePreviewOverviewSectionController
- (PKSharePreviewOverviewSectionControllerDelegate)delegate;
- (id)_initWithMode:(unint64_t)a3 accessType:(int64_t)a4 entitlementComposer:(id)a5 context:(id)a6 delegate:(id)a7;
- (id)decorateListCell:(id)a3 forRowItem:(id)a4;
- (id)headerAttributedStringForIdentifier:(id)a3;
- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4;
- (void)_shareabilitySwitchValueChanged:(id)a3;
- (void)didSelectItem:(id)a3;
- (void)reloadItemsAnimated:(BOOL)a3;
@end

@implementation PKSharePreviewOverviewSectionController

- (id)_initWithMode:(unint64_t)a3 accessType:(int64_t)a4 entitlementComposer:(id)a5 context:(id)a6 delegate:(id)a7
{
  v26[2] = *MEMORY[0x1E69E9840];
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v26[0] = @"RecipientSection";
  v26[1] = @"EntitlementsSection";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v25.receiver = self;
  v25.super_class = PKSharePreviewOverviewSectionController;
  v17 = [(PKPassShareSectionController *)&v25 initWithIdentifiers:v16];

  if (v17)
  {
    v17->_mode = a3;
    v17->_accessType = a4;
    objc_storeWeak(&v17->_delegate, v15);
    objc_storeStrong(&v17->_context, a6);
    objc_storeStrong(&v17->_entitlementComposer, a5);
    objc_initWeak(&location, v17);
    v18 = MEMORY[0x1E69DC800];
    v19 = objc_opt_class();
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __105__PKSharePreviewOverviewSectionController__initWithMode_accessType_entitlementComposer_context_delegate___block_invoke;
    v22[3] = &unk_1E8012088;
    objc_copyWeak(&v23, &location);
    v20 = [v18 registrationWithCellClass:v19 configurationHandler:v22];
    [(PKPaymentSetupListSectionController *)v17 setCellRegistration:v20];

    [(PKSharePreviewOverviewSectionController *)v17 reloadItemsAnimated:0];
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v17;
}

void __105__PKSharePreviewOverviewSectionController__initWithMode_accessType_entitlementComposer_context_delegate___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = [WeakRetained decorateListCell:v9 forRowItem:v6];
  }
}

- (void)reloadItemsAnimated:(BOOL)a3
{
  v43 = a3;
  v45[1] = *MEMORY[0x1E69E9840];
  mode = self->_mode;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  v8 = [(PKPassShareInitiationContext *)self->_context requiresContactSelection];
  if (!mode && (v7 & 1) != 0 && v8)
  {
    v9 = [[PKSharePreviewRowItem alloc] initWithIdentifier:@"RecipientRowItemIdentifier"];
    v10 = [(PKPassShareInitiationContext *)self->_context composedShare];
    v11 = [v10 recipientNickname];

    if ([v11 length])
    {
      [(PKSharePreviewRowItem *)v9 setTitle:v11];
      [MEMORY[0x1E69DC888] systemBlueColor];
    }

    else
    {
      v12 = PKLocalizedShareableCredentialString(&cfstr_ShareOverviewS_1.isa);
      [(PKSharePreviewRowItem *)v9 setTitle:v12];

      [MEMORY[0x1E69DC888] secondaryLabelColor];
    }
    v13 = ;
    [(PKSharePreviewRowItem *)v9 setTitleColor:v13];

    [v5 addObject:v9];
  }

  v14 = [v5 copy];
  recipientItems = self->_recipientItems;
  self->_recipientItems = v14;

  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = [(PKPassEntitlementsComposer *)self->_entitlementComposer predefinedEntitlementEntries];
  v18 = [v17 count];

  if (!v18 && [(PKPassEntitlementsComposer *)self->_entitlementComposer canAllowResharing])
  {
    v19 = [(PKPassEntitlementsComposer *)self->_entitlementComposer globalView];
    if ([(PKSharePreviewRowItem *)v19 isManagingEntitlementConfiguration])
    {
      v20 = [(PKPassEntitlementsComposer *)self->_entitlementComposer preferDetailedCapabilityDisplay];

      if (v20)
      {
        goto LABEL_17;
      }

      v19 = [[PKSharePreviewRowItem alloc] initWithIdentifier:@"ShareabilityRowItem"];
      v21 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.2.fill" withConfiguration:0];
      [(PKSharePreviewRowItem *)v19 setIcon:v21];

      v22 = PKLocalizedShareableCredentialString(&cfstr_ShareOverviewS_2.isa);
      [(PKSharePreviewRowItem *)v19 setTitle:v22];

      v23 = [(PKPassEntitlementsComposer *)self->_entitlementComposer globalView];
      [v23 shareability];
      CanAllowResharing = PKSharingCapabilityShareabilityCanAllowResharing();

      if (CanAllowResharing)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }

      [(PKSharePreviewRowItem *)v19 setDisplayToggleState:v25];
      [(PKSharePreviewRowItem *)v19 setAccessoryEnabled:[(PKPassEntitlementsComposer *)self->_entitlementComposer editable]];
      [v16 addObject:v19];
    }
  }

LABEL_17:
  v26 = [[PKSharePreviewRowItem alloc] initWithIdentifier:@"EntitlementsRowItem"];
  accessType = self->_accessType;
  if (mode)
  {
    v28 = accessType == 4;
  }

  else
  {
    v28 = 0;
  }

  v29 = v28 || mode == 1;
  v30 = @"checklist.checked";
  if (v29)
  {
    v30 = @"lock.shield.fill";
  }

  v31 = v30;
  if (accessType == 4)
  {
    v32 = @"SHARE_OVERVIEW_SECTION_ENTITLEMENTS_TITLE_VEHICLE";
  }

  else
  {
    if (self->_mode == 1)
    {
      v33 = PKLocalizedShareableCredentialString(&cfstr_ShareOverviewS_5.isa);
      [(PKSharePreviewRowItem *)v26 setTitle:v33];
      goto LABEL_31;
    }

    v32 = @"SHARE_OVERVIEW_SECTION_ENTITLEMENTS_TITLE";
  }

  v34 = [MEMORY[0x1E69DCAB8] systemImageNamed:v31 withConfiguration:0];
  [(PKSharePreviewRowItem *)v26 setIcon:v34];

  v35 = PKLocalizedShareableCredentialString(&v32->isa);
  [(PKSharePreviewRowItem *)v26 setTitle:v35];

  v33 = [(PKSharePreviewOverviewSectionController *)self _localizedEntitlementSummary];
  [(PKSharePreviewRowItem *)v26 setSubtitle:v33];
LABEL_31:

  [(PKSharePreviewRowItem *)v26 setDisplayChevron:1];
  [v16 addObject:v26];
  v36 = [v16 copy];
  entitlementItems = self->_entitlementItems;
  self->_entitlementItems = v36;

  if ([(NSArray *)self->_recipientItems count])
  {
    v44[0] = @"RecipientSection";
    v44[1] = @"EntitlementsSection";
    v38 = MEMORY[0x1E695DEC8];
    v39 = v44;
    v40 = 2;
  }

  else
  {
    v45[0] = @"EntitlementsSection";
    v38 = MEMORY[0x1E695DEC8];
    v39 = v45;
    v40 = 1;
  }

  v41 = [v38 arrayWithObjects:v39 count:v40];
  [(PKPaymentSetupListSectionController *)self setIdentifiers:v41];

  v42 = objc_loadWeakRetained(&self->_delegate);
  [v42 reloadDataAnimated:v43];
}

- (id)decorateListCell:(id)a3 forRowItem:(id)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  v9 = [v7 title];
  [v8 setText:v9];

  v10 = [v7 titleColor];
  if (v10)
  {
    v11 = [v8 textProperties];
    [v11 setColor:v10];
  }

  v12 = [v7 subtitle];
  [v8 setSecondaryText:v12];

  v13 = [v8 secondaryTextProperties];
  v14 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v13 setColor:v14];

  [v8 setDirectionalLayoutMargins:{10.0, 0.0, 10.0, 8.0}];
  v15 = [v7 icon];
  [v8 setImage:v15];

  v16 = [v8 imageProperties];
  v17 = [MEMORY[0x1E69DC888] systemBlueColor];
  [v16 setTintColor:v17];

  [v6 setContentConfiguration:v8];
  if (self->_mode == 2)
  {
    [MEMORY[0x1E69DC888] systemBackgroundColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  }
  v18 = ;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __71__PKSharePreviewOverviewSectionController_decorateListCell_forRowItem___block_invoke;
  v28[3] = &unk_1E8012AC8;
  v19 = v18;
  v29 = v19;
  [v6 setConfigurationUpdateHandler:v28];
  if (![v7 displayChevron])
  {
    v21 = [v7 displayToggleState];
    if (!v21)
    {
      goto LABEL_14;
    }

    v22 = v21;
    v23 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    v24 = [v7 identifier];
    v25 = PKEqualObjects();

    if (v25)
    {
      [v23 addTarget:self action:sel__shareabilitySwitchValueChanged_ forControlEvents:4096];
    }

    [v23 setOn:v22 == 1];
    [v23 setEnabled:{objc_msgSend(v7, "accessoryEnabled")}];
    v20 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v23 placement:1];
    [v20 setMaintainsFixedSize:1];

    if (!v20)
    {
      goto LABEL_14;
    }

LABEL_13:
    v30[0] = v20;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    [v6 setAccessories:v26];

    goto LABEL_15;
  }

  v20 = objc_alloc_init(MEMORY[0x1E69DC7A8]);
  if (v20)
  {
    goto LABEL_13;
  }

LABEL_14:
  [v6 setAccessories:MEMORY[0x1E695E0F0]];
LABEL_15:

  return v8;
}

void __71__PKSharePreviewOverviewSectionController_decorateListCell_forRowItem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = MEMORY[0x1E69DC6E8];
  v6 = a2;
  v7 = [v5 listCellConfiguration];
  if ([v9 isHighlighted] & 1) != 0 || (objc_msgSend(v9, "isSelected"))
  {
    v8 = [MEMORY[0x1E69DC888] tableCellDefaultSelectionTintColor];
    [v7 setBackgroundColor:v8];
  }

  else
  {
    [v7 setBackgroundColor:*(a1 + 32)];
  }

  [v6 setBackgroundConfiguration:v7];
}

- (id)headerAttributedStringForIdentifier:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  if (self->_mode == 1)
  {
    v3 = 0;
  }

  else
  {
    v4 = PKEqualObjects();
    v5 = @"SHARE_OVERVIEW_SECTION_ENTITLEMENTS_HEADER";
    if (v4)
    {
      v5 = @"SHARE_OVERVIEW_SECTION_RECIPIENT_HEADER";
    }

    v6 = MEMORY[0x1E696AAB0];
    v7 = v5;
    v8 = [v6 alloc];
    v9 = PKLocalizedShareableCredentialString(v7);

    v14[0] = *MEMORY[0x1E69DB648];
    v10 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC58], 2, 0);
    v15[0] = v10;
    v14[1] = *MEMORY[0x1E69DB650];
    v11 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v15[1] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v3 = [v8 initWithString:v9 attributes:v12];
  }

  return v3;
}

- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  if (PKEqualObjects() && self->_recipientItems || PKEqualObjects() && self->_entitlementItems)
  {
    [v6 appendItems:?];
  }

  return v6;
}

- (void)didSelectItem:(id)a3
{
  v9 = [a3 identifier];
  if (PKEqualObjects())
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      [v6 sharePreviewSectionControllerDidSelectShowContactPicker:self];
    }
  }

  else if (!PKEqualObjects() && PKEqualObjects())
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 sharePreviewSectionControllerDidSelectEntitlements:self];
  }

  v8 = objc_loadWeakRetained(&self->_delegate);
  [v8 deselectCells];
}

- (void)_shareabilitySwitchValueChanged:(id)a3
{
  v4 = [a3 isOn];
  v5 = [(PKPassEntitlementsComposer *)self->_entitlementComposer globalView];
  [v5 setShareability:v4];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sharePreviewSectionControllerDidUpdateEntitlements:self];
}

- (PKSharePreviewOverviewSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end