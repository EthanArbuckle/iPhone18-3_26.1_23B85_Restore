@interface PKPassEntitlementSelectionSectionController
- (BOOL)shouldHighlightItem:(id)item;
- (PKPassEntitlementSelectionSectionController)initWithMode:(unint64_t)mode entitlementComposer:(id)composer delegate:(id)delegate;
- (PKPassEntitlementSelectionSectionControllerDelegate)delegate;
- (id)decorateListCell:(id)cell forEntitlementEntry:(id)entry;
- (id)headerAttributedStringForIdentifier:(id)identifier;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)_clearEntitlementSelectionAnimated:(BOOL)animated;
- (void)_clearEntitlementSelectionInGroup:(id)group animated:(BOOL)animated;
- (void)_updateEntitlementGroups;
- (void)didSelectItem:(id)item;
- (void)toggleValueChanged:(id)changed;
@end

@implementation PKPassEntitlementSelectionSectionController

- (PKPassEntitlementSelectionSectionController)initWithMode:(unint64_t)mode entitlementComposer:(id)composer delegate:(id)delegate
{
  composerCopy = composer;
  delegateCopy = delegate;
  v25.receiver = self;
  v25.super_class = PKPassEntitlementSelectionSectionController;
  v11 = [(PKPassShareSectionController *)&v25 initWithIdentifiers:&unk_1F3CC8720];
  v12 = v11;
  if (v11)
  {
    v11->_mode = mode;
    objc_storeStrong(&v11->_entitlementComposer, composer);
    [(PKPassEntitlementSelectionSectionController *)v12 _updateEntitlementGroups];
    objc_storeWeak(&v12->_delegate, delegateCopy);
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    toggleTags = v12->_toggleTags;
    v12->_toggleTags = v13;

    objc_initWeak(&location, v12);
    v15 = MEMORY[0x1E69DC800];
    v16 = objc_opt_class();
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __89__PKPassEntitlementSelectionSectionController_initWithMode_entitlementComposer_delegate___block_invoke;
    v22 = &unk_1E8012088;
    objc_copyWeak(&v23, &location);
    v17 = [v15 registrationWithCellClass:v16 configurationHandler:&v19];
    [(PKPaymentSetupListSectionController *)v12 setCellRegistration:v17, v19, v20, v21, v22];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __89__PKPassEntitlementSelectionSectionController_initWithMode_entitlementComposer_delegate___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = [WeakRetained decorateListCell:v9 forEntitlementEntry:v6];
  }
}

- (void)_updateEntitlementGroups
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  entitlementEntries = [(PKPassEntitlementsComposer *)self->_entitlementComposer entitlementEntries];
  v5 = [entitlementEntries pk_groupDictionaryByApplyingBlock:&__block_literal_global_230];
  v6 = [v5 mutableCopy];

  allKeys = [v6 allKeys];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __71__PKPassEntitlementSelectionSectionController__updateEntitlementGroups__block_invoke_2;
  v24[3] = &unk_1E8022FE8;
  v8 = v6;
  v25 = v8;
  v9 = [allKeys sortedArrayUsingComparator:v24];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = [v8 objectForKeyedSubscript:{v15, v20}];
        v17 = [v16 sortedArrayUsingComparator:&__block_literal_global_27_2];

        [v8 setObject:v17 forKeyedSubscript:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v12);
  }

  [(PKPaymentSetupListSectionController *)self setIdentifiers:v10];
  v18 = [v8 copy];
  groupedEntitlements = self->_groupedEntitlements;
  self->_groupedEntitlements = v18;
}

__CFString *__71__PKPassEntitlementSelectionSectionController__updateEntitlementGroups__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 displayableEntitlement];
  v3 = [v2 localizedGroup];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"Default";
  }

  v6 = v5;

  return v5;
}

uint64_t __71__PKPassEntitlementSelectionSectionController__updateEntitlementGroups__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        v13 = [v12 displayableEntitlement];
        if (v9 <= [v13 groupPriority])
        {
          v14 = [v12 displayableEntitlement];
          v9 = [v14 groupPriority];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = [*(a1 + 32) objectForKeyedSubscript:{v5, 0}];
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *v28;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v27 + 1) + 8 * j);
        v22 = [v21 displayableEntitlement];
        if (v18 <= [v22 groupPriority])
        {
          v23 = [v21 displayableEntitlement];
          v18 = [v23 groupPriority];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v17);
  }

  else
  {
    v18 = 0;
  }

  v24 = 1;
  if (v9 >= v18)
  {
    v24 = -1;
  }

  if (v9 == v18)
  {
    v25 = 0;
  }

  else
  {
    v25 = v24;
  }

  return v25;
}

