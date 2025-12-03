@interface WFAutomationTypeExplanationPlatterView
- (WFAutomationTypeExplanationPlatterView)initWithFrame:(CGRect)frame;
- (id)homeAutomationIcon;
- (id)personalAutomationIcon;
- (void)configureForAutomationType:(unint64_t)type;
- (void)prepareForReuse;
- (void)setButtonTarget:(id)target action:(SEL)action;
- (void)setButtonTitle:(id)title color:(id)color;
- (void)setExplanatoryText:(id)text;
- (void)setIcon:(id)icon;
@end

@implementation WFAutomationTypeExplanationPlatterView

- (void)prepareForReuse
{
  button = [(WFAutomationTypeExplanationPlatterView *)self button];
  [button removeTarget:0 action:0 forControlEvents:64];

  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  iconView = [(WFAutomationTypeExplanationPlatterView *)self iconView];
  [iconView setTintColor:systemBlueColor];
}

- (id)homeAutomationIcon
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D755D0] configurationWithPointSize:60.0];
  v3 = MEMORY[0x277D755D0];
  wf_homeTintColor = [MEMORY[0x277D75348] wf_homeTintColor];
  v10[0] = wf_homeTintColor;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v6 = [v3 _configurationWithHierarchicalColors:v5];
  v7 = [v2 configurationByApplyingConfiguration:v6];

  v8 = [MEMORY[0x277D755B8] systemImageNamed:@"homekit" withConfiguration:v7];

  return v8;
}

- (id)personalAutomationIcon
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D755D0] configurationWithPointSize:60.0];
  v3 = MEMORY[0x277D755D0];
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  v10[0] = systemBlueColor;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v6 = [v3 _configurationWithHierarchicalColors:v5];
  v7 = [v2 configurationByApplyingConfiguration:v6];

  v8 = [MEMORY[0x277D755B8] systemImageNamed:@"ipad.and.iphone" withConfiguration:v7];

  return v8;
}

- (void)setButtonTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  button = [(WFAutomationTypeExplanationPlatterView *)self button];
  [button addTarget:targetCopy action:action forControlEvents:64];
}

- (void)setButtonTitle:(id)title color:(id)color
{
  v6 = MEMORY[0x277D75230];
  colorCopy = color;
  titleCopy = title;
  filledButtonConfiguration = [v6 filledButtonConfiguration];
  [filledButtonConfiguration setTitle:titleCopy];

  [filledButtonConfiguration setButtonSize:3];
  background = [filledButtonConfiguration background];
  [background setBackgroundColor:colorCopy];

  [filledButtonConfiguration setCornerStyle:4];
  [filledButtonConfiguration setTitleLineBreakMode:0];
  button = [(WFAutomationTypeExplanationPlatterView *)self button];
  [button setConfiguration:filledButtonConfiguration];

  button2 = [(WFAutomationTypeExplanationPlatterView *)self button];
  titleLabel = [button2 titleLabel];
  [titleLabel setNumberOfLines:0];

  button3 = [(WFAutomationTypeExplanationPlatterView *)self button];
  titleLabel2 = [button3 titleLabel];
  [titleLabel2 setTextAlignment:1];
}

- (void)setExplanatoryText:(id)text
{
  textCopy = text;
  explanationTextLabel = [(WFAutomationTypeExplanationPlatterView *)self explanationTextLabel];
  [explanationTextLabel setText:textCopy];
}

- (void)setIcon:(id)icon
{
  iconCopy = icon;
  iconView = [(WFAutomationTypeExplanationPlatterView *)self iconView];
  [iconView setImage:iconCopy];
}

