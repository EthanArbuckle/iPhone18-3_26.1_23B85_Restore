@interface PKProvisioningReaderModeViewController
- (PKProvisioningReaderModeViewController)initWithContext:(int64_t)a3 product:(id)a4 isWatch:(BOOL)a5 fieldsModel:(id)a6 delegate:(id)a7;
- (void)_done:(id)a3;
- (void)_hideBackButton:(BOOL)a3;
- (void)_invalidateCardNotFoundTimer;
- (void)_resetProvisioningState;
- (void)_setIdleTimerDisabled:(BOOL)a3;
- (void)_setupCardIngester;
- (void)_startCardNotFoundTimer;
- (void)_startIngestion;
- (void)_startReadingCard;
- (void)_startTransferringCard;
- (void)_tearDownCardIngester;
- (void)_updateToUIState:(unint64_t)a3;
- (void)cardNotFoundTimerFired:(id)a3;
- (void)contactlessCardIngester:(id)a3 didFailToIngestCardWithError:(id)a4 resetProvisioning:(BOOL)a5 isRecoverable:(BOOL)a6;
- (void)contactlessCardIngester:(id)a3 didUpdateCardIngestionStatus:(unint64_t)a4;
- (void)didTransitionTo:(int64_t)a3 loading:(BOOL)a4;
- (void)loadView;
- (void)showReaderModeError:(id)a3 isRecoverable:(BOOL)a4;
- (void)showWithProvisioningError:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKProvisioningReaderModeViewController

- (PKProvisioningReaderModeViewController)initWithContext:(int64_t)a3 product:(id)a4 isWatch:(BOOL)a5 fieldsModel:(id)a6 delegate:(id)a7
{
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = PKProvisioningReaderModeViewController;
  v16 = [(PKProvisioningReaderModeViewController *)&v19 initWithNibName:0 bundle:0];
  v17 = v16;
  if (v16)
  {
    v16->_context = a3;
    objc_storeWeak(&v16->_delegate, v15);
    v17->_isWatch = a5;
    objc_storeStrong(&v17->_fieldsModel, a6);
    objc_storeStrong(&v17->_product, a4);
    v17->_state = 0;
  }

  return v17;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PKProvisioningReaderModeViewController;
  [(PKProvisioningReaderModeViewController *)&v5 viewDidLoad];
  context = self->_context;
  v4 = [(PKProvisioningReaderModeViewController *)self view];
  PKPaymentSetupApplyContextAppearance(context, v4);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKProvisioningReaderModeViewController;
  [(PKProvisioningReaderModeViewController *)&v4 viewDidAppear:a3];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
  if (!self->_state)
  {
    [(PKProvisioningReaderModeViewController *)self _startIngestion];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = PKProvisioningReaderModeViewController;
  [(PKProvisioningReaderModeViewController *)&v7 viewDidDisappear:a3];
  [(PKProvisioningReaderModeViewController *)self _tearDownCardIngester];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained provisionedPass];
  if (v5)
  {
    state = self->_state;

    if (state == 6)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained viewControllerDidFailIngestion:self];
  }
}

- (void)loadView
{
  v16.receiver = self;
  v16.super_class = PKProvisioningReaderModeViewController;
  [(PKProvisioningReaderModeViewController *)&v16 loadView];
  v3 = [(PKProvisioningReaderModeViewController *)self view];
  v4 = PKProvisioningBackgroundColor();
  [v3 setBackgroundColor:v4];

  v5 = [[PKReaderModeProvisioningView alloc] initWithContext:self->_context product:self->_product isWatch:self->_isWatch];
  provisioningView = self->_provisioningView;
  self->_provisioningView = v5;

  v7 = [(PKPaymentSetupProduct *)self->_product imageAssets];
  v8 = [v7 plasticCardImage];

  v9 = [(PKPaymentSetupProduct *)self->_product imageAssets];
  v10 = [v9 digitalCardImage];

  if (v8)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v8];
    v13 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v10];
    [(PKReaderModeProvisioningView *)self->_provisioningView setPlasticCardImage:v12];
    [(PKReaderModeProvisioningView *)self->_provisioningView setDigitalCardImage:v13];
  }

  v14 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
  scrollView = self->_scrollView;
  self->_scrollView = v14;

  [(UIScrollView *)self->_scrollView addSubview:self->_provisioningView];
  [(UIScrollView *)self->_scrollView setShowsHorizontalScrollIndicator:0];
  [(UIScrollView *)self->_scrollView setShowsVerticalScrollIndicator:1];
  [(UIScrollView *)self->_scrollView setAlwaysBounceVertical:1];
  [v3 addSubview:self->_scrollView];
}

