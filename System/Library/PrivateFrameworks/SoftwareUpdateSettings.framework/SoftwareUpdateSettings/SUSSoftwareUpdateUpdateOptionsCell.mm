@interface SUSSoftwareUpdateUpdateOptionsCell
- (SUSSoftwareUpdateUpdateOptionsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)_configurePrimaryButton;
- (id)_configureSecondaryButton;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)_addActivityIndicatorFor:(id)for;
- (void)_configureStackViewMargin;
- (void)_primaryButtonLongTapped:(id)tapped;
- (void)_setupView;
- (void)setActivityIndicatorDisplayStyle:(int64_t)style;
- (void)setHidden:(BOOL)hidden;
- (void)setPrimaryButtonActionHandler:(id)handler;
- (void)setPrimaryButtonLongTapActionHandler:(id)handler;
- (void)setPrimaryButtonText:(id)text;
- (void)setSecondaryButtonActionHandler:(id)handler;
- (void)setSecondaryButtonMenu:(id)menu;
- (void)setSecondaryButtonText:(id)text;
@end

@implementation SUSSoftwareUpdateUpdateOptionsCell

- (SUSSoftwareUpdateUpdateOptionsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  selfCopy = self;
  v14 = a2;
  styleCopy = style;
  location = 0;
  objc_storeStrong(&location, identifier);
  v11 = 0;
  objc_storeStrong(&v11, specifier);
  v5 = selfCopy;
  selfCopy = 0;
  v10.receiver = v5;
  v10.super_class = SUSSoftwareUpdateUpdateOptionsCell;
  v9 = [(PSTableCell *)&v10 initWithStyle:styleCopy reuseIdentifier:location specifier:v11];
  selfCopy = v9;
  objc_storeStrong(&selfCopy, v9);
  if (v9)
  {
    [(SUSSoftwareUpdateUpdateOptionsCell *)selfCopy setSelectionStyle:0];
    [(SUSSoftwareUpdateUpdateOptionsCell *)selfCopy setHoverStyle:0];
    [(SUSSoftwareUpdateUpdateOptionsCell *)selfCopy _setupView];
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (void)setHidden:(BOOL)hidden
{
  [(UIButton *)self->_primaryButton setHidden:hidden];
  [(UIButton *)self->_secondaryButton setHidden:hidden];
  [(SUSSoftwareUpdateUpdateOptionsCell *)self _configureStackViewMargin];
}

- (void)setPrimaryButtonText:(id)text
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, text);
  [(UIButton *)selfCopy->_primaryButton setTitle:location[0] forState:0];
  objc_storeStrong(location, 0);
}

- (void)setSecondaryButtonText:(id)text
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, text);
  [(UIButton *)selfCopy->_secondaryButton setTitle:location[0] forState:0];
  objc_storeStrong(location, 0);
}

- (void)setActivityIndicatorDisplayStyle:(int64_t)style
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v8 = a2;
  styleCopy = style;
  if (self->_activityIndicator)
  {
    [(UIActivityIndicatorView *)selfCopy->_activityIndicator removeFromSuperview];
  }

  selfCopy->_currentActivityIndicatorStyle = styleCopy;
  if (styleCopy == 1)
  {
    if (!selfCopy->_primaryButton || ([(UIButton *)selfCopy->_primaryButton isHidden]& 1) != 0)
    {
      location = _SUSLoggingFacility();
      v5 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_32(v11, "[SUSSoftwareUpdateUpdateOptionsCell setActivityIndicatorDisplayStyle:]");
        _os_log_error_impl(&dword_26AC65000, location, v5, "%s: Attempt to display the activity indicator for the primary button, while the primary button is not displayed on the screen.", v11, 0xCu);
      }

      objc_storeStrong(&location, 0);
    }

    [(SUSSoftwareUpdateUpdateOptionsCell *)selfCopy _addActivityIndicatorFor:selfCopy->_primaryButton];
  }

  else if (styleCopy == 2)
  {
    if (!selfCopy->_secondaryButton || ([(UIButton *)selfCopy->_secondaryButton isHidden]& 1) != 0)
    {
      oslog = _SUSLoggingFacility();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v3 = oslog;
        __os_log_helper_16_2_1_8_32(v10, "[SUSSoftwareUpdateUpdateOptionsCell setActivityIndicatorDisplayStyle:]");
        _os_log_error_impl(&dword_26AC65000, oslog, OS_LOG_TYPE_ERROR, "%s: Attempt to display the activity indicator for the primary button, while the primary button is not displayed on the screen.", v10, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }

    [(SUSSoftwareUpdateUpdateOptionsCell *)selfCopy _addActivityIndicatorFor:selfCopy->_secondaryButton, v3];
  }

  *MEMORY[0x277D85DE8];
}

