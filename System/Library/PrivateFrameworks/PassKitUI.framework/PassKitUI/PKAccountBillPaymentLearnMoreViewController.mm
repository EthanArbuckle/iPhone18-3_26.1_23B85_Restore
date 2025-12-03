@interface PKAccountBillPaymentLearnMoreViewController
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (PKAccountBillPaymentLearnMoreViewController)initWithAccount:(id)account;
- (id)_customerAgreementAttributedString;
- (void)_reportEventForPassIfNecessary:(id)necessary;
- (void)doneButtonTapped;
- (void)loadView;
- (void)showSpinner:(BOOL)spinner;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
@end

@implementation PKAccountBillPaymentLearnMoreViewController

- (PKAccountBillPaymentLearnMoreViewController)initWithAccount:(id)account
{
  accountCopy = account;
  v55.receiver = self;
  v55.super_class = PKAccountBillPaymentLearnMoreViewController;
  v6 = [(PKAccountBillPaymentLearnMoreViewController *)&v55 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
    [(PKAccount *)v7->_account feature];
    navigationItem = [(PKAccountBillPaymentLearnMoreViewController *)v7 navigationItem];
    if ((_UISolariumEnabled() & 1) == 0)
    {
      [navigationItem pkui_setupScrollEdgeChromelessAppearance];
      [navigationItem pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
    }

    objc_initWeak(&location, v7);
    v9 = MEMORY[0x1E69DC628];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __63__PKAccountBillPaymentLearnMoreViewController_initWithAccount___block_invoke;
    v52[3] = &unk_1E8010A60;
    objc_copyWeak(&v53, &location);
    v10 = [v9 actionWithHandler:v52];
    v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 primaryAction:v10];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [v11 setTintColor:labelColor];

    [navigationItem setRightBarButtonItem:v11];
    v13 = PKLocalizedFeatureString();
    titleText = v7->_titleText;
    v7->_titleText = v13;

    v15 = PKLocalizedFeatureString();
    subtitleText = v7->_subtitleText;
    v7->_subtitleText = v15;

    v17 = PKLocalizedFeatureString();
    customerAgreementLinkText = v7->_customerAgreementLinkText;
    v7->_customerAgreementLinkText = v17;

    v50 = v7->_customerAgreementLinkText;
    v19 = PKLocalizedFeatureString();
    v51 = accountCopy;
    customerAgreementText = v7->_customerAgreementText;
    v7->_customerAgreementText = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v22 = objc_alloc_init(PKAccountBillPaymentLearnMoreSuggestionDescription);
    v23 = PKLocalizedFeatureString();
    [(PKAccountBillPaymentLearnMoreSuggestionDescription *)v22 setTitle:v23, v50];

    v24 = PKLocalizedFeatureString();
    [(PKAccountBillPaymentLearnMoreSuggestionDescription *)v22 setMessage:v24];

    [v21 addObject:v22];
    v25 = objc_alloc_init(PKAccountBillPaymentLearnMoreSuggestionDescription);

    v26 = PKLocalizedFeatureString();
    [(PKAccountBillPaymentLearnMoreSuggestionDescription *)v25 setTitle:v26];

    v27 = PKLocalizedFeatureString();
    [(PKAccountBillPaymentLearnMoreSuggestionDescription *)v25 setMessage:v27];

    [v21 addObject:v25];
    v28 = objc_alloc_init(PKAccountBillPaymentLearnMoreSuggestionDescription);

    v29 = PKLocalizedFeatureString();
    [(PKAccountBillPaymentLearnMoreSuggestionDescription *)v28 setTitle:v29];

    v30 = PKLocalizedFeatureString();
    [(PKAccountBillPaymentLearnMoreSuggestionDescription *)v28 setMessage:v30];

    [v21 addObject:v28];
    v31 = objc_alloc_init(PKAccountBillPaymentLearnMoreSuggestionDescription);

    v32 = PKLocalizedFeatureString();
    [(PKAccountBillPaymentLearnMoreSuggestionDescription *)v31 setTitle:v32];

    v33 = PKLocalizedFeatureString();
    [(PKAccountBillPaymentLearnMoreSuggestionDescription *)v31 setMessage:v33];

    [v21 addObject:v31];
    v34 = objc_alloc_init(PKAccountBillPaymentLearnMoreSuggestionDescription);

    v35 = PKLocalizedFeatureString();
    [(PKAccountBillPaymentLearnMoreSuggestionDescription *)v34 setTitle:v35];

    v36 = PKLocalizedFeatureString();
    [(PKAccountBillPaymentLearnMoreSuggestionDescription *)v34 setMessage:v36];

    [v21 addObject:v34];
    v37 = objc_alloc_init(PKAccountBillPaymentLearnMoreSuggestionDescription);

    v38 = PKLocalizedFeatureString();
    [(PKAccountBillPaymentLearnMoreSuggestionDescription *)v37 setTitle:v38];

    v39 = PKLocalizedFeatureString();
    [(PKAccountBillPaymentLearnMoreSuggestionDescription *)v37 setMessage:v39];

    [v21 addObject:v37];
    v40 = objc_alloc_init(PKAccountBillPaymentLearnMoreSuggestionDescription);

    v41 = PKLocalizedFeatureString();
    [(PKAccountBillPaymentLearnMoreSuggestionDescription *)v40 setTitle:v41];

    v42 = PKLocalizedFeatureString();
    [(PKAccountBillPaymentLearnMoreSuggestionDescription *)v40 setMessage:v42];

    [v21 addObject:v40];
    v43 = [v21 copy];
    suggestionDescriptions = v7->_suggestionDescriptions;
    v7->_suggestionDescriptions = v43;

    v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v46 = PKLocalizedFeatureString();
    [v45 addObject:v46];
    v47 = [v45 copy];
    footnotes = v7->_footnotes;
    v7->_footnotes = v47;

    objc_destroyWeak(&v53);
    objc_destroyWeak(&location);

    accountCopy = v51;
  }

  return v7;
}

