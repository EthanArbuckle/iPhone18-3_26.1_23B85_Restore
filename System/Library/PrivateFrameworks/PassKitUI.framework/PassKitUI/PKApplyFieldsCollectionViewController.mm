@interface PKApplyFieldsCollectionViewController
- (BOOL)_determineNextEnablementWithPage:(id)a3;
- (id)_recomputeSections;
- (void)_terminateFlow;
- (void)_updatePrimaryButton;
- (void)handleNextStep;
- (void)primaryButtonTapped;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
- (void)recomputeSectionsWithReload:(BOOL)a3;
- (void)reloadDataAnimated:(BOOL)a3;
- (void)showButtonSpinner:(BOOL)a3;
- (void)submitFields;
- (void)verifyAndSubmitFields;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PKApplyFieldsCollectionViewController

- (void)viewDidLoad
{
  v27.receiver = self;
  v27.super_class = PKApplyFieldsCollectionViewController;
  [(PKApplyCollectionViewController *)&v27 viewDidLoad];
  v3 = [(PKApplyCollectionViewController *)self currentPage];
  v4 = [(PKDynamicCollectionViewController *)self collectionView];
  [v4 setAccessibilityIdentifier:*MEMORY[0x1E69B9460]];
  v5 = [(PKApplyFieldsCollectionViewController *)self _recomputeSections];
  [(PKPaymentSetupOptionsViewController *)self setSections:v5 animated:0];

  v6 = [(PKPaymentSetupOptionsViewController *)self headerView];
  [v6 setAdditionalBottomPadding:4.0];
  [v6 setTitleAccessoriesEnabled:0];
  v7 = PKProvisioningBackgroundColor();
  [(PKPaymentSetupOptionsViewController *)self setBackgroundColor:v7];

  v8 = v3;
  v9 = [(PKApplyFieldsCollectionViewController *)self navigationItem];
  v10 = [v8 identifier];
  if (v10 != @"taxWithholding")
  {
    v11 = v10;
    if (!v10 || (v12 = [(__CFString *)v10 isEqualToString:@"taxWithholding"], v11, v11, (v12 & 1) == 0))
    {
      [v9 setLeftBarButtonItem:0];
      [v9 setHidesBackButton:0];
    }
  }

  v13 = [v8 primaryActionTitle];
  v14 = [v13 length];

  if (v14)
  {
    v15 = PKUIGetMinScreenWidthType();
    v16 = -20.0;
    if (!v15)
    {
      v16 = -10.0;
    }

    [v6 setAdditionalTopPadding:v16];
    self->_needsToReachEndOfPage = 1;
  }

  else
  {
    v17 = objc_alloc(MEMORY[0x1E69DC708]);
    v18 = PKLocalizedPaymentString(&cfstr_Submit.isa);
    v19 = [v17 initWithTitle:v18 style:2 target:self action:sel_handleNextStep];

    [v19 setAccessibilityIdentifier:*MEMORY[0x1E69B9990]];
    [v19 setEnabled:0];
    [v9 setRightBarButtonItem:v19];
  }

  v20 = [(PKApplyCollectionViewController *)self controller];
  if ([v20 applicationType] != 5)
  {
    goto LABEL_13;
  }

  v21 = [v8 secondaryActionTitle];
  v22 = [v21 length];

  if (!v22)
  {
    v23 = objc_alloc(MEMORY[0x1E69DC708]);
    v24 = [(PKApplyCollectionViewController *)self controller];
    [v24 featureIdentifier];
    v25 = PKLocalizedFeatureString();
    v20 = [v23 initWithTitle:v25 style:0 target:self action:sel__terminateFlow];

    [v20 setAccessibilityIdentifier:*MEMORY[0x1E69B9708]];
    [v9 setLeftBarButtonItem:v20];
LABEL_13:
  }

  v26 = [MEMORY[0x1E696AD88] defaultCenter];
  [v26 addObserver:self selector:sel__keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
  [v26 addObserver:self selector:sel__keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
  [(PKPaymentSetupOptionsViewController *)self setShouldCollapseHeaderOnKeyboardShow:0];
  [(PKPaymentSetupOptionsViewController *)self setShowNoResultsView:0 animated:0];
}

- (id)_recomputeSections
{
  v73 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PKApplyCollectionViewController *)self controller];
  v5 = [(PKApplyCollectionViewController *)self currentPage];
  v6 = [v5 fieldModel];
  v7 = [(PKApplyFieldsCollectionViewController *)self _determineNextEnablementWithPage:v5];
  v61 = self;
  v8 = [(PKApplyFieldsCollectionViewController *)self navigationItem];
  v9 = [v8 rightBarButtonItem];
  [v9 setEnabled:v7];

  v10 = v4;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v62 = v6;
  obj = [v6 visiblePaymentSetupFields];
  v11 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
  v57 = v5;
  if (v11)
  {
    v12 = v11;
    v13 = *v68;
    v58 = *v68;
    v55 = v4;
    v56 = v3;
    do
    {
      v14 = 0;
      v59 = v12;
      do
      {
        if (*v68 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v67 + 1) + 8 * v14);
        v16 = [v15 identifier];
        v17 = [v62 requirementsMetForFieldWithIdentifier:v16];

        if (v17)
        {
          if ([v15 fieldType] == 5)
          {
            v18 = [v15 pickerFieldObject];
            v19 = [(PKApplyRequiredFieldSectionController *)v18 pickerType];
            if (v19 != 2)
            {
              if (v19 == 1)
              {
                v20 = [[PKApplyRadioPickerSectionController alloc] initWithController:v10 applyPage:v5 picker:v18];
                [(PKApplyCollectionViewSectionController *)v20 setDynamicCollectionDelegate:v61];
                [v3 addObject:v20];
                goto LABEL_33;
              }

LABEL_35:

              goto LABEL_36;
            }

            v20 = [[PKApplyMultilevelListPickerSectionController alloc] initWithController:v10 applyPage:v5 picker:v18];
            [(PKApplyCollectionViewSectionController *)v20 setDynamicCollectionDelegate:v61];
            [v3 addObject:v20];
            v34 = [(PKApplyRequiredFieldSectionController *)v18 currentValue];
            v35 = [v34 nextLevelPicker];

            if (v35)
            {
              while (2)
              {
                if ([v35 fieldType] == 5)
                {
                  v36 = [v35 pickerType];
                  if (v36 == 1)
                  {
                    v37 = off_1E8004860;
LABEL_28:
                    v38 = [objc_alloc(*v37) initWithController:v10 applyPage:v5 picker:v35];
                    [v38 setDynamicCollectionDelegate:v61];
                  }

                  else
                  {
                    if (v36 == 2)
                    {
                      v37 = off_1E8004810;
                      goto LABEL_28;
                    }

                    v38 = 0;
                  }

                  [v3 safelyAddObject:v38];
                }

                v39 = [v35 currentValue];
                v40 = [v39 nextLevelPicker];

                v35 = v40;
                if (!v40)
                {
                  break;
                }

                continue;
              }
            }

            v13 = v58;
LABEL_33:
          }

          else
          {
            if ([v15 fieldType] == 3)
            {
              v18 = [v15 labelFieldObject];
              v21 = objc_alloc_init(MEMORY[0x1E69B85D0]);
              v22 = [(PKApplyRequiredFieldSectionController *)v18 title];
              [v21 setFooterText:v22];

              v23 = objc_alloc_init(MEMORY[0x1E695DFA8]);
              v63 = 0u;
              v64 = 0u;
              v65 = 0u;
              v66 = 0u;
              v24 = [(PKApplyRequiredFieldSectionController *)v18 links];
              v25 = [v24 countByEnumeratingWithState:&v63 objects:v71 count:16];
              if (v25)
              {
                v26 = v25;
                v27 = *v64;
                do
                {
                  for (i = 0; i != v26; ++i)
                  {
                    if (*v64 != v27)
                    {
                      objc_enumerationMutation(v24);
                    }

                    v29 = [objc_alloc(MEMORY[0x1E69B85D8]) initWithDictionary:*(*(&v63 + 1) + 8 * i)];
                    [v23 pk_safelyAddObject:v29];
                  }

                  v26 = [v24 countByEnumeratingWithState:&v63 objects:v71 count:16];
                }

                while (v26);
              }

              [v21 setLinks:v23];
              v10 = v55;
              v5 = v57;
              v30 = [[PKApplyInlineFooterSectionController alloc] initWithController:v55 applyPage:v57 content:v21 delegate:v61];
              [(PKApplyCollectionViewSectionController *)v30 setDynamicCollectionDelegate:v61];
              v3 = v56;
              [v56 addObject:v30];
            }

            else
            {
              v31 = [PKApplyRequiredFieldSectionController alloc];
              v32 = [(PKApplyCollectionViewController *)v61 controller];
              v33 = [(PKApplyCollectionViewController *)v61 page];
              v18 = [(PKApplyRequiredFieldSectionController *)v31 initWithController:v32 applyPage:v33 field:v15];

              [(PKApplyCollectionViewSectionController *)v18 setDynamicCollectionDelegate:v61];
              [v3 safelyAddObject:v18];
              v5 = v57;
            }

            v13 = v58;
          }

          v12 = v59;
          goto LABEL_35;
        }

LABEL_36:
        ++v14;
      }

      while (v14 != v12);
      v12 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
    }

    while (v12);
  }

  v41 = [v3 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v43 = [v3 firstObject];
    [v43 setIsTopmostSection:1];
  }

  if (v61->_useInlinePrimaryButton == 1)
  {
    v44 = [v57 primaryActionTitle];
    v45 = [v44 length];

    if (v45)
    {
      v46 = [(PKApplyCollectionViewSectionController *)[PKApplyPrimaryActionSectionController alloc] initWithController:v10 applyPage:v57];
      [(PKApplyCollectionViewSectionController *)v46 setDynamicCollectionDelegate:v61];
      [(PKApplyPrimaryActionSectionController *)v46 setPrimaryButtonLoading:v61->_primaryButtonLoading];
      [v3 addObject:v46];
    }
  }

  v47 = [(PKDynamicCollectionViewController *)v61 collectionView];
  [v47 contentSize];
  v49 = v48;
  [v47 frame];
  v51 = v50;
  [v47 contentInset];
  if (v49 > v51 - v52)
  {
    [v47 safeAreaInsets];
    [v47 setScrollIndicatorInsets:?];
    [v47 setShowsVerticalScrollIndicator:1];
    [v47 flashScrollIndicators];
  }

  v53 = [v3 copy];

  return v53;
}

