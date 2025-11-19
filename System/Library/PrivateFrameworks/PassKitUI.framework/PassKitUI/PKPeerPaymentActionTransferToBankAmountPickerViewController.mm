@interface PKPeerPaymentActionTransferToBankAmountPickerViewController
- (BOOL)_isCurrentAmountValid;
- (BOOL)_shouldShakeWithNewAmount:(id)a3;
- (BOOL)enterCurrencyAmountView:(id)a3 shouldChangeAmountFrom:(id)a4 to:(id)a5;
- (PKPeerPaymentActionTransferToBankAmountPickerViewController)initWithPaymentPass:(id)a3 webService:(id)a4 passLibraryDataProvider:(id)a5 context:(int64_t)a6;
- (void)_currentAmountDidChangeTo:(id)a3 shouldGenerateNewSuggestions:(BOOL)a4;
- (void)_nextAction;
- (void)_updateContinueButtonEnabledState;
- (void)_updateCurrentAmount:(id)a3 shouldGenerateNewSuggestions:(BOOL)a4;
- (void)_updateLayoutForKeyboardAction:(id)a3;
- (void)dealloc;
- (void)enterCurrencyAmountPassViewDidLoadPassSnapshot:(id)a3;
- (void)enterCurrencyAmountViewDidChangeAmount:(id)a3;
- (void)keyboardWillChange:(id)a3;
- (void)keyboardWillHide:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)loadView;
- (void)setCardBalance:(id)a3;
- (void)setMaxBalance:(id)a3;
- (void)setMaxLoadAmount:(id)a3;
- (void)setMinBalance:(id)a3;
- (void)setMinLoadAmount:(id)a3;
- (void)updateAccountValues;
- (void)updateFirstResponder;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willDismissViewController;
@end

@implementation PKPeerPaymentActionTransferToBankAmountPickerViewController

- (PKPeerPaymentActionTransferToBankAmountPickerViewController)initWithPaymentPass:(id)a3 webService:(id)a4 passLibraryDataProvider:(id)a5 context:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v34.receiver = self;
  v34.super_class = PKPeerPaymentActionTransferToBankAmountPickerViewController;
  v13 = [(PKPeerPaymentActionViewController *)&v34 initWithPaymentPass:v10 webService:v11 passLibraryDataProvider:v12 context:a6];
  v14 = v13;
  if (v13)
  {
    v15 = *MEMORY[0x1E695F050];
    v16 = *(MEMORY[0x1E695F050] + 16);
    v13->_lastKeyboardFrame.origin = *MEMORY[0x1E695F050];
    v13->_lastKeyboardFrame.size = v16;
    v13->_keyboardFrame.origin = v15;
    v13->_keyboardFrame.size = v16;
    v17 = [(PKPeerPaymentActionViewController *)v13 account];
    v18 = [v17 currentBalance];
    v19 = [v18 amount];
    [(PKPeerPaymentActionViewController *)v14 setCurrentAmount:v19];

    v20 = [(PKPeerPaymentActionViewController *)v14 currentAmount];
    [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)v14 _updateCurrentAmount:v20 shouldGenerateNewSuggestions:1];

    v21 = [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)v14 navigationItem];
    v22 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPer_5.isa);
    [v21 setTitle:v22];

    v23 = [(PKPeerPaymentActionViewController *)v14 cancelButton];
    [v21 setLeftBarButtonItem:v23];

    [v21 setBackButtonDisplayMode:2];
    objc_initWeak(&location, v14);
    v24 = [v11 peerPaymentService];
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __126__PKPeerPaymentActionTransferToBankAmountPickerViewController_initWithPaymentPass_webService_passLibraryDataProvider_context___block_invoke;
    v31 = &unk_1E8011158;
    objc_copyWeak(&v32, &location);
    [v24 recurringPaymentsWithCompletion:&v28];

    v25 = objc_alloc_init(MEMORY[0x1E69B8F40]);
    [v25 setEndpoint:{3, v28, v29, v30, v31}];
    [v25 setQuoteRequestDestination:2];
    [v11 prewarmDeviceScoreForAttributes:v25];
    v26 = objc_alloc_init(MEMORY[0x1E69B8F40]);
    [v26 setEndpoint:3];
    [v26 setQuoteRequestDestination:3];
    [v11 prewarmDeviceScoreForAttributes:v26];

    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

  return v14;
}

