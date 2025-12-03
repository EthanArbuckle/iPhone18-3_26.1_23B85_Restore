@interface PKBarcodePaymentPrivacyViewController
- (PKBarcodePaymentPrivacyViewController)initWithIssuerName:(id)name displayContext:(unint64_t)context paymentSetupContext:(int64_t)setupContext;
- (void)_dismiss;
- (void)viewDidLoad;
@end

@implementation PKBarcodePaymentPrivacyViewController

- (PKBarcodePaymentPrivacyViewController)initWithIssuerName:(id)name displayContext:(unint64_t)context paymentSetupContext:(int64_t)setupContext
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = PKBarcodePaymentPrivacyViewController;
  v10 = [(PKExplanationViewController *)&v13 initWithContext:setupContext];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_issuerName, name);
    v11->_displayContext = context;
  }

  return v11;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = PKBarcodePaymentPrivacyViewController;
  [(PKExplanationViewController *)&v11 viewDidLoad];
  explanationView = [(PKExplanationViewController *)self explanationView];
  dockView = [explanationView dockView];
  v5 = dockView;
  displayContext = self->_displayContext;
  if (displayContext == 1)
  {
    primaryButton = [dockView primaryButton];
    v8 = PKLocalizedAquamanString(&cfstr_Done.isa);
    [primaryButton setTitle:v8 forState:0];
  }

  else if (!displayContext)
  {
    [(PKExplanationViewController *)self setShowDoneButton:1];
    [v5 setPrimaryButton:0];
  }

  [(PKExplanationViewController *)self setShowCancelButton:0];
  v9 = PKLocalizedAquamanString(&cfstr_BarcodePayment_7.isa, &stru_1F3BD5BF0.isa, self->_issuerName);
  [explanationView setTitleText:v9];

  v10 = PKLocalizedAquamanString(&cfstr_BarcodePayment_8.isa, &stru_1F3BDAC30.isa, self->_issuerName, self->_issuerName, self->_issuerName);
  [explanationView setBodyText:v10];

  [explanationView setShowPrivacyView:0];
}

- (void)_dismiss
{
  presentingViewController = [(PKBarcodePaymentPrivacyViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

@end