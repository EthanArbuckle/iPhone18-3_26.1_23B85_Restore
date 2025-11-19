@interface PKApplyVerifyingViewController
- (PKApplyVerifyingViewController)initWithController:(id)a3 setupDelegate:(id)a4 context:(int64_t)a5 applyPage:(id)a6 actionIdentifierToSubmit:(id)a7 termsIdentifiersToSubmit:(id)a8 odiAttributesDictionaryToSubmit:(id)a9;
- (void)_updateSubtitleWithAltTextIfNecessary;
- (void)viewDidLoad;
@end

@implementation PKApplyVerifyingViewController

- (PKApplyVerifyingViewController)initWithController:(id)a3 setupDelegate:(id)a4 context:(int64_t)a5 applyPage:(id)a6 actionIdentifierToSubmit:(id)a7 termsIdentifiersToSubmit:(id)a8 odiAttributesDictionaryToSubmit:(id)a9
{
  v21 = a7;
  v16 = a8;
  v17 = a9;
  v22.receiver = self;
  v22.super_class = PKApplyVerifyingViewController;
  v18 = [(PKApplyCollectionViewController *)&v22 initWithController:a3 setupDelegate:a4 context:a5 applyPage:a6];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_actionIdentifierToSubmit, a7);
    objc_storeStrong(&v19->_termsIdentifiersToSubmit, a8);
    objc_storeStrong(&v19->_odiAttributesDictionaryToSubmit, a9);
    v19->_minimumDelayNanoSeconds = 1000000000.0;
    [(PKApplyVerifyingViewController *)v19 _updateSubtitleWithAltTextIfNecessary];
  }

  return v19;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = PKApplyVerifyingViewController;
  [(PKApplyCollectionViewController *)&v13 viewDidLoad];
  [(PKPaymentSetupOptionsViewController *)self setShowNavigationBarSpinner:1];
  v3 = [MEMORY[0x1E695DF00] date];
  [v3 timeIntervalSince1970];
  v5 = v4;

  objc_initWeak(&location, self);
  v6 = [(PKApplyCollectionViewController *)self controller];
  actionIdentifierToSubmit = self->_actionIdentifierToSubmit;
  termsIdentifiersToSubmit = self->_termsIdentifiersToSubmit;
  odiAttributesDictionaryToSubmit = self->_odiAttributesDictionaryToSubmit;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__PKApplyVerifyingViewController_viewDidLoad__block_invoke;
  v10[3] = &unk_1E8013A88;
  objc_copyWeak(v11, &location);
  *&v11[1] = v5 * 1000000000.0;
  [v6 submitActionIdentifier:actionIdentifierToSubmit termsIdentifiers:termsIdentifiersToSubmit odiAttributesDictionary:odiAttributesDictionaryToSubmit completion:v10];

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __45__PKApplyVerifyingViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = [MEMORY[0x1E695DF00] date];
    [v8 timeIntervalSince1970];
    v10 = v9 * 1000000000.0;

    v11 = dispatch_time(0, (fmax(WeakRetained[169] - vabdd_f64(v10, *(a1 + 40)), 0.0) * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__PKApplyVerifyingViewController_viewDidLoad__block_invoke_2;
    block[3] = &unk_1E8011828;
    objc_copyWeak(&v15, (a1 + 32));
    v13 = v5;
    v14 = v6;
    dispatch_after(v11, MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v15);
  }
}

void __45__PKApplyVerifyingViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained handleNextViewController:*(a1 + 32) displayableError:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)_updateSubtitleWithAltTextIfNecessary
{
  v3 = [(PKApplyCollectionViewController *)self page];
  v4 = [v3 altSubtitle];

  v5 = [(PKApplyCollectionViewController *)self page];
  v6 = [v5 altSubtitleTimeInterval];

  if (v4 && v6 >= 1)
  {
    objc_initWeak(&location, self);
    v7 = dispatch_time(0, 1000000000 * v6);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__PKApplyVerifyingViewController__updateSubtitleWithAltTextIfNecessary__block_invoke;
    block[3] = &unk_1E80110E0;
    objc_copyWeak(&v10, &location);
    v9 = v4;
    dispatch_after(v7, MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __71__PKApplyVerifyingViewController__updateSubtitleWithAltTextIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setSubtitleText:*(a1 + 32)];
    WeakRetained = v3;
  }
}

@end