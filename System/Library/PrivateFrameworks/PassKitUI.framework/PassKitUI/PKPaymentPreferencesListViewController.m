@interface PKPaymentPreferencesListViewController
- (BOOL)collectionViewIsEditingForSectionController:(id)a3;
- (PKPaymentPreferencesListViewController)initWithPreferences:(id)a3 title:(id)a4 style:(int64_t)a5 handler:(id)a6 contactFormatValidator:(id)a7;
- (id)_requiredKeysForContactPreference:(id)a3;
- (void)_endCurrentInlineEditing;
- (void)_handleSelectedContact:(id)a3 controller:(id)a4;
- (void)_keyboardDidShow:(id)a3;
- (void)_keyboardWillHide:(id)a3;
- (void)_reloadEditedSection:(id)a3;
- (void)_resetEditingContact:(id)a3 withCell:(id)a4 forRow:(unint64_t)a5;
- (void)_setupSectionControllers;
- (void)_updateContactAtIndex:(unint64_t)a3 withCell:(id)a4;
- (void)_updateNavigationBarButtons;
- (void)addressEditorViewController:(id)a3 selectedContact:(id)a4;
- (void)addressEditorViewControllerDidCancel:(id)a3;
- (void)addressSearcherViewController:(id)a3 selectedContact:(id)a4;
- (void)addressSearcherViewControllerDidCancel:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4;
- (void)presentHideMyEmailAlertController;
- (void)presentMeCardAlertControllerWithContact:(id)a3 contactKey:(id)a4 handler:(id)a5;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setPreferences:(id)a3;
- (void)showAddressEditorForContactItem:(id)a3 inSectionController:(id)a4;
- (void)showAddressPickerForPreference:(id)a3 inSectionController:(id)a4;
- (void)showContactsPickerForPreference:(id)a3 inSectionController:(id)a4;
- (void)startInlineEditingForContactItem:(id)a3 inSectionController:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PKPaymentPreferencesListViewController

- (PKPaymentPreferencesListViewController)initWithPreferences:(id)a3 title:(id)a4 style:(int64_t)a5 handler:(id)a6 contactFormatValidator:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = PKPaymentPreferencesListViewController;
  v17 = [(PKDynamicCollectionViewController *)&v23 init];
  v18 = v17;
  if (v17)
  {
    v22.receiver = v17;
    v22.super_class = PKPaymentPreferencesListViewController;
    [(PKPaymentPreferencesListViewController *)&v22 setTitle:v14];
    objc_storeStrong(&v18->_preferences, a3);
    v19 = _Block_copy(v15);
    handler = v18->_handler;
    v18->_handler = v19;

    objc_storeStrong(&v18->_contactFormatValidator, a7);
    v18->_style = a5;
    [(PKPaymentPreferencesListViewController *)v18 _setupSectionControllers];
  }

  return v18;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PKPaymentPreferencesListViewController;
  [(PKDynamicCollectionViewController *)&v4 viewDidLoad];
  v3 = [(PKDynamicCollectionViewController *)self collectionView];
  [v3 setAllowsSelectionDuringEditing:1];
}

- (void)viewDidAppear:(BOOL)a3
{
  v10[2] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = PKPaymentPreferencesListViewController;
  [(PKDynamicCollectionViewController *)&v8 viewDidAppear:a3];
  v3 = MEMORY[0x1E69B8540];
  v4 = *MEMORY[0x1E69BB6E0];
  v5 = *MEMORY[0x1E69BABE8];
  v9[0] = *MEMORY[0x1E69BA680];
  v9[1] = v5;
  v6 = *MEMORY[0x1E69BAD80];
  v10[0] = *MEMORY[0x1E69BA818];
  v10[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v3 subject:v4 sendEvent:v7];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PKPaymentPreferencesListViewController;
  [(PKDynamicCollectionViewController *)&v6 viewWillAppear:a3];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel__keyboardDidShow_ name:*MEMORY[0x1E69DDF78] object:0];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:self selector:sel__keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];

  [(PKPaymentPreferencesListViewController *)self _updateNavigationBarButtons];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = PKPaymentPreferencesListViewController;
  [(PKPaymentPreferencesListViewController *)&v10 viewDidDisappear:a3];
  [(PKPaymentPreferencesListViewController *)self setEditing:0 animated:1];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  v5 = MEMORY[0x1E69B8540];
  v6 = *MEMORY[0x1E69BB6E0];
  v7 = *MEMORY[0x1E69BABE8];
  v11[0] = *MEMORY[0x1E69BA680];
  v11[1] = v7;
  v8 = *MEMORY[0x1E69BAD80];
  v12[0] = *MEMORY[0x1E69BA820];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [v5 subject:v6 sendEvent:v9];
}

