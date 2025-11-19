@interface VSCredentialEntryViewController_iOS
- (CGSize)preferredLogoSize;
- (VSAuthenticationViewControllerDelegate)delegate;
- (VSCredentialEntryViewController_iOS)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_createSpecifierForField:(id)a3;
- (id)_credentialEntryFieldForSpecifier:(id)a3;
- (id)_linkURL;
- (id)_specifierForTextField:(id)a3;
- (id)_textFieldForSpecifier:(id)a3;
- (id)_textForSpecifier:(id)a3;
- (id)pickerTitle;
- (id)pickerViewCell:(id)a3 titleForRow:(int64_t)a4;
- (id)textFieldTextDidChangeObserver;
- (int64_t)pickerViewCellInitialSelectedRow:(id)a3;
- (int64_t)pickerViewCellNumberOfRows:(id)a3;
- (void)_jsButtonTapped:(id)a3;
- (void)_linkButtonTapped:(id)a3;
- (void)_presentError:(id)a3;
- (void)_setText:(id)a3 forSpecifier:(id)a4;
- (void)_startObservingViewModel:(id)a3;
- (void)_startValidation;
- (void)_stopObservingViewModel:(id)a3;
- (void)buildButtonsIfNeeded;
- (void)cancelButtonTapped:(id)a3;
- (void)dealloc;
- (void)doneButtonPressed:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pickerButtonSelected;
- (void)pickerViewCell:(id)a3 didSelectRow:(int64_t)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)setViewModel:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation VSCredentialEntryViewController_iOS

- (VSCredentialEntryViewController_iOS)initWithNibName:(id)a3 bundle:(id)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = VSCredentialEntryViewController_iOS;
  v8 = [(VSCredentialEntryViewController_iOS *)&v23 initWithNibName:v6 bundle:v7];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CE2348]);
    [v9 setObject:v8];
    [(VSCredentialEntryViewController_iOS *)v8 setWeakTarget:v9];
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    v11 = [MEMORY[0x277CCABD8] mainQueue];
    objc_initWeak(&location, v8);
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __62__VSCredentialEntryViewController_iOS_initWithNibName_bundle___block_invoke;
    v20 = &unk_279E1A638;
    objc_copyWeak(&v21, &location);
    v12 = [v10 addObserverForName:*MEMORY[0x277D770B0] object:0 queue:v11 usingBlock:&v17];
    objc_storeWeak(&v8->_textFieldTextDidChangeObserver, v12);

    v24[0] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:{1, v17, v18, v19, v20}];
    v14 = [(VSCredentialEntryViewController_iOS *)v8 registerForTraitChanges:v13 withHandler:&__block_literal_global_18];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)dealloc
{
  [(VSCredentialEntryViewController_iOS *)self _stopObservingViewModel:self->_viewModel];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  WeakRetained = objc_loadWeakRetained(&self->_textFieldTextDidChangeObserver);
  if (WeakRetained)
  {
    [v3 removeObserver:WeakRetained];
  }

  v5.receiver = self;
  v5.super_class = VSCredentialEntryViewController_iOS;
  [(ACUIViewController *)&v5 dealloc];
}

- (void)_presentError:(id)a3
{
  v4 = a3;
  v5 = VSErrorLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(VSCredentialEntryViewController_iOS *)v4 _presentError:v5];
  }

  v6 = VSAlertForError(v4, 0);
  [(VSCredentialEntryViewController_iOS *)self presentViewController:v6 animated:1 completion:0];
}

