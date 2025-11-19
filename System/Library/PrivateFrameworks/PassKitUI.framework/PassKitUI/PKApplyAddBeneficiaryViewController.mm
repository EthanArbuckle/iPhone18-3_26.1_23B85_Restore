@interface PKApplyAddBeneficiaryViewController
- (PKApplyAddBeneficiaryViewController)initWithController:(id)a3 setupDelegate:(id)a4 pageContent:(id)a5;
- (PKApplyAddBeneficiaryViewController)initWithSetupDelegate:(id)a3 context:(int64_t)a4 pageContent:(id)a5 account:(id)a6;
- (id)_alertControllerForError:(id)a3;
- (id)nextResponderCellForCurrentIdentifier:(id)a3;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (void)_setNavigationBarEnabled:(BOOL)a3;
- (void)_submit;
- (void)_terminateFlow;
- (void)showSpinner:(BOOL)a3;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation PKApplyAddBeneficiaryViewController

- (PKApplyAddBeneficiaryViewController)initWithSetupDelegate:(id)a3 context:(int64_t)a4 pageContent:(id)a5 account:(id)a6
{
  v60[1] = *MEMORY[0x1E69E9840];
  v47 = a3;
  v40 = a5;
  v8 = a5;
  v41 = a6;
  v45 = a6;
  v46 = v8;
  v9 = [v8 fieldModel];
  v10 = [v9 visiblePaymentSetupFields];

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
  v48 = v10;
  [v10 enumerateObjectsUsingBlock:v56];
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
        v24 = [v23 lastObject];
        if ([v24 isFieldTypeLabel])
        {
          v25 = [v23 firstObject];
          v26 = [v25 identifier];

          v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v24, 0, v40, v41}];
          [v49 setObject:v27 forKeyedSubscript:v26];

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
  v33 = [(PKPaymentSetupFieldsViewController *)&v51 initWithWebService:0 context:a4 setupDelegate:v47 setupFieldsModel:v32];
  v34 = v33;
  if (v33)
  {
    [(PKPaymentSetupFieldsViewController *)v33 setSectionIdentifiers:v11];
    objc_storeStrong(&v34->_pageContent, v40);
    objc_storeStrong(&v34->_account, v41);
    v35 = [(PKDynamicProvisioningFieldsPageContent *)v34->_pageContent fieldModel];
    v36 = [v35 paymentSetupFields];
    v37 = [v36 count];

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

- (PKApplyAddBeneficiaryViewController)initWithController:(id)a3 setupDelegate:(id)a4 pageContent:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = a4;
  v12 = [v9 context];
  v13 = [v9 account];
  v14 = [(PKApplyAddBeneficiaryViewController *)self initWithSetupDelegate:v11 context:v12 pageContent:v10 account:v13];

  if (v14)
  {
    objc_storeStrong(&v14->_controller, a3);
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

- (void)showSpinner:(BOOL)a3
{
  if (self->_isLoading != a3)
  {
    v3 = a3;
    self->_isLoading = a3;
    v5 = [(PKApplyAddBeneficiaryViewController *)self navigationController];
    v6 = [v5 view];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [(PKApplyAddBeneficiaryViewController *)self view];
    }

    v18 = v8;

    [v18 setUserInteractionEnabled:!v3];
    v9 = [(PKPaymentSetupTableViewController *)self dockView];
    [v9 setButtonsEnabled:!v3];

    [(PKApplyAddBeneficiaryViewController *)self _setNavigationBarEnabled:!v3];
    v10 = [(PKApplyAddBeneficiaryViewController *)self navigationItem];
    v11 = v10;
    if (self->_isLoading)
    {
      self->_backHidden = [v10 hidesBackButton];
      v12 = [v11 rightBarButtonItem];
      hiddenRightBarButtonItem = self->_hiddenRightBarButtonItem;
      self->_hiddenRightBarButtonItem = v12;

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

- (void)_setNavigationBarEnabled:(BOOL)a3
{
  v3 = a3;
  v10 = [(PKApplyAddBeneficiaryViewController *)self navigationController];
  v5 = [v10 navigationBar];
  [v5 setUserInteractionEnabled:v3];

  v6 = [v10 interactivePopGestureRecognizer];
  [v6 setEnabled:v3];

  v7 = [(PKApplyAddBeneficiaryViewController *)self navigationItem];
  v8 = [v7 leftBarButtonItem];
  [v8 setEnabled:v3];

  v9 = [v7 rightBarButtonItem];
  [v9 setEnabled:v3];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = a4;
  v21.receiver = self;
  v21.super_class = PKApplyAddBeneficiaryViewController;
  [(PKPaymentSetupFieldsViewController *)&v21 tableView:a3 willDisplayCell:v8 forRowAtIndexPath:a5];
  v9 = [v8 textLabel];
  v10 = [v9 font];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:18.0];
  }

  v13 = v12;

  v14 = [(PKPaymentSetupFieldsViewController *)self fieldsModel];
  v15 = [(PKPaymentSetupFieldsViewController *)self fieldsModel];
  v16 = [v15 visibleSetupFieldIdentifiers];
  [v14 minimumRequiredWidthForFieldIdentifiers:v16 withFont:v13];
  v18 = v17;

  v19.n128_u64[0] = v18;
  PKFloatCeilToPixel(v19, v20);
  [v8 setMinimumTextLabelWidth:?];
  [v8 setHidePrediction:1];
}

- (id)nextResponderCellForCurrentIdentifier:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v20 = a3;
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
              v13 = [(PKPaymentSetupFieldsViewController *)self fieldsModel];
              v14 = [v13 paymentSetupFieldWithIdentifier:v12];

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

  v15 = [v4 indexOfObject:v20];
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

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = [(PKPaymentSetupFieldsViewController *)self sectionIdentifiers];

  if (!v6)
  {
    v14 = 0;
    goto LABEL_13;
  }

  v7 = [(PKPaymentSetupFieldsViewController *)self sectionIdentifiers];
  v8 = [v7 objectAtIndexedSubscript:a4];
  v9 = [v8 firstObject];

  v10 = *MEMORY[0x1E69BC238];
  v11 = v9;
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
  v3 = [(PKPaymentSetupFieldsViewController *)self setupDelegate];
  v5 = v3;
  if (v3)
  {
    [v3 viewControllerDidTerminateSetupFlow:self];
  }

  else
  {
    v4 = [(PKApplyAddBeneficiaryViewController *)self presentingViewController];
    [v4 dismissViewControllerAnimated:1 completion:0];
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

- (id)_alertControllerForError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v16 = 0;
    goto LABEL_38;
  }

  v5 = v3;
  v6 = [v5 domain];
  v7 = [v6 isEqualToString:*MEMORY[0x1E69BB840]];

  v8 = MEMORY[0x1E696AA08];
  v9 = v5;
  if (v7)
  {
    v10 = [v5 userInfo];
    v9 = [v10 objectForKeyedSubscript:*v8];
  }

  v11 = [v9 domain];
  v12 = *MEMORY[0x1E69BC300];
  v13 = v11;
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
    v17 = [v9 userInfo];
    v18 = [v17 objectForKeyedSubscript:*v8];

    v19 = [v18 domain];
    v20 = *MEMORY[0x1E69BC6F0];
    v21 = v19;
    v22 = v21;
    if (v21 == v20)
    {
    }

    else
    {
      if (!v21 || !v20)
      {

LABEL_21:
        v24 = 0;
        v25 = 0;
        goto LABEL_22;
      }

      v23 = [v21 isEqualToString:v20];

      if (!v23)
      {
        goto LABEL_21;
      }
    }

    v24 = [v18 localizedFailureReason];
    v25 = [v18 localizedRecoverySuggestion];
LABEL_22:
    if ([v9 code] == 60049)
    {
      if (!(v24 | v25))
      {
        v24 = PKLocalizedFeatureString();
        v25 = PKLocalizedFeatureString();
      }
    }

    else if (!(v24 | v25))
    {
      v26 = [v9 localizedFailureReason];
      v27 = v26;
      if (v26)
      {
        v28 = v26;
      }

      else
      {
        v28 = [v5 localizedFailureReason];
      }

      v24 = v28;

      v29 = [v9 localizedRecoverySuggestion];
      v30 = v29;
      if (v29)
      {
        v31 = v29;
      }

      else
      {
        v31 = [v5 localizedRecoverySuggestion];
      }

      v25 = v31;
    }

    if (v24 | v25)
    {
      v16 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v24 message:v25 preferredStyle:1];
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