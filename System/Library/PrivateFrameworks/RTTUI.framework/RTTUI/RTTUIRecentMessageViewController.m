@interface RTTUIRecentMessageViewController
+ (id)viewControllerForCall:(id)a3;
- (id)contactDisplayImage;
- (id)contactDisplayString;
- (id)currentContactPath;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_scrollToBottomIfNecessary;
- (void)addTranscriptionText:(id)a3 isNew:(BOOL)a4;
- (void)addUtterance:(id)a3;
- (void)deviceDidReceiveString:(id)a3 forUtterance:(id)a4;
- (void)didSendString:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)setCall:(id)a3;
- (void)setupUI;
- (void)updateContactUI;
- (void)updateMessageUI;
- (void)updateVoiceOverAnnouncement:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation RTTUIRecentMessageViewController

+ (id)viewControllerForCall:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(RTTUIRecentMessageViewController);
  v5 = +[RTTUIConversationControllerCoordinator sharedInstance];
  [v5 addRecentMessageController:v4];

  [(RTTUIRecentMessageViewController *)v4 setCall:v3];

  return v4;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = RTTUIRecentMessageViewController;
  [(RTTUIRecentMessageViewController *)&v6 viewDidLoad];
  [(RTTUIRecentMessageViewController *)self setupUI];
  v3 = [(RTTUIRecentMessageViewController *)self view];
  [v3 setAccessibilityContainerType:4];

  v4 = [(RTTUIRecentMessageViewController *)self view];
  v5 = ttyLocString();
  [v4 setAccessibilityLabel:v5];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x277D85DE8];
  v5 = AXLogRTT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = self;
    _os_log_impl(&dword_261725000, v5, OS_LOG_TYPE_INFO, "RTT recent message controller will appear: %@", buf, 0xCu);
  }

  v10.receiver = self;
  v10.super_class = RTTUIRecentMessageViewController;
  [(RTTUIRecentMessageViewController *)&v10 viewWillAppear:v3];
  v6 = [MEMORY[0x277D440C8] sharedInstance];
  [v6 setShouldSuppressIncomingNotification:1];

  v7 = [MEMORY[0x277D440C8] sharedInstance];
  v8 = [(RTTUIRecentMessageViewController *)self call];
  v9 = [v8 callUUID];
  [v7 setViewControllerIsVisible:1 withCallID:v9];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = RTTUIRecentMessageViewController;
  [(RTTUIRecentMessageViewController *)&v4 viewDidAppear:a3];
  [(UITableView *)self->_recentMessageTableView reloadData];
  [(RTTUIRecentMessageViewController *)self _scrollToBottomIfNecessary];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x277D85DE8];
  v5 = AXLogRTT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = self;
    _os_log_impl(&dword_261725000, v5, OS_LOG_TYPE_INFO, "RTT recent message controller will disappear: %@", buf, 0xCu);
  }

  v10.receiver = self;
  v10.super_class = RTTUIRecentMessageViewController;
  [(RTTUIRecentMessageViewController *)&v10 viewWillDisappear:v3];
  v6 = [MEMORY[0x277D440C8] sharedInstance];
  [v6 setShouldSuppressIncomingNotification:0];

  v7 = [MEMORY[0x277D440C8] sharedInstance];
  v8 = [(RTTUIRecentMessageViewController *)self call];
  v9 = [v8 callUUID];
  [v7 setViewControllerIsVisible:0 withCallID:v9];
}