uint64_t __71__PKPassEntitlementSelectionSectionController__updateEntitlementGroups__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 displayableEntitlement];
  v6 = [v4 displayableEntitlement];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)decorateListCell:(id)cell forEntitlementEntry:(id)entry
{
  v39 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  entryCopy = entry;
  displayableEntitlement = [entryCopy displayableEntitlement];
  v9 = [(PKPassEntitlementsComposer *)self->_entitlementComposer viewFor:entryCopy];
  subtitleCellConfiguration = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
  localizedTitle = [displayableEntitlement localizedTitle];
  [subtitleCellConfiguration setText:localizedTitle];

  localizedSubtitle = [displayableEntitlement localizedSubtitle];
  [subtitleCellConfiguration setSecondaryText:localizedSubtitle];

  secondaryTextProperties = [subtitleCellConfiguration secondaryTextProperties];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [secondaryTextProperties setColor:secondaryLabelColor];

  [subtitleCellConfiguration setDirectionalLayoutMargins:{10.0, 0.0, 10.0, 8.0}];
  iconName = [displayableEntitlement iconName];

  if (iconName)
  {
    v16 = MEMORY[0x1E69DCAB8];
    iconName2 = [displayableEntitlement iconName];
    v18 = [v16 systemImageNamed:iconName2];
    [subtitleCellConfiguration setImage:v18];
  }

  [cellCopy setContentConfiguration:subtitleCellConfiguration];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __84__PKPassEntitlementSelectionSectionController_decorateListCell_forEntitlementEntry___block_invoke;
  v36[3] = &unk_1E8012AC8;
  v36[4] = self;
  [cellCopy setConfigurationUpdateHandler:v36];
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  enabled = [v9 enabled];
  if (([v9 isManagingTimeConfiguration] & 1) != 0 || objc_msgSend(v9, "isManagingEntitlementConfiguration"))
  {
    if (enabled)
    {
      v21 = @"SHARED_ENTITLEMENT_ENABLED";
    }

    else
    {
      v21 = @"SHARED_ENTITLEMENT_DISABLED";
    }

    v22 = PKLocalizedShareableCredentialString(&v21->isa);
    v23 = [objc_alloc(MEMORY[0x1E69DC7B8]) initWithText:v22];
    v24 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC90]);
    [v23 setFont:v24];

    [v19 addObject:v23];
    v25 = objc_alloc_init(MEMORY[0x1E69DC7A8]);
    [v19 addObject:v25];

LABEL_9:
    goto LABEL_10;
  }

  if ([(PKPassEntitlementsComposer *)self->_entitlementComposer editable])
  {
    displayStyle = [displayableEntitlement displayStyle];
    if (displayStyle)
    {
      if (displayStyle == 2)
      {
        v22 = objc_alloc_init(MEMORY[0x1E69DC788]);
        [v22 setReservedLayoutWidth:*MEMORY[0x1E69DDBF8]];
        if ((enabled & 1) == 0)
        {
          [v22 setHidden:1];
        }

        [v19 addObject:v22];
        goto LABEL_9;
      }

      if (displayStyle == 1)
      {
        v28 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
        [v28 setOn:enabled];
        entitlementIdentifier = [displayableEntitlement entitlementIdentifier];
        v30 = [entitlementIdentifier hash];

        [v28 setTag:v30];
        toggleTags = self->_toggleTags;
        v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v30];
        [(NSMutableDictionary *)toggleTags setObject:entryCopy forKey:v32];

        [v28 addTarget:self action:sel_toggleValueChanged_ forControlEvents:4096];
        v33 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v28 placement:1];
        [v33 setMaintainsFixedSize:1];
        [v19 addObject:v33];
      }
    }

    else
    {
      v34 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        entitlementIdentifier2 = [displayableEntitlement entitlementIdentifier];
        *buf = 138412290;
        v38 = entitlementIdentifier2;
        _os_log_impl(&dword_1BD026000, v34, OS_LOG_TYPE_DEFAULT, "Disabling entitlement %@ due to unknown display style", buf, 0xCu);
      }

      [cellCopy setUserInteractionEnabled:0];
    }
  }

LABEL_10:
  [cellCopy setAccessories:v19];

  return subtitleCellConfiguration;
}

