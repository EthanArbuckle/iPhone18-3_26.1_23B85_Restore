@interface RTTUIRecentMessageViewController
+ (id)viewControllerForCall:(id)call;
- (id)contactDisplayImage;
- (id)contactDisplayString;
- (id)currentContactPath;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_scrollToBottomIfNecessary;
- (void)addTranscriptionText:(id)text isNew:(BOOL)new;
- (void)addUtterance:(id)utterance;
- (void)deviceDidReceiveString:(id)string forUtterance:(id)utterance;
- (void)didSendString:(id)string;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)setCall:(id)call;
- (void)setupUI;
- (void)updateContactUI;
- (void)updateMessageUI;
- (void)updateVoiceOverAnnouncement:(id)announcement;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation RTTUIRecentMessageViewController

+ (id)viewControllerForCall:(id)call
{
  callCopy = call;
  v4 = objc_alloc_init(RTTUIRecentMessageViewController);
  v5 = +[RTTUIConversationControllerCoordinator sharedInstance];
  [v5 addRecentMessageController:v4];

  [(RTTUIRecentMessageViewController *)v4 setCall:callCopy];

  return v4;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = RTTUIRecentMessageViewController;
  [(RTTUIRecentMessageViewController *)&v6 viewDidLoad];
  [(RTTUIRecentMessageViewController *)self setupUI];
  view = [(RTTUIRecentMessageViewController *)self view];
  [view setAccessibilityContainerType:4];

  view2 = [(RTTUIRecentMessageViewController *)self view];
  v5 = ttyLocString();
  [view2 setAccessibilityLabel:v5];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v13 = *MEMORY[0x277D85DE8];
  v5 = AXLogRTT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_261725000, v5, OS_LOG_TYPE_INFO, "RTT recent message controller will appear: %@", buf, 0xCu);
  }

  v10.receiver = self;
  v10.super_class = RTTUIRecentMessageViewController;
  [(RTTUIRecentMessageViewController *)&v10 viewWillAppear:appearCopy];
  mEMORY[0x277D440C8] = [MEMORY[0x277D440C8] sharedInstance];
  [mEMORY[0x277D440C8] setShouldSuppressIncomingNotification:1];

  mEMORY[0x277D440C8]2 = [MEMORY[0x277D440C8] sharedInstance];
  call = [(RTTUIRecentMessageViewController *)self call];
  callUUID = [call callUUID];
  [mEMORY[0x277D440C8]2 setViewControllerIsVisible:1 withCallID:callUUID];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = RTTUIRecentMessageViewController;
  [(RTTUIRecentMessageViewController *)&v4 viewDidAppear:appear];
  [(UITableView *)self->_recentMessageTableView reloadData];
  [(RTTUIRecentMessageViewController *)self _scrollToBottomIfNecessary];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v13 = *MEMORY[0x277D85DE8];
  v5 = AXLogRTT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_261725000, v5, OS_LOG_TYPE_INFO, "RTT recent message controller will disappear: %@", buf, 0xCu);
  }

  v10.receiver = self;
  v10.super_class = RTTUIRecentMessageViewController;
  [(RTTUIRecentMessageViewController *)&v10 viewWillDisappear:disappearCopy];
  mEMORY[0x277D440C8] = [MEMORY[0x277D440C8] sharedInstance];
  [mEMORY[0x277D440C8] setShouldSuppressIncomingNotification:0];

  mEMORY[0x277D440C8]2 = [MEMORY[0x277D440C8] sharedInstance];
  call = [(RTTUIRecentMessageViewController *)self call];
  callUUID = [call callUUID];
  [mEMORY[0x277D440C8]2 setViewControllerIsVisible:0 withCallID:callUUID];
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

  layer = [(UIVisualEffectView *)self->_backgroundView layer];
  [layer setCornerRadius:16.0];

  [(UIVisualEffectView *)self->_backgroundView setClipsToBounds:1];
  [(UIVisualEffectView *)self->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(RTTUIRecentMessageViewController *)self view];
  [view addSubview:self->_backgroundView];

  v10 = objc_alloc_init(MEMORY[0x277D75A68]);
  mainStackView = self->_mainStackView;
  self->_mainStackView = v10;

  [(UIStackView *)self->_mainStackView setAxis:1];
  [(UIStackView *)self->_mainStackView setSpacing:8.0];
  [(UIStackView *)self->_mainStackView setLayoutMarginsRelativeArrangement:1];
  [(UIStackView *)self->_mainStackView setLayoutMargins:16.0, 16.0, 16.0, 16.0];
  [(UIStackView *)self->_mainStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(RTTUIRecentMessageViewController *)self view];
  [view2 addSubview:self->_mainStackView];

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
  systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  v27 = [v25 imageWithTintColor:systemWhiteColor renderingMode:1];
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

  view3 = [(RTTUIRecentMessageViewController *)self view];
  [view3 addSubview:v28];

  [(RTTUIRecentMessageViewController *)self updateContactUI];
  [(RTTUIRecentMessageViewController *)self updateMessageUI];
  v61 = MEMORY[0x277CCAAD0];
  topAnchor = [(UIStackView *)self->_mainStackView topAnchor];
  view4 = [(RTTUIRecentMessageViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v76 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v82[0] = v76;
  leadingAnchor = [(UIStackView *)self->_mainStackView leadingAnchor];
  view5 = [(RTTUIRecentMessageViewController *)self view];
  leadingAnchor2 = [view5 leadingAnchor];
  v72 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v82[1] = v72;
  bottomAnchor = [(UIStackView *)self->_mainStackView bottomAnchor];
  view6 = [(RTTUIRecentMessageViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v68 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v82[2] = v68;
  trailingAnchor = [(UIStackView *)self->_mainStackView trailingAnchor];
  view7 = [(RTTUIRecentMessageViewController *)self view];
  trailingAnchor2 = [view7 trailingAnchor];
  v64 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v82[3] = v64;
  widthAnchor = [(UILabel *)self->_contactNameLabel widthAnchor];
  widthAnchor2 = [(UIStackView *)self->_mainStackView widthAnchor];
  v60 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2 multiplier:0.75];
  v82[4] = v60;
  heightAnchor = [(UITableView *)self->_recentMessageTableView heightAnchor];
  v58 = [heightAnchor constraintEqualToConstant:v23 * 3.0 + v21 * 4.0];
  v82[5] = v58;
  topAnchor3 = [(UIVisualEffectView *)self->_backgroundView topAnchor];
  view8 = [(RTTUIRecentMessageViewController *)self view];
  topAnchor4 = [view8 topAnchor];
  v53 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v82[6] = v53;
  leadingAnchor3 = [(UIVisualEffectView *)self->_backgroundView leadingAnchor];
  view9 = [(RTTUIRecentMessageViewController *)self view];
  leadingAnchor4 = [view9 leadingAnchor];
  v49 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v82[7] = v49;
  bottomAnchor3 = [(UIVisualEffectView *)self->_backgroundView bottomAnchor];
  view10 = [(RTTUIRecentMessageViewController *)self view];
  bottomAnchor4 = [view10 bottomAnchor];
  v45 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v82[8] = v45;
  trailingAnchor3 = [(UIVisualEffectView *)self->_backgroundView trailingAnchor];
  view11 = [(RTTUIRecentMessageViewController *)self view];
  trailingAnchor4 = [view11 trailingAnchor];
  v32 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v82[9] = v32;
  v54 = v28;
  topAnchor5 = [v28 topAnchor];
  view12 = [(RTTUIRecentMessageViewController *)self view];
  topAnchor6 = [view12 topAnchor];
  v36 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:12.0];
  v82[10] = v36;
  trailingAnchor5 = [v28 trailingAnchor];
  view13 = [(RTTUIRecentMessageViewController *)self view];
  trailingAnchor6 = [view13 trailingAnchor];
  v40 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-16.0];
  v82[11] = v40;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:12];
  [v61 activateConstraints:v41];
}

