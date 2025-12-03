@interface TVRUITitleView
- (TVRUITitleView)initWithStyleProvider:(id)provider;
- (void)_animateTouchesUp;
- (void)_setupConstraints;
- (void)_setupViewsIfNeeded;
- (void)_updateDeviceNameAutomationIdentifier:(id)identifier;
- (void)updateTitleWithDeviceName:(id)name icon:(id)icon;
@end

@implementation TVRUITitleView

- (TVRUITitleView)initWithStyleProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = TVRUITitleView;
  v6 = [(TVRUITitleView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_styleProvider, provider);
    [(TVRUITitleView *)v7 _setupViewsIfNeeded];
  }

  return v7;
}

- (void)_setupViewsIfNeeded
{
  v61[3] = *MEMORY[0x277D85DE8];
  deviceModelImageView = [(TVRUITitleView *)self deviceModelImageView];

  if (!deviceModelImageView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D755E8]);
    [(TVRUITitleView *)self setDeviceModelImageView:v4];

    deviceModelImageView2 = [(TVRUITitleView *)self deviceModelImageView];
    [deviceModelImageView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    styleProvider = [(TVRUITitleView *)self styleProvider];
    primaryTextAndGlyphColor = [styleProvider primaryTextAndGlyphColor];
    deviceModelImageView3 = [(TVRUITitleView *)self deviceModelImageView];
    [deviceModelImageView3 setTintColor:primaryTextAndGlyphColor];

    deviceModelImageView4 = [(TVRUITitleView *)self deviceModelImageView];
    [deviceModelImageView4 setContentMode:4];

    deviceModelImageView5 = [(TVRUITitleView *)self deviceModelImageView];
    LODWORD(v11) = 1144750080;
    [deviceModelImageView5 setContentCompressionResistancePriority:0 forAxis:v11];

    deviceModelImageView6 = [(TVRUITitleView *)self deviceModelImageView];
    [deviceModelImageView6 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  }

  titleLabel = [(TVRUITitleView *)self titleLabel];

  if (!titleLabel)
  {
    v14 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(TVRUITitleView *)self setTitleLabel:v14];

    styleProvider2 = [(TVRUITitleView *)self styleProvider];
    fontForDeviceTitle = [styleProvider2 fontForDeviceTitle];
    titleLabel2 = [(TVRUITitleView *)self titleLabel];
    [titleLabel2 setFont:fontForDeviceTitle];

    styleProvider3 = [(TVRUITitleView *)self styleProvider];
    textColorForDeviceTitle = [styleProvider3 textColorForDeviceTitle];
    titleLabel3 = [(TVRUITitleView *)self titleLabel];
    [titleLabel3 setTextColor:textColorForDeviceTitle];

    titleLabel4 = [(TVRUITitleView *)self titleLabel];
    [titleLabel4 setAdjustsFontSizeToFitWidth:1];

    titleLabel5 = [(TVRUITitleView *)self titleLabel];
    [titleLabel5 setMinimumScaleFactor:0.4];

    titleLabel6 = [(TVRUITitleView *)self titleLabel];
    [titleLabel6 setAdjustsFontForContentSizeCategory:1];

    titleLabel7 = [(TVRUITitleView *)self titleLabel];
    LODWORD(v25) = 1132068864;
    [titleLabel7 setContentCompressionResistancePriority:0 forAxis:v25];

    titleLabel8 = [(TVRUITitleView *)self titleLabel];
    LODWORD(v27) = 1132068864;
    [titleLabel8 setContentHuggingPriority:0 forAxis:v27];
  }

  imageView = [(TVRUITitleView *)self imageView];

  if (!imageView)
  {
    v29 = objc_alloc_init(MEMORY[0x277D755E8]);
    [(TVRUITitleView *)self setImageView:v29];

    imageView2 = [(TVRUITitleView *)self imageView];
    [imageView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    styleProvider4 = [(TVRUITitleView *)self styleProvider];
    tintColorForChevronImage = [styleProvider4 tintColorForChevronImage];
    imageView3 = [(TVRUITitleView *)self imageView];
    [imageView3 setTintColor:tintColorForChevronImage];

    styleProvider5 = [(TVRUITitleView *)self styleProvider];
    chevronImage = [styleProvider5 chevronImage];
    imageView4 = [(TVRUITitleView *)self imageView];
    [imageView4 setImage:chevronImage];

    imageView5 = [(TVRUITitleView *)self imageView];
    [imageView5 setContentMode:4];

    imageView6 = [(TVRUITitleView *)self imageView];
    LODWORD(v39) = 1144750080;
    [imageView6 setContentCompressionResistancePriority:0 forAxis:v39];

    imageView7 = [(TVRUITitleView *)self imageView];
    [imageView7 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  }

  stackView = [(TVRUITitleView *)self stackView];

  if (!stackView)
  {
    v42 = objc_alloc(MEMORY[0x277D75520]);
    v43 = [v42 initForTextStyle:*MEMORY[0x277D76988]];
    v44 = objc_alloc(MEMORY[0x277D75A68]);
    deviceModelImageView7 = [(TVRUITitleView *)self deviceModelImageView];
    titleLabel9 = [(TVRUITitleView *)self titleLabel];
    v61[1] = titleLabel9;
    imageView8 = [(TVRUITitleView *)self imageView];
    v61[2] = imageView8;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:3];
    v49 = [v44 initWithArrangedSubviews:v48];
    [(TVRUITitleView *)self setStackView:v49];

    stackView2 = [(TVRUITitleView *)self stackView];
    [stackView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    stackView3 = [(TVRUITitleView *)self stackView];
    [stackView3 setAlignment:3];

    stackView4 = [(TVRUITitleView *)self stackView];
    [v43 scaledValueForValue:6.0];
    v54 = v53;
    deviceModelImageView8 = [(TVRUITitleView *)self deviceModelImageView];
    [stackView4 setCustomSpacing:deviceModelImageView8 afterView:v54];

    stackView5 = [(TVRUITitleView *)self stackView];
    [v43 scaledValueForValue:3.0];
    v58 = v57;
    titleLabel10 = [(TVRUITitleView *)self titleLabel];
    [stackView5 setCustomSpacing:titleLabel10 afterView:v58];

    stackView6 = [(TVRUITitleView *)self stackView];
    [(TVRUITitleView *)self addSubview:stackView6];
  }

  [(TVRUITitleView *)self _setupConstraints];
}

- (void)_setupConstraints
{
  v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
  stackView = [(TVRUITitleView *)self stackView];
  leadingAnchor = [stackView leadingAnchor];
  leadingAnchor2 = [(TVRUITitleView *)self leadingAnchor];
  v6 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:8.0];
  [v33 addObject:v6];

  stackView2 = [(TVRUITitleView *)self stackView];
  trailingAnchor = [stackView2 trailingAnchor];
  trailingAnchor2 = [(TVRUITitleView *)self trailingAnchor];
  v10 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-8.0];
  [v33 addObject:v10];

  stackView3 = [(TVRUITitleView *)self stackView];
  centerXAnchor = [stackView3 centerXAnchor];
  centerXAnchor2 = [(TVRUITitleView *)self centerXAnchor];
  v14 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v33 addObject:v14];

  stackView4 = [(TVRUITitleView *)self stackView];
  centerYAnchor = [stackView4 centerYAnchor];
  centerYAnchor2 = [(TVRUITitleView *)self centerYAnchor];
  v18 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v33 addObject:v18];

  stackView5 = [(TVRUITitleView *)self stackView];
  widthAnchor = [stackView5 widthAnchor];
  widthAnchor2 = [(TVRUITitleView *)self widthAnchor];
  v22 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];
  [v33 addObject:v22];

  stackView6 = [(TVRUITitleView *)self stackView];
  heightAnchor = [stackView6 heightAnchor];
  heightAnchor2 = [(TVRUITitleView *)self heightAnchor];
  v26 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  [v33 addObject:v26];

  deviceModelImageView = [(TVRUITitleView *)self deviceModelImageView];
  widthAnchor3 = [deviceModelImageView widthAnchor];
  v29 = [widthAnchor3 constraintEqualToConstant:24.0];
  [v33 addObject:v29];

  imageView = [(TVRUITitleView *)self imageView];
  widthAnchor4 = [imageView widthAnchor];
  v32 = [widthAnchor4 constraintEqualToConstant:15.0];
  [v33 addObject:v32];

  [MEMORY[0x277CCAAD0] activateConstraints:v33];
}

