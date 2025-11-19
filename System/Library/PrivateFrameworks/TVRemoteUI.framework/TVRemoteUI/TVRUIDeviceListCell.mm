@interface TVRUIDeviceListCell
- (TVRUIDeviceListCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_configureViews;
- (void)_setupConstraints;
- (void)_updateConnectionStatus;
- (void)_updateDeviceName;
- (void)_updateFindMyButton;
- (void)prepareForReuse;
- (void)setDevice:(id)a3;
- (void)setFindButtonTapAction:(id)a3;
- (void)setShowSeparator:(BOOL)a3;
- (void)setStyleProvider:(id)a3;
@end

@implementation TVRUIDeviceListCell

- (TVRUIDeviceListCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v29.receiver = self;
  v29.super_class = TVRUIDeviceListCell;
  v4 = [(TVRUIDeviceListCell *)&v29 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277D75348] clearColor];
    [(TVRUIDeviceListCell *)v4 setBackgroundColor:v5];

    v6 = [MEMORY[0x277D75348] whiteColor];
    [(TVRUIDeviceListCell *)v4 setTintColor:v6];

    v7 = objc_alloc_init(MEMORY[0x277D755E8]);
    checkmarkImageView = v4->_checkmarkImageView;
    v4->_checkmarkImageView = v7;

    v9 = [(TVRUIDeviceListCell *)v4 contentView];
    [v9 addSubview:v4->_checkmarkImageView];

    [(UIImageView *)v4->_checkmarkImageView setContentMode:4];
    [(UIImageView *)v4->_checkmarkImageView setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
    [(UIImageView *)v4->_checkmarkImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = objc_alloc_init(MEMORY[0x277D755E8]);
    modelImageView = v4->_modelImageView;
    v4->_modelImageView = v10;

    v12 = [(TVRUIDeviceListCell *)v4 contentView];
    [v12 addSubview:v4->_modelImageView];

    [(UIImageView *)v4->_modelImageView setContentMode:4];
    [(UIImageView *)v4->_modelImageView setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
    [(UIImageView *)v4->_modelImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = objc_alloc_init(MEMORY[0x277D756B8]);
    deviceLabel = v4->_deviceLabel;
    v4->_deviceLabel = v13;

    v15 = [(TVRUIDeviceListCell *)v4 contentView];
    [v15 addSubview:v4->_deviceLabel];

    [(UILabel *)v4->_deviceLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v16) = 1132068864;
    [(UILabel *)v4->_deviceLabel setContentCompressionResistancePriority:0 forAxis:v16];
    LODWORD(v17) = 1132068864;
    [(UILabel *)v4->_deviceLabel setContentHuggingPriority:0 forAxis:v17];
    [(UILabel *)v4->_deviceLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v4->_deviceLabel setMinimumScaleFactor:0.4];
    v18 = [MEMORY[0x277D75230] filledButtonConfiguration];
    [v18 setImagePlacement:2];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"TVRemoteFindButtonTitle" value:&stru_287E6AEF8 table:@"Localizable"];
    [v18 setTitle:v20];

    [v18 setCornerStyle:4];
    [v18 setButtonSize:1];
    [v18 setTitleLineBreakMode:4];
    v21 = [MEMORY[0x277D75348] clearColor];
    [v18 setBaseBackgroundColor:v21];

    v22 = [MEMORY[0x277D75220] buttonWithConfiguration:v18 primaryAction:0];
    findMyButton = v4->_findMyButton;
    v4->_findMyButton = v22;

    v24 = [(TVRUIDeviceListCell *)v4 contentView];
    [v24 addSubview:v4->_findMyButton];

    [(UIButton *)v4->_findMyButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v4->_findMyButton setHidden:1];
    [(UIButton *)v4->_findMyButton setHitTestInsets:-5.0, -10.0, -5.0, -10.0];
    v25 = objc_alloc_init(MEMORY[0x277D75D18]);
    separator = v4->_separator;
    v4->_separator = v25;

    v27 = [(TVRUIDeviceListCell *)v4 contentView];
    [v27 addSubview:v4->_separator];

    [(UIView *)v4->_separator setTranslatesAutoresizingMaskIntoConstraints:0];
    v4->_showSeparator = 1;
  }

  return v4;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = TVRUIDeviceListCell;
  [(TVRUIDeviceListCell *)&v3 prepareForReuse];
  [(TVRUIDeviceListCell *)self setFindButtonTapAction:0];
}

- (void)setStyleProvider:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_styleProvider != v5)
  {
    v6 = _TVRUIDevicePickerLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v5;
      _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "Setting new styleProvider: %@", buf, 0xCu);
    }

    objc_storeStrong(&self->_styleProvider, a3);
    v7 = _UISolariumEnabled();
    v8 = [(TVRUIDeviceListCell *)self findMyButton];
    v9 = [v8 configuration];

    v10 = [(TVRUIDeviceListCell *)self styleProvider];
    v11 = v10;
    if (v7)
    {
      [v10 solariumLightButtonBackgroundColor];
    }

    else
    {
      [v10 buttonBackgroundColor];
    }
    v12 = ;
    [v9 setBaseBackgroundColor:v12];

    v13 = [(TVRUIDeviceListCell *)self styleProvider];
    v14 = [v13 tvRemoteImage];
    [v9 setImage:v14];

    [v9 setImagePadding:10.0];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __40__TVRUIDeviceListCell_setStyleProvider___block_invoke;
    v27[3] = &unk_279D88740;
    v27[4] = self;
    [v9 setTitleTextAttributesTransformer:v27];
    v15 = [(TVRUIDeviceListCell *)self findMyButton];
    [v15 setConfiguration:v9];

    v16 = [(TVRUIDeviceListCell *)self styleProvider];
    v17 = [v16 cellSeparatorBackgroundColor];
    v18 = [(TVRUIDeviceListCell *)self separator];
    [v18 setBackgroundColor:v17];

    if (_UISolariumEnabled())
    {
      v19 = [MEMORY[0x277D75348] clearColor];
      [(TVRUIDeviceListCell *)self setBackgroundColor:v19];
    }

    else
    {
      v19 = [(TVRUIDeviceListCell *)self styleProvider];
      v20 = [v19 cellBackgroundColor];
      [(TVRUIDeviceListCell *)self setBackgroundColor:v20];
    }

    v21 = [(TVRUIDeviceListCell *)self styleProvider];
    v22 = [v21 fontForDeviceListRow];
    v23 = [(TVRUIDeviceListCell *)self deviceLabel];
    [v23 setFont:v22];

    v24 = [(TVRUIDeviceListCell *)self styleProvider];
    v25 = [v24 checkmarkImage];
    v26 = [(TVRUIDeviceListCell *)self checkmarkImageView];
    [v26 setImage:v25];

    [(TVRUIDeviceListCell *)self _setupConstraints];
  }
}