- (void)configureForAutomationType:(unint64_t)type
{
  v4 = 0;
  if (type <= 1)
  {
    if (type)
    {
      homeExplanatoryText = 0;
      systemBlueColor = 0;
      v7 = 0;
      v8 = 0;
      if (type == 1)
      {
        v8 = @"automations.add-home";
        v9 = @"Create Home Automation";
        goto LABEL_11;
      }
    }

    else
    {
      personalAutomationIcon = [(WFAutomationTypeExplanationPlatterView *)self personalAutomationIcon];
      homeExplanatoryText = WFLocalizedString(@"Create an automation that runs on a personal iPhone or iPad.");
      systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
      v10 = WFLocalizedString(@"Create Personal Automation");
      v4 = personalAutomationIcon;
      v7 = v10;
      v8 = @"automations.add-personal";
    }

LABEL_9:
    homeAutomationIcon = v4;
    [(WFAutomationTypeExplanationPlatterView *)self setIcon:v4];
    goto LABEL_13;
  }

  if (type == 2)
  {
    v8 = @"automations.setup-home";
    v9 = @"Set Up Your Home";
  }

  else
  {
    homeExplanatoryText = 0;
    systemBlueColor = 0;
    v7 = 0;
    v8 = 0;
    if (type != 3)
    {
      goto LABEL_9;
    }

    v8 = @"automations.setup-homehub";
    v9 = @"Set Up Home Hub";
  }

LABEL_11:
  homeAutomationIcon = [(WFAutomationTypeExplanationPlatterView *)self homeAutomationIcon];
  homeButtonColor = [(WFAutomationTypeExplanationPlatterView *)self homeButtonColor];
  homeExplanatoryText = [(WFAutomationTypeExplanationPlatterView *)self homeExplanatoryText];
  systemBlueColor = [(WFAutomationTypeExplanationPlatterView *)self homeButtonColor];
  v7 = WFLocalizedString(v9);
  [(WFAutomationTypeExplanationPlatterView *)self setIcon:homeAutomationIcon];
  if (homeButtonColor)
  {
    iconView = [(WFAutomationTypeExplanationPlatterView *)self iconView];
    [iconView setTintColor:homeButtonColor];
  }

LABEL_13:
  [(WFAutomationTypeExplanationPlatterView *)self setExplanatoryText:homeExplanatoryText];
  [(WFAutomationTypeExplanationPlatterView *)self setButtonTitle:v7 color:systemBlueColor];
  button = [(WFAutomationTypeExplanationPlatterView *)self button];
  [button setAccessibilityIdentifier:v8];
}

