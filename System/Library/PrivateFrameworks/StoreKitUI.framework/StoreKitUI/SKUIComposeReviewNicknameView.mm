@interface SKUIComposeReviewNicknameView
- (SKUIComposeReviewNicknameView)initWithFrame:(CGRect)frame;
- (void)_setupInfo;
- (void)_setupSampleCardView;
- (void)_setupTextField;
- (void)_setupTitle;
- (void)_setupView;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SKUIComposeReviewNicknameView

- (SKUIComposeReviewNicknameView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SKUIComposeReviewNicknameView;
  v3 = [(SKUIComposeReviewNicknameView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(SKUIComposeReviewNicknameView *)v3 setBackgroundColor:systemBackgroundColor];

    [(SKUIComposeReviewNicknameView *)v3 _setupView];
  }

  return v3;
}

- (void)traitCollectionDidChange:(id)change
{
  v27[4] = *MEMORY[0x277D85DE8];
  changeCopy = change;
  traitCollection = [(SKUIComposeReviewNicknameView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    titleView = [(SKUIComposeReviewNicknameView *)self titleView];
    v9 = SKUIFontLimitedPreferredFontForTextStyle(15, 7);
    [titleView setFont:v9];

    nicknamePlaceholderLabel = [(SKUIComposeReviewNicknameView *)self nicknamePlaceholderLabel];
    v11 = SKUIFontLimitedPreferredFontForTextStyle(3, 7);
    [nicknamePlaceholderLabel setFont:v11];

    nicknameTextfield = [(SKUIComposeReviewNicknameView *)self nicknameTextfield];
    v13 = SKUIFontLimitedPreferredFontForTextStyle(1, 7);
    [nicknameTextfield setFont:v13];

    nicknameInfoLabel = [(SKUIComposeReviewNicknameView *)self nicknameInfoLabel];
    v15 = SKUIFontLimitedPreferredFontForTextStyle(11, 7);
    [nicknameInfoLabel setFont:v15];
  }

  traitCollection2 = [(SKUIComposeReviewNicknameView *)self traitCollection];
  v17 = [traitCollection2 hasDifferentColorAppearanceComparedToTraitCollection:changeCopy];

  if (v17)
  {
    sampleCardGradientView = [(SKUIComposeReviewNicknameView *)self sampleCardGradientView];
    layer = [sampleCardGradientView layer];
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    v21 = [systemBackgroundColor colorWithAlphaComponent:0.0];
    v27[0] = [v21 CGColor];
    systemBackgroundColor2 = [MEMORY[0x277D75348] systemBackgroundColor];
    v23 = [systemBackgroundColor2 colorWithAlphaComponent:0.0];
    v27[1] = [v23 CGColor];
    systemBackgroundColor3 = [MEMORY[0x277D75348] systemBackgroundColor];
    v27[2] = [systemBackgroundColor3 CGColor];
    systemBackgroundColor4 = [MEMORY[0x277D75348] systemBackgroundColor];
    v27[3] = [systemBackgroundColor4 CGColor];
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:4];
    [layer setColors:v26];
  }
}

- (void)_setupView
{
  [(SKUIComposeReviewNicknameView *)self _setupTitle];
  [(SKUIComposeReviewNicknameView *)self _setupSampleCardView];
  [(SKUIComposeReviewNicknameView *)self _setupTextField];

  [(SKUIComposeReviewNicknameView *)self _setupInfo];
}

- (void)_setupTitle
{
  v3 = objc_opt_new();
  [(SKUIComposeReviewNicknameView *)self setTitleView:v3];

  titleView = [(SKUIComposeReviewNicknameView *)self titleView];
  v5 = SKUIFontLimitedPreferredFontForTextStyle(15, 7);
  [titleView setFont:v5];

  titleView2 = [(SKUIComposeReviewNicknameView *)self titleView];
  [titleView2 setNumberOfLines:2];

  titleView3 = [(SKUIComposeReviewNicknameView *)self titleView];
  [titleView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  titleView4 = [(SKUIComposeReviewNicknameView *)self titleView];
  [(SKUIComposeReviewNicknameView *)self addSubview:titleView4];

  titleView5 = [(SKUIComposeReviewNicknameView *)self titleView];
  firstBaselineAnchor = [titleView5 firstBaselineAnchor];
  safeAreaLayoutGuide = [(SKUIComposeReviewNicknameView *)self safeAreaLayoutGuide];
  topAnchor = [safeAreaLayoutGuide topAnchor];
  v13 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:61.0];
  [v13 setActive:1];

  titleView6 = [(SKUIComposeReviewNicknameView *)self titleView];
  leadingAnchor = [titleView6 leadingAnchor];
  leadingAnchor2 = [(SKUIComposeReviewNicknameView *)self leadingAnchor];
  [MEMORY[0x277CDD370] PPMScaledValueUsingValue:20.0];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
  [v17 setActive:1];

  titleView7 = [(SKUIComposeReviewNicknameView *)self titleView];
  trailingAnchor = [titleView7 trailingAnchor];
  trailingAnchor2 = [(SKUIComposeReviewNicknameView *)self trailingAnchor];
  [MEMORY[0x277CDD370] PPMScaledValueUsingValue:20.0];
  v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v21];
  [v22 setActive:1];

  v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v24 = [v23 localizedStringForKey:@"NICKNAME_VIEW_TITLE" value:&stru_2827FFAC8 table:0];
  titleView8 = [(SKUIComposeReviewNicknameView *)self titleView];
  [titleView8 setText:v24];

  titleView9 = [(SKUIComposeReviewNicknameView *)self titleView];
  [titleView9 setTextAlignment:1];
}

