@interface PKPeerPaymentConfirmNameViewController
- (PKPeerPaymentConfirmNameViewController)initWithFamilyMember:(id)a3 delegate:(id)a4 context:(int64_t)a5;
- (PKPeerPaymentConfirmNameViewControllerDelegate)delegate;
- (void)_cancelPressed;
- (void)_continue;
- (void)showSpinner:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation PKPeerPaymentConfirmNameViewController

- (PKPeerPaymentConfirmNameViewController)initWithFamilyMember:(id)a3 delegate:(id)a4 context:(int64_t)a5
{
  v23[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [MEMORY[0x1E696AD48] letterCharacterSet];
  [v11 addCharactersInString:@"-. "];
  v12 = [MEMORY[0x1E69B8DD0] paymentSetupFieldWithIdentifier:*MEMORY[0x1E69BC1F0]];
  [v12 setAllowedCharacters:v11];
  v13 = [v9 firstName];
  [v12 setDefaultValue:v13];

  [v12 setPopulateFromMeCard:0];
  v14 = [MEMORY[0x1E69B8DD0] paymentSetupFieldWithIdentifier:*MEMORY[0x1E69BC1F8]];
  [v14 setAllowedCharacters:v11];
  v15 = [v9 lastName];
  [v14 setDefaultValue:v15];

  [v14 setPopulateFromMeCard:0];
  v16 = objc_alloc(MEMORY[0x1E69B8E38]);
  v23[0] = v12;
  v23[1] = v14;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v18 = [v16 initWithPaymentSetupFields:v17];

  v22.receiver = self;
  v22.super_class = PKPeerPaymentConfirmNameViewController;
  v19 = [(PKPaymentSetupFieldsViewController *)&v22 initWithWebService:0 context:a5 setupDelegate:self setupFieldsModel:v18];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_familyMember, a3);
    objc_storeWeak(&v20->_delegate, v10);
    [(PKPaymentSetupFieldsViewController *)v20 setPreferPrimaryButtonInNavigationBar:1];
  }

  return v20;
}

- (void)viewDidLoad
{
  v27[1] = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = PKPeerPaymentConfirmNameViewController;
  [(PKPaymentSetupFieldsViewController *)&v25 viewDidLoad];
  [(PKPaymentSetupFieldsViewController *)self setHidesBackButton:1 animated:0];
  [(PKPaymentSetupTableViewController *)self context];
  if ((PKPaymentSetupContextIsSetupAssistant() & 1) == 0)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelPressed];
    cancelButton = self->_cancelButton;
    self->_cancelButton = v3;

    v27[0] = self->_cancelButton;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    [(PKPaymentSetupFieldsViewController *)self _setLeftBarButtonItems:v5 animated:0];
  }

  v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__donePressed];
  doneButton = self->_doneButton;
  self->_doneButton = v6;

  v26 = self->_doneButton;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  [(PKPaymentSetupFieldsViewController *)self _setRightBarButtonItems:v8 animated:0];

  v9 = [(PKPaymentSetupTableViewController *)self tableView];
  [v9 setAllowsMultipleSelection:0];
  v10 = PKPassKitUIBundle();
  v11 = [v10 URLForResource:@"AppleCashIcon" withExtension:@"pdf"];
  v12 = PKUIScreenScale();
  v13 = PKUIImageFromPDF(v11, 80.0, 80.0, v12);

  v14 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v13];
  [v14 setContentMode:1];
  [v14 setClipsToBounds:1];
  [v14 _setContinuousCornerRadius:20.0];
  v15 = [(PKPaymentSetupFieldsViewController *)self headerView];
  [v15 setTopPadding:30.0];
  v16 = [(PKPeerPaymentConfirmNameViewController *)self traitCollection];
  v17 = [v16 userInterfaceIdiom];

  IsSetupAssistant = 0;
  if ((v17 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(PKPaymentSetupTableViewController *)self context];
    IsSetupAssistant = PKPaymentSetupContextIsSetupAssistant();
  }

  [v15 setStyle:IsSetupAssistant];
  v19 = [v15 titleLabel];
  v20 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentCon_11.isa);
  [v19 setText:v20];

  v21 = [v15 subtitleLabel];
  v22 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentCon_12.isa);
  [v21 setText:v22];

  [v15 setImageView:v14];
  v23 = [(PKPaymentSetupTableViewController *)self dockView];
  v24 = [v23 footerView];
  [v24 setSetUpLaterButton:0];

  [v23 setPrimaryButton:0];
}

- (void)showSpinner:(BOOL)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (self->_showSpinner != a3)
  {
    self->_showSpinner = a3;
    [(UIBarButtonItem *)self->_cancelButton setEnabled:!a3];
    if (self->_showSpinner)
    {
      spinnerButton = self->_spinnerButton;
      if (!spinnerButton)
      {
        v5 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
        [v5 startAnimating];
        v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v5];
        v7 = self->_spinnerButton;
        self->_spinnerButton = v6;

        spinnerButton = self->_spinnerButton;
      }

      v11[0] = spinnerButton;
      p_doneButton = v11;
    }

    else
    {
      doneButton = self->_doneButton;
      p_doneButton = &doneButton;
    }

    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:p_doneButton count:1];
    [(PKPaymentSetupFieldsViewController *)self _setRightBarButtonItems:v9 animated:0];
  }
}

- (void)_continue
{
  [(PKPeerPaymentConfirmNameViewController *)self showSpinner:1];
  v3 = [(PKPaymentSetupFieldsViewController *)self fieldForIdentifier:*MEMORY[0x1E69BC1F0]];
  v8 = [v3 submissionString];

  v4 = [(PKPaymentSetupFieldsViewController *)self fieldForIdentifier:*MEMORY[0x1E69BC1F8]];
  v5 = [v4 submissionString];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained confirmNameViewController:self enteredFirstName:v8 lastName:v5];
  }

  else
  {
    [(PKPeerPaymentConfirmNameViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_cancelPressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(&self->_delegate);
    [v3 confirmNameViewControllerCancelled:self];
  }

  else
  {
    [(PKPeerPaymentConfirmNameViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (PKPeerPaymentConfirmNameViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end