- (void)_updateNavigationBarButtons
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(PKPaymentPreferencesListViewController *)self navigationItem];
  [v3 setRightBarButtonItem:0];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_preferences;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 supportsDeletion])
        {
          if (([v9 isReadOnly] & 1) == 0)
          {
            v10 = [v9 preferences];
            v11 = [v10 count];

            if (v11)
            {
              v12 = [(PKPaymentPreferencesListViewController *)self navigationItem];
              v13 = [(PKPaymentPreferencesListViewController *)self editButtonItem];
              [v12 setRightBarButtonItem:v13];

              goto LABEL_13;
            }
          }
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = PKPaymentPreferencesListViewController;
  [(PKDynamicCollectionViewController *)&v7 setEditing:a3 animated:a4];
  if (!a3)
  {
    [(PKPaymentPreferencesListViewController *)self _endCurrentInlineEditing];
    editingItem = self->_editingItem;
    self->_editingItem = 0;
  }
}

- (void)setPreferences:(id)a3
{
  objc_storeStrong(&self->_preferences, a3);

  [(PKPaymentPreferencesListViewController *)self _setupSectionControllers];
}

- (void)_setupSectionControllers
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = self->_preferences;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        objc_initWeak(&location, self);
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __66__PKPaymentPreferencesListViewController__setupSectionControllers__block_invoke;
        v15[3] = &unk_1E8026DC8;
        objc_copyWeak(&v16, &location);
        v9 = _Block_copy(v15);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [[PKPaymentPreferenceContactSectionController alloc] initWithContactPreference:v8 contactFormatValidator:self->_contactFormatValidator style:self->_style preferencesChangedHandler:v9];
          [(PKPaymentPreferenceContactSectionController *)v10 setContactDelegate:self];
          [(PKPaymentPreferenceSectionController *)v10 setDelegate:self];
          [v3 addObject:v10];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_11;
          }

          v10 = [(PKPaymentPreferenceSectionController *)[PKPaymentPreferenceCardSectionController alloc] initWithPreference:v8 style:self->_style preferencesChangedHandler:v9];
          [(PKPaymentPreferenceSectionController *)v10 setDelegate:self];
          [v3 addObject:v10];
        }

LABEL_11:
        if ([v8 educationalAnimation])
        {
          v11 = +[PKEducationalMessageViewConfiguration defaultConfigurationForAnimation:](PKEducationalMessageViewConfiguration, "defaultConfigurationForAnimation:", [v8 educationalAnimation]);
          v12 = [[PKEducationalMessageSectionController alloc] initWithConfiguration:v11];
          [v3 addObject:v12];
        }

        objc_destroyWeak(&v16);
        objc_destroyWeak(&location);
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  if (self->_preferenceHasSeparateAddItemsSection && [v3 count] == 2)
  {
    v13 = [v3 objectAtIndexedSubscript:0];
    v14 = [v3 objectAtIndexedSubscript:1];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass())
    {
      [v14 setLinkedSectionController:v13];
    }
  }

  [(PKDynamicCollectionViewController *)self setSections:v3 animated:0];
}

void __66__PKPaymentPreferencesListViewController__setupSectionControllers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadEditedSection:v3];
}

