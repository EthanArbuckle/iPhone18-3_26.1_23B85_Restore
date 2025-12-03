@interface PKDynamicProvisioningFieldsPageViewController
- (PKDynamicProvisioningFieldsPageViewController)initWithWebService:(id)service context:(int64_t)context setupDelegate:(id)delegate fieldsPage:(id)page;
- (void)_setNavigationBarEnabled:(BOOL)enabled;
- (void)showSpinner:(BOOL)spinner;
- (void)viewDidLoad;
@end

@implementation PKDynamicProvisioningFieldsPageViewController

- (PKDynamicProvisioningFieldsPageViewController)initWithWebService:(id)service context:(int64_t)context setupDelegate:(id)delegate fieldsPage:(id)page
{
  serviceCopy = service;
  delegateCopy = delegate;
  pageCopy = page;
  fieldModel = [pageCopy fieldModel];
  visiblePaymentSetupFields = [fieldModel visiblePaymentSetupFields];

  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:visiblePaymentSetupFields];
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __101__PKDynamicProvisioningFieldsPageViewController_initWithWebService_context_setupDelegate_fieldsPage___block_invoke;
  v33[3] = &unk_1E80152D8;
  v15 = v14;
  v34 = v15;
  v16 = v12;
  v35 = v16;
  v17 = v13;
  v36 = v17;
  v18 = v11;
  v37 = v18;
  v39 = &v45;
  v19 = visiblePaymentSetupFields;
  v38 = v19;
  v40 = &v41;
  [v19 enumerateObjectsUsingBlock:v33];
  if ((v46[3] & 1) == 0)
  {
    v20 = [v15 copy];
    [v17 addObject:v20];
  }

  if (*(v42 + 24) == 1)
  {
    v21 = objc_alloc(MEMORY[0x1E69B8E38]);
    v22 = [v18 copy];
    v23 = [v16 copy];
    v24 = [v21 initWithPaymentSetupFields:v22 footerFields:v23];
  }

  else
  {
    v24 = [objc_alloc(MEMORY[0x1E69B8E38]) initWithPaymentSetupFields:v19];
  }

  v32.receiver = self;
  v32.super_class = PKDynamicProvisioningFieldsPageViewController;
  context = [(PKPaymentSetupFieldsViewController *)&v32 initWithWebService:serviceCopy context:context setupDelegate:delegateCopy setupFieldsModel:v24, self, context];
  v26 = context;
  if (context)
  {
    [(PKPaymentSetupFieldsViewController *)context setSectionIdentifiers:v17];
    objc_storeStrong(&v26->_fieldsPage, page);
  }

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);

  return v26;
}

void __101__PKDynamicProvisioningFieldsPageViewController_initWithWebService_context_setupDelegate_fieldsPage___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = a2;
  if ([v17 isFieldTypeLabel])
  {
    v5 = [*(a1 + 32) firstObject];
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 40);
      v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v17, 0}];
      [v7 setValue:v8 forKey:v6];

      v9 = *(a1 + 48);
      v10 = [*(a1 + 32) copy];
      [v9 addObject:v10];

      [*(a1 + 32) removeAllObjects];
      [*(a1 + 56) removeObject:v17];
      *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 64) count] - 1 == a3;
      *(*(*(a1 + 80) + 8) + 24) = 1;
    }

    else
    {
      v14 = [*(a1 + 48) lastObject];
      v6 = [v14 firstObject];
      if (v6)
      {
        v15 = [*(a1 + 40) objectForKey:v6];
        [v15 addObject:v17];
        *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 64) count] - 1 == a3;
        *(*(*(a1 + 80) + 8) + 24) = 1;
      }

      else
      {
        v16 = *(a1 + 32);
        v15 = [v17 identifier];
        [v16 addObject:v15];
      }
    }
  }

  else
  {
    v11 = [v17 isFieldTypeFooter];
    v12 = v17;
    if (v11)
    {
      goto LABEL_11;
    }

    v13 = *(a1 + 32);
    v6 = [v17 identifier];
    [v13 addObject:v6];
  }

  v12 = v17;
LABEL_11:
}

- (void)viewDidLoad
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = PKDynamicProvisioningFieldsPageViewController;
  [(PKPaymentSetupFieldsViewController *)&v6 viewDidLoad];
  [(PKPaymentSetupFieldsViewController *)self setHidesBackButton:1 animated:0];
  v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_handleCancelTapped];
  cancelButton = self->_cancelButton;
  self->_cancelButton = v3;

  [(UIBarButtonItem *)self->_cancelButton setAccessibilityIdentifier:*MEMORY[0x1E69B9708]];
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
    navigationController = [(PKDynamicProvisioningFieldsPageViewController *)self navigationController];
    view = [navigationController view];
    v7 = view;
    if (view)
    {
      view2 = view;
    }

    else
    {
      view2 = [(PKDynamicProvisioningFieldsPageViewController *)self view];
    }

    v18 = view2;

    [v18 setUserInteractionEnabled:!spinnerCopy];
    dockView = [(PKPaymentSetupTableViewController *)self dockView];
    [dockView setButtonsEnabled:!spinnerCopy];

    [(PKDynamicProvisioningFieldsPageViewController *)self _setNavigationBarEnabled:!spinnerCopy];
    navigationItem = [(PKDynamicProvisioningFieldsPageViewController *)self navigationItem];
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
  navigationController = [(PKDynamicProvisioningFieldsPageViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setUserInteractionEnabled:enabledCopy];

  interactivePopGestureRecognizer = [navigationController interactivePopGestureRecognizer];
  [interactivePopGestureRecognizer setEnabled:enabledCopy];

  navigationItem = [(PKDynamicProvisioningFieldsPageViewController *)self navigationItem];
  leftBarButtonItem = [navigationItem leftBarButtonItem];
  [leftBarButtonItem setEnabled:enabledCopy];

  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:enabledCopy];
}

@end