- (void)_setupSampleCardView
{
  v51[4] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [(SKUIComposeReviewNicknameView *)self setSampleCardView:v3];

  sampleCardView = [(SKUIComposeReviewNicknameView *)self sampleCardView];
  [sampleCardView setTranslatesAutoresizingMaskIntoConstraints:0];

  sampleCardView2 = [(SKUIComposeReviewNicknameView *)self sampleCardView];
  [(SKUIComposeReviewNicknameView *)self addSubview:sampleCardView2];

  sampleCardView3 = [(SKUIComposeReviewNicknameView *)self sampleCardView];
  topAnchor = [sampleCardView3 topAnchor];
  titleView = [(SKUIComposeReviewNicknameView *)self titleView];
  bottomAnchor = [titleView bottomAnchor];
  [MEMORY[0x277CDD370] PPMConfirmedValueWithValue:24.0 newValue:30.0];
  v10 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:?];
  [v10 setActive:1];

  sampleCardView4 = [(SKUIComposeReviewNicknameView *)self sampleCardView];
  centerXAnchor = [sampleCardView4 centerXAnchor];
  centerXAnchor2 = [(SKUIComposeReviewNicknameView *)self centerXAnchor];
  v14 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v14 setActive:1];

  v15 = [SKUIGradientView alloc];
  v16 = [(SKUIGradientView *)v15 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(SKUIComposeReviewNicknameView *)self setSampleCardGradientView:v16];

  sampleCardGradientView = [(SKUIComposeReviewNicknameView *)self sampleCardGradientView];
  [sampleCardGradientView setTranslatesAutoresizingMaskIntoConstraints:0];

  sampleCardView5 = [(SKUIComposeReviewNicknameView *)self sampleCardView];
  sampleCardGradientView2 = [(SKUIComposeReviewNicknameView *)self sampleCardGradientView];
  [sampleCardView5 addSubview:sampleCardGradientView2];

  sampleCardGradientView3 = [(SKUIComposeReviewNicknameView *)self sampleCardGradientView];
  topAnchor2 = [sampleCardGradientView3 topAnchor];
  sampleCardView6 = [(SKUIComposeReviewNicknameView *)self sampleCardView];
  topAnchor3 = [sampleCardView6 topAnchor];
  v24 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
  [v24 setActive:1];

  sampleCardGradientView4 = [(SKUIComposeReviewNicknameView *)self sampleCardGradientView];
  leadingAnchor = [sampleCardGradientView4 leadingAnchor];
  sampleCardView7 = [(SKUIComposeReviewNicknameView *)self sampleCardView];
  leadingAnchor2 = [sampleCardView7 leadingAnchor];
  v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v29 setActive:1];

  sampleCardGradientView5 = [(SKUIComposeReviewNicknameView *)self sampleCardGradientView];
  trailingAnchor = [sampleCardGradientView5 trailingAnchor];
  sampleCardView8 = [(SKUIComposeReviewNicknameView *)self sampleCardView];
  trailingAnchor2 = [sampleCardView8 trailingAnchor];
  v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v34 setActive:1];

  sampleCardGradientView6 = [(SKUIComposeReviewNicknameView *)self sampleCardGradientView];
  bottomAnchor2 = [sampleCardGradientView6 bottomAnchor];
  sampleCardView9 = [(SKUIComposeReviewNicknameView *)self sampleCardView];
  bottomAnchor3 = [sampleCardView9 bottomAnchor];
  v39 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  [v39 setActive:1];

  sampleCardGradientView7 = [(SKUIComposeReviewNicknameView *)self sampleCardGradientView];
  layer = [sampleCardGradientView7 layer];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  v43 = [systemBackgroundColor colorWithAlphaComponent:0.0];
  v51[0] = [v43 CGColor];
  systemBackgroundColor2 = [MEMORY[0x277D75348] systemBackgroundColor];
  v45 = [systemBackgroundColor2 colorWithAlphaComponent:0.0];
  v51[1] = [v45 CGColor];
  systemBackgroundColor3 = [MEMORY[0x277D75348] systemBackgroundColor];
  v51[2] = [systemBackgroundColor3 CGColor];
  systemBackgroundColor4 = [MEMORY[0x277D75348] systemBackgroundColor];
  v51[3] = [systemBackgroundColor4 CGColor];
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:4];
  [layer setColors:v48];

  sampleCardGradientView8 = [(SKUIComposeReviewNicknameView *)self sampleCardGradientView];
  layer2 = [sampleCardGradientView8 layer];
  [layer2 setLocations:&unk_2828D2F78];
}

