@interface VUIAppInstallLockup
- (VUIAppInstallLockup)initWithFrame:(CGRect)frame;
- (VUITextBadge)ageRatingBadge;
- (id)_textColorForDarkMode;
- (void)_configureAgeRatingBadge;
- (void)_configureLabels;
- (void)_layoutForIos;
- (void)_layoutForTvos;
- (void)setAgeRating:(id)rating;
- (void)setIAP:(id)p;
- (void)setIcon:(id)icon;
- (void)setName:(id)name;
- (void)setSubtitle:(id)subtitle;
@end

@implementation VUIAppInstallLockup

- (VUIAppInstallLockup)initWithFrame:(CGRect)frame
{
  v28.receiver = self;
  v28.super_class = VUIAppInstallLockup;
  v3 = [(VUIAppInstallLockup *)&v28 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
    nameLabel = v3->_nameLabel;
    v3->_nameLabel = v9;

    [(UILabel *)v3->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_nameLabel setNumberOfLines:1];
    v11 = v3->_nameLabel;
    v12 = [@"UIA.TV.Text." stringByAppendingString:@"name"];
    [(UILabel *)v11 setAccessibilityIdentifier:v12];

    v13 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = v13;

    [(UILabel *)v3->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_subtitleLabel setNumberOfLines:1];
    v15 = v3->_subtitleLabel;
    v16 = [@"UIA.TV.Text." stringByAppendingString:@"subtitle"];
    [(UILabel *)v15 setAccessibilityIdentifier:v16];

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 2)
    {
      v19 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
      iAPLabel = v3->_iAPLabel;
      v3->_iAPLabel = v19;

      [(UILabel *)v3->_iAPLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UILabel *)v3->_iAPLabel setNumberOfLines:1];
      v21 = v3->_iAPLabel;
      v22 = [@"UIA.TV.Text." stringByAppendingString:@"inAppPurchases"];
      [(UILabel *)v21 setAccessibilityIdentifier:v22];

      v23 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
      ageRatingLabel = v3->_ageRatingLabel;
      v3->_ageRatingLabel = v23;

      [(UILabel *)v3->_ageRatingLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UILabel *)v3->_ageRatingLabel setNumberOfLines:1];
      v25 = v3->_ageRatingLabel;
      v26 = [@"UIA.TV.Text." stringByAppendingString:@"ageRating"];
      [(UILabel *)v25 setAccessibilityIdentifier:v26];

      [(VUIAppInstallLockup *)v3 _layoutForTvos];
    }

    else
    {
      [(VUIAppInstallLockup *)v3 _layoutForIos];
    }

    [(VUIAppInstallLockup *)v3 _configureLabels];
  }

  return v3;
}

- (void)_layoutForTvos
{
  v36[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DCF90]);
  v36[0] = self->_nameLabel;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  v5 = [v3 initWithArrangedSubviews:v4];
  nameAndRatingStack = self->_nameAndRatingStack;
  self->_nameAndRatingStack = v5;

  [(UIStackView *)self->_nameAndRatingStack setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_nameAndRatingStack setSpacing:1.17549435e-38];
  [(UIStackView *)self->_nameAndRatingStack setAxis:0];
  [(UIStackView *)self->_nameAndRatingStack setAlignment:3];
  v7 = objc_alloc(MEMORY[0x1E69DCF90]);
  ageRatingLabel = self->_ageRatingLabel;
  v35[0] = self->_nameAndRatingStack;
  v35[1] = ageRatingLabel;
  v35[2] = self->_iAPLabel;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:3];
  v10 = [v7 initWithArrangedSubviews:v9];
  metadataStackView = self->_metadataStackView;
  self->_metadataStackView = v10;

  [(UIStackView *)self->_metadataStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_metadataStackView setCustomSpacing:self->_nameAndRatingStack afterView:8.0];
  [(UIStackView *)self->_metadataStackView setCustomSpacing:self->_ageRatingLabel afterView:4.0];
  [(UIStackView *)self->_metadataStackView setAxis:1];
  [(UIStackView *)self->_metadataStackView setAlignment:1];
  v12 = [VUIAppInstallView alloc];
  v13 = [(VUIAppInstallView *)v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  iconView = self->_iconView;
  self->_iconView = v13;

  [(VUIAppInstallView *)self->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v15) = 1148846080;
  [(VUIAppInstallView *)self->_iconView setContentCompressionResistancePriority:1 forAxis:v15];
  LODWORD(v16) = 1148846080;
  [(VUIAppInstallView *)self->_iconView setContentCompressionResistancePriority:0 forAxis:v16];
  [(VUIAppInstallView *)self->_iconView setAccessibilityIdentifier:@"UIA.TV.Image.appIcon"];
  v17 = objc_alloc(MEMORY[0x1E69DCF90]);
  v18 = self->_metadataStackView;
  v34[0] = self->_iconView;
  v34[1] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  v20 = [v17 initWithArrangedSubviews:v19];
  containerStack = self->_containerStack;
  self->_containerStack = v20;

  [(UIStackView *)self->_containerStack setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_containerStack setSpacing:40.0];
  [(UIStackView *)self->_containerStack setAxis:0];
  [(UIStackView *)self->_containerStack setAlignment:3];
  [(VUIAppInstallLockup *)self addSubview:self->_containerStack];
  leadingAnchor = [(UIStackView *)self->_containerStack leadingAnchor];
  leadingAnchor2 = [(VUIAppInstallLockup *)self leadingAnchor];
  v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v24 setActive:1];

  trailingAnchor = [(UIStackView *)self->_containerStack trailingAnchor];
  trailingAnchor2 = [(VUIAppInstallLockup *)self trailingAnchor];
  v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v27 setActive:1];

  topAnchor = [(UIStackView *)self->_containerStack topAnchor];
  topAnchor2 = [(VUIAppInstallLockup *)self topAnchor];
  v30 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v30 setActive:1];

  bottomAnchor = [(UIStackView *)self->_containerStack bottomAnchor];
  bottomAnchor2 = [(VUIAppInstallLockup *)self bottomAnchor];
  v33 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v33 setActive:1];
}

