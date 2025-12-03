@interface PKPeerPaymentUpdatedTermsViewController
- (PKPeerPaymentUpdatedTermsViewController)initWithPassUniqueID:(id)d;
- (PKPeerPaymentUpdatedTermsViewControllerDelegate)delegate;
- (void)explanationViewControllerDidSelectCancel:(id)cancel;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)loadView;
- (void)showSpinner:(BOOL)spinner;
- (void)viewDidLoad;
@end

@implementation PKPeerPaymentUpdatedTermsViewController

- (PKPeerPaymentUpdatedTermsViewController)initWithPassUniqueID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = PKPeerPaymentUpdatedTermsViewController;
  v6 = [(PKExplanationViewController *)&v10 initWithContext:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uniqueID, d);
    [(PKExplanationViewController *)v7 setShowCancelButton:1];
    [(PKExplanationViewController *)v7 setExplanationViewControllerDelegate:v7];
    v8 = [MEMORY[0x1E69B7D50] pk_privacyLinkForContext:2];
    [(PKExplanationViewController *)v7 setPrivacyLinkController:v8];
  }

  return v7;
}

- (void)loadView
{
  v10.receiver = self;
  v10.super_class = PKPeerPaymentUpdatedTermsViewController;
  [(PKExplanationViewController *)&v10 loadView];
  v3 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [v3 setAccessibilityIgnoresInvertColors:1];
  v4 = objc_alloc_init(PKPassSnapshotter);
  uniqueID = self->_uniqueID;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__PKPeerPaymentUpdatedTermsViewController_loadView__block_invoke;
  v7[3] = &unk_1E8010AB0;
  v8 = v3;
  selfCopy = self;
  v6 = v3;
  [(PKPassSnapshotter *)v4 snapshotWithUniqueID:uniqueID size:4087 suppressedContent:v7 completion:257.0, 157.0];
}

void __51__PKPeerPaymentUpdatedTermsViewController_loadView__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__PKPeerPaymentUpdatedTermsViewController_loadView__block_invoke_2;
  block[3] = &unk_1E8010A88;
  v6 = *(a1 + 32);
  v7 = v3;
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __51__PKPeerPaymentUpdatedTermsViewController_loadView__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setImage:*(a1 + 40)];
  [*(a1 + 32) sizeToFit];
  v2 = [*(a1 + 48) explanationView];
  [v2 setHeroView:*(a1 + 32)];

  v3 = [*(a1 + 48) viewIfLoaded];
  [v3 setNeedsLayout];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = PKPeerPaymentUpdatedTermsViewController;
  [(PKExplanationViewController *)&v8 viewDidLoad];
  explanationView = [(PKExplanationViewController *)self explanationView];
  v4 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentSet_5.isa);
  [explanationView setTitleText:v4];

  v5 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTer.isa);
  [explanationView setBodyText:v5];

  [explanationView setShowPrivacyView:1];
  [explanationView setDelegate:self];
  [explanationView setTopMargin:12.0];
  dockView = [explanationView dockView];
  footerView = [dockView footerView];

  [footerView setSetUpLaterButton:0];
}

- (void)explanationViewControllerDidSelectCancel:(id)cancel
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained peerPaymentUpdatedTermsViewController:self didSelectContinue:0];
}

- (void)explanationViewDidSelectContinue:(id)continue
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained peerPaymentUpdatedTermsViewController:self didSelectContinue:1];
}

- (void)showSpinner:(BOOL)spinner
{
  spinnerCopy = spinner;
  explanationView = [(PKExplanationViewController *)self explanationView];
  dockView = [explanationView dockView];

  primaryButton = [dockView primaryButton];
  [primaryButton setShowSpinner:spinnerCopy];

  [dockView setButtonsEnabled:spinnerCopy ^ 1];
  navigationItem = [(PKPeerPaymentUpdatedTermsViewController *)self navigationItem];
  leftBarButtonItem = [navigationItem leftBarButtonItem];
  [leftBarButtonItem setEnabled:spinnerCopy ^ 1];

  navigationItem2 = [(PKPeerPaymentUpdatedTermsViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem2 rightBarButtonItem];
  [rightBarButtonItem setEnabled:spinnerCopy ^ 1];
}

- (PKPeerPaymentUpdatedTermsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end