id __40__TVRUIDeviceListCell_setStyleProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [*(a1 + 32) styleProvider];
  v5 = [v4 fontForDeviceListRow];
  [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x277D740A8]];

  return v3;
}

- (void)setDevice:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_device != v5)
  {
    objc_storeStrong(&self->_device, a3);
    [(TVRUIDeviceListCell *)self _configureViews];
    v5 = v6;
  }

  if (v5)
  {
    [(TVRUIDeviceListCell *)self _updateConnectionStatus];
    [(TVRUIDeviceListCell *)self _updateDeviceName];
    v5 = v6;
  }
}

- (void)setShowSeparator:(BOOL)a3
{
  if (self->_showSeparator != a3)
  {
    v4 = a3;
    self->_showSeparator = a3;
    v5 = [(TVRUIDeviceListCell *)self separator];
    [v5 setHidden:!v4];
  }
}

- (void)setFindButtonTapAction:(id)a3
{
  v5 = a3;
  if (self->_findButtonTapAction != v5)
  {
    v8 = v5;
    v6 = [(TVRUIDeviceListCell *)self findMyButton];
    v7 = v6;
    if (v8)
    {
      [v6 addAction:v8 forControlEvents:64];
    }

    else
    {
      [v6 removeAction:self->_findButtonTapAction forControlEvents:64];
    }

    objc_storeStrong(&self->_findButtonTapAction, a3);
  }

  MEMORY[0x2821F96F8]();
}

- (void)_configureViews
{
  v3 = [(TVRUIDeviceListCell *)self device];

  if (v3)
  {
    [(TVRUIDeviceListCell *)self _updateDeviceName];
    v4 = [(TVRUIDeviceListCell *)self device];
    v8 = [v4 model];

    v5 = [(TVRUIDeviceListCell *)self styleProvider];
    v6 = [v5 devicePickerIconForDeviceModel:v8];

    v7 = [(TVRUIDeviceListCell *)self modelImageView];
    [v7 setImage:v6];

    [(TVRUIDeviceListCell *)self _updateFindMyButton];
  }
}

- (void)_updateDeviceName
{
  v3 = +[TVRUIFeatures isPickerDebugUIEnabled];
  v4 = [(TVRUIDeviceListCell *)self device];
  v5 = v4;
  if (v3)
  {
    [v4 debugName];
  }

  else
  {
    [v4 name];
  }
  v7 = ;

  v6 = [(TVRUIDeviceListCell *)self deviceLabel];
  [v6 setText:v7];
}