void __126__PKPeerPaymentActionTransferToBankAmountPickerViewController_initWithPaymentPass_webService_passLibraryDataProvider_context___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v10 + 1) + 8 * v7) type] == 3)
        {

          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __126__PKPeerPaymentActionTransferToBankAmountPickerViewController_initWithPaymentPass_webService_passLibraryDataProvider_context___block_invoke_2;
          block[3] = &unk_1E8010998;
          objc_copyWeak(&v9, (a1 + 32));
          dispatch_async(MEMORY[0x1E69E96A0], block);
          objc_destroyWeak(&v9);
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void __126__PKPeerPaymentActionTransferToBankAmountPickerViewController_initWithPaymentPass_webService_passLibraryDataProvider_context___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [MEMORY[0x1E696AB90] zero];
    [v4 setCurrentAmount:v2];

    v3 = [v4 currentAmount];
    [v4 _updateCurrentAmount:v3 shouldGenerateNewSuggestions:1];

    WeakRetained = v4;
  }
}

- (void)dealloc
{
  v3 = [(PKPeerPaymentActionViewController *)self webService];
  v4 = objc_alloc_init(MEMORY[0x1E69B8F40]);
  [v4 setEndpoint:3];
  [v4 setQuoteRequestDestination:2];
  [v3 unloadDeviceScoreForAttributes:v4];
  v5 = objc_alloc_init(MEMORY[0x1E69B8F40]);
  [v5 setEndpoint:3];
  [v5 setQuoteRequestDestination:3];
  [v3 unloadDeviceScoreForAttributes:v5];

  v6.receiver = self;
  v6.super_class = PKPeerPaymentActionTransferToBankAmountPickerViewController;
  [(PKPeerPaymentActionViewController *)&v6 dealloc];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentActionTransferToBankAmountPickerViewController;
  [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)&v5 viewWillAppear:a3];
  self->_visibility = 1;
  v4 = [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self view];
  [v4 setNeedsLayout];
  [v4 layoutIfNeeded];
  [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self updateFirstResponder];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentActionTransferToBankAmountPickerViewController;
  [(PKPeerPaymentActionViewController *)&v5 viewWillDisappear:a3];
  self->_visibility = 3;
  if (self->_keyboardVisible)
  {
    v4 = [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self view];
    [v4 setNeedsLayout];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentActionTransferToBankAmountPickerViewController;
  [(PKPeerPaymentActionViewController *)&v5 viewDidAppear:a3];
  self->_visibility = 2;
  if (self->_keyboardVisible)
  {
    v4 = [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self view];
    [v4 setNeedsLayout];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentActionTransferToBankAmountPickerViewController;
  [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)&v5 viewDidDisappear:a3];
  self->_visibility = 0;
  if (self->_keyboardVisible)
  {
    v4 = [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self view];
    [v4 setNeedsLayout];
  }
}

