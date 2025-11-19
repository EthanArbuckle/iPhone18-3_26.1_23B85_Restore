@interface RUICustomLinkTableViewCell
- (UIImageView)customLinkImageView;
- (UILabel)customLinkDetailTextLabel;
- (UILabel)customLinkSubLabel;
- (UILabel)customLinkTextLabel;
- (id)_detailTextLabelInternal;
- (id)_imageViewInternal;
- (id)_subLabelInternal;
- (id)_textLabelInternal;
- (void)_detailLinkPressed;
- (void)_initializeViews;
- (void)layoutSubviews;
- (void)setDetailLinkText:(id)a3 handler:(id)a4;
@end

@implementation RUICustomLinkTableViewCell

- (UILabel)customLinkTextLabel
{
  [(RUICustomLinkTableViewCell *)self _initializeViews];
  v3 = [(RUICustomLinkTableViewCell *)self _textLabelInternal];
  [v3 setHidden:0];

  return [(RUICustomLinkTableViewCell *)self _textLabelInternal];
}

- (UILabel)customLinkDetailTextLabel
{
  [(RUICustomLinkTableViewCell *)self _initializeViews];
  v3 = [(RUICustomLinkTableViewCell *)self _detailTextLabelInternal];
  [v3 setHidden:0];

  return [(RUICustomLinkTableViewCell *)self _detailTextLabelInternal];
}

- (UILabel)customLinkSubLabel
{
  [(RUICustomLinkTableViewCell *)self _initializeViews];
  v3 = [(RUICustomLinkTableViewCell *)self _subLabelInternal];
  [v3 setHidden:0];

  return [(RUICustomLinkTableViewCell *)self _subLabelInternal];
}

- (UIImageView)customLinkImageView
{
  detailLinkButton = self->_detailLinkButton;
  if (detailLinkButton)
  {
    v4 = [(RUICustomLinkTableViewCell *)self _imageViewInternal];
    v5 = [v4 image];
    [(UIButton *)detailLinkButton setImage:v5 forState:0];

    v6 = [(UIButton *)self->_detailLinkButton imageView];
    LODWORD(v7) = 1132068864;
    [v6 setContentCompressionResistancePriority:1 forAxis:v7];

    v8 = [(UIButton *)self->_detailLinkButton imageView];
    LODWORD(v9) = 1132068864;
    [v8 setContentCompressionResistancePriority:0 forAxis:v9];

    [(RUICustomLinkTableViewCell *)self setNeedsLayout];
  }

  else
  {
    [(RUICustomLinkTableViewCell *)self _initializeViews];
    v10 = [(RUICustomLinkTableViewCell *)self _imageViewInternal];
    [v10 setHidden:0];
  }

  v11 = [(RUICustomLinkTableViewCell *)self _imageViewInternal];

  return v11;
}

- (id)_textLabelInternal
{
  customLinkTextLabelInternal = self->_customLinkTextLabelInternal;
  if (!customLinkTextLabelInternal)
  {
    v4 = objc_opt_new();
    v5 = self->_customLinkTextLabelInternal;
    self->_customLinkTextLabelInternal = v4;

    v6 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
    [(UILabel *)self->_customLinkTextLabelInternal setFont:v6];

    [(UILabel *)self->_customLinkTextLabelInternal setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_customLinkTextLabelInternal setNumberOfLines:0];
    customLinkTextLabelInternal = self->_customLinkTextLabelInternal;
  }

  return customLinkTextLabelInternal;
}

- (id)_detailTextLabelInternal
{
  customLinkDetailTextLabelInternal = self->_customLinkDetailTextLabelInternal;
  if (!customLinkDetailTextLabelInternal)
  {
    v4 = objc_opt_new();
    v5 = self->_customLinkDetailTextLabelInternal;
    self->_customLinkDetailTextLabelInternal = v4;

    v6 = [MEMORY[0x277D74300] systemFontOfSize:15.0 weight:*MEMORY[0x277D74420]];
    [(UILabel *)self->_customLinkDetailTextLabelInternal setFont:v6];

    [(UILabel *)self->_customLinkDetailTextLabelInternal setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_customLinkDetailTextLabelInternal setNumberOfLines:0];
    customLinkDetailTextLabelInternal = self->_customLinkDetailTextLabelInternal;
  }

  return customLinkDetailTextLabelInternal;
}

- (id)_subLabelInternal
{
  customLinkSubLabelInternal = self->_customLinkSubLabelInternal;
  if (!customLinkSubLabelInternal)
  {
    v4 = objc_opt_new();
    v5 = self->_customLinkSubLabelInternal;
    self->_customLinkSubLabelInternal = v4;

    v6 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
    [(UILabel *)self->_customLinkSubLabelInternal setFont:v6];

    [(UILabel *)self->_customLinkSubLabelInternal setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_customLinkSubLabelInternal setNumberOfLines:0];
    customLinkSubLabelInternal = self->_customLinkSubLabelInternal;
  }

  return customLinkSubLabelInternal;
}