- (void)_keyboardDidShow:(id)a3
{
  v30 = [a3 userInfo];
  v4 = [v30 objectForKey:*MEMORY[0x1E69DDFA0]];
  [v4 CGRectValue];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = *MEMORY[0x1E69DDCE0];
  v14 = *(MEMORY[0x1E69DDCE0] + 8);
  v15 = *(MEMORY[0x1E69DDCE0] + 24);
  v16 = [(PKPaymentPreferencesListViewController *)self view];
  [v16 convertRect:0 fromView:{v6, v8, v10, v12}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = [(PKDynamicCollectionViewController *)self collectionView];
  [v25 frame];
  MaxY = CGRectGetMaxY(v32);
  v33.origin.x = v18;
  v33.origin.y = v20;
  v33.size.width = v22;
  v33.size.height = v24;
  v27 = MaxY - CGRectGetMinY(v33) + 10.0;

  v28 = [(PKDynamicCollectionViewController *)self collectionView];
  [v28 setContentInset:{v13, v14, v27, v15}];

  v29 = [(PKDynamicCollectionViewController *)self collectionView];
  [v29 setScrollIndicatorInsets:{v13, v14, v27, v15}];
}

- (void)_keyboardWillHide:(id)a3
{
  v4 = [(PKDynamicCollectionViewController *)self collectionView];
  v5 = *MEMORY[0x1E69DDCE0];
  v6 = *(MEMORY[0x1E69DDCE0] + 8);
  v7 = *(MEMORY[0x1E69DDCE0] + 16);
  v8 = *(MEMORY[0x1E69DDCE0] + 24);
  [v4 setContentInset:{*MEMORY[0x1E69DDCE0], v6, v7, v8}];

  v9 = [(PKDynamicCollectionViewController *)self collectionView];
  [v9 setScrollIndicatorInsets:{v5, v6, v7, v8}];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 deselectItemAtIndexPath:v6 animated:1];
  v8.receiver = self;
  v8.super_class = PKPaymentPreferencesListViewController;
  [(PKDynamicCollectionViewController *)&v8 collectionView:v7 didSelectItemAtIndexPath:v6];
}

- (BOOL)collectionViewIsEditingForSectionController:(id)a3
{
  v3 = [(PKDynamicCollectionViewController *)self collectionView];
  v4 = [v3 isEditing];

  return v4;
}

- (void)presentHideMyEmailAlertController
{
  v3 = MEMORY[0x1E69DC650];
  v4 = PKLocalizedHideMyEmailString(&cfstr_Hme2faAlertTit.isa);
  v5 = PKLocalizedHideMyEmailString(&cfstr_Hme2faAlertDes.isa);
  v12 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v6 = MEMORY[0x1E69DC648];
  v7 = PKLocalizedString(&cfstr_Cancel.isa);
  v8 = [v6 actionWithTitle:v7 style:1 handler:0];
  [v12 addAction:v8];

  v9 = MEMORY[0x1E69DC648];
  v10 = PKLocalizedPaymentString(&cfstr_Continue.isa);
  v11 = [v9 actionWithTitle:v10 style:0 handler:&__block_literal_global_255];

  [v12 addAction:v11];
  [v12 setPreferredAction:v11];
  [(PKPaymentPreferencesListViewController *)self presentViewController:v12 animated:1 completion:0];
}

void __75__PKPaymentPreferencesListViewController_presentHideMyEmailAlertController__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFF8]);
  v1 = [v0 initWithString:*MEMORY[0x1E69BB910]];
  if (v1)
  {
    v3 = v1;
    v2 = [MEMORY[0x1E6963608] defaultWorkspace];
    [v2 openSensitiveURL:v3 withOptions:0];

    v1 = v3;
  }
}

- (void)showAddressEditorForContactItem:(id)a3 inSectionController:(id)a4
{
  v19 = a3;
  v7 = a4;
  objc_storeStrong(&self->_editingContactSectionController, a4);
  objc_storeStrong(&self->_editingItem, a3);
  v8 = [v19 contactPreference];
  v9 = [v7 contactPreference];
  v10 = [v9 errorsForPreference:v8];
  v11 = [v10 count];

  v12 = [(PKPaymentPreferencesListViewController *)self _requiredKeysForContactPreference:v9];
  v13 = [PKAddressEditorViewController alloc];
  v14 = v13;
  if (v11)
  {
    v15 = [v9 errorsForPreference:v8];
    v16 = [(PKAddressEditorViewController *)v14 initWithContact:v8 requiredKeys:v12 highlightedKeys:0 errors:v15 style:1];
  }

  else
  {
    v16 = [(PKAddressEditorViewController *)v13 initWithContact:v8 requiredKeys:v12 highlightedKeys:0 errors:0 style:1];
  }

  [(PKAddressEditorViewController *)v16 setDelegate:self];
  v17 = [v9 editExistingTitle];
  [(PKAddressEditorViewController *)v16 setTitle:v17];

  [(PKAddressEditorViewController *)v16 setContactFormatValidator:self->_contactFormatValidator];
  v18 = [[PKBlurredContainerNavigationController alloc] initWithRootViewController:v16];
  if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    [(PKBlurredContainerNavigationController *)v18 setModalPresentationStyle:2];
  }

  [(PKPaymentPreferencesListViewController *)self presentViewController:v18 animated:1 completion:0];
}

