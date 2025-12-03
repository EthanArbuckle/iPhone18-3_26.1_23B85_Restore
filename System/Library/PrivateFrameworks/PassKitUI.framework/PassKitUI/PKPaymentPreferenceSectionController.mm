@interface PKPaymentPreferenceSectionController
- (BOOL)_preferenceIsHideMyEmail:(id)email;
- (BOOL)textFieldShouldReturn:(id)return forListCell:(id)cell;
- (Class)footerViewClassForSectionIdentifier:(id)identifier;
- (Class)supplementaryRegistrationClassForKind:(id)kind sectionIdentifier:(id)identifier;
- (PKPaymentPreferenceSectionController)initWithPreference:(id)preference style:(int64_t)style preferencesChangedHandler:(id)handler;
- (PKPaymentPreferenceSectionController)linkedSectionController;
- (PKPaymentPreferenceSectionControllerDelegate)delegate;
- (id)appendNewItemForEditing;
- (id)cellRegistrationForItem:(id)item;
- (id)footerContentForSectionIdentifier:(id)identifier;
- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier;
- (id)newOptionItemForSubPreference:(id)preference;
- (id)newOptionItemForSubPreference:(id)preference hasErrorHandler:(id)handler;
- (id)sectionIdentifier;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)_updateSelectedIndexIfNeededFromNewItemIndex:(int64_t)index;
- (void)configureFooterView:(id)view forSectionIdentifier:(id)identifier;
- (void)configureSupplementaryRegistration:(id)registration elementKind:(id)kind sectionIdentifier:(id)identifier;
- (void)didSelectItem:(id)item;
- (void)setSelectedIndex:(unint64_t)index;
@end

@implementation PKPaymentPreferenceSectionController

- (PKPaymentPreferenceSectionController)initWithPreference:(id)preference style:(int64_t)style preferencesChangedHandler:(id)handler
{
  v50[1] = *MEMORY[0x1E69E9840];
  preferenceCopy = preference;
  handlerCopy = handler;
  v49.receiver = self;
  v49.super_class = PKPaymentPreferenceSectionController;
  v11 = [(PKPaymentPreferenceSectionController *)&v49 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_preference, preference);
    v13 = _Block_copy(handlerCopy);
    handler = v12->_handler;
    v12->_handler = v13;

    v12->_style = style;
    v12->_isEditingFieldThatWasOriginallyInvalid = 0;
    sectionIdentifier = [(PKPaymentPreferenceSectionController *)v12 sectionIdentifier];
    v50[0] = sectionIdentifier;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:1];
    [(PKDynamicListSectionController *)v12 setIdentifiers:v16];

    title = [(PKPaymentPreference *)v12->_preference title];
    [(PKDynamicListSectionController *)v12 setHeaderText:title];

    footer = [(PKPaymentPreference *)v12->_preference footer];
    [(PKDynamicListSectionController *)v12 setFooterText:footer];

    objc_initWeak(&location, v12);
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    items = v12->_items;
    v12->_items = v19;

    for (i = 0; ; ++i)
    {
      preferences = [(PKPaymentPreference *)v12->_preference preferences];
      v23 = i < [preferences count];

      preference = v12->_preference;
      if (!v23)
      {
        break;
      }

      preferences2 = [(PKPaymentPreference *)preference preferences];
      v26 = [preferences2 objectAtIndex:i];

      v27 = [(PKPaymentPreferenceSectionController *)v12 newOptionItemForSubPreference:v26];
      [(NSMutableArray *)v12->_items addObject:v27];
    }

    preferences3 = [(PKPaymentPreference *)preference preferences];
    lastObject = [preferences3 lastObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && ([lastObject isHideMyEmail] & 1) == 0)
    {
      v30 = v12->_items;
      addPreferenceItems = [(PKPaymentPreferenceSectionController *)v12 addPreferenceItems];
      [(NSMutableArray *)v30 addObjectsFromArray:addPreferenceItems];
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
  title = [(PKPaymentPreference *)self->_preference title];
  v3 = title;
  if (title)
  {
    v4 = title;
  }

  else
  {
    v4 = @"unknown";
  }

  v5 = v4;

  return v4;
}

- (void)setSelectedIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_items count]> index)
  {
    selectedIndex = [(PKPaymentPreference *)self->_preference selectedIndex];
    if (selectedIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = selectedIndex;
      v7 = [(NSMutableArray *)self->_items objectAtIndex:selectedIndex];
      v8 = [v7 copy];

      [(NSMutableArray *)self->_items replaceObjectAtIndex:v6 withObject:v8];
    }

    [(PKPaymentPreference *)self->_preference setSelectedIndex:index];
    v9 = [(NSMutableArray *)self->_items objectAtIndex:index];
    v10 = [v9 copy];

    [(NSMutableArray *)self->_items replaceObjectAtIndex:index withObject:v10];
  }
}

