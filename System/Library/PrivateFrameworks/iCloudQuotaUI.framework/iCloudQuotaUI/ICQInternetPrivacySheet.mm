@interface ICQInternetPrivacySheet
- (BOOL)_deviceIsiPad;
- (ICQInternetPrivacySheet)initWithIdentifier:(id)identifier viewModel:(id)model;
- (ICQInternetPrivacyViewModel)viewModel;
- (id)createTextViewWithText:(id)text;
- (void)addBodyText;
- (void)addHeaderIcon;
- (void)addHeaderText;
- (void)setTextForIdentifier:(id)identifier;
- (void)setupScrollView;
- (void)setupStack;
- (void)setupUI;
- (void)viewDidLoad;
@end

@implementation ICQInternetPrivacySheet

- (ICQInternetPrivacySheet)initWithIdentifier:(id)identifier viewModel:(id)model
{
  identifierCopy = identifier;
  modelCopy = model;
  v11.receiver = self;
  v11.super_class = ICQInternetPrivacySheet;
  v8 = [(ICQInternetPrivacySheet *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_viewModel, modelCopy);
    [(ICQInternetPrivacySheet *)v9 setTextForIdentifier:identifierCopy];
  }

  return v9;
}

- (void)setTextForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"com.apple.icloud.privaterelay.learnmoresubscriber"])
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"INTERNET_PRIVACY_LEARN_MORE_SUBSCRIBER_HEADER" value:&stru_28844FC60 table:@"Localizable"];
    [(ICQInternetPrivacySheet *)self setHeaderText:v5];

    viewModel = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    internetPrivacyLearnMoreMessage = [viewModel localizedStringForKey:@"INTERNET_PRIVACY_LEARN_MORE_SUBSCRIBER_BODY" value:&stru_28844FC60 table:@"Localizable"];
LABEL_5:
    v10 = internetPrivacyLearnMoreMessage;
    [(ICQInternetPrivacySheet *)self setBodyText:internetPrivacyLearnMoreMessage];
LABEL_6:

    goto LABEL_7;
  }

  if ([identifierCopy isEqualToString:@"com.apple.icloud.privaterelay.learnmoreunsupportednetwork"])
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"INTERNET_PRIVACY_LEARN_MORE_NETWORK_HEADER" value:&stru_28844FC60 table:@"Localizable"];
    [(ICQInternetPrivacySheet *)self setHeaderText:v9];

    viewModel = [(ICQInternetPrivacySheet *)self viewModel];
    internetPrivacyLearnMoreMessage = [viewModel internetPrivacyLearnMoreMessage];
    goto LABEL_5;
  }

  if ([identifierCopy isEqualToString:@"com.apple.icloud.privaterelay.learnmoreunsupportedregion"])
  {
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"INTERNET_PRIVACY_LEARN_MORE_REGION_HEADER" value:&stru_28844FC60 table:@"Localizable"];
    [(ICQInternetPrivacySheet *)self setHeaderText:v12];

    v13 = MEMORY[0x277CCACA8];
    viewModel = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [viewModel localizedStringForKey:@"INTERNET_PRIVACY_LEARN_MORE_REGION_BODY" value:&stru_28844FC60 table:@"Localizable"];
    viewModel2 = [(ICQInternetPrivacySheet *)self viewModel];
    country = [viewModel2 country];
    v16 = [v13 stringWithFormat:v10, country];
    [(ICQInternetPrivacySheet *)self setBodyText:v16];

    goto LABEL_6;
  }

LABEL_7:
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = ICQInternetPrivacySheet;
  [(ICQInternetPrivacySheet *)&v3 viewDidLoad];
  [(ICQInternetPrivacySheet *)self setupUI];
}

- (void)setupUI
{
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_doneButtonTapped_];
  navigationItem = [(ICQInternetPrivacySheet *)self navigationItem];
  [navigationItem setRightBarButtonItem:v3];

  view = [(ICQInternetPrivacySheet *)self view];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];

  [(ICQInternetPrivacySheet *)self setupScrollView];
  [(ICQInternetPrivacySheet *)self setupStack];
  [(ICQInternetPrivacySheet *)self addHeaderIcon];
  [(ICQInternetPrivacySheet *)self addHeaderText];

  [(ICQInternetPrivacySheet *)self addBodyText];
}