- (void)setPrimaryButtonActionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  v3 = MEMORY[0x26D669A60](location[0]);
  primaryButtonAction = selfCopy->_primaryButtonAction;
  selfCopy->_primaryButtonAction = v3;
  MEMORY[0x277D82BD8](primaryButtonAction);
  objc_storeStrong(location, 0);
}

- (void)setPrimaryButtonLongTapActionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  v3 = MEMORY[0x26D669A60](location[0]);
  primaryButtonLongTapAction = selfCopy->_primaryButtonLongTapAction;
  selfCopy->_primaryButtonLongTapAction = v3;
  MEMORY[0x277D82BD8](primaryButtonLongTapAction);
  objc_storeStrong(location, 0);
}

- (void)setSecondaryButtonActionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  v3 = MEMORY[0x26D669A60](location[0]);
  secondaryButtonAction = selfCopy->_secondaryButtonAction;
  selfCopy->_secondaryButtonAction = v3;
  MEMORY[0x277D82BD8](secondaryButtonAction);
  objc_storeStrong(location, 0);
}

- (void)setSecondaryButtonMenu:(id)menu
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, menu);
  if (selfCopy->_secondaryButtonContextMenuInteraction)
  {
    [(UIButton *)selfCopy->_secondaryButton removeInteraction:selfCopy->_secondaryButtonContextMenuInteraction];
    objc_storeStrong(&selfCopy->_secondaryButtonContextMenuInteraction, 0);
  }

  objc_storeStrong(&selfCopy->_secondaryButtonMenu, location[0]);
  v3 = objc_alloc(MEMORY[0x277D753B8]);
  v4 = [v3 initWithDelegate:selfCopy];
  secondaryButtonContextMenuInteraction = selfCopy->_secondaryButtonContextMenuInteraction;
  selfCopy->_secondaryButtonContextMenuInteraction = v4;
  *&v6 = MEMORY[0x277D82BD8](secondaryButtonContextMenuInteraction).n128_u64[0];
  [(UIButton *)selfCopy->_secondaryButton addInteraction:selfCopy->_secondaryButtonContextMenuInteraction, v6];
  objc_storeStrong(location, 0);
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  locationCopy = location;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, interaction);
  v5 = MEMORY[0x277D753B0];
  v7 = MEMORY[0x277D82BE0](selfCopy);
  v6 = [v5 configurationWithIdentifier:0 previewProvider:? actionProvider:?];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

id __92__SUSSoftwareUpdateUpdateOptionsCell_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = MEMORY[0x277D82BE0](*(a1[4] + 1224));
  objc_storeStrong(location, 0);

  return v4;
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, interaction);
  v20 = 0;
  objc_storeStrong(&v20, configuration);
  v19 = 0;
  objc_storeStrong(&v19, identifier);
  v18 = objc_alloc_init(MEMORY[0x277D758D8]);
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v18 setBackgroundColor:?];
  *&v5 = MEMORY[0x277D82BD8](clearColor).n128_u64[0];
  v15 = MEMORY[0x277D75208];
  [(UIButton *)selfCopy->_secondaryButton bounds];
  v16 = [v15 bezierPathWithRoundedRect:v6 cornerRadius:{v7, v8, v9, 18.0}];
  [v18 setVisiblePath:?];
  MEMORY[0x277D82BD8](v16);
  v10 = objc_alloc(MEMORY[0x277D75B90]);
  v17 = [v10 initWithView:selfCopy->_secondaryButton parameters:v18];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);

  return v17;
}

