@interface SUSSoftwareUpdateUpdateOptionsCell
- (SUSSoftwareUpdateUpdateOptionsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)_configurePrimaryButton;
- (id)_configureSecondaryButton;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)_addActivityIndicatorFor:(id)a3;
- (void)_configureStackViewMargin;
- (void)_primaryButtonLongTapped:(id)a3;
- (void)_setupView;
- (void)setActivityIndicatorDisplayStyle:(int64_t)a3;
- (void)setHidden:(BOOL)a3;
- (void)setPrimaryButtonActionHandler:(id)a3;
- (void)setPrimaryButtonLongTapActionHandler:(id)a3;
- (void)setPrimaryButtonText:(id)a3;
- (void)setSecondaryButtonActionHandler:(id)a3;
- (void)setSecondaryButtonMenu:(id)a3;
- (void)setSecondaryButtonText:(id)a3;
@end

@implementation SUSSoftwareUpdateUpdateOptionsCell

- (SUSSoftwareUpdateUpdateOptionsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v15 = self;
  v14 = a2;
  v13 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v11 = 0;
  objc_storeStrong(&v11, a5);
  v5 = v15;
  v15 = 0;
  v10.receiver = v5;
  v10.super_class = SUSSoftwareUpdateUpdateOptionsCell;
  v9 = [(PSTableCell *)&v10 initWithStyle:v13 reuseIdentifier:location specifier:v11];
  v15 = v9;
  objc_storeStrong(&v15, v9);
  if (v9)
  {
    [(SUSSoftwareUpdateUpdateOptionsCell *)v15 setSelectionStyle:0];
    [(SUSSoftwareUpdateUpdateOptionsCell *)v15 setHoverStyle:0];
    [(SUSSoftwareUpdateUpdateOptionsCell *)v15 _setupView];
  }

  v7 = MEMORY[0x277D82BE0](v15);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v15, 0);
  return v7;
}

- (void)setHidden:(BOOL)a3
{
  [(UIButton *)self->_primaryButton setHidden:a3];
  [(UIButton *)self->_secondaryButton setHidden:a3];
  [(SUSSoftwareUpdateUpdateOptionsCell *)self _configureStackViewMargin];
}

- (void)setPrimaryButtonText:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(UIButton *)v4->_primaryButton setTitle:location[0] forState:0];
  objc_storeStrong(location, 0);
}

- (void)setSecondaryButtonText:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(UIButton *)v4->_secondaryButton setTitle:location[0] forState:0];
  objc_storeStrong(location, 0);
}

- (void)setActivityIndicatorDisplayStyle:(int64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = self;
  v8 = a2;
  v7 = a3;
  if (self->_activityIndicator)
  {
    [(UIActivityIndicatorView *)v9->_activityIndicator removeFromSuperview];
  }

  v9->_currentActivityIndicatorStyle = v7;
  if (v7 == 1)
  {
    if (!v9->_primaryButton || ([(UIButton *)v9->_primaryButton isHidden]& 1) != 0)
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

    [(SUSSoftwareUpdateUpdateOptionsCell *)v9 _addActivityIndicatorFor:v9->_primaryButton];
  }

  else if (v7 == 2)
  {
    if (!v9->_secondaryButton || ([(UIButton *)v9->_secondaryButton isHidden]& 1) != 0)
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

    [(SUSSoftwareUpdateUpdateOptionsCell *)v9 _addActivityIndicatorFor:v9->_secondaryButton, v3];
  }

  *MEMORY[0x277D85DE8];
}

- (void)setPrimaryButtonActionHandler:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = MEMORY[0x26D669A60](location[0]);
  primaryButtonAction = v6->_primaryButtonAction;
  v6->_primaryButtonAction = v3;
  MEMORY[0x277D82BD8](primaryButtonAction);
  objc_storeStrong(location, 0);
}

- (void)setPrimaryButtonLongTapActionHandler:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = MEMORY[0x26D669A60](location[0]);
  primaryButtonLongTapAction = v6->_primaryButtonLongTapAction;
  v6->_primaryButtonLongTapAction = v3;
  MEMORY[0x277D82BD8](primaryButtonLongTapAction);
  objc_storeStrong(location, 0);
}

- (void)setSecondaryButtonActionHandler:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = MEMORY[0x26D669A60](location[0]);
  secondaryButtonAction = v6->_secondaryButtonAction;
  v6->_secondaryButtonAction = v3;
  MEMORY[0x277D82BD8](secondaryButtonAction);
  objc_storeStrong(location, 0);
}

