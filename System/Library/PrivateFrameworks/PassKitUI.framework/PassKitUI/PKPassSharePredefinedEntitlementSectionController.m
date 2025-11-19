@interface PKPassSharePredefinedEntitlementSectionController
- (PKPassSharePredefinedEntitlementSectionController)initWithMode:(unint64_t)a3 entitlementComposer:(id)a4 delegate:(id)a5;
- (PKPassSharePredefinedEntitlementSectionControllerDelegate)delegate;
- (id)decorateListCell:(id)a3 forPredefinedSelectionEntry:(id)a4;
- (id)headerAttributedStringForIdentifier:(id)a3;
- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4;
- (void)_selectionDidChange;
- (void)didSelectItem:(id)a3;
@end

@implementation PKPassSharePredefinedEntitlementSectionController

- (PKPassSharePredefinedEntitlementSectionController)initWithMode:(unint64_t)a3 entitlementComposer:(id)a4 delegate:(id)a5
{
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = PKPassSharePredefinedEntitlementSectionController;
  v11 = [(PKPassShareSectionController *)&v23 initWithIdentifiers:&unk_1F3CC8408];
  v12 = v11;
  if (v11)
  {
    v11->_mode = a3;
    objc_storeStrong(&v11->_entitlementComposer, a4);
    objc_storeWeak(&v12->_delegate, v10);
    objc_initWeak(&location, v12);
    v13 = MEMORY[0x1E69DC800];
    v14 = objc_opt_class();
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __95__PKPassSharePredefinedEntitlementSectionController_initWithMode_entitlementComposer_delegate___block_invoke;
    v20 = &unk_1E8012088;
    objc_copyWeak(&v21, &location);
    v15 = [v13 registrationWithCellClass:v14 configurationHandler:&v17];
    [(PKPaymentSetupListSectionController *)v12 setCellRegistration:v15, v17, v18, v19, v20];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __95__PKPassSharePredefinedEntitlementSectionController_initWithMode_entitlementComposer_delegate___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = [WeakRetained decorateListCell:v9 forPredefinedSelectionEntry:v6];
  }
}

- (id)decorateListCell:(id)a3 forPredefinedSelectionEntry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 predefinedSelection];
  v9 = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
  v10 = [v8 localizedTitle];
  [v9 setText:v10];

  if (self->_mode)
  {
    [v8 localizedPostshareDescription];
  }

  else
  {
    [v8 localizedPreshareDescription];
  }
  v11 = ;
  [v9 setSecondaryText:v11];

  v12 = [v9 secondaryTextProperties];
  v13 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v12 setColor:v13];

  [v9 setDirectionalLayoutMargins:{10.0, 0.0, 10.0, 8.0}];
  v14 = [v8 iconName];

  if (v14)
  {
    v15 = MEMORY[0x1E69DCAB8];
    v16 = [v8 iconName];
    v17 = [v15 systemImageNamed:v16];
    [v9 setImage:v17];
  }

  [v6 setContentConfiguration:v9];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __98__PKPassSharePredefinedEntitlementSectionController_decorateListCell_forPredefinedSelectionEntry___block_invoke;
  v24[3] = &unk_1E8012AC8;
  v24[4] = self;
  [v6 setConfigurationUpdateHandler:v24];
  if (!self->_mode)
  {
    v18 = [(PKPassEntitlementsComposer *)self->_entitlementComposer viewForPredefined:v7];
    v19 = [v18 enabled];
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = objc_alloc_init(MEMORY[0x1E69DC788]);
    [v21 setReservedLayoutWidth:*MEMORY[0x1E69DDBF8]];
    [v21 setHidden:v19 ^ 1u];
    [v20 addObject:v21];

    v22 = [v20 copy];
    [v6 setAccessories:v22];
  }

  return v9;
}

void __98__PKPassSharePredefinedEntitlementSectionController_decorateListCell_forPredefinedSelectionEntry___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = MEMORY[0x1E69DC6E8];
  v6 = a2;
  v7 = [v5 listCellConfiguration];
  if (*(*(a1 + 32) + 72) == 2)
  {
    [MEMORY[0x1E69DC888] systemBackgroundColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  }
  v8 = ;
  if ([v10 isHighlighted] & 1) != 0 || (objc_msgSend(v10, "isSelected"))
  {
    v9 = [MEMORY[0x1E69DC888] tableCellDefaultSelectionTintColor];
    [v7 setBackgroundColor:v9];
  }

  else
  {
    [v7 setBackgroundColor:v8];
  }

  [v6 setBackgroundConfiguration:v7];
}

- (void)didSelectItem:(id)a3
{
  v8 = a3;
  if ([(PKPassEntitlementsComposer *)self->_entitlementComposer editable])
  {
    v4 = [(PKPassEntitlementsComposer *)self->_entitlementComposer globalView];
    [v4 setEnabled:0];

    v5 = [(PKPassEntitlementsComposer *)self->_entitlementComposer globalView];
    [v5 setIsManagingEntitlementConfiguration:1];

    v6 = [(PKPassEntitlementsComposer *)self->_entitlementComposer viewForPredefined:v8];
    [v6 setEnabled:{objc_msgSend(v6, "enabled") ^ 1}];
    [(PKPassSharePredefinedEntitlementSectionController *)self _selectionDidChange];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained deselectCells];
  }
}

- (void)_selectionDidChange
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(PKPassEntitlementsComposer *)self->_entitlementComposer predefinedEntitlementEntries];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained reloadItem:v8 animated:1];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = objc_loadWeakRetained(&self->_delegate);
  [v10 entitlementSelectionDidChange];
}

- (id)headerAttributedStringForIdentifier:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = PKLocalizedShareableCredentialString(&cfstr_ShareOverviewP.isa);
  v4 = objc_alloc(MEMORY[0x1E696AAB0]);
  v10[0] = *MEMORY[0x1E69DB648];
  v5 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC58], 2, 0);
  v11[0] = v5;
  v10[1] = *MEMORY[0x1E69DB650];
  v6 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v8 = [v4 initWithString:v3 attributes:v7];

  return v8;
}

- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  entitlementComposer = self->_entitlementComposer;
  if (self->_mode)
  {
    v7 = [(PKPassEntitlementsComposer *)entitlementComposer activePredefinedSelectionEntry];
    v8 = v7;
    if (v7)
    {
      v11[0] = v7;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
      [v5 appendItems:v9];
    }
  }

  else
  {
    v8 = [(PKPassEntitlementsComposer *)entitlementComposer predefinedEntitlementEntries];
    if ([v8 count])
    {
      [v5 appendItems:v8];
    }
  }

  return v5;
}

- (PKPassSharePredefinedEntitlementSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end