- (void)showAddressPickerForPreference:(id)a3 inSectionController:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (PKUIStoreDemoGatewayWithViewController(self))
  {
    objc_storeStrong(&self->_editingContactSectionController, a4);
    v7 = [v13 addNewTitle];
    v8 = [[PKAddressSearcherViewController alloc] initWithStyle:1];
    v9 = [(PKPaymentPreferencesListViewController *)self _requiredKeysForContactPreference:v13];
    [(PKAddressSearcherViewController *)v8 setRequiredKeys:v9];

    [(PKAddressSearcherViewController *)v8 setDelegate:self];
    [(PKAddressSearcherViewController *)v8 setContactFormatValidator:self->_contactFormatValidator];
    v10 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v8];
    if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
    {
      [v10 setModalPresentationStyle:2];
      [MEMORY[0x1E69DD258] defaultFormSheetSize];
      [v10 setPreferredContentSize:?];
      v11 = PKLocalizedPaymentString(v7);
      [v10 setTitle:v11];

      v12 = PKLocalizedPaymentString(v7);
      [(PKAddressSearcherViewController *)v8 setTitle:v12];
    }

    else
    {
      v12 = PKLocalizedPaymentString(v7);
      [(PKAddressSearcherViewController *)v8 setHeaderTitle:v12];
    }

    [v10 setModalInPresentation:1];
    [(PKPaymentPreferencesListViewController *)self setEditing:0];
    [(PKPaymentPreferencesListViewController *)self presentViewController:v10 animated:1 completion:0];
  }
}

- (void)showContactsPickerForPreference:(id)a3 inSectionController:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (PKUIStoreDemoGatewayWithViewController(self))
  {
    objc_storeStrong(&self->_editingContactSectionController, a4);
    v8 = [v6 contactKey];
    v9 = objc_alloc_init(getCNContactPickerViewControllerClass_0());
    if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
    {
      [v9 setModalPresentationStyle:2];
    }

    [v9 setDelegate:self];
    v15[0] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [v9 setDisplayedPropertyKeys:v10];

    if ([v8 isEqualToString:*MEMORY[0x1E695C208]])
    {
      v11 = @"emailAddresses.@count = 1";
      v12 = @"emailAddresses.@count > 0";
    }

    else if ([v8 isEqualToString:*MEMORY[0x1E695C360]])
    {
      v11 = @"postalAddresses.@count = 1";
      v12 = @"postalAddresses.@count > 0";
    }

    else
    {
      if (![v8 isEqualToString:*MEMORY[0x1E695C330]])
      {
LABEL_11:
        [(PKPaymentPreferencesListViewController *)self setEditing:0];
        [(PKPaymentPreferencesListViewController *)self presentViewController:v9 animated:1 completion:0];

        goto LABEL_12;
      }

      v11 = @"phoneNumbers.@count = 1";
      v12 = @"phoneNumbers.@count > 0";
    }

    v13 = [MEMORY[0x1E696AE18] predicateWithFormat:v12];
    [v9 setPredicateForEnablingContact:v13];

    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:v11];
    [v9 setPredicateForSelectionOfContact:v14];

    goto LABEL_11;
  }

LABEL_12:
}

- (void)presentMeCardAlertControllerWithContact:(id)a3 contactKey:(id)a4 handler:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([v7 isEqualToString:*MEMORY[0x1E695C208]])
  {
    v9 = @"EMAIL";
  }

  else if ([v7 isEqualToString:*MEMORY[0x1E695C330]])
  {
    v9 = @"PHONE";
  }

  else
  {
    v9 = @"ADDRESS";
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"IN_APP_PAYMENT_OPTIONS_EDIT_ME_CARD_%@_NO_LABEL", v9];
  v11 = PKLocalizedPaymentString(v10);

  v12 = MEMORY[0x1E69DC650];
  v13 = PKLocalizedPaymentString(&cfstr_InAppPaymentOp_24.isa);
  v14 = [v12 alertControllerWithTitle:v13 message:v11 preferredStyle:1];

  v15 = MEMORY[0x1E69DC648];
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"IN_APP_PAYMENT_OPTIONS_CHANGE_%@", v9];
  v17 = PKLocalizedPaymentString(v16);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __101__PKPaymentPreferencesListViewController_presentMeCardAlertControllerWithContact_contactKey_handler___block_invoke;
  v23[3] = &unk_1E8011248;
  v24 = v8;
  v18 = v8;
  v19 = [v15 actionWithTitle:v17 style:2 handler:v23];
  [v14 addAction:v19];

  v20 = MEMORY[0x1E69DC648];
  v21 = PKLocalizedString(&cfstr_Cancel.isa);
  v22 = [v20 actionWithTitle:v21 style:1 handler:0];
  [v14 addAction:v22];

  [(PKPaymentPreferencesListViewController *)self presentViewController:v14 animated:1 completion:0];
}