- (void)setSecondaryButtonMenu:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v8->_secondaryButtonContextMenuInteraction)
  {
    [(UIButton *)v8->_secondaryButton removeInteraction:v8->_secondaryButtonContextMenuInteraction];
    objc_storeStrong(&v8->_secondaryButtonContextMenuInteraction, 0);
  }

  objc_storeStrong(&v8->_secondaryButtonMenu, location[0]);
  v3 = objc_alloc(MEMORY[0x277D753B8]);
  v4 = [v3 initWithDelegate:v8];
  secondaryButtonContextMenuInteraction = v8->_secondaryButtonContextMenuInteraction;
  v8->_secondaryButtonContextMenuInteraction = v4;
  *&v6 = MEMORY[0x277D82BD8](secondaryButtonContextMenuInteraction).n128_u64[0];
  [(UIButton *)v8->_secondaryButton addInteraction:v8->_secondaryButtonContextMenuInteraction, v6];
  objc_storeStrong(location, 0);
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v10 = a4;
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = MEMORY[0x277D753B0];
  v7 = MEMORY[0x277D82BE0](v9);
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

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19 = 0;
  objc_storeStrong(&v19, a5);
  v18 = objc_alloc_init(MEMORY[0x277D758D8]);
  v14 = [MEMORY[0x277D75348] clearColor];
  [v18 setBackgroundColor:?];
  *&v5 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  v15 = MEMORY[0x277D75208];
  [(UIButton *)v22->_secondaryButton bounds];
  v16 = [v15 bezierPathWithRoundedRect:v6 cornerRadius:{v7, v8, v9, 18.0}];
  [v18 setVisiblePath:?];
  MEMORY[0x277D82BD8](v16);
  v10 = objc_alloc(MEMORY[0x277D75B90]);
  v17 = [v10 initWithView:v22->_secondaryButton parameters:v18];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);

  return v17;
}

- (void)_setupView
{
  v48[8] = *MEMORY[0x277D85DE8];
  v47 = self;
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
    v16 = [(SUSSoftwareUpdateUpdateOptionsCell *)v47 contentView];
    [v16 addSubview:v45];
    *&v3 = MEMORY[0x277D82BD8](v16).n128_u64[0];
    v4 = [(SUSSoftwareUpdateUpdateOptionsCell *)v47 _configurePrimaryButton];
    primaryButton = v47->_primaryButton;
    v47->_primaryButton = v4;
    *&v6 = MEMORY[0x277D82BD8](primaryButton).n128_u64[0];
    v7 = [(SUSSoftwareUpdateUpdateOptionsCell *)v47 _configureSecondaryButton];
    secondaryButton = v47->_secondaryButton;
    v47->_secondaryButton = v7;
    MEMORY[0x277D82BD8](secondaryButton);
    objc_storeStrong(&v47->_activityIndicator, 0);
    [v46[0] addArrangedSubview:v47->_primaryButton];
    [v46[0] addArrangedSubview:v47->_secondaryButton];
    v19 = [v45 topAnchor];
    v18 = [(SUSSoftwareUpdateUpdateOptionsCell *)v47 contentView];
    v17 = [v18 topAnchor];
    v9 = [v19 constraintEqualToAnchor:? constant:?];
    stackViewTopAnchor = v47->_stackViewTopAnchor;
    v47->_stackViewTopAnchor = v9;
    MEMORY[0x277D82BD8](stackViewTopAnchor);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    *&v11 = MEMORY[0x277D82BD8](v19).n128_u64[0];
    v22 = [v45 bottomAnchor];
    v21 = [(SUSSoftwareUpdateUpdateOptionsCell *)v47 contentView];
    v20 = [v21 bottomAnchor];
    v12 = [v22 constraintEqualToAnchor:0.0 constant:?];
    stackViewBottomAnchor = v47->_stackViewBottomAnchor;
    v47->_stackViewBottomAnchor = v12;
    MEMORY[0x277D82BD8](stackViewBottomAnchor);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    *&v14 = MEMORY[0x277D82BD8](v22).n128_u64[0];
    v23 = MEMORY[0x277CCAAD0];
    v48[0] = v47->_stackViewTopAnchor;
    v48[1] = v47->_stackViewBottomAnchor;
    v44 = [v46[0] leadingAnchor];
    v43 = [(SUSSoftwareUpdateUpdateOptionsCell *)v47 contentView];
    v42 = [v43 leadingAnchor];
    v41 = [v44 constraintEqualToAnchor:17.0 constant:?];
    v48[2] = v41;
    v40 = [v46[0] trailingAnchor];
    v39 = [(SUSSoftwareUpdateUpdateOptionsCell *)v47 contentView];
    v38 = [v39 trailingAnchor];
    v37 = [v40 constraintEqualToAnchor:-17.0 constant:?];
    v48[3] = v37;
    v36 = [v46[0] topAnchor];
    v35 = [v45 topAnchor];
    v34 = [v36 constraintEqualToAnchor:?];
    v48[4] = v34;
    v33 = [v46[0] bottomAnchor];
    v32 = [v45 bottomAnchor];
    v31 = [v33 constraintEqualToAnchor:?];
    v48[5] = v31;
    v30 = [v46[0] leadingAnchor];
    v29 = [v45 leadingAnchor];
    v28 = [v30 constraintEqualToAnchor:?];
    v48[6] = v28;
    v27 = [v46[0] trailingAnchor];
    v26 = [v45 trailingAnchor];
    v25 = [v27 constraintEqualToAnchor:?];
    v48[7] = v25;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:8];
    [v23 activateConstraints:?];
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v43);
    *&v15 = MEMORY[0x277D82BD8](v44).n128_u64[0];
    [(SUSSoftwareUpdateUpdateOptionsCell *)v47 setClipsToBounds:0, v15];
    [v46[0] setClipsToBounds:0];
    [v45 setClipsToBounds:0];
    [(UIButton *)v47->_secondaryButton setClipsToBounds:0];
    v47->_currentActivityIndicatorStyle = 0;
    objc_storeStrong(&v45, 0);
    objc_storeStrong(v46, 0);
  }

  *MEMORY[0x277D85DE8];
}

