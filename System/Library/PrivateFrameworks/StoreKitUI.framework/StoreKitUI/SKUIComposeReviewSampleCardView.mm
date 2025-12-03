@interface SKUIComposeReviewSampleCardView
- (SKUIComposeReviewSampleCardView)initWithFrame:(CGRect)frame;
- (void)_setupView;
@end

@implementation SKUIComposeReviewSampleCardView

- (SKUIComposeReviewSampleCardView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SKUIComposeReviewSampleCardView;
  v3 = [(SKUIComposeReviewSampleCardView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    [(SKUIComposeReviewSampleCardView *)v3 setBackgroundColor:secondarySystemBackgroundColor];

    [(SKUIComposeReviewSampleCardView *)v3 _setupView];
  }

  return v3;
}

- (void)_setupView
{
  layer = [(SKUIComposeReviewSampleCardView *)self layer];
  [layer setCornerRadius:12.0];

  [(SKUIComposeReviewSampleCardView *)self setClipsToBounds:0];
  v106 = objc_opt_new();
  [v106 setTranslatesAutoresizingMaskIntoConstraints:0];
  tertiarySystemFillColor = [MEMORY[0x277D75348] tertiarySystemFillColor];
  [v106 setBackgroundColor:tertiarySystemFillColor];

  [MEMORY[0x277CDD370] PPMScaledValueUsingValue:5.0];
  v6 = v5;
  layer2 = [v106 layer];
  [layer2 setCornerRadius:v6];

  [(SKUIComposeReviewSampleCardView *)self addSubview:v106];
  topAnchor = [v106 topAnchor];
  topAnchor2 = [(SKUIComposeReviewSampleCardView *)self topAnchor];
  [MEMORY[0x277CDD370] PPMScaledValueUsingValue:16.0];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
  [v10 setActive:1];

  leadingAnchor = [v106 leadingAnchor];
  leadingAnchor2 = [(SKUIComposeReviewSampleCardView *)self leadingAnchor];
  [MEMORY[0x277CDD370] PPMConfirmedValueWithValue:20.0 newValue:24.0];
  v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
  [v13 setActive:1];

  widthAnchor = [v106 widthAnchor];
  v15 = [widthAnchor constraintEqualToConstant:66.0];
  [v15 setActive:1];

  heightAnchor = [v106 heightAnchor];
  [MEMORY[0x277CDD370] PPMConfirmedValueWithValue:11.0 newValue:14.0];
  v17 = [heightAnchor constraintEqualToConstant:?];
  [v17 setActive:1];

  v18 = objc_opt_new();
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SKUIComposeReviewSampleCardView *)self addSubview:v18];
  [v18 layoutSubviews];
  firstBaselineAnchor = [v18 firstBaselineAnchor];
  topAnchor3 = [(SKUIComposeReviewSampleCardView *)self topAnchor];
  [MEMORY[0x277CDD370] PPMConfirmedValueWithValue:50.0 newValue:60.0];
  v21 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor3 constant:?];
  [v21 setActive:1];

  leadingAnchor3 = [v18 leadingAnchor];
  leadingAnchor4 = [(SKUIComposeReviewSampleCardView *)self leadingAnchor];
  [MEMORY[0x277CDD370] PPMConfirmedValueWithValue:20.0 newValue:24.0];
  v24 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:?];
  [v24 setActive:1];

  v25 = objc_opt_new();
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  v26 = SKUIFontLimitedPreferredFontForTextStyle(11, 7);
  [v25 setFont:v26];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [v25 setTextColor:secondaryLabelColor];

  [(SKUIComposeReviewSampleCardView *)self addSubview:v25];
  firstBaselineAnchor2 = [v25 firstBaselineAnchor];
  firstBaselineAnchor3 = [v18 firstBaselineAnchor];
  [MEMORY[0x277CDD370] PPMConfirmedValueWithValue:5.0 newValue:7.0];
  v30 = [firstBaselineAnchor2 constraintEqualToAnchor:firstBaselineAnchor3 constant:?];
  [v30 setActive:1];

  trailingAnchor = [v25 trailingAnchor];
  trailingAnchor2 = [(SKUIComposeReviewSampleCardView *)self trailingAnchor];
  [MEMORY[0x277CDD370] PPMConfirmedValueWithValue:20.0 newValue:24.0];
  v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v33];
  [v34 setActive:1];

  leadingAnchor5 = [v25 leadingAnchor];
  centerXAnchor = [(SKUIComposeReviewSampleCardView *)self centerXAnchor];
  [MEMORY[0x277CDD370] PPMConfirmedValueWithValue:20.0 newValue:24.0];
  v37 = [leadingAnchor5 constraintGreaterThanOrEqualToAnchor:centerXAnchor constant:?];
  [v37 setActive:1];

  v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v39 = [v38 localizedStringForKey:@"NICKNAME_VIEW_PLACEHOLDER" value:&stru_2827FFAC8 table:0];
  [v25 setText:v39];

  v40 = objc_opt_new();
  [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
  v41 = MEMORY[0x277D755D0];
  v42 = SKUIFontLimitedPreferredFontForTextStyle(30, 7);
  v105 = [v41 configurationWithFont:v42];

  v43 = MEMORY[0x277D755B8];
  v44 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v45 = [v43 imageNamed:@"arrow.backward.extended" inBundle:v44];
  v104 = [v45 imageWithSymbolConfiguration:v105];

  [v40 setImage:v104];
  [(SKUIComposeReviewSampleCardView *)self addSubview:v40];
  systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
  [v40 setTintColor:systemOrangeColor];

  leadingAnchor6 = [v40 leadingAnchor];
  trailingAnchor3 = [v25 trailingAnchor];
  v49 = [leadingAnchor6 constraintEqualToAnchor:trailingAnchor3 constant:14.0];
  [v49 setActive:1];

  centerYAnchor = [v40 centerYAnchor];
  centerYAnchor2 = [v25 centerYAnchor];
  v52 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v52 setActive:1];

  v53 = objc_opt_new();
  [v53 setTranslatesAutoresizingMaskIntoConstraints:0];
  tertiarySystemFillColor2 = [MEMORY[0x277D75348] tertiarySystemFillColor];
  [v53 setBackgroundColor:tertiarySystemFillColor2];

  layer3 = [v53 layer];
  [layer3 setCornerRadius:5.0];

  [(SKUIComposeReviewSampleCardView *)self addSubview:v53];
  topAnchor4 = [v53 topAnchor];
  firstBaselineAnchor4 = [v25 firstBaselineAnchor];
  [MEMORY[0x277CDD370] PPMConfirmedValueWithValue:13.0 newValue:17.0];
  v58 = [topAnchor4 constraintEqualToAnchor:firstBaselineAnchor4 constant:?];
  [v58 setActive:1];

  widthAnchor2 = [v53 widthAnchor];
  [MEMORY[0x277CDD370] PPMConfirmedValueWithValue:222.0 newValue:288.0];
  v60 = [widthAnchor2 constraintEqualToConstant:?];
  [v60 setActive:1];

  leadingAnchor7 = [v53 leadingAnchor];
  leadingAnchor8 = [(SKUIComposeReviewSampleCardView *)self leadingAnchor];
  [MEMORY[0x277CDD370] PPMConfirmedValueWithValue:20.0 newValue:24.0];
  v63 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:?];
  [v63 setActive:1];

  trailingAnchor4 = [v53 trailingAnchor];
  trailingAnchor5 = [(SKUIComposeReviewSampleCardView *)self trailingAnchor];
  [MEMORY[0x277CDD370] PPMConfirmedValueWithValue:20.0 newValue:24.0];
  v67 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-v66];
  [v67 setActive:1];

  heightAnchor2 = [v53 heightAnchor];
  [MEMORY[0x277CDD370] PPMConfirmedValueWithValue:11.0 newValue:14.0];
  v69 = [heightAnchor2 constraintEqualToConstant:?];
  [v69 setActive:1];

  v70 = objc_opt_new();
  [v70 setTranslatesAutoresizingMaskIntoConstraints:0];
  tertiarySystemFillColor3 = [MEMORY[0x277D75348] tertiarySystemFillColor];
  [v70 setBackgroundColor:tertiarySystemFillColor3];

  layer4 = [v70 layer];
  [layer4 setCornerRadius:5.0];

  [(SKUIComposeReviewSampleCardView *)self addSubview:v70];
  topAnchor5 = [v70 topAnchor];
  bottomAnchor = [v53 bottomAnchor];
  [MEMORY[0x277CDD370] PPMConfirmedValueWithValue:7.0 newValue:9.0];
  v75 = [topAnchor5 constraintEqualToAnchor:bottomAnchor constant:?];
  [v75 setActive:1];

  leadingAnchor9 = [v70 leadingAnchor];
  leadingAnchor10 = [(SKUIComposeReviewSampleCardView *)self leadingAnchor];
  [MEMORY[0x277CDD370] PPMConfirmedValueWithValue:20.0 newValue:24.0];
  v78 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:?];
  [v78 setActive:1];

  trailingAnchor6 = [v70 trailingAnchor];
  trailingAnchor7 = [(SKUIComposeReviewSampleCardView *)self trailingAnchor];
  [MEMORY[0x277CDD370] PPMConfirmedValueWithValue:20.0 newValue:24.0];
  v82 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:-v81];
  [v82 setActive:1];

  heightAnchor3 = [v70 heightAnchor];
  [MEMORY[0x277CDD370] PPMConfirmedValueWithValue:11.0 newValue:14.0];
  v84 = [heightAnchor3 constraintEqualToConstant:?];
  [v84 setActive:1];

  v85 = objc_opt_new();
  [v85 setTranslatesAutoresizingMaskIntoConstraints:0];
  tertiarySystemFillColor4 = [MEMORY[0x277D75348] tertiarySystemFillColor];
  [v85 setBackgroundColor:tertiarySystemFillColor4];

  layer5 = [v85 layer];
  [layer5 setCornerRadius:5.0];

  [(SKUIComposeReviewSampleCardView *)self addSubview:v85];
  topAnchor6 = [v85 topAnchor];
  bottomAnchor2 = [v70 bottomAnchor];
  [MEMORY[0x277CDD370] PPMConfirmedValueWithValue:7.0 newValue:9.0];
  v90 = [topAnchor6 constraintEqualToAnchor:bottomAnchor2 constant:?];
  [v90 setActive:1];

  leadingAnchor11 = [v85 leadingAnchor];
  leadingAnchor12 = [(SKUIComposeReviewSampleCardView *)self leadingAnchor];
  [MEMORY[0x277CDD370] PPMConfirmedValueWithValue:20.0 newValue:24.0];
  v93 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12 constant:?];
  [v93 setActive:1];

  trailingAnchor8 = [v85 trailingAnchor];
  trailingAnchor9 = [(SKUIComposeReviewSampleCardView *)self trailingAnchor];
  [MEMORY[0x277CDD370] PPMConfirmedValueWithValue:20.0 newValue:24.0];
  v97 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9 constant:-v96];
  [v97 setActive:1];

  heightAnchor4 = [v85 heightAnchor];
  [MEMORY[0x277CDD370] PPMConfirmedValueWithValue:11.0 newValue:14.0];
  v99 = [heightAnchor4 constraintEqualToConstant:?];
  [v99 setActive:1];

  bottomAnchor3 = [v85 bottomAnchor];
  bottomAnchor4 = [(SKUIComposeReviewSampleCardView *)self bottomAnchor];
  [MEMORY[0x277CDD370] PPMConfirmedValueWithValue:20.0 newValue:24.0];
  v103 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-v102];
  [v103 setActive:1];
}

@end