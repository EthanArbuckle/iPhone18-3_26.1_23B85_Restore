@interface RemoteUICustomTableViewCell
- (UIImageView)customImageView;
- (UILabel)customDetailTextLabel;
- (UILabel)customTextLabel;
- (UILabel)customValueLabel;
- (UITextField)customEditableTextField;
- (id)_detailTextLabelInternal;
- (id)_editableTextFieldInternal;
- (id)_imageViewInternal;
- (id)_textLabelInternal;
- (id)_valueLabelInternal;
- (void)_initializeViews;
- (void)addDetailLinkButton:(id)a3;
@end

@implementation RemoteUICustomTableViewCell

- (UILabel)customTextLabel
{
  [(RemoteUICustomTableViewCell *)self _initializeViews];
  v3 = [(RemoteUICustomTableViewCell *)self _textLabelInternal];
  [v3 setHidden:0];

  return [(RemoteUICustomTableViewCell *)self _textLabelInternal];
}

- (id)_textLabelInternal
{
  customTextLabelInternal = self->_customTextLabelInternal;
  if (!customTextLabelInternal)
  {
    v4 = objc_opt_new();
    v5 = self->_customTextLabelInternal;
    self->_customTextLabelInternal = v4;

    v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)self->_customValueLabelInternal setFont:v6];

    [(UILabel *)self->_customTextLabelInternal setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_customTextLabelInternal setNumberOfLines:0];
    customTextLabelInternal = self->_customTextLabelInternal;
  }

  return customTextLabelInternal;
}

- (UILabel)customDetailTextLabel
{
  [(RemoteUICustomTableViewCell *)self _initializeViews];
  v3 = [(RemoteUICustomTableViewCell *)self _detailTextLabelInternal];
  [v3 setHidden:0];

  return [(RemoteUICustomTableViewCell *)self _detailTextLabelInternal];
}

- (id)_detailTextLabelInternal
{
  customDetailTextLabelInternal = self->_customDetailTextLabelInternal;
  if (!customDetailTextLabelInternal)
  {
    v4 = objc_opt_new();
    v5 = self->_customDetailTextLabelInternal;
    self->_customDetailTextLabelInternal = v4;

    v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76978]];
    [(UILabel *)self->_customDetailTextLabelInternal setFont:v6];

    [(UILabel *)self->_customDetailTextLabelInternal setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_customDetailTextLabelInternal setNumberOfLines:0];
    customDetailTextLabelInternal = self->_customDetailTextLabelInternal;
  }

  return customDetailTextLabelInternal;
}

- (UILabel)customValueLabel
{
  [(RemoteUICustomTableViewCell *)self _initializeViews];
  v3 = [(RemoteUICustomTableViewCell *)self _valueLabelInternal];
  [v3 setHidden:0];

  return [(RemoteUICustomTableViewCell *)self _valueLabelInternal];
}

- (id)_valueLabelInternal
{
  customValueLabelInternal = self->_customValueLabelInternal;
  if (!customValueLabelInternal)
  {
    v4 = objc_opt_new();
    v5 = self->_customValueLabelInternal;
    self->_customValueLabelInternal = v4;

    v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76978]];
    [(UILabel *)self->_customValueLabelInternal setFont:v6];

    [(UILabel *)self->_customValueLabelInternal setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_customValueLabelInternal setNumberOfLines:0];
    customValueLabelInternal = self->_customValueLabelInternal;
  }

  return customValueLabelInternal;
}

- (UITextField)customEditableTextField
{
  [(RemoteUICustomTableViewCell *)self _initializeViews];
  v3 = [(RemoteUICustomTableViewCell *)self _editableTextFieldInternal];
  [v3 setHidden:0];

  return [(RemoteUICustomTableViewCell *)self _editableTextFieldInternal];
}

- (id)_editableTextFieldInternal
{
  customEditableTextFieldInternal = self->_customEditableTextFieldInternal;
  if (!customEditableTextFieldInternal)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75BB8]);
    v5 = self->_customEditableTextFieldInternal;
    self->_customEditableTextFieldInternal = v4;

    [(UITextField *)self->_customEditableTextFieldInternal setTranslatesAutoresizingMaskIntoConstraints:0];
    customEditableTextFieldInternal = self->_customEditableTextFieldInternal;
  }

  return customEditableTextFieldInternal;
}

- (UIImageView)customImageView
{
  [(RemoteUICustomTableViewCell *)self _initializeViews];

  return [(RemoteUICustomTableViewCell *)self _imageViewInternal];
}