- (void)startInlineEditingForContactItem:(id)a3 inSectionController:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([(PKPaymentPreferencesListViewController *)self isEditing]& 1) == 0)
  {
    [(PKPaymentPreferencesListViewController *)self setEditing:1 animated:1];
  }

  [(PKPaymentPreferencesListViewController *)self _endCurrentInlineEditing];
  if (v6)
  {
    v8 = [(PKPaymentPreferenceContactSectionController *)v7 contactItems];
    v9 = [v8 indexOfObject:v6];
  }

  else
  {
    v6 = [(PKPaymentPreferenceSectionController *)v7 appendNewItemForEditing];
    v10 = [(PKPaymentPreferenceSectionController *)v7 preference];
    v11 = [v10 preferences];
    v12 = [v11 lastObject];
    v13 = [v12 isHideMyEmail];

    if (v13)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    v8 = [(PKPaymentPreferenceSectionController *)v7 preference];
    v15 = [v8 preferences];
    if ([v15 count] == v14)
    {
      v9 = 0;
    }

    else
    {
      v16 = [(PKPaymentPreferenceSectionController *)v7 preference];
      v17 = [v16 preferences];
      v9 = [v17 count] - v14;
    }
  }

  v18 = [(PKDynamicCollectionViewController *)self sections];
  v19 = [v18 indexOfObject:v7];

  v25 = [MEMORY[0x1E696AC88] indexPathForItem:v9 inSection:v19];
  v20 = [(PKDynamicCollectionViewController *)self collectionView];
  v21 = [v20 cellForItemAtIndexPath:v25];

  [v21 beginEditing];
  editingItem = self->_editingItem;
  self->_editingItem = v6;
  v23 = v6;

  editingContactSectionController = self->_editingContactSectionController;
  self->_editingContactSectionController = v7;
}

- (void)_reloadEditedSection:(id)a3
{
  v6 = a3;
  [(PKPaymentPreferencesListViewController *)self _updateNavigationBarButtons];
  handler = self->_handler;
  if (handler)
  {
    handler[2](handler, self, self->_preferences);
  }

  v5 = [v6 sectionIdentifier];
  [(PKDynamicCollectionViewController *)self reloadDataForSectionIdentifier:v5 animated:1];
}

- (id)_requiredKeysForContactPreference:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [v3 contactKey];
  v6 = [v5 isEqualToString:*MEMORY[0x1E695C360]];

  if (v6)
  {
    v7 = *MEMORY[0x1E695CC30];
    v11[0] = *MEMORY[0x1E69BB7C0];
    v11[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    [v4 addObjectsFromArray:v8];

    if ([v3 showPhoneticName])
    {
      [v4 addObject:*MEMORY[0x1E69BB7D0]];
    }
  }

  v9 = [v4 copy];

  return v9;
}

- (void)_handleSelectedContact:(id)a3 controller:(id)a4
{
  v6 = a4;
  editingContactSectionController = self->_editingContactSectionController;
  editingItem = self->_editingItem;
  v9 = *MEMORY[0x1E695C360];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__PKPaymentPreferencesListViewController__handleSelectedContact_controller___block_invoke;
  v11[3] = &unk_1E8026DF0;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [(PKPaymentPreferenceContactSectionController *)editingContactSectionController saveContact:a3 forItem:editingItem withContactKey:v9 completion:v11];
}

void __76__PKPaymentPreferencesListViewController__handleSelectedContact_controller___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _reloadEditedSection:*(*(a1 + 32) + 1088)];
  v2 = [*(a1 + 40) presentingViewController];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __76__PKPaymentPreferencesListViewController__handleSelectedContact_controller___block_invoke_2;
  v3[3] = &unk_1E8010970;
  v3[4] = *(a1 + 32);
  [v2 dismissViewControllerAnimated:1 completion:v3];
}