- (void)loadView
{
  v33.receiver = self;
  v33.super_class = PKPeerPaymentActionTransferToBankAmountPickerViewController;
  [(PKPeerPaymentActionViewController *)&v33 loadView];
  v3 = [(PKPeerPaymentActionViewController *)self account];
  v4 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
  scrollView = self->_scrollView;
  self->_scrollView = v4;

  v6 = [(PKPeerPaymentActionViewController *)self currentAmount];
  v29 = v3;
  v7 = [v3 currentBalance];
  v8 = [v7 currency];
  v9 = PKCurrencyAmountCreate(v6, v8);

  v10 = [PKEnterCurrencyAmountPassView alloc];
  v11 = [(PKPeerPaymentActionViewController *)self pass];
  v12 = [(PKEnterCurrencyAmountPassView *)v10 initWithCurrenyAmount:v9 pass:v11 withdrawal:1];
  amountPassView = self->_amountPassView;
  self->_amountPassView = v12;

  v14 = [(PKEnterCurrencyAmountPassView *)self->_amountPassView enterCurrencyAmountView];
  [v14 setDelegate:self];
  [v14 setClearAmountOnFirstKeyboardInput:1];
  [v14 setEnableDoneButton:1];
  if (PKUIKeyboardIsHardwareKeyboardActive())
  {
    v15 = [v14 amountTextField];
    [v15 setDisablePrediction:1];
  }

  [(PKEnterCurrencyAmountPassView *)self->_amountPassView setDelegate:self];
  v16 = [PKPaymentSetupFooterView alloc];
  v17 = [(PKPeerPaymentActionViewController *)self context];
  v18 = [(PKPaymentSetupFooterView *)v16 initWithFrame:v17 context:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  footerView = self->_footerView;
  self->_footerView = v18;

  v20 = [(PKPaymentSetupFooterView *)self->_footerView primaryButton];
  v21 = [v20 titleLabel];
  v22 = PKLocalizedPaymentString(&cfstr_Continue.isa);
  [v21 setText:v22];

  objc_initWeak(&location, self);
  v23 = MEMORY[0x1E69DC628];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __71__PKPeerPaymentActionTransferToBankAmountPickerViewController_loadView__block_invoke;
  v30[3] = &unk_1E8010A60;
  objc_copyWeak(&v31, &location);
  v24 = [v23 actionWithHandler:v30];
  [v20 addAction:v24 forControlEvents:0x2000];
  [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self _updateContinueButtonEnabledState];
  v25 = [objc_alloc(MEMORY[0x1E69DD6C8]) initWithScrollView:self->_scrollView edge:4 style:1];
  [(PKPaymentSetupFooterView *)self->_footerView addInteraction:v25];
  v26 = [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self view];
  [v26 addSubview:self->_scrollView];
  [v26 addSubview:self->_footerView];
  [(UIScrollView *)self->_scrollView addSubview:self->_amountPassView];
  v27 = [MEMORY[0x1E696AD88] defaultCenter];
  [v27 addObserver:self selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
  [v27 addObserver:self selector:sel_keyboardWillChange_ name:*MEMORY[0x1E69DE068] object:0];
  [v27 addObserver:self selector:sel_keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
  v28 = [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self view];
  [v28 setAccessibilityIdentifier:*MEMORY[0x1E69B9D70]];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

void __71__PKPeerPaymentActionTransferToBankAmountPickerViewController_loadView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _nextAction];
    WeakRetained = v2;
  }
}

- (void)viewWillLayoutSubviews
{
  v35.receiver = self;
  v35.super_class = PKPeerPaymentActionTransferToBankAmountPickerViewController;
  [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)&v35 viewWillLayoutSubviews];
  v3 = [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  [(UIScrollView *)self->_scrollView setFrame:?];
  if (self->_visibility - 1 > 1)
  {
    x = self->_lastKeyboardFrame.origin.x;
    y = self->_lastKeyboardFrame.origin.y;
    width = self->_lastKeyboardFrame.size.width;
    height = self->_lastKeyboardFrame.size.height;
  }

  else
  {
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    if (!CGRectIsNull(self->_keyboardFrame))
    {
      v12 = [v3 window];
      v13 = v12;
      if (v12)
      {
        [v12 convertRect:0 fromWindow:{self->_keyboardFrame.origin.x, self->_keyboardFrame.origin.y, self->_keyboardFrame.size.width, self->_keyboardFrame.size.height}];
        [v3 convertRect:0 fromView:?];
        x = v14;
        y = v15;
        width = v16;
        height = v17;
      }
    }
  }

  v33 = width;
  v34 = x;
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v32 = height;
  v36.size.height = height;
  v18 = 0.0;
  if (!CGRectIsNull(v36))
  {
    [v3 bounds];
    v18 = fmax(v19 + v20 - y, 0.0);
  }

  [(PKEnterCurrencyAmountPassView *)self->_amountPassView frame];
  v22 = v21;
  v24 = v23;
  [(PKEnterCurrencyAmountPassView *)self->_amountPassView sizeThatFits:v5, v7 - v18 + -15.0];
  v26 = v25;
  v27 = v5;
  v29 = v28;
  [(PKEnterCurrencyAmountPassView *)self->_amountPassView setFrame:v22, v24, v25, v28];
  v37.origin.x = v22;
  v37.origin.y = v24;
  v37.size.width = v26;
  v37.size.height = v29;
  [(UIScrollView *)self->_scrollView setContentSize:v27, v18 + CGRectGetMaxY(v37) + 15.0];
  self->_lastKeyboardFrame.origin.x = v34;
  self->_lastKeyboardFrame.origin.y = y;
  self->_lastKeyboardFrame.size.width = v33;
  self->_lastKeyboardFrame.size.height = v32;
  PKSetupViewConstantsViewMargin();
  _UISolariumFeatureFlagEnabled();
  UIRectInset();
  [(PKPaymentSetupFooterView *)self->_footerView sizeThatFits:v30, v31];
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  [(PKPaymentSetupFooterView *)self->_footerView setFrame:?];
}

- (void)willDismissViewController
{
  v4.receiver = self;
  v4.super_class = PKPeerPaymentActionTransferToBankAmountPickerViewController;
  [(PKPeerPaymentActionViewController *)&v4 willDismissViewController];
  v3 = [(PKEnterCurrencyAmountPassView *)self->_amountPassView enterCurrencyAmountView];
  [v3 dismissKeyboard];
}

- (void)updateFirstResponder
{
  v2 = [(PKEnterCurrencyAmountPassView *)self->_amountPassView enterCurrencyAmountView];
  [v2 showKeyboard];
}

- (void)updateAccountValues
{
  v16.receiver = self;
  v16.super_class = PKPeerPaymentActionTransferToBankAmountPickerViewController;
  [(PKPeerPaymentActionViewController *)&v16 updateAccountValues];
  v3 = [(PKPeerPaymentActionViewController *)self account];
  [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self _updateContinueButtonEnabledState];
  if (v3)
  {
    v4 = [v3 currentBalance];
    v5 = [v4 amount];
    v6 = [(PKEnterCurrencyAmountPassView *)self->_amountPassView enterCurrencyAmountView];
    v7 = [v4 currency];
    [v6 setCurrency:v7];

    [v6 sizeToFit];
    v8 = [(PKEnterCurrencyAmountPassView *)self->_amountPassView balanceView];
    v9 = [v4 currency];
    [v8 setCurrencyCode:v9];

    v10 = [(PKPeerPaymentActionViewController *)self maxLoadAmount];
    [v8 setMaxLoadAmount:v10];

    v11 = [(PKPeerPaymentActionViewController *)self minLoadAmount];
    [v8 setMinLoadAmount:v11];

    [v8 setMaxBalance:v5];
    v12 = [(PKPeerPaymentActionViewController *)self minBalance];
    [v8 setMinBalance:v12];

    v13 = [v4 amount];
    [v8 setCardBalance:v13];

    [v8 sizeToFit];
    [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self setMaxBalance:v5];
    v14 = [(PKPeerPaymentActionViewController *)self currentAmount];
    [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self _updateCurrentAmount:v14 shouldGenerateNewSuggestions:1];

    v15 = [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self view];
    [v15 setNeedsLayout];
  }
}

- (void)keyboardWillShow:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E69DDFA0]];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__PKPeerPaymentActionTransferToBankAmountPickerViewController_keyboardWillShow___block_invoke;
  v7[3] = &unk_1E8010E90;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self _updateLayoutForKeyboardAction:v7];
}

