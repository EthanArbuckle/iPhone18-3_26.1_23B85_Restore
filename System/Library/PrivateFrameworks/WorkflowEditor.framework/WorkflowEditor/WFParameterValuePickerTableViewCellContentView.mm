@interface WFParameterValuePickerTableViewCellContentView
- (WFParameterValuePickerTableViewCellContentView)initWithConfiguration:(id)configuration;
- (void)applyConfiguration:(id)configuration;
- (void)selectedSwitchDidToggle:(id)toggle;
- (void)setConfiguration:(id)configuration;
@end

@implementation WFParameterValuePickerTableViewCellContentView

- (void)selectedSwitchDidToggle:(id)toggle
{
  superview = [(WFParameterValuePickerTableViewCellContentView *)self superview];
  if (superview)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = superview;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  configuration = [(WFParameterValuePickerTableViewCellContentView *)self configuration];
  delegate = [configuration delegate];
  selectedSwitch = [(WFParameterValuePickerTableViewCellContentView *)self selectedSwitch];
  [delegate parameterValuePickerTableViewCell:v6 didToggleSelection:{objc_msgSend(selectedSwitch, "isOn")}];
}

- (void)applyConfiguration:(id)configuration
{
  configurationCopy = configuration;
  configuration = [(WFParameterValuePickerTableViewCellContentView *)self configuration];
  v8 = configurationCopy;
  v52 = v8;
  if (configuration == v8)
  {

LABEL_26:
    v10 = v52;
    goto LABEL_27;
  }

  if (!v8 || !configuration)
  {

    goto LABEL_8;
  }

  v9 = [configuration isEqual:v8];

  v10 = v52;
  if ((v9 & 1) == 0)
  {
LABEL_8:
    objc_storeStrong(&self->_configuration, configuration);
    text = [v52 text];
    titleLabel = [(WFParameterValuePickerTableViewCellContentView *)self titleLabel];
    [titleLabel setText:text];

    textColor = [v52 textColor];
    titleLabel2 = [(WFParameterValuePickerTableViewCellContentView *)self titleLabel];
    [titleLabel2 setTextColor:textColor];

    textFont = [v52 textFont];
    titleLabel3 = [(WFParameterValuePickerTableViewCellContentView *)self titleLabel];
    [titleLabel3 setFont:textFont];

    secondaryText = [v52 secondaryText];
    subtitleLabel = [(WFParameterValuePickerTableViewCellContentView *)self subtitleLabel];
    [subtitleLabel setText:secondaryText];

    secondaryTextColor = [v52 secondaryTextColor];
    subtitleLabel2 = [(WFParameterValuePickerTableViewCellContentView *)self subtitleLabel];
    [subtitleLabel2 setTextColor:secondaryTextColor];

    secondaryTextFont = [v52 secondaryTextFont];
    subtitleLabel3 = [(WFParameterValuePickerTableViewCellContentView *)self subtitleLabel];
    [subtitleLabel3 setFont:secondaryTextFont];

    secondaryText2 = [v52 secondaryText];
    v24 = [secondaryText2 length] == 0;
    subtitleLabel4 = [(WFParameterValuePickerTableViewCellContentView *)self subtitleLabel];
    [subtitleLabel4 setHidden:v24];

    image = [v52 image];
    untintedUIImage = [image untintedUIImage];
    iconImageView = [(WFParameterValuePickerTableViewCellContentView *)self iconImageView];
    [iconImageView setImage:untintedUIImage];

    image2 = [v52 image];
    tintColor = [image2 tintColor];
    platformColor = [tintColor platformColor];
    iconImageView2 = [(WFParameterValuePickerTableViewCellContentView *)self iconImageView];
    [iconImageView2 setTintColor:platformColor];

    [v52 cornerRadius];
    v34 = v33;
    iconImageView3 = [(WFParameterValuePickerTableViewCellContentView *)self iconImageView];
    [iconImageView3 _setContinuousCornerRadius:v34];

    image3 = [v52 image];
    image4 = image3 == 0;
    iconImageView4 = [(WFParameterValuePickerTableViewCellContentView *)self iconImageView];
    [iconImageView4 setHidden:image4];

    forceImageScaling = [v52 forceImageScaling];
    if (forceImageScaling)
    {
      v40 = 0;
      v41 = 1;
    }

    else
    {
      image4 = [v52 image];
      iconImageView4 = [image4 platformImage];
      [iconImageView4 size];
      if (v42 <= 29.0)
      {
        iconImageView2 = [v52 image];
        platformImage = [iconImageView2 platformImage];
        [platformImage size];
        if (v43 > 29.0)
        {
          v41 = 1;
        }

        else
        {
          v41 = 4;
        }

        v40 = 1;
      }

      else
      {
        v40 = 0;
        v41 = 1;
      }
    }

    iconImageView5 = [(WFParameterValuePickerTableViewCellContentView *)self iconImageView];
    [iconImageView5 setContentMode:v41];

    if (v40)
    {
    }

    if ((forceImageScaling & 1) == 0)
    {
    }

    icon = [v52 icon];
    iconView = [(WFParameterValuePickerTableViewCellContentView *)self iconView];
    [iconView setIcon:icon];

    image5 = [v52 image];
    if (image5)
    {
      v48 = 1;
    }

    else
    {
      iconView = [v52 icon];
      v48 = iconView == 0;
    }

    iconView2 = [(WFParameterValuePickerTableViewCellContentView *)self iconView];
    [iconView2 setHidden:v48];

    if (!image5)
    {
    }

    isContainedInState = [v52 isContainedInState];
    selectedSwitch = [(WFParameterValuePickerTableViewCellContentView *)self selectedSwitch];
    [selectedSwitch setOn:isContainedInState];

    LODWORD(isContainedInState) = [v52 usesToggleForSelection];
    configuration = [(WFParameterValuePickerTableViewCellContentView *)self selectedSwitch];
    [configuration setHidden:isContainedInState ^ 1];
    goto LABEL_26;
  }

LABEL_27:
}

