@interface TVRUITitleView
- (TVRUITitleView)initWithStyleProvider:(id)a3;
- (void)_animateTouchesUp;
- (void)_setupConstraints;
- (void)_setupViewsIfNeeded;
- (void)_updateDeviceNameAutomationIdentifier:(id)a3;
- (void)updateTitleWithDeviceName:(id)a3 icon:(id)a4;
@end

@implementation TVRUITitleView

- (TVRUITitleView)initWithStyleProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TVRUITitleView;
  v6 = [(TVRUITitleView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_styleProvider, a3);
    [(TVRUITitleView *)v7 _setupViewsIfNeeded];
  }

  return v7;
}

- (void)_setupViewsIfNeeded
{
  v61[3] = *MEMORY[0x277D85DE8];
  v3 = [(TVRUITitleView *)self deviceModelImageView];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D755E8]);
    [(TVRUITitleView *)self setDeviceModelImageView:v4];

    v5 = [(TVRUITitleView *)self deviceModelImageView];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

    v6 = [(TVRUITitleView *)self styleProvider];
    v7 = [v6 primaryTextAndGlyphColor];
    v8 = [(TVRUITitleView *)self deviceModelImageView];
    [v8 setTintColor:v7];

    v9 = [(TVRUITitleView *)self deviceModelImageView];
    [v9 setContentMode:4];

    v10 = [(TVRUITitleView *)self deviceModelImageView];
    LODWORD(v11) = 1144750080;
    [v10 setContentCompressionResistancePriority:0 forAxis:v11];

    v12 = [(TVRUITitleView *)self deviceModelImageView];
    [v12 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  }

  v13 = [(TVRUITitleView *)self titleLabel];

  if (!v13)
  {
    v14 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(TVRUITitleView *)self setTitleLabel:v14];

    v15 = [(TVRUITitleView *)self styleProvider];
    v16 = [v15 fontForDeviceTitle];
    v17 = [(TVRUITitleView *)self titleLabel];
    [v17 setFont:v16];

    v18 = [(TVRUITitleView *)self styleProvider];
    v19 = [v18 textColorForDeviceTitle];
    v20 = [(TVRUITitleView *)self titleLabel];
    [v20 setTextColor:v19];

    v21 = [(TVRUITitleView *)self titleLabel];
    [v21 setAdjustsFontSizeToFitWidth:1];

    v22 = [(TVRUITitleView *)self titleLabel];
    [v22 setMinimumScaleFactor:0.4];

    v23 = [(TVRUITitleView *)self titleLabel];
    [v23 setAdjustsFontForContentSizeCategory:1];

    v24 = [(TVRUITitleView *)self titleLabel];
    LODWORD(v25) = 1132068864;
    [v24 setContentCompressionResistancePriority:0 forAxis:v25];

    v26 = [(TVRUITitleView *)self titleLabel];
    LODWORD(v27) = 1132068864;
    [v26 setContentHuggingPriority:0 forAxis:v27];
  }

  v28 = [(TVRUITitleView *)self imageView];

  if (!v28)
  {
    v29 = objc_alloc_init(MEMORY[0x277D755E8]);
    [(TVRUITitleView *)self setImageView:v29];

    v30 = [(TVRUITitleView *)self imageView];
    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];

    v31 = [(TVRUITitleView *)self styleProvider];
    v32 = [v31 tintColorForChevronImage];
    v33 = [(TVRUITitleView *)self imageView];
    [v33 setTintColor:v32];

    v34 = [(TVRUITitleView *)self styleProvider];
    v35 = [v34 chevronImage];
    v36 = [(TVRUITitleView *)self imageView];
    [v36 setImage:v35];

    v37 = [(TVRUITitleView *)self imageView];
    [v37 setContentMode:4];

    v38 = [(TVRUITitleView *)self imageView];
    LODWORD(v39) = 1144750080;
    [v38 setContentCompressionResistancePriority:0 forAxis:v39];

    v40 = [(TVRUITitleView *)self imageView];
    [v40 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  }

  v41 = [(TVRUITitleView *)self stackView];

  if (!v41)
  {
    v42 = objc_alloc(MEMORY[0x277D75520]);
    v43 = [v42 initForTextStyle:*MEMORY[0x277D76988]];
    v44 = objc_alloc(MEMORY[0x277D75A68]);
    v45 = [(TVRUITitleView *)self deviceModelImageView];
    v46 = [(TVRUITitleView *)self titleLabel];
    v61[1] = v46;
    v47 = [(TVRUITitleView *)self imageView];
    v61[2] = v47;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:3];
    v49 = [v44 initWithArrangedSubviews:v48];
    [(TVRUITitleView *)self setStackView:v49];

    v50 = [(TVRUITitleView *)self stackView];
    [v50 setTranslatesAutoresizingMaskIntoConstraints:0];

    v51 = [(TVRUITitleView *)self stackView];
    [v51 setAlignment:3];

    v52 = [(TVRUITitleView *)self stackView];
    [v43 scaledValueForValue:6.0];
    v54 = v53;
    v55 = [(TVRUITitleView *)self deviceModelImageView];
    [v52 setCustomSpacing:v55 afterView:v54];

    v56 = [(TVRUITitleView *)self stackView];
    [v43 scaledValueForValue:3.0];
    v58 = v57;
    v59 = [(TVRUITitleView *)self titleLabel];
    [v56 setCustomSpacing:v59 afterView:v58];

    v60 = [(TVRUITitleView *)self stackView];
    [(TVRUITitleView *)self addSubview:v60];
  }

  [(TVRUITitleView *)self _setupConstraints];
}

