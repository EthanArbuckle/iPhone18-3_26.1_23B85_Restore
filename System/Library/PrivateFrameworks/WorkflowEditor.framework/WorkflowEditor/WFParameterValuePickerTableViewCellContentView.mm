@interface WFParameterValuePickerTableViewCellContentView
- (WFParameterValuePickerTableViewCellContentView)initWithConfiguration:(id)a3;
- (void)applyConfiguration:(id)a3;
- (void)selectedSwitchDidToggle:(id)a3;
- (void)setConfiguration:(id)a3;
@end

@implementation WFParameterValuePickerTableViewCellContentView

- (void)selectedSwitchDidToggle:(id)a3
{
  v4 = [(WFParameterValuePickerTableViewCellContentView *)self superview];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

  v9 = [(WFParameterValuePickerTableViewCellContentView *)self configuration];
  v7 = [v9 delegate];
  v8 = [(WFParameterValuePickerTableViewCellContentView *)self selectedSwitch];
  [v7 parameterValuePickerTableViewCell:v6 didToggleSelection:{objc_msgSend(v8, "isOn")}];
}

- (void)applyConfiguration:(id)a3
{
  v6 = a3;
  v7 = [(WFParameterValuePickerTableViewCellContentView *)self configuration];
  v8 = v6;
  v52 = v8;
  if (v7 == v8)
  {

LABEL_26:
    v10 = v52;
    goto LABEL_27;
  }

  if (!v8 || !v7)
  {

    goto LABEL_8;
  }

  v9 = [v7 isEqual:v8];

  v10 = v52;
  if ((v9 & 1) == 0)
  {
LABEL_8:
    objc_storeStrong(&self->_configuration, a3);
    v11 = [v52 text];
    v12 = [(WFParameterValuePickerTableViewCellContentView *)self titleLabel];
    [v12 setText:v11];

    v13 = [v52 textColor];
    v14 = [(WFParameterValuePickerTableViewCellContentView *)self titleLabel];
    [v14 setTextColor:v13];

    v15 = [v52 textFont];
    v16 = [(WFParameterValuePickerTableViewCellContentView *)self titleLabel];
    [v16 setFont:v15];

    v17 = [v52 secondaryText];
    v18 = [(WFParameterValuePickerTableViewCellContentView *)self subtitleLabel];
    [v18 setText:v17];

    v19 = [v52 secondaryTextColor];
    v20 = [(WFParameterValuePickerTableViewCellContentView *)self subtitleLabel];
    [v20 setTextColor:v19];

    v21 = [v52 secondaryTextFont];
    v22 = [(WFParameterValuePickerTableViewCellContentView *)self subtitleLabel];
    [v22 setFont:v21];

    v23 = [v52 secondaryText];
    v24 = [v23 length] == 0;
    v25 = [(WFParameterValuePickerTableViewCellContentView *)self subtitleLabel];
    [v25 setHidden:v24];

    v26 = [v52 image];
    v27 = [v26 untintedUIImage];
    v28 = [(WFParameterValuePickerTableViewCellContentView *)self iconImageView];
    [v28 setImage:v27];

    v29 = [v52 image];
    v30 = [v29 tintColor];
    v31 = [v30 platformColor];
    v32 = [(WFParameterValuePickerTableViewCellContentView *)self iconImageView];
    [v32 setTintColor:v31];

    [v52 cornerRadius];
    v34 = v33;
    v35 = [(WFParameterValuePickerTableViewCellContentView *)self iconImageView];
    [v35 _setContinuousCornerRadius:v34];

    v36 = [v52 image];
    v37 = v36 == 0;
    v38 = [(WFParameterValuePickerTableViewCellContentView *)self iconImageView];
    [v38 setHidden:v37];

    v39 = [v52 forceImageScaling];
    if (v39)
    {
      v40 = 0;
      v41 = 1;
    }

    else
    {
      v37 = [v52 image];
      v38 = [v37 platformImage];
      [v38 size];
      if (v42 <= 29.0)
      {
        v32 = [v52 image];
        v3 = [v32 platformImage];
        [v3 size];
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

    v44 = [(WFParameterValuePickerTableViewCellContentView *)self iconImageView];
    [v44 setContentMode:v41];

    if (v40)
    {
    }

    if ((v39 & 1) == 0)
    {
    }

    v45 = [v52 icon];
    v46 = [(WFParameterValuePickerTableViewCellContentView *)self iconView];
    [v46 setIcon:v45];

    v47 = [v52 image];
    if (v47)
    {
      v48 = 1;
    }

    else
    {
      v46 = [v52 icon];
      v48 = v46 == 0;
    }

    v49 = [(WFParameterValuePickerTableViewCellContentView *)self iconView];
    [v49 setHidden:v48];

    if (!v47)
    {
    }

    v50 = [v52 isContainedInState];
    v51 = [(WFParameterValuePickerTableViewCellContentView *)self selectedSwitch];
    [v51 setOn:v50];

    LODWORD(v50) = [v52 usesToggleForSelection];
    v7 = [(WFParameterValuePickerTableViewCellContentView *)self selectedSwitch];
    [v7 setHidden:v50 ^ 1];
    goto LABEL_26;
  }

LABEL_27:
}

- (WFParameterValuePickerTableViewCellContentView)initWithConfiguration:(id)a3
{
  v72[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    v14 = [v4 icon];
    v15 = [v13 initWithIcon:v14 size:{29.0, 29.0}];

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
    v68 = v4;
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
    v29 = [v4 usesInsetGroupedTableStyle];
    v30 = 12.0;
    if (v29)
    {
      v30 = 8.0;
    }

    [(UIStackView *)v6->_contentStackView setSpacing:v30];
    [(UIStackView *)v6->_contentStackView setDirectionalLayoutMargins:8.0, 0.0, 8.0, 0.0];
    v31 = [(WFParameterValuePickerTableViewCellContentView *)v6 contentStackView];
    [(WFParameterValuePickerTableViewCellContentView *)v6 addSubview:v31];

    if ([v4 usesInsetGroupedTableStyle])
    {
      v24 = -4.0;
    }

    v48 = MEMORY[0x277CCAAD0];
    v65 = [(WFParameterValuePickerTableViewCellContentView *)v6 contentStackView];
    v60 = [v65 leadingAnchor];
    v61 = [(WFParameterValuePickerTableViewCellContentView *)v6 layoutMarginsGuide];
    v59 = [v61 leadingAnchor];
    v58 = [v60 constraintEqualToAnchor:v59 constant:v24];
    v70[0] = v58;
    v57 = [(WFParameterValuePickerTableViewCellContentView *)v6 contentStackView];
    v55 = [v57 trailingAnchor];
    v56 = [(WFParameterValuePickerTableViewCellContentView *)v6 layoutMarginsGuide];
    v54 = [v56 trailingAnchor];
    v53 = [v55 constraintEqualToAnchor:v54];
    v70[1] = v53;
    v52 = [(WFParameterValuePickerTableViewCellContentView *)v6 contentStackView];
    v51 = [v52 topAnchor];
    v50 = [(WFParameterValuePickerTableViewCellContentView *)v6 topAnchor];
    v49 = [v51 constraintEqualToAnchor:v50];
    v70[2] = v49;
    v47 = [(WFParameterValuePickerTableViewCellContentView *)v6 contentStackView];
    v46 = [v47 bottomAnchor];
    v45 = [(WFParameterValuePickerTableViewCellContentView *)v6 bottomAnchor];
    v44 = [v46 constraintEqualToAnchor:v45];
    v70[3] = v44;
    v32 = [(WFParameterValuePickerTableViewCellContentView *)v6 heightAnchor];
    v33 = [v32 constraintGreaterThanOrEqualToConstant:44.0];
    v70[4] = v33;
    v34 = [(UIImageView *)v6->_iconImageView widthAnchor];
    v35 = [v34 constraintEqualToConstant:29.0];
    LODWORD(v36) = 1148026880;
    v37 = [v35 wf_withPriority:v36];
    v70[5] = v37;
    v38 = [(UIImageView *)v6->_iconImageView heightAnchor];
    v39 = [v38 constraintEqualToConstant:29.0];
    LODWORD(v40) = 1148026880;
    v41 = [v39 wf_withPriority:v40];
    v70[6] = v41;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:7];
    [v48 activateConstraints:v42];

    v4 = v68;
    [(WFParameterValuePickerTableViewCellContentView *)v6 applyConfiguration:v68];
  }

  return v6;
}

- (void)setConfiguration:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(WFParameterValuePickerTableViewCellContentView *)self applyConfiguration:v4];
    }
  }
}

@end