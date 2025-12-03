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
- (void)addDetailLinkButton:(id)button;
@end

@implementation RemoteUICustomTableViewCell

- (UILabel)customTextLabel
{
  [(RemoteUICustomTableViewCell *)self _initializeViews];
  _textLabelInternal = [(RemoteUICustomTableViewCell *)self _textLabelInternal];
  [_textLabelInternal setHidden:0];

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
  _detailTextLabelInternal = [(RemoteUICustomTableViewCell *)self _detailTextLabelInternal];
  [_detailTextLabelInternal setHidden:0];

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
  _valueLabelInternal = [(RemoteUICustomTableViewCell *)self _valueLabelInternal];
  [_valueLabelInternal setHidden:0];

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
  _editableTextFieldInternal = [(RemoteUICustomTableViewCell *)self _editableTextFieldInternal];
  [_editableTextFieldInternal setHidden:0];

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
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UIStackView *)self->_stackView setBackgroundColor:clearColor];

    v6 = objc_alloc_init(MEMORY[0x277D75A68]);
    verticalStackView = self->_verticalStackView;
    self->_verticalStackView = v6;

    [(UIStackView *)self->_verticalStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_verticalStackView setAlignment:3];
    [(UIStackView *)self->_verticalStackView setAxis:1];
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(UIStackView *)self->_verticalStackView setBackgroundColor:clearColor2];

    v9 = self->_verticalStackView;
    _textLabelInternal = [(RemoteUICustomTableViewCell *)self _textLabelInternal];
    [(UIStackView *)v9 addArrangedSubview:_textLabelInternal];

    v11 = self->_verticalStackView;
    _detailTextLabelInternal = [(RemoteUICustomTableViewCell *)self _detailTextLabelInternal];
    [(UIStackView *)v11 addArrangedSubview:_detailTextLabelInternal];

    v13 = self->_verticalStackView;
    _valueLabelInternal = [(RemoteUICustomTableViewCell *)self _valueLabelInternal];
    [(UIStackView *)v13 addArrangedSubview:_valueLabelInternal];

    v15 = self->_verticalStackView;
    _editableTextFieldInternal = [(RemoteUICustomTableViewCell *)self _editableTextFieldInternal];
    [(UIStackView *)v15 addArrangedSubview:_editableTextFieldInternal];

    v17 = self->_stackView;
    _imageViewInternal = [(RemoteUICustomTableViewCell *)self _imageViewInternal];
    [(UIStackView *)v17 addArrangedSubview:_imageViewInternal];

    v19 = self->_stackView;
    [(RemoteUICustomTableViewCell *)self _imageViewToTextMargin];
    v21 = v20;
    _imageViewInternal2 = [(RemoteUICustomTableViewCell *)self _imageViewInternal];
    [(UIStackView *)v19 setCustomSpacing:_imageViewInternal2 afterView:v21];

    [(UIStackView *)self->_stackView addArrangedSubview:self->_verticalStackView];
    _textLabelInternal2 = [(RemoteUICustomTableViewCell *)self _textLabelInternal];
    [_textLabelInternal2 setHidden:1];

    _detailTextLabelInternal2 = [(RemoteUICustomTableViewCell *)self _detailTextLabelInternal];
    [_detailTextLabelInternal2 setHidden:1];

    _valueLabelInternal2 = [(RemoteUICustomTableViewCell *)self _valueLabelInternal];
    [_valueLabelInternal2 setHidden:1];

    _editableTextFieldInternal2 = [(RemoteUICustomTableViewCell *)self _editableTextFieldInternal];
    [_editableTextFieldInternal2 setHidden:1];

    _imageViewInternal3 = [(RemoteUICustomTableViewCell *)self _imageViewInternal];
    [_imageViewInternal3 setHidden:1];

    contentView = [(RemoteUICustomTableViewCell *)self contentView];
    [contentView addSubview:self->_stackView];

    v72 = MEMORY[0x277CCAAD0];
    topAnchor = [(UIStackView *)self->_stackView topAnchor];
    contentView2 = [(RemoteUICustomTableViewCell *)self contentView];
    topAnchor2 = [contentView2 topAnchor];
    v95 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v99[0] = v95;
    leadingAnchor = [(UIStackView *)self->_stackView leadingAnchor];
    contentView3 = [(RemoteUICustomTableViewCell *)self contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v91 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v99[1] = v91;
    trailingAnchor = [(UIStackView *)self->_stackView trailingAnchor];
    contentView4 = [(RemoteUICustomTableViewCell *)self contentView];
    trailingAnchor2 = [contentView4 trailingAnchor];
    v87 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v99[2] = v87;
    bottomAnchor = [(UIStackView *)self->_stackView bottomAnchor];
    contentView5 = [(RemoteUICustomTableViewCell *)self contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v83 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v99[3] = v83;
    _imageViewInternal4 = [(RemoteUICustomTableViewCell *)self _imageViewInternal];
    centerYAnchor = [_imageViewInternal4 centerYAnchor];
    centerYAnchor2 = [(UIStackView *)self->_stackView centerYAnchor];
    v79 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v99[4] = v79;
    _imageViewInternal5 = [(RemoteUICustomTableViewCell *)self _imageViewInternal];
    widthAnchor = [_imageViewInternal5 widthAnchor];
    [(RemoteUICustomTableViewCell *)self _defaultImageViewMaxWidth];
    v76 = [widthAnchor constraintLessThanOrEqualToConstant:?];
    v99[5] = v76;
    _imageViewInternal6 = [(RemoteUICustomTableViewCell *)self _imageViewInternal];
    heightAnchor = [_imageViewInternal6 heightAnchor];
    v73 = [heightAnchor constraintLessThanOrEqualToConstant:25.0];
    v99[6] = v73;
    topAnchor3 = [(UIStackView *)self->_verticalStackView topAnchor];
    topAnchor4 = [(UIStackView *)self->_stackView topAnchor];
    v69 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v99[7] = v69;
    bottomAnchor3 = [(UIStackView *)self->_verticalStackView bottomAnchor];
    bottomAnchor4 = [(UIStackView *)self->_stackView bottomAnchor];
    v66 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v99[8] = v66;
    _textLabelInternal3 = [(RemoteUICustomTableViewCell *)self _textLabelInternal];
    leadingAnchor3 = [_textLabelInternal3 leadingAnchor];
    leadingAnchor4 = [(UIStackView *)self->_verticalStackView leadingAnchor];
    v62 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:9.0];
    v99[9] = v62;
    _textLabelInternal4 = [(RemoteUICustomTableViewCell *)self _textLabelInternal];
    trailingAnchor3 = [_textLabelInternal4 trailingAnchor];
    trailingAnchor4 = [(UIStackView *)self->_verticalStackView trailingAnchor];
    v58 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:0.0];
    v99[10] = v58;
    _detailTextLabelInternal3 = [(RemoteUICustomTableViewCell *)self _detailTextLabelInternal];
    leadingAnchor5 = [_detailTextLabelInternal3 leadingAnchor];
    leadingAnchor6 = [(UIStackView *)self->_verticalStackView leadingAnchor];
    v54 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:9.0];
    v99[11] = v54;
    _detailTextLabelInternal4 = [(RemoteUICustomTableViewCell *)self _detailTextLabelInternal];
    trailingAnchor5 = [_detailTextLabelInternal4 trailingAnchor];
    trailingAnchor6 = [(UIStackView *)self->_verticalStackView trailingAnchor];
    v50 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:0.0];
    v99[12] = v50;
    _valueLabelInternal3 = [(RemoteUICustomTableViewCell *)self _valueLabelInternal];
    leadingAnchor7 = [_valueLabelInternal3 leadingAnchor];
    leadingAnchor8 = [(UIStackView *)self->_verticalStackView leadingAnchor];
    v46 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:9.0];
    v99[13] = v46;
    _valueLabelInternal4 = [(RemoteUICustomTableViewCell *)self _valueLabelInternal];
    trailingAnchor7 = [_valueLabelInternal4 trailingAnchor];
    trailingAnchor8 = [(UIStackView *)self->_verticalStackView trailingAnchor];
    v42 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:0.0];
    v99[14] = v42;
    _editableTextFieldInternal3 = [(RemoteUICustomTableViewCell *)self _editableTextFieldInternal];
    leadingAnchor9 = [_editableTextFieldInternal3 leadingAnchor];
    leadingAnchor10 = [(UIStackView *)self->_verticalStackView leadingAnchor];
    v32 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
    v99[15] = v32;
    _editableTextFieldInternal4 = [(RemoteUICustomTableViewCell *)self _editableTextFieldInternal];
    trailingAnchor9 = [_editableTextFieldInternal4 trailingAnchor];
    trailingAnchor10 = [(UIStackView *)self->_verticalStackView trailingAnchor];
    v36 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
    v99[16] = v36;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v99 count:17];
    [v72 activateConstraints:v37];

    _imageViewInternal7 = [(RemoteUICustomTableViewCell *)self _imageViewInternal];
    LODWORD(v39) = 1148846080;
    [_imageViewInternal7 setContentCompressionResistancePriority:0 forAxis:v39];

    _imageViewInternal8 = [(RemoteUICustomTableViewCell *)self _imageViewInternal];
    LODWORD(v41) = 1148846080;
    [_imageViewInternal8 setContentCompressionResistancePriority:1 forAxis:v41];
  }
}

- (void)addDetailLinkButton:(id)button
{
  verticalStackView = self->_verticalStackView;
  buttonCopy = button;
  [(UIStackView *)verticalStackView addArrangedSubview:buttonCopy];
  widthAnchor = [buttonCopy widthAnchor];

  widthAnchor2 = [(UIStackView *)self->_verticalStackView widthAnchor];
  v7 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v7 setActive:1];
}

@end