- (id)_specifierForTextField:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(ACUIViewController *)self specifiers];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(VSCredentialEntryViewController_iOS *)self _textFieldForSpecifier:v10];
        v12 = v11;
        if (v11 == v4)
        {
          v13 = v10;

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_textFieldForSpecifier:(id)a3
{
  v4 = [(VSCredentialEntryViewController_iOS *)self indexPathForSpecifier:a3];
  v5 = [(VSCredentialEntryViewController_iOS *)self table];
  v6 = [v5 cellForRowAtIndexPath:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!v6)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The cellOrNil parameter must not be nil."];
    }

    v7 = v6;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = MEMORY[0x277CBEAD8];
      v9 = *MEMORY[0x277CBE660];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      [v8 raise:v9 format:{@"Unexpectedly, cell was %@, instead of PSEditableTableCell.", v11}];
    }

    v12 = [v7 textField];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_credentialEntryFieldForSpecifier:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [(VSCredentialEntryViewController_iOS *)self viewModel];
  v6 = [v5 credentialEntryFields];

  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 identifier];
        v14 = [v4 identifier];
        v15 = [v13 isEqualToString:v14];

        if (v15)
        {
          v16 = v12;

          v9 = v16;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_textForSpecifier:(id)a3
{
  v3 = [(VSCredentialEntryViewController_iOS *)self _credentialEntryFieldForSpecifier:a3];
  v4 = [v3 text];

  return v4;
}

- (void)_setText:(id)a3 forSpecifier:(id)a4
{
  v6 = a3;
  v7 = &stru_2880B8BB0;
  if (v6)
  {
    v7 = v6;
  }

  v10 = v7;
  v8 = [(VSCredentialEntryViewController_iOS *)self _credentialEntryFieldForSpecifier:a4];
  [v8 setText:v10];

  v9 = [(VSCredentialEntryViewController_iOS *)self viewModel];
  [v9 validateCredentialEntryFields];
}

- (id)_linkURL
{
  v2 = [(VSCredentialEntryViewController_iOS *)self viewModel];
  v3 = [v2 linkURL];

  return v3;
}

- (void)_linkButtonTapped:(id)a3
{
  v3 = [(VSCredentialEntryViewController_iOS *)self _linkURL];
  if (v3)
  {
    v4 = v3;
    VSOpenURL();
    v3 = v4;
  }
}

- (void)_jsButtonTapped:(id)a3
{
  v4 = a3;
  v5 = [(VSCredentialEntryViewController_iOS *)self buttons];
  v6 = [v5 indexOfObject:v4];

  v7 = [(VSCredentialEntryViewController_iOS *)self viewModel];
  [v7 buttonTappedAtIndex:v6];
}

- (void)_startValidation
{
  v3 = [(VSCredentialEntryViewController_iOS *)self table];
  v2 = [v3 firstResponder];
  [v2 resignFirstResponder];
}

- (void)_startObservingViewModel:(id)a3
{
  v4 = kVSKeyValueObservingContext_DoneButton;
  v5 = a3;
  [v5 addObserver:self forKeyPath:@"beginValidationButtonEnabled" options:4 context:v4];
  [v5 addObserver:self forKeyPath:@"logo" options:4 context:kVSKeyValueObservingContext_Image];
  [v5 addObserver:self forKeyPath:@"validationState" options:3 context:kVSKeyValueObservingContext_ValidationState_0];
  v6 = [v5 picker];

  [v6 addObserver:self forKeyPath:@"selectedIndex" options:4 context:kVSKeyValueObservingContext_PickerSelectedItemIndex];
}

- (void)_stopObservingViewModel:(id)a3
{
  v4 = kVSKeyValueObservingContext_DoneButton;
  v5 = a3;
  [v5 removeObserver:self forKeyPath:@"beginValidationButtonEnabled" context:v4];
  [v5 removeObserver:self forKeyPath:@"logo" context:kVSKeyValueObservingContext_Image];
  [v5 removeObserver:self forKeyPath:@"validationState" context:kVSKeyValueObservingContext_ValidationState_0];
  v6 = [v5 picker];

  [v6 removeObserver:self forKeyPath:@"selectedIndex" context:kVSKeyValueObservingContext_PickerSelectedItemIndex];
}

- (id)_createSpecifierForField:(id)a3
{
  v4 = a3;
  if ([v4 isSecure])
  {
    v5 = 12;
  }

  else
  {
    v5 = 8;
  }

  v6 = MEMORY[0x277D3FB40];
  v7 = [v4 title];
  v8 = [(VSCredentialEntryViewController_iOS *)self weakTarget];
  v9 = [v6 preferenceSpecifierNamed:v7 target:v8 set:sel__setText_forSpecifier_ get:sel__textForSpecifier_ detail:0 cell:v5 edit:0];

  if ([v4 isSecure])
  {
    v10 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v9 setProperty:v10 forKey:*MEMORY[0x277D40080]];
  }

  [v9 setKeyboardType:objc_msgSend(v4 autoCaps:"keyboardType") autoCorrection:{objc_msgSend(v4, "autocapitalizationType"), objc_msgSend(v4, "autocorrectionType")}];
  v11 = [v4 placeholder];
  [v9 setPlaceholder:v11];

  return v9;
}