- (void)setupUI
{
  v83[2] = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v3;

  if (_UISolariumEnabled())
  {
    [(UIVisualEffectView *)self->_backgroundView ax_setWantsGlassAppearance:1];
  }

  else
  {
    v5 = [MEMORY[0x277D75210] effectWithBlurRadius:100.0];
    v81[2] = xmmword_261742A64;
    v81[3] = unk_261742A74;
    v81[4] = xmmword_261742A84;
    v81[0] = xmmword_261742A44;
    v81[1] = unk_261742A54;
    v6 = [MEMORY[0x277D75358] _colorEffectCAMatrix:v81];
    v83[0] = v6;
    v83[1] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:2];
    [(UIVisualEffectView *)self->_backgroundView setBackgroundEffects:v7];
  }

  v8 = [(UIVisualEffectView *)self->_backgroundView layer];
  [v8 setCornerRadius:16.0];

  [(UIVisualEffectView *)self->_backgroundView setClipsToBounds:1];
  [(UIVisualEffectView *)self->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [(RTTUIRecentMessageViewController *)self view];
  [v9 addSubview:self->_backgroundView];

  v10 = objc_alloc_init(MEMORY[0x277D75A68]);
  mainStackView = self->_mainStackView;
  self->_mainStackView = v10;

  [(UIStackView *)self->_mainStackView setAxis:1];
  [(UIStackView *)self->_mainStackView setSpacing:8.0];
  [(UIStackView *)self->_mainStackView setLayoutMarginsRelativeArrangement:1];
  [(UIStackView *)self->_mainStackView setLayoutMargins:16.0, 16.0, 16.0, 16.0];
  [(UIStackView *)self->_mainStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [(RTTUIRecentMessageViewController *)self view];
  [v12 addSubview:self->_mainStackView];

  v13 = objc_alloc_init(MEMORY[0x277D75A68]);
  contactImageAndNameView = self->_contactImageAndNameView;
  self->_contactImageAndNameView = v13;

  [(UIStackView *)self->_contactImageAndNameView setAxis:0];
  [(UIStackView *)self->_contactImageAndNameView setSpacing:8.0];
  [(UIStackView *)self->_mainStackView addArrangedSubview:self->_contactImageAndNameView];
  v15 = objc_alloc_init(MEMORY[0x277D75B40]);
  recentMessageTableView = self->_recentMessageTableView;
  self->_recentMessageTableView = v15;

  [(UITableView *)self->_recentMessageTableView setShowsVerticalScrollIndicator:0];
  [(UITableView *)self->_recentMessageTableView setSeparatorStyle:0];
  [(UITableView *)self->_recentMessageTableView setBackgroundColor:0];
  [(UITableView *)self->_recentMessageTableView setDataSource:self];
  [(UITableView *)self->_recentMessageTableView setDelegate:self];
  v17 = self->_recentMessageTableView;
  v18 = objc_opt_class();
  v19 = +[RTTUIRecentMessageCell reuseIdentifier];
  [(UITableView *)v17 registerClass:v18 forCellReuseIdentifier:v19];

  v80 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v80 lineHeight];
  v21 = v20;
  [v80 pointSize];
  v23 = (v21 - v22) * 0.5;
  [(UIStackView *)self->_mainStackView addArrangedSubview:self->_recentMessageTableView];
  v24 = objc_alloc(MEMORY[0x277D755E8]);
  v25 = [MEMORY[0x277D755B8] systemImageNamed:@"teletype"];
  v26 = [MEMORY[0x277D75348] systemWhiteColor];
  v27 = [v25 imageWithTintColor:v26 renderingMode:1];
  v28 = [v24 initWithImage:v27];

  [v28 setContentMode:1];
  [v28 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  [v28 setMaximumContentSizeCategory:*MEMORY[0x277D76818]];
  v29 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76A28]];
  [v28 setPreferredSymbolConfiguration:v29];

  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v28 setIsAccessibilityElement:1];
  [v28 setAccessibilityTraits:*MEMORY[0x277D76548]];
  v30 = ttyLocString();
  [v28 setAccessibilityLabel:v30];

  v31 = [(RTTUIRecentMessageViewController *)self view];
  [v31 addSubview:v28];

  [(RTTUIRecentMessageViewController *)self updateContactUI];
  [(RTTUIRecentMessageViewController *)self updateMessageUI];
  v61 = MEMORY[0x277CCAAD0];
  v78 = [(UIStackView *)self->_mainStackView topAnchor];
  v79 = [(RTTUIRecentMessageViewController *)self view];
  v77 = [v79 topAnchor];
  v76 = [v78 constraintEqualToAnchor:v77];
  v82[0] = v76;
  v74 = [(UIStackView *)self->_mainStackView leadingAnchor];
  v75 = [(RTTUIRecentMessageViewController *)self view];
  v73 = [v75 leadingAnchor];
  v72 = [v74 constraintEqualToAnchor:v73];
  v82[1] = v72;
  v70 = [(UIStackView *)self->_mainStackView bottomAnchor];
  v71 = [(RTTUIRecentMessageViewController *)self view];
  v69 = [v71 bottomAnchor];
  v68 = [v70 constraintEqualToAnchor:v69];
  v82[2] = v68;
  v66 = [(UIStackView *)self->_mainStackView trailingAnchor];
  v67 = [(RTTUIRecentMessageViewController *)self view];
  v65 = [v67 trailingAnchor];
  v64 = [v66 constraintEqualToAnchor:v65];
  v82[3] = v64;
  v63 = [(UILabel *)self->_contactNameLabel widthAnchor];
  v62 = [(UIStackView *)self->_mainStackView widthAnchor];
  v60 = [v63 constraintLessThanOrEqualToAnchor:v62 multiplier:0.75];
  v82[4] = v60;
  v59 = [(UITableView *)self->_recentMessageTableView heightAnchor];
  v58 = [v59 constraintEqualToConstant:v23 * 3.0 + v21 * 4.0];
  v82[5] = v58;
  v56 = [(UIVisualEffectView *)self->_backgroundView topAnchor];
  v57 = [(RTTUIRecentMessageViewController *)self view];
  v55 = [v57 topAnchor];
  v53 = [v56 constraintEqualToAnchor:v55];
  v82[6] = v53;
  v51 = [(UIVisualEffectView *)self->_backgroundView leadingAnchor];
  v52 = [(RTTUIRecentMessageViewController *)self view];
  v50 = [v52 leadingAnchor];
  v49 = [v51 constraintEqualToAnchor:v50];
  v82[7] = v49;
  v47 = [(UIVisualEffectView *)self->_backgroundView bottomAnchor];
  v48 = [(RTTUIRecentMessageViewController *)self view];
  v46 = [v48 bottomAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v82[8] = v45;
  v43 = [(UIVisualEffectView *)self->_backgroundView trailingAnchor];
  v44 = [(RTTUIRecentMessageViewController *)self view];
  v42 = [v44 trailingAnchor];
  v32 = [v43 constraintEqualToAnchor:v42];
  v82[9] = v32;
  v54 = v28;
  v33 = [v28 topAnchor];
  v34 = [(RTTUIRecentMessageViewController *)self view];
  v35 = [v34 topAnchor];
  v36 = [v33 constraintEqualToAnchor:v35 constant:12.0];
  v82[10] = v36;
  v37 = [v28 trailingAnchor];
  v38 = [(RTTUIRecentMessageViewController *)self view];
  v39 = [v38 trailingAnchor];
  v40 = [v37 constraintEqualToAnchor:v39 constant:-16.0];
  v82[11] = v40;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:12];
  [v61 activateConstraints:v41];
}