- (WFParameterValuePickerTableViewCellContentView)initWithConfiguration:(id)configuration
{
  v72[2] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v69.receiver = self;
  v69.super_class = WFParameterValuePickerTableViewCellContentView;
  v5 = [(WFParameterValuePickerTableViewCellContentView *)&v69 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = v5;
  if (v5)
  {
    [(WFParameterValuePickerTableViewCellContentView *)v5 setPreservesSuperviewLayoutMargins:1];
    v7 = objc_opt_new();
    [(UILabel *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v7 setNumberOfLines:2];
    titleLabel = v6->_titleLabel;
    v6->_titleLabel = v7;
    v67 = v7;

    v9 = objc_opt_new();
    [(UILabel *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v9 setNumberOfLines:2];
    subtitleLabel = v6->_subtitleLabel;
    v6->_subtitleLabel = v9;
    v66 = v9;

    v11 = objc_opt_new();
    [(UIImageView *)v11 setClipsToBounds:1];
    [(UIImageView *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    iconImageView = v6->_iconImageView;
    v6->_iconImageView = v11;
    v64 = v11;

    v13 = objc_alloc(MEMORY[0x277D7D520]);
    icon = [configurationCopy icon];
    v15 = [v13 initWithIcon:icon size:{29.0, 29.0}];

    [v15 setUseAccentColor:1];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v16) = 1132396544;
    [v15 setContentHuggingPriority:0 forAxis:v16];
    iconView = v6->_iconView;
    v6->_iconView = v15;
    v63 = v15;

    v18 = objc_opt_new();
    [(UISwitch *)v18 addTarget:v6 action:sel_selectedSwitchDidToggle_ forControlEvents:4096];
    selectedSwitch = v6->_selectedSwitch;
    v6->_selectedSwitch = v18;
    v62 = v18;

    v20 = objc_alloc(MEMORY[0x277D75A68]);
    v72[0] = v67;
    v72[1] = v66;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:2];
    v22 = [v20 initWithArrangedSubviews:v21];
    v68 = configurationCopy;
    labelsStackView = v6->_labelsStackView;
    v6->_labelsStackView = v22;

    [(UIStackView *)v6->_labelsStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v6->_labelsStackView setAxis:1];
    [(UIStackView *)v6->_labelsStackView setDistribution:0];
    [(UIStackView *)v6->_labelsStackView setAlignment:0];
    [(UIStackView *)v6->_labelsStackView setLayoutMarginsRelativeArrangement:1];
    [(UIStackView *)v6->_labelsStackView setSpacing:2.0];
    v24 = 0.0;
    [(UIStackView *)v6->_labelsStackView setDirectionalLayoutMargins:8.0, 0.0, 8.0, 0.0];
    v25 = objc_alloc(MEMORY[0x277D75A68]);
    v71[0] = v64;
    v71[1] = v63;
    v71[2] = v6->_labelsStackView;
    v71[3] = v62;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:4];
    v27 = [v25 initWithArrangedSubviews:v26];
    contentStackView = v6->_contentStackView;
    v6->_contentStackView = v27;

    [(UIStackView *)v6->_contentStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v6->_contentStackView setAxis:0];
    [(UIStackView *)v6->_contentStackView setDistribution:0];
    [(UIStackView *)v6->_contentStackView setAlignment:3];
    usesInsetGroupedTableStyle = [configurationCopy usesInsetGroupedTableStyle];
    v30 = 12.0;
    if (usesInsetGroupedTableStyle)
    {
      v30 = 8.0;
    }

    [(UIStackView *)v6->_contentStackView setSpacing:v30];
    [(UIStackView *)v6->_contentStackView setDirectionalLayoutMargins:8.0, 0.0, 8.0, 0.0];
    contentStackView = [(WFParameterValuePickerTableViewCellContentView *)v6 contentStackView];
    [(WFParameterValuePickerTableViewCellContentView *)v6 addSubview:contentStackView];

    if ([configurationCopy usesInsetGroupedTableStyle])
    {
      v24 = -4.0;
    }

    v48 = MEMORY[0x277CCAAD0];
    contentStackView2 = [(WFParameterValuePickerTableViewCellContentView *)v6 contentStackView];
    leadingAnchor = [contentStackView2 leadingAnchor];
    layoutMarginsGuide = [(WFParameterValuePickerTableViewCellContentView *)v6 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v58 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v24];
    v70[0] = v58;
    contentStackView3 = [(WFParameterValuePickerTableViewCellContentView *)v6 contentStackView];
    trailingAnchor = [contentStackView3 trailingAnchor];
    layoutMarginsGuide2 = [(WFParameterValuePickerTableViewCellContentView *)v6 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v53 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v70[1] = v53;
    contentStackView4 = [(WFParameterValuePickerTableViewCellContentView *)v6 contentStackView];
    topAnchor = [contentStackView4 topAnchor];
    topAnchor2 = [(WFParameterValuePickerTableViewCellContentView *)v6 topAnchor];
    v49 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v70[2] = v49;
    contentStackView5 = [(WFParameterValuePickerTableViewCellContentView *)v6 contentStackView];
    bottomAnchor = [contentStackView5 bottomAnchor];
    bottomAnchor2 = [(WFParameterValuePickerTableViewCellContentView *)v6 bottomAnchor];
    v44 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v70[3] = v44;
    heightAnchor = [(WFParameterValuePickerTableViewCellContentView *)v6 heightAnchor];
    v33 = [heightAnchor constraintGreaterThanOrEqualToConstant:44.0];
    v70[4] = v33;
    widthAnchor = [(UIImageView *)v6->_iconImageView widthAnchor];
    v35 = [widthAnchor constraintEqualToConstant:29.0];
    LODWORD(v36) = 1148026880;
    v37 = [v35 wf_withPriority:v36];
    v70[5] = v37;
    heightAnchor2 = [(UIImageView *)v6->_iconImageView heightAnchor];
    v39 = [heightAnchor2 constraintEqualToConstant:29.0];
    LODWORD(v40) = 1148026880;
    v41 = [v39 wf_withPriority:v40];
    v70[6] = v41;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:7];
    [v48 activateConstraints:v42];

    configurationCopy = v68;
    [(WFParameterValuePickerTableViewCellContentView *)v6 applyConfiguration:v68];
  }

  return v6;
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (configurationCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(WFParameterValuePickerTableViewCellContentView *)self applyConfiguration:configurationCopy];
    }
  }
}

@end