- (void)_layoutForIos
{
  v37[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DCF90]);
  v37[0] = self->_nameLabel;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
  v5 = [v3 initWithArrangedSubviews:v4];
  nameAndRatingStack = self->_nameAndRatingStack;
  self->_nameAndRatingStack = v5;

  [(UIStackView *)self->_nameAndRatingStack setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_nameAndRatingStack setSpacing:1.17549435e-38];
  [(UIStackView *)self->_nameAndRatingStack setAxis:0];
  [(UIStackView *)self->_nameAndRatingStack setAlignment:3];
  v7 = [VUIUIStackView alloc];
  subtitleLabel = self->_subtitleLabel;
  v36[0] = self->_nameAndRatingStack;
  v36[1] = subtitleLabel;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
  v10 = [(VUIUIStackView *)v7 initWithArrangedSubviews:v9];

  [(UIStackView *)v10 setAxisFollowsDeviceOrientation:0];
  [(UIStackView *)v10 setAlignmentFollowsDeviceOrientation:1];
  metadataStackView = self->_metadataStackView;
  self->_metadataStackView = v10;
  v12 = v10;

  [(UIStackView *)self->_metadataStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_metadataStackView setCustomSpacing:self->_nameAndRatingStack afterView:2.0];
  [(UIStackView *)self->_metadataStackView setAxis:1];
  [(UIStackView *)self->_metadataStackView setAlignment:3];
  v13 = [VUIAppInstallView alloc];
  v14 = [(VUIAppInstallView *)v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  iconView = self->_iconView;
  self->_iconView = v14;

  [(VUIAppInstallView *)self->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v16) = 1148846080;
  [(VUIAppInstallView *)self->_iconView setContentCompressionResistancePriority:1 forAxis:v16];
  LODWORD(v17) = 1148846080;
  [(VUIAppInstallView *)self->_iconView setContentCompressionResistancePriority:0 forAxis:v17];
  [(VUIAppInstallView *)self->_iconView setAccessibilityIdentifier:@"UIA.TV.Image.appIcon"];
  v18 = [VUIUIStackView alloc];
  v19 = self->_metadataStackView;
  v35[0] = self->_iconView;
  v35[1] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  v21 = [(VUIUIStackView *)v18 initWithArrangedSubviews:v20];
  containerStack = self->_containerStack;
  self->_containerStack = v21;

  [(UIStackView *)self->_containerStack setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_containerStack setSpacing:1.17549435e-38];
  [(UIStackView *)self->_containerStack setCustomSpacing:self->_iconView afterView:20.0];
  [(UIStackView *)self->_containerStack setAxis:1];
  [(UIStackView *)self->_containerStack setAlignment:3];
  [(VUIAppInstallLockup *)self addSubview:self->_containerStack];
  leadingAnchor = [(UIStackView *)self->_containerStack leadingAnchor];
  leadingAnchor2 = [(VUIAppInstallLockup *)self leadingAnchor];
  v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v25 setActive:1];

  trailingAnchor = [(UIStackView *)self->_containerStack trailingAnchor];
  trailingAnchor2 = [(VUIAppInstallLockup *)self trailingAnchor];
  v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v28 setActive:1];

  topAnchor = [(UIStackView *)self->_containerStack topAnchor];
  topAnchor2 = [(VUIAppInstallLockup *)self topAnchor];
  v31 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v31 setActive:1];

  bottomAnchor = [(UIStackView *)self->_containerStack bottomAnchor];

  bottomAnchor2 = [(VUIAppInstallLockup *)self bottomAnchor];
  v34 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v34 setActive:1];
}

- (void)setIcon:(id)icon
{
  objc_storeStrong(&self->_icon, icon);
  iconCopy = icon;
  [(VUIAppInstallView *)self->_iconView setAppIcon:iconCopy];
}

- (void)setName:(id)name
{
  nameCopy = name;
  v4 = [nameCopy copy];
  name = self->_name;
  self->_name = v4;

  [(UILabel *)self->_nameLabel setText:nameCopy];
}