- (void)updateMessageUI
{
  v38[1] = *MEMORY[0x277D85DE8];
  [(RTTUIRecentMessageViewController *)self loadViewIfNeeded];
  v3 = [(RTTConversation *)self->_conversation utterances];
  v4 = [v3 count];

  noMessagesLabel = self->_noMessagesLabel;
  v6 = 0x27FEB8000uLL;
  if (v4)
  {
    [(UILabel *)noMessagesLabel removeFromSuperview];
    v7 = self->_noMessagesLabel;
    self->_noMessagesLabel = 0;
  }

  else
  {
    if (noMessagesLabel)
    {
      goto LABEL_5;
    }

    v8 = objc_alloc_init(MEMORY[0x277D756B8]);
    v9 = self->_noMessagesLabel;
    self->_noMessagesLabel = v8;

    v10 = self->_noMessagesLabel;
    v11 = [MEMORY[0x277D75348] systemWhiteColor];
    [(UILabel *)v10 setTextColor:v11];

    [(UILabel *)self->_noMessagesLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)self->_noMessagesLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v35 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v12 = [(UILabel *)v35 fontDescriptor];
    v34 = [v12 fontDescriptorWithSymbolicTraits:1];

    v13 = MEMORY[0x277D74300];
    [(UILabel *)v35 pointSize];
    v33 = [v13 fontWithDescriptor:v34 size:?];
    v14 = self->_noMessagesLabel;
    v15 = objc_alloc(MEMORY[0x277CCAB48]);
    v16 = ttyLocString();
    v37 = *MEMORY[0x277D740A8];
    v38[0] = v33;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    v18 = [v15 initWithString:v16 attributes:v17];
    [(UILabel *)v14 setAttributedText:v18];

    [(UITableView *)self->_recentMessageTableView addSubview:self->_noMessagesLabel];
    v28 = MEMORY[0x277CCAAD0];
    v32 = [(UILabel *)self->_noMessagesLabel centerYAnchor];
    v31 = [(UITableView *)self->_recentMessageTableView centerYAnchor];
    v30 = [v32 constraintEqualToAnchor:v31];
    v36[0] = v30;
    v29 = [(UILabel *)self->_noMessagesLabel centerXAnchor];
    v19 = [(UITableView *)self->_recentMessageTableView centerXAnchor];
    v20 = [v29 constraintEqualToAnchor:v19];
    v36[1] = v20;
    v21 = [(UILabel *)self->_noMessagesLabel leadingAnchor];
    v22 = [(UITableView *)self->_recentMessageTableView leadingAnchor];
    v23 = [v21 constraintGreaterThanOrEqualToAnchor:v22];
    v36[2] = v23;
    v24 = [(UILabel *)self->_noMessagesLabel trailingAnchor];
    v25 = [(UITableView *)self->_recentMessageTableView trailingAnchor];
    v26 = [v24 constraintLessThanOrEqualToAnchor:v25];
    v36[3] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:4];
    [v28 activateConstraints:v27];

    v6 = 0x27FEB8000;
    v7 = v35;
  }