- (void)updateTitleWithDeviceName:(id)name icon:(id)icon
{
  iconCopy = icon;
  nameCopy = name;
  [(TVRUITitleView *)self _setupViewsIfNeeded];
  titleLabel = [(TVRUITitleView *)self titleLabel];
  [titleLabel setText:nameCopy];

  deviceModelImageView = [(TVRUITitleView *)self deviceModelImageView];
  [deviceModelImageView setImage:iconCopy];

  v9 = iconCopy == 0;
  deviceModelImageView2 = [(TVRUITitleView *)self deviceModelImageView];
  [deviceModelImageView2 setHidden:v9];

  [(TVRUITitleView *)self _updateDeviceNameAutomationIdentifier:nameCopy];
}

- (void)_updateDeviceNameAutomationIdentifier:(id)identifier
{
  identifier = [MEMORY[0x277CCACA8] stringWithFormat:@"selectedDevice=%@", identifier];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"UIA.TVRemoteService.%@", identifier];
  titleLabel = [(TVRUITitleView *)self titleLabel];
  [titleLabel setAccessibilityIdentifier:v4];
}

- (void)_animateTouchesUp
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __35__TVRUITitleView__animateTouchesUp__block_invoke;
  v2[3] = &unk_279D87C20;
  v2[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v2 animations:0.48];
}

@end