- (id)_imageViewInternal
{
  customImageViewInternal = self->_customImageViewInternal;
  if (!customImageViewInternal)
  {
    v4 = objc_opt_new();
    v5 = self->_customImageViewInternal;
    self->_customImageViewInternal = v4;

    [(RUIImageView *)self->_customImageViewInternal setTranslatesAutoresizingMaskIntoConstraints:0];
    [(RUIImageView *)self->_customImageViewInternal setContentMode:1];
    customImageViewInternal = self->_customImageViewInternal;
  }

  return customImageViewInternal;
}

- (void)_initializeViews
{
  v99[17] = *MEMORY[0x277D85DE8];
  if (!self->_stackView)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75A68]);
    stackView = self->_stackView;
    self->_stackView = v3;

    [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_stackView setAlignment:3];
    [(UIStackView *)self->_stackView setAxis:0];
    v5 = [MEMORY[0x277D75348] clearColor];
    [(UIStackView *)self->_stackView setBackgroundColor:v5];

    v6 = objc_alloc_init(MEMORY[0x277D75A68]);
    verticalStackView = self->_verticalStackView;
    self->_verticalStackView = v6;

    [(UIStackView *)self->_verticalStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_verticalStackView setAlignment:3];
    [(UIStackView *)self->_verticalStackView setAxis:1];
    v8 = [MEMORY[0x277D75348] clearColor];
    [(UIStackView *)self->_verticalStackView setBackgroundColor:v8];

    v9 = self->_verticalStackView;
    v10 = [(RemoteUICustomTableViewCell *)self _textLabelInternal];
    [(UIStackView *)v9 addArrangedSubview:v10];

    v11 = self->_verticalStackView;
    v12 = [(RemoteUICustomTableViewCell *)self _detailTextLabelInternal];
    [(UIStackView *)v11 addArrangedSubview:v12];

    v13 = self->_verticalStackView;
    v14 = [(RemoteUICustomTableViewCell *)self _valueLabelInternal];
    [(UIStackView *)v13 addArrangedSubview:v14];

    v15 = self->_verticalStackView;
    v16 = [(RemoteUICustomTableViewCell *)self _editableTextFieldInternal];
    [(UIStackView *)v15 addArrangedSubview:v16];

    v17 = self->_stackView;
    v18 = [(RemoteUICustomTableViewCell *)self _imageViewInternal];
    [(UIStackView *)v17 addArrangedSubview:v18];

    v19 = self->_stackView;
    [(RemoteUICustomTableViewCell *)self _imageViewToTextMargin];
    v21 = v20;
    v22 = [(RemoteUICustomTableViewCell *)self _imageViewInternal];
    [(UIStackView *)v19 setCustomSpacing:v22 afterView:v21];

    [(UIStackView *)self->_stackView addArrangedSubview:self->_verticalStackView];
    v23 = [(RemoteUICustomTableViewCell *)self _textLabelInternal];
    [v23 setHidden:1];

    v24 = [(RemoteUICustomTableViewCell *)self _detailTextLabelInternal];
    [v24 setHidden:1];

    v25 = [(RemoteUICustomTableViewCell *)self _valueLabelInternal];
    [v25 setHidden:1];

    v26 = [(RemoteUICustomTableViewCell *)self _editableTextFieldInternal];
    [v26 setHidden:1];

    v27 = [(RemoteUICustomTableViewCell *)self _imageViewInternal];
    [v27 setHidden:1];

    v28 = [(RemoteUICustomTableViewCell *)self contentView];
    [v28 addSubview:self->_stackView];

    v72 = MEMORY[0x277CCAAD0];
    v97 = [(UIStackView *)self->_stackView topAnchor];
    v98 = [(RemoteUICustomTableViewCell *)self contentView];
    v96 = [v98 topAnchor];
    v95 = [v97 constraintEqualToAnchor:v96];
    v99[0] = v95;
    v93 = [(UIStackView *)self->_stackView leadingAnchor];
    v94 = [(RemoteUICustomTableViewCell *)self contentView];
    v92 = [v94 leadingAnchor];
    v91 = [v93 constraintEqualToAnchor:v92];
    v99[1] = v91;
    v89 = [(UIStackView *)self->_stackView trailingAnchor];
    v90 = [(RemoteUICustomTableViewCell *)self contentView];
    v88 = [v90 trailingAnchor];
    v87 = [v89 constraintEqualToAnchor:v88];
    v99[2] = v87;
    v85 = [(UIStackView *)self->_stackView bottomAnchor];
    v86 = [(RemoteUICustomTableViewCell *)self contentView];
    v84 = [v86 bottomAnchor];
    v83 = [v85 constraintEqualToAnchor:v84];
    v99[3] = v83;
    v82 = [(RemoteUICustomTableViewCell *)self _imageViewInternal];
    v81 = [v82 centerYAnchor];
    v80 = [(UIStackView *)self->_stackView centerYAnchor];
    v79 = [v81 constraintEqualToAnchor:v80];
    v99[4] = v79;
    v78 = [(RemoteUICustomTableViewCell *)self _imageViewInternal];
    v77 = [v78 widthAnchor];
    [(RemoteUICustomTableViewCell *)self _defaultImageViewMaxWidth];
    v76 = [v77 constraintLessThanOrEqualToConstant:?];
    v99[5] = v76;
    v75 = [(RemoteUICustomTableViewCell *)self _imageViewInternal];
    v74 = [v75 heightAnchor];
    v73 = [v74 constraintLessThanOrEqualToConstant:25.0];
    v99[6] = v73;
    v71 = [(UIStackView *)self->_verticalStackView topAnchor];
    v70 = [(UIStackView *)self->_stackView topAnchor];
    v69 = [v71 constraintEqualToAnchor:v70];
    v99[7] = v69;
    v68 = [(UIStackView *)self->_verticalStackView bottomAnchor];
    v67 = [(UIStackView *)self->_stackView bottomAnchor];
    v66 = [v68 constraintEqualToAnchor:v67];
    v99[8] = v66;
    v65 = [(RemoteUICustomTableViewCell *)self _textLabelInternal];
    v64 = [v65 leadingAnchor];
    v63 = [(UIStackView *)self->_verticalStackView leadingAnchor];
    v62 = [v64 constraintEqualToAnchor:v63 constant:9.0];
    v99[9] = v62;
    v61 = [(RemoteUICustomTableViewCell *)self _textLabelInternal];
    v60 = [v61 trailingAnchor];
    v59 = [(UIStackView *)self->_verticalStackView trailingAnchor];
    v58 = [v60 constraintEqualToAnchor:v59 constant:0.0];
    v99[10] = v58;
    v57 = [(RemoteUICustomTableViewCell *)self _detailTextLabelInternal];
    v56 = [v57 leadingAnchor];
    v55 = [(UIStackView *)self->_verticalStackView leadingAnchor];
    v54 = [v56 constraintEqualToAnchor:v55 constant:9.0];
    v99[11] = v54;
    v53 = [(RemoteUICustomTableViewCell *)self _detailTextLabelInternal];
    v52 = [v53 trailingAnchor];
    v51 = [(UIStackView *)self->_verticalStackView trailingAnchor];
    v50 = [v52 constraintEqualToAnchor:v51 constant:0.0];
    v99[12] = v50;
    v49 = [(RemoteUICustomTableViewCell *)self _valueLabelInternal];
    v48 = [v49 leadingAnchor];
    v47 = [(UIStackView *)self->_verticalStackView leadingAnchor];
    v46 = [v48 constraintEqualToAnchor:v47 constant:9.0];
    v99[13] = v46;
    v45 = [(RemoteUICustomTableViewCell *)self _valueLabelInternal];
    v44 = [v45 trailingAnchor];
    v43 = [(UIStackView *)self->_verticalStackView trailingAnchor];
    v42 = [v44 constraintEqualToAnchor:v43 constant:0.0];
    v99[14] = v42;
    v29 = [(RemoteUICustomTableViewCell *)self _editableTextFieldInternal];
    v30 = [v29 leadingAnchor];
    v31 = [(UIStackView *)self->_verticalStackView leadingAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];
    v99[15] = v32;
    v33 = [(RemoteUICustomTableViewCell *)self _editableTextFieldInternal];
    v34 = [v33 trailingAnchor];
    v35 = [(UIStackView *)self->_verticalStackView trailingAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];
    v99[16] = v36;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v99 count:17];
    [v72 activateConstraints:v37];

    v38 = [(RemoteUICustomTableViewCell *)self _imageViewInternal];
    LODWORD(v39) = 1148846080;
    [v38 setContentCompressionResistancePriority:0 forAxis:v39];

    v40 = [(RemoteUICustomTableViewCell *)self _imageViewInternal];
    LODWORD(v41) = 1148846080;
    [v40 setContentCompressionResistancePriority:1 forAxis:v41];
  }
}

- (void)addDetailLinkButton:(id)a3
{
  verticalStackView = self->_verticalStackView;
  v5 = a3;
  [(UIStackView *)verticalStackView addArrangedSubview:v5];
  v8 = [v5 widthAnchor];

  v6 = [(UIStackView *)self->_verticalStackView widthAnchor];
  v7 = [v8 constraintEqualToAnchor:v6];
  [v7 setActive:1];
}

@end