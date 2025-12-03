@interface PKApplyAddBeneficiaryViewController
- (PKApplyAddBeneficiaryViewController)initWithController:(id)controller setupDelegate:(id)delegate pageContent:(id)content;
- (PKApplyAddBeneficiaryViewController)initWithSetupDelegate:(id)delegate context:(int64_t)context pageContent:(id)content account:(id)account;
- (id)_alertControllerForError:(id)error;
- (id)nextResponderCellForCurrentIdentifier:(id)identifier;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (void)_setNavigationBarEnabled:(BOOL)enabled;
- (void)_submit;
- (void)_terminateFlow;
- (void)showSpinner:(BOOL)spinner;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation PKApplyAddBeneficiaryViewController

- (PKApplyAddBeneficiaryViewController)initWithSetupDelegate:(id)delegate context:(int64_t)context pageContent:(id)content account:(id)account
{
  v60[1] = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  contentCopy = content;
  contentCopy2 = content;
  accountCopy = account;
  accountCopy2 = account;
  v46 = contentCopy2;
  fieldModel = [contentCopy2 fieldModel];
  visiblePaymentSetupFields = [fieldModel visiblePaymentSetupFields];

  v49 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __89__PKApplyAddBeneficiaryViewController_initWithSetupDelegate_context_pageContent_account___block_invoke;
  v56[3] = &unk_1E801AAA0;
  v14 = v13;
  v57 = v14;
  v15 = v12;
  v58 = v15;
  v48 = visiblePaymentSetupFields;
  [visiblePaymentSetupFields enumerateObjectsUsingBlock:v56];
  v16 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"self" ascending:1];
  v60[0] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:1];
  v44 = v14;
  v18 = [v14 sortedArrayUsingDescriptors:v17];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v18;
  v19 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v53;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v53 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = [v15 objectForKeyedSubscript:*(*(&v52 + 1) + 8 * i)];
        lastObject = [v23 lastObject];
        if ([lastObject isFieldTypeLabel])
        {
          firstObject = [v23 firstObject];
          identifier = [firstObject identifier];

          v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{lastObject, 0, contentCopy, accountCopy}];
          [v49 setObject:v27 forKeyedSubscript:identifier];

          [v23 removeLastObject];
        }

        v28 = [v23 pk_arrayByApplyingBlock:&__block_literal_global_125];
        [v11 addObject:v28];
      }

      v20 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
    }

    while (v20);
  }

  v29 = objc_alloc(MEMORY[0x1E69B8E38]);
  v30 = [v48 copy];
  v31 = [v49 copy];
  v32 = [v29 initWithPaymentSetupFields:v30 footerFields:v31];

  v51.receiver = self;
  v51.super_class = PKApplyAddBeneficiaryViewController;
  v33 = [(PKPaymentSetupFieldsViewController *)&v51 initWithWebService:0 context:context setupDelegate:delegateCopy setupFieldsModel:v32];
  v34 = v33;
  if (v33)
  {
    [(PKPaymentSetupFieldsViewController *)v33 setSectionIdentifiers:v11];
    objc_storeStrong(&v34->_pageContent, contentCopy);
    objc_storeStrong(&v34->_account, accountCopy);
    fieldModel2 = [(PKDynamicProvisioningFieldsPageContent *)v34->_pageContent fieldModel];
    paymentSetupFields = [fieldModel2 paymentSetupFields];
    v37 = [paymentSetupFields count];

    if (v37)
    {
      v38 = PKLocalizedPaymentString(&cfstr_Submit.isa);
      [(PKPaymentSetupFieldsViewController *)v34 setPrimaryButtonTitleText:v38];
    }

    else
    {
      [(PKPaymentSetupFieldsViewController *)v34 setShowPrimaryButton:0];
      [(PKPaymentSetupFieldsViewController *)v34 _setNavigationBarEnabled:0 animated:0];
    }
  }

  return v34;
}

void __89__PKApplyAddBeneficiaryViewController_initWithSetupDelegate_context_pageContent_account___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 groupNumber];
  if (v3 >= 1)
  {
    v4 = v3;
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
    [v5 addObject:v6];

    v7 = *(a1 + 40);
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (v9)
    {
      [v9 addObject:v13];
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v13, 0}];
      v11 = *(a1 + 40);
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
      [v11 setObject:v10 forKeyedSubscript:v12];
    }
  }

  if ([v13 isMemberOfClass:objc_opt_class()])
  {
    [v13 setDisallowCurrentYear:0];
  }
}

