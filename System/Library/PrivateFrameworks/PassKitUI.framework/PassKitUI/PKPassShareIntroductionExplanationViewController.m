@interface PKPassShareIntroductionExplanationViewController
- (PKPassShareIntroductionExplanationViewController)initWithSharesController:(id)a3 context:(id)a4 delegate:(id)a5;
- (void)_loadCardArt;
- (void)_showShareUI;
- (void)explanationViewControllerDidSelectCancel:(id)a3;
- (void)explanationViewDidSelectContinue:(id)a3;
- (void)loadView;
@end

@implementation PKPassShareIntroductionExplanationViewController

- (PKPassShareIntroductionExplanationViewController)initWithSharesController:(id)a3 context:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = PKPassShareIntroductionExplanationViewController;
  v12 = [(PKExplanationViewController *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sharesController, a3);
    objc_storeStrong(&v13->_context, a4);
    objc_storeWeak(&v13->_delegate, v11);
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
  v16 = [(PKExplanationViewController *)self explanationView];
  v3 = [(PKSharedPassSharesController *)self->_sharesController pass];
  v4 = [v3 localizedDescription];
  v5 = PKLocalizedShareableCredentialString(&cfstr_ShareOneSharea_0.isa, &stru_1F3BD5BF0.isa, v4);

  [v16 setTitleText:v5];
  v6 = PKLocalizedShareableCredentialString(&cfstr_ShareCredentia.isa, &cfstr_Lu.isa, 1);
  [v16 setBodyText:v6];
  [v16 setShowPrivacyView:1];
  [v16 setTopMargin:12.0];
  [v16 setBodyDataDetectorTypes:0];
  [v16 setTitleAccessoriesEnabled:0];
  v7 = [[PKHeroCardExplanationHeaderView alloc] initWithImage:0];
  heroView = self->_heroView;
  self->_heroView = v7;

  [(PKHeroCardExplanationHeaderView *)self->_heroView setSize:4];
  [(PKHeroCardExplanationHeaderView *)self->_heroView setPadding:1];
  v9 = self->_heroView;
  v10 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(PKHeroCardExplanationHeaderView *)v9 setBackgroundColor:v10];

  [(PKHeroCardExplanationHeaderView *)self->_heroView showLoadingContent];
  [v16 setTopLogoPadding:0.0];
  [v16 setHeroView:self->_heroView];
  v11 = [MEMORY[0x1E69B7D50] pk_privacyLinkForContext:8];
  [(PKExplanationViewController *)self setPrivacyLinkController:v11];
  v12 = [v16 dockView];
  v13 = PKLocalizedShareableCredentialString(&cfstr_ShareShareable.isa);
  v14 = [v12 primaryButton];
  [v14 setTitle:v13 forState:0];

  [v16 setShowSpinner:0];
  [v12 setHidden:0];
  v15 = [v12 footerView];
  [v15 setSetUpLaterButton:0];
}

- (void)_loadCardArt
{
  passSnapshotter = self->_passSnapshotter;
  v4 = [(PKSharedPassSharesController *)self->_sharesController pass];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__PKPassShareIntroductionExplanationViewController__loadCardArt__block_invoke;
  v5[3] = &unk_1E8010A38;
  v5[4] = self;
  [(PKPassSnapshotter *)passSnapshotter snapshotWithPass:v4 size:v5 completion:142.0, 90.0];
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

- (void)explanationViewDidSelectContinue:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained passShareIntroductionExplanationViewControllerDidContinue:self];
}

- (void)explanationViewControllerDidSelectCancel:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained passShareIntroductionExplanationViewControllerDidCancel:self];
}

@end