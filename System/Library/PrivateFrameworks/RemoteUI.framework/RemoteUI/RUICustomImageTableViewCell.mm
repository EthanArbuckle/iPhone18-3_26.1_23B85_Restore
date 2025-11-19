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
  v3 = [(RUICustomImageTableViewCell *)self _customImageViewInternal];
  [v3 setHidden:0];

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
  v3 = [(RUICustomImageTableViewCell *)self _customTextLabelInternal];
  [v3 setHidden:0];

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
    v5 = [MEMORY[0x277D75348] clearColor];
    [(UIStackView *)self->_stackView setBackgroundColor:v5];

    [(UIStackView *)self->_stackView setDistribution:2];
    v6 = self->_stackView;
    v7 = [(RUICustomImageTableViewCell *)self _customImageViewInternal];
    [(UIStackView *)v6 addArrangedSubview:v7];

    v8 = self->_stackView;
    v9 = [(RUICustomImageTableViewCell *)self _customTextLabelInternal];
    [(UIStackView *)v8 addArrangedSubview:v9];

    v10 = [(RUICustomImageTableViewCell *)self _customImageViewInternal];
    [v10 setHidden:1];

    v11 = [(RUICustomImageTableViewCell *)self _customTextLabelInternal];
    [v11 setHidden:1];

    v12 = [(RUICustomImageTableViewCell *)self contentView];
    [v12 addSubview:self->_stackView];

    v38 = MEMORY[0x277CCAAD0];
    v49 = [(UIStackView *)self->_stackView topAnchor];
    v50 = [(RUICustomImageTableViewCell *)self contentView];
    v48 = [v50 topAnchor];
    v47 = [v49 constraintEqualToAnchor:v48];
    v51[0] = v47;
    v45 = [(UIStackView *)self->_stackView leadingAnchor];
    v46 = [(RUICustomImageTableViewCell *)self contentView];
    v44 = [v46 leadingAnchor];
    v43 = [v45 constraintEqualToAnchor:v44];
    v51[1] = v43;
    v41 = [(UIStackView *)self->_stackView trailingAnchor];
    v42 = [(RUICustomImageTableViewCell *)self contentView];
    v40 = [v42 trailingAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v51[2] = v39;
    v36 = [(UIStackView *)self->_stackView bottomAnchor];
    v37 = [(RUICustomImageTableViewCell *)self contentView];
    v35 = [v37 bottomAnchor];
    v34 = [v36 constraintEqualToAnchor:v35];
    v51[3] = v34;
    v33 = [(RUICustomImageTableViewCell *)self _customImageViewInternal];
    v32 = [v33 leadingAnchor];
    v31 = [(UIStackView *)self->_stackView leadingAnchor];
    v30 = [v32 constraintEqualToAnchor:v31 constant:20.0];
    v51[4] = v30;
    v29 = [(RUICustomImageTableViewCell *)self _customImageViewInternal];
    v28 = [v29 trailingAnchor];
    v27 = [(UIStackView *)self->_stackView leadingAnchor];
    v26 = [v28 constraintEqualToAnchor:v27 constant:38.0];
    v51[5] = v26;
    v25 = [(RUICustomImageTableViewCell *)self _customTextLabelInternal];
    v13 = [v25 leadingAnchor];
    v14 = [(UIStackView *)self->_stackView leadingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:48.0];
    v51[6] = v15;
    v16 = [(RUICustomImageTableViewCell *)self _customTextLabelInternal];
    v17 = [v16 trailingAnchor];
    v18 = [(UIStackView *)self->_stackView trailingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18 constant:16.0];
    v51[7] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:8];
    [v38 activateConstraints:v20];

    v21 = self->_stackView;
    v22 = [(RUICustomImageTableViewCell *)self _customTextLabelInternal];
    [(UIStackView *)v21 setCustomSpacing:v22 afterView:16.0];

    v23 = [(RUICustomImageTableViewCell *)self _customTextLabelInternal];
    LODWORD(v24) = 1148846080;
    [v23 setContentHuggingPriority:0 forAxis:v24];
  }
}

@end