- (void)setAgeRating:(id)rating
{
  ratingCopy = rating;
  if (self->_ageRating != ratingCopy)
  {
    v9 = ratingCopy;
    v5 = [(NSString *)ratingCopy copy];
    ageRating = self->_ageRating;
    self->_ageRating = v5;

    ageRatingBadge = [(VUIAppInstallLockup *)self ageRatingBadge];

    if (ageRatingBadge)
    {
      ageRatingBadge2 = [(VUIAppInstallLockup *)self ageRatingBadge];
      [ageRatingBadge2 setTitle:self->_ageRating];
    }

    else
    {
      ageRatingBadge2 = [(VUIAppInstallLockup *)self ageRatingLabel];
      [ageRatingBadge2 setText:self->_ageRating];
    }

    ratingCopy = v9;
  }
}

- (void)setIAP:(id)p
{
  pCopy = p;
  v4 = [pCopy copy];
  iAP = self->_iAP;
  self->_iAP = v4;

  [(UILabel *)self->_iAPLabel setText:pCopy];
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  v4 = [subtitleCopy copy];
  subtitle = self->_subtitle;
  self->_subtitle = v4;

  [(UILabel *)self->_subtitleLabel setText:subtitleCopy];
}

- (VUITextBadge)ageRatingBadge
{
  ageRatingBadge = self->_ageRatingBadge;
  if (!ageRatingBadge)
  {
    [(VUIAppInstallLockup *)self _configureAgeRatingBadge];
    ageRatingBadge = self->_ageRatingBadge;
  }

  return ageRatingBadge;
}

- (void)_configureAgeRatingBadge
{
  v3 = [VUITextBadge alloc];
  ageRating = self->_ageRating;
  vui_secondaryTextColor = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
  v6 = [(VUITextBadge *)v3 initWithTitle:ageRating tintColor:vui_secondaryTextColor fontSize:14.0 cornerRadius:4.0];

  [(VUITextBadge *)v6 setBadgeStyle:1];
  [(VUITextBadge *)v6 setStrokeSize:0.5];
  [(VUITextBadge *)v6 setBadgeInsets:1.0, 5.0, 1.0, 5.0];
  [(VUITextBadge *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  heightAnchor = [(VUITextBadge *)v6 heightAnchor];
  v8 = [heightAnchor constraintEqualToConstant:20.0];
  [v8 setActive:1];

  widthAnchor = [(VUITextBadge *)v6 widthAnchor];
  v10 = [widthAnchor constraintEqualToConstant:34.0];
  [v10 setActive:1];

  ageRatingBadge = self->_ageRatingBadge;
  self->_ageRatingBadge = v6;
  v14 = v6;

  v12 = self->_ageRatingBadge;
  v13 = [@"UIA.TV.Text." stringByAppendingString:@"ageRating"];
  [(VUITextBadge *)v12 setAccessibilityIdentifier:v13];

  [(UIStackView *)self->_nameAndRatingStack addArrangedSubview:self->_ageRatingBadge];
}

- (void)_configureLabels
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 2)
  {
    nameLabel = self->_nameLabel;
    v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
    [(UILabel *)nameLabel setFont:v6];

    v7 = self->_nameLabel;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v7 setTextColor:whiteColor];

    ageRatingLabel = self->_ageRatingLabel;
    v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
    [(UILabel *)ageRatingLabel setFont:v10];

    v11 = self->_ageRatingLabel;
    _textColorForDarkMode = [(VUIAppInstallLockup *)self _textColorForDarkMode];
    [(UILabel *)v11 setTextColor:_textColorForDarkMode];

    iAPLabel = self->_iAPLabel;
    v14 = *MEMORY[0x1E69DDD10];
    v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
    [(UILabel *)iAPLabel setFont:v15];

    v16 = self->_iAPLabel;
    _textColorForDarkMode2 = [(VUIAppInstallLockup *)self _textColorForDarkMode];
    [(UILabel *)v16 setTextColor:_textColorForDarkMode2];

    subtitleLabel = self->_subtitleLabel;
    v19 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v14];
    [(UILabel *)subtitleLabel setFont:v19];

    v20 = self->_subtitleLabel;
    _textColorForDarkMode3 = [(VUIAppInstallLockup *)self _textColorForDarkMode];
    [(UILabel *)v20 setTextColor:?];
  }

  else
  {
    _textColorForDarkMode3 = objc_opt_new();
    [_textColorForDarkMode3 setTextStyle:2];
    [_textColorForDarkMode3 setFontWeight:6];
    [_textColorForDarkMode3 setMaximumContentSizeCategory:7];
    v21 = [MEMORY[0x1E69DB878] vui_fontFromTextLayout:_textColorForDarkMode3];
    [(UILabel *)self->_nameLabel setFont:v21];
    v22 = self->_subtitleLabel;
    v23 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD78] maximumContentSizeCategory:*MEMORY[0x1E69DDC50]];
    [(UILabel *)v22 setFont:v23];

    v24 = self->_subtitleLabel;
    vui_secondaryTextColor = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
    [(UILabel *)v24 setTextColor:vui_secondaryTextColor];
  }
}

- (id)_textColorForDarkMode
{
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v3 = [whiteColor colorWithAlphaComponent:0.7];

  return v3;
}

@end