- (BOOL)_determineNextEnablementWithPage:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [v3 fieldModel];
  v5 = [v4 visiblePaymentSetupFields];

  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v6)
  {
    v20 = 1;
    goto LABEL_27;
  }

  v7 = v6;
  v8 = *v23;
  do
  {
    v9 = 0;
    do
    {
      if (*v23 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v22 + 1) + 8 * v9);
      if ([v10 fieldType] == 5)
      {
        v11 = [v10 pickerFieldObject];
        v12 = [v11 currentValue];
        if (([v11 isOptional] & 1) == 0 && !v12)
        {
          goto LABEL_24;
        }

        v13 = [v12 nextLevelPicker];

        if (v13)
        {
          while (1)
          {
            v14 = v12;
            v12 = [v13 currentValue];

            if (([v13 isOptional] & 1) == 0 && !v12)
            {
              break;
            }

            v15 = [v12 nextLevelPicker];

            v13 = v15;
            if (!v15)
            {
              goto LABEL_16;
            }
          }

          v11 = v13;
LABEL_24:

LABEL_25:
          v20 = 0;
          goto LABEL_27;
        }

LABEL_16:

        goto LABEL_17;
      }

      if ([v10 isOptional])
      {
        goto LABEL_17;
      }

      v12 = [v10 currentValue];
      if (v12)
      {
        goto LABEL_16;
      }

      v16 = [v3 fieldModel];
      v17 = [v10 identifier];
      v18 = [v16 requirementsMetForFieldWithIdentifier:v17];

      if (v18)
      {
        goto LABEL_25;
      }

LABEL_17:
      ++v9;
    }

    while (v9 != v7);
    v19 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    v7 = v19;
    v20 = 1;
  }

  while (v19);