- (void)_setupView
{
  v48[8] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v46[1] = a2;
  if (*&self->_primaryButton == 0)
  {
    v46[0] = objc_alloc_init(MEMORY[0x277D75A68]);
    [v46[0] setAxis:?];
    [v46[0] setDistribution:1];
    [v46[0] setSpacing:10.0];
    [v46[0] setTranslatesAutoresizingMaskIntoConstraints:0];
    [v46[0] setClipsToBounds:1];
    v2 = objc_alloc(MEMORY[0x277D75D18]);
    v45 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v45 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v45 addSubview:v46[0]];
    contentView = [(SUSSoftwareUpdateUpdateOptionsCell *)selfCopy contentView];
    [contentView addSubview:v45];
    *&v3 = MEMORY[0x277D82BD8](contentView).n128_u64[0];
    _configurePrimaryButton = [(SUSSoftwareUpdateUpdateOptionsCell *)selfCopy _configurePrimaryButton];
    primaryButton = selfCopy->_primaryButton;
    selfCopy->_primaryButton = _configurePrimaryButton;
    *&v6 = MEMORY[0x277D82BD8](primaryButton).n128_u64[0];
    _configureSecondaryButton = [(SUSSoftwareUpdateUpdateOptionsCell *)selfCopy _configureSecondaryButton];
    secondaryButton = selfCopy->_secondaryButton;
    selfCopy->_secondaryButton = _configureSecondaryButton;
    MEMORY[0x277D82BD8](secondaryButton);
    objc_storeStrong(&selfCopy->_activityIndicator, 0);
    [v46[0] addArrangedSubview:selfCopy->_primaryButton];
    [v46[0] addArrangedSubview:selfCopy->_secondaryButton];
    topAnchor = [v45 topAnchor];
    contentView2 = [(SUSSoftwareUpdateUpdateOptionsCell *)selfCopy contentView];
    topAnchor2 = [contentView2 topAnchor];
    v9 = [topAnchor constraintEqualToAnchor:? constant:?];
    stackViewTopAnchor = selfCopy->_stackViewTopAnchor;
    selfCopy->_stackViewTopAnchor = v9;
    MEMORY[0x277D82BD8](stackViewTopAnchor);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](contentView2);
    *&v11 = MEMORY[0x277D82BD8](topAnchor).n128_u64[0];
    bottomAnchor = [v45 bottomAnchor];
    contentView3 = [(SUSSoftwareUpdateUpdateOptionsCell *)selfCopy contentView];
    bottomAnchor2 = [contentView3 bottomAnchor];
    v12 = [bottomAnchor constraintEqualToAnchor:0.0 constant:?];
    stackViewBottomAnchor = selfCopy->_stackViewBottomAnchor;
    selfCopy->_stackViewBottomAnchor = v12;
    MEMORY[0x277D82BD8](stackViewBottomAnchor);
    MEMORY[0x277D82BD8](bottomAnchor2);
    MEMORY[0x277D82BD8](contentView3);
    *&v14 = MEMORY[0x277D82BD8](bottomAnchor).n128_u64[0];
    v23 = MEMORY[0x277CCAAD0];
    v48[0] = selfCopy->_stackViewTopAnchor;
    v48[1] = selfCopy->_stackViewBottomAnchor;
    leadingAnchor = [v46[0] leadingAnchor];
    contentView4 = [(SUSSoftwareUpdateUpdateOptionsCell *)selfCopy contentView];
    leadingAnchor2 = [contentView4 leadingAnchor];
    v41 = [leadingAnchor constraintEqualToAnchor:17.0 constant:?];
    v48[2] = v41;
    trailingAnchor = [v46[0] trailingAnchor];
    contentView5 = [(SUSSoftwareUpdateUpdateOptionsCell *)selfCopy contentView];
    trailingAnchor2 = [contentView5 trailingAnchor];
    v37 = [trailingAnchor constraintEqualToAnchor:-17.0 constant:?];
    v48[3] = v37;
    topAnchor3 = [v46[0] topAnchor];
    topAnchor4 = [v45 topAnchor];
    v34 = [topAnchor3 constraintEqualToAnchor:?];
    v48[4] = v34;
    bottomAnchor3 = [v46[0] bottomAnchor];
    bottomAnchor4 = [v45 bottomAnchor];
    v31 = [bottomAnchor3 constraintEqualToAnchor:?];
    v48[5] = v31;
    leadingAnchor3 = [v46[0] leadingAnchor];
    leadingAnchor4 = [v45 leadingAnchor];
    v28 = [leadingAnchor3 constraintEqualToAnchor:?];
    v48[6] = v28;
    trailingAnchor3 = [v46[0] trailingAnchor];
    trailingAnchor4 = [v45 trailingAnchor];
    v25 = [trailingAnchor3 constraintEqualToAnchor:?];
    v48[7] = v25;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:8];
    [v23 activateConstraints:?];
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](trailingAnchor4);
    MEMORY[0x277D82BD8](trailingAnchor3);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](leadingAnchor4);
    MEMORY[0x277D82BD8](leadingAnchor3);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](bottomAnchor4);
    MEMORY[0x277D82BD8](bottomAnchor3);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](topAnchor4);
    MEMORY[0x277D82BD8](topAnchor3);
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](trailingAnchor2);
    MEMORY[0x277D82BD8](contentView5);
    MEMORY[0x277D82BD8](trailingAnchor);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](leadingAnchor2);
    MEMORY[0x277D82BD8](contentView4);
    *&v15 = MEMORY[0x277D82BD8](leadingAnchor).n128_u64[0];
    [(SUSSoftwareUpdateUpdateOptionsCell *)selfCopy setClipsToBounds:0, v15];
    [v46[0] setClipsToBounds:0];
    [v45 setClipsToBounds:0];
    [(UIButton *)selfCopy->_secondaryButton setClipsToBounds:0];
    selfCopy->_currentActivityIndicatorStyle = 0;
    objc_storeStrong(&v45, 0);
    objc_storeStrong(v46, 0);
  }

  *MEMORY[0x277D85DE8];
}

