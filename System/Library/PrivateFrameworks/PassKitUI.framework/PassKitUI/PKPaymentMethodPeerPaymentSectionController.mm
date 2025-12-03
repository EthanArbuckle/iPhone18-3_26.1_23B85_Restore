@interface PKPaymentMethodPeerPaymentSectionController
- (Class)supplementaryRegistrationClassForKind:(id)kind sectionIdentifier:(id)identifier;
- (NSArray)identifiers;
- (PKPaymentMethodPeerPaymentSectionController)initWithDelegate:(id)delegate request:(id)request useAppleCashBalance:(BOOL)balance;
- (id)cellRegistrationForItem:(id)item;
- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)configureSupplementaryRegistration:(id)registration elementKind:(id)kind sectionIdentifier:(id)identifier;
- (void)paymentMethodCellDidToggleItem:(id)item;
@end

@implementation PKPaymentMethodPeerPaymentSectionController

- (PKPaymentMethodPeerPaymentSectionController)initWithDelegate:(id)delegate request:(id)request useAppleCashBalance:(BOOL)balance
{
  delegateCopy = delegate;
  requestCopy = request;
  v21.receiver = self;
  v21.super_class = PKPaymentMethodPeerPaymentSectionController;
  v10 = [(PKPaymentMethodPeerPaymentSectionController *)&v21 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_delegate, delegateCopy);
    objc_storeStrong(&v11->_request, request);
    v11->_useAppleCashBalance = balance;
    mEMORY[0x1E69B9000] = [MEMORY[0x1E69B9000] sharedInstance];
    account = [mEMORY[0x1E69B9000] account];
    account = v11->_account;
    v11->_account = account;

    mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
    associatedPassUniqueID = [(PKPeerPaymentAccount *)v11->_account associatedPassUniqueID];
    v17 = [mEMORY[0x1E69B8A58] passWithUniqueID:associatedPassUniqueID];
    paymentPass = [v17 paymentPass];
    peerPaymentPass = v11->_peerPaymentPass;
    v11->_peerPaymentPass = paymentPass;
  }

  return v11;
}

- (NSArray)identifiers
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"peerPayment";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(PKPaymentRequest *)self->_request isPeerPaymentRequest]&& [(PKPeerPaymentAccount *)self->_account supportsPreserveCurrentBalance])
  {
    mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
    peerPaymentPassUniqueID = [mEMORY[0x1E69B8A58] peerPaymentPassUniqueID];
    if (self->_peerPaymentPass)
    {
      v9 = [[PKPaymentMethodSelectionItem alloc] initWithIdentifier:peerPaymentPassUniqueID];
      [(PKPaymentMethodSelectionItem *)v9 setPaymentPass:self->_peerPaymentPass];
      currentBalance = [(PKPeerPaymentAccount *)self->_account currentBalance];
      [(PKPaymentMethodSelectionItem *)v9 setBalance:currentBalance];

      [(PKPaymentMethodSelectionItem *)v9 setSelected:self->_useAppleCashBalance];
      [v6 addObject:v9];
    }
  }

  v11 = [v6 copy];
  [v5 appendItems:v11];

  return v5;
}

- (id)cellRegistrationForItem:(id)item
{
  v4 = MEMORY[0x1E69DC800];
  v5 = objc_opt_class();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__PKPaymentMethodPeerPaymentSectionController_cellRegistrationForItem___block_invoke;
  v8[3] = &unk_1E801A970;
  v8[4] = self;
  v6 = [v4 registrationWithCellClass:v5 configurationHandler:v8];

  return v6;
}

- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier
{
  v4 = MEMORY[0x1E69DC7E0];
  environmentCopy = environment;
  v6 = [[v4 alloc] initWithAppearance:2];
  [v6 setFooterMode:1];
  v7 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v6 layoutEnvironment:environmentCopy];

  return v7;
}

- (Class)supplementaryRegistrationClassForKind:(id)kind sectionIdentifier:(id)identifier
{
  kindCopy = kind;
  identifierCopy = identifier;
  v7 = *MEMORY[0x1E69DDC00];
  v8 = kindCopy;
  v9 = v8;
  if (v7 != v8 && v8 && v7)
  {
    [v8 isEqualToString:v7];
  }

  else
  {
  }

  v10 = objc_opt_class();

  return v10;
}