BOOL __80__PKPeerPaymentActionTransferToBankAmountPickerViewController_keyboardWillShow___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1136);
  v4 = *(v2 + 1144);
  v5 = *(v2 + 1152);
  v6 = *(v2 + 1160);
  *(v2 + 1129) = 1;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = (v8 + 1136);
  if (v7)
  {
    [v7 CGRectValue];
    *v9 = v10;
    v9[1] = v11;
    v9[2] = v12;
    v9[3] = v13;
  }

  else
  {
    v14 = *(MEMORY[0x1E695F050] + 16);
    *v9 = *MEMORY[0x1E695F050];
    *(v8 + 1152) = v14;
  }

  v16.origin.x = v3;
  v16.origin.y = v4;
  v16.size.width = v5;
  v16.size.height = v6;
  return !CGRectEqualToRect(*(*(a1 + 32) + 1136), v16);
}

- (void)keyboardWillChange:(id)a3
{
  if (self->_keyboardVisible)
  {
    v10 = v3;
    v11 = v4;
    v6 = [a3 userInfo];
    v7 = [v6 objectForKey:*MEMORY[0x1E69DDFA0]];

    if (v7)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __82__PKPeerPaymentActionTransferToBankAmountPickerViewController_keyboardWillChange___block_invoke;
      v8[3] = &unk_1E8010E90;
      v8[4] = self;
      v9 = v7;
      [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self _updateLayoutForKeyboardAction:v8];
    }
  }
}

