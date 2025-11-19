@interface WFAutomationTypeExplanationPlatterView
- (WFAutomationTypeExplanationPlatterView)initWithFrame:(CGRect)a3;
- (id)homeAutomationIcon;
- (id)personalAutomationIcon;
- (void)configureForAutomationType:(unint64_t)a3;
- (void)prepareForReuse;
- (void)setButtonTarget:(id)a3 action:(SEL)a4;
- (void)setButtonTitle:(id)a3 color:(id)a4;
- (void)setExplanatoryText:(id)a3;
- (void)setIcon:(id)a3;
@end

@implementation WFAutomationTypeExplanationPlatterView

- (void)prepareForReuse
{
  v3 = [(WFAutomationTypeExplanationPlatterView *)self button];
  [v3 removeTarget:0 action:0 forControlEvents:64];

  v5 = [MEMORY[0x277D75348] systemBlueColor];
  v4 = [(WFAutomationTypeExplanationPlatterView *)self iconView];
  [v4 setTintColor:v5];
}

- (id)homeAutomationIcon
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D755D0] configurationWithPointSize:60.0];
  v3 = MEMORY[0x277D755D0];
  v4 = [MEMORY[0x277D75348] wf_homeTintColor];
  v10[0] = v4;
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
  v4 = [MEMORY[0x277D75348] systemBlueColor];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v6 = [v3 _configurationWithHierarchicalColors:v5];
  v7 = [v2 configurationByApplyingConfiguration:v6];

  v8 = [MEMORY[0x277D755B8] systemImageNamed:@"ipad.and.iphone" withConfiguration:v7];

  return v8;
}

- (void)setButtonTarget:(id)a3 action:(SEL)a4
{
  v6 = a3;
  v7 = [(WFAutomationTypeExplanationPlatterView *)self button];
  [v7 addTarget:v6 action:a4 forControlEvents:64];
}

- (void)setButtonTitle:(id)a3 color:(id)a4
{
  v6 = MEMORY[0x277D75230];
  v7 = a4;
  v8 = a3;
  v15 = [v6 filledButtonConfiguration];
  [v15 setTitle:v8];

  [v15 setButtonSize:3];
  v9 = [v15 background];
  [v9 setBackgroundColor:v7];

  [v15 setCornerStyle:4];
  [v15 setTitleLineBreakMode:0];
  v10 = [(WFAutomationTypeExplanationPlatterView *)self button];
  [v10 setConfiguration:v15];

  v11 = [(WFAutomationTypeExplanationPlatterView *)self button];
  v12 = [v11 titleLabel];
  [v12 setNumberOfLines:0];

  v13 = [(WFAutomationTypeExplanationPlatterView *)self button];
  v14 = [v13 titleLabel];
  [v14 setTextAlignment:1];
}

- (void)setExplanatoryText:(id)a3
{
  v4 = a3;
  v5 = [(WFAutomationTypeExplanationPlatterView *)self explanationTextLabel];
  [v5 setText:v4];
}

- (void)setIcon:(id)a3
{
  v4 = a3;
  v5 = [(WFAutomationTypeExplanationPlatterView *)self iconView];
  [v5 setImage:v4];
}

- (void)configureForAutomationType:(unint64_t)a3
{
  v4 = 0;
  if (a3 <= 1)
  {
    if (a3)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      if (a3 == 1)
      {
        v8 = @"automations.add-home";
        v9 = @"Create Home Automation";
        goto LABEL_11;
      }
    }

    else
    {
      v14 = [(WFAutomationTypeExplanationPlatterView *)self personalAutomationIcon];
      v5 = WFLocalizedString(@"Create an automation that runs on a personal iPhone or iPad.");
      v6 = [MEMORY[0x277D75348] systemBlueColor];
      v10 = WFLocalizedString(@"Create Personal Automation");
      v4 = v14;
      v7 = v10;
      v8 = @"automations.add-personal";
    }

LABEL_9:
    v15 = v4;
    [(WFAutomationTypeExplanationPlatterView *)self setIcon:v4];
    goto LABEL_13;
  }

  if (a3 == 2)
  {
    v8 = @"automations.setup-home";
    v9 = @"Set Up Your Home";
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    if (a3 != 3)
    {
      goto LABEL_9;
    }

    v8 = @"automations.setup-homehub";
    v9 = @"Set Up Home Hub";
  }

