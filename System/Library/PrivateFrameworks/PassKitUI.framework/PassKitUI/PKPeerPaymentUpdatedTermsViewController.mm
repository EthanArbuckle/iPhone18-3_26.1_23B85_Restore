@interface PKPeerPaymentUpdatedTermsViewController
- (PKPeerPaymentUpdatedTermsViewController)initWithPassUniqueID:(id)a3;
- (PKPeerPaymentUpdatedTermsViewControllerDelegate)delegate;
- (void)explanationViewControllerDidSelectCancel:(id)a3;
- (void)explanationViewDidSelectContinue:(id)a3;
- (void)loadView;
- (void)showSpinner:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation PKPeerPaymentUpdatedTermsViewController

- (PKPeerPaymentUpdatedTermsViewController)initWithPassUniqueID:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PKPeerPaymentUpdatedTermsViewController;
  v6 = [(PKExplanationViewController *)&v10 initWithContext:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uniqueID, a3);
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
  v9 = self;
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
  v3 = [(PKExplanationViewController *)self explanationView];
  v4 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentSet_5.isa);
  [v3 setTitleText:v4];

  v5 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTer.isa);
  [v3 setBodyText:v5];

  [v3 setShowPrivacyView:1];
  [v3 setDelegate:self];
  [v3 setTopMargin:12.0];
  v6 = [v3 dockView];
  v7 = [v6 footerView];

  [v7 setSetUpLaterButton:0];
}

- (void)explanationViewControllerDidSelectCancel:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained peerPaymentUpdatedTermsViewController:self didSelectContinue:0];
}

- (void)explanationViewDidSelectContinue:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained peerPaymentUpdatedTermsViewController:self didSelectContinue:1];
}

- (void)showSpinner:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKExplanationViewController *)self explanationView];
  v11 = [v5 dockView];

  v6 = [v11 primaryButton];
  [v6 setShowSpinner:v3];

  [v11 setButtonsEnabled:v3 ^ 1];
  v7 = [(PKPeerPaymentUpdatedTermsViewController *)self navigationItem];
  v8 = [v7 leftBarButtonItem];
  [v8 setEnabled:v3 ^ 1];

  v9 = [(PKPeerPaymentUpdatedTermsViewController *)self navigationItem];
  v10 = [v9 rightBarButtonItem];
  [v10 setEnabled:v3 ^ 1];
}

- (PKPeerPaymentUpdatedTermsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end