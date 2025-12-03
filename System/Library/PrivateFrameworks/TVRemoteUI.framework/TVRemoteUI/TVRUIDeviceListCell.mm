@interface TVRUIDeviceListCell
- (TVRUIDeviceListCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_configureViews;
- (void)_setupConstraints;
- (void)_updateConnectionStatus;
- (void)_updateDeviceName;
- (void)_updateFindMyButton;
- (void)prepareForReuse;
- (void)setDevice:(id)device;
- (void)setFindButtonTapAction:(id)action;
- (void)setShowSeparator:(BOOL)separator;
- (void)setStyleProvider:(id)provider;
@end

@implementation TVRUIDeviceListCell

- (TVRUIDeviceListCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v29.receiver = self;
  v29.super_class = TVRUIDeviceListCell;
  v4 = [(TVRUIDeviceListCell *)&v29 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(TVRUIDeviceListCell *)v4 setBackgroundColor:clearColor];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(TVRUIDeviceListCell *)v4 setTintColor:whiteColor];

    v7 = objc_alloc_init(MEMORY[0x277D755E8]);
    checkmarkImageView = v4->_checkmarkImageView;
    v4->_checkmarkImageView = v7;

    contentView = [(TVRUIDeviceListCell *)v4 contentView];
    [contentView addSubview:v4->_checkmarkImageView];

    [(UIImageView *)v4->_checkmarkImageView setContentMode:4];
    [(UIImageView *)v4->_checkmarkImageView setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
    [(UIImageView *)v4->_checkmarkImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = objc_alloc_init(MEMORY[0x277D755E8]);
    modelImageView = v4->_modelImageView;
    v4->_modelImageView = v10;

    contentView2 = [(TVRUIDeviceListCell *)v4 contentView];
    [contentView2 addSubview:v4->_modelImageView];

    [(UIImageView *)v4->_modelImageView setContentMode:4];
    [(UIImageView *)v4->_modelImageView setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
    [(UIImageView *)v4->_modelImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = objc_alloc_init(MEMORY[0x277D756B8]);
    deviceLabel = v4->_deviceLabel;
    v4->_deviceLabel = v13;

    contentView3 = [(TVRUIDeviceListCell *)v4 contentView];
    [contentView3 addSubview:v4->_deviceLabel];

    [(UILabel *)v4->_deviceLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v16) = 1132068864;
    [(UILabel *)v4->_deviceLabel setContentCompressionResistancePriority:0 forAxis:v16];
    LODWORD(v17) = 1132068864;
    [(UILabel *)v4->_deviceLabel setContentHuggingPriority:0 forAxis:v17];
    [(UILabel *)v4->_deviceLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v4->_deviceLabel setMinimumScaleFactor:0.4];
    filledButtonConfiguration = [MEMORY[0x277D75230] filledButtonConfiguration];
    [filledButtonConfiguration setImagePlacement:2];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"TVRemoteFindButtonTitle" value:&stru_287E6AEF8 table:@"Localizable"];
    [filledButtonConfiguration setTitle:v20];

    [filledButtonConfiguration setCornerStyle:4];
    [filledButtonConfiguration setButtonSize:1];
    [filledButtonConfiguration setTitleLineBreakMode:4];
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [filledButtonConfiguration setBaseBackgroundColor:clearColor2];

    v22 = [MEMORY[0x277D75220] buttonWithConfiguration:filledButtonConfiguration primaryAction:0];
    findMyButton = v4->_findMyButton;
    v4->_findMyButton = v22;

    contentView4 = [(TVRUIDeviceListCell *)v4 contentView];
    [contentView4 addSubview:v4->_findMyButton];

    [(UIButton *)v4->_findMyButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v4->_findMyButton setHidden:1];
    [(UIButton *)v4->_findMyButton setHitTestInsets:-5.0, -10.0, -5.0, -10.0];
    v25 = objc_alloc_init(MEMORY[0x277D75D18]);
    separator = v4->_separator;
    v4->_separator = v25;

    contentView5 = [(TVRUIDeviceListCell *)v4 contentView];
    [contentView5 addSubview:v4->_separator];

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

- (void)setStyleProvider:(id)provider
{
  v30 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  if (self->_styleProvider != providerCopy)
  {
    v6 = _TVRUIDevicePickerLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = providerCopy;
      _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "Setting new styleProvider: %@", buf, 0xCu);
    }

    objc_storeStrong(&self->_styleProvider, provider);
    v7 = _UISolariumEnabled();
    findMyButton = [(TVRUIDeviceListCell *)self findMyButton];
    configuration = [findMyButton configuration];

    styleProvider = [(TVRUIDeviceListCell *)self styleProvider];
    v11 = styleProvider;
    if (v7)
    {
      [styleProvider solariumLightButtonBackgroundColor];
    }

    else
    {
      [styleProvider buttonBackgroundColor];
    }
    v12 = ;
    [configuration setBaseBackgroundColor:v12];

    styleProvider2 = [(TVRUIDeviceListCell *)self styleProvider];
    tvRemoteImage = [styleProvider2 tvRemoteImage];
    [configuration setImage:tvRemoteImage];

    [configuration setImagePadding:10.0];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __40__TVRUIDeviceListCell_setStyleProvider___block_invoke;
    v27[3] = &unk_279D88740;
    v27[4] = self;
    [configuration setTitleTextAttributesTransformer:v27];
    findMyButton2 = [(TVRUIDeviceListCell *)self findMyButton];
    [findMyButton2 setConfiguration:configuration];

    styleProvider3 = [(TVRUIDeviceListCell *)self styleProvider];
    cellSeparatorBackgroundColor = [styleProvider3 cellSeparatorBackgroundColor];
    separator = [(TVRUIDeviceListCell *)self separator];
    [separator setBackgroundColor:cellSeparatorBackgroundColor];

    if (_UISolariumEnabled())
    {
      clearColor = [MEMORY[0x277D75348] clearColor];
      [(TVRUIDeviceListCell *)self setBackgroundColor:clearColor];
    }

    else
    {
      clearColor = [(TVRUIDeviceListCell *)self styleProvider];
      cellBackgroundColor = [clearColor cellBackgroundColor];
      [(TVRUIDeviceListCell *)self setBackgroundColor:cellBackgroundColor];
    }

    styleProvider4 = [(TVRUIDeviceListCell *)self styleProvider];
    fontForDeviceListRow = [styleProvider4 fontForDeviceListRow];
    deviceLabel = [(TVRUIDeviceListCell *)self deviceLabel];
    [deviceLabel setFont:fontForDeviceListRow];

    styleProvider5 = [(TVRUIDeviceListCell *)self styleProvider];
    checkmarkImage = [styleProvider5 checkmarkImage];
    checkmarkImageView = [(TVRUIDeviceListCell *)self checkmarkImageView];
    [checkmarkImageView setImage:checkmarkImage];

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

- (void)setDevice:(id)device
{
  deviceCopy = device;
  v6 = deviceCopy;
  if (self->_device != deviceCopy)
  {
    objc_storeStrong(&self->_device, device);
    [(TVRUIDeviceListCell *)self _configureViews];
    deviceCopy = v6;
  }

  if (deviceCopy)
  {
    [(TVRUIDeviceListCell *)self _updateConnectionStatus];
    [(TVRUIDeviceListCell *)self _updateDeviceName];
    deviceCopy = v6;
  }
}

- (void)setShowSeparator:(BOOL)separator
{
  if (self->_showSeparator != separator)
  {
    separatorCopy = separator;
    self->_showSeparator = separator;
    separator = [(TVRUIDeviceListCell *)self separator];
    [separator setHidden:!separatorCopy];
  }
}

- (void)setFindButtonTapAction:(id)action
{
  actionCopy = action;
  if (self->_findButtonTapAction != actionCopy)
  {
    v8 = actionCopy;
    findMyButton = [(TVRUIDeviceListCell *)self findMyButton];
    v7 = findMyButton;
    if (v8)
    {
      [findMyButton addAction:v8 forControlEvents:64];
    }

    else
    {
      [findMyButton removeAction:self->_findButtonTapAction forControlEvents:64];
    }

    objc_storeStrong(&self->_findButtonTapAction, action);
  }

  MEMORY[0x2821F96F8]();
}

- (void)_configureViews
{
  device = [(TVRUIDeviceListCell *)self device];

  if (device)
  {
    [(TVRUIDeviceListCell *)self _updateDeviceName];
    device2 = [(TVRUIDeviceListCell *)self device];
    model = [device2 model];

    styleProvider = [(TVRUIDeviceListCell *)self styleProvider];
    v6 = [styleProvider devicePickerIconForDeviceModel:model];

    modelImageView = [(TVRUIDeviceListCell *)self modelImageView];
    [modelImageView setImage:v6];

    [(TVRUIDeviceListCell *)self _updateFindMyButton];
  }
}

- (void)_updateDeviceName
{
  v3 = +[TVRUIFeatures isPickerDebugUIEnabled];
  device = [(TVRUIDeviceListCell *)self device];
  v5 = device;
  if (v3)
  {
    [device debugName];
  }

  else
  {
    [device name];
  }
  v7 = ;

  deviceLabel = [(TVRUIDeviceListCell *)self deviceLabel];
  [deviceLabel setText:v7];
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

  checkmarkImageView = [(TVRUIDeviceListCell *)self checkmarkImageView];
  leadingAnchor = [checkmarkImageView leadingAnchor];
  contentView = [(TVRUIDeviceListCell *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  styleProvider = [(TVRUIDeviceListCell *)self styleProvider];
  [styleProvider touchpadInsets];
  v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v5 + v11];
  [v99 addObject:v12];

  checkmarkImageView2 = [(TVRUIDeviceListCell *)self checkmarkImageView];
  centerYAnchor = [checkmarkImageView2 centerYAnchor];
  contentView2 = [(TVRUIDeviceListCell *)self contentView];
  centerYAnchor2 = [contentView2 centerYAnchor];
  v17 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v99 addObject:v17];

  checkmarkImageView3 = [(TVRUIDeviceListCell *)self checkmarkImageView];
  widthAnchor = [checkmarkImageView3 widthAnchor];
  v20 = [widthAnchor constraintEqualToConstant:25.0];
  [v99 addObject:v20];

  modelImageView = [(TVRUIDeviceListCell *)self modelImageView];
  leadingAnchor3 = [modelImageView leadingAnchor];
  checkmarkImageView4 = [(TVRUIDeviceListCell *)self checkmarkImageView];
  trailingAnchor = [checkmarkImageView4 trailingAnchor];
  v25 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:v4];
  [v99 addObject:v25];

  modelImageView2 = [(TVRUIDeviceListCell *)self modelImageView];
  centerYAnchor3 = [modelImageView2 centerYAnchor];
  contentView3 = [(TVRUIDeviceListCell *)self contentView];
  centerYAnchor4 = [contentView3 centerYAnchor];
  v30 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [v99 addObject:v30];

  modelImageView3 = [(TVRUIDeviceListCell *)self modelImageView];
  widthAnchor2 = [modelImageView3 widthAnchor];
  v33 = [widthAnchor2 constraintEqualToConstant:44.0];
  [v99 addObject:v33];

  deviceLabel = [(TVRUIDeviceListCell *)self deviceLabel];
  leadingAnchor4 = [deviceLabel leadingAnchor];
  modelImageView4 = [(TVRUIDeviceListCell *)self modelImageView];
  trailingAnchor2 = [modelImageView4 trailingAnchor];
  v38 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor2 constant:v4];
  [v99 addObject:v38];

  deviceLabel2 = [(TVRUIDeviceListCell *)self deviceLabel];
  centerYAnchor5 = [deviceLabel2 centerYAnchor];
  contentView4 = [(TVRUIDeviceListCell *)self contentView];
  centerYAnchor6 = [contentView4 centerYAnchor];
  v43 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  [v99 addObject:v43];

  findMyButton = [(TVRUIDeviceListCell *)self findMyButton];
  trailingAnchor3 = [findMyButton trailingAnchor];
  contentView5 = [(TVRUIDeviceListCell *)self contentView];
  trailingAnchor4 = [contentView5 trailingAnchor];
  styleProvider2 = [(TVRUIDeviceListCell *)self styleProvider];
  [styleProvider2 touchpadInsets];
  v50 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-(v5 + v49)];
  [v99 addObject:v50];

  findMyButton2 = [(TVRUIDeviceListCell *)self findMyButton];
  centerYAnchor7 = [findMyButton2 centerYAnchor];
  contentView6 = [(TVRUIDeviceListCell *)self contentView];
  centerYAnchor8 = [contentView6 centerYAnchor];
  v55 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
  [v99 addObject:v55];

  findMyButton3 = [(TVRUIDeviceListCell *)self findMyButton];
  topAnchor = [findMyButton3 topAnchor];
  contentView7 = [(TVRUIDeviceListCell *)self contentView];
  topAnchor2 = [contentView7 topAnchor];
  v60 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:5.0];
  [v99 addObject:v60];

  findMyButton4 = [(TVRUIDeviceListCell *)self findMyButton];
  bottomAnchor = [findMyButton4 bottomAnchor];
  contentView8 = [(TVRUIDeviceListCell *)self contentView];
  bottomAnchor2 = [contentView8 bottomAnchor];
  v65 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:-5.0];
  [v99 addObject:v65];

  deviceLabel3 = [(TVRUIDeviceListCell *)self deviceLabel];
  trailingAnchor5 = [deviceLabel3 trailingAnchor];
  findMyButton5 = [(TVRUIDeviceListCell *)self findMyButton];
  leadingAnchor5 = [findMyButton5 leadingAnchor];
  v70 = -v4;
  v71 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:leadingAnchor5 constant:v70];
  deviceLabelTrailingFindMyButtonConstraint = self->_deviceLabelTrailingFindMyButtonConstraint;
  self->_deviceLabelTrailingFindMyButtonConstraint = v71;

  deviceLabel4 = [(TVRUIDeviceListCell *)self deviceLabel];
  trailingAnchor6 = [deviceLabel4 trailingAnchor];
  contentView9 = [(TVRUIDeviceListCell *)self contentView];
  trailingAnchor7 = [contentView9 trailingAnchor];
  v77 = [trailingAnchor6 constraintLessThanOrEqualToAnchor:trailingAnchor7 constant:v70];
  deviceLabelTrailingContentViewConstraint = self->_deviceLabelTrailingContentViewConstraint;
  self->_deviceLabelTrailingContentViewConstraint = v77;

  [v99 addObject:self->_deviceLabelTrailingContentViewConstraint];
  [v99 addObject:self->_deviceLabelTrailingFindMyButtonConstraint];
  findMyButton6 = [(TVRUIDeviceListCell *)self findMyButton];
  LODWORD(trailingAnchor6) = [findMyButton6 isHidden];

  if (trailingAnchor6)
  {
    [(TVRUIDeviceListCell *)self deviceLabelTrailingContentViewConstraint];
  }

  else
  {
    [(TVRUIDeviceListCell *)self deviceLabelTrailingFindMyButtonConstraint];
  }
  v80 = ;
  [v80 setActive:0];

  separator = [(TVRUIDeviceListCell *)self separator];
  bottomAnchor3 = [separator bottomAnchor];
  contentView10 = [(TVRUIDeviceListCell *)self contentView];
  bottomAnchor4 = [contentView10 bottomAnchor];
  v85 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  [v99 addObject:v85];

  separator2 = [(TVRUIDeviceListCell *)self separator];
  leadingAnchor6 = [separator2 leadingAnchor];
  modelImageView5 = [(TVRUIDeviceListCell *)self modelImageView];
  leadingAnchor7 = [modelImageView5 leadingAnchor];
  v90 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
  [v99 addObject:v90];

  separator3 = [(TVRUIDeviceListCell *)self separator];
  trailingAnchor8 = [separator3 trailingAnchor];
  findMyButton7 = [(TVRUIDeviceListCell *)self findMyButton];
  trailingAnchor9 = [findMyButton7 trailingAnchor];
  v95 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
  [v99 addObject:v95];

  separator4 = [(TVRUIDeviceListCell *)self separator];
  heightAnchor = [separator4 heightAnchor];
  v98 = [heightAnchor constraintEqualToConstant:1.0];
  [v99 addObject:v98];

  [MEMORY[0x277CCAAD0] activateConstraints:v99];
}