- (id)_configurePrimaryButton
{
  v22 = self;
  v21[1] = a2;
  v21[0] = [MEMORY[0x277D75230] filledButtonConfiguration];
  [v21[0] setCornerStyle:4];
  v10 = MEMORY[0x277D75220];
  v9 = v21[0];
  v8 = MEMORY[0x277D750C8];
  v19 = MEMORY[0x277D82BE0](v22);
  v11 = [v8 actionWithHandler:?];
  v20 = [v10 buttonWithConfiguration:v9 primaryAction:?];
  *&v2 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  v12 = v20;
  v13 = [MEMORY[0x277D75348] whiteColor];
  [v12 setTitleColor:? forState:?];
  *&v3 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  v15 = [v20 titleLabel];
  v14 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76918] weight:*MEMORY[0x277D74410]];
  [v15 setFont:?];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  [v20 setContentHuggingPriority:0 forAxis:?];
  [v20 setClipsToBounds:0];
  LODWORD(v4) = 1148846080;
  [v20 setContentCompressionResistancePriority:1 forAxis:v4];
  v16 = v20;
  v5 = objc_alloc(MEMORY[0x277D75708]);
  v17 = [v5 initWithTarget:v22 action:sel__primaryButtonLongTapped_];
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
  v18 = self;
  v17[1] = a2;
  v17[0] = [MEMORY[0x277D75230] plainButtonConfiguration];
  [v17[0] setCornerStyle:4];
  v8 = MEMORY[0x277D75220];
  v7 = v17[0];
  v6 = MEMORY[0x277D750C8];
  v15 = MEMORY[0x277D82BE0](v18);
  v9 = [v6 actionWithHandler:?];
  v16 = [v8 buttonWithConfiguration:v7 primaryAction:?];
  *&v2 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  v10 = v16;
  v11 = [MEMORY[0x277D75348] systemBlueColor];
  [v10 setTitleColor:? forState:?];
  *&v3 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  v13 = [v16 titleLabel];
  v12 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76918] weight:*MEMORY[0x277D74418]];
  [v13 setFont:?];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
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

- (void)_addActivityIndicatorFor:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v3 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    activityIndicator = v16->_activityIndicator;
    v16->_activityIndicator = v3;
    *&v5 = MEMORY[0x277D82BD8](activityIndicator).n128_u64[0];
    [(UIActivityIndicatorView *)v16->_activityIndicator setTranslatesAutoresizingMaskIntoConstraints:0, v5];
    [(UIActivityIndicatorView *)v16->_activityIndicator setHidden:0];
    [(UIActivityIndicatorView *)v16->_activityIndicator startAnimating];
    [location[0] addSubview:v16->_activityIndicator];
    v6 = MEMORY[0x277CCAAD0];
    v13 = [(UIActivityIndicatorView *)v16->_activityIndicator centerYAnchor];
    v12 = [location[0] centerYAnchor];
    v11 = [v13 constraintEqualToAnchor:?];
    v17[0] = v11;
    v10 = [(UIActivityIndicatorView *)v16->_activityIndicator trailingAnchor];
    v9 = [location[0] trailingAnchor];
    v8 = [v10 constraintEqualToAnchor:-10.0 constant:?];
    v17[1] = v8;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    [v6 activateConstraints:?];
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
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

- (void)_primaryButtonLongTapped:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_primaryButtonLongTapAction)
  {
    (*(v4->_primaryButtonLongTapAction + 2))();
  }

  objc_storeStrong(location, 0);
}

@end