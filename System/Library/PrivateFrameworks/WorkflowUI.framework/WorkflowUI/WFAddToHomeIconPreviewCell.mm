@interface WFAddToHomeIconPreviewCell
- (UIImageView)iconImageView;
- (UILabel)iconLabel;
- (WFAddToHomeIconPreviewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureIcon:(id)icon;
- (void)configureName:(id)name;
- (void)configureWithName:(id)name icon:(id)icon;
- (void)redrawIcon;
@end

@implementation WFAddToHomeIconPreviewCell

- (UILabel)iconLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_iconLabel);

  return WeakRetained;
}

- (UIImageView)iconImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_iconImageView);

  return WeakRetained;
}

- (void)redrawIcon
{
  icon = [(WFAddToHomeIconPreviewCell *)self icon];
  [(WFAddToHomeIconPreviewCell *)self configureIcon:icon];
}

- (void)configureIcon:(id)icon
{
  objc_storeStrong(&self->_icon, icon);
  iconCopy = icon;
  v10 = [objc_alloc(MEMORY[0x277D7A1E8]) initWithHomeScreenIcon:iconCopy];

  [v10 setCornerRadius:13.5];
  traitCollection = [(WFAddToHomeIconPreviewCell *)self traitCollection];
  [v10 setDark:{objc_msgSend(traitCollection, "userInterfaceStyle") == 2}];
  [v10 setHighContrast:{objc_msgSend(traitCollection, "accessibilityContrast") == 1}];
  v7 = [v10 imageWithSize:{60.0, 60.0}];
  uIImage = [v7 UIImage];
  iconImageView = [(WFAddToHomeIconPreviewCell *)self iconImageView];
  [iconImageView setImage:uIImage];
}

- (void)configureName:(id)name
{
  nameCopy = name;
  iconLabel = [(WFAddToHomeIconPreviewCell *)self iconLabel];
  [iconLabel setText:nameCopy];
}

- (void)configureWithName:(id)name icon:(id)icon
{
  iconCopy = icon;
  [(WFAddToHomeIconPreviewCell *)self configureName:name];
  [(WFAddToHomeIconPreviewCell *)self configureIcon:iconCopy];
}

- (WFAddToHomeIconPreviewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v35[7] = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = WFAddToHomeIconPreviewCell;
  v4 = [(WFAddToHomeIconPreviewCell *)&v34 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(WFAddToHomeIconPreviewCell *)v4 setSelectionStyle:0];
    wf_settingsCellColor = [MEMORY[0x277D75348] wf_settingsCellColor];
    [(WFAddToHomeIconPreviewCell *)v5 setBackgroundColor:wf_settingsCellColor];

    v7 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_storeWeak(&v5->_iconImageView, v7);
    v8 = objc_alloc_init(MEMORY[0x277D756B8]);
    labelColor = [MEMORY[0x277D75348] labelColor];
    [v8 setTextColor:labelColor];

    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [MEMORY[0x277D74300] systemFontOfSize:12.0 weight:*MEMORY[0x277D74410]];
    [v8 setFont:v10];

    [v8 setTextAlignment:1];
    [v8 setAllowsDefaultTighteningForTruncation:1];
    [v8 setText:&stru_2883A0E78];
    objc_storeWeak(&v5->_iconLabel, v8);
    [(WFAddToHomeIconPreviewCell *)v5 addSubview:v7];
    [(WFAddToHomeIconPreviewCell *)v5 addSubview:v8];
    v25 = MEMORY[0x277CCAAD0];
    centerXAnchor = [v7 centerXAnchor];
    centerXAnchor2 = [(WFAddToHomeIconPreviewCell *)v5 centerXAnchor];
    v31 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v35[0] = v31;
    centerYAnchor = [v7 centerYAnchor];
    centerYAnchor2 = [(WFAddToHomeIconPreviewCell *)v5 centerYAnchor];
    v28 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:-9.0];
    v35[1] = v28;
    widthAnchor = [v7 widthAnchor];
    v26 = [widthAnchor constraintEqualToConstant:60.0];
    v35[2] = v26;
    heightAnchor = [v7 heightAnchor];
    v23 = [heightAnchor constraintEqualToConstant:60.0];
    v35[3] = v23;
    topAnchor = [v8 topAnchor];
    bottomAnchor = [v7 bottomAnchor];
    v20 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:6.0];
    v35[4] = v20;
    centerXAnchor3 = [v8 centerXAnchor];
    centerXAnchor4 = [(WFAddToHomeIconPreviewCell *)v5 centerXAnchor];
    v13 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v35[5] = v13;
    widthAnchor2 = [v8 widthAnchor];
    widthAnchor3 = [v7 widthAnchor];
    v16 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3 constant:32.0];
    v35[6] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:7];
    [v25 activateConstraints:v17];

    v18 = v5;
  }

  return v5;
}

@end