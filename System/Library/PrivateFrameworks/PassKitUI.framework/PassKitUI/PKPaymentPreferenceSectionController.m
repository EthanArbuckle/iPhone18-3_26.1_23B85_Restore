@interface PKPaymentPreferenceSectionController
- (BOOL)_preferenceIsHideMyEmail:(id)a3;
- (BOOL)textFieldShouldReturn:(id)a3 forListCell:(id)a4;
- (Class)footerViewClassForSectionIdentifier:(id)a3;
- (Class)supplementaryRegistrationClassForKind:(id)a3 sectionIdentifier:(id)a4;
- (PKPaymentPreferenceSectionController)initWithPreference:(id)a3 style:(int64_t)a4 preferencesChangedHandler:(id)a5;
- (PKPaymentPreferenceSectionController)linkedSectionController;
- (PKPaymentPreferenceSectionControllerDelegate)delegate;
- (id)appendNewItemForEditing;
- (id)cellRegistrationForItem:(id)a3;
- (id)footerContentForSectionIdentifier:(id)a3;
- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4;
- (id)newOptionItemForSubPreference:(id)a3;
- (id)newOptionItemForSubPreference:(id)a3 hasErrorHandler:(id)a4;
- (id)sectionIdentifier;
- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4;
- (void)_updateSelectedIndexIfNeededFromNewItemIndex:(int64_t)a3;
- (void)configureFooterView:(id)a3 forSectionIdentifier:(id)a4;
- (void)configureSupplementaryRegistration:(id)a3 elementKind:(id)a4 sectionIdentifier:(id)a5;
- (void)didSelectItem:(id)a3;
- (void)setSelectedIndex:(unint64_t)a3;
@end

@implementation PKPaymentPreferenceSectionController

- (PKPaymentPreferenceSectionController)initWithPreference:(id)a3 style:(int64_t)a4 preferencesChangedHandler:(id)a5
{
  v50[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v49.receiver = self;
  v49.super_class = PKPaymentPreferenceSectionController;
  v11 = [(PKPaymentPreferenceSectionController *)&v49 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_preference, a3);
    v13 = _Block_copy(v10);
    handler = v12->_handler;
    v12->_handler = v13;

    v12->_style = a4;
    v12->_isEditingFieldThatWasOriginallyInvalid = 0;
    v15 = [(PKPaymentPreferenceSectionController *)v12 sectionIdentifier];
    v50[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:1];
    [(PKDynamicListSectionController *)v12 setIdentifiers:v16];

    v17 = [(PKPaymentPreference *)v12->_preference title];
    [(PKDynamicListSectionController *)v12 setHeaderText:v17];

    v18 = [(PKPaymentPreference *)v12->_preference footer];
    [(PKDynamicListSectionController *)v12 setFooterText:v18];

    objc_initWeak(&location, v12);
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    items = v12->_items;
    v12->_items = v19;

    for (i = 0; ; ++i)
    {
      v22 = [(PKPaymentPreference *)v12->_preference preferences];
      v23 = i < [v22 count];

      preference = v12->_preference;
      if (!v23)
      {
        break;
      }

      v25 = [(PKPaymentPreference *)preference preferences];
      v26 = [v25 objectAtIndex:i];

      v27 = [(PKPaymentPreferenceSectionController *)v12 newOptionItemForSubPreference:v26];
      [(NSMutableArray *)v12->_items addObject:v27];
    }

    v28 = [(PKPaymentPreference *)preference preferences];
    v29 = [v28 lastObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && ([v29 isHideMyEmail] & 1) == 0)
    {
      v30 = v12->_items;
      v31 = [(PKPaymentPreferenceSectionController *)v12 addPreferenceItems];
      [(NSMutableArray *)v30 addObjectsFromArray:v31];
    }

    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __91__PKPaymentPreferenceSectionController_initWithPreference_style_preferencesChangedHandler___block_invoke;
    v46[3] = &unk_1E8013B50;
    objc_copyWeak(&v47, &location);
    [(PKDynamicListSectionController *)v12 setTrailingSwipeActionsConfigurationProvider:v46];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __91__PKPaymentPreferenceSectionController_initWithPreference_style_preferencesChangedHandler___block_invoke_4;
    aBlock[3] = &unk_1E8013B78;
    objc_copyWeak(&v45, &location);
    v32 = _Block_copy(aBlock);
    v33 = [MEMORY[0x1E69DC800] registrationWithCellClass:objc_opt_class() configurationHandler:v32];
    listRegistration = v12->_listRegistration;
    v12->_listRegistration = v33;

    v35 = MEMORY[0x1E69DC800];
    v36 = objc_opt_class();
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __91__PKPaymentPreferenceSectionController_initWithPreference_style_preferencesChangedHandler___block_invoke_5;
    v41[3] = &unk_1E8013BA0;
    v37 = v32;
    v42 = v37;
    objc_copyWeak(&v43, &location);
    v38 = [v35 registrationWithCellClass:v36 configurationHandler:v41];
    textFieldRegistration = v12->_textFieldRegistration;
    v12->_textFieldRegistration = v38;

    objc_destroyWeak(&v43);
    objc_destroyWeak(&v45);
    objc_destroyWeak(&v47);

    objc_destroyWeak(&location);
  }

  return v12;
}