- (void)_updateConnectionStatus
{
  device = [(TVRUIDeviceListCell *)self device];
  isConnected = [device isConnected];

  styleProvider = [(TVRUIDeviceListCell *)self styleProvider];
  v6 = styleProvider;
  if (isConnected)
  {
    colorForConnectedDevice = [styleProvider colorForConnectedDevice];
    deviceLabel = [(TVRUIDeviceListCell *)self deviceLabel];
    [deviceLabel setTextColor:colorForConnectedDevice];

    styleProvider2 = [(TVRUIDeviceListCell *)self styleProvider];
    [styleProvider2 colorForConnectedDevice];
  }

  else
  {
    colorForDisconnectedDevice = [styleProvider colorForDisconnectedDevice];
    deviceLabel2 = [(TVRUIDeviceListCell *)self deviceLabel];
    [deviceLabel2 setTextColor:colorForDisconnectedDevice];

    styleProvider2 = [(TVRUIDeviceListCell *)self styleProvider];
    [styleProvider2 colorForDisconnectedDevice];
  }
  v12 = ;
  modelImageView = [(TVRUIDeviceListCell *)self modelImageView];
  [modelImageView setTintColor:v12];

  checkmarkImageView = [(TVRUIDeviceListCell *)self checkmarkImageView];
  [checkmarkImageView setHidden:isConnected ^ 1u];
}

