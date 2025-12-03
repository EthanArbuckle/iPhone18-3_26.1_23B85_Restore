@interface PKApplyFieldsCollectionViewController
- (BOOL)_determineNextEnablementWithPage:(id)page;
- (id)_recomputeSections;
- (void)_terminateFlow;
- (void)_updatePrimaryButton;
- (void)handleNextStep;
- (void)primaryButtonTapped;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)recomputeSectionsWithReload:(BOOL)reload;
- (void)reloadDataAnimated:(BOOL)animated;
- (void)showButtonSpinner:(BOOL)spinner;
- (void)submitFields;
- (void)verifyAndSubmitFields;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PKApplyFieldsCollectionViewController

- (void)viewDidLoad
{
  v27.receiver = self;
  v27.super_class = PKApplyFieldsCollectionViewController;
  [(PKApplyCollectionViewController *)&v27 viewDidLoad];
  currentPage = [(PKApplyCollectionViewController *)self currentPage];
  collectionView = [(PKDynamicCollectionViewController *)self collectionView];
  [collectionView setAccessibilityIdentifier:*MEMORY[0x1E69B9460]];
  _recomputeSections = [(PKApplyFieldsCollectionViewController *)self _recomputeSections];
  [(PKPaymentSetupOptionsViewController *)self setSections:_recomputeSections animated:0];

  headerView = [(PKPaymentSetupOptionsViewController *)self headerView];
  [headerView setAdditionalBottomPadding:4.0];
  [headerView setTitleAccessoriesEnabled:0];
  v7 = PKProvisioningBackgroundColor();
  [(PKPaymentSetupOptionsViewController *)self setBackgroundColor:v7];

  v8 = currentPage;
  navigationItem = [(PKApplyFieldsCollectionViewController *)self navigationItem];
  identifier = [v8 identifier];
  if (identifier != @"taxWithholding")
  {
    v11 = identifier;
    if (!identifier || (v12 = [(__CFString *)identifier isEqualToString:@"taxWithholding"], v11, v11, (v12 & 1) == 0))
    {
      [navigationItem setLeftBarButtonItem:0];
      [navigationItem setHidesBackButton:0];
    }
  }

  primaryActionTitle = [v8 primaryActionTitle];
  v14 = [primaryActionTitle length];

  if (v14)
  {
    v15 = PKUIGetMinScreenWidthType();
    v16 = -20.0;
    if (!v15)
    {
      v16 = -10.0;
    }

    [headerView setAdditionalTopPadding:v16];
    self->_needsToReachEndOfPage = 1;
  }

  else
  {
    v17 = objc_alloc(MEMORY[0x1E69DC708]);
    v18 = PKLocalizedPaymentString(&cfstr_Submit.isa);
    v19 = [v17 initWithTitle:v18 style:2 target:self action:sel_handleNextStep];

    [v19 setAccessibilityIdentifier:*MEMORY[0x1E69B9990]];
    [v19 setEnabled:0];
    [navigationItem setRightBarButtonItem:v19];
  }

  controller = [(PKApplyCollectionViewController *)self controller];
  if ([controller applicationType] != 5)
  {
    goto LABEL_13;
  }

  secondaryActionTitle = [v8 secondaryActionTitle];
  v22 = [secondaryActionTitle length];

  if (!v22)
  {
    v23 = objc_alloc(MEMORY[0x1E69DC708]);
    controller2 = [(PKApplyCollectionViewController *)self controller];
    [controller2 featureIdentifier];
    v25 = PKLocalizedFeatureString();
    controller = [v23 initWithTitle:v25 style:0 target:self action:sel__terminateFlow];

    [controller setAccessibilityIdentifier:*MEMORY[0x1E69B9708]];
    [navigationItem setLeftBarButtonItem:controller];
LABEL_13:
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
  [defaultCenter addObserver:self selector:sel__keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
  [(PKPaymentSetupOptionsViewController *)self setShouldCollapseHeaderOnKeyboardShow:0];
  [(PKPaymentSetupOptionsViewController *)self setShowNoResultsView:0 animated:0];
}

- (id)_recomputeSections
{
  v73 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  controller = [(PKApplyCollectionViewController *)self controller];
  currentPage = [(PKApplyCollectionViewController *)self currentPage];
  fieldModel = [currentPage fieldModel];
  v7 = [(PKApplyFieldsCollectionViewController *)self _determineNextEnablementWithPage:currentPage];
  selfCopy = self;
  navigationItem = [(PKApplyFieldsCollectionViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v7];

  v10 = controller;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v62 = fieldModel;
  obj = [fieldModel visiblePaymentSetupFields];
  v11 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
  v57 = currentPage;
  if (v11)
  {
    v12 = v11;
    v13 = *v68;
    v58 = *v68;
    v55 = controller;
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
        identifier = [v15 identifier];
        v17 = [v62 requirementsMetForFieldWithIdentifier:identifier];

        if (v17)
        {
          if ([v15 fieldType] == 5)
          {
            pickerFieldObject = [v15 pickerFieldObject];
            pickerType = [(PKApplyRequiredFieldSectionController *)pickerFieldObject pickerType];
            if (pickerType != 2)
            {
              if (pickerType == 1)
              {
                v20 = [[PKApplyRadioPickerSectionController alloc] initWithController:v10 applyPage:currentPage picker:pickerFieldObject];
                [(PKApplyCollectionViewSectionController *)v20 setDynamicCollectionDelegate:selfCopy];
                [v3 addObject:v20];
                goto LABEL_33;
              }

LABEL_35:

              goto LABEL_36;
            }

            v20 = [[PKApplyMultilevelListPickerSectionController alloc] initWithController:v10 applyPage:currentPage picker:pickerFieldObject];
            [(PKApplyCollectionViewSectionController *)v20 setDynamicCollectionDelegate:selfCopy];
            [v3 addObject:v20];
            currentValue = [(PKApplyRequiredFieldSectionController *)pickerFieldObject currentValue];
            nextLevelPicker = [currentValue nextLevelPicker];

            if (nextLevelPicker)
            {
              while (2)
              {
                if ([nextLevelPicker fieldType] == 5)
                {
                  pickerType2 = [nextLevelPicker pickerType];
                  if (pickerType2 == 1)
                  {
                    v37 = off_1E8004860;
LABEL_28:
                    v38 = [objc_alloc(*v37) initWithController:v10 applyPage:currentPage picker:nextLevelPicker];
                    [v38 setDynamicCollectionDelegate:selfCopy];
                  }

                  else
                  {
                    if (pickerType2 == 2)
                    {
                      v37 = off_1E8004810;
                      goto LABEL_28;
                    }

                    v38 = 0;
                  }

                  [v3 safelyAddObject:v38];
                }

                currentValue2 = [nextLevelPicker currentValue];
                nextLevelPicker2 = [currentValue2 nextLevelPicker];

                nextLevelPicker = nextLevelPicker2;
                if (!nextLevelPicker2)
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
              pickerFieldObject = [v15 labelFieldObject];
              v21 = objc_alloc_init(MEMORY[0x1E69B85D0]);
              title = [(PKApplyRequiredFieldSectionController *)pickerFieldObject title];
              [v21 setFooterText:title];

              v23 = objc_alloc_init(MEMORY[0x1E695DFA8]);
              v63 = 0u;
              v64 = 0u;
              v65 = 0u;
              v66 = 0u;
              links = [(PKApplyRequiredFieldSectionController *)pickerFieldObject links];
              v25 = [links countByEnumeratingWithState:&v63 objects:v71 count:16];
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
                      objc_enumerationMutation(links);
                    }

                    v29 = [objc_alloc(MEMORY[0x1E69B85D8]) initWithDictionary:*(*(&v63 + 1) + 8 * i)];
                    [v23 pk_safelyAddObject:v29];
                  }

                  v26 = [links countByEnumeratingWithState:&v63 objects:v71 count:16];
                }

                while (v26);
              }

              [v21 setLinks:v23];
              v10 = v55;
              currentPage = v57;
              v30 = [[PKApplyInlineFooterSectionController alloc] initWithController:v55 applyPage:v57 content:v21 delegate:selfCopy];
              [(PKApplyCollectionViewSectionController *)v30 setDynamicCollectionDelegate:selfCopy];
              v3 = v56;
              [v56 addObject:v30];
            }

            else
            {
              v31 = [PKApplyRequiredFieldSectionController alloc];
              controller2 = [(PKApplyCollectionViewController *)selfCopy controller];
              page = [(PKApplyCollectionViewController *)selfCopy page];
              pickerFieldObject = [(PKApplyRequiredFieldSectionController *)v31 initWithController:controller2 applyPage:page field:v15];

              [(PKApplyCollectionViewSectionController *)pickerFieldObject setDynamicCollectionDelegate:selfCopy];
              [v3 safelyAddObject:pickerFieldObject];
              currentPage = v57;
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

  firstObject = [v3 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    firstObject2 = [v3 firstObject];
    [firstObject2 setIsTopmostSection:1];
  }

  if (selfCopy->_useInlinePrimaryButton == 1)
  {
    primaryActionTitle = [v57 primaryActionTitle];
    v45 = [primaryActionTitle length];

    if (v45)
    {
      v46 = [(PKApplyCollectionViewSectionController *)[PKApplyPrimaryActionSectionController alloc] initWithController:v10 applyPage:v57];
      [(PKApplyCollectionViewSectionController *)v46 setDynamicCollectionDelegate:selfCopy];
      [(PKApplyPrimaryActionSectionController *)v46 setPrimaryButtonLoading:selfCopy->_primaryButtonLoading];
      [v3 addObject:v46];
    }
  }

  collectionView = [(PKDynamicCollectionViewController *)selfCopy collectionView];
  [collectionView contentSize];
  v49 = v48;
  [collectionView frame];
  v51 = v50;
  [collectionView contentInset];
  if (v49 > v51 - v52)
  {
    [collectionView safeAreaInsets];
    [collectionView setScrollIndicatorInsets:?];
    [collectionView setShowsVerticalScrollIndicator:1];
    [collectionView flashScrollIndicators];
  }

  v53 = [v3 copy];

  return v53;
}

- (BOOL)_determineNextEnablementWithPage:(id)page
{
  v27 = *MEMORY[0x1E69E9840];
  pageCopy = page;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  fieldModel = [pageCopy fieldModel];
  visiblePaymentSetupFields = [fieldModel visiblePaymentSetupFields];

  v6 = [visiblePaymentSetupFields countByEnumeratingWithState:&v22 objects:v26 count:16];
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
        objc_enumerationMutation(visiblePaymentSetupFields);
      }

      v10 = *(*(&v22 + 1) + 8 * v9);
      if ([v10 fieldType] == 5)
      {
        pickerFieldObject = [v10 pickerFieldObject];
        currentValue = [pickerFieldObject currentValue];
        if (([pickerFieldObject isOptional] & 1) == 0 && !currentValue)
        {
          goto LABEL_24;
        }

        nextLevelPicker = [currentValue nextLevelPicker];

        if (nextLevelPicker)
        {
          while (1)
          {
            v14 = currentValue;
            currentValue = [nextLevelPicker currentValue];

            if (([nextLevelPicker isOptional] & 1) == 0 && !currentValue)
            {
              break;
            }

            nextLevelPicker2 = [currentValue nextLevelPicker];

            nextLevelPicker = nextLevelPicker2;
            if (!nextLevelPicker2)
            {
              goto LABEL_16;
            }
          }

          pickerFieldObject = nextLevelPicker;
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

      currentValue = [v10 currentValue];
      if (currentValue)
      {
        goto LABEL_16;
      }

      fieldModel2 = [pageCopy fieldModel];
      identifier = [v10 identifier];
      v18 = [fieldModel2 requirementsMetForFieldWithIdentifier:identifier];

      if (v18)
      {
        goto LABEL_25;
      }

LABEL_17:
      ++v9;
    }

    while (v9 != v7);
    v19 = [visiblePaymentSetupFields countByEnumeratingWithState:&v22 objects:v26 count:16];
    v7 = v19;
    v20 = 1;
  }

  while (v19);
LABEL_27:

  return v20;
}

- (void)reloadDataAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v6.receiver = self;
  v6.super_class = PKApplyFieldsCollectionViewController;
  [(PKDynamicCollectionViewController *)&v6 reloadDataAnimated:?];
  _recomputeSections = [(PKApplyFieldsCollectionViewController *)self _recomputeSections];
  [(PKPaymentSetupOptionsViewController *)self setSections:_recomputeSections animated:animatedCopy];
}

- (void)recomputeSectionsWithReload:(BOOL)reload
{
  reloadCopy = reload;
  _recomputeSections = [(PKApplyFieldsCollectionViewController *)self _recomputeSections];
  if (reloadCopy)
  {
    v6 = _recomputeSections;
    [(PKPaymentSetupOptionsViewController *)self setSections:_recomputeSections animated:1];
    _recomputeSections = v6;
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = PKApplyFieldsCollectionViewController;
  [(PKPaymentSetupOptionsViewController *)&v6 viewWillAppear:appear];
  view = [(PKApplyFieldsCollectionViewController *)self view];
  [view setNeedsLayout];

  view2 = [(PKApplyFieldsCollectionViewController *)self view];
  [view2 layoutIfNeeded];

  [(PKApplyFieldsCollectionViewController *)self _updatePrimaryButton];
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  controllerCopy = controller;
  navigationController = [(PKApplyFieldsCollectionViewController *)self navigationController];
  [navigationController pushViewController:controllerCopy animated:1];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = PKApplyFieldsCollectionViewController;
  [(PKApplyCollectionViewController *)&v6 viewDidAppear:appear];
  collectionView = [(PKDynamicCollectionViewController *)self collectionView];
  v5 = collectionView;
  if (self->_needsToReachEndOfPage && self->_useInlinePrimaryButton == 1)
  {
    [collectionView flashScrollIndicators];
  }
}

- (void)_updatePrimaryButton
{
  collectionView = [(PKDynamicCollectionViewController *)self collectionView];
  if (self->_needsToReachEndOfPage)
  {
    v15 = collectionView;
    [collectionView contentSize];
    collectionView = v15;
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
        _recomputeSections = [(PKApplyFieldsCollectionViewController *)self _recomputeSections];
        [(PKPaymentSetupOptionsViewController *)self setSections:_recomputeSections animated:0];

        [v15 setShowsVerticalScrollIndicator:1];
      }

      collectionView = v15;
    }
  }
}

- (void)handleNextStep
{
  [(PKPaymentSetupOptionsViewController *)self setShowNavigationBarSpinner:1];

  [(PKApplyFieldsCollectionViewController *)self verifyAndSubmitFields];
}

- (void)showButtonSpinner:(BOOL)spinner
{
  spinnerCopy = spinner;
  self->_primaryButtonLoading = spinner;
  if (self->_useInlinePrimaryButton == 2)
  {
    dockView = [(PKPaymentSetupOptionsViewController *)self dockView];
    primaryButton = [dockView primaryButton];

    [primaryButton setShowSpinner:spinnerCopy];
    [primaryButton setEnabled:spinnerCopy ^ 1];
  }

  else
  {
    if (spinner)
    {
      return;
    }

    primaryButton = [(PKApplyFieldsCollectionViewController *)self _recomputeSections];
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
  currentPage = [(PKApplyCollectionViewController *)self currentPage];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  fieldModel = [currentPage fieldModel];
  obj = [fieldModel visiblePaymentSetupFields];

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
      pickerFieldObject = [v5 pickerFieldObject];
      currentValue = [pickerFieldObject currentValue];
      submissionConfirmationTitle = [currentValue submissionConfirmationTitle];
      submissionConfirmationDescription = [currentValue submissionConfirmationDescription];
      if ([submissionConfirmationTitle length] && objc_msgSend(submissionConfirmationDescription, "length"))
      {
        objc_initWeak(&location, self);
        v10 = MEMORY[0x1E69DC648];
        controller = [(PKApplyCollectionViewController *)self controller];
        [controller featureIdentifier];
        v12 = PKLocalizedFeatureString();
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __62__PKApplyFieldsCollectionViewController_verifyAndSubmitFields__block_invoke;
        v27[3] = &unk_1E8012CC0;
        objc_copyWeak(&v28, &location);
        v13 = [v10 actionWithTitle:v12 style:1 handler:v27];

        v14 = MEMORY[0x1E69DC648];
        controller2 = [(PKApplyCollectionViewController *)self controller];
        [controller2 featureIdentifier];
        v16 = PKLocalizedFeatureString();
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __62__PKApplyFieldsCollectionViewController_verifyAndSubmitFields__block_invoke_2;
        v25[3] = &unk_1E8012CC0;
        objc_copyWeak(&v26, &location);
        v17 = [v14 actionWithTitle:v16 style:0 handler:v25];

        v18 = [MEMORY[0x1E69DC650] alertControllerWithTitle:submissionConfirmationTitle message:submissionConfirmationDescription preferredStyle:1];
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
  controller = [(PKApplyCollectionViewController *)self controller];
  currentPage = [(PKApplyCollectionViewController *)self currentPage];
  if ([controller featureIdentifier] == 5 && ((objc_msgSend(currentPage, "identifier"), v5 = objc_claimAutoreleasedReturnValue(), v5 == @"taxWithholding") || (v6 = v5) != 0 && (v7 = -[__CFString isEqualToString:](v5, "isEqualToString:", @"taxWithholding"), v6, v6, v7)))
  {
    v8 = [PKApplyTermsVerifyingViewController alloc];
    setupDelegate = [(PKApplyCollectionViewController *)self setupDelegate];
    context = [(PKPaymentSetupOptionsViewController *)self context];
    v11 = objc_alloc(MEMORY[0x1E695DFD8]);
    controller2 = [(PKApplyCollectionViewController *)self controller];
    featureApplication = [controller2 featureApplication];
    applicationTermsIdentifier = [featureApplication applicationTermsIdentifier];
    v15 = [v11 initWithObjects:{applicationTermsIdentifier, 0}];
    v16 = [(PKApplyTermsVerifyingViewController *)v8 initWithController:controller setupDelegate:setupDelegate context:context termsIdentifiers:v15 applyPage:currentPage];

    navigationController = [(PKApplyFieldsCollectionViewController *)self navigationController];
    [navigationController pushViewController:v16 animated:1];
  }

  else
  {
    objc_initWeak(&location, self);
    controller3 = [(PKApplyCollectionViewController *)self controller];
    currentPage2 = [(PKApplyCollectionViewController *)self currentPage];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __53__PKApplyFieldsCollectionViewController_submitFields__block_invoke;
    v20[3] = &unk_1E80162F0;
    objc_copyWeak(&v21, &location);
    [controller3 submitFieldsPage:currentPage2 completion:v20];

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
  setupDelegate = [(PKApplyCollectionViewController *)self setupDelegate];
  v5 = setupDelegate;
  if (setupDelegate)
  {
    [setupDelegate viewControllerDidTerminateSetupFlow:self];
  }

  else
  {
    presentingViewController = [(PKApplyFieldsCollectionViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

@end