@interface ICQInternetPrivacySheet
- (BOOL)_deviceIsiPad;
- (ICQInternetPrivacySheet)initWithIdentifier:(id)a3 viewModel:(id)a4;
- (ICQInternetPrivacyViewModel)viewModel;
- (id)createTextViewWithText:(id)a3;
- (void)addBodyText;
- (void)addHeaderIcon;
- (void)addHeaderText;
- (void)setTextForIdentifier:(id)a3;
- (void)setupScrollView;
- (void)setupStack;
- (void)setupUI;
- (void)viewDidLoad;
@end

@implementation ICQInternetPrivacySheet

- (ICQInternetPrivacySheet)initWithIdentifier:(id)a3 viewModel:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ICQInternetPrivacySheet;
  v8 = [(ICQInternetPrivacySheet *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_viewModel, v7);
    [(ICQInternetPrivacySheet *)v9 setTextForIdentifier:v6];
  }

  return v9;
}

- (void)setTextForIdentifier:(id)a3
{
  v17 = a3;
  if ([v17 isEqualToString:@"com.apple.icloud.privaterelay.learnmoresubscriber"])
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"INTERNET_PRIVACY_LEARN_MORE_SUBSCRIBER_HEADER" value:&stru_28844FC60 table:@"Localizable"];
    [(ICQInternetPrivacySheet *)self setHeaderText:v5];

    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"INTERNET_PRIVACY_LEARN_MORE_SUBSCRIBER_BODY" value:&stru_28844FC60 table:@"Localizable"];
LABEL_5:
    v10 = v7;
    [(ICQInternetPrivacySheet *)self setBodyText:v7];