- (void)setViewModel:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_viewModel != v5)
  {
    [(VSCredentialEntryViewController_iOS *)self _stopObservingViewModel:?];
    objc_storeStrong(&self->_viewModel, a3);
    v6 = [(VSViewModel *)v5 title];
    [(VSCredentialEntryViewController_iOS *)self setTitle:v6];

    v7 = objc_alloc(MEMORY[0x277D751E0]);
    v8 = [(VSCuratedViewModel *)v5 beginValidationButtonTitle];
    v9 = [v7 initWithTitle:v8 style:0 target:self action:sel_doneButtonPressed_];

    [v9 setEnabled:0];
    [(ACUIViewController *)self setDoneButton:v9];
    v10 = [MEMORY[0x277CBEB18] array];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v11 = [(VSCredentialEntryViewModel *)v5 credentialEntryFields];
    v12 = [v11 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v39;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v39 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v38 + 1) + 8 * i);
          v17 = [(VSCredentialEntryViewController_iOS *)self _createSpecifierForField:v16];
          v18 = [v16 identifier];
          [v17 setIdentifier:v18];

          [v10 addObject:v17];
        }

        v13 = [v11 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v13);
    }

    v19 = [(VSCredentialEntryViewModel *)v5 picker];

    if (v19)
    {
      v20 = [(VSCredentialEntryViewModel *)v5 picker];

      if (!v20)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [viewModel picker] parameter must not be nil."];
      }

      v21 = [(VSCredentialEntryViewModel *)v5 picker];
      [(VSCredentialEntryViewController_iOS *)self setPicker:v21];
      v22 = MEMORY[0x277D3FAD8];
      v23 = [(VSCredentialEntryViewController_iOS *)self pickerTitle];
      v24 = [v22 preferenceSpecifierNamed:v23 target:self set:0 get:0 detail:0 cell:13 edit:0];

      [v24 setButtonAction:sel_pickerButtonSelected];
      [(VSCredentialEntryViewController_iOS *)self setPickerButtonSpecifier:v24];
      [v10 addObject:v24];
    }

    if ([(VSCuratedViewModel *)v5 showFooter])
    {
      v25 = [(VSCuratedViewModel *)v5 message];
      v26 = [(VSCredentialEntryViewModel *)v5 additionalMessage];
      v27 = v26;
      if (v25 && [v26 length])
      {
        v28 = v25;
        if (!v27)
        {
          [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The additionalMessageOrNil parameter must not be nil."];
        }

        v42[0] = v28;
        v42[1] = v27;
        v29 = MEMORY[0x277CBEA60];
        v30 = v27;
        v31 = [v29 arrayWithObjects:v42 count:2];

        v25 = [v31 componentsJoinedByString:@"\n\n"];
      }

      v32 = [(VSCuratedViewModel *)v5 notice];
      v33 = [(VSCuratedViewModel *)v5 footerText];
      v34 = VSSpecifierForFooter(v25, v32, v33);
      [v10 addObject:v34];
    }

    [(VSCredentialEntryViewController_iOS *)self setSpecifiers:v10];
    v35 = [(VSCredentialEntryViewController_iOS *)self logoView];
    v36 = [(VSCuratedViewModel *)v5 logoAccessibilityLabel];
    [v35 setAccessibilityLabel:v36];

    [(VSCredentialEntryViewController_iOS *)self _startObservingViewModel:v5];
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)buildButtonsIfNeeded
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = [(VSCredentialEntryViewController_iOS *)self viewModel];
  if (v3)
  {
    v4 = [(VSCredentialEntryViewController_iOS *)self buttonView];
    [v4 removeAllButtons];

    v35 = v3;
    v5 = v3;
    [(VSCredentialEntryViewController_iOS *)self setButtons:MEMORY[0x277CBEBF8]];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = v5;
    v6 = [v5 buttons];
    v7 = [v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v37;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v37 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v36 + 1) + 8 * i);
          v12 = objc_alloc_init(VSMultilineButton);
          v13 = [MEMORY[0x277D75348] whiteColor];
          [(VSMultilineButton *)v12 setTitleColor:v13 forState:1];

          v14 = [v11 title];
          [(VSMultilineButton *)v12 setTitle:v14 forState:0];

          v15 = [(VSMultilineButton *)v12 titleLabel];
          [v15 setTextAlignment:1];

          v16 = [(VSMultilineButton *)v12 titleLabel];
          [v16 setNumberOfLines:0];

          v17 = [(VSMultilineButton *)v12 titleLabel];
          [v17 setLineBreakMode:0];

          [(VSMultilineButton *)v12 addTarget:self action:sel__jsButtonTapped_ forControlEvents:64];
          v18 = [(VSCredentialEntryViewController_iOS *)self buttonView];
          [v18 addButton:v12];

          v19 = [(VSCredentialEntryViewController_iOS *)self buttons];
          v20 = [v19 mutableCopy];
          v21 = v20;
          if (v20)
          {
            v22 = v20;
          }

          else
          {
            v22 = [MEMORY[0x277CBEB18] array];
          }

          v23 = v22;

          [v23 addObject:v12];
          v24 = [v23 copy];
          [(VSCredentialEntryViewController_iOS *)self setButtons:v24];
        }

        v8 = [v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v8);
    }

    v25 = [v34 linkURL];

    if (v25)
    {
      v26 = objc_alloc_init(VSMultilineButton);
      v27 = [MEMORY[0x277D75348] whiteColor];
      [(VSMultilineButton *)v26 setTitleColor:v27 forState:1];

      v28 = [v34 linkTitle];
      [(VSMultilineButton *)v26 setTitle:v28 forState:0];

      v29 = [(VSMultilineButton *)v26 titleLabel];
      [v29 setNumberOfLines:0];

      v30 = [(VSMultilineButton *)v26 titleLabel];
      [v30 setLineBreakMode:0];

      v31 = [(VSMultilineButton *)v26 titleLabel];
      [v31 setTextAlignment:1];

      [(VSMultilineButton *)v26 addTarget:self action:sel__linkButtonTapped_ forControlEvents:64];
      [(VSCredentialEntryViewController_iOS *)self setLinkButton:v26];
      v32 = [(VSCredentialEntryViewController_iOS *)self buttonView];
      [v32 addButton:v26];
    }

    v3 = v35;
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)pickerButtonSelected
{
  v3 = [(VSCredentialEntryViewController_iOS *)self pickerSpecifier];

  if (v3)
  {
    v4 = [(ACUIViewController *)self specifiers];
    v12 = [v4 mutableCopy];

    v5 = [(VSCredentialEntryViewController_iOS *)self pickerSpecifier];

    if (!v5)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self pickerSpecifier] parameter must not be nil."];
    }

    v6 = [(VSCredentialEntryViewController_iOS *)self pickerSpecifier];
    [v12 removeObject:v6];

    [(VSCredentialEntryViewController_iOS *)self setPickerSpecifier:0];
    [(VSCredentialEntryViewController_iOS *)self setSpecifiers:v12];
  }

  else
  {
    v12 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_2880B8BB0 target:self set:0 get:0 detail:0 cell:3 edit:0];
    [v12 setIdentifier:@"TIME_PICKER"];
    v7 = MEMORY[0x277CCABB0];
    +[VSPSPickerTableViewCell preferredHeight];
    v8 = [v7 numberWithDouble:?];
    [v12 setProperty:v8 forKey:*MEMORY[0x277D40140]];

    [v12 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    [(VSCredentialEntryViewController_iOS *)self setPickerSpecifier:v12];
    v9 = [(ACUIViewController *)self specifiers];
    v10 = [v9 mutableCopy];

    v11 = [(VSCredentialEntryViewController_iOS *)self pickerButtonSpecifier];
    [v10 ps_insertObject:v12 afterObject:v11];

    [(VSCredentialEntryViewController_iOS *)self setSpecifiers:v10];
  }
}