id __91__PKPaymentPreferenceSectionController_initWithPreference_style_preferencesChangedHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained[15] objectAtIndex:{objc_msgSend(v3, "row")}];
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([v6 supportsSwipeActionType:0])
    {
      v8 = MEMORY[0x1E69DC8E8];
      v9 = PKLocalizedPaymentString(&cfstr_InAppPaymentOp.isa);
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __91__PKPaymentPreferenceSectionController_initWithPreference_style_preferencesChangedHandler___block_invoke_2;
      v25[3] = &unk_1E8013B28;
      v26 = v5;
      v27 = v6;
      v28 = v3;
      v10 = [v8 contextualActionWithStyle:1 title:v9 handler:v25];

      v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
      [v10 setImage:v11];

      [v7 addObject:v10];
    }

    if ([v6 supportsSwipeActionType:1])
    {
      v12 = MEMORY[0x1E69DC8E8];
      v13 = PKLocalizedPaymentString(&cfstr_InAppPaymentOp_0.isa);
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __91__PKPaymentPreferenceSectionController_initWithPreference_style_preferencesChangedHandler___block_invoke_3;
      v21 = &unk_1E8013B28;
      v22 = v5;
      v23 = v6;
      v24 = v3;
      v14 = [v12 contextualActionWithStyle:0 title:v13 handler:&v18];

      v15 = [MEMORY[0x1E69DCAB8] systemImageNamed:{@"pencil", v18, v19, v20, v21}];
      [v14 setImage:v15];

      [v7 addObject:v14];
    }

    if ([v7 count])
    {
      v16 = [MEMORY[0x1E69DCFC0] configurationWithActions:v7];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t __91__PKPaymentPreferenceSectionController_initWithPreference_style_preferencesChangedHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) row];

  return [v1 deleteItem:v2 forRow:v3];
}

uint64_t __91__PKPaymentPreferenceSectionController_initWithPreference_style_preferencesChangedHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) row];

  return [v1 editItem:v2 forRow:v3];
}

void __91__PKPaymentPreferenceSectionController_initWithPreference_style_preferencesChangedHandler___block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v15 = a3;
  v7 = a4;
  v8 = a2;
  v9 = [v7 configuration];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [v7 defaultAccessories];
  v12 = [v11 mutableCopy];

  LODWORD(v11) = [v7 isOptionItem];
  if (v11)
  {
    if (WeakRetained)
    {
      v13 = [WeakRetained[12] selectedIndex];
      if (v13 == [v15 row])
      {
        v14 = objc_alloc_init(MEMORY[0x1E69DC788]);
        [v14 setDisplayedState:2];
        [v12 addObject:v14];
      }
    }
  }

  [v8 setAccessories:v12];
  [v8 setContentConfiguration:v9];
}

void __91__PKPaymentPreferenceSectionController_initWithPreference_style_preferencesChangedHandler___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  v9 = a2;
  v8(v7, v9, a3, a4);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v9 setDelegate:WeakRetained];
}

- (id)sectionIdentifier
{
  v2 = [(PKPaymentPreference *)self->_preference title];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"unknown";
  }

  v5 = v4;

  return v4;
}

- (void)setSelectedIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_items count]> a3)
  {
    v5 = [(PKPaymentPreference *)self->_preference selectedIndex];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = v5;
      v7 = [(NSMutableArray *)self->_items objectAtIndex:v5];
      v8 = [v7 copy];

      [(NSMutableArray *)self->_items replaceObjectAtIndex:v6 withObject:v8];
    }

    [(PKPaymentPreference *)self->_preference setSelectedIndex:a3];
    v9 = [(NSMutableArray *)self->_items objectAtIndex:a3];
    v10 = [v9 copy];

    [(NSMutableArray *)self->_items replaceObjectAtIndex:a3 withObject:v10];
  }
}