void __76__PKPaymentPreferencesListViewController__handleSelectedContact_controller___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1088);
  *(v2 + 1088) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 1096);
  *(v4 + 1096) = 0;
}

- (void)_endCurrentInlineEditing
{
  if (self->_editingItem && self->_editingContactSectionController)
  {
    v3 = [(PKDynamicCollectionViewController *)self sections];
    v4 = [v3 indexOfObject:self->_editingContactSectionController];

    v5 = [(PKPaymentPreferenceSectionController *)self->_editingContactSectionController items];
    v6 = [v5 indexOfObject:self->_editingItem];

    v9 = [MEMORY[0x1E696AC88] indexPathForItem:v6 inSection:v4];
    v7 = [(PKDynamicCollectionViewController *)self collectionView];
    v8 = [v7 cellForItemAtIndexPath:v9];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PKPaymentPreferencesListViewController *)self _updateContactAtIndex:v6 withCell:v8];
    }
  }
}

- (void)_updateContactAtIndex:(unint64_t)a3 withCell:(id)a4
{
  v45[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [v6 textFieldText];
  [v6 endEditing];
  v8 = [(PKPaymentPreferenceOptionListItem *)self->_editingItem preference];
  if (v7 && [v7 length])
  {
    v9 = [(PKPaymentPreferenceContactSectionController *)self->_editingContactSectionController contactPreference];
    v29 = [v9 contactKey];
    v10 = [v8 mutableCopy];
    if ([v29 isEqualToString:*MEMORY[0x1E695C208]])
    {
      v11 = [v8 emailAddresses];
      v12 = [v11 firstObject];

      v13 = [objc_alloc(MEMORY[0x1E699B240]) initWithString:v7];
      v14 = v13;
      if (v13)
      {
        v15 = [v13 stringValue];

        v7 = v15;
      }

      v7 = v7;

      v28 = v7;
    }

    else if ([v29 isEqualToString:*MEMORY[0x1E695C330]])
    {
      v16 = [v8 phoneNumbers];
      v12 = [v16 firstObject];

      v28 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v7];
    }

    else
    {
      v12 = 0;
      v28 = 0;
    }

    v17 = MEMORY[0x1E695CEE0];
    v18 = [v12 label];
    v27 = [v17 labeledValueWithLabel:v18 value:v28];

    v45[0] = v27;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
    [v10 setValue:v19 forKey:v29];

    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy__73;
    v43 = __Block_byref_object_dispose__73;
    v44 = 0;
    v20 = [v9 preferences];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __73__PKPaymentPreferencesListViewController__updateContactAtIndex_withCell___block_invoke;
    v35[3] = &unk_1E8026E18;
    v21 = v10;
    v37 = &v39;
    v38 = a3;
    v36 = v21;
    [v20 enumerateObjectsUsingBlock:v35];

    if (v40[5])
    {
      [(PKPaymentPreferencesListViewController *)self _resetEditingContact:v8 withCell:v6 forRow:a3];
      v22 = [v9 indexOfContact:v40[5]];
      v23 = [v9 selectedIndex];
      if (v22 != 0x7FFFFFFFFFFFFFFFLL && v23 != v22)
      {
        [(PKPaymentPreferenceSectionController *)self->_editingContactSectionController setSelectedIndex:v22];
        [(PKPaymentPreferencesListViewController *)self _reloadEditedSection:self->_editingContactSectionController];
      }
    }

    else
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __73__PKPaymentPreferencesListViewController__updateContactAtIndex_withCell___block_invoke_2;
      aBlock[3] = &unk_1E8017530;
      aBlock[4] = self;
      v31 = v21;
      v24 = v29;
      v32 = v24;
      v33 = v9;
      v34 = a3;
      v25 = _Block_copy(aBlock);
      if ([v8 contactSource] == 1)
      {
        v26 = [v25 copy];
        [(PKPaymentPreferencesListViewController *)self presentMeCardAlertControllerWithContact:v8 contactKey:v24 handler:v26];
      }

      else
      {
        v25[2](v25);
      }
    }

    _Block_object_dispose(&v39, 8);
  }

  else
  {
    [(PKPaymentPreferencesListViewController *)self _resetEditingContact:v8 withCell:v6 forRow:a3];
  }
}