- (id)pickerTitle
{
  v3 = [(VSCredentialEntryViewController_iOS *)self picker];

  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self picker] parameter must not be nil."];
  }

  v4 = [(VSCredentialEntryViewController_iOS *)self picker];
  v5 = [v4 title];
  v6 = MEMORY[0x277CCACA8];
  v7 = [(VSCredentialEntryViewController_iOS *)self picker];
  v8 = [v7 pickerItemAtCurrentIndex];
  v9 = [v8 itemName];
  v10 = [v6 stringWithFormat:@"%@ %@", v5, v9];

  return v10;
}

- (id)pickerViewCell:(id)a3 titleForRow:(int64_t)a4
{
  v6 = [(VSCredentialEntryViewController_iOS *)self picker];

  if (!v6)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self picker] parameter must not be nil."];
  }

  v7 = [(VSCredentialEntryViewController_iOS *)self picker];
  v8 = [v7 pickerItems];
  v9 = [v8 objectAtIndex:a4];
  v10 = [v9 itemName];

  return v10;
}

- (int64_t)pickerViewCellInitialSelectedRow:(id)a3
{
  v3 = [(VSCredentialEntryViewController_iOS *)self picker];
  v4 = [v3 selectedIndex];

  return v4;
}

- (int64_t)pickerViewCellNumberOfRows:(id)a3
{
  v3 = [(VSCredentialEntryViewController_iOS *)self picker];
  v4 = [v3 pickerItems];
  v5 = [v4 count];

  return v5;
}