- (void)_updateFindMyButton
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = _TVRUIDevicePickerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    device = [(TVRUIDeviceListCell *)self device];
    name = [device name];
    device2 = [(TVRUIDeviceListCell *)self device];
    supportsFindMyRemote = [device2 supportsFindMyRemote];
    v8 = "no";
    if (supportsFindMyRemote)
    {
      v8 = "yes";
    }

    v17 = 138543618;
    v18 = name;
    v19 = 2080;
    v20 = v8;
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "device - %{public}@ supportsFindMy: %s", &v17, 0x16u);
  }

  if (GestaltGetDeviceClass() != 3)
  {
    device3 = [(TVRUIDeviceListCell *)self device];
    supportsFindMyRemote2 = [device3 supportsFindMyRemote];
    deviceLabelTrailingContentViewConstraint = [(TVRUIDeviceListCell *)self deviceLabelTrailingContentViewConstraint];
    [deviceLabelTrailingContentViewConstraint setActive:supportsFindMyRemote2 ^ 1u];

    device4 = [(TVRUIDeviceListCell *)self device];
    supportsFindMyRemote3 = [device4 supportsFindMyRemote];
    deviceLabelTrailingFindMyButtonConstraint = [(TVRUIDeviceListCell *)self deviceLabelTrailingFindMyButtonConstraint];
    [deviceLabelTrailingFindMyButtonConstraint setActive:supportsFindMyRemote3];

    device5 = [(TVRUIDeviceListCell *)self device];
    LODWORD(supportsFindMyRemote3) = [device5 supportsFindMyRemote];
    findMyButton = [(TVRUIDeviceListCell *)self findMyButton];
    [findMyButton setHidden:supportsFindMyRemote3 ^ 1];
  }
}

@end