LABEL_11:
  v15 = [(WFAutomationTypeExplanationPlatterView *)self homeAutomationIcon];
  v11 = [(WFAutomationTypeExplanationPlatterView *)self homeButtonColor];
  v5 = [(WFAutomationTypeExplanationPlatterView *)self homeExplanatoryText];
  v6 = [(WFAutomationTypeExplanationPlatterView *)self homeButtonColor];
  v7 = WFLocalizedString(v9);
  [(WFAutomationTypeExplanationPlatterView *)self setIcon:v15];
  if (v11)
  {
    v12 = [(WFAutomationTypeExplanationPlatterView *)self iconView];
    [v12 setTintColor:v11];
  }

LABEL_13:
  [(WFAutomationTypeExplanationPlatterView *)self setExplanatoryText:v5];
  [(WFAutomationTypeExplanationPlatterView *)self setButtonTitle:v7 color:v6];
  v13 = [(WFAutomationTypeExplanationPlatterView *)self button];
  [v13 setAccessibilityIdentifier:v8];
}

- (WFAutomationTypeExplanationPlatterView)initWithFrame:(CGRect)a3
{
  v62[4] = *MEMORY[0x277D85DE8];
  v60.receiver = self;
  v60.super_class = WFAutomationTypeExplanationPlatterView;
  v3 = [(WFAutomationTypeExplanationPlatterView *)&v60 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(WFAutomationTypeExplanationPlatterView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v5) = 1148846080;
    [(WFAutomationTypeExplanationPlatterView *)v4 setContentCompressionResistancePriority:0 forAxis:v5];
    LODWORD(v6) = 1148846080;
    [(WFAutomationTypeExplanationPlatterView *)v4 setContentCompressionResistancePriority:1 forAxis:v6];
    v7 = [MEMORY[0x277D75348] secondarySystemGroupedBackgroundColor];
    [(WFAutomationTypeExplanationPlatterView *)v4 setBackgroundColor:v7];

    v8 = [(WFAutomationTypeExplanationPlatterView *)v4 layer];
    [v8 setCornerRadius:26.0];

    v9 = *MEMORY[0x277CDA138];
    v10 = [(WFAutomationTypeExplanationPlatterView *)v4 layer];
    [v10 setCornerCurve:v9];

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
    v58 = [(UIStackView *)v4->_stackView topAnchor];
    v56 = [(WFAutomationTypeExplanationPlatterView *)v4 topAnchor];
    v54 = [v58 constraintEqualToAnchor:v56];
    v62[0] = v54;
    v52 = [(UIStackView *)v4->_stackView bottomAnchor];
    v18 = [(WFAutomationTypeExplanationPlatterView *)v4 bottomAnchor];
    v19 = [v52 constraintEqualToAnchor:v18];
    v62[1] = v19;
    v20 = [(UIStackView *)v4->_stackView leadingAnchor];
    v21 = [(WFAutomationTypeExplanationPlatterView *)v4 leadingAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    v62[2] = v22;
    v23 = [(UIStackView *)v4->_stackView trailingAnchor];
    v24 = [(WFAutomationTypeExplanationPlatterView *)v4 trailingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
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
    v59 = [(UIButton *)v4->_button topAnchor];
    v57 = [v35 topAnchor];
    v55 = [v59 constraintEqualToAnchor:v57];
    v61[0] = v55;
    v53 = [(UIButton *)v4->_button centerXAnchor];
    v51 = [v35 centerXAnchor];
    v49 = [v53 constraintEqualToAnchor:v51];
    v61[1] = v49;
    v47 = [(UIButton *)v4->_button bottomAnchor];
    v46 = [v35 bottomAnchor];
    v36 = [v47 constraintEqualToAnchor:v46];
    v61[2] = v36;
    v37 = [(UIButton *)v4->_button leadingAnchor];
    v38 = [v35 leadingAnchor];
    v39 = [v37 constraintGreaterThanOrEqualToAnchor:v38];
    v61[3] = v39;
    v40 = [(UIButton *)v4->_button trailingAnchor];
    v41 = [v35 trailingAnchor];
    v42 = [v40 constraintLessThanOrEqualToAnchor:v41];
    v61[4] = v42;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:5];
    [v48 activateConstraints:v43];

    [(UIStackView *)v4->_stackView addArrangedSubview:v35];
    v44 = v4;
  }

  return v4;
}

@end