BOOL __82__PKPeerPaymentActionTransferToBankAmountPickerViewController_keyboardWillChange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 + 142;
  v4 = *(v2 + 142);
  v5 = *(v2 + 143);
  v6 = *(v2 + 144);
  v7 = *(v2 + 145);
  [*(a1 + 40) CGRectValue];
  *v3 = v8;
  v3[1] = v9;
  v3[2] = v10;
  v3[3] = v11;
  v13.origin.x = v4;
  v13.origin.y = v5;
  v13.size.width = v6;
  v13.size.height = v7;
  return !CGRectEqualToRect(*(*(a1 + 32) + 1136), v13);
}

- (void)keyboardWillHide:(id)a3
{
  if (self->_keyboardVisible)
  {
    v5[5] = v3;
    v5[6] = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __80__PKPeerPaymentActionTransferToBankAmountPickerViewController_keyboardWillHide___block_invoke;
    v5[3] = &unk_1E8010EB8;
    v5[4] = self;
    [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self _updateLayoutForKeyboardAction:v5];
  }
}

BOOL __80__PKPeerPaymentActionTransferToBankAmountPickerViewController_keyboardWillHide___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v8 = *(v1 + 1136);
  *(v1 + 1129) = 0;
  v2 = (*(a1 + 32) + 1136);
  v3 = *(MEMORY[0x1E695F050] + 16);
  *v2 = *MEMORY[0x1E695F050];
  v2[1] = v3;
  *&v3 = *(*(a1 + 32) + 1136);
  v4 = *(*(a1 + 32) + 1144);
  v5 = *(*(a1 + 32) + 1152);
  v6 = *(*(a1 + 32) + 1160);
  return !CGRectEqualToRect(*&v3, v8);
}

- (void)_updateLayoutForKeyboardAction:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self viewIfLoaded];
    v6 = v5;
    if (v5)
    {
      [v5 layoutIfNeeded];
      if (v4[2](v4))
      {
        [v6 setNeedsLayout];
        v7 = MEMORY[0x1E69DD250];
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __94__PKPeerPaymentActionTransferToBankAmountPickerViewController__updateLayoutForKeyboardAction___block_invoke;
        v8[3] = &unk_1E8010970;
        v9 = v6;
        [v7 _animateUsingDefaultTimingWithOptions:134 animations:v8 completion:0];
      }
    }

    else
    {
      v4[2](v4);
    }
  }
}

- (void)enterCurrencyAmountPassViewDidLoadPassSnapshot:(id)a3
{
  v3 = [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self viewIfLoaded];
  [v3 setNeedsLayout];
}

- (void)setMaxBalance:(id)a3
{
  v4 = a3;
  v5 = [(PKPeerPaymentActionViewController *)self maxBalance];
  v8.receiver = self;
  v8.super_class = PKPeerPaymentActionTransferToBankAmountPickerViewController;
  [(PKPeerPaymentActionViewController *)&v8 setMaxBalance:v4];
  if (v5 != v4 && ([v4 isEqualToNumber:v5] & 1) == 0)
  {
    v6 = [(PKEnterCurrencyAmountPassView *)self->_amountPassView balanceView];
    [v6 setMaxBalance:v4];

    v7 = [(PKPeerPaymentActionViewController *)self currentAmount];
    [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self _updateCurrentAmount:v7 shouldGenerateNewSuggestions:1];
  }
}

- (void)setMinBalance:(id)a3
{
  v4 = a3;
  v5 = [(PKPeerPaymentActionViewController *)self minBalance];
  v8.receiver = self;
  v8.super_class = PKPeerPaymentActionTransferToBankAmountPickerViewController;
  [(PKPeerPaymentActionViewController *)&v8 setMinBalance:v4];
  if (v5 != v4 && ([v4 isEqualToNumber:v5] & 1) == 0)
  {
    v6 = [(PKEnterCurrencyAmountPassView *)self->_amountPassView balanceView];
    [v6 setMinBalance:v4];

    v7 = [(PKPeerPaymentActionViewController *)self currentAmount];
    [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self _updateCurrentAmount:v7 shouldGenerateNewSuggestions:1];
  }
}