LABEL_5:
  [*(&self->super.super.super.isa + *(v6 + 1696)) reloadData];
  [(RTTUIRecentMessageViewController *)self _scrollToBottomIfNecessary];
}

- (void)updateContactUI
{
  v22[2] = *MEMORY[0x277D85DE8];
  [(RTTUIRecentMessageViewController *)self loadViewIfNeeded];
  v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  v4 = [(RTTUIRecentMessageViewController *)self contactDisplayImage];
  if (v4)
  {
    contactImageView = self->_contactImageView;
    if (!contactImageView)
    {
      v6 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
      v7 = self->_contactImageView;
      self->_contactImageView = v6;

      v8 = MEMORY[0x277CCAAD0];
      v9 = [(UIImageView *)self->_contactImageView widthAnchor];
      [v3 lineHeight];
      v10 = [v9 constraintEqualToConstant:?];
      v22[0] = v10;
      v11 = [(UIImageView *)self->_contactImageView heightAnchor];
      [v3 lineHeight];
      v12 = [v11 constraintEqualToConstant:?];
      v22[1] = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
      [v8 activateConstraints:v13];

      [(UIStackView *)self->_contactImageAndNameView insertArrangedSubview:self->_contactImageView atIndex:0];
      contactImageView = self->_contactImageView;
    }

    [(UIImageView *)contactImageView setImage:v4];
  }

  contactNameLabel = self->_contactNameLabel;
  if (!contactNameLabel)
  {
    v15 = objc_alloc_init(MEMORY[0x277D756B8]);
    v16 = self->_contactNameLabel;
    self->_contactNameLabel = v15;

    v17 = self->_contactNameLabel;
    v18 = [MEMORY[0x277D75348] systemWhiteColor];
    [(UILabel *)v17 setTextColor:v18];

    [(UILabel *)self->_contactNameLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)self->_contactNameLabel setFont:v3];
    [(UILabel *)self->_contactNameLabel setNumberOfLines:1];
    [(UIStackView *)self->_contactImageAndNameView addArrangedSubview:self->_contactNameLabel];
    contactImageAndNameView = self->_contactImageAndNameView;
    v20 = objc_opt_new();
    [(UIStackView *)contactImageAndNameView addArrangedSubview:v20];

    contactNameLabel = self->_contactNameLabel;
  }

  if (([(TUCall *)self->_call isEmergency]& 1) != 0)
  {
    ttyLocString();
  }

  else
  {
    [(RTTUIRecentMessageViewController *)self contactDisplayString];
  }
  v21 = ;
  [(UILabel *)contactNameLabel setText:v21];
}

