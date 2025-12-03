@interface PKSharePreviewOverviewSectionController
- (PKSharePreviewOverviewSectionControllerDelegate)delegate;
- (id)_initWithMode:(unint64_t)mode accessType:(int64_t)type entitlementComposer:(id)composer context:(id)context delegate:(id)delegate;
- (id)decorateListCell:(id)cell forRowItem:(id)item;
- (id)headerAttributedStringForIdentifier:(id)identifier;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)_shareabilitySwitchValueChanged:(id)changed;
- (void)didSelectItem:(id)item;
- (void)reloadItemsAnimated:(BOOL)animated;
@end

@implementation PKSharePreviewOverviewSectionController

- (id)_initWithMode:(unint64_t)mode accessType:(int64_t)type entitlementComposer:(id)composer context:(id)context delegate:(id)delegate
{
  v26[2] = *MEMORY[0x1E69E9840];
  composerCopy = composer;
  contextCopy = context;
  delegateCopy = delegate;
  v26[0] = @"RecipientSection";
  v26[1] = @"EntitlementsSection";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v25.receiver = self;
  v25.super_class = PKSharePreviewOverviewSectionController;
  v17 = [(PKPassShareSectionController *)&v25 initWithIdentifiers:v16];

  if (v17)
  {
    v17->_mode = mode;
    v17->_accessType = type;
    objc_storeWeak(&v17->_delegate, delegateCopy);
    objc_storeStrong(&v17->_context, context);
    objc_storeStrong(&v17->_entitlementComposer, composer);
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

- (void)reloadItemsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v45[1] = *MEMORY[0x1E69E9840];
  mode = self->_mode;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  requiresContactSelection = [(PKPassShareInitiationContext *)self->_context requiresContactSelection];
  if (!mode && (v7 & 1) != 0 && requiresContactSelection)
  {
    v9 = [[PKSharePreviewRowItem alloc] initWithIdentifier:@"RecipientRowItemIdentifier"];
    composedShare = [(PKPassShareInitiationContext *)self->_context composedShare];
    recipientNickname = [composedShare recipientNickname];

    if ([recipientNickname length])
    {
      [(PKSharePreviewRowItem *)v9 setTitle:recipientNickname];
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
  predefinedEntitlementEntries = [(PKPassEntitlementsComposer *)self->_entitlementComposer predefinedEntitlementEntries];
  v18 = [predefinedEntitlementEntries count];

  if (!v18 && [(PKPassEntitlementsComposer *)self->_entitlementComposer canAllowResharing])
  {
    globalView = [(PKPassEntitlementsComposer *)self->_entitlementComposer globalView];
    if ([(PKSharePreviewRowItem *)globalView isManagingEntitlementConfiguration])
    {
      preferDetailedCapabilityDisplay = [(PKPassEntitlementsComposer *)self->_entitlementComposer preferDetailedCapabilityDisplay];

      if (preferDetailedCapabilityDisplay)
      {
        goto LABEL_17;
      }

      globalView = [[PKSharePreviewRowItem alloc] initWithIdentifier:@"ShareabilityRowItem"];
      v21 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.2.fill" withConfiguration:0];
      [(PKSharePreviewRowItem *)globalView setIcon:v21];

      v22 = PKLocalizedShareableCredentialString(&cfstr_ShareOverviewS_2.isa);
      [(PKSharePreviewRowItem *)globalView setTitle:v22];

      globalView2 = [(PKPassEntitlementsComposer *)self->_entitlementComposer globalView];
      [globalView2 shareability];
      CanAllowResharing = PKSharingCapabilityShareabilityCanAllowResharing();

      if (CanAllowResharing)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }

      [(PKSharePreviewRowItem *)globalView setDisplayToggleState:v25];
      [(PKSharePreviewRowItem *)globalView setAccessoryEnabled:[(PKPassEntitlementsComposer *)self->_entitlementComposer editable]];
      [v16 addObject:globalView];
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
      _localizedEntitlementSummary = PKLocalizedShareableCredentialString(&cfstr_ShareOverviewS_5.isa);
      [(PKSharePreviewRowItem *)v26 setTitle:_localizedEntitlementSummary];
      goto LABEL_31;
    }

    v32 = @"SHARE_OVERVIEW_SECTION_ENTITLEMENTS_TITLE";
  }

  v34 = [MEMORY[0x1E69DCAB8] systemImageNamed:v31 withConfiguration:0];
  [(PKSharePreviewRowItem *)v26 setIcon:v34];

  v35 = PKLocalizedShareableCredentialString(&v32->isa);
  [(PKSharePreviewRowItem *)v26 setTitle:v35];

  _localizedEntitlementSummary = [(PKSharePreviewOverviewSectionController *)self _localizedEntitlementSummary];
  [(PKSharePreviewRowItem *)v26 setSubtitle:_localizedEntitlementSummary];
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
  [v42 reloadDataAnimated:animatedCopy];
}

- (id)decorateListCell:(id)cell forRowItem:(id)item
{
  v30[1] = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  itemCopy = item;
  valueCellConfiguration = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  title = [itemCopy title];
  [valueCellConfiguration setText:title];

  titleColor = [itemCopy titleColor];
  if (titleColor)
  {
    textProperties = [valueCellConfiguration textProperties];
    [textProperties setColor:titleColor];
  }

  subtitle = [itemCopy subtitle];
  [valueCellConfiguration setSecondaryText:subtitle];

  secondaryTextProperties = [valueCellConfiguration secondaryTextProperties];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [secondaryTextProperties setColor:secondaryLabelColor];

  [valueCellConfiguration setDirectionalLayoutMargins:{10.0, 0.0, 10.0, 8.0}];
  icon = [itemCopy icon];
  [valueCellConfiguration setImage:icon];

  imageProperties = [valueCellConfiguration imageProperties];
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [imageProperties setTintColor:systemBlueColor];

  [cellCopy setContentConfiguration:valueCellConfiguration];
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
  [cellCopy setConfigurationUpdateHandler:v28];
  if (![itemCopy displayChevron])
  {
    displayToggleState = [itemCopy displayToggleState];
    if (!displayToggleState)
    {
      goto LABEL_14;
    }

    v22 = displayToggleState;
    v23 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    identifier = [itemCopy identifier];
    v25 = PKEqualObjects();

    if (v25)
    {
      [v23 addTarget:self action:sel__shareabilitySwitchValueChanged_ forControlEvents:4096];
    }

    [v23 setOn:v22 == 1];
    [v23 setEnabled:{objc_msgSend(itemCopy, "accessoryEnabled")}];
    v20 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v23 placement:1];
    [v20 setMaintainsFixedSize:1];

    if (!v20)
    {
      goto LABEL_14;
    }

LABEL_13:
    v30[0] = v20;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    [cellCopy setAccessories:v26];

    goto LABEL_15;
  }

  v20 = objc_alloc_init(MEMORY[0x1E69DC7A8]);
  if (v20)
  {
    goto LABEL_13;
  }

LABEL_14:
  [cellCopy setAccessories:MEMORY[0x1E695E0F0]];
LABEL_15:

  return valueCellConfiguration;
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

- (id)headerAttributedStringForIdentifier:(id)identifier
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
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v15[1] = secondaryLabelColor;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v3 = [v8 initWithString:v9 attributes:v12];
  }

  return v3;
}

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  if (PKEqualObjects() && self->_recipientItems || PKEqualObjects() && self->_entitlementItems)
  {
    [v6 appendItems:?];
  }

  return v6;
}

- (void)didSelectItem:(id)item
{
  identifier = [item identifier];
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

- (void)_shareabilitySwitchValueChanged:(id)changed
{
  isOn = [changed isOn];
  globalView = [(PKPassEntitlementsComposer *)self->_entitlementComposer globalView];
  [globalView setShareability:isOn];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sharePreviewSectionControllerDidUpdateEntitlements:self];
}

- (PKSharePreviewOverviewSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end