- (void)setMaxLoadAmount:(id)a3
{
  v4 = a3;
  v5 = [(PKPeerPaymentActionViewController *)self maxLoadAmount];
  v8.receiver = self;
  v8.super_class = PKPeerPaymentActionTransferToBankAmountPickerViewController;
  [(PKPeerPaymentActionViewController *)&v8 setMaxLoadAmount:v4];
  if (v5 != v4 && ([v4 isEqualToNumber:v5] & 1) == 0)
  {
    v6 = [(PKEnterCurrencyAmountPassView *)self->_amountPassView balanceView];
    [v6 setMaxLoadAmount:v4];

    v7 = [(PKPeerPaymentActionViewController *)self currentAmount];
    [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self _updateCurrentAmount:v7 shouldGenerateNewSuggestions:1];
  }
}

- (void)setMinLoadAmount:(id)a3
{
  v4 = a3;
  v5 = [(PKPeerPaymentActionViewController *)self minLoadAmount];
  v8.receiver = self;
  v8.super_class = PKPeerPaymentActionTransferToBankAmountPickerViewController;
  [(PKPeerPaymentActionViewController *)&v8 setMinLoadAmount:v4];
  if (v5 != v4 && ([v4 isEqualToNumber:v5] & 1) == 0)
  {
    v6 = [(PKEnterCurrencyAmountPassView *)self->_amountPassView balanceView];
    [v6 setMinLoadAmount:v4];

    v7 = [(PKPeerPaymentActionViewController *)self currentAmount];
    [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self _updateCurrentAmount:v7 shouldGenerateNewSuggestions:1];
  }
}

- (void)setCardBalance:(id)a3
{
  v4 = a3;
  v5 = [(PKPeerPaymentActionViewController *)self cardBalance];
  v8.receiver = self;
  v8.super_class = PKPeerPaymentActionTransferToBankAmountPickerViewController;
  [(PKPeerPaymentActionViewController *)&v8 setCardBalance:v4];
  if (v5 != v4 && ([v4 isEqualToNumber:v5] & 1) == 0)
  {
    v6 = [(PKEnterCurrencyAmountPassView *)self->_amountPassView balanceView];
    [v6 setCardBalance:v4];

    v7 = [(PKPeerPaymentActionViewController *)self currentAmount];
    [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self _updateCurrentAmount:v7 shouldGenerateNewSuggestions:1];
  }
}

- (BOOL)enterCurrencyAmountView:(id)a3 shouldChangeAmountFrom:(id)a4 to:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self _shouldShakeWithNewAmount:v8])
  {
    [(PKEnterCurrencyAmountPassView *)self->_amountPassView shakePassView];
  }

  v9 = [(PKPeerPaymentActionViewController *)self cardBalance];
  v10 = [(PKPeerPaymentActionViewController *)self minBalance];
  v11 = [(PKPeerPaymentActionViewController *)self maxBalance];
  v12 = [(PKPeerPaymentActionViewController *)self maxLoadAmount];
  v13 = [v9 decimalNumberBySubtracting:v7];
  v14 = [v9 decimalNumberBySubtracting:v8];
  v15 = [MEMORY[0x1E696AB90] zero];
  if ([v14 compare:v15] == -1)
  {
    [MEMORY[0x1E696AB90] zero];
    v25 = v12;
    v16 = v9;
    v17 = v11;
    v18 = v8;
    v19 = v10;
    v21 = v20 = v7;
    v22 = [v13 compare:v21];

    v7 = v20;
    v10 = v19;
    v8 = v18;
    v11 = v17;
    v9 = v16;
    v12 = v25;

    if (v22 == -1)
    {
LABEL_16:
      v23 = 0;
      goto LABEL_17;
    }
  }

  else
  {
  }

  if (v12 && [v12 compare:v7] == -1 && objc_msgSend(v12, "compare:", v8) == -1 || v11 && objc_msgSend(v11, "compare:", v14) == -1 && objc_msgSend(v11, "compare:", v13) == -1)
  {
    goto LABEL_16;
  }

  v23 = !v10 || [v10 compare:v14] != 1 || objc_msgSend(v10, "compare:", v13) != 1;
LABEL_17:

  return v23;
}

