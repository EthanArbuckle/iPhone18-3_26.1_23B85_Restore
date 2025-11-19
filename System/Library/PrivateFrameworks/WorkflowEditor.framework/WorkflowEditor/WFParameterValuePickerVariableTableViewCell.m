@interface WFParameterValuePickerVariableTableViewCell
- (WFParameterValuePickerVariableTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)tintColorDidChange;
- (void)updateWithName:(id)a3 icon:(id)a4;
@end

@implementation WFParameterValuePickerVariableTableViewCell

- (void)updateWithName:(id)a3 icon:(id)a4
{
  v6 = a4;
  nameLabel = self->_nameLabel;
  v8 = a3;
  [(UILabel *)nameLabel setText:v8];
  v9 = v6;
  if (v9)
  {
    objc_opt_class();
    v14 = v9;
    if (objc_opt_isKindOfClass())
    {
      v10 = objc_alloc(MEMORY[0x277D79E20]);
      v11 = [(WFParameterValuePickerVariableTableViewCell *)self tintColor];
      v12 = [v10 initWithPlatformColor:v11];
      v13 = [MEMORY[0x277D79FB8] clearBackground];
      v14 = [v9 iconWithSymbolColor:v12 background:v13];
    }
  }

  else
  {
    v14 = 0;
  }

  [(WFIconHostingView *)self->_iconView setIcon:v14];
  [(WFParameterValuePickerVariableTableViewCell *)self setIsAccessibilityElement:1];
  [(WFParameterValuePickerVariableTableViewCell *)self setAccessibilityLabel:v8];
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = WFParameterValuePickerVariableTableViewCell;
  [(WFParameterValuePickerVariableTableViewCell *)&v4 tintColorDidChange];
  v3 = [(WFParameterValuePickerVariableTableViewCell *)self tintColor];
  [(UILabel *)self->_nameLabel setTextColor:v3];
}

- (WFParameterValuePickerVariableTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v38[4] = *MEMORY[0x277D85DE8];
  v37.receiver = self;
  v37.super_class = WFParameterValuePickerVariableTableViewCell;
  v4 = [(WFParameterValuePickerVariableTableViewCell *)&v37 initWithStyle:a3 reuseIdentifier:a4];
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

    v11 = [(WFParameterValuePickerVariableTableViewCell *)v4 tintColor];
    [(UILabel *)v4->_nameLabel setTextColor:v11];

    [v5 addArrangedSubview:v4->_nameLabel];
    [v6 scaledValueForValue:25.0];
    v13 = [objc_alloc(MEMORY[0x277D7D520]) initWithIcon:0 size:{v12, v12}];
    iconView = v4->_iconView;
    v4->_iconView = v13;

    [v5 addArrangedSubview:v4->_iconView];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [(WFParameterValuePickerVariableTableViewCell *)v4 contentView];
    [v15 addSubview:v5];

    v29 = MEMORY[0x277CCAAD0];
    v34 = [v5 topAnchor];
    v35 = [(WFParameterValuePickerVariableTableViewCell *)v4 contentView];
    v33 = [v35 topAnchor];
    v32 = [v34 constraintEqualToAnchor:v33 constant:10.0];
    v38[0] = v32;
    v30 = [v5 bottomAnchor];
    v31 = [(WFParameterValuePickerVariableTableViewCell *)v4 contentView];
    v28 = [v31 bottomAnchor];
    v27 = [v30 constraintEqualToAnchor:v28 constant:-10.0];
    v38[1] = v27;
    v26 = [v5 leadingAnchor];
    v16 = [(WFParameterValuePickerVariableTableViewCell *)v4 contentView];
    v17 = [v16 leadingAnchor];
    v18 = [v26 constraintEqualToAnchor:v17 constant:20.0];
    v38[2] = v18;
    v19 = [v5 trailingAnchor];
    v20 = [(WFParameterValuePickerVariableTableViewCell *)v4 contentView];
    v21 = [v20 trailingAnchor];
    v22 = [v19 constraintEqualToAnchor:v21 constant:-20.0];
    v38[3] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:4];
    [v29 activateConstraints:v23];

    v24 = v4;
  }

  return v4;
}

@end