- (void)_setupTextField
{
  v3 = objc_opt_new();
  [(SKUIComposeReviewNicknameView *)self setNicknameBackgroundView:v3];

  nicknameBackgroundView = [(SKUIComposeReviewNicknameView *)self nicknameBackgroundView];
  [nicknameBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];

  secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  nicknameBackgroundView2 = [(SKUIComposeReviewNicknameView *)self nicknameBackgroundView];
  [nicknameBackgroundView2 setBackgroundColor:secondarySystemBackgroundColor];

  [MEMORY[0x277CDD370] PPMScaledValueUsingValue:8.0];
  v8 = v7;
  nicknameBackgroundView3 = [(SKUIComposeReviewNicknameView *)self nicknameBackgroundView];
  layer = [nicknameBackgroundView3 layer];
  [layer setCornerRadius:v8];

  nicknameBackgroundView4 = [(SKUIComposeReviewNicknameView *)self nicknameBackgroundView];
  [(SKUIComposeReviewNicknameView *)self addSubview:nicknameBackgroundView4];

  nicknameBackgroundView5 = [(SKUIComposeReviewNicknameView *)self nicknameBackgroundView];
  topAnchor = [nicknameBackgroundView5 topAnchor];
  sampleCardView = [(SKUIComposeReviewNicknameView *)self sampleCardView];
  bottomAnchor = [sampleCardView bottomAnchor];
  [MEMORY[0x277CDD370] PPMScaledValueUsingValue:20.0];
  v16 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:?];
  [v16 setActive:1];

  nicknameBackgroundView6 = [(SKUIComposeReviewNicknameView *)self nicknameBackgroundView];
  leadingAnchor = [nicknameBackgroundView6 leadingAnchor];
  leadingAnchor2 = [(SKUIComposeReviewNicknameView *)self leadingAnchor];
  [MEMORY[0x277CDD370] PPMScaledValueUsingValue:20.0];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
  [v20 setActive:1];

  nicknameBackgroundView7 = [(SKUIComposeReviewNicknameView *)self nicknameBackgroundView];
  trailingAnchor = [nicknameBackgroundView7 trailingAnchor];
  trailingAnchor2 = [(SKUIComposeReviewNicknameView *)self trailingAnchor];
  [MEMORY[0x277CDD370] PPMScaledValueUsingValue:20.0];
  v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v24];
  [v25 setActive:1];

  v26 = objc_opt_new();
  [(SKUIComposeReviewNicknameView *)self setNicknamePlaceholderLabel:v26];

  nicknamePlaceholderLabel = [(SKUIComposeReviewNicknameView *)self nicknamePlaceholderLabel];
  [nicknamePlaceholderLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  nicknameBackgroundView8 = [(SKUIComposeReviewNicknameView *)self nicknameBackgroundView];
  nicknamePlaceholderLabel2 = [(SKUIComposeReviewNicknameView *)self nicknamePlaceholderLabel];
  [nicknameBackgroundView8 addSubview:nicknamePlaceholderLabel2];

  nicknamePlaceholderLabel3 = [(SKUIComposeReviewNicknameView *)self nicknamePlaceholderLabel];
  v31 = SKUIFontLimitedPreferredFontForTextStyle(3, 7);
  [nicknamePlaceholderLabel3 setFont:v31];

  nicknamePlaceholderLabel4 = [(SKUIComposeReviewNicknameView *)self nicknamePlaceholderLabel];
  leadingAnchor3 = [nicknamePlaceholderLabel4 leadingAnchor];
  nicknameBackgroundView9 = [(SKUIComposeReviewNicknameView *)self nicknameBackgroundView];
  leadingAnchor4 = [nicknameBackgroundView9 leadingAnchor];
  [MEMORY[0x277CDD370] PPMScaledValueUsingValue:20.0];
  v36 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:?];
  [v36 setActive:1];

  nicknamePlaceholderLabel5 = [(SKUIComposeReviewNicknameView *)self nicknamePlaceholderLabel];
  topAnchor2 = [nicknamePlaceholderLabel5 topAnchor];
  nicknameBackgroundView10 = [(SKUIComposeReviewNicknameView *)self nicknameBackgroundView];
  topAnchor3 = [nicknameBackgroundView10 topAnchor];
  [MEMORY[0x277CDD370] PPMScaledValueUsingValue:18.0];
  v41 = [topAnchor2 constraintEqualToAnchor:topAnchor3 constant:?];
  [v41 setActive:1];

  nicknamePlaceholderLabel6 = [(SKUIComposeReviewNicknameView *)self nicknamePlaceholderLabel];
  bottomAnchor2 = [nicknamePlaceholderLabel6 bottomAnchor];
  nicknameBackgroundView11 = [(SKUIComposeReviewNicknameView *)self nicknameBackgroundView];
  bottomAnchor3 = [nicknameBackgroundView11 bottomAnchor];
  [MEMORY[0x277CDD370] PPMScaledValueUsingValue:18.0];
  v47 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-v46];
  [v47 setActive:1];

  nicknamePlaceholderLabel7 = [(SKUIComposeReviewNicknameView *)self nicknamePlaceholderLabel];
  LODWORD(v49) = 1148846080;
  [nicknamePlaceholderLabel7 setContentHuggingPriority:0 forAxis:v49];

  v50 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v51 = [v50 localizedStringForKey:@"NICKNAME_VIEW_PLACEHOLDER" value:&stru_2827FFAC8 table:0];
  nicknamePlaceholderLabel8 = [(SKUIComposeReviewNicknameView *)self nicknamePlaceholderLabel];
  [nicknamePlaceholderLabel8 setText:v51];

  v53 = objc_opt_new();
  [(SKUIComposeReviewNicknameView *)self setNicknameTextfield:v53];

  nicknameTextfield = [(SKUIComposeReviewNicknameView *)self nicknameTextfield];
  [nicknameTextfield setTranslatesAutoresizingMaskIntoConstraints:0];

  nicknameBackgroundView12 = [(SKUIComposeReviewNicknameView *)self nicknameBackgroundView];
  nicknameTextfield2 = [(SKUIComposeReviewNicknameView *)self nicknameTextfield];
  [nicknameBackgroundView12 addSubview:nicknameTextfield2];

  nicknameTextfield3 = [(SKUIComposeReviewNicknameView *)self nicknameTextfield];
  firstBaselineAnchor = [nicknameTextfield3 firstBaselineAnchor];
  nicknamePlaceholderLabel9 = [(SKUIComposeReviewNicknameView *)self nicknamePlaceholderLabel];
  firstBaselineAnchor2 = [nicknamePlaceholderLabel9 firstBaselineAnchor];
  v61 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
  [v61 setActive:1];

  nicknameTextfield4 = [(SKUIComposeReviewNicknameView *)self nicknameTextfield];
  topAnchor4 = [nicknameTextfield4 topAnchor];
  nicknameBackgroundView13 = [(SKUIComposeReviewNicknameView *)self nicknameBackgroundView];
  topAnchor5 = [nicknameBackgroundView13 topAnchor];
  v66 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  [v66 setActive:1];

  nicknameTextfield5 = [(SKUIComposeReviewNicknameView *)self nicknameTextfield];
  leadingAnchor5 = [nicknameTextfield5 leadingAnchor];
  nicknamePlaceholderLabel10 = [(SKUIComposeReviewNicknameView *)self nicknamePlaceholderLabel];
  trailingAnchor3 = [nicknamePlaceholderLabel10 trailingAnchor];
  [MEMORY[0x277CDD370] PPMScaledValueUsingValue:20.0];
  v71 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3 constant:?];
  [v71 setActive:1];

  nicknameTextfield6 = [(SKUIComposeReviewNicknameView *)self nicknameTextfield];
  trailingAnchor4 = [nicknameTextfield6 trailingAnchor];
  nicknameBackgroundView14 = [(SKUIComposeReviewNicknameView *)self nicknameBackgroundView];
  trailingAnchor5 = [nicknameBackgroundView14 trailingAnchor];
  [MEMORY[0x277CDD370] PPMScaledValueUsingValue:16.0];
  v77 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-v76];
  [v77 setActive:1];

  nicknameTextfield7 = [(SKUIComposeReviewNicknameView *)self nicknameTextfield];
  bottomAnchor4 = [nicknameTextfield7 bottomAnchor];
  nicknameBackgroundView15 = [(SKUIComposeReviewNicknameView *)self nicknameBackgroundView];
  bottomAnchor5 = [nicknameBackgroundView15 bottomAnchor];
  v82 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  [v82 setActive:1];

  nicknameTextfield8 = [(SKUIComposeReviewNicknameView *)self nicknameTextfield];
  LODWORD(v84) = 1132068864;
  [nicknameTextfield8 setContentCompressionResistancePriority:0 forAxis:v84];

  nicknameTextfield9 = [(SKUIComposeReviewNicknameView *)self nicknameTextfield];
  [nicknameTextfield9 setClearButtonMode:1];

  nicknameTextfield10 = [(SKUIComposeReviewNicknameView *)self nicknameTextfield];
  v86 = SKUIFontLimitedPreferredFontForTextStyle(1, 7);
  [nicknameTextfield10 setFont:v86];
}

