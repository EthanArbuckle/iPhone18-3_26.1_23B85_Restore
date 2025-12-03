@interface PKPeerPaymentRecurringPaymentEducationViewController
- (PKPeerPaymentRecurringPaymentEducationViewController)initWithContext:(int64_t)context transactionSourceCollection:(id)collection familyCollection:(id)familyCollection;
- (void)_requestOpenURL:(id)l;
- (void)_urlTapped;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation PKPeerPaymentRecurringPaymentEducationViewController

- (PKPeerPaymentRecurringPaymentEducationViewController)initWithContext:(int64_t)context transactionSourceCollection:(id)collection familyCollection:(id)familyCollection
{
  collectionCopy = collection;
  familyCollectionCopy = familyCollection;
  v23.receiver = self;
  v23.super_class = PKPeerPaymentRecurringPaymentEducationViewController;
  v11 = [(PKExplanationViewController *)&v23 initWithContext:context];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_transactionSourceCollection, collection);
    objc_storeStrong(&v12->_familyCollection, familyCollection);
    mEMORY[0x1E69B9020] = [MEMORY[0x1E69B9020] sharedService];
    targetDevice = [mEMORY[0x1E69B9020] targetDevice];
    account = [targetDevice account];
    account = v12->_account;
    v12->_account = account;

    mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
    associatedPassUniqueID = [(PKPeerPaymentAccount *)v12->_account associatedPassUniqueID];
    v19 = [mEMORY[0x1E69B8A58] passWithUniqueID:associatedPassUniqueID];
    paymentPass = [v19 paymentPass];
    paymentPass = v12->_paymentPass;
    v12->_paymentPass = paymentPass;
  }

  return v12;
}

- (void)viewDidLoad
{
  v23.receiver = self;
  v23.super_class = PKPeerPaymentRecurringPaymentEducationViewController;
  [(PKExplanationViewController *)&v23 viewDidLoad];
  [(PKPeerPaymentRecurringPaymentEducationViewController *)self setModalInPresentation:1];
  explanationView = [(PKExplanationViewController *)self explanationView];
  [explanationView setShowPrivacyView:0];
  [explanationView setDelegate:self];
  v4 = MEMORY[0x1E69DCAB8];
  v5 = PKPassKitUIBundle();
  v6 = [v4 imageNamed:@"Hero_Apple_Cash_Recurring" inBundle:v5 withConfiguration:0];

  [explanationView setImage:v6];
  v7 = PKLocalizedPeerPaymentRecurringString(&cfstr_RecurringPayme_7.isa);
  [explanationView setTitleText:v7];

  v8 = PKLocalizedPeerPaymentRecurringString(&cfstr_RecurringPayme_8.isa);
  v9 = PKLocalizedPeerPaymentRecurringString(&cfstr_RecurringPayme_9.isa);
  if (_UISolariumFeatureFlagEnabled())
  {
    [(PKExplanationViewController *)self setShowCancelButton:0];
    [(PKExplanationViewController *)self setShowCloseButton:1];
    [explanationView setBodyText:v8];
    [explanationView setBodyButtonText:v9];
    [explanationView setBodyButtonUsesLearnMoreStyle:1];
  }

  else
  {
    [(PKExplanationViewController *)self setShowCancelButton:1];
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = PKLocalizedPeerPaymentRecurringString(&cfstr_RecurringPayme_10.isa, &stru_1F3BD6370.isa, v8, v9);
    objc_initWeak(&location, self);
    v12 = [PKTextRangeHyperlink alloc];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __67__PKPeerPaymentRecurringPaymentEducationViewController_viewDidLoad__block_invoke;
    v20[3] = &unk_1E8010998;
    objc_copyWeak(&v21, &location);
    v13 = [(PKTextRangeHyperlink *)v12 initWithLinkText:v9 action:v20];
    [v10 addObject:v13];
    v14 = objc_alloc_init(PKMultiHyperlinkView);
    [(PKMultiHyperlinkView *)v14 setText:v11];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(PKMultiHyperlinkView *)v14 setTextColor:labelColor];

    [(PKMultiHyperlinkView *)v14 setTextAlignment:1];
    v16 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC38]);
    [(PKMultiHyperlinkView *)v14 setTextFont:v16];

    [(PKMultiHyperlinkView *)v14 setSources:v10];
    [explanationView setBodyView:v14];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  dockView = [explanationView dockView];
  primaryButton = [dockView primaryButton];
  v19 = PKLocalizedPeerPaymentRecurringString(&cfstr_RecurringPayme_11.isa);
  [primaryButton setTitle:v19 forState:0];
}