- (id)_imageViewInternal
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

- (void)_initializeViews
{
  v56[8] = *MEMORY[0x277D85DE8];
  if (!self->_stackView)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75A68]);
    stackView = self->_stackView;
    self->_stackView = v3;

    [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_stackView setAxis:0];
    v5 = [MEMORY[0x277D75348] clearColor];
    [(UIStackView *)self->_stackView setBackgroundColor:v5];

    [(UIStackView *)self->_stackView setDistribution:0];
    v6 = objc_alloc_init(MEMORY[0x277D75A68]);
    innerStackView = self->_innerStackView;
    self->_innerStackView = v6;

    [(UIStackView *)self->_innerStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_innerStackView setAxis:1];
    v8 = [MEMORY[0x277D75348] clearColor];
    [(UIStackView *)self->_innerStackView setBackgroundColor:v8];

    [(UIStackView *)self->_innerStackView setDistribution:2];
    v9 = self->_innerStackView;
    v10 = [(RUICustomLinkTableViewCell *)self _detailTextLabelInternal];
    [(UIStackView *)v9 addArrangedSubview:v10];

    v11 = self->_innerStackView;
    v12 = [(RUICustomLinkTableViewCell *)self _subLabelInternal];
    [(UIStackView *)v11 addArrangedSubview:v12];

    v13 = self->_stackView;
    v14 = [(RUICustomLinkTableViewCell *)self _textLabelInternal];
    [(UIStackView *)v13 addArrangedSubview:v14];

    [(UIStackView *)self->_stackView addArrangedSubview:self->_innerStackView];
    v15 = [(RUICustomLinkTableViewCell *)self _textLabelInternal];
    [v15 setHidden:1];

    v16 = [(RUICustomLinkTableViewCell *)self _detailTextLabelInternal];
    [v16 setHidden:1];

    v17 = [(RUICustomLinkTableViewCell *)self _subLabelInternal];
    [v17 setHidden:1];

    v18 = [(RUICustomLinkTableViewCell *)self _imageViewInternal];
    [v18 setHidden:1];

    v19 = [(RUICustomLinkTableViewCell *)self contentView];
    [v19 addSubview:self->_stackView];

    v43 = MEMORY[0x277CCAAD0];
    v54 = [(UIStackView *)self->_stackView topAnchor];
    v55 = [(RUICustomLinkTableViewCell *)self contentView];
    v53 = [v55 topAnchor];
    v52 = [v54 constraintEqualToAnchor:v53];
    v56[0] = v52;
    v50 = [(UIStackView *)self->_stackView leadingAnchor];
    v51 = [(RUICustomLinkTableViewCell *)self contentView];
    v49 = [v51 leadingAnchor];
    v48 = [v50 constraintEqualToAnchor:v49];
    v56[1] = v48;
    v46 = [(UIStackView *)self->_stackView trailingAnchor];
    v47 = [(RUICustomLinkTableViewCell *)self contentView];
    v45 = [v47 trailingAnchor];
    v44 = [v46 constraintEqualToAnchor:v45];
    v56[2] = v44;
    v41 = [(UIStackView *)self->_stackView bottomAnchor];
    v42 = [(RUICustomLinkTableViewCell *)self contentView];
    v40 = [v42 bottomAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v56[3] = v39;
    v38 = [(UIStackView *)self->_innerStackView topAnchor];
    v37 = [(UIStackView *)self->_stackView topAnchor];
    v36 = [v38 constraintEqualToAnchor:v37];
    v56[4] = v36;
    v35 = [(UIStackView *)self->_innerStackView bottomAnchor];
    v34 = [(UIStackView *)self->_stackView bottomAnchor];
    v33 = [v35 constraintEqualToAnchor:v34];
    v56[5] = v33;
    v32 = [(RUICustomLinkTableViewCell *)self _textLabelInternal];
    v20 = [v32 leadingAnchor];
    v21 = [(UIStackView *)self->_stackView leadingAnchor];
    v22 = [v20 constraintEqualToAnchor:v21 constant:16.0];
    v56[6] = v22;
    v23 = [(RUICustomLinkTableViewCell *)self _textLabelInternal];
    v24 = [v23 trailingAnchor];
    v25 = [(UIStackView *)self->_stackView leadingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:66.0];
    v56[7] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:8];
    [v43 activateConstraints:v27];

    v28 = self->_stackView;
    v29 = [(RUICustomLinkTableViewCell *)self _textLabelInternal];
    [(UIStackView *)v28 setCustomSpacing:v29 afterView:16.0];

    v30 = [(RUICustomLinkTableViewCell *)self _textLabelInternal];
    LODWORD(v31) = 1148846080;
    [v30 setContentHuggingPriority:0 forAxis:v31];
  }
}