- (id)_configurePrimaryButton
{
  selfCopy = self;
  v21[1] = a2;
  v21[0] = [MEMORY[0x277D75230] filledButtonConfiguration];
  [v21[0] setCornerStyle:4];
  v10 = MEMORY[0x277D75220];
  v9 = v21[0];
  v8 = MEMORY[0x277D750C8];
  v19 = MEMORY[0x277D82BE0](selfCopy);
  v11 = [v8 actionWithHandler:?];
  v20 = [v10 buttonWithConfiguration:v9 primaryAction:?];
  *&v2 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  v12 = v20;
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v12 setTitleColor:? forState:?];
  *&v3 = MEMORY[0x277D82BD8](whiteColor).n128_u64[0];
  titleLabel = [v20 titleLabel];
  v14 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76918] weight:*MEMORY[0x277D74410]];
  [titleLabel setFont:?];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](titleLabel);
  [v20 setContentHuggingPriority:0 forAxis:?];
  [v20 setClipsToBounds:0];
  LODWORD(v4) = 1148846080;
  [v20 setContentCompressionResistancePriority:1 forAxis:v4];
  v16 = v20;
  v5 = objc_alloc(MEMORY[0x277D75708]);
  v17 = [v5 initWithTarget:selfCopy action:sel__primaryButtonLongTapped_];
  [v16 addGestureRecognizer:?];
  *&v6 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  [v20 setContentHorizontalAlignment:{0, v6}];
  [v20 setAccessibilityIdentifier:@"SUSpecifierUpdateOptionsCellPrimaryButton"];
  v18 = MEMORY[0x277D82BE0](v20);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(v21, 0);

  return v18;
}

void __61__SUSSoftwareUpdateUpdateOptionsCell__configurePrimaryButton__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (*(a1[4] + 1240))
  {
    (*(*(a1[4] + 1240) + 16))();
  }

  objc_storeStrong(location, 0);
}