LABEL_27:

  return v20;
}

- (void)reloadDataAnimated:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = PKApplyFieldsCollectionViewController;
  [(PKDynamicCollectionViewController *)&v6 reloadDataAnimated:?];
  v5 = [(PKApplyFieldsCollectionViewController *)self _recomputeSections];
  [(PKPaymentSetupOptionsViewController *)self setSections:v5 animated:v3];
}

- (void)recomputeSectionsWithReload:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKApplyFieldsCollectionViewController *)self _recomputeSections];
  if (v3)
  {
    v6 = v5;
    [(PKPaymentSetupOptionsViewController *)self setSections:v5 animated:1];
    v5 = v6;
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PKApplyFieldsCollectionViewController;
  [(PKPaymentSetupOptionsViewController *)&v6 viewWillAppear:a3];
  v4 = [(PKApplyFieldsCollectionViewController *)self view];
  [v4 setNeedsLayout];

  v5 = [(PKApplyFieldsCollectionViewController *)self view];
  [v5 layoutIfNeeded];

  [(PKApplyFieldsCollectionViewController *)self _updatePrimaryButton];
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  v6 = [(PKApplyFieldsCollectionViewController *)self navigationController];
  [v6 pushViewController:v5 animated:1];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PKApplyFieldsCollectionViewController;
  [(PKApplyCollectionViewController *)&v6 viewDidAppear:a3];
  v4 = [(PKDynamicCollectionViewController *)self collectionView];
  v5 = v4;
  if (self->_needsToReachEndOfPage && self->_useInlinePrimaryButton == 1)
  {
    [v4 flashScrollIndicators];
  }
}