- (void)setupScrollView
{
  v24[4] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setContentInset:{25.0, 0.0, 40.0, 0.0}];
  view = [(ICQInternetPrivacySheet *)self view];
  [view addSubview:v3];

  v15 = MEMORY[0x277CCAAD0];
  leadingAnchor = [v3 leadingAnchor];
  view2 = [(ICQInternetPrivacySheet *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v24[0] = v20;
  trailingAnchor = [v3 trailingAnchor];
  view3 = [(ICQInternetPrivacySheet *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v24[1] = v16;
  topAnchor = [v3 topAnchor];
  view4 = [(ICQInternetPrivacySheet *)self view];
  safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v24[2] = v7;
  bottomAnchor = [v3 bottomAnchor];
  view5 = [(ICQInternetPrivacySheet *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v24[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];
  [v15 activateConstraints:v12];

  [(ICQInternetPrivacySheet *)self setScrollView:v3];
}

- (void)setupStack
{
  v29[5] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [v3 setAxis:1];
  _deviceIsiPad = [(ICQInternetPrivacySheet *)self _deviceIsiPad];
  v5 = 25.0;
  if (_deviceIsiPad)
  {
    v5 = 30.0;
  }

  [v3 setSpacing:v5];
  [v3 setAlignment:3];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  scrollView = [(ICQInternetPrivacySheet *)self scrollView];
  [scrollView addSubview:v3];

  v20 = MEMORY[0x277CCAAD0];
  leadingAnchor = [v3 leadingAnchor];
  scrollView2 = [(ICQInternetPrivacySheet *)self scrollView];
  leadingAnchor2 = [scrollView2 leadingAnchor];
  v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v29[0] = v25;
  trailingAnchor = [v3 trailingAnchor];
  scrollView3 = [(ICQInternetPrivacySheet *)self scrollView];
  trailingAnchor2 = [scrollView3 trailingAnchor];
  v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v29[1] = v21;
  topAnchor = [v3 topAnchor];
  scrollView4 = [(ICQInternetPrivacySheet *)self scrollView];
  topAnchor2 = [scrollView4 topAnchor];
  v16 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v29[2] = v16;
  bottomAnchor = [v3 bottomAnchor];
  scrollView5 = [(ICQInternetPrivacySheet *)self scrollView];
  bottomAnchor2 = [scrollView5 bottomAnchor];
  v9 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v29[3] = v9;
  widthAnchor = [v3 widthAnchor];
  scrollView6 = [(ICQInternetPrivacySheet *)self scrollView];
  widthAnchor2 = [scrollView6 widthAnchor];
  v13 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v29[4] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:5];
  [v20 activateConstraints:v14];

  [(ICQInternetPrivacySheet *)self setStackView:v3];
}

- (void)addHeaderIcon
{
  v3 = objc_alloc(MEMORY[0x277D755E8]);
  v4 = [MEMORY[0x277D755B8] icqBundleImageNamed:@"PrivateRelayLargeIcon"];
  v6 = [v3 initWithImage:v4];

  stackView = [(ICQInternetPrivacySheet *)self stackView];
  [stackView addArrangedSubview:v6];

  [(ICQInternetPrivacySheet *)self setIconView:v6];
}

- (id)createTextViewWithText:(id)text
{
  textCopy = text;
  v5 = objc_opt_new();
  [v5 setText:textCopy];

  [v5 setTextAlignment:1];
  [v5 setScrollEnabled:0];
  [v5 setEditable:0];
  _deviceIsiPad = [(ICQInternetPrivacySheet *)self _deviceIsiPad];
  v7 = 20.0;
  if (_deviceIsiPad)
  {
    v7 = 40.0;
  }

  [v5 setTextContainerInset:{0.0, v7, 0.0, v7}];

  return v5;
}

- (void)addHeaderText
{
  headerText = [(ICQInternetPrivacySheet *)self headerText];
  v8 = [(ICQInternetPrivacySheet *)self createTextViewWithText:headerText];

  v4 = [MEMORY[0x277D74300] systemFontOfSize:34.0 weight:*MEMORY[0x277D743F8]];
  v5 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D769A8]];
  v6 = [v5 scaledFontForFont:v4];
  [v8 setFont:v6];

  stackView = [(ICQInternetPrivacySheet *)self stackView];
  [stackView addArrangedSubview:v8];
}

- (void)addBodyText
{
  v14[3] = *MEMORY[0x277D85DE8];
  bodyText = [(ICQInternetPrivacySheet *)self bodyText];
  v4 = [(ICQInternetPrivacySheet *)self createTextViewWithText:bodyText];

  v5 = objc_opt_new();
  [v5 setParagraphSpacing:25.0];
  [v5 setAlignment:1];
  v6 = objc_alloc(MEMORY[0x277CCAB48]);
  bodyText2 = [(ICQInternetPrivacySheet *)self bodyText];
  v8 = [v6 initWithString:bodyText2];

  v13[0] = *MEMORY[0x277D740C0];
  labelColor = [MEMORY[0x277D75348] labelColor];
  v14[0] = labelColor;
  v13[1] = *MEMORY[0x277D740A8];
  v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v13[2] = *MEMORY[0x277D74118];
  v14[1] = v10;
  v14[2] = v5;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  [v8 addAttributes:v11 range:{0, objc_msgSend(v8, "length")}];

  [v4 setAttributedText:v8];
  stackView = [(ICQInternetPrivacySheet *)self stackView];
  [stackView addArrangedSubview:v4];
}

- (BOOL)_deviceIsiPad
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 1;

  return v3;
}

- (ICQInternetPrivacyViewModel)viewModel
{
  WeakRetained = objc_loadWeakRetained(&self->_viewModel);

  return WeakRetained;
}

@end