- (PKApplyAddBeneficiaryViewController)initWithController:(id)controller setupDelegate:(id)delegate pageContent:(id)content
{
  controllerCopy = controller;
  contentCopy = content;
  delegateCopy = delegate;
  context = [controllerCopy context];
  account = [controllerCopy account];
  v14 = [(PKApplyAddBeneficiaryViewController *)self initWithSetupDelegate:delegateCopy context:context pageContent:contentCopy account:account];

  if (v14)
  {
    objc_storeStrong(&v14->_controller, controller);
  }

  return v14;
}

- (void)viewDidLoad
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = PKApplyAddBeneficiaryViewController;
  [(PKPaymentSetupFieldsViewController *)&v6 viewDidLoad];
  [(PKPaymentSetupFieldsViewController *)self setHidesBackButton:1 animated:0];
  v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_handleCancelTapped];
  cancelButton = self->_cancelButton;
  self->_cancelButton = v3;

  v7[0] = self->_cancelButton;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [(PKPaymentSetupFieldsViewController *)self _setLeftBarButtonItems:v5 animated:0];
}

- (void)showSpinner:(BOOL)spinner
{
  if (self->_isLoading != spinner)
  {
    spinnerCopy = spinner;
    self->_isLoading = spinner;
    navigationController = [(PKApplyAddBeneficiaryViewController *)self navigationController];
    view = [navigationController view];
    v7 = view;
    if (view)
    {
      view2 = view;
    }

    else
    {
      view2 = [(PKApplyAddBeneficiaryViewController *)self view];
    }

    v18 = view2;

    [v18 setUserInteractionEnabled:!spinnerCopy];
    dockView = [(PKPaymentSetupTableViewController *)self dockView];
    [dockView setButtonsEnabled:!spinnerCopy];

    [(PKApplyAddBeneficiaryViewController *)self _setNavigationBarEnabled:!spinnerCopy];
    navigationItem = [(PKApplyAddBeneficiaryViewController *)self navigationItem];
    v11 = navigationItem;
    if (self->_isLoading)
    {
      self->_backHidden = [navigationItem hidesBackButton];
      rightBarButtonItem = [v11 rightBarButtonItem];
      hiddenRightBarButtonItem = self->_hiddenRightBarButtonItem;
      self->_hiddenRightBarButtonItem = rightBarButtonItem;

      if (!self->_spinningNavBarItem)
      {
        v14 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
        activityIndicatorView = self->_activityIndicatorView;
        self->_activityIndicatorView = v14;

        v16 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:self->_activityIndicatorView];
        spinningNavBarItem = self->_spinningNavBarItem;
        self->_spinningNavBarItem = v16;
      }

      [(UIActivityIndicatorView *)self->_activityIndicatorView startAnimating];
      [v11 setRightBarButtonItem:self->_spinningNavBarItem];
      [v11 setHidesBackButton:1];
    }

    else
    {
      [(UIActivityIndicatorView *)self->_activityIndicatorView stopAnimating];
      [v11 setRightBarButtonItem:self->_hiddenRightBarButtonItem];
      [v11 setHidesBackButton:self->_backHidden];
      [(UIBarButtonItem *)self->_hiddenRightBarButtonItem setEnabled:[(PKPaymentSetupFieldsViewController *)self isComplete]];
    }

    [v18 setNeedsLayout];
  }
}

- (void)_setNavigationBarEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  navigationController = [(PKApplyAddBeneficiaryViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setUserInteractionEnabled:enabledCopy];

  interactivePopGestureRecognizer = [navigationController interactivePopGestureRecognizer];
  [interactivePopGestureRecognizer setEnabled:enabledCopy];

  navigationItem = [(PKApplyAddBeneficiaryViewController *)self navigationItem];
  leftBarButtonItem = [navigationItem leftBarButtonItem];
  [leftBarButtonItem setEnabled:enabledCopy];

  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:enabledCopy];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v21.receiver = self;
  v21.super_class = PKApplyAddBeneficiaryViewController;
  [(PKPaymentSetupFieldsViewController *)&v21 tableView:view willDisplayCell:cellCopy forRowAtIndexPath:path];
  textLabel = [cellCopy textLabel];
  font = [textLabel font];
  v11 = font;
  if (font)
  {
    v12 = font;
  }

  else
  {
    v12 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:18.0];
  }

  v13 = v12;

  fieldsModel = [(PKPaymentSetupFieldsViewController *)self fieldsModel];
  fieldsModel2 = [(PKPaymentSetupFieldsViewController *)self fieldsModel];
  visibleSetupFieldIdentifiers = [fieldsModel2 visibleSetupFieldIdentifiers];
  [fieldsModel minimumRequiredWidthForFieldIdentifiers:visibleSetupFieldIdentifiers withFont:v13];
  v18 = v17;

  v19.n128_u64[0] = v18;
  PKFloatCeilToPixel(v19, v20);
  [cellCopy setMinimumTextLabelWidth:?];
  [cellCopy setHidePrediction:1];
}