void __63__PKAccountBillPaymentLearnMoreViewController_initWithAccount___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained doneButtonTapped];
}

- (void)loadView
{
  v73 = *MEMORY[0x1E69E9840];
  v70.receiver = self;
  v70.super_class = PKAccountBillPaymentLearnMoreViewController;
  [(PKAccountBillPaymentLearnMoreViewController *)&v70 loadView];
  view = [(PKAccountBillPaymentLearnMoreViewController *)self view];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];

  v5 = objc_alloc(MEMORY[0x1E69DCEF8]);
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v10 = [v5 initWithFrame:{*MEMORY[0x1E695F058], v7, v8, v9}];
  scrollView = self->_scrollView;
  self->_scrollView = v10;

  v59 = view;
  [view addSubview:self->_scrollView];
  v12 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v12;

  v14 = self->_titleLabel;
  v15 = PKOBKHeaderTitleFont();
  [(UILabel *)v14 setFont:v15];

  v16 = self->_titleLabel;
  v17 = PKOBKHeaderTitleTextColor();
  [(UILabel *)v16 setTextColor:v17];

  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  [(UILabel *)self->_titleLabel setText:self->_titleText];
  [(UIScrollView *)self->_scrollView addSubview:self->_titleLabel];
  v18 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v18;

  v20 = self->_subtitleLabel;
  v21 = PKOBKHeaderSubtitleFont();
  [(UILabel *)v20 setFont:v21];

  v22 = self->_subtitleLabel;
  v23 = PKOBKHeaderSubtitleTextColor();
  [(UILabel *)v22 setTextColor:v23];

  [(UILabel *)self->_subtitleLabel setNumberOfLines:0];
  [(UILabel *)self->_subtitleLabel setText:self->_subtitleText];
  [(UIScrollView *)self->_scrollView addSubview:self->_subtitleLabel];
  v61 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  selfCopy = self;
  v25 = self->_suggestionDescriptions;
  v26 = [(NSArray *)v25 countByEnumeratingWithState:&v66 objects:v72 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v67;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v67 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v66 + 1) + 8 * i);
        v31 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
        v32 = PKOBKBulletTitleFont(1);
        [v31 setFont:v32];

        v33 = PKOBKBulletTitleTextColor();
        [v31 setTextColor:v33];

        [v31 setNumberOfLines:0];
        title = [v30 title];
        [v31 setText:title];

        v35 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
        v36 = PKOBKBulletSubtitleFont();
        [v35 setFont:v36];

        v37 = PKOBKBulletSubtitleTextColor();
        [v35 setTextColor:v37];

        [v35 setNumberOfLines:0];
        message = [v30 message];
        [v35 setText:message];

        v39 = objc_alloc_init(PKAccountBillPaymentLearnMoreSuggestionDescriptionLabel);
        [(PKAccountBillPaymentLearnMoreSuggestionDescriptionLabel *)v39 setTitleLabel:v31];
        [(PKAccountBillPaymentLearnMoreSuggestionDescriptionLabel *)v39 setMessageLabel:v35];
        [(UIScrollView *)self->_scrollView addSubview:v31];
        [(UIScrollView *)self->_scrollView addSubview:v35];
        [v61 addObject:v39];
      }

      v27 = [(NSArray *)v25 countByEnumeratingWithState:&v66 objects:v72 count:16];
    }

    while (v27);
  }

  v40 = [v61 copy];
  suggestionDescriptionLabels = self->_suggestionDescriptionLabels;
  self->_suggestionDescriptionLabels = v40;

  v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = selfCopy->_footnotes;
  v43 = [(NSArray *)obj countByEnumeratingWithState:&v62 objects:v71 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v63;
    v46 = *MEMORY[0x1E69DDD10];
    v47 = *MEMORY[0x1E69DDC38];
    do
    {
      for (j = 0; j != v44; ++j)
      {
        if (*v63 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v49 = *(*(&v62 + 1) + 8 * j);
        v50 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
        v51 = PKFontForDefaultDesign(v46, v47);
        [v50 setFont:v51];

        v52 = PKOBKFooterCaptionTextColor();
        [v50 setTextColor:v52];

        [v50 setNumberOfLines:0];
        [v50 setText:v49];
        [(UIScrollView *)selfCopy->_scrollView addSubview:v50];
        [v42 addObject:v50];
      }

      v44 = [(NSArray *)obj countByEnumeratingWithState:&v62 objects:v71 count:16];
    }

    while (v44);
  }

  v53 = [v42 copy];
  footnoteLabels = selfCopy->_footnoteLabels;
  selfCopy->_footnoteLabels = v53;

  v55 = [MEMORY[0x1E69DD168] pkui_plainNonInteractiveTextViewWithFrame:{v6, v7, v8, v9}];
  customerAgreementTextView = selfCopy->_customerAgreementTextView;
  selfCopy->_customerAgreementTextView = v55;

  [(UITextView *)selfCopy->_customerAgreementTextView setDelegate:selfCopy];
  [(UITextView *)selfCopy->_customerAgreementTextView setSelectable:1];
  [(UITextView *)selfCopy->_customerAgreementTextView setUserInteractionEnabled:1];
  [(UITextView *)selfCopy->_customerAgreementTextView _setInteractiveTextSelectionDisabled:1];
  [(UITextView *)selfCopy->_customerAgreementTextView setTextContainerInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
  v57 = selfCopy->_customerAgreementTextView;
  _customerAgreementAttributedString = [(PKAccountBillPaymentLearnMoreViewController *)selfCopy _customerAgreementAttributedString];
  [(UITextView *)v57 setAttributedText:_customerAgreementAttributedString];

  [(UIScrollView *)selfCopy->_scrollView addSubview:selfCopy->_customerAgreementTextView];
}

- (void)viewDidAppear:(BOOL)appear
{
  v7[1] = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = PKAccountBillPaymentLearnMoreViewController;
  [(PKAccountBillPaymentLearnMoreViewController *)&v5 viewDidAppear:appear];
  v6 = *MEMORY[0x1E69BA680];
  v7[0] = *MEMORY[0x1E69BA818];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [(PKAccountBillPaymentLearnMoreViewController *)self _reportEventForPassIfNecessary:v4];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7[1] = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = PKAccountBillPaymentLearnMoreViewController;
  [(PKAccountBillPaymentLearnMoreViewController *)&v5 viewDidDisappear:disappear];
  v6 = *MEMORY[0x1E69BA680];
  v7[0] = *MEMORY[0x1E69BA820];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [(PKAccountBillPaymentLearnMoreViewController *)self _reportEventForPassIfNecessary:v4];
}

- (void)viewDidLayoutSubviews
{
  v57 = *MEMORY[0x1E69E9840];
  view = [(PKAccountBillPaymentLearnMoreViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v46 = v8;
  v9 = PKSetupViewConstantsViewMargin();
  [view safeAreaInsets];
  [view safeAreaInsets];
  v10 = v9 + v5;
  v11 = v7 - (v9 + v9);
  [(UILabel *)self->_titleLabel frame];
  [(UILabel *)self->_titleLabel pkui_sizeThatFits:1 forceWordWrap:v11, 1.79769313e308];
  v13 = v12;
  [(UILabel *)self->_titleLabel setFrame:v10, 20.0, v11, v12];
  [(UILabel *)self->_subtitleLabel frame];
  v58.origin.y = 20.0;
  v58.origin.x = v10;
  v58.size.width = v11;
  v58.size.height = v13;
  MaxY = CGRectGetMaxY(v58);
  [(UILabel *)self->_subtitleLabel pkui_sizeThatFits:1 forceWordWrap:v11, 1.79769313e308];
  v16 = v15;
  [(UILabel *)self->_subtitleLabel setFrame:v10, MaxY, v11, v15];
  v59.origin.x = v10;
  v59.origin.y = MaxY;
  v59.size.width = v11;
  v59.size.height = v16;
  v17 = CGRectGetMaxY(v59) + 26.0;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v18 = self->_suggestionDescriptionLabels;
  v19 = [(NSArray *)v18 countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v52;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v52 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v51 + 1) + 8 * i);
        titleLabel = [v23 titleLabel];
        [titleLabel frame];
        [titleLabel pkui_sizeThatFits:1 forceWordWrap:{v11, 1.79769313e308}];
        v26 = v25;
        [titleLabel setFrame:{v10, v17, v11, v25}];
        v60.origin.x = v10;
        v60.origin.y = v17;
        v60.size.width = v7 - (v9 + v9);
        v60.size.height = v26;
        v27 = CGRectGetMaxY(v60);
        messageLabel = [v23 messageLabel];
        [messageLabel frame];
        [messageLabel pkui_sizeThatFits:1 forceWordWrap:{v11, 1.79769313e308}];
        v30 = v29;
        [messageLabel setFrame:{v10, v27, v11, v29}];
        v61.origin.x = v10;
        v61.origin.y = v27;
        v61.size.width = v7 - (v9 + v9);
        v61.size.height = v30;
        v31 = CGRectGetMaxY(v61);
        if (PKUserInterfaceIdiomSupportsLargeLayouts())
        {
          v32 = 19.0;
        }

        else
        {
          v32 = 16.0;
        }

        v17 = v31 + v32;
      }

      v20 = [(NSArray *)v18 countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v20);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v33 = self->_footnoteLabels;
  v34 = [(NSArray *)v33 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v48;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v48 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v47 + 1) + 8 * j);
        [v38 frame];
        v39 = v17 + 15.0;
        [v38 pkui_sizeThatFits:1 forceWordWrap:{v11, 1.79769313e308}];
        v41 = v40;
        [v38 setFrame:{v10, v39, v11, v40}];
        v62.origin.x = v10;
        v62.origin.y = v39;
        v62.size.width = v7 - (v9 + v9);
        v62.size.height = v41;
        v17 = CGRectGetMaxY(v62);
      }

      v35 = [(NSArray *)v33 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v35);
  }

  [(UITextView *)self->_customerAgreementTextView frame];
  v42 = v17 + 20.0;
  [(UITextView *)self->_customerAgreementTextView sizeThatFits:v11, 1.79769313e308];
  v44 = v43;
  [(UITextView *)self->_customerAgreementTextView setFrame:v10, v42, v11, v43];
  v63.origin.x = v10;
  v63.origin.y = v42;
  v63.size.width = v11;
  v63.size.height = v44;
  v45 = CGRectGetMaxY(v63) + 20.0;
  [(UIScrollView *)self->_scrollView setFrame:0.0, 0.0, v7, v46];
  [(UIScrollView *)self->_scrollView setContentSize:v7, v45];
}