- (void)pickerViewCell:(id)a3 didSelectRow:(int64_t)a4
{
  v6 = [(VSCredentialEntryViewController_iOS *)self picker];
  [v6 setSelectedIndex:a4];

  v7 = [(VSCredentialEntryViewController_iOS *)self viewModel];
  [v7 pickerDidSelectRow:a4];

  v8 = [(VSCredentialEntryViewController_iOS *)self pickerButtonSpecifier];
  v9 = [(VSCredentialEntryViewController_iOS *)self pickerTitle];
  [v8 setName:v9];

  v10 = [(VSCredentialEntryViewController_iOS *)self pickerButtonSpecifier];
  [(VSCredentialEntryViewController_iOS *)self reloadSpecifier:v10];
}

- (CGSize)preferredLogoSize
{
  v2 = [(VSCredentialEntryViewController_iOS *)self logoView];
  [v2 preferredImageSize];
  v4 = v3;
  v6 = v5;

  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 scale];
  v9 = v8;

  v10 = v6 * v9;
  v11 = v4 * v9;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v39 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (kVSKeyValueObservingContext_DoneButton == a6)
  {
    v14 = [(ACUIViewController *)self doneButton];
    v15 = [(VSCredentialEntryViewController_iOS *)self viewModel];
    [v14 setEnabled:{objc_msgSend(v15, "isBeginValidationButtonEnabled")}];

LABEL_14:
    goto LABEL_15;
  }

  if (kVSKeyValueObservingContext_Image == a6)
  {
    if (!v11)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The objectOrNil parameter must not be nil."];
    }

    v16 = v11;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = MEMORY[0x277CBEAD8];
      v18 = *MEMORY[0x277CBE660];
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      [v17 raise:v18 format:{@"Unexpectedly, object was %@, instead of VSCredentialEntryViewModel.", v20}];
    }

    v14 = v16;
    if (!v10)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The keyPathOrNil parameter must not be nil."];
    }

    v21 = [v14 valueForKeyPath:v10];
    v22 = [(VSCredentialEntryViewController_iOS *)self logoView];
    [v22 setLogo:v21];

    goto LABEL_14;
  }

  if (kVSKeyValueObservingContext_ValidationState_0 == a6)
  {
    v24 = [v12 objectForKey:*MEMORY[0x277CCA300]];
    v25 = [v24 unsignedIntegerValue];

    v26 = [v13 objectForKey:*MEMORY[0x277CCA2F0]];
    v27 = [v26 unsignedIntegerValue];

    v28 = VSDefaultLogObject();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v36 = v25;
      v37 = 2048;
      v38 = v27;
      _os_log_impl(&dword_270DD4000, v28, OS_LOG_TYPE_DEFAULT, "credential entry controller validation state changed from %lu to %lu", buf, 0x16u);
    }

    if (v27 != 3)
    {
      if (v27 == 2)
      {
        if (v25)
        {
          goto LABEL_15;
        }
      }

      else if (v27 != 1)
      {
        goto LABEL_15;
      }

      [(VSCredentialEntryViewController_iOS *)self _startValidation];
      goto LABEL_15;
    }

    if (v25 == 2)
    {
      [(ACUIViewController *)self setCellsChecked:1];
    }
  }

  else if (kVSKeyValueObservingContext_PickerSelectedItemIndex == a6)
  {
    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __86__VSCredentialEntryViewController_iOS_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v33 = &unk_279E19290;
    v34 = self;
    VSPerformBlockOnMainThread();
  }

  else
  {
    v29.receiver = self;
    v29.super_class = VSCredentialEntryViewController_iOS;
    [(VSCredentialEntryViewController_iOS *)&v29 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }

LABEL_15:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)cancelButtonTapped:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [(VSCredentialEntryViewController_iOS *)self viewModel];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 credentialEntryFields];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v12 + 1) + 8 * v9++) setText:&stru_2880B8BB0];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = [(VSCredentialEntryViewController_iOS *)self delegate];
  [v10 authenticationViewControllerDidCancel:self];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)doneButtonPressed:(id)a3
{
  v3 = [(VSCredentialEntryViewController_iOS *)self viewModel];
  [v3 setValidationState:1];
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = VSCredentialEntryViewController_iOS;
  [(ACUIViewController *)&v15 viewDidLoad];
  v3 = [(VSCredentialEntryViewController_iOS *)self table];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(VSCredentialEntryViewController_iOS *)self table];
    [v4 setViewController:self];
  }

  [v3 setPreservesSuperviewLayoutMargins:1];
  v5 = [VSIdentityProviderLogoView alloc];
  v6 = [v3 tableHeaderView];
  [v6 frame];
  v7 = [(VSIdentityProviderLogoView *)v5 initWithFrame:?];

  v8 = [(VSCredentialEntryViewController_iOS *)self viewModel];
  v9 = [v8 logo];
  [(VSIdentityProviderLogoView *)v7 setLogo:v9];

  v10 = [(VSCredentialEntryViewController_iOS *)self viewModel];
  v11 = [v10 logoAccessibilityLabel];
  [(VSIdentityProviderLogoView *)v7 setAccessibilityLabel:v11];

  [(VSCredentialEntryViewController_iOS *)self setLogoView:v7];
  [(VSIdentityProviderLogoView *)v7 sizeToFit];
  [v3 setTableHeaderView:v7];
  v12 = [VSIdentityProviderButtonView alloc];
  v13 = [v3 tableFooterView];
  [v13 frame];
  v14 = [(VSIdentityProviderButtonView *)v12 initWithFrame:?];

  [(VSCredentialEntryViewController_iOS *)self setButtonView:v14];
  [(VSCredentialEntryViewController_iOS *)self buildButtonsIfNeeded];
  [(VSIdentityProviderButtonView *)v14 sizeToFit];
  [v3 setTableFooterView:v14];
  VSAuthenticationViewControllerViewDidLoad(self);
}

- (void)viewDidLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = VSCredentialEntryViewController_iOS;
  [(VSCredentialEntryViewController_iOS *)&v2 viewDidLayoutSubviews];
}

- (void)scrollViewDidScroll:(id)a3
{
  v5 = a3;
  if ([MEMORY[0x277CE85A0] instancesRespondToSelector:a2])
  {
    v6.receiver = self;
    v6.super_class = VSCredentialEntryViewController_iOS;
    [(VSCredentialEntryViewController_iOS *)&v6 scrollViewDidScroll:v5];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  width = a3.width;
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(VSCredentialEntryViewController_iOS *)self buttonView:a4];
  v6 = [v5 subviews];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        [v11 frame];
        v13 = width - v12;
        [v11 setFrame:floorf(v13 * 0.5)];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (VSAuthenticationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)textFieldTextDidChangeObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_textFieldTextDidChangeObserver);

  return WeakRetained;
}

- (void)_presentError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_270DD4000, a2, OS_LOG_TYPE_ERROR, "Will present error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end