- (id)nextResponderCellForCurrentIdentifier:(id)identifier
{
  v34 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(PKPaymentSetupFieldsViewController *)self sectionIdentifiers];
  v23 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v23)
  {
    v22 = *v29;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v28 + 1) + 8 * i);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v25;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v25 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v24 + 1) + 8 * j);
              fieldsModel = [(PKPaymentSetupFieldsViewController *)self fieldsModel];
              v14 = [fieldsModel paymentSetupFieldWithIdentifier:v12];

              if (v14 && ([v14 isReadonly] & 1) == 0 && (objc_msgSend(v14, "isHidden") & 1) == 0)
              {
                [v4 addObject:v12];
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v9);
        }
      }

      v23 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v23);
  }

  v15 = [v4 indexOfObject:identifierCopy];
  if (v15 == 0x7FFFFFFFFFFFFFFFLL || (v16 = v15 + 1, v15 + 1 >= [v4 count]))
  {
    v18 = 0;
  }

  else
  {
    v17 = [v4 objectAtIndex:v16];
    v18 = [(PKPaymentSetupFieldsViewController *)self cellForIdentifier:v17];
  }

  return v18;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  sectionIdentifiers = [(PKPaymentSetupFieldsViewController *)self sectionIdentifiers];

  if (!sectionIdentifiers)
  {
    v14 = 0;
    goto LABEL_13;
  }

  sectionIdentifiers2 = [(PKPaymentSetupFieldsViewController *)self sectionIdentifiers];
  v8 = [sectionIdentifiers2 objectAtIndexedSubscript:section];
  firstObject = [v8 firstObject];

  v10 = *MEMORY[0x1E69BC238];
  v11 = firstObject;
  v12 = v11;
  if (v11 == v10)
  {
  }

  else
  {
    if (!v11 || !v10)
    {

LABEL_11:
      v14 = 0;
      goto LABEL_12;
    }

    v13 = [v11 isEqualToString:v10];

    if (!v13)
    {
      goto LABEL_11;
    }
  }

  v14 = PKLocalizedFeatureString();
LABEL_12:

LABEL_13:

  return v14;
}

- (void)_terminateFlow
{
  [(PKApplyController *)self->_controller endApplyFlow];
  setupDelegate = [(PKPaymentSetupFieldsViewController *)self setupDelegate];
  v5 = setupDelegate;
  if (setupDelegate)
  {
    [setupDelegate viewControllerDidTerminateSetupFlow:self];
  }

  else
  {
    presentingViewController = [(PKApplyAddBeneficiaryViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_submit
{
  v14[5] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696EE50]);
  v13[0] = &unk_1F3CC7778;
  v4 = PKLocalizedString(&cfstr_Wallet_1.isa);
  v14[0] = v4;
  v13[1] = &unk_1F3CC7790;
  v5 = PKLocalizedFeatureString();
  v14[1] = v5;
  v13[2] = &unk_1F3CC77A8;
  v6 = PKLocalizedFeatureString();
  v14[2] = v6;
  v13[3] = &unk_1F3CC77C0;
  v7 = PKDeviceSpecificLocalizedStringKeyForKey(@"BENEFICIARY_ADD_PASSWORD_AUTHENTICATION_REASON", 0);
  v8 = PKLocalizedFeatureString();
  v14[3] = v8;
  v13[4] = &unk_1F3CC77D8;
  v14[4] = MEMORY[0x1E695E118];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:5];

  [(PKApplyAddBeneficiaryViewController *)self showSpinner:1];
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__PKApplyAddBeneficiaryViewController__submit__block_invoke;
  v10[3] = &unk_1E801AAE8;
  objc_copyWeak(&v11, &location);
  [v3 evaluatePolicy:2 options:v9 reply:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __46__PKApplyAddBeneficiaryViewController__submit__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __46__PKApplyAddBeneficiaryViewController__submit__block_invoke_2;
    aBlock[3] = &unk_1E8011D28;
    aBlock[4] = WeakRetained;
    v7 = _Block_copy(aBlock);
    v8 = v7;
    if (!a2 || a3)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __46__PKApplyAddBeneficiaryViewController__submit__block_invoke_5;
      v14[3] = &unk_1E8010B50;
      v15 = v7;
      v13 = v7;
      dispatch_async(MEMORY[0x1E69E96A0], v14);
      v12 = v15;
    }

    else
    {
      v9 = v6[158];
      v10 = v6[160];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __46__PKApplyAddBeneficiaryViewController__submit__block_invoke_3;
      v16[3] = &unk_1E8010CC0;
      v16[4] = v6;
      v17 = v7;
      v11 = v7;
      [v9 submitFieldsPage:v10 completion:v16];
      v12 = v17;
    }
  }
}

