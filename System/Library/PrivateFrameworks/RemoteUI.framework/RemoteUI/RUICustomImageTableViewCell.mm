@interface RUICustomImageTableViewCell
- (UIImageView)customImageView;
- (UILabel)customTextLabel;
- (id)_customImageViewInternal;
- (id)_customTextLabelInternal;
- (void)_initializeViews;
@end

@implementation RUICustomImageTableViewCell

- (UIImageView)customImageView
{
  [(RUICustomImageTableViewCell *)self _initializeViews];
  _customImageViewInternal = [(RUICustomImageTableViewCell *)self _customImageViewInternal];
  [_customImageViewInternal setHidden:0];

  return [(RUICustomImageTableViewCell *)self _customImageViewInternal];
}

- (id)_customImageViewInternal
{
  customImageViewInternal = self->_customImageViewInternal;
  if (!customImageViewInternal)
  {
    v4 = objc_opt_new();
    v5 = self->_customImageViewInternal;
    self->_customImageViewInternal = v4;

    [(UIImageView *)self->_customImageViewInternal setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)self->_customImageViewInternal setContentMode:1];
    customImageViewInternal = self->_customImageViewInternal;
  }

  return customImageViewInternal;
}

- (UILabel)customTextLabel
{
  [(RUICustomImageTableViewCell *)self _initializeViews];
  _customTextLabelInternal = [(RUICustomImageTableViewCell *)self _customTextLabelInternal];
  [_customTextLabelInternal setHidden:0];

  return [(RUICustomImageTableViewCell *)self _customTextLabelInternal];
}

- (id)_customTextLabelInternal
{
  customTextLabelInternal = self->_customTextLabelInternal;
  if (!customTextLabelInternal)
  {
    v4 = objc_opt_new();
    v5 = self->_customTextLabelInternal;
    self->_customTextLabelInternal = v4;

    v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)self->_customTextLabelInternal setFont:v6];

    [(UILabel *)self->_customTextLabelInternal setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_customTextLabelInternal setNumberOfLines:0];
    customTextLabelInternal = self->_customTextLabelInternal;
  }

  return customTextLabelInternal;
}

- (void)_initializeViews
{
  v51[8] = *MEMORY[0x277D85DE8];
  if (!self->_stackView)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75A68]);
    stackView = self->_stackView;
    self->_stackView = v3;

    [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_stackView setAxis:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UIStackView *)self->_stackView setBackgroundColor:clearColor];

    [(UIStackView *)self->_stackView setDistribution:2];
    v6 = self->_stackView;
    _customImageViewInternal = [(RUICustomImageTableViewCell *)self _customImageViewInternal];
    [(UIStackView *)v6 addArrangedSubview:_customImageViewInternal];

    v8 = self->_stackView;
    _customTextLabelInternal = [(RUICustomImageTableViewCell *)self _customTextLabelInternal];
    [(UIStackView *)v8 addArrangedSubview:_customTextLabelInternal];

    _customImageViewInternal2 = [(RUICustomImageTableViewCell *)self _customImageViewInternal];
    [_customImageViewInternal2 setHidden:1];

    _customTextLabelInternal2 = [(RUICustomImageTableViewCell *)self _customTextLabelInternal];
    [_customTextLabelInternal2 setHidden:1];

    contentView = [(RUICustomImageTableViewCell *)self contentView];
    [contentView addSubview:self->_stackView];

    v38 = MEMORY[0x277CCAAD0];
    topAnchor = [(UIStackView *)self->_stackView topAnchor];
    contentView2 = [(RUICustomImageTableViewCell *)self contentView];
    topAnchor2 = [contentView2 topAnchor];
    v47 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v51[0] = v47;
    leadingAnchor = [(UIStackView *)self->_stackView leadingAnchor];
    contentView3 = [(RUICustomImageTableViewCell *)self contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v43 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v51[1] = v43;
    trailingAnchor = [(UIStackView *)self->_stackView trailingAnchor];
    contentView4 = [(RUICustomImageTableViewCell *)self contentView];
    trailingAnchor2 = [contentView4 trailingAnchor];
    v39 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v51[2] = v39;
    bottomAnchor = [(UIStackView *)self->_stackView bottomAnchor];
    contentView5 = [(RUICustomImageTableViewCell *)self contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v34 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v51[3] = v34;
    _customImageViewInternal3 = [(RUICustomImageTableViewCell *)self _customImageViewInternal];
    leadingAnchor3 = [_customImageViewInternal3 leadingAnchor];
    leadingAnchor4 = [(UIStackView *)self->_stackView leadingAnchor];
    v30 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:20.0];
    v51[4] = v30;
    _customImageViewInternal4 = [(RUICustomImageTableViewCell *)self _customImageViewInternal];
    trailingAnchor3 = [_customImageViewInternal4 trailingAnchor];
    leadingAnchor5 = [(UIStackView *)self->_stackView leadingAnchor];
    v26 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor5 constant:38.0];
    v51[5] = v26;
    _customTextLabelInternal3 = [(RUICustomImageTableViewCell *)self _customTextLabelInternal];
    leadingAnchor6 = [_customTextLabelInternal3 leadingAnchor];
    leadingAnchor7 = [(UIStackView *)self->_stackView leadingAnchor];
    v15 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7 constant:48.0];
    v51[6] = v15;
    _customTextLabelInternal4 = [(RUICustomImageTableViewCell *)self _customTextLabelInternal];
    trailingAnchor4 = [_customTextLabelInternal4 trailingAnchor];
    trailingAnchor5 = [(UIStackView *)self->_stackView trailingAnchor];
    v19 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:16.0];
    v51[7] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:8];
    [v38 activateConstraints:v20];

    v21 = self->_stackView;
    _customTextLabelInternal5 = [(RUICustomImageTableViewCell *)self _customTextLabelInternal];
    [(UIStackView *)v21 setCustomSpacing:_customTextLabelInternal5 afterView:16.0];

    _customTextLabelInternal6 = [(RUICustomImageTableViewCell *)self _customTextLabelInternal];
    LODWORD(v24) = 1148846080;
    [_customTextLabelInternal6 setContentHuggingPriority:0 forAxis:v24];
  }
}

@end