- (id)appendNewItemForEditing
{
  v3 = [(PKPaymentPreferenceSectionController *)self appendNewSubPreference];
  v4 = [(PKPaymentPreferenceSectionController *)self newOptionItemForSubPreference:v3];
  v5 = [(PKPaymentPreference *)self->_preference preferences];
  v6 = [v5 lastObject];
  v7 = [v6 isHideMyEmail];

  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = [(PKPaymentPreference *)self->_preference preferences];
  if ([v9 count] == v8)
  {
    v10 = 0;
  }

  else
  {
    v11 = [(PKPaymentPreference *)self->_preference preferences];
    v10 = [v11 count] - v8;
  }

  [(NSMutableArray *)self->_items insertObject:v4 atIndex:v10];
  [(PKPaymentPreferenceSectionController *)self _updateSelectedIndexIfNeededFromNewItemIndex:v10];
  handler = self->_handler;
  if (handler)
  {
    handler[2](handler, self, v4);
  }

  return v4;
}

- (void)_updateSelectedIndexIfNeededFromNewItemIndex:(int64_t)a3
{
  if ([(PKPaymentPreference *)self->_preference selectedIndex]== a3)
  {
    v5 = [(PKPaymentPreference *)self->_preference preferences];
    v6 = [v5 lastObject];
    v7 = [v6 isHideMyEmail];

    if (v7)
    {
      preference = self->_preference;

      [(PKPaymentPreference *)preference setSelectedIndex:a3 + 1];
    }
  }
}

- (id)newOptionItemForSubPreference:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__PKPaymentPreferenceSectionController_newOptionItemForSubPreference___block_invoke;
  v7[3] = &unk_1E8013BC8;
  objc_copyWeak(&v8, &location);
  v5 = [(PKPaymentPreferenceSectionController *)self newOptionItemForSubPreference:v4 hasErrorHandler:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

uint64_t __70__PKPaymentPreferenceSectionController_newOptionItemForSubPreference___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _showErrorForTextField:v3];

  return v5;
}

- (id)newOptionItemForSubPreference:(id)a3 hasErrorHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[PKPaymentPreferenceOptionListItem alloc] initWithPreference:v7 inSectionPreference:self->_preference hasErrorHandler:v6];

  return v8;
}

- (BOOL)textFieldShouldReturn:(id)a3 forListCell:(id)a4
{
  v5 = [(PKPaymentPreferenceSectionController *)self delegate:a3];
  [v5 setEditing:0 animated:1 forSectionController:self];

  return 0;
}

- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4
{
  v6.receiver = self;
  v6.super_class = PKPaymentPreferenceSectionController;
  v4 = [(PKDynamicListSectionController *)&v6 layoutWithLayoutEnvironment:a3 sectionIdentifier:a4];

  return v4;
}

- (id)cellRegistrationForItem:(id)a3
{
  v4 = [a3 supportsInlineEditing];
  v5 = 5;
  if (v4)
  {
    v5 = 6;
  }

  v6 = *(&self->super.super.isa + OBJC_IVAR___PKPaymentPreferenceSectionController__preference[v5]);

  return v6;
}

- (void)configureSupplementaryRegistration:(id)a3 elementKind:(id)a4 sectionIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (*MEMORY[0x1E69DDC08] == v9)
  {
    [(PKDynamicListSectionController *)&v13 configureSupplementaryRegistration:v8 elementKind:v9 sectionIdentifier:v10, v12.receiver, v12.super_class, self, PKPaymentPreferenceSectionController];
  }

  else if (*MEMORY[0x1E69DDC00] == v9)
  {
    if ([(PKPaymentPreferenceSectionController *)self footerViewClassForSectionIdentifier:v10])
    {
      [(PKPaymentPreferenceSectionController *)self configureFooterView:v8 forSectionIdentifier:v10];
    }

    else
    {
      v11 = [(PKPaymentPreference *)self->_preference footer];

      if (v11)
      {
        [(PKDynamicListSectionController *)&v12 configureSupplementaryRegistration:v8 elementKind:v9 sectionIdentifier:v10, self, PKPaymentPreferenceSectionController, v13.receiver, v13.super_class];
      }
    }
  }
}

- (Class)supplementaryRegistrationClassForKind:(id)a3 sectionIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKPaymentPreferenceSectionController *)self footerViewClassForSectionIdentifier:v6];
  v9 = *MEMORY[0x1E69DDC00];

  if (v9 != v7 || v8 == 0)
  {
    objc_opt_class();
  }

  else
  {
    [(PKPaymentPreferenceSectionController *)self footerViewClassForSectionIdentifier:v6];
  }
  v11 = ;

  return v11;
}