- (void)updateMessageUI
{
  v38[1] = *MEMORY[0x277D85DE8];
  [(RTTUIRecentMessageViewController *)self loadViewIfNeeded];
  utterances = [(RTTConversation *)self->_conversation utterances];
  v4 = [utterances count];

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
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [(UILabel *)v10 setTextColor:systemWhiteColor];

    [(UILabel *)self->_noMessagesLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)self->_noMessagesLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v35 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    fontDescriptor = [(UILabel *)v35 fontDescriptor];
    v34 = [fontDescriptor fontDescriptorWithSymbolicTraits:1];

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
    centerYAnchor = [(UILabel *)self->_noMessagesLabel centerYAnchor];
    centerYAnchor2 = [(UITableView *)self->_recentMessageTableView centerYAnchor];
    v30 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v36[0] = v30;
    centerXAnchor = [(UILabel *)self->_noMessagesLabel centerXAnchor];
    centerXAnchor2 = [(UITableView *)self->_recentMessageTableView centerXAnchor];
    v20 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v36[1] = v20;
    leadingAnchor = [(UILabel *)self->_noMessagesLabel leadingAnchor];
    leadingAnchor2 = [(UITableView *)self->_recentMessageTableView leadingAnchor];
    v23 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    v36[2] = v23;
    trailingAnchor = [(UILabel *)self->_noMessagesLabel trailingAnchor];
    trailingAnchor2 = [(UITableView *)self->_recentMessageTableView trailingAnchor];
    v26 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
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
  contactDisplayImage = [(RTTUIRecentMessageViewController *)self contactDisplayImage];
  if (contactDisplayImage)
  {
    contactImageView = self->_contactImageView;
    if (!contactImageView)
    {
      v6 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
      v7 = self->_contactImageView;
      self->_contactImageView = v6;

      v8 = MEMORY[0x277CCAAD0];
      widthAnchor = [(UIImageView *)self->_contactImageView widthAnchor];
      [v3 lineHeight];
      v10 = [widthAnchor constraintEqualToConstant:?];
      v22[0] = v10;
      heightAnchor = [(UIImageView *)self->_contactImageView heightAnchor];
      [v3 lineHeight];
      v12 = [heightAnchor constraintEqualToConstant:?];
      v22[1] = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
      [v8 activateConstraints:v13];

      [(UIStackView *)self->_contactImageAndNameView insertArrangedSubview:self->_contactImageView atIndex:0];
      contactImageView = self->_contactImageView;
    }

    [(UIImageView *)contactImageView setImage:contactDisplayImage];
  }

  contactNameLabel = self->_contactNameLabel;
  if (!contactNameLabel)
  {
    v15 = objc_alloc_init(MEMORY[0x277D756B8]);
    v16 = self->_contactNameLabel;
    self->_contactNameLabel = v15;

    v17 = self->_contactNameLabel;
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [(UILabel *)v17 setTextColor:systemWhiteColor];

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

- (void)setCall:(id)call
{
  v17 = *MEMORY[0x277D85DE8];
  callCopy = call;
  if (!self->_conversation)
  {
    v5 = AXLogRTT();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      selfCopy = self;
      v15 = 2112;
      v16 = callCopy;
      _os_log_impl(&dword_261725000, v5, OS_LOG_TYPE_INFO, "%@: No initial conversation, requesting conversation: %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v6 = MEMORY[0x277D440B8];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __44__RTTUIRecentMessageViewController_setCall___block_invoke;
    v11[3] = &unk_279AE4FC8;
    objc_copyWeak(&v12, buf);
    [v6 conversationWithCall:callCopy withCallback:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }

  call = self->_call;
  self->_call = callCopy;
  v8 = callCopy;

  v9 = +[RTTUIConversationControllerCoordinator sharedInstance];
  callUUID = [(TUCall *)v8 callUUID];

  [v9 registerForCallUpdates:callUUID];
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
  call = [(RTTUIRecentMessageViewController *)self call];
  displayName = [call displayName];

  if (![displayName length])
  {
    v5 = MEMORY[0x277CBDA78];
    v6 = MEMORY[0x277CBDA58];
    conversation = [(RTTUIRecentMessageViewController *)self conversation];
    otherContactPath = [conversation otherContactPath];
    v9 = [v6 contactForPhoneNumber:otherContactPath];
    v10 = [v5 stringFromContact:v9 style:0];

    displayName = v10;
  }

  if (![displayName length])
  {
    conversation2 = [(RTTUIRecentMessageViewController *)self conversation];
    otherContactPath2 = [conversation2 otherContactPath];

    displayName = otherContactPath2;
  }

  return displayName;
}

- (id)contactDisplayImage
{
  if ([(TUCall *)self->_call isEmergency])
  {
    v3 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithType:@"com.apple.graphic-icon.emergency-sos"];
    thumbnailImageData2 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:16.0 scale:{16.0, 3.0}];
    v5 = [v3 prepareImageForDescriptor:thumbnailImageData2];
    v6 = [MEMORY[0x277D755B8] imageWithCGImage:{objc_msgSend(v5, "CGImage")}];

LABEL_6:
    goto LABEL_8;
  }

  v7 = MEMORY[0x277CBDA58];
  conversation = [(RTTUIRecentMessageViewController *)self conversation];
  otherContactPath = [conversation otherContactPath];
  v3 = [v7 contactForPhoneNumber:otherContactPath];

  if ([v3 imageDataAvailable])
  {
    thumbnailImageData = [v3 thumbnailImageData];

    if (thumbnailImageData)
    {
      v11 = objc_alloc(MEMORY[0x277D755B8]);
      thumbnailImageData2 = [v3 thumbnailImageData];
      v6 = [v11 initWithData:thumbnailImageData2];
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (id)currentContactPath
{
  mEMORY[0x277D440E0] = [MEMORY[0x277D440E0] sharedUtilityProvider];
  call = [(RTTUIRecentMessageViewController *)self call];
  v5 = [mEMORY[0x277D440E0] contactPathForCall:call];

  return v5;
}

- (void)deviceDidReceiveString:(id)string forUtterance:(id)utterance
{
  v33 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  utteranceCopy = utterance;
  v8 = AXLogRTT();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v25 = 138412802;
    selfCopy4 = self;
    v27 = 2112;
    v28 = stringCopy;
    v29 = 2112;
    v30 = utteranceCopy;
    _os_log_impl(&dword_261725000, v8, OS_LOG_TYPE_INFO, "%@ TTY receive |%@|=%@", &v25, 0x20u);
  }

  conversation = [(RTTUIRecentMessageViewController *)self conversation];
  v10 = [conversation lastUtteranceForMe:0];

  text = [v10 text];
  if (text && (v12 = text, [v10 text], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "stringByAppendingString:", stringCopy), v14 = objc_claimAutoreleasedReturnValue(), v15 = -[NSObject isEqualToString:](utteranceCopy, "isEqualToString:", v14), v14, v13, v12, v15))
  {
    [v10 updateText:utteranceCopy];
    v16 = AXLogRTT();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      text2 = [v10 text];
      v25 = 138413058;
      selfCopy4 = self;
      v27 = 2112;
      v28 = utteranceCopy;
      v29 = 2112;
      v30 = text2;
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
    conversation2 = [(RTTUIRecentMessageViewController *)self conversation];
    v16 = [conversation2 appendStringFromOtherContactPath:stringCopy];

    v22 = AXLogRTT();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v25 = 138412802;
      selfCopy4 = self;
      v27 = 2112;
      v28 = stringCopy;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&dword_261725000, v22, OS_LOG_TYPE_INFO, "%@ Append utterance: %@ -> %@", &v25, 0x20u);
    }

    if (utteranceCopy)
    {
      text3 = [v16 text];
      v24 = [text3 isEqualToString:utteranceCopy];

      if ((v24 & 1) == 0)
      {
        [v16 updateText:utteranceCopy];
        text2 = AXLogRTT();
        if (!os_log_type_enabled(text2, OS_LOG_TYPE_INFO))
        {
LABEL_14:

          goto LABEL_15;
        }

        v25 = 138412546;
        selfCopy4 = self;
        v27 = 2112;
        v28 = v16;
        v18 = "%@ updated utterance: %@";
        v19 = text2;
        v20 = 22;
LABEL_13:
        _os_log_impl(&dword_261725000, v19, OS_LOG_TYPE_INFO, v18, &v25, v20);
        goto LABEL_14;
      }
    }
  }

LABEL_15:

  [(RTTUIRecentMessageViewController *)self updateVoiceOverAnnouncement:stringCopy];
  [(RTTUIRecentMessageViewController *)self updateMessageUI];
}

- (void)didSendString:(id)string
{
  stringCopy = string;
  conversation = [(RTTUIRecentMessageViewController *)self conversation];
  v5 = [conversation lastUtteranceForMe:1];

  if (!v5 || ([v5 hasTimedOut] & 1) != 0 || (objc_msgSend(v5, "isComplete") & 1) != 0)
  {
    v6 = MEMORY[0x277D440E8];
    v7 = ttyLocString();
    v8 = [v6 utteranceWithContactPath:v7 andText:stringCopy];

    [(RTTConversation *)self->_conversation addUtterance:v8];
  }

  else
  {
    [v5 updateText:stringCopy];
  }

  [(RTTUIRecentMessageViewController *)self updateMessageUI];
}

- (void)addUtterance:(id)utterance
{
  v11 = *MEMORY[0x277D85DE8];
  utteranceCopy = utterance;
  conversation = [(RTTUIRecentMessageViewController *)self conversation];
  [conversation addUtterance:utteranceCopy];

  v6 = AXLogRTT();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = utteranceCopy;
    _os_log_impl(&dword_261725000, v6, OS_LOG_TYPE_INFO, "%@ Adding utterance: %@ ", &v7, 0x16u);
  }

  [(RTTUIRecentMessageViewController *)self updateMessageUI];
}