- (void)configureSupplementaryRegistration:(id)registration elementKind:(id)kind sectionIdentifier:(id)identifier
{
  registrationCopy = registration;
  kindCopy = kind;
  identifierCopy = identifier;
  v11 = *MEMORY[0x1E69DDC00];
  v12 = kindCopy;
  v13 = v12;
  if (v11 == v12)
  {
  }

  else
  {
    if (!v12 || !v11)
    {

      goto LABEL_9;
    }

    v14 = [v12 isEqualToString:v11];

    if (!v14)
    {
      goto LABEL_9;
    }
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = PKLocalizedPeerPaymentRecurringString(&cfstr_PaymentSheetPa.isa);
  v17 = PKLocalizedPeerPaymentRecurringString(&cfstr_PaymentSheetPa_1.isa);
  v18 = PKLocalizedPeerPaymentRecurringString(&cfstr_PaymentSheetPa_0.isa, &stru_1F3BD6370.isa, v17, v16);
  objc_initWeak(&location, self);
  v19 = [PKTextRangeHyperlink alloc];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __112__PKPaymentMethodPeerPaymentSectionController_configureSupplementaryRegistration_elementKind_sectionIdentifier___block_invoke;
  v24[3] = &unk_1E80110E0;
  objc_copyWeak(&v25, &location);
  v24[4] = self;
  v20 = [(PKTextRangeHyperlink *)v19 initWithLinkText:v16 action:v24];
  [v15 addObject:v20];
  v21 = registrationCopy;
  [v21 edgeInsets];
  v23 = v22;
  [v21 edgeInsets];
  [v21 setEdgeInsets:{0.0, v23, 0.0}];
  [v21 setText:v18];
  [v21 setTextAlignment:4];
  [v21 setSources:v15];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

LABEL_9:
}

void __112__PKPaymentMethodPeerPaymentSectionController_configureSupplementaryRegistration_elementKind_sectionIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    if ([*(*(a1 + 32) + 32) termsAcceptanceRequired])
    {
      v3 = [MEMORY[0x1E69B9020] sharedService];
      v4 = [v3 targetDevice];
      [v4 updateAccountWithCompletion:&__block_literal_global_124];
    }

    else
    {
      v3 = [v6[2] localizedValueForFieldKey:*MEMORY[0x1E69BC128]];
      v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
      if (v4)
      {
        v5 = objc_loadWeakRetained(v6 + 1);
        [v5 requestOpenURL:v4];
      }
    }

    WeakRetained = v6;
  }
}

void __112__PKPaymentMethodPeerPaymentSectionController_configureSupplementaryRegistration_elementKind_sectionIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    if (PKIsPad())
    {
      v3 = MEMORY[0x1E696AD98];
      v4 = [MEMORY[0x1E69DC668] sharedApplication];
      v5 = [v3 numberWithInteger:{objc_msgSend(v4, "statusBarOrientation")}];
    }

    else
    {
      v5 = &unk_1F3CC7760;
    }

    v6 = [MEMORY[0x1E69B9000] sharedInstance];
    [v6 presentPeerPaymentTermsAndConditionsWithAccount:v2 orientation:v5 completion:&__block_literal_global_218_0];
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Cannot present terms acceptance flow because the account is nil", v7, 2u);
    }
  }
}

void __112__PKPaymentMethodPeerPaymentSectionController_configureSupplementaryRegistration_elementKind_sectionIdentifier___block_invoke_215()
{
  v0 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1BD026000, v0, OS_LOG_TYPE_DEFAULT, "Presented Terms & Conditions acceptance flow", v1, 2u);
  }
}

- (void)paymentMethodCellDidToggleItem:(id)item
{
  self->_useAppleCashBalance = [item isSelected];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained toggledUseAppleCashBalance:self->_useAppleCashBalance];

  settings = [(PKPaymentPass *)self->_peerPaymentPass settings];
  useAppleCashBalance = self->_useAppleCashBalance;
  if (((settings >> 11) & 1) == useAppleCashBalance)
  {
    v7 = settings & 0xFFFFFFFFFFFFF7FFLL;
    v8 = !useAppleCashBalance;
    v9 = 2048;
    if (!v8)
    {
      v9 = 0;
    }

    peerPaymentPass = self->_peerPaymentPass;

    [(PKPaymentPass *)peerPaymentPass setSettings:v9 | v7];
  }
}

@end