void __73__PKPaymentPreferencesListViewController__updateContactAtIndex_withCell___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ([*(a1 + 32) isEqualIgnoringIdentifiers:?] && *(a1 + 48) != a3)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __73__PKPaymentPreferencesListViewController__updateContactAtIndex_withCell___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v2 + 1088);
  v5 = *(v2 + 1096);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__PKPaymentPreferencesListViewController__updateContactAtIndex_withCell___block_invoke_3;
  v10[3] = &unk_1E8026E40;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 32);
  v11 = v7;
  v12 = v9;
  v13 = v8;
  [v4 saveContact:v3 forItem:v5 withContactKey:v6 completion:v10];
}

uint64_t __73__PKPaymentPreferencesListViewController__updateContactAtIndex_withCell___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) selectedIndex];
  v3 = [*(a1 + 32) preferences];
  v4 = [v3 count];

  if (v2 == 0x7FFFFFFFFFFFFFFFLL || v2 >= v4)
  {
    if (*(a1 + 48) < v4)
    {
      [*(*(a1 + 40) + 1088) setSelectedIndex:?];
    }
  }

  else
  {
    v6 = [*(a1 + 32) preferences];
    v7 = [v6 objectAtIndex:v2];

    v8 = [*(a1 + 32) errorsForPreference:v7];
    v9 = [v8 count];

    if (v9 && *(a1 + 48) < v4)
    {
      [*(*(a1 + 40) + 1088) setSelectedIndex:?];
    }
  }

  v10 = *(a1 + 40);
  v11 = v10[136];

  return [v10 _reloadEditedSection:v11];
}

- (void)_resetEditingContact:(id)a3 withCell:(id)a4 forRow:(unint64_t)a5
{
  v8 = a4;
  if ([a3 contactSource] == 1)
  {
    [v8 resetTextFieldTextFromLabel];
  }

  else
  {
    [(PKPaymentPreferenceContactSectionController *)self->_editingContactSectionController deleteItem:self->_editingItem forRow:a5];
    [(PKPaymentPreferencesListViewController *)self _reloadEditedSection:self->_editingContactSectionController];
  }
}

- (void)addressEditorViewController:(id)a3 selectedContact:(id)a4
{
  v6 = a3;
  editingContactSectionController = self->_editingContactSectionController;
  editingItem = self->_editingItem;
  v9 = *MEMORY[0x1E695C360];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__PKPaymentPreferencesListViewController_addressEditorViewController_selectedContact___block_invoke;
  v11[3] = &unk_1E8026DF0;
  v12 = v6;
  v13 = self;
  v10 = v6;
  [(PKPaymentPreferenceContactSectionController *)editingContactSectionController saveContact:a4 forItem:editingItem withContactKey:v9 completion:v11];
}

void __86__PKPaymentPreferencesListViewController_addressEditorViewController_selectedContact___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) presentingViewController];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __86__PKPaymentPreferencesListViewController_addressEditorViewController_selectedContact___block_invoke_2;
  v6[3] = &unk_1E8010A10;
  v6[4] = *(a1 + 40);
  v7 = v3;
  v5 = v3;
  [v4 dismissViewControllerAnimated:1 completion:v6];
}

void __86__PKPaymentPreferencesListViewController_addressEditorViewController_selectedContact___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1088) handler];

  if (v2)
  {
    v3 = [*(*(a1 + 32) + 1088) handler];
    (*(v3 + 2))(v3, *(*(a1 + 32) + 1088), *(a1 + 40));
  }
}

- (void)addressEditorViewControllerDidCancel:(id)a3
{
  v3 = [a3 presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)addressSearcherViewController:(id)a3 selectedContact:(id)a4
{
  [(PKPaymentPreferencesListViewController *)self _handleSelectedContact:a4 controller:a3];

  JUMPOUT(0x1BFB41980);
}

- (void)addressSearcherViewControllerDidCancel:(id)a3
{
  v3 = [a3 presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  [(PKPaymentPreferencesListViewController *)self _handleSelectedContact:a4 controller:a3];

  JUMPOUT(0x1BFB41980);
}

- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695CEE0];
  v7 = a4;
  v8 = a3;
  v9 = [v7 label];
  v10 = [v7 value];
  v11 = [v6 labeledValueWithLabel:v9 value:v10];

  v12 = objc_alloc_init(MEMORY[0x1E695CF18]);
  v15[0] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v14 = [v7 key];

  [v12 setValue:v13 forKey:v14];
  [(PKPaymentPreferencesListViewController *)self _handleSelectedContact:v12 controller:v8];
}

@end