- (void)setCall:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_conversation)
  {
    v5 = AXLogRTT();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v14 = self;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_261725000, v5, OS_LOG_TYPE_INFO, "%@: No initial conversation, requesting conversation: %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v6 = MEMORY[0x277D440B8];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __44__RTTUIRecentMessageViewController_setCall___block_invoke;
    v11[3] = &unk_279AE4FC8;
    objc_copyWeak(&v12, buf);
    [v6 conversationWithCall:v4 withCallback:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }

  call = self->_call;
  self->_call = v4;
  v8 = v4;

  v9 = +[RTTUIConversationControllerCoordinator sharedInstance];
  v10 = [(TUCall *)v8 callUUID];

  [v9 registerForCallUpdates:v10];
}

void __44__RTTUIRecentMessageViewController_setCall___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  v4 = v3;
  AXPerformBlockOnMainThreadAfterDelay();

  objc_destroyWeak(&v5);
}

void __44__RTTUIRecentMessageViewController_setCall___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setConversation:v2];

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 updateContactUI];

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 updateMessageUI];

  v6 = AXLogRTT();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_loadWeakRetained((a1 + 40));
    v8 = *(a1 + 32);
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_261725000, v6, OS_LOG_TYPE_INFO, "%@ Received conversation: %@", &v9, 0x16u);
  }
}

- (id)contactDisplayString
{
  v3 = [(RTTUIRecentMessageViewController *)self call];
  v4 = [v3 displayName];

  if (![v4 length])
  {
    v5 = MEMORY[0x277CBDA78];
    v6 = MEMORY[0x277CBDA58];
    v7 = [(RTTUIRecentMessageViewController *)self conversation];
    v8 = [v7 otherContactPath];
    v9 = [v6 contactForPhoneNumber:v8];
    v10 = [v5 stringFromContact:v9 style:0];

    v4 = v10;
  }

  if (![v4 length])
  {
    v11 = [(RTTUIRecentMessageViewController *)self conversation];
    v12 = [v11 otherContactPath];

    v4 = v12;
  }

  return v4;
}

- (id)contactDisplayImage
{
  if ([(TUCall *)self->_call isEmergency])
  {
    v3 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithType:@"com.apple.graphic-icon.emergency-sos"];
    v4 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:16.0 scale:{16.0, 3.0}];
    v5 = [v3 prepareImageForDescriptor:v4];
    v6 = [MEMORY[0x277D755B8] imageWithCGImage:{objc_msgSend(v5, "CGImage")}];