- (id)_configureSecondaryButton
{
  selfCopy = self;
  v17[1] = a2;
  v17[0] = [MEMORY[0x277D75230] plainButtonConfiguration];
  [v17[0] setCornerStyle:4];
  v8 = MEMORY[0x277D75220];
  v7 = v17[0];
  v6 = MEMORY[0x277D750C8];
  v15 = MEMORY[0x277D82BE0](selfCopy);
  v9 = [v6 actionWithHandler:?];
  v16 = [v8 buttonWithConfiguration:v7 primaryAction:?];
  *&v2 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  v10 = v16;
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  [v10 setTitleColor:? forState:?];
  *&v3 = MEMORY[0x277D82BD8](systemBlueColor).n128_u64[0];
  titleLabel = [v16 titleLabel];
  v12 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76918] weight:*MEMORY[0x277D74418]];
  [titleLabel setFont:?];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](titleLabel);
  [v16 setContentHuggingPriority:0 forAxis:?];
  [v16 setClipsToBounds:0];
  LODWORD(v4) = 1148846080;
  [v16 setContentCompressionResistancePriority:1 forAxis:v4];
  [v16 setContentHorizontalAlignment:0];
  [v16 setAccessibilityIdentifier:@"SUSpecifierUpdateOptionsCellSecondaryButton"];
  v14 = MEMORY[0x277D82BE0](v16);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v17, 0);

  return v14;
}

void __63__SUSSoftwareUpdateUpdateOptionsCell__configureSecondaryButton__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (*(a1[4] + 1256))
  {
    (*(*(a1[4] + 1256) + 16))();
  }

  objc_storeStrong(location, 0);
}

- (void)_addActivityIndicatorFor:(id)for
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, for);
  if (location[0])
  {
    v3 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    activityIndicator = selfCopy->_activityIndicator;
    selfCopy->_activityIndicator = v3;
    *&v5 = MEMORY[0x277D82BD8](activityIndicator).n128_u64[0];
    [(UIActivityIndicatorView *)selfCopy->_activityIndicator setTranslatesAutoresizingMaskIntoConstraints:0, v5];
    [(UIActivityIndicatorView *)selfCopy->_activityIndicator setHidden:0];
    [(UIActivityIndicatorView *)selfCopy->_activityIndicator startAnimating];
    [location[0] addSubview:selfCopy->_activityIndicator];
    v6 = MEMORY[0x277CCAAD0];
    centerYAnchor = [(UIActivityIndicatorView *)selfCopy->_activityIndicator centerYAnchor];
    centerYAnchor2 = [location[0] centerYAnchor];
    v11 = [centerYAnchor constraintEqualToAnchor:?];
    v17[0] = v11;
    trailingAnchor = [(UIActivityIndicatorView *)selfCopy->_activityIndicator trailingAnchor];
    trailingAnchor2 = [location[0] trailingAnchor];
    v8 = [trailingAnchor constraintEqualToAnchor:-10.0 constant:?];
    v17[1] = v8;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    [v6 activateConstraints:?];
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](trailingAnchor2);
    MEMORY[0x277D82BD8](trailingAnchor);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](centerYAnchor2);
    MEMORY[0x277D82BD8](centerYAnchor);
  }

  else
  {
    v14 = _SUSLoggingFacility();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_32(v18, "[SUSSoftwareUpdateUpdateOptionsCell _addActivityIndicatorFor:]");
      _os_log_error_impl(&dword_26AC65000, v14, OS_LOG_TYPE_ERROR, "%s: Can't add the activity indicator to a nil button.", v18, 0xCu);
    }

    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_configureStackViewMargin
{
  if (([(UIButton *)self->_primaryButton isHidden]& 1) != 0)
  {
    [(NSLayoutConstraint *)self->_stackViewTopAnchor setConstant:6.0];
    [(NSLayoutConstraint *)self->_stackViewBottomAnchor setConstant:-6.0];
  }

  else
  {
    [(NSLayoutConstraint *)self->_stackViewTopAnchor setConstant:12.0];
    [(NSLayoutConstraint *)self->_stackViewBottomAnchor setConstant:-12.0];
  }
}

- (void)_primaryButtonLongTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  if (selfCopy->_primaryButtonLongTapAction)
  {
    (*(selfCopy->_primaryButtonLongTapAction + 2))();
  }

  objc_storeStrong(location, 0);
}

@end