void __84__PKPassEntitlementSelectionSectionController_decorateListCell_forEntitlementEntry___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)toggleValueChanged:(id)changed
{
  changedCopy = changed;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(changedCopy, "tag")}];
  v6 = [(NSMutableDictionary *)self->_toggleTags objectForKeyedSubscript:v5];
  if (v6)
  {
    [(PKPassEntitlementSelectionSectionController *)self didSelectItem:v6];
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Error: Did not find matching entitlement for toggle", v8, 2u);
    }

    [changedCopy setOn:{objc_msgSend(changedCopy, "isOn") ^ 1}];
  }
}

- (void)didSelectItem:(id)item
{
  itemCopy = item;
  displayableEntitlement = [itemCopy displayableEntitlement];
  v5 = [(PKPassEntitlementsComposer *)self->_entitlementComposer viewFor:itemCopy];
  if (([v5 isManagingTimeConfiguration] & 1) != 0 || objc_msgSend(v5, "isManagingEntitlementConfiguration"))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained showAdvancedScheduleSelectionFlowForEntitlementEntry:itemCopy];
LABEL_4:

    goto LABEL_5;
  }

  if ([(PKPassEntitlementsComposer *)self->_entitlementComposer editable])
  {
    enabled = [v5 enabled];
    if ((enabled & 1) == 0)
    {
      if ([v5 maxSelectionCount] == 1)
      {
        [(PKPassEntitlementSelectionSectionController *)self _clearEntitlementSelectionAnimated:1];
      }

      if ([displayableEntitlement clearGroupWhenSelected])
      {
        localizedGroup = [displayableEntitlement localizedGroup];
        [(PKPassEntitlementSelectionSectionController *)self _clearEntitlementSelectionInGroup:localizedGroup animated:1];
      }
    }

    [v5 setEnabled:enabled ^ 1u];
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 reloadItem:itemCopy animated:1];

    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 deselectCells];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained entitlementSelectionDidChange];
    goto LABEL_4;
  }

LABEL_5:
}

- (void)_clearEntitlementSelectionInGroup:(id)group animated:(BOOL)animated
{
  animatedCopy = animated;
  v19 = *MEMORY[0x1E69E9840];
  v6 = [(NSDictionary *)self->_groupedEntitlements objectForKeyedSubscript:group];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [(PKPassEntitlementsComposer *)self->_entitlementComposer viewFor:v11];
        [v12 setEnabled:0];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained reloadItem:v11 animated:animatedCopy];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)_clearEntitlementSelectionAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v18 = *MEMORY[0x1E69E9840];
  globalView = [(PKPassEntitlementsComposer *)self->_entitlementComposer globalView];
  [globalView setEnabled:0];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  entitlementEntries = [(PKPassEntitlementsComposer *)self->_entitlementComposer entitlementEntries];
  v7 = [entitlementEntries countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(entitlementEntries);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained reloadItem:v11 animated:animatedCopy];

        ++v10;
      }

      while (v8 != v10);
      v8 = [entitlementEntries countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (id)headerAttributedStringForIdentifier:(id)identifier
{
  v14[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (![identifierCopy length] || (v4 = identifierCopy, v4 == @"Default") || (v5 = v4) != 0 && (v6 = -[__CFString isEqualToString:](v4, "isEqualToString:", @"Default"), v5, (v6 & 1) != 0))
  {
    v7 = 0;
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E696AAB0]);
    v13[0] = *MEMORY[0x1E69DB648];
    v9 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC58], 2, 0);
    v14[0] = v9;
    v13[1] = *MEMORY[0x1E69DB650];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v14[1] = secondaryLabelColor;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
    v7 = [v8 initWithString:v5 attributes:v11];
  }

  return v7;
}

- (BOOL)shouldHighlightItem:(id)item
{
  itemCopy = item;
  v5 = [(PKPassEntitlementsComposer *)self->_entitlementComposer viewFor:itemCopy];
  if ([v5 isManagingTimeConfiguration] & 1) != 0 || (objc_msgSend(v5, "isManagingEntitlementConfiguration"))
  {
    v6 = 1;
  }

  else if ([(PKPassEntitlementsComposer *)self->_entitlementComposer editable])
  {
    displayableEntitlement = [itemCopy displayableEntitlement];
    v6 = [displayableEntitlement displayStyle] == 2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  v7 = [(NSDictionary *)self->_groupedEntitlements objectForKeyedSubscript:identifierCopy];

  if (v7)
  {
    v8 = [(NSDictionary *)self->_groupedEntitlements objectForKeyedSubscript:identifierCopy];
    [v6 appendItems:v8];
  }

  return v6;
}

- (PKPassEntitlementSelectionSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end