- (void)viewWillLayoutSubviews
{
  v17.receiver = self;
  v17.super_class = PKProvisioningReaderModeViewController;
  [(PKProvisioningReaderModeViewController *)&v17 viewWillLayoutSubviews];
  v3 = [(PKProvisioningReaderModeViewController *)self view];
  v4 = [v3 safeAreaLayoutGuide];
  [v4 layoutFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(PKReaderModeProvisioningView *)self->_provisioningView sizeThatFits:v10, 1.79769313e308];
  v14 = v13;
  v16 = v15;
  [(UIScrollView *)self->_scrollView setFrame:v6, v8, v10, v12];
  [(UIScrollView *)self->_scrollView setContentSize:v14, v16];
  [(PKReaderModeProvisioningView *)self->_provisioningView setFrame:0.0, 0.0, v14, v16];
  [(PKReaderModeProvisioningView *)self->_provisioningView layoutIfNeeded];
  [(UIScrollView *)self->_scrollView setScrollEnabled:v16 > v12];
}

- (void)_setIdleTimerDisabled:(BOOL)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_idleTimerDisabled != a3)
  {
    v3 = a3;
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"enabled";
      if (v3)
      {
        v6 = @"disabled";
      }

      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = @"ReaderModeProvisioning";
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Payment Setup has %@ the Idle Timer. (For: %@)", &v8, 0x16u);
    }

    v7 = [MEMORY[0x1E69DC668] sharedApplication];
    [v7 _setIdleTimerDisabled:v3 forReason:@"ReaderModeProvisioning"];

    self->_idleTimerDisabled = v3;
  }
}

- (void)_hideBackButton:(BOOL)a3
{
  v3 = a3;
  v4 = [(PKProvisioningReaderModeViewController *)self navigationItem];
  [v4 setHidesBackButton:v3 animated:1];
}

- (void)_updateToUIState:(unint64_t)a3
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__PKProvisioningReaderModeViewController__updateToUIState___block_invoke;
  v4[3] = &unk_1E80119C8;
  v4[4] = self;
  v4[5] = a3;
  v3 = v4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_0;
  block[3] = &unk_1E8010B50;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __59__PKProvisioningReaderModeViewController__updateToUIState___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v11 = 138412546;
    v12 = v3;
    v13 = 2048;
    v14 = v4;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "%@, Updating UI state to %lu", &v11, 0x16u);
  }

  v5 = *(a1 + 40);
  if ((v5 - 4) >= 2)
  {
    if (v5 == 1)
    {
      [*(a1 + 32) _hideBackButton:0];
    }
  }

  else
  {
    v6 = [*(a1 + 32) navigationItem];
    v7 = objc_alloc(MEMORY[0x1E69DC708]);
    v8 = PKLocalizedPaymentString(&cfstr_Next.isa);
    v9 = [v7 initWithTitle:v8 style:2 target:*(a1 + 32) action:sel__done_];

    [v6 setHidesBackButton:1];
    [v6 setRightBarButtonItem:v9];
  }

  [*(*(a1 + 32) + 1032) setState:*(a1 + 40) animated:1];
  v10 = [*(a1 + 32) view];
  [v10 setNeedsLayout];
}

- (void)_done:(id)a3
{
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained viewControllerDidComplete:self];
}

- (void)_setupCardIngester
{
  if (!self->_cardIngester)
  {
    v3 = [objc_alloc(MEMORY[0x1E69B8748]) initWithPaymentSetupProduct:self->_product delegate:self];
    cardIngester = self->_cardIngester;
    self->_cardIngester = v3;
  }
}

- (void)_tearDownCardIngester
{
  [(PKContactlessCardIngester *)self->_cardIngester invalidate];
  cardIngester = self->_cardIngester;
  self->_cardIngester = 0;

  [(PKProvisioningReaderModeViewController *)self _setIdleTimerDisabled:0];

  [(PKProvisioningReaderModeViewController *)self _invalidateCardNotFoundTimer];
}

