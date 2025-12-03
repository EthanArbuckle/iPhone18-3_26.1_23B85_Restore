@interface PKPeerPaymentAddAssociatedAccountIdentityVerificationExplanationViewController
- (PKPeerPaymentAddAssociatedAccountIdentityVerificationExplanationViewController)initWithPeerPaymentSetupFlowController:(id)controller;
- (void)explanationViewControllerDidSelectCancel:(id)cancel;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)viewDidLoad;
@end

@implementation PKPeerPaymentAddAssociatedAccountIdentityVerificationExplanationViewController

- (PKPeerPaymentAddAssociatedAccountIdentityVerificationExplanationViewController)initWithPeerPaymentSetupFlowController:(id)controller
{
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = PKPeerPaymentAddAssociatedAccountIdentityVerificationExplanationViewController;
  v6 = -[PKExplanationViewController initWithContext:](&v13, sel_initWithContext_, [controllerCopy context]);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, controller);
    explanationView = [(PKExplanationViewController *)v7 explanationView];
    passSnapShot = [(PKPeerPaymentSetupFlowController *)v7->_controller passSnapShot];
    [explanationView setImage:passSnapShot];

    imageView = [explanationView imageView];
    [imageView setAccessibilityIgnoresInvertColors:1];

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
  configuration = [(PKPeerPaymentSetupFlowController *)self->_controller configuration];
  peerPaymentSetupConfigurationType = [configuration peerPaymentSetupConfigurationType];

  if (peerPaymentSetupConfigurationType == 1)
  {
    configuration2 = [(PKPeerPaymentSetupFlowController *)self->_controller configuration];
  }

  else
  {
    configuration2 = 0;
  }

  familyMember = [configuration2 familyMember];
  explanationView = [(PKExplanationViewController *)self explanationView];
  v8 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd_9.isa);
  [explanationView setTitleText:v8];

  firstName = [familyMember firstName];
  v10 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd_10.isa, &stru_1F3BD5BF0.isa, firstName);
  [explanationView setBodyText:v10];

  [explanationView setShowPrivacyView:1];
  [explanationView setTopMargin:12.0];
  [explanationView setBodyDataDetectorTypes:0];
  dockView = [explanationView dockView];
  footerView = [dockView footerView];
  [footerView setSetUpLaterButton:0];
}

- (void)explanationViewControllerDidSelectCancel:(id)cancel
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

- (void)explanationViewDidSelectContinue:(id)continue
{
  continueHandler = self->_continueHandler;
  if (continueHandler)
  {
    continueHandler[2]();
  }
}

@end