- (void)enterCurrencyAmountViewDidChangeAmount:(id)a3
{
  v5 = [a3 currentAmount];
  [(PKPeerPaymentActionViewController *)self setCurrentAmount:v5];
  v4 = [(PKEnterCurrencyAmountPassView *)self->_amountPassView balanceView];
  [v4 subtractAmountFromBalance:v5];

  [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self _currentAmountDidChangeTo:v5 shouldGenerateNewSuggestions:1];
}

- (void)_updateContinueButtonEnabledState
{
  v5 = [(PKPaymentSetupFooterView *)self->_footerView primaryButton];
  v3 = [(PKPeerPaymentActionViewController *)self account];

  if (v3)
  {
    v4 = [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self _isCurrentAmountValid];
  }

  else
  {
    v4 = 0;
  }

  [v5 setEnabled:v4];
}

- (void)_nextAction
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__PKPeerPaymentActionTransferToBankAmountPickerViewController__nextAction__block_invoke;
  aBlock[3] = &unk_1E8010998;
  objc_copyWeak(&v11, &location);
  v3 = _Block_copy(aBlock);
  v4 = [(PKPeerPaymentActionViewController *)self webService];
  v5 = [v4 peerPaymentService];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__PKPeerPaymentActionTransferToBankAmountPickerViewController__nextAction__block_invoke_2;
  v7[3] = &unk_1E801B5D8;
  v7[4] = self;
  objc_copyWeak(&v9, &location);
  v6 = v3;
  v8 = v6;
  [v5 recurringPaymentsWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __74__PKPeerPaymentActionTransferToBankAmountPickerViewController__nextAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v2 = [PKPeerPaymentActionTransferToBankViewController alloc];
    v3 = [v11 pass];
    v4 = [v11 webService];
    v5 = [v11 passLibraryDataProvider];
    v6 = -[PKPeerPaymentActionTransferToBankViewController initWithPaymentPass:webService:passLibraryDataProvider:context:](v2, "initWithPaymentPass:webService:passLibraryDataProvider:context:", v3, v4, v5, [v11 context]);

    v7 = [v11 controllerAction];
    v8 = [v11 currentAmount];
    [(PKPeerPaymentActionViewController *)v6 setCurrentAmount:v8];

    v9 = [v11 delegate];
    [(PKPeerPaymentActionViewController *)v6 setDelegate:v9];

    [(PKPeerPaymentActionViewController *)v6 setControllerAction:v7];
    v10 = [v11 navigationController];
    [v10 pushViewController:v6 animated:1];

    WeakRetained = v11;
  }
}

void __74__PKPeerPaymentActionTransferToBankAmountPickerViewController__nextAction__block_invoke_2(id *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = *v22;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        if ([v7 type] == 3)
        {
          v4 = v7;
          v9 = [a1[4] account];
          v10 = [v9 currentBalance];
          v11 = [v10 amount];

          v12 = [a1[4] currentAmount];
          if ([v11 pk_isNotANumber] & 1) != 0 || (objc_msgSend(v12, "pk_isNotANumber"))
          {
            v8 = 0;
          }

          else
          {
            v13 = [v11 decimalNumberBySubtracting:v12];
            v14 = [v4 threshold];
            v8 = [v14 compare:v13] == 1;
          }

          goto LABEL_15;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_15:

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __74__PKPeerPaymentActionTransferToBankAmountPickerViewController__nextAction__block_invoke_3;
  v16[3] = &unk_1E8018FD0;
  objc_copyWeak(&v19, a1 + 6);
  v20 = v8;
  v17 = v4;
  v18 = a1[5];
  v15 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v16);

  objc_destroyWeak(&v19);
}

