@interface WFParameterValuePickerVariableTableViewCell
- (WFParameterValuePickerVariableTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)tintColorDidChange;
- (void)updateWithName:(id)name icon:(id)icon;
@end

@implementation WFParameterValuePickerVariableTableViewCell

- (void)updateWithName:(id)name icon:(id)icon
{
  iconCopy = icon;
  nameLabel = self->_nameLabel;
  nameCopy = name;
  [(UILabel *)nameLabel setText:nameCopy];
  v9 = iconCopy;
  if (v9)
  {
    objc_opt_class();
    v14 = v9;
    if (objc_opt_isKindOfClass())
    {
      v10 = objc_alloc(MEMORY[0x277D79E20]);
      tintColor = [(WFParameterValuePickerVariableTableViewCell *)self tintColor];
      v12 = [v10 initWithPlatformColor:tintColor];
      clearBackground = [MEMORY[0x277D79FB8] clearBackground];
      v14 = [v9 iconWithSymbolColor:v12 background:clearBackground];
    }
  }

  else
  {
    v14 = 0;
  }

  [(WFIconHostingView *)self->_iconView setIcon:v14];
  [(WFParameterValuePickerVariableTableViewCell *)self setIsAccessibilityElement:1];
  [(WFParameterValuePickerVariableTableViewCell *)self setAccessibilityLabel:nameCopy];
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = WFParameterValuePickerVariableTableViewCell;
  [(WFParameterValuePickerVariableTableViewCell *)&v4 tintColorDidChange];
  tintColor = [(WFParameterValuePickerVariableTableViewCell *)self tintColor];
  [(UILabel *)self->_nameLabel setTextColor:tintColor];
}

- (WFParameterValuePickerVariableTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v38[4] = *MEMORY[0x277D85DE8];
  v37.receiver = self;
  v37.super_class = WFParameterValuePickerVariableTableViewCell;
  v4 = [(WFParameterValuePickerVariableTableViewCell *)&v37 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D75A68]);
    [v5 setAxis:0];
    [v5 setSpacing:8.0];
    v6 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76918]];
    v7 = objc_alloc_init(MEMORY[0x277D756B8]);
    nameLabel = v4->_nameLabel;
    v4->_nameLabel = v7;

    v9 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
    v36 = v6;
    v10 = [v6 scaledFontForFont:v9 maximumPointSize:36.0];
    [(UILabel *)v4->_nameLabel setFont:v10];

    tintColor = [(WFParameterValuePickerVariableTableViewCell *)v4 tintColor];
    [(UILabel *)v4->_nameLabel setTextColor:tintColor];

    [v5 addArrangedSubview:v4->_nameLabel];
    [v6 scaledValueForValue:25.0];
    v13 = [objc_alloc(MEMORY[0x277D7D520]) initWithIcon:0 size:{v12, v12}];
    iconView = v4->_iconView;
    v4->_iconView = v13;

    [v5 addArrangedSubview:v4->_iconView];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(WFParameterValuePickerVariableTableViewCell *)v4 contentView];
    [contentView addSubview:v5];

    v29 = MEMORY[0x277CCAAD0];
    topAnchor = [v5 topAnchor];
    contentView2 = [(WFParameterValuePickerVariableTableViewCell *)v4 contentView];
    topAnchor2 = [contentView2 topAnchor];
    v32 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
    v38[0] = v32;
    bottomAnchor = [v5 bottomAnchor];
    contentView3 = [(WFParameterValuePickerVariableTableViewCell *)v4 contentView];
    bottomAnchor2 = [contentView3 bottomAnchor];
    v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
    v38[1] = v27;
    leadingAnchor = [v5 leadingAnchor];
    contentView4 = [(WFParameterValuePickerVariableTableViewCell *)v4 contentView];
    leadingAnchor2 = [contentView4 leadingAnchor];
    v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
    v38[2] = v18;
    trailingAnchor = [v5 trailingAnchor];
    contentView5 = [(WFParameterValuePickerVariableTableViewCell *)v4 contentView];
    trailingAnchor2 = [contentView5 trailingAnchor];
    v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
    v38[3] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:4];
    [v29 activateConstraints:v23];

    v24 = v4;
  }

  return v4;
}

@end