- (void)_setupConstraints
{
  v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = [(TVRUITitleView *)self stackView];
  v4 = [v3 leadingAnchor];
  v5 = [(TVRUITitleView *)self leadingAnchor];
  v6 = [v4 constraintGreaterThanOrEqualToAnchor:v5 constant:8.0];
  [v33 addObject:v6];

  v7 = [(TVRUITitleView *)self stackView];
  v8 = [v7 trailingAnchor];
  v9 = [(TVRUITitleView *)self trailingAnchor];
  v10 = [v8 constraintLessThanOrEqualToAnchor:v9 constant:-8.0];
  [v33 addObject:v10];

  v11 = [(TVRUITitleView *)self stackView];
  v12 = [v11 centerXAnchor];
  v13 = [(TVRUITitleView *)self centerXAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  [v33 addObject:v14];

  v15 = [(TVRUITitleView *)self stackView];
  v16 = [v15 centerYAnchor];
  v17 = [(TVRUITitleView *)self centerYAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  [v33 addObject:v18];

  v19 = [(TVRUITitleView *)self stackView];
  v20 = [v19 widthAnchor];
  v21 = [(TVRUITitleView *)self widthAnchor];
  v22 = [v20 constraintLessThanOrEqualToAnchor:v21];
  [v33 addObject:v22];

  v23 = [(TVRUITitleView *)self stackView];
  v24 = [v23 heightAnchor];
  v25 = [(TVRUITitleView *)self heightAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];
  [v33 addObject:v26];

  v27 = [(TVRUITitleView *)self deviceModelImageView];
  v28 = [v27 widthAnchor];
  v29 = [v28 constraintEqualToConstant:24.0];
  [v33 addObject:v29];

  v30 = [(TVRUITitleView *)self imageView];
  v31 = [v30 widthAnchor];
  v32 = [v31 constraintEqualToConstant:15.0];
  [v33 addObject:v32];

  [MEMORY[0x277CCAAD0] activateConstraints:v33];
}

- (void)updateTitleWithDeviceName:(id)a3 icon:(id)a4
{
  v6 = a4;
  v11 = a3;
  [(TVRUITitleView *)self _setupViewsIfNeeded];
  v7 = [(TVRUITitleView *)self titleLabel];
  [v7 setText:v11];

  v8 = [(TVRUITitleView *)self deviceModelImageView];
  [v8 setImage:v6];

  v9 = v6 == 0;
  v10 = [(TVRUITitleView *)self deviceModelImageView];
  [v10 setHidden:v9];

  [(TVRUITitleView *)self _updateDeviceNameAutomationIdentifier:v11];
}

- (void)_updateDeviceNameAutomationIdentifier:(id)a3
{
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"selectedDevice=%@", a3];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"UIA.TVRemoteService.%@", v6];
  v5 = [(TVRUITitleView *)self titleLabel];
  [v5 setAccessibilityIdentifier:v4];
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