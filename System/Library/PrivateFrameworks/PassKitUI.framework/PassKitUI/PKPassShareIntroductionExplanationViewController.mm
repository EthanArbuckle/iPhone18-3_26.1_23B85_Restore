@interface PKPassShareIntroductionExplanationViewController
- (PKPassShareIntroductionExplanationViewController)initWithSharesController:(id)controller context:(id)context delegate:(id)delegate;
- (void)_loadCardArt;
- (void)_showShareUI;
- (void)explanationViewControllerDidSelectCancel:(id)cancel;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)loadView;
@end

@implementation PKPassShareIntroductionExplanationViewController

- (PKPassShareIntroductionExplanationViewController)initWithSharesController:(id)controller context:(id)context delegate:(id)delegate
{
  controllerCopy = controller;
  contextCopy = context;
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = PKPassShareIntroductionExplanationViewController;
  v12 = [(PKExplanationViewController *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sharesController, controller);
    objc_storeStrong(&v13->_context, context);
    objc_storeWeak(&v13->_delegate, delegateCopy);
    v14 = objc_alloc_init(PKPassSnapshotter);
    passSnapshotter = v13->_passSnapshotter;
    v13->_passSnapshotter = v14;
  }

  return v13;
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = PKPassShareIntroductionExplanationViewController;
  [(PKExplanationViewController *)&v3 loadView];
  [(PKExplanationViewController *)self setExplanationViewControllerDelegate:self];
  [(PKPassShareIntroductionExplanationViewController *)self _showShareUI];
  [(PKPassShareIntroductionExplanationViewController *)self _loadCardArt];
}

- (void)_showShareUI
{
  explanationView = [(PKExplanationViewController *)self explanationView];
  pass = [(PKSharedPassSharesController *)self->_sharesController pass];
  localizedDescription = [pass localizedDescription];
  v5 = PKLocalizedShareableCredentialString(&cfstr_ShareOneSharea_0.isa, &stru_1F3BD5BF0.isa, localizedDescription);

  [explanationView setTitleText:v5];
  v6 = PKLocalizedShareableCredentialString(&cfstr_ShareCredentia.isa, &cfstr_Lu.isa, 1);
  [explanationView setBodyText:v6];
  [explanationView setShowPrivacyView:1];
  [explanationView setTopMargin:12.0];
  [explanationView setBodyDataDetectorTypes:0];
  [explanationView setTitleAccessoriesEnabled:0];
  v7 = [[PKHeroCardExplanationHeaderView alloc] initWithImage:0];
  heroView = self->_heroView;
  self->_heroView = v7;

  [(PKHeroCardExplanationHeaderView *)self->_heroView setSize:4];
  [(PKHeroCardExplanationHeaderView *)self->_heroView setPadding:1];
  v9 = self->_heroView;
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(PKHeroCardExplanationHeaderView *)v9 setBackgroundColor:systemBackgroundColor];

  [(PKHeroCardExplanationHeaderView *)self->_heroView showLoadingContent];
  [explanationView setTopLogoPadding:0.0];
  [explanationView setHeroView:self->_heroView];
  v11 = [MEMORY[0x1E69B7D50] pk_privacyLinkForContext:8];
  [(PKExplanationViewController *)self setPrivacyLinkController:v11];
  dockView = [explanationView dockView];
  v13 = PKLocalizedShareableCredentialString(&cfstr_ShareShareable.isa);
  primaryButton = [dockView primaryButton];
  [primaryButton setTitle:v13 forState:0];

  [explanationView setShowSpinner:0];
  [dockView setHidden:0];
  footerView = [dockView footerView];
  [footerView setSetUpLaterButton:0];
}

- (void)_loadCardArt
{
  passSnapshotter = self->_passSnapshotter;
  pass = [(PKSharedPassSharesController *)self->_sharesController pass];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__PKPassShareIntroductionExplanationViewController__loadCardArt__block_invoke;
  v5[3] = &unk_1E8010A38;
  v5[4] = self;
  [(PKPassSnapshotter *)passSnapshotter snapshotWithPass:pass size:v5 completion:142.0, 90.0];
}

void __64__PKPassShareIntroductionExplanationViewController__loadCardArt__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__PKPassShareIntroductionExplanationViewController__loadCardArt__block_invoke_2;
  v5[3] = &unk_1E8010A10;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t __64__PKPassShareIntroductionExplanationViewController__loadCardArt__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1112) setCardImage:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 1112);

  return [v2 hideLoadingContent];
}

- (void)explanationViewDidSelectContinue:(id)continue
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained passShareIntroductionExplanationViewControllerDidContinue:self];
}

- (void)explanationViewControllerDidSelectCancel:(id)cancel
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained passShareIntroductionExplanationViewControllerDidCancel:self];
}

@end