- (void)contactlessCardIngester:(id)a3 didFailToIngestCardWithError:(id)a4 resetProvisioning:(BOOL)a5 isRecoverable:(BOOL)a6
{
  v9 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __127__PKProvisioningReaderModeViewController_contactlessCardIngester_didFailToIngestCardWithError_resetProvisioning_isRecoverable___block_invoke;
  v12[3] = &unk_1E801F508;
  v14 = a5;
  v12[4] = self;
  v13 = v9;
  v15 = a6;
  v10 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_0;
  block[3] = &unk_1E8010B50;
  v17 = v10;
  v11 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __127__PKProvisioningReaderModeViewController_contactlessCardIngester_didFailToIngestCardWithError_resetProvisioning_isRecoverable___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _invalidateCardNotFoundTimer];
  *(*(a1 + 32) + 1056) = 0;
  v2 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    WeakRetained = objc_loadWeakRetained(v2 + 125);
    [WeakRetained viewControllerDidFailIngestion:*(a1 + 32)];

    [*(a1 + 32) _resetProvisioningState];
  }

  else
  {
    [v2 _updateToUIState:0];
    v4 = *(a1 + 32);
    v5 = 0.0;
    if (*(v4 + 1048) == 5)
    {
      *(v4 + 1056) = 4;
      v4 = *(a1 + 32);
      v5 = 0.776119403;
    }

    [*(v4 + 1032) setTransferringProgress:v5 duration:0.0];
  }

  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 49);
    v11 = 136315906;
    v12 = "[PKProvisioningReaderModeViewController contactlessCardIngester:didFailToIngestCardWithError:resetProvisioning:isRecoverable:]_block_invoke";
    v13 = 2112;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 1024;
    v18 = v9;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "%s:%@ (resetProvisioning: %d, isRecoverable: %d)", &v11, 0x22u);
  }

  return [*(a1 + 32) showReaderModeError:*(a1 + 40) isRecoverable:*(a1 + 49)];
}

- (void)contactlessCardIngester:(id)a3 didUpdateCardIngestionStatus:(unint64_t)a4
{
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __95__PKProvisioningReaderModeViewController_contactlessCardIngester_didUpdateCardIngestionStatus___block_invoke;
  v9[3] = &unk_1E8012C50;
  v10 = v6;
  v11 = a4;
  v9[4] = self;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_0;
  block[3] = &unk_1E8010B50;
  v13 = v7;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __95__PKProvisioningReaderModeViewController_contactlessCardIngester_didUpdateCardIngestionStatus___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  if (v2 == 2)
  {
    v3 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __95__PKProvisioningReaderModeViewController_contactlessCardIngester_didUpdateCardIngestionStatus___block_invoke_2;
    block[3] = &unk_1E8010970;
    block[4] = *(a1 + 32);
    dispatch_after(v3, MEMORY[0x1E69E96A0], block);
    [*(a1 + 32) _invalidateCardNotFoundTimer];
    [*(a1 + 32) _hideBackButton:1];
    v4 = *(a1 + 32);
    v5 = *(v4 + 1048);
    if (v5 == 5)
    {
      v6 = *(v4 + 1032);
      v7 = 0.98;
      v8 = 7.0;
    }

    else
    {
      if (v5 != 1)
      {
        goto LABEL_9;
      }

      v6 = *(v4 + 1032);
      v7 = 0.179104478;
      v8 = 6.0;
    }

    [v6 setTransferringProgress:v7 duration:v8];
  }

  else if (v2 == 10)
  {
    [*(a1 + 32) _startCardNotFoundTimer];
  }

LABEL_9:
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    *buf = 138412802;
    v14 = v10;
    v15 = 2080;
    v16 = "[PKProvisioningReaderModeViewController contactlessCardIngester:didUpdateCardIngestionStatus:]_block_invoke";
    v17 = 2048;
    v18 = v11;
    _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "%@, %s:%lu", buf, 0x20u);
  }
}

void *__95__PKProvisioningReaderModeViewController_contactlessCardIngester_didUpdateCardIngestionStatus___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  v2 = result[131];
  v3 = v2 > 5;
  v4 = (1 << v2) & 0x2E;
  if (!v3 && v4 != 0)
  {
    return [result _updateToUIState:3];
  }

  return result;
}

- (void)cardNotFoundTimerFired:(id)a3
{
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Card not found timer fired", v5, 2u);
  }

  [(PKProvisioningReaderModeViewController *)self _updateToUIState:1];
  [(PKProvisioningReaderModeViewController *)self _invalidateCardNotFoundTimer];
}

- (void)_startCardNotFoundTimer
{
  [(PKProvisioningReaderModeViewController *)self _invalidateCardNotFoundTimer];
  v3 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_cardNotFoundTimerFired_ selector:0 userInfo:0 repeats:15.0];
  cardNotFoundTimer = self->_cardNotFoundTimer;
  self->_cardNotFoundTimer = v3;
}

