@interface PKPeerPaymentAddAssociatedAccountIdentityVerificationExplanationViewController
- (PKPeerPaymentAddAssociatedAccountIdentityVerificationExplanationViewController)initWithPeerPaymentSetupFlowController:(id)a3;
- (void)explanationViewControllerDidSelectCancel:(id)a3;
- (void)explanationViewDidSelectContinue:(id)a3;
- (void)viewDidLoad;
@end

@implementation PKPeerPaymentAddAssociatedAccountIdentityVerificationExplanationViewController

- (PKPeerPaymentAddAssociatedAccountIdentityVerificationExplanationViewController)initWithPeerPaymentSetupFlowController:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = PKPeerPaymentAddAssociatedAccountIdentityVerificationExplanationViewController;
  v6 = -[PKExplanationViewController initWithContext:](&v13, sel_initWithContext_, [v5 context]);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, a3);
    v8 = [(PKExplanationViewController *)v7 explanationView];
    v9 = [(PKPeerPaymentSetupFlowController *)v7->_controller passSnapShot];
    [v8 setImage:v9];

    v10 = [v8 imageView];
    [v10 setAccessibilityIgnoresInvertColors:1];

    v11 = [MEMORY[0x1E69B7D50] pk_privacyLinkForContext:2];
    [(PKExplanationViewController *)v7 setPrivacyLinkController:v11];

    [(PKExplanationViewController *)v7 setShowDoneButton:0];
    [(PKExplanationViewController *)v7 setShowCancelButton:1];
    [(PKExplanationViewController *)v7 setExplanationViewControllerDelegate:v7];
  }

  return v7;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = PKPeerPaymentAddAssociatedAccountIdentityVerificationExplanationViewController;
  [(PKExplanationViewController *)&v13 viewDidLoad];
  v3 = [(PKPeerPaymentSetupFlowController *)self->_controller configuration];
  v4 = [v3 peerPaymentSetupConfigurationType];

  if (v4 == 1)
  {
    v5 = [(PKPeerPaymentSetupFlowController *)self->_controller configuration];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 familyMember];
  v7 = [(PKExplanationViewController *)self explanationView];
  v8 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd_9.isa);
  [v7 setTitleText:v8];

  v9 = [v6 firstName];
  v10 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd_10.isa, &stru_1F3BD5BF0.isa, v9);
  [v7 setBodyText:v10];

  [v7 setShowPrivacyView:1];
  [v7 setTopMargin:12.0];
  [v7 setBodyDataDetectorTypes:0];
  v11 = [v7 dockView];
  v12 = [v11 footerView];
  [v12 setSetUpLaterButton:0];
}

- (void)explanationViewControllerDidSelectCancel:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __123__PKPeerPaymentAddAssociatedAccountIdentityVerificationExplanationViewController_explanationViewControllerDidSelectCancel___block_invoke;
  v3[3] = &unk_1E8010970;
  v3[4] = self;
  [(PKPeerPaymentAddAssociatedAccountIdentityVerificationExplanationViewController *)self dismissViewControllerAnimated:1 completion:v3];
}

uint64_t __123__PKPeerPaymentAddAssociatedAccountIdentityVerificationExplanationViewController_explanationViewControllerDidSelectCancel___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 1088);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)explanationViewDidSelectContinue:(id)a3
{
  continueHandler = self->_continueHandler;
  if (continueHandler)
  {
    continueHandler[2]();
  }
}

@end