void __67__PKPeerPaymentRecurringPaymentEducationViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _urlTapped];
    WeakRetained = v2;
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = PKPeerPaymentRecurringPaymentEducationViewController;
  [(PKPeerPaymentRecurringPaymentEducationViewController *)&v3 viewDidAppear:appear];
  PKPeerPaymentRecurringPaymentSetHasShownEducationMessage();
}

- (void)_urlTapped
{
  if ([(PKPeerPaymentAccount *)self->_account termsAcceptanceRequired])
  {
    mEMORY[0x1E69B9020] = [MEMORY[0x1E69B9020] sharedService];
    targetDevice = [mEMORY[0x1E69B9020] targetDevice];
    [targetDevice updateAccountWithCompletion:&__block_literal_global_205];
  }

  else
  {
    mEMORY[0x1E69B9020] = [(PKPaymentPass *)self->_paymentPass localizedValueForFieldKey:*MEMORY[0x1E69BC128]];
    targetDevice = [MEMORY[0x1E695DFF8] URLWithString:?];
    if (targetDevice)
    {
      [(PKPeerPaymentRecurringPaymentEducationViewController *)self _requestOpenURL:targetDevice];
    }
  }
}

void __66__PKPeerPaymentRecurringPaymentEducationViewController__urlTapped__block_invoke(uint64_t a1, void *a2)
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
      v5 = &unk_1F3CC7DA8;
    }

    v6 = [MEMORY[0x1E69B9000] sharedInstance];
    [v6 presentPeerPaymentTermsAndConditionsWithAccount:v2 orientation:v5 completion:0];
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

- (void)_requestOpenURL:(id)l
{
  v4 = MEMORY[0x1E697A838];
  lCopy = l;
  v7 = [[v4 alloc] initWithURL:lCopy];

  [v7 setModalPresentationStyle:2];
  navigationController = [(PKPeerPaymentRecurringPaymentEducationViewController *)self navigationController];
  [navigationController presentViewController:v7 animated:1 completion:0];
}

- (void)explanationViewDidSelectContinue:(id)continue
{
  v12 = 0;
  v13 = 0;
  v4 = [PKPeerPaymentActionController canPerformPeerPaymentAction:3 account:self->_account unableReason:&v13 displayableError:&v12];
  v5 = v12;
  if (v4)
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __89__PKPeerPaymentRecurringPaymentEducationViewController_explanationViewDidSelectContinue___block_invoke;
    block[3] = &unk_1E8010998;
    objc_copyWeak(&v10, &location);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __89__PKPeerPaymentRecurringPaymentEducationViewController_explanationViewDidSelectContinue___block_invoke_2;
    v8[3] = &unk_1E8010970;
    v8[4] = self;
    v6 = [PKPeerPaymentActionController alertControllerForPeerPaymentActionUnableReason:v13 displayableError:v5 addCardActionHandler:v8];
    navigationController = [(PKPeerPaymentRecurringPaymentEducationViewController *)self navigationController];
    [navigationController presentViewController:v6 animated:1 completion:0];
  }
}

void __89__PKPeerPaymentRecurringPaymentEducationViewController_explanationViewDidSelectContinue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [[PKRecipientPickerViewController alloc] initWithTransactionSourceCollection:v4[135] familyCollection:v4[136] peerPaymentSendFlowType:2];
    v3 = [v4 navigationController];
    [v3 pushViewController:v2 animated:1];

    WeakRetained = v4;
  }
}

void __89__PKPeerPaymentRecurringPaymentEducationViewController_explanationViewDidSelectContinue___block_invoke_2(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) navigationController];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __89__PKPeerPaymentRecurringPaymentEducationViewController_explanationViewDidSelectContinue___block_invoke_3;
  v3[3] = &unk_1E8010998;
  objc_copyWeak(&v4, &location);
  [v2 dismissViewControllerAnimated:1 completion:v3];

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __89__PKPeerPaymentRecurringPaymentEducationViewController_explanationViewDidSelectContinue___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 139);
    if (v3)
    {
      v4 = v2;
      (*(v3 + 16))();
      v2 = v4;
    }
  }
}

@end