- (void)_updatePrimaryButton
{
  v3 = [(PKDynamicCollectionViewController *)self collectionView];
  if (self->_needsToReachEndOfPage)
  {
    v15 = v3;
    [v3 contentSize];
    v3 = v15;
    if (v4 != 0.0)
    {
      [v15 frame];
      v6 = v5;
      [v15 adjustedContentInset];
      v8 = v7;
      [v15 adjustedContentInset];
      v10 = v9;
      [v15 contentOffset];
      v12 = v11;
      [v15 contentSize];
      if (self->_useInlinePrimaryButton || v13 - (v6 - v8 - v10) - v12 <= 24.0)
      {
        self->_useInlinePrimaryButton = 2;
      }

      else
      {
        [(PKPaymentSetupOptionsViewController *)self removeSetupDockView];
        self->_useInlinePrimaryButton = 1;
        v14 = [(PKApplyFieldsCollectionViewController *)self _recomputeSections];
        [(PKPaymentSetupOptionsViewController *)self setSections:v14 animated:0];

        [v15 setShowsVerticalScrollIndicator:1];
      }

      v3 = v15;
    }
  }
}

- (void)handleNextStep
{
  [(PKPaymentSetupOptionsViewController *)self setShowNavigationBarSpinner:1];

  [(PKApplyFieldsCollectionViewController *)self verifyAndSubmitFields];
}

- (void)showButtonSpinner:(BOOL)a3
{
  v3 = a3;
  self->_primaryButtonLoading = a3;
  if (self->_useInlinePrimaryButton == 2)
  {
    v5 = [(PKPaymentSetupOptionsViewController *)self dockView];
    v6 = [v5 primaryButton];

    [v6 setShowSpinner:v3];
    [v6 setEnabled:v3 ^ 1];
  }

  else
  {
    if (a3)
    {
      return;
    }

    v6 = [(PKApplyFieldsCollectionViewController *)self _recomputeSections];
    [PKPaymentSetupOptionsViewController setSections:"setSections:animated:" animated:?];
  }
}

- (void)primaryButtonTapped
{
  [(PKApplyFieldsCollectionViewController *)self showButtonSpinner:1];

  [(PKApplyFieldsCollectionViewController *)self verifyAndSubmitFields];
}

- (void)verifyAndSubmitFields
{
  v35 = *MEMORY[0x1E69E9840];
  v20 = [(PKApplyCollectionViewController *)self currentPage];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v2 = [v20 fieldModel];
  obj = [v2 visiblePaymentSetupFields];

  v24 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v24)
  {

LABEL_17:
    [(PKApplyFieldsCollectionViewController *)self submitFields];
    goto LABEL_18;
  }

  v3 = 0;
  v23 = *v31;