- (void)_invalidateCardNotFoundTimer
{
  [(NSTimer *)self->_cardNotFoundTimer invalidate];
  cardNotFoundTimer = self->_cardNotFoundTimer;
  self->_cardNotFoundTimer = 0;
}

- (void)_startIngestion
{
  if ((self->_state | 4) == 4)
  {
    [(PKProvisioningReaderModeViewController *)self _setIdleTimerDisabled:1];
    if (!self->_cardIngester)
    {
      [(PKProvisioningReaderModeViewController *)self _setupCardIngester];
    }

    [(PKProvisioningReaderModeViewController *)self _updateToUIState:2];
    state = self->_state;
    if (state == 4)
    {

      [(PKProvisioningReaderModeViewController *)self _startTransferringCard];
    }

    else if (!state)
    {

      [(PKProvisioningReaderModeViewController *)self _startReadingCard];
    }
  }
}

- (void)_startReadingCard
{
  if (self->_state)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Warning! Attempted to ingestCard: while currently ingesting", buf, 2u);
    }

    [(PKProvisioningReaderModeViewController *)self contactlessCardIngester:self->_cardIngester didFailToIngestCardWithError:0 resetProvisioning:1 isRecoverable:1];
  }

  else
  {
    self->_state = 1;
    objc_initWeak(buf, self);
    cardIngester = self->_cardIngester;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __59__PKProvisioningReaderModeViewController__startReadingCard__block_invoke;
    v5[3] = &unk_1E801F530;
    objc_copyWeak(&v6, buf);
    [(PKContactlessCardIngester *)cardIngester ingestCardWithSuccessHandler:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(buf);
  }
}

void __59__PKProvisioningReaderModeViewController__startReadingCard__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__PKProvisioningReaderModeViewController__startReadingCard__block_invoke_2;
  v6[3] = &unk_1E80110E0;
  objc_copyWeak(&v8, (a1 + 32));
  v7 = v3;
  v4 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_0;
  block[3] = &unk_1E8010B50;
  v10 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
}

void __59__PKProvisioningReaderModeViewController__startReadingCard__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained _invalidateCardNotFoundTimer];
    objc_storeStrong(v5 + 134, *(a1 + 32));
    v3 = [objc_alloc(MEMORY[0x1E69B8BB0]) initWithPaymentSetupProduct:v5[127] cardSessionToken:v5[134]];
    v5[131] = 2;
    v4 = objc_loadWeakRetained(v5 + 125);
    [v4 provisionWithFieldModel:v5[126] paymentCredential:v3];

    WeakRetained = v5;
  }
}

- (void)_startTransferringCard
{
  if (self->_state == 4)
  {
    self->_state = 5;
    cardIngester = self->_cardIngester;
    cardSessionToken = self->_cardSessionToken;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __64__PKProvisioningReaderModeViewController__startTransferringCard__block_invoke;
    v7[3] = &unk_1E8010970;
    v7[4] = self;
    [(PKContactlessCardIngester *)cardIngester ingestCardWithCardSessionToken:cardSessionToken successHandler:v7];
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Warning! attempting to ingestCardWithCardSessionToken: while currently ingesting", v6, 2u);
    }

    [(PKProvisioningReaderModeViewController *)self contactlessCardIngester:self->_cardIngester didFailToIngestCardWithError:0 resetProvisioning:1 isRecoverable:1];
  }
}

void __64__PKProvisioningReaderModeViewController__startTransferringCard__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __64__PKProvisioningReaderModeViewController__startTransferringCard__block_invoke_2;
  v2[3] = &unk_1E8010970;
  v2[4] = *(a1 + 32);
  v1 = v2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_0;
  block[3] = &unk_1E8010B50;
  v4 = v1;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __64__PKProvisioningReaderModeViewController__startTransferringCard__block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 1048) = 6;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1000));
  v3 = [WeakRetained provisionedPass];

  v4 = [v3 fieldForKey:*MEMORY[0x1E69BC0E8]];
  if (v4)
  {
    v5 = 5;
  }

  else
  {
    v5 = 4;
  }

  [*(*(a1 + 32) + 1032) setTransferringProgress:1.0 duration:0.5];
  v6 = dispatch_time(0, 500000000);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__PKProvisioningReaderModeViewController__startTransferringCard__block_invoke_3;
  v7[3] = &unk_1E80119C8;
  v7[4] = *(a1 + 32);
  v7[5] = v5;
  dispatch_after(v6, MEMORY[0x1E69E96A0], v7);
  [*(a1 + 32) _tearDownCardIngester];
}

