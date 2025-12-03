@interface PKPeerPaymentConfirmNameViewController
- (PKPeerPaymentConfirmNameViewController)initWithFamilyMember:(id)member delegate:(id)delegate context:(int64_t)context;
- (PKPeerPaymentConfirmNameViewControllerDelegate)delegate;
- (void)_cancelPressed;
- (void)_continue;
- (void)showSpinner:(BOOL)spinner;
- (void)viewDidLoad;
@end

@implementation PKPeerPaymentConfirmNameViewController

- (PKPeerPaymentConfirmNameViewController)initWithFamilyMember:(id)member delegate:(id)delegate context:(int64_t)context
{
  v23[2] = *MEMORY[0x1E69E9840];
  memberCopy = member;
  delegateCopy = delegate;
  letterCharacterSet = [MEMORY[0x1E696AD48] letterCharacterSet];
  [letterCharacterSet addCharactersInString:@"-. "];
  v12 = [MEMORY[0x1E69B8DD0] paymentSetupFieldWithIdentifier:*MEMORY[0x1E69BC1F0]];
  [v12 setAllowedCharacters:letterCharacterSet];
  firstName = [memberCopy firstName];
  [v12 setDefaultValue:firstName];

  [v12 setPopulateFromMeCard:0];
  v14 = [MEMORY[0x1E69B8DD0] paymentSetupFieldWithIdentifier:*MEMORY[0x1E69BC1F8]];
  [v14 setAllowedCharacters:letterCharacterSet];
  lastName = [memberCopy lastName];
  [v14 setDefaultValue:lastName];

  [v14 setPopulateFromMeCard:0];
  v16 = objc_alloc(MEMORY[0x1E69B8E38]);
  v23[0] = v12;
  v23[1] = v14;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v18 = [v16 initWithPaymentSetupFields:v17];

  v22.receiver = self;
  v22.super_class = PKPeerPaymentConfirmNameViewController;
  v19 = [(PKPaymentSetupFieldsViewController *)&v22 initWithWebService:0 context:context setupDelegate:self setupFieldsModel:v18];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_familyMember, member);
    objc_storeWeak(&v20->_delegate, delegateCopy);
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

  tableView = [(PKPaymentSetupTableViewController *)self tableView];
  [tableView setAllowsMultipleSelection:0];
  v10 = PKPassKitUIBundle();
  v11 = [v10 URLForResource:@"AppleCashIcon" withExtension:@"pdf"];
  v12 = PKUIScreenScale();
  v13 = PKUIImageFromPDF(v11, 80.0, 80.0, v12);

  v14 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v13];
  [v14 setContentMode:1];
  [v14 setClipsToBounds:1];
  [v14 _setContinuousCornerRadius:20.0];
  headerView = [(PKPaymentSetupFieldsViewController *)self headerView];
  [headerView setTopPadding:30.0];
  traitCollection = [(PKPeerPaymentConfirmNameViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  IsSetupAssistant = 0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(PKPaymentSetupTableViewController *)self context];
    IsSetupAssistant = PKPaymentSetupContextIsSetupAssistant();
  }

  [headerView setStyle:IsSetupAssistant];
  titleLabel = [headerView titleLabel];
  v20 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentCon_11.isa);
  [titleLabel setText:v20];

  subtitleLabel = [headerView subtitleLabel];
  v22 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentCon_12.isa);
  [subtitleLabel setText:v22];

  [headerView setImageView:v14];
  dockView = [(PKPaymentSetupTableViewController *)self dockView];
  footerView = [dockView footerView];
  [footerView setSetUpLaterButton:0];

  [dockView setPrimaryButton:0];
}

- (void)showSpinner:(BOOL)spinner
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (self->_showSpinner != spinner)
  {
    self->_showSpinner = spinner;
    [(UIBarButtonItem *)self->_cancelButton setEnabled:!spinner];
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
  submissionString = [v3 submissionString];

  v4 = [(PKPaymentSetupFieldsViewController *)self fieldForIdentifier:*MEMORY[0x1E69BC1F8]];
  submissionString2 = [v4 submissionString];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained confirmNameViewController:self enteredFirstName:submissionString lastName:submissionString2];
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