- (WFAutomationTypeExplanationPlatterView)initWithFrame:(CGRect)frame
{
  v62[4] = *MEMORY[0x277D85DE8];
  v60.receiver = self;
  v60.super_class = WFAutomationTypeExplanationPlatterView;
  v3 = [(WFAutomationTypeExplanationPlatterView *)&v60 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(WFAutomationTypeExplanationPlatterView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v5) = 1148846080;
    [(WFAutomationTypeExplanationPlatterView *)v4 setContentCompressionResistancePriority:0 forAxis:v5];
    LODWORD(v6) = 1148846080;
    [(WFAutomationTypeExplanationPlatterView *)v4 setContentCompressionResistancePriority:1 forAxis:v6];
    secondarySystemGroupedBackgroundColor = [MEMORY[0x277D75348] secondarySystemGroupedBackgroundColor];
    [(WFAutomationTypeExplanationPlatterView *)v4 setBackgroundColor:secondarySystemGroupedBackgroundColor];

    layer = [(WFAutomationTypeExplanationPlatterView *)v4 layer];
    [layer setCornerRadius:26.0];

    v9 = *MEMORY[0x277CDA138];
    layer2 = [(WFAutomationTypeExplanationPlatterView *)v4 layer];
    [layer2 setCornerCurve:v9];

    v11 = objc_alloc(MEMORY[0x277D75A68]);
    v12 = *MEMORY[0x277CBF3A0];
    v13 = *(MEMORY[0x277CBF3A0] + 8);
    v14 = *(MEMORY[0x277CBF3A0] + 16);
    v15 = *(MEMORY[0x277CBF3A0] + 24);
    v16 = [v11 initWithFrame:{*MEMORY[0x277CBF3A0], v13, v14, v15}];
    stackView = v4->_stackView;
    v4->_stackView = v16;

    [(UIStackView *)v4->_stackView setAxis:1];
    [(UIStackView *)v4->_stackView setAlignment:0];
    [(UIStackView *)v4->_stackView setDistribution:3];
    [(UIStackView *)v4->_stackView setSpacing:18.0];
    [(UIStackView *)v4->_stackView setLayoutMarginsRelativeArrangement:1];
    [(UIStackView *)v4->_stackView setLayoutMargins:18.0, 8.0, 24.0, 8.0];
    [(UIStackView *)v4->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(WFAutomationTypeExplanationPlatterView *)v4 addSubview:v4->_stackView];
    v50 = MEMORY[0x277CCAAD0];
    topAnchor = [(UIStackView *)v4->_stackView topAnchor];
    topAnchor2 = [(WFAutomationTypeExplanationPlatterView *)v4 topAnchor];
    v54 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v62[0] = v54;
    bottomAnchor = [(UIStackView *)v4->_stackView bottomAnchor];
    bottomAnchor2 = [(WFAutomationTypeExplanationPlatterView *)v4 bottomAnchor];
    v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v62[1] = v19;
    leadingAnchor = [(UIStackView *)v4->_stackView leadingAnchor];
    leadingAnchor2 = [(WFAutomationTypeExplanationPlatterView *)v4 leadingAnchor];
    v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v62[2] = v22;
    trailingAnchor = [(UIStackView *)v4->_stackView trailingAnchor];
    trailingAnchor2 = [(WFAutomationTypeExplanationPlatterView *)v4 trailingAnchor];
    v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v62[3] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:4];
    [v50 activateConstraints:v26];

    v27 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
    iconView = v4->_iconView;
    v4->_iconView = v27;

    [(UIImageView *)v4->_iconView setContentMode:4];
    [(UIImageView *)v4->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v29) = 1148846080;
    [(UIImageView *)v4->_iconView setContentCompressionResistancePriority:1 forAxis:v29];
    [(UIStackView *)v4->_stackView addArrangedSubview:v4->_iconView];
    v30 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v12, v13, v14, v15}];
    explanationTextLabel = v4->_explanationTextLabel;
    v4->_explanationTextLabel = v30;

    [(UILabel *)v4->_explanationTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_explanationTextLabel setNumberOfLines:0];
    [(UILabel *)v4->_explanationTextLabel setTextAlignment:1];
    LODWORD(v32) = 1148846080;
    [(UILabel *)v4->_explanationTextLabel setContentCompressionResistancePriority:1 forAxis:v32];
    [(UIStackView *)v4->_stackView addArrangedSubview:v4->_explanationTextLabel];
    v33 = [MEMORY[0x277D75220] buttonWithType:1];
    button = v4->_button;
    v4->_button = v33;

    [(UIButton *)v4->_button setRole:1];
    [(UIButton *)v4->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    v35 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v35 addSubview:v4->_button];
    v48 = MEMORY[0x277CCAAD0];
    topAnchor3 = [(UIButton *)v4->_button topAnchor];
    topAnchor4 = [v35 topAnchor];
    v55 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v61[0] = v55;
    centerXAnchor = [(UIButton *)v4->_button centerXAnchor];
    centerXAnchor2 = [v35 centerXAnchor];
    v49 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v61[1] = v49;
    bottomAnchor3 = [(UIButton *)v4->_button bottomAnchor];
    bottomAnchor4 = [v35 bottomAnchor];
    v36 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v61[2] = v36;
    leadingAnchor3 = [(UIButton *)v4->_button leadingAnchor];
    leadingAnchor4 = [v35 leadingAnchor];
    v39 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4];
    v61[3] = v39;
    trailingAnchor3 = [(UIButton *)v4->_button trailingAnchor];
    trailingAnchor4 = [v35 trailingAnchor];
    v42 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4];
    v61[4] = v42;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:5];
    [v48 activateConstraints:v43];

    [(UIStackView *)v4->_stackView addArrangedSubview:v35];
    v44 = v4;
  }

  return v4;
}

@end