- (Class)footerViewClassForSectionIdentifier:(id)a3
{
  v3 = [(PKPaymentPreferenceSectionController *)self footerContentForSectionIdentifier:a3];
  if (v3)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)configureFooterView:(id)a3 forSectionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKPaymentPreferenceSectionController *)self footerContentForSectionIdentifier:v7];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_initWeak(&location, self);
      v9 = v6;
      v10 = objc_loadWeakRetained(&location);
      v11 = [v10 preference];
      v12 = [v11 footerLinkActionBlock];

      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __81__PKPaymentPreferenceSectionController_configureFooterView_forSectionIdentifier___block_invoke;
      v21 = &unk_1E8013BF0;
      v13 = v12;
      v22 = v13;
      v14 = [PKTextRangeHyperlink hyperlinkSourcesFromApplyFooter:v8 linkTapped:&v18];
      [v9 edgeInsets];
      v16 = v15;
      [v9 edgeInsets];
      [v9 setEdgeInsets:{0.0, v16, 0.0}];
      v17 = [v8 footerText];
      [v9 setText:v17];

      [v9 setTextAlignment:4];
      [v9 setSources:v14];

      objc_destroyWeak(&location);
    }
  }
}

uint64_t __81__PKPaymentPreferenceSectionController_configureFooterView_forSectionIdentifier___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (id)footerContentForSectionIdentifier:(id)a3
{
  v4 = [(PKPaymentPreference *)self->_preference footer];
  v5 = [(PKPaymentPreference *)self->_preference footerLinkRange];
  if (v4)
  {
    v7 = v5 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v8 = v5;
    v9 = v6;
    v10 = objc_alloc_init(MEMORY[0x1E69B85D0]);
    v11 = objc_alloc_init(MEMORY[0x1E69B85D8]);
    v12 = [v4 substringWithRange:{v8, v9}];
    [v11 setLinkText:v12];

    v13 = [MEMORY[0x1E695DFD8] setWithObject:v11];
    [v10 setLinks:v13];

    [v10 setFooterText:v4];
  }

  return v10;
}

- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4
{
  v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  [v5 appendItems:self->_items];

  return v5;
}

- (void)didSelectItem:(id)a3
{
  v24 = a3;
  if (![v24 isOptionItem])
  {
    v6 = [v24 isAddItem];
    v7 = v24;
    if (!v6)
    {
      goto LABEL_25;
    }

    v8 = [v24 handler];
    v8[2]();

    goto LABEL_24;
  }

  v4 = [(NSMutableArray *)self->_items indexOfObject:v24];
  v5 = [(PKPaymentPreferenceSectionController *)self delegate];
  if ([v5 collectionViewIsEditingForSectionController:self])
  {
    if ([v24 supportsSwipeActionType:1])
    {

LABEL_15:
      [(PKPaymentPreferenceSectionController *)self editItem:v24 forRow:v4];
      goto LABEL_24;
    }

    v17 = [v24 supportsInlineEditing];

    if (v17)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v9 = [(PKPaymentPreference *)self->_preference isReadOnly];
  v7 = v24;
  if (v9)
  {
    goto LABEL_25;
  }

  v10 = [(PKPaymentPreference *)self->_preference selectedIndex];
  if (v4 == v10)
  {
    v11 = [(PKPaymentPreference *)self->_preference preferences];
    v12 = [v11 count];

    v7 = v24;
    if (v4 >= v12)
    {
      goto LABEL_25;
    }

    v13 = [(PKPaymentPreference *)self->_preference preferences];
    v14 = [v13 objectAtIndex:v4];

    v15 = [(PKPaymentPreference *)self->_preference errorsForPreference:v14];
    v16 = [v15 count];

    if (([(PKPaymentPreference *)self->_preference isReadOnly]& 1) == 0 && v16)
    {
      [(PKPaymentPreferenceSectionController *)self editItem:v24 forRow:v4];
    }
  }

  else
  {
    v18 = v10;
    if ([(PKPaymentPreferenceSectionController *)self _preferenceIsHideMyEmail:v24])
    {
      v19 = objc_alloc_init(MEMORY[0x1E69B88F0]);
      if (([v19 isAccountConfigured] & 1) == 0)
      {
        v23 = [(PKPaymentPreferenceSectionController *)self delegate];
        [v23 presentHideMyEmailAlertController];

        goto LABEL_24;
      }
    }

    if (v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = [(NSMutableArray *)self->_items objectAtIndex:v18];
      v21 = [v20 copy];

      [(NSMutableArray *)self->_items replaceObjectAtIndex:v18 withObject:v21];
    }

    v14 = [v24 copy];
    [(NSMutableArray *)self->_items replaceObjectAtIndex:v4 withObject:v14];
    [(PKPaymentPreference *)self->_preference setSelectedIndex:v4];
    handler = self->_handler;
    if (handler)
    {
      handler[2](handler, self, v24);
    }
  }

LABEL_24:
  v7 = v24;
LABEL_25:
}

- (BOOL)_preferenceIsHideMyEmail:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 contactPreference];
    v5 = [v4 isHideMyEmail];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PKPaymentPreferenceSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PKPaymentPreferenceSectionController)linkedSectionController
{
  WeakRetained = objc_loadWeakRetained(&self->_linkedSectionController);

  return WeakRetained;
}

@end