LABEL_6:
    goto LABEL_8;
  }

  v7 = MEMORY[0x277CBDA58];
  v8 = [(RTTUIRecentMessageViewController *)self conversation];
  v9 = [v8 otherContactPath];
  v3 = [v7 contactForPhoneNumber:v9];

  if ([v3 imageDataAvailable])
  {
    v10 = [v3 thumbnailImageData];

    if (v10)
    {
      v11 = objc_alloc(MEMORY[0x277D755B8]);
      v4 = [v3 thumbnailImageData];
      v6 = [v11 initWithData:v4];
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (id)currentContactPath
{
  v3 = [MEMORY[0x277D440E0] sharedUtilityProvider];
  v4 = [(RTTUIRecentMessageViewController *)self call];
  v5 = [v3 contactPathForCall:v4];

  return v5;
}

- (void)deviceDidReceiveString:(id)a3 forUtterance:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = AXLogRTT();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v25 = 138412802;
    v26 = self;
    v27 = 2112;
    v28 = v6;
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&dword_261725000, v8, OS_LOG_TYPE_INFO, "%@ TTY receive |%@|=%@", &v25, 0x20u);
  }

  v9 = [(RTTUIRecentMessageViewController *)self conversation];
  v10 = [v9 lastUtteranceForMe:0];

  v11 = [v10 text];
  if (v11 && (v12 = v11, [v10 text], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "stringByAppendingString:", v6), v14 = objc_claimAutoreleasedReturnValue(), v15 = -[NSObject isEqualToString:](v7, "isEqualToString:", v14), v14, v13, v12, v15))
  {
    [v10 updateText:v7];
    v16 = AXLogRTT();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [v10 text];
      v25 = 138413058;
      v26 = self;
      v27 = 2112;
      v28 = v7;
      v29 = 2112;
      v30 = v17;
      v31 = 2112;
      v32 = v10;
      v18 = "%@ total utterance: %@, utterance text: %@, updated: %@";
      v19 = v16;
      v20 = 42;
      goto LABEL_13;
    }
  }

  else
  {
    v21 = [(RTTUIRecentMessageViewController *)self conversation];
    v16 = [v21 appendStringFromOtherContactPath:v6];

    v22 = AXLogRTT();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v25 = 138412802;
      v26 = self;
      v27 = 2112;
      v28 = v6;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&dword_261725000, v22, OS_LOG_TYPE_INFO, "%@ Append utterance: %@ -> %@", &v25, 0x20u);
    }

    if (v7)
    {
      v23 = [v16 text];
      v24 = [v23 isEqualToString:v7];

      if ((v24 & 1) == 0)
      {
        [v16 updateText:v7];
        v17 = AXLogRTT();
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
LABEL_14:

          goto LABEL_15;
        }

        v25 = 138412546;
        v26 = self;
        v27 = 2112;
        v28 = v16;
        v18 = "%@ updated utterance: %@";
        v19 = v17;
        v20 = 22;
LABEL_13:
        _os_log_impl(&dword_261725000, v19, OS_LOG_TYPE_INFO, v18, &v25, v20);
        goto LABEL_14;
      }
    }
  }

LABEL_15:

  [(RTTUIRecentMessageViewController *)self updateVoiceOverAnnouncement:v6];
  [(RTTUIRecentMessageViewController *)self updateMessageUI];
}

- (void)didSendString:(id)a3
{
  v9 = a3;
  v4 = [(RTTUIRecentMessageViewController *)self conversation];
  v5 = [v4 lastUtteranceForMe:1];

  if (!v5 || ([v5 hasTimedOut] & 1) != 0 || (objc_msgSend(v5, "isComplete") & 1) != 0)
  {
    v6 = MEMORY[0x277D440E8];
    v7 = ttyLocString();
    v8 = [v6 utteranceWithContactPath:v7 andText:v9];

    [(RTTConversation *)self->_conversation addUtterance:v8];
  }

  else
  {
    [v5 updateText:v9];
  }

  [(RTTUIRecentMessageViewController *)self updateMessageUI];
}

- (void)addUtterance:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RTTUIRecentMessageViewController *)self conversation];
  [v5 addUtterance:v4];

  v6 = AXLogRTT();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_261725000, v6, OS_LOG_TYPE_INFO, "%@ Adding utterance: %@ ", &v7, 0x16u);
  }

  [(RTTUIRecentMessageViewController *)self updateMessageUI];
}

- (void)addTranscriptionText:(id)a3 isNew:(BOOL)a4
{
  v4 = a4;
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(RTTUIRecentMessageViewController *)self conversation];
  v8 = v7;
  if (v4)
  {
    v9 = [v7 addTranscriptionFromOtherContactPath:v6];
  }

  else
  {
    v10 = [v7 updateTranscriptionFromOtherContactPath:v6];
  }

  v11 = AXLogRTT();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_261725000, v11, OS_LOG_TYPE_INFO, "%@ Adding transcription: %@", &v12, 0x16u);
  }

  [(RTTUIRecentMessageViewController *)self updateMessageUI];
}