void __74__PKPeerPaymentActionTransferToBankAmountPickerViewController__nextAction__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (*(a1 + 56) == 1)
    {
      v3 = [*(a1 + 32) currencyThreshold];
      v4 = [v3 minimalFormattedStringValue];
      v5 = [*(a1 + 32) currencyAmount];
      v6 = [v5 minimalFormattedStringValue];
      v7 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadTran.isa, &stru_1F3BD6370.isa, v4, v6);

      v8 = MEMORY[0x1E69DC650];
      v9 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadTran_0.isa);
      v10 = [v8 alertControllerWithTitle:v9 message:v7 preferredStyle:1];

      v11 = MEMORY[0x1E69DC648];
      v12 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadTran_1.isa);
      v13 = [v11 actionWithTitle:v12 style:0 handler:&__block_literal_global_155];

      [v10 addAction:v13];
      v14 = MEMORY[0x1E69DC648];
      v15 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadTran_2.isa);
      v16 = [v14 actionWithTitle:v15 style:0 handler:&__block_literal_global_85];
      [v10 addAction:v16];

      v17 = MEMORY[0x1E69DC648];
      v18 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadTran_3.isa);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __74__PKPeerPaymentActionTransferToBankAmountPickerViewController__nextAction__block_invoke_6;
      v21[3] = &unk_1E8011248;
      v22 = *(a1 + 40);
      v19 = [v17 actionWithTitle:v18 style:0 handler:v21];
      [v10 addAction:v19];

      [v10 setPreferredAction:v13];
      v20 = [WeakRetained navigationController];
      [v20 presentViewController:v10 animated:1 completion:0];
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }
}

void __74__PKPeerPaymentActionTransferToBankAmountPickerViewController__nextAction__block_invoke_5()
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", *MEMORY[0x1E69BC5F0], *MEMORY[0x1E69BC5D8]];
  if (PKRunningInPassbook())
  {
    v0 = @"wallet://";
  }

  else
  {
    v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://%@/", *MEMORY[0x1E69BC6E8]];
  }

  v1 = MEMORY[0x1E695DFF8];
  v2 = [(__CFString *)v0 stringByAppendingString:v4];
  v3 = [v1 URLWithString:v2];

  PKOpenURL();
}

- (void)_updateCurrentAmount:(id)a3 shouldGenerateNewSuggestions:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  [(PKPeerPaymentActionViewController *)self setCurrentAmount:v8];
  v6 = [(PKEnterCurrencyAmountPassView *)self->_amountPassView balanceView];
  [v6 subtractAmountFromBalance:v8];

  v7 = [(PKEnterCurrencyAmountPassView *)self->_amountPassView enterCurrencyAmountView];
  [v7 setCurrentAmount:v8];

  [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self _currentAmountDidChangeTo:v8 shouldGenerateNewSuggestions:v4];
}

- (void)_currentAmountDidChangeTo:(id)a3 shouldGenerateNewSuggestions:(BOOL)a4
{
  [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self _updateContinueButtonEnabledState:a3];
  v5 = [(PKPeerPaymentActionTransferToBankAmountPickerViewController *)self view];
  [v5 setNeedsLayout];
}

- (BOOL)_shouldShakeWithNewAmount:(id)a3
{
  v4 = a3;
  v5 = [(PKPeerPaymentActionViewController *)self cardBalance];
  v6 = [(PKPeerPaymentActionViewController *)self minBalance];
  v7 = [(PKPeerPaymentActionViewController *)self maxLoadAmount];
  if (v4)
  {
    v8 = [MEMORY[0x1E696AB90] notANumber];
    v9 = [v4 compare:v8];

    if (v9)
    {
      v10 = [v5 decimalNumberBySubtracting:v4];
      LOBYTE(v9) = v7 && [v7 compare:v4] == -1 || v6 && objc_msgSend(v6, "compare:", v10) == 1;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)_isCurrentAmountValid
{
  v3 = [(PKPeerPaymentActionViewController *)self cardBalance];
  v4 = [(PKPeerPaymentActionViewController *)self minBalance];
  v5 = [(PKPeerPaymentActionViewController *)self maxBalance];
  v6 = [(PKPeerPaymentActionViewController *)self maxLoadAmount];
  v7 = [(PKPeerPaymentActionViewController *)self minLoadAmount];
  v8 = [(PKPeerPaymentActionViewController *)self currentAmount];
  v9 = [v3 decimalNumberBySubtracting:v8];
  v10 = [MEMORY[0x1E696AB90] notANumber];
  v11 = [v8 isEqualToNumber:v10];

  v12 = [MEMORY[0x1E696AB90] zero];
  v13 = [v8 compare:v12];

  if (!v13 || v6 && [v6 compare:v8] == -1 || v7 && objc_msgSend(v7, "compare:", v8) == 1 || v4 && objc_msgSend(v4, "compare:", v9) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11 ^ 1;
    if (v5)
    {
      v14 &= [v5 compare:v9] != -1;
    }
  }

  return v14;
}

@end