- (void)_setupInfo
{
  v3 = objc_opt_new();
  [(SKUIComposeReviewNicknameView *)self setNicknameInfoLabel:v3];

  nicknameInfoLabel = [(SKUIComposeReviewNicknameView *)self nicknameInfoLabel];
  [nicknameInfoLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  nicknameInfoLabel2 = [(SKUIComposeReviewNicknameView *)self nicknameInfoLabel];
  [(SKUIComposeReviewNicknameView *)self addSubview:nicknameInfoLabel2];

  nicknameInfoLabel3 = [(SKUIComposeReviewNicknameView *)self nicknameInfoLabel];
  v7 = SKUIFontLimitedPreferredFontForTextStyle(11, 7);
  [nicknameInfoLabel3 setFont:v7];

  nicknameInfoLabel4 = [(SKUIComposeReviewNicknameView *)self nicknameInfoLabel];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [nicknameInfoLabel4 setTextColor:secondaryLabelColor];

  nicknameInfoLabel5 = [(SKUIComposeReviewNicknameView *)self nicknameInfoLabel];
  leadingAnchor = [nicknameInfoLabel5 leadingAnchor];
  leadingAnchor2 = [(SKUIComposeReviewNicknameView *)self leadingAnchor];
  [MEMORY[0x277CDD370] PPMScaledValueUsingValue:40.0];
  v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
  [v13 setActive:1];

  nicknameInfoLabel6 = [(SKUIComposeReviewNicknameView *)self nicknameInfoLabel];
  trailingAnchor = [nicknameInfoLabel6 trailingAnchor];
  trailingAnchor2 = [(SKUIComposeReviewNicknameView *)self trailingAnchor];
  [MEMORY[0x277CDD370] PPMScaledValueUsingValue:40.0];
  v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v17];
  [v18 setActive:1];

  nicknameInfoLabel7 = [(SKUIComposeReviewNicknameView *)self nicknameInfoLabel];
  firstBaselineAnchor = [nicknameInfoLabel7 firstBaselineAnchor];
  nicknameBackgroundView = [(SKUIComposeReviewNicknameView *)self nicknameBackgroundView];
  bottomAnchor = [nicknameBackgroundView bottomAnchor];
  [MEMORY[0x277CDD370] PPMScaledValueUsingValue:24.0];
  v23 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:?];
  [v23 setActive:1];

  nicknameInfoLabel8 = [(SKUIComposeReviewNicknameView *)self nicknameInfoLabel];
  bottomAnchor2 = [nicknameInfoLabel8 bottomAnchor];
  bottomAnchor3 = [(SKUIComposeReviewNicknameView *)self bottomAnchor];
  [MEMORY[0x277CDD370] PPMScaledValueUsingValue:20.0];
  v28 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-v27];
  [v28 setActive:1];

  nicknameInfoLabel9 = [(SKUIComposeReviewNicknameView *)self nicknameInfoLabel];
  [nicknameInfoLabel9 setNumberOfLines:3];

  nicknameInfoLabel10 = [(SKUIComposeReviewNicknameView *)self nicknameInfoLabel];
  [nicknameInfoLabel10 setTextAlignment:1];

  v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v31 = [v33 localizedStringForKey:@"NICKNAME_VIEW_MESSAGE" value:&stru_2827FFAC8 table:0];
  nicknameInfoLabel11 = [(SKUIComposeReviewNicknameView *)self nicknameInfoLabel];
  [nicknameInfoLabel11 setText:v31];
}

@end