uint64_t __46__PKApplyAddBeneficiaryViewController__submit__block_invoke_2(uint64_t a1, int a2)
{
  result = [*(a1 + 32) showSpinner:0];
  if (a2)
  {
    [*(*(a1 + 32) + 1264) endApplyFlow];
    v5 = *(a1 + 32);

    return [v5 _terminateFlow];
  }

  return result;
}

void __46__PKApplyAddBeneficiaryViewController__submit__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [*(a1 + 32) _alertControllerForError:v6];
    if (v7)
    {
      [*(a1 + 32) presentViewController:v7 animated:1 completion:0];
    }

    (*(*(a1 + 40) + 16))();
  }

  else if (v5)
  {
    v8 = [*(a1 + 32) navigationController];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __46__PKApplyAddBeneficiaryViewController__submit__block_invoke_4;
    v9[3] = &unk_1E8010AD8;
    v10 = *(a1 + 40);
    [v8 pk_presentPaymentSetupViewController:v5 animated:1 completion:v9];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (id)_alertControllerForError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (!errorCopy)
  {
    v16 = 0;
    goto LABEL_38;
  }

  v5 = errorCopy;
  domain = [v5 domain];
  v7 = [domain isEqualToString:*MEMORY[0x1E69BB840]];

  v8 = MEMORY[0x1E696AA08];
  v9 = v5;
  if (v7)
  {
    userInfo = [v5 userInfo];
    v9 = [userInfo objectForKeyedSubscript:*v8];
  }

  domain2 = [v9 domain];
  v12 = *MEMORY[0x1E69BC300];
  v13 = domain2;
  v14 = v13;
  if (v13 == v12)
  {

    goto LABEL_11;
  }

  if (v13 && v12)
  {
    v15 = [v13 isEqualToString:v12];

    if ((v15 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_11:
    userInfo2 = [v9 userInfo];
    v18 = [userInfo2 objectForKeyedSubscript:*v8];

    domain3 = [v18 domain];
    v20 = *MEMORY[0x1E69BC6F0];
    v21 = domain3;
    v22 = v21;
    if (v21 == v20)
    {
    }

    else
    {
      if (!v21 || !v20)
      {

LABEL_21:
        localizedFailureReason = 0;
        localizedRecoverySuggestion = 0;
        goto LABEL_22;
      }

      v23 = [v21 isEqualToString:v20];

      if (!v23)
      {
        goto LABEL_21;
      }
    }

    localizedFailureReason = [v18 localizedFailureReason];
    localizedRecoverySuggestion = [v18 localizedRecoverySuggestion];
LABEL_22:
    if ([v9 code] == 60049)
    {
      if (!(localizedFailureReason | localizedRecoverySuggestion))
      {
        localizedFailureReason = PKLocalizedFeatureString();
        localizedRecoverySuggestion = PKLocalizedFeatureString();
      }
    }

    else if (!(localizedFailureReason | localizedRecoverySuggestion))
    {
      localizedFailureReason2 = [v9 localizedFailureReason];
      v27 = localizedFailureReason2;
      if (localizedFailureReason2)
      {
        localizedFailureReason3 = localizedFailureReason2;
      }

      else
      {
        localizedFailureReason3 = [v5 localizedFailureReason];
      }

      localizedFailureReason = localizedFailureReason3;

      localizedRecoverySuggestion2 = [v9 localizedRecoverySuggestion];
      v30 = localizedRecoverySuggestion2;
      if (localizedRecoverySuggestion2)
      {
        localizedRecoverySuggestion3 = localizedRecoverySuggestion2;
      }

      else
      {
        localizedRecoverySuggestion3 = [v5 localizedRecoverySuggestion];
      }

      localizedRecoverySuggestion = localizedRecoverySuggestion3;
    }

    if (localizedFailureReason | localizedRecoverySuggestion)
    {
      v16 = [MEMORY[0x1E69DC650] alertControllerWithTitle:localizedFailureReason message:localizedRecoverySuggestion preferredStyle:1];
      v32 = MEMORY[0x1E69DC648];
      v33 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
      v34 = [v32 actionWithTitle:v33 style:1 handler:0];
      [v16 addAction:v34];
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_37;
  }

LABEL_17:
  v16 = PKAlertForDisplayableErrorWithHandlers(v9, 0, 0, 0);
LABEL_37:

LABEL_38:

  return v16;
}

@end