- (void)updateVoiceOverAnnouncement:(id)a3
{
  v4 = a3;
  voAnnouncementTimer = self->_voAnnouncementTimer;
  if (!voAnnouncementTimer)
  {
    v6 = objc_alloc(MEMORY[0x277CE6950]);
    v7 = [v6 initWithTargetSerialQueue:MEMORY[0x277D85CD0]];
    v8 = self->_voAnnouncementTimer;
    self->_voAnnouncementTimer = v7;

    v9 = objc_alloc_init(MEMORY[0x277CCAB68]);
    voAnnouncementBuffer = self->_voAnnouncementBuffer;
    self->_voAnnouncementBuffer = v9;

    voAnnouncementTimer = self->_voAnnouncementTimer;
  }

  [(AXDispatchTimer *)voAnnouncementTimer cancel];
  if ([v4 length] && objc_msgSend(v4, "characterAtIndex:", 0) == 8)
  {
    if ([(NSMutableString *)self->_voAnnouncementBuffer length])
    {
      [(NSMutableString *)self->_voAnnouncementBuffer deleteCharactersInRange:[(NSMutableString *)self->_voAnnouncementBuffer length]- 1, 1];
    }
  }

  else
  {
    [(NSMutableString *)self->_voAnnouncementBuffer appendString:v4];
  }

  v11 = [(NSMutableString *)self->_voAnnouncementBuffer trimmedString];
  v12 = [v11 length];

  if (v12)
  {
    v13 = self->_voAnnouncementTimer;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __64__RTTUIRecentMessageViewController_updateVoiceOverAnnouncement___block_invoke;
    v14[3] = &unk_279AE4E98;
    v14[4] = self;
    [(AXDispatchTimer *)v13 afterDelay:v14 processBlock:4.0];
  }
}

void __64__RTTUIRecentMessageViewController_updateVoiceOverAnnouncement___block_invoke(uint64_t a1)
{
  argument = [MEMORY[0x277CE6B98] stringWithString:*(*(a1 + 32) + 1000)];
  [argument setAttribute:&unk_2873FB8F0 forKey:*MEMORY[0x277CE6BC8]];
  [argument setAttribute:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CE6CA0]];
  UIAccessibilityPostNotification(*MEMORY[0x277D76438], argument);
  [*(*(a1 + 32) + 1000) setString:&stru_2873F89E0];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(RTTConversation *)self->_conversation utterances:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[RTTUIRecentMessageCell reuseIdentifier];
  v9 = [v7 dequeueReusableCellWithIdentifier:v8];

  v10 = [v6 row];
  v11 = [(RTTConversation *)self->_conversation utterances];
  v12 = [v11 count];

  if (v10 < v12)
  {
    v13 = [(RTTConversation *)self->_conversation utterances];
    v14 = [v13 objectAtIndex:{objc_msgSend(v6, "row")}];
    v19 = ![v6 row] || (-[RTTConversation utterances](self->_conversation, "utterances"), v15 = ;
    v20 = [(RTTUIRecentMessageViewController *)self contactDisplayString];
    [v9 configureWithUtterance:v14 needsPrefix:v19 otherContactDisplayName:v20];
  }

  return v9;
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  self->_lastUserScroll = [MEMORY[0x277CBEAA8] date];

  MEMORY[0x2821F96F8]();
}

- (void)_scrollToBottomIfNecessary
{
  v11 = [(RTTConversation *)self->_conversation utterances];
  if ([v11 count])
  {
    [(UITableView *)self->_recentMessageTableView contentSize];
    v4 = v3;
    [(UITableView *)self->_recentMessageTableView frame];
    if (v4 > v5)
    {
      lastUserScroll = self->_lastUserScroll;
      if (lastUserScroll)
      {
        [(NSDate *)lastUserScroll timeIntervalSinceNow];
        v8 = fabs(v7);

        if (v8 <= 3.0)
        {
          return;
        }
      }

      else
      {
      }

      v9 = MEMORY[0x277CCAA70];
      v10 = [(RTTConversation *)self->_conversation utterances];
      v11 = [v9 indexPathForRow:objc_msgSend(v10 inSection:{"count") - 1, 0}];

      [(UITableView *)self->_recentMessageTableView scrollToRowAtIndexPath:v11 atScrollPosition:3 animated:1];
    }
  }
}

@end