- (void)doneButtonTapped
{
  if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {

    [(PKAccountBillPaymentLearnMoreViewController *)self dismissViewControllerWithTransition:9 completion:0];
  }

  else
  {

    [(PKAccountBillPaymentLearnMoreViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)showSpinner:(BOOL)spinner
{
  spinnerCopy = spinner;
  if ([(UIActivityIndicatorView *)self->_activityIndicatorView isAnimating]!= spinner)
  {
    activityIndicatorView = self->_activityIndicatorView;
    if (spinnerCopy)
    {
      if (!activityIndicatorView)
      {
        v6 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
        v7 = self->_activityIndicatorView;
        self->_activityIndicatorView = v6;

        v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:self->_activityIndicatorView];
        navigationItem = [(PKAccountBillPaymentLearnMoreViewController *)self navigationItem];
        [navigationItem setLeftBarButtonItem:v8];

        activityIndicatorView = self->_activityIndicatorView;
      }

      [(UIActivityIndicatorView *)activityIndicatorView startAnimating];
    }

    else
    {
      [(UIActivityIndicatorView *)activityIndicatorView stopAnimating];
      v10 = self->_activityIndicatorView;
      self->_activityIndicatorView = 0;

      navigationItem2 = [(PKAccountBillPaymentLearnMoreViewController *)self navigationItem];
      [navigationItem2 setLeftBarButtonItem:0];
    }
  }
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  location[3] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  lCopy = l;
  creditDetails = [(PKAccount *)self->_account creditDetails];
  termsIdentifier = [creditDetails termsIdentifier];

  if (termsIdentifier)
  {
    v12 = [PKAccountTermsAndConditionsController alloc];
    account = self->_account;
    mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
    v15 = [(PKAccountTermsAndConditionsController *)v12 initWithAccount:account webService:mEMORY[0x1E69B8EF8] context:0 termsIdentifier:termsIdentifier];
    termsController = self->_termsController;
    self->_termsController = v15;

    [(PKAccountBillPaymentLearnMoreViewController *)self showSpinner:1];
    objc_initWeak(location, self);
    v17 = self->_termsController;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __98__PKAccountBillPaymentLearnMoreViewController_textView_shouldInteractWithURL_inRange_interaction___block_invoke;
    v21[3] = &unk_1E80162F0;
    objc_copyWeak(&v22, location);
    [(PKAccountTermsAndConditionsController *)v17 termsViewControllerWithCompletion:v21];
    objc_destroyWeak(&v22);
    objc_destroyWeak(location);
  }

  else
  {
    v18 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = accountIdentifier;
      _os_log_impl(&dword_1BD026000, v18, OS_LOG_TYPE_DEFAULT, "Error: Account: %@ is missing terms and conditions. Using the value in the pass instead.", location, 0xCu);
    }
  }

  return 0;
}

void __98__PKAccountBillPaymentLearnMoreViewController_textView_shouldInteractWithURL_inRange_interaction___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained showSpinner:0];
    if (v5)
    {
      v8 = PKAlertForDisplayableErrorWithHandlers(v5, 0, 0, 0);
      v9 = [v7 navigationController];
      [v9 presentViewController:v8 animated:1 completion:0];
    }

    else if (v10)
    {
      [v7 presentViewController:v10 animated:1 completion:0];
    }
  }
}