- (void)addTranscriptionText:(id)text isNew:(BOOL)new
{
  newCopy = new;
  v16 = *MEMORY[0x277D85DE8];
  textCopy = text;
  conversation = [(RTTUIRecentMessageViewController *)self conversation];
  v8 = conversation;
  if (newCopy)
  {
    v9 = [conversation addTranscriptionFromOtherContactPath:textCopy];
  }

  else
  {
    v10 = [conversation updateTranscriptionFromOtherContactPath:textCopy];
  }

  v11 = AXLogRTT();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = 138412546;
    selfCopy = self;
    v14 = 2112;
    v15 = textCopy;
    _os_log_impl(&dword_261725000, v11, OS_LOG_TYPE_INFO, "%@ Adding transcription: %@", &v12, 0x16u);
  }

  [(RTTUIRecentMessageViewController *)self updateMessageUI];
}

- (void)updateVoiceOverAnnouncement:(id)announcement
{
  announcementCopy = announcement;
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
  if ([announcementCopy length] && objc_msgSend(announcementCopy, "characterAtIndex:", 0) == 8)
  {
    if ([(NSMutableString *)self->_voAnnouncementBuffer length])
    {
      [(NSMutableString *)self->_voAnnouncementBuffer deleteCharactersInRange:[(NSMutableString *)self->_voAnnouncementBuffer length]- 1, 1];
    }
  }

  else
  {
    [(NSMutableString *)self->_voAnnouncementBuffer appendString:announcementCopy];
  }

  trimmedString = [(NSMutableString *)self->_voAnnouncementBuffer trimmedString];
  v12 = [trimmedString length];

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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(RTTConversation *)self->_conversation utterances:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[RTTUIRecentMessageCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8];

  v10 = [pathCopy row];
  utterances = [(RTTConversation *)self->_conversation utterances];
  v12 = [utterances count];

  if (v10 < v12)
  {
    utterances2 = [(RTTConversation *)self->_conversation utterances];
    v14 = [utterances2 objectAtIndex:{objc_msgSend(pathCopy, "row")}];
    v19 = ![pathCopy row] || (-[RTTConversation utterances](self->_conversation, "utterances"), v15 = ;
    contactDisplayString = [(RTTUIRecentMessageViewController *)self contactDisplayString];
    [v9 configureWithUtterance:v14 needsPrefix:v19 otherContactDisplayName:contactDisplayString];
  }

  return v9;
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  self->_lastUserScroll = [MEMORY[0x277CBEAA8] date];

  MEMORY[0x2821F96F8]();
}

- (void)_scrollToBottomIfNecessary
{
  utterances = [(RTTConversation *)self->_conversation utterances];
  if ([utterances count])
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
      utterances2 = [(RTTConversation *)self->_conversation utterances];
      utterances = [v9 indexPathForRow:objc_msgSend(utterances2 inSection:{"count") - 1, 0}];

      [(UITableView *)self->_recentMessageTableView scrollToRowAtIndexPath:utterances atScrollPosition:3 animated:1];
    }
  }
}

@end