- (void)setDetailLinkText:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(RUICustomLinkTableViewCell *)self _initializeViews];
  v8 = [(RUICustomLinkTableViewCell *)self _detailTextLabelInternal];
  [v8 removeFromSuperview];

  v9 = [(RUICustomLinkTableViewCell *)self _subLabelInternal];
  [v9 removeFromSuperview];

  v10 = _Block_copy(v7);
  detailLinkHandler = self->_detailLinkHandler;
  self->_detailLinkHandler = v10;

  v12 = [MEMORY[0x277D75220] buttonWithType:1];
  detailLinkButton = self->_detailLinkButton;
  self->_detailLinkButton = v12;

  [(UIButton *)self->_detailLinkButton setExclusiveTouch:1];
  [(UIButton *)self->_detailLinkButton addTarget:self action:sel__detailLinkPressed forControlEvents:64];
  v14 = [(UIButton *)self->_detailLinkButton imageView];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = self->_detailLinkButton;
  v16 = [(RUICustomLinkTableViewCell *)self _imageViewInternal];
  v17 = [v16 image];
  [(UIButton *)v15 setImage:v17 forState:0];

  [(UIButton *)self->_detailLinkButton setTitle:v6 forState:0];
  v18 = [(UIButton *)self->_detailLinkButton titleLabel];
  v19 = [MEMORY[0x277D74300] systemFontOfSize:15.0 weight:*MEMORY[0x277D74420]];
  [v18 setFont:v19];

  v20 = self->_detailLinkButton;
  v21 = [MEMORY[0x277D75348] _labelColor];
  [(UIButton *)v20 setTitleColor:v21 forState:0];

  [(UIButton *)self->_detailLinkButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_innerStackView addArrangedSubview:self->_detailLinkButton];
  [(UIStackView *)self->_innerStackView addArrangedSubview:self->_customLinkSubLabelInternal];
  v22 = [(UIButton *)self->_detailLinkButton leadingAnchor];
  v23 = [(UIStackView *)self->_innerStackView leadingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:0.0];
  [v24 setActive:1];

  v25 = [(UIButton *)self->_detailLinkButton imageView];
  v26 = [v25 widthAnchor];
  v27 = [v26 constraintEqualToConstant:15.0];
  [v27 setActive:1];

  v28 = [(UIButton *)self->_detailLinkButton imageView];
  v29 = [v28 heightAnchor];
  v30 = [v29 constraintEqualToConstant:15.0];
  [v30 setActive:1];

  v31 = [(UIButton *)self->_detailLinkButton imageView];
  v32 = [v31 trailingAnchor];
  v33 = [(UIButton *)self->_detailLinkButton titleLabel];
  v34 = [v33 leadingAnchor];
  v35 = [v32 constraintEqualToAnchor:v34 constant:-6.0];
  [v35 setActive:1];

  v36 = [(UILabel *)self->_customLinkTextLabelInternal text];

  if (v36)
  {
    v37 = [(UIButton *)self->_detailLinkButton imageView];
    v38 = [v37 leadingAnchor];
    v39 = [(UIButton *)self->_detailLinkButton leadingAnchor];
    v40 = [v38 constraintEqualToAnchor:v39 constant:0.0];
    [v40 setActive:1];
  }

  v41 = [(UIButton *)self->_detailLinkButton imageView];
  v42 = [v41 centerYAnchor];
  v43 = [(UIButton *)self->_detailLinkButton titleLabel];
  v44 = [v43 centerYAnchor];
  v45 = [v42 constraintEqualToAnchor:v44];
  [v45 setActive:1];

  [(RUICustomLinkTableViewCell *)self setNeedsLayout];
  v46.receiver = self;
  v46.super_class = RUICustomLinkTableViewCell;
  [(RemoteUITableViewCell *)&v46 setDetailLinkText:v6 handler:v7];
}

- (void)_detailLinkPressed
{
  if (_isInternalInstall())
  {
    v3 = _RUILoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B93D000, v3, OS_LOG_TYPE_DEFAULT, "detail pressed", buf, 2u);
    }
  }

  if (self->_detailLinkHandler)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__RUICustomLinkTableViewCell__detailLinkPressed__block_invoke;
    block[3] = &unk_2782E7F30;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __48__RUICustomLinkTableViewCell__detailLinkPressed__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0 && _isInternalInstall())
  {
    v5 = _RUILoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_21B93D000, v5, OS_LOG_TYPE_DEFAULT, "error %@", &v6, 0xCu);
    }
  }
}

- (void)layoutSubviews
{
  v3 = [(UILabel *)self->_customLinkTextLabelInternal text];

  if (!v3)
  {
    [(UILabel *)self->_customLinkTextLabelInternal removeFromSuperview];
  }

  innerStackView = self->_innerStackView;
  v5 = [(RUICustomLinkTableViewCell *)self _imageViewInternal];
  [(UIStackView *)innerStackView setCustomSpacing:v5 afterView:6.0];

  v6.receiver = self;
  v6.super_class = RUICustomLinkTableViewCell;
  [(RemoteUITableViewCell *)&v6 layoutSubviews];
}

@end