- (id)_customerAgreementAttributedString
{
  if ([(NSString *)self->_customerAgreementText length])
  {
    v3 = [(NSString *)self->_customerAgreementText length];
    v4 = [MEMORY[0x1E695DFF8] URLWithString:&stru_1F3BD7330];
    v5 = [(NSString *)self->_customerAgreementText rangeOfString:self->_customerAgreementLinkText];
    v7 = v6;
    v8 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD10], *MEMORY[0x1E69DDC38]);
    v9 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:self->_customerAgreementText];
    linkColor = [MEMORY[0x1E69DC888] linkColor];
    [v9 pk_addLinkURL:v4 toRange:v5 withColor:v7 isUnderlined:{linkColor, 0}];

    defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v12 = [defaultParagraphStyle mutableCopy];

    [v12 setLineBreakMode:0];
    [v9 addAttribute:*MEMORY[0x1E69DB688] value:v12 range:{0, v3}];
    v13 = *MEMORY[0x1E69DB650];
    v14 = PKOBKFooterCaptionTextColor();
    [v9 addAttribute:v13 value:v14 range:{0, v3}];

    [v9 addAttribute:*MEMORY[0x1E69DB648] value:v8 range:{0, v3}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_reportEventForPassIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v4 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForAccount:self->_account];
  if (necessaryCopy && v4)
  {
    v5 = [necessaryCopy mutableCopy];
    [v5 setObject:*MEMORY[0x1E69BA598] forKey:*MEMORY[0x1E69BABE8]];
    v6 = MEMORY[0x1E69B8540];
    v7 = [v5 copy];
    [v6 subject:v4 sendEvent:v7];
  }
}

@end