- (id)appendNewItemForEditing
{
  appendNewSubPreference = [(PKPaymentPreferenceSectionController *)self appendNewSubPreference];
  v4 = [(PKPaymentPreferenceSectionController *)self newOptionItemForSubPreference:appendNewSubPreference];
  preferences = [(PKPaymentPreference *)self->_preference preferences];
  lastObject = [preferences lastObject];
  isHideMyEmail = [lastObject isHideMyEmail];

  if (isHideMyEmail)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  preferences2 = [(PKPaymentPreference *)self->_preference preferences];
  if ([preferences2 count] == v8)
  {
    v10 = 0;
  }

  else
  {
    preferences3 = [(PKPaymentPreference *)self->_preference preferences];
    v10 = [preferences3 count] - v8;
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

- (void)_updateSelectedIndexIfNeededFromNewItemIndex:(int64_t)index
{
  if ([(PKPaymentPreference *)self->_preference selectedIndex]== index)
  {
    preferences = [(PKPaymentPreference *)self->_preference preferences];
    lastObject = [preferences lastObject];
    isHideMyEmail = [lastObject isHideMyEmail];

    if (isHideMyEmail)
    {
      preference = self->_preference;

      [(PKPaymentPreference *)preference setSelectedIndex:index + 1];
    }
  }
}

- (id)newOptionItemForSubPreference:(id)preference
{
  preferenceCopy = preference;
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__PKPaymentPreferenceSectionController_newOptionItemForSubPreference___block_invoke;
  v7[3] = &unk_1E8013BC8;
  objc_copyWeak(&v8, &location);
  v5 = [(PKPaymentPreferenceSectionController *)self newOptionItemForSubPreference:preferenceCopy hasErrorHandler:v7];
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

- (id)newOptionItemForSubPreference:(id)preference hasErrorHandler:(id)handler
{
  handlerCopy = handler;
  preferenceCopy = preference;
  v8 = [[PKPaymentPreferenceOptionListItem alloc] initWithPreference:preferenceCopy inSectionPreference:self->_preference hasErrorHandler:handlerCopy];

  return v8;
}

- (BOOL)textFieldShouldReturn:(id)return forListCell:(id)cell
{
  v5 = [(PKPaymentPreferenceSectionController *)self delegate:return];
  [v5 setEditing:0 animated:1 forSectionController:self];

  return 0;
}

- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = PKPaymentPreferenceSectionController;
  v4 = [(PKDynamicListSectionController *)&v6 layoutWithLayoutEnvironment:environment sectionIdentifier:identifier];

  return v4;
}

- (id)cellRegistrationForItem:(id)item
{
  supportsInlineEditing = [item supportsInlineEditing];
  v5 = 5;
  if (supportsInlineEditing)
  {
    v5 = 6;
  }

  v6 = *(&self->super.super.isa + OBJC_IVAR___PKPaymentPreferenceSectionController__preference[v5]);

  return v6;
}

- (void)configureSupplementaryRegistration:(id)registration elementKind:(id)kind sectionIdentifier:(id)identifier
{
  registrationCopy = registration;
  kindCopy = kind;
  identifierCopy = identifier;
  if (*MEMORY[0x1E69DDC08] == kindCopy)
  {
    [(PKDynamicListSectionController *)&v13 configureSupplementaryRegistration:registrationCopy elementKind:kindCopy sectionIdentifier:identifierCopy, v12.receiver, v12.super_class, self, PKPaymentPreferenceSectionController];
  }

  else if (*MEMORY[0x1E69DDC00] == kindCopy)
  {
    if ([(PKPaymentPreferenceSectionController *)self footerViewClassForSectionIdentifier:identifierCopy])
    {
      [(PKPaymentPreferenceSectionController *)self configureFooterView:registrationCopy forSectionIdentifier:identifierCopy];
    }

    else
    {
      footer = [(PKPaymentPreference *)self->_preference footer];

      if (footer)
      {
        [(PKDynamicListSectionController *)&v12 configureSupplementaryRegistration:registrationCopy elementKind:kindCopy sectionIdentifier:identifierCopy, self, PKPaymentPreferenceSectionController, v13.receiver, v13.super_class];
      }
    }
  }
}

- (Class)supplementaryRegistrationClassForKind:(id)kind sectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  kindCopy = kind;
  v8 = [(PKPaymentPreferenceSectionController *)self footerViewClassForSectionIdentifier:identifierCopy];
  v9 = *MEMORY[0x1E69DDC00];

  if (v9 != kindCopy || v8 == 0)
  {
    objc_opt_class();
  }

  else
  {
    [(PKPaymentPreferenceSectionController *)self footerViewClassForSectionIdentifier:identifierCopy];
  }
  v11 = ;

  return v11;
}

- (Class)footerViewClassForSectionIdentifier:(id)identifier
{
  v3 = [(PKPaymentPreferenceSectionController *)self footerContentForSectionIdentifier:identifier];
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

- (void)configureFooterView:(id)view forSectionIdentifier:(id)identifier
{
  viewCopy = view;
  identifierCopy = identifier;
  v8 = [(PKPaymentPreferenceSectionController *)self footerContentForSectionIdentifier:identifierCopy];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_initWeak(&location, self);
      v9 = viewCopy;
      v10 = objc_loadWeakRetained(&location);
      preference = [v10 preference];
      footerLinkActionBlock = [preference footerLinkActionBlock];

      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __81__PKPaymentPreferenceSectionController_configureFooterView_forSectionIdentifier___block_invoke;
      v21 = &unk_1E8013BF0;
      v13 = footerLinkActionBlock;
      v22 = v13;
      v14 = [PKTextRangeHyperlink hyperlinkSourcesFromApplyFooter:v8 linkTapped:&v18];
      [v9 edgeInsets];
      v16 = v15;
      [v9 edgeInsets];
      [v9 setEdgeInsets:{0.0, v16, 0.0}];
      footerText = [v8 footerText];
      [v9 setText:footerText];

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

- (id)footerContentForSectionIdentifier:(id)identifier
{
  footer = [(PKPaymentPreference *)self->_preference footer];
  footerLinkRange = [(PKPaymentPreference *)self->_preference footerLinkRange];
  if (footer)
  {
    v7 = footerLinkRange == 0x7FFFFFFFFFFFFFFFLL;
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
    v8 = footerLinkRange;
    v9 = v6;
    v10 = objc_alloc_init(MEMORY[0x1E69B85D0]);
    v11 = objc_alloc_init(MEMORY[0x1E69B85D8]);
    v12 = [footer substringWithRange:{v8, v9}];
    [v11 setLinkText:v12];

    v13 = [MEMORY[0x1E695DFD8] setWithObject:v11];
    [v10 setLinks:v13];

    [v10 setFooterText:footer];
  }

  return v10;
}

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  [v5 appendItems:self->_items];

  return v5;
}

- (void)didSelectItem:(id)item
{
  itemCopy = item;
  if (![itemCopy isOptionItem])
  {
    isAddItem = [itemCopy isAddItem];
    v7 = itemCopy;
    if (!isAddItem)
    {
      goto LABEL_25;
    }

    handler = [itemCopy handler];
    handler[2]();

    goto LABEL_24;
  }

  v4 = [(NSMutableArray *)self->_items indexOfObject:itemCopy];
  delegate = [(PKPaymentPreferenceSectionController *)self delegate];
  if ([delegate collectionViewIsEditingForSectionController:self])
  {
    if ([itemCopy supportsSwipeActionType:1])
    {

LABEL_15:
      [(PKPaymentPreferenceSectionController *)self editItem:itemCopy forRow:v4];
      goto LABEL_24;
    }

    supportsInlineEditing = [itemCopy supportsInlineEditing];

    if (supportsInlineEditing)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  isReadOnly = [(PKPaymentPreference *)self->_preference isReadOnly];
  v7 = itemCopy;
  if (isReadOnly)
  {
    goto LABEL_25;
  }

  selectedIndex = [(PKPaymentPreference *)self->_preference selectedIndex];
  if (v4 == selectedIndex)
  {
    preferences = [(PKPaymentPreference *)self->_preference preferences];
    v12 = [preferences count];

    v7 = itemCopy;
    if (v4 >= v12)
    {
      goto LABEL_25;
    }

    preferences2 = [(PKPaymentPreference *)self->_preference preferences];
    v14 = [preferences2 objectAtIndex:v4];

    v15 = [(PKPaymentPreference *)self->_preference errorsForPreference:v14];
    v16 = [v15 count];

    if (([(PKPaymentPreference *)self->_preference isReadOnly]& 1) == 0 && v16)
    {
      [(PKPaymentPreferenceSectionController *)self editItem:itemCopy forRow:v4];
    }
  }

  else
  {
    v18 = selectedIndex;
    if ([(PKPaymentPreferenceSectionController *)self _preferenceIsHideMyEmail:itemCopy])
    {
      v19 = objc_alloc_init(MEMORY[0x1E69B88F0]);
      if (([v19 isAccountConfigured] & 1) == 0)
      {
        delegate2 = [(PKPaymentPreferenceSectionController *)self delegate];
        [delegate2 presentHideMyEmailAlertController];

        goto LABEL_24;
      }
    }

    if (v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = [(NSMutableArray *)self->_items objectAtIndex:v18];
      v21 = [v20 copy];

      [(NSMutableArray *)self->_items replaceObjectAtIndex:v18 withObject:v21];
    }

    v14 = [itemCopy copy];
    [(NSMutableArray *)self->_items replaceObjectAtIndex:v4 withObject:v14];
    [(PKPaymentPreference *)self->_preference setSelectedIndex:v4];
    handler = self->_handler;
    if (handler)
    {
      handler[2](handler, self, itemCopy);
    }
  }

LABEL_24:
  v7 = itemCopy;
LABEL_25:
}

- (BOOL)_preferenceIsHideMyEmail:(id)email
{
  emailCopy = email;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contactPreference = [emailCopy contactPreference];
    isHideMyEmail = [contactPreference isHideMyEmail];
  }

  else
  {
    isHideMyEmail = 0;
  }

  return isHideMyEmail;
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