LABEL_6:

    goto LABEL_7;
  }

  if ([v17 isEqualToString:@"com.apple.icloud.privaterelay.learnmoreunsupportednetwork"])
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"INTERNET_PRIVACY_LEARN_MORE_NETWORK_HEADER" value:&stru_28844FC60 table:@"Localizable"];
    [(ICQInternetPrivacySheet *)self setHeaderText:v9];

    v6 = [(ICQInternetPrivacySheet *)self viewModel];
    v7 = [v6 internetPrivacyLearnMoreMessage];
    goto LABEL_5;
  }

  if ([v17 isEqualToString:@"com.apple.icloud.privaterelay.learnmoreunsupportedregion"])
  {
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"INTERNET_PRIVACY_LEARN_MORE_REGION_HEADER" value:&stru_28844FC60 table:@"Localizable"];
    [(ICQInternetPrivacySheet *)self setHeaderText:v12];

    v13 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v6 localizedStringForKey:@"INTERNET_PRIVACY_LEARN_MORE_REGION_BODY" value:&stru_28844FC60 table:@"Localizable"];
    v14 = [(ICQInternetPrivacySheet *)self viewModel];
    v15 = [v14 country];
    v16 = [v13 stringWithFormat:v10, v15];
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
  v4 = [(ICQInternetPrivacySheet *)self navigationItem];
  [v4 setRightBarButtonItem:v3];

  v5 = [(ICQInternetPrivacySheet *)self view];
  v6 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v5 setBackgroundColor:v6];

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
  v4 = [(ICQInternetPrivacySheet *)self view];
  [v4 addSubview:v3];

  v15 = MEMORY[0x277CCAAD0];
  v22 = [v3 leadingAnchor];
  v23 = [(ICQInternetPrivacySheet *)self view];
  v21 = [v23 leadingAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v24[0] = v20;
  v18 = [v3 trailingAnchor];
  v19 = [(ICQInternetPrivacySheet *)self view];
  v17 = [v19 trailingAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v24[1] = v16;
  v13 = [v3 topAnchor];
  v14 = [(ICQInternetPrivacySheet *)self view];
  v5 = [v14 safeAreaLayoutGuide];
  v6 = [v5 topAnchor];
  v7 = [v13 constraintEqualToAnchor:v6];
  v24[2] = v7;
  v8 = [v3 bottomAnchor];
  v9 = [(ICQInternetPrivacySheet *)self view];
  v10 = [v9 bottomAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
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
  v4 = [(ICQInternetPrivacySheet *)self _deviceIsiPad];
  v5 = 25.0;
  if (v4)
  {
    v5 = 30.0;
  }

  [v3 setSpacing:v5];
  [v3 setAlignment:3];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [(ICQInternetPrivacySheet *)self scrollView];
  [v6 addSubview:v3];

  v20 = MEMORY[0x277CCAAD0];
  v27 = [v3 leadingAnchor];
  v28 = [(ICQInternetPrivacySheet *)self scrollView];
  v26 = [v28 leadingAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v29[0] = v25;
  v23 = [v3 trailingAnchor];
  v24 = [(ICQInternetPrivacySheet *)self scrollView];
  v22 = [v24 trailingAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v29[1] = v21;
  v18 = [v3 topAnchor];
  v19 = [(ICQInternetPrivacySheet *)self scrollView];
  v17 = [v19 topAnchor];
  v16 = [v18 constraintGreaterThanOrEqualToAnchor:v17];
  v29[2] = v16;
  v15 = [v3 bottomAnchor];
  v7 = [(ICQInternetPrivacySheet *)self scrollView];
  v8 = [v7 bottomAnchor];
  v9 = [v15 constraintLessThanOrEqualToAnchor:v8];
  v29[3] = v9;
  v10 = [v3 widthAnchor];
  v11 = [(ICQInternetPrivacySheet *)self scrollView];
  v12 = [v11 widthAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
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

  v5 = [(ICQInternetPrivacySheet *)self stackView];
  [v5 addArrangedSubview:v6];

  [(ICQInternetPrivacySheet *)self setIconView:v6];
}

- (id)createTextViewWithText:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setText:v4];

  [v5 setTextAlignment:1];
  [v5 setScrollEnabled:0];
  [v5 setEditable:0];
  v6 = [(ICQInternetPrivacySheet *)self _deviceIsiPad];
  v7 = 20.0;
  if (v6)
  {
    v7 = 40.0;
  }

  [v5 setTextContainerInset:{0.0, v7, 0.0, v7}];

  return v5;
}

- (void)addHeaderText
{
  v3 = [(ICQInternetPrivacySheet *)self headerText];
  v8 = [(ICQInternetPrivacySheet *)self createTextViewWithText:v3];

  v4 = [MEMORY[0x277D74300] systemFontOfSize:34.0 weight:*MEMORY[0x277D743F8]];
  v5 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D769A8]];
  v6 = [v5 scaledFontForFont:v4];
  [v8 setFont:v6];

  v7 = [(ICQInternetPrivacySheet *)self stackView];
  [v7 addArrangedSubview:v8];
}

- (void)addBodyText
{
  v14[3] = *MEMORY[0x277D85DE8];
  v3 = [(ICQInternetPrivacySheet *)self bodyText];
  v4 = [(ICQInternetPrivacySheet *)self createTextViewWithText:v3];

  v5 = objc_opt_new();
  [v5 setParagraphSpacing:25.0];
  [v5 setAlignment:1];
  v6 = objc_alloc(MEMORY[0x277CCAB48]);
  v7 = [(ICQInternetPrivacySheet *)self bodyText];
  v8 = [v6 initWithString:v7];

  v13[0] = *MEMORY[0x277D740C0];
  v9 = [MEMORY[0x277D75348] labelColor];
  v14[0] = v9;
  v13[1] = *MEMORY[0x277D740A8];
  v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v13[2] = *MEMORY[0x277D74118];
  v14[1] = v10;
  v14[2] = v5;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  [v8 addAttributes:v11 range:{0, objc_msgSend(v8, "length")}];

  [v4 setAttributedText:v8];
  v12 = [(ICQInternetPrivacySheet *)self stackView];
  [v12 addArrangedSubview:v4];
}

- (BOOL)_deviceIsiPad
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom] == 1;

  return v3;
}

- (ICQInternetPrivacyViewModel)viewModel
{
  WeakRetained = objc_loadWeakRetained(&self->_viewModel);

  return WeakRetained;
}

@end