- (void)_resetProvisioningState
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__PKProvisioningReaderModeViewController__resetProvisioningState__block_invoke;
  v3[3] = &unk_1E8010970;
  v3[4] = self;
  v2 = v3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_0;
  block[3] = &unk_1E8010B50;
  v5 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __65__PKProvisioningReaderModeViewController__resetProvisioningState__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateToUIState:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1072);
  *(v2 + 1072) = 0;

  *(*(a1 + 32) + 1048) = 0;
  v4 = *(*(a1 + 32) + 1032);

  return [v4 setTransferringProgress:0.0 duration:0.0];
}

- (void)showReaderModeError:(id)a3 isRecoverable:(BOOL)a4
{
  v4 = a4;
  v13 = *MEMORY[0x1E69E9840];
  self->_state = self->_stateOnRetry;
  self->_stateOnRetry = 0;
  reporter = self->_reporter;
  v7 = a3;
  [(PKProvisioningAnalyticsSessionUIReporter *)reporter reportError:v7 context:0];
  if (v4)
  {
    v8 = 3;
  }

  else
  {
    v8 = 4;
  }

  v9 = [MEMORY[0x1E69B90E8] errorWithUnderlyingError:v7 defaultSeverity:v8];

  v10 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Reader mode provisioning failed with error: %@", &v11, 0xCu);
  }

  [(PKProvisioningReaderModeViewController *)self showWithProvisioningError:v9];
  [(PKProvisioningReaderModeViewController *)self _hideBackButton:0];
}

- (void)showWithProvisioningError:(id)a3
{
  v4 = a3;
  [(PKProvisioningReaderModeViewController *)self _setIdleTimerDisabled:0];
  [(PKProvisioningReaderModeViewController *)self _hideBackButton:0];
  if (([v4 hasLocalizedTitleAndMessage] & 1) == 0)
  {
    v5 = PKLocalizedPaymentString(&cfstr_CouldNotAddCar.isa);
    [v4 setLocalizedTitle:v5];

    v6 = PKLocalizedPaymentString(&cfstr_CouldNotAddCar_0.isa);
    [v4 setLocalizedMessage:v6];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__PKProvisioningReaderModeViewController_showWithProvisioningError___block_invoke;
  v10[3] = &unk_1E8010970;
  v10[4] = self;
  v8[4] = self;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__PKProvisioningReaderModeViewController_showWithProvisioningError___block_invoke_2;
  v9[3] = &unk_1E8010970;
  v9[4] = self;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__PKProvisioningReaderModeViewController_showWithProvisioningError___block_invoke_3;
  v8[3] = &unk_1E8010970;
  v7 = [MEMORY[0x1E69DC650] alertForErrorWithError:v4 acknowledgeButtonText:0 exitButtonText:0 onAcknowledge:v10 onExit:v9 onTryAgain:v8];
  [(PKProvisioningReaderModeViewController *)self presentViewController:v7 animated:1 completion:0];
}

void __68__PKProvisioningReaderModeViewController_showWithProvisioningError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1000));
  [WeakRetained viewControllerDidCancel:*(a1 + 32)];
}

void __68__PKProvisioningReaderModeViewController_showWithProvisioningError___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1000));
  [WeakRetained viewControllerDidComplete:*(a1 + 32)];
}

- (void)didTransitionTo:(int64_t)a3 loading:(BOOL)a4
{
  if (a4)
  {
    [(PKProvisioningReaderModeViewController *)self _updateToUIState:3];
    [(PKProvisioningReaderModeViewController *)self _setIdleTimerDisabled:0];
    [(PKProvisioningReaderModeViewController *)self _hideBackButton:1];
    if (a3 >= 6)
    {
      if ((a3 - 6) >= 3)
      {
        return;
      }

      provisioningView = self->_provisioningView;
      v7 = 0.776119403;
    }

    else
    {
      provisioningView = self->_provisioningView;
      v7 = 0.537313433;
    }

    [(PKReaderModeProvisioningView *)provisioningView setTransferringProgress:v7 duration:12.0];
  }

  else if (a3 == 8)
  {
    self->_state = 4;

    [(PKProvisioningReaderModeViewController *)self _startTransferringCard];
  }

  else
  {

    [(PKProvisioningReaderModeViewController *)self _resetProvisioningState];
  }
}

@end