LABEL_3:
  v4 = 0;
  while (1)
  {
    if (*v31 != v23)
    {
      objc_enumerationMutation(obj);
    }

    v5 = *(*(&v30 + 1) + 8 * v4);
    if ([v5 isFieldTypePicker])
    {
      v6 = [v5 pickerFieldObject];
      v7 = [v6 currentValue];
      v8 = [v7 submissionConfirmationTitle];
      v9 = [v7 submissionConfirmationDescription];
      if ([v8 length] && objc_msgSend(v9, "length"))
      {
        objc_initWeak(&location, self);
        v10 = MEMORY[0x1E69DC648];
        v11 = [(PKApplyCollectionViewController *)self controller];
        [v11 featureIdentifier];
        v12 = PKLocalizedFeatureString();
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __62__PKApplyFieldsCollectionViewController_verifyAndSubmitFields__block_invoke;
        v27[3] = &unk_1E8012CC0;
        objc_copyWeak(&v28, &location);
        v13 = [v10 actionWithTitle:v12 style:1 handler:v27];

        v14 = MEMORY[0x1E69DC648];
        v15 = [(PKApplyCollectionViewController *)self controller];
        [v15 featureIdentifier];
        v16 = PKLocalizedFeatureString();
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __62__PKApplyFieldsCollectionViewController_verifyAndSubmitFields__block_invoke_2;
        v25[3] = &unk_1E8012CC0;
        objc_copyWeak(&v26, &location);
        v17 = [v14 actionWithTitle:v16 style:0 handler:v25];

        v18 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v8 message:v9 preferredStyle:1];
        [v18 addAction:v13];
        [v18 addAction:v17];
        [v18 setPreferredAction:v17];
        [(PKApplyFieldsCollectionViewController *)self presentViewController:v18 animated:1 completion:0];

        objc_destroyWeak(&v26);
        objc_destroyWeak(&v28);
        objc_destroyWeak(&location);
        v19 = 0;
        v3 = 1;
      }

      else
      {
        v19 = 1;
      }

      if (!v19)
      {
        break;
      }
    }

    if (v24 == ++v4)
    {
      v24 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v24)
      {
        goto LABEL_3;
      }

      break;
    }
  }

  if ((v3 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_18:
}

void __62__PKApplyFieldsCollectionViewController_verifyAndSubmitFields__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained showButtonSpinner:0];
    [v2 setShowNavigationBarSpinner:0];
    WeakRetained = v2;
  }
}

void __62__PKApplyFieldsCollectionViewController_verifyAndSubmitFields__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained submitFields];
    WeakRetained = v2;
  }
}

- (void)submitFields
{
  v3 = [(PKApplyCollectionViewController *)self controller];
  v4 = [(PKApplyCollectionViewController *)self currentPage];
  if ([v3 featureIdentifier] == 5 && ((objc_msgSend(v4, "identifier"), v5 = objc_claimAutoreleasedReturnValue(), v5 == @"taxWithholding") || (v6 = v5) != 0 && (v7 = -[__CFString isEqualToString:](v5, "isEqualToString:", @"taxWithholding"), v6, v6, v7)))
  {
    v8 = [PKApplyTermsVerifyingViewController alloc];
    v9 = [(PKApplyCollectionViewController *)self setupDelegate];
    v10 = [(PKPaymentSetupOptionsViewController *)self context];
    v11 = objc_alloc(MEMORY[0x1E695DFD8]);
    v12 = [(PKApplyCollectionViewController *)self controller];
    v13 = [v12 featureApplication];
    v14 = [v13 applicationTermsIdentifier];
    v15 = [v11 initWithObjects:{v14, 0}];
    v16 = [(PKApplyTermsVerifyingViewController *)v8 initWithController:v3 setupDelegate:v9 context:v10 termsIdentifiers:v15 applyPage:v4];

    v17 = [(PKApplyFieldsCollectionViewController *)self navigationController];
    [v17 pushViewController:v16 animated:1];
  }

  else
  {
    objc_initWeak(&location, self);
    v18 = [(PKApplyCollectionViewController *)self controller];
    v19 = [(PKApplyCollectionViewController *)self currentPage];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __53__PKApplyFieldsCollectionViewController_submitFields__block_invoke;
    v20[3] = &unk_1E80162F0;
    objc_copyWeak(&v21, &location);
    [v18 submitFieldsPage:v19 completion:v20];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

void __53__PKApplyFieldsCollectionViewController_submitFields__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__PKApplyFieldsCollectionViewController_submitFields__block_invoke_2;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __53__PKApplyFieldsCollectionViewController_submitFields__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if (*(a1 + 32) == 0)
    {
      WeakRetained[1369] = 1;
      [WeakRetained _terminateFlow];
    }

    else
    {
      [WeakRetained handleNextViewController:? displayableError:?];
      [v3 showButtonSpinner:0];
      [v3 setShowNavigationBarSpinner:0];
    }

    WeakRetained = v3;
  }
}

- (void)_terminateFlow
{
  v3 = [(PKApplyCollectionViewController *)self setupDelegate];
  v5 = v3;
  if (v3)
  {
    [v3 viewControllerDidTerminateSetupFlow:self];
  }

  else
  {
    v4 = [(PKApplyFieldsCollectionViewController *)self presentingViewController];
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

@end