- (void)_setupConstraints
{
  v3 = _UISolariumEnabled();
  v99 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v3)
  {
    v4 = 5.0;
  }

  else
  {
    v4 = 10.0;
  }

  if (v3)
  {
    v5 = 5.0;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = [(TVRUIDeviceListCell *)self checkmarkImageView];
  v7 = [v6 leadingAnchor];
  v8 = [(TVRUIDeviceListCell *)self contentView];
  v9 = [v8 leadingAnchor];
  v10 = [(TVRUIDeviceListCell *)self styleProvider];
  [v10 touchpadInsets];
  v12 = [v7 constraintEqualToAnchor:v9 constant:v5 + v11];
  [v99 addObject:v12];

  v13 = [(TVRUIDeviceListCell *)self checkmarkImageView];
  v14 = [v13 centerYAnchor];
  v15 = [(TVRUIDeviceListCell *)self contentView];
  v16 = [v15 centerYAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  [v99 addObject:v17];

  v18 = [(TVRUIDeviceListCell *)self checkmarkImageView];
  v19 = [v18 widthAnchor];
  v20 = [v19 constraintEqualToConstant:25.0];
  [v99 addObject:v20];

  v21 = [(TVRUIDeviceListCell *)self modelImageView];
  v22 = [v21 leadingAnchor];
  v23 = [(TVRUIDeviceListCell *)self checkmarkImageView];
  v24 = [v23 trailingAnchor];
  v25 = [v22 constraintEqualToAnchor:v24 constant:v4];
  [v99 addObject:v25];

  v26 = [(TVRUIDeviceListCell *)self modelImageView];
  v27 = [v26 centerYAnchor];
  v28 = [(TVRUIDeviceListCell *)self contentView];
  v29 = [v28 centerYAnchor];
  v30 = [v27 constraintEqualToAnchor:v29];
  [v99 addObject:v30];

  v31 = [(TVRUIDeviceListCell *)self modelImageView];
  v32 = [v31 widthAnchor];
  v33 = [v32 constraintEqualToConstant:44.0];
  [v99 addObject:v33];

  v34 = [(TVRUIDeviceListCell *)self deviceLabel];
  v35 = [v34 leadingAnchor];
  v36 = [(TVRUIDeviceListCell *)self modelImageView];
  v37 = [v36 trailingAnchor];
  v38 = [v35 constraintEqualToAnchor:v37 constant:v4];
  [v99 addObject:v38];

  v39 = [(TVRUIDeviceListCell *)self deviceLabel];
  v40 = [v39 centerYAnchor];
  v41 = [(TVRUIDeviceListCell *)self contentView];
  v42 = [v41 centerYAnchor];
  v43 = [v40 constraintEqualToAnchor:v42];
  [v99 addObject:v43];

  v44 = [(TVRUIDeviceListCell *)self findMyButton];
  v45 = [v44 trailingAnchor];
  v46 = [(TVRUIDeviceListCell *)self contentView];
  v47 = [v46 trailingAnchor];
  v48 = [(TVRUIDeviceListCell *)self styleProvider];
  [v48 touchpadInsets];
  v50 = [v45 constraintEqualToAnchor:v47 constant:-(v5 + v49)];
  [v99 addObject:v50];

  v51 = [(TVRUIDeviceListCell *)self findMyButton];
  v52 = [v51 centerYAnchor];
  v53 = [(TVRUIDeviceListCell *)self contentView];
  v54 = [v53 centerYAnchor];
  v55 = [v52 constraintEqualToAnchor:v54];
  [v99 addObject:v55];

  v56 = [(TVRUIDeviceListCell *)self findMyButton];
  v57 = [v56 topAnchor];
  v58 = [(TVRUIDeviceListCell *)self contentView];
  v59 = [v58 topAnchor];
  v60 = [v57 constraintGreaterThanOrEqualToAnchor:v59 constant:5.0];
  [v99 addObject:v60];

  v61 = [(TVRUIDeviceListCell *)self findMyButton];
  v62 = [v61 bottomAnchor];
  v63 = [(TVRUIDeviceListCell *)self contentView];
  v64 = [v63 bottomAnchor];
  v65 = [v62 constraintLessThanOrEqualToAnchor:v64 constant:-5.0];
  [v99 addObject:v65];

  v66 = [(TVRUIDeviceListCell *)self deviceLabel];
  v67 = [v66 trailingAnchor];
  v68 = [(TVRUIDeviceListCell *)self findMyButton];
  v69 = [v68 leadingAnchor];
  v70 = -v4;
  v71 = [v67 constraintLessThanOrEqualToAnchor:v69 constant:v70];
  deviceLabelTrailingFindMyButtonConstraint = self->_deviceLabelTrailingFindMyButtonConstraint;
  self->_deviceLabelTrailingFindMyButtonConstraint = v71;

  v73 = [(TVRUIDeviceListCell *)self deviceLabel];
  v74 = [v73 trailingAnchor];
  v75 = [(TVRUIDeviceListCell *)self contentView];
  v76 = [v75 trailingAnchor];
  v77 = [v74 constraintLessThanOrEqualToAnchor:v76 constant:v70];
  deviceLabelTrailingContentViewConstraint = self->_deviceLabelTrailingContentViewConstraint;
  self->_deviceLabelTrailingContentViewConstraint = v77;

  [v99 addObject:self->_deviceLabelTrailingContentViewConstraint];
  [v99 addObject:self->_deviceLabelTrailingFindMyButtonConstraint];
  v79 = [(TVRUIDeviceListCell *)self findMyButton];
  LODWORD(v74) = [v79 isHidden];

  if (v74)
  {
    [(TVRUIDeviceListCell *)self deviceLabelTrailingContentViewConstraint];
  }

  else
  {
    [(TVRUIDeviceListCell *)self deviceLabelTrailingFindMyButtonConstraint];
  }
  v80 = ;
  [v80 setActive:0];

  v81 = [(TVRUIDeviceListCell *)self separator];
  v82 = [v81 bottomAnchor];
  v83 = [(TVRUIDeviceListCell *)self contentView];
  v84 = [v83 bottomAnchor];
  v85 = [v82 constraintEqualToAnchor:v84];
  [v99 addObject:v85];

  v86 = [(TVRUIDeviceListCell *)self separator];
  v87 = [v86 leadingAnchor];
  v88 = [(TVRUIDeviceListCell *)self modelImageView];
  v89 = [v88 leadingAnchor];
  v90 = [v87 constraintEqualToAnchor:v89];
  [v99 addObject:v90];

  v91 = [(TVRUIDeviceListCell *)self separator];
  v92 = [v91 trailingAnchor];
  v93 = [(TVRUIDeviceListCell *)self findMyButton];
  v94 = [v93 trailingAnchor];
  v95 = [v92 constraintEqualToAnchor:v94];
  [v99 addObject:v95];

  v96 = [(TVRUIDeviceListCell *)self separator];
  v97 = [v96 heightAnchor];
  v98 = [v97 constraintEqualToConstant:1.0];
  [v99 addObject:v98];

  [MEMORY[0x277CCAAD0] activateConstraints:v99];
}

- (void)_updateConnectionStatus
{
  v3 = [(TVRUIDeviceListCell *)self device];
  v4 = [v3 isConnected];

  v5 = [(TVRUIDeviceListCell *)self styleProvider];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 colorForConnectedDevice];
    v8 = [(TVRUIDeviceListCell *)self deviceLabel];
    [v8 setTextColor:v7];

    v9 = [(TVRUIDeviceListCell *)self styleProvider];
    [v9 colorForConnectedDevice];
  }

  else
  {
    v10 = [v5 colorForDisconnectedDevice];
    v11 = [(TVRUIDeviceListCell *)self deviceLabel];
    [v11 setTextColor:v10];

    v9 = [(TVRUIDeviceListCell *)self styleProvider];
    [v9 colorForDisconnectedDevice];
  }
  v12 = ;
  v13 = [(TVRUIDeviceListCell *)self modelImageView];
  [v13 setTintColor:v12];

  v14 = [(TVRUIDeviceListCell *)self checkmarkImageView];
  [v14 setHidden:v4 ^ 1u];
}

- (void)_updateFindMyButton
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = _TVRUIDevicePickerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(TVRUIDeviceListCell *)self device];
    v5 = [v4 name];
    v6 = [(TVRUIDeviceListCell *)self device];
    v7 = [v6 supportsFindMyRemote];
    v8 = "no";
    if (v7)
    {
      v8 = "yes";
    }

    v17 = 138543618;
    v18 = v5;
    v19 = 2080;
    v20 = v8;
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "device - %{public}@ supportsFindMy: %s", &v17, 0x16u);
  }

  if (GestaltGetDeviceClass() != 3)
  {
    v9 = [(TVRUIDeviceListCell *)self device];
    v10 = [v9 supportsFindMyRemote];
    v11 = [(TVRUIDeviceListCell *)self deviceLabelTrailingContentViewConstraint];
    [v11 setActive:v10 ^ 1u];

    v12 = [(TVRUIDeviceListCell *)self device];
    v13 = [v12 supportsFindMyRemote];
    v14 = [(TVRUIDeviceListCell *)self deviceLabelTrailingFindMyButtonConstraint];
    [v14 setActive:v13];

    v15 = [(TVRUIDeviceListCell *)self device];
    LODWORD(v13) = [v15 supportsFindMyRemote];
    v16 = [(TVRUIDeviceListCell *)self findMyButton];
    [v16 setHidden:v13 ^ 1];
  }
}

@end