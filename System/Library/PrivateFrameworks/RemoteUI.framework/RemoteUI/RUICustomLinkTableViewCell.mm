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
- (void)setDetailLinkText:(id)text handler:(id)handler;
@end

@implementation RUICustomLinkTableViewCell

- (UILabel)customLinkTextLabel
{
  [(RUICustomLinkTableViewCell *)self _initializeViews];
  _textLabelInternal = [(RUICustomLinkTableViewCell *)self _textLabelInternal];
  [_textLabelInternal setHidden:0];

  return [(RUICustomLinkTableViewCell *)self _textLabelInternal];
}

- (UILabel)customLinkDetailTextLabel
{
  [(RUICustomLinkTableViewCell *)self _initializeViews];
  _detailTextLabelInternal = [(RUICustomLinkTableViewCell *)self _detailTextLabelInternal];
  [_detailTextLabelInternal setHidden:0];

  return [(RUICustomLinkTableViewCell *)self _detailTextLabelInternal];
}

- (UILabel)customLinkSubLabel
{
  [(RUICustomLinkTableViewCell *)self _initializeViews];
  _subLabelInternal = [(RUICustomLinkTableViewCell *)self _subLabelInternal];
  [_subLabelInternal setHidden:0];

  return [(RUICustomLinkTableViewCell *)self _subLabelInternal];
}

- (UIImageView)customLinkImageView
{
  detailLinkButton = self->_detailLinkButton;
  if (detailLinkButton)
  {
    _imageViewInternal = [(RUICustomLinkTableViewCell *)self _imageViewInternal];
    image = [_imageViewInternal image];
    [(UIButton *)detailLinkButton setImage:image forState:0];

    imageView = [(UIButton *)self->_detailLinkButton imageView];
    LODWORD(v7) = 1132068864;
    [imageView setContentCompressionResistancePriority:1 forAxis:v7];

    imageView2 = [(UIButton *)self->_detailLinkButton imageView];
    LODWORD(v9) = 1132068864;
    [imageView2 setContentCompressionResistancePriority:0 forAxis:v9];

    [(RUICustomLinkTableViewCell *)self setNeedsLayout];
  }

  else
  {
    [(RUICustomLinkTableViewCell *)self _initializeViews];
    _imageViewInternal2 = [(RUICustomLinkTableViewCell *)self _imageViewInternal];
    [_imageViewInternal2 setHidden:0];
  }

  _imageViewInternal3 = [(RUICustomLinkTableViewCell *)self _imageViewInternal];

  return _imageViewInternal3;
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
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UIStackView *)self->_stackView setBackgroundColor:clearColor];

    [(UIStackView *)self->_stackView setDistribution:0];
    v6 = objc_alloc_init(MEMORY[0x277D75A68]);
    innerStackView = self->_innerStackView;
    self->_innerStackView = v6;

    [(UIStackView *)self->_innerStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_innerStackView setAxis:1];
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(UIStackView *)self->_innerStackView setBackgroundColor:clearColor2];

    [(UIStackView *)self->_innerStackView setDistribution:2];
    v9 = self->_innerStackView;
    _detailTextLabelInternal = [(RUICustomLinkTableViewCell *)self _detailTextLabelInternal];
    [(UIStackView *)v9 addArrangedSubview:_detailTextLabelInternal];

    v11 = self->_innerStackView;
    _subLabelInternal = [(RUICustomLinkTableViewCell *)self _subLabelInternal];
    [(UIStackView *)v11 addArrangedSubview:_subLabelInternal];

    v13 = self->_stackView;
    _textLabelInternal = [(RUICustomLinkTableViewCell *)self _textLabelInternal];
    [(UIStackView *)v13 addArrangedSubview:_textLabelInternal];

    [(UIStackView *)self->_stackView addArrangedSubview:self->_innerStackView];
    _textLabelInternal2 = [(RUICustomLinkTableViewCell *)self _textLabelInternal];
    [_textLabelInternal2 setHidden:1];

    _detailTextLabelInternal2 = [(RUICustomLinkTableViewCell *)self _detailTextLabelInternal];
    [_detailTextLabelInternal2 setHidden:1];

    _subLabelInternal2 = [(RUICustomLinkTableViewCell *)self _subLabelInternal];
    [_subLabelInternal2 setHidden:1];

    _imageViewInternal = [(RUICustomLinkTableViewCell *)self _imageViewInternal];
    [_imageViewInternal setHidden:1];

    contentView = [(RUICustomLinkTableViewCell *)self contentView];
    [contentView addSubview:self->_stackView];

    v43 = MEMORY[0x277CCAAD0];
    topAnchor = [(UIStackView *)self->_stackView topAnchor];
    contentView2 = [(RUICustomLinkTableViewCell *)self contentView];
    topAnchor2 = [contentView2 topAnchor];
    v52 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v56[0] = v52;
    leadingAnchor = [(UIStackView *)self->_stackView leadingAnchor];
    contentView3 = [(RUICustomLinkTableViewCell *)self contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v48 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v56[1] = v48;
    trailingAnchor = [(UIStackView *)self->_stackView trailingAnchor];
    contentView4 = [(RUICustomLinkTableViewCell *)self contentView];
    trailingAnchor2 = [contentView4 trailingAnchor];
    v44 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v56[2] = v44;
    bottomAnchor = [(UIStackView *)self->_stackView bottomAnchor];
    contentView5 = [(RUICustomLinkTableViewCell *)self contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v39 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v56[3] = v39;
    topAnchor3 = [(UIStackView *)self->_innerStackView topAnchor];
    topAnchor4 = [(UIStackView *)self->_stackView topAnchor];
    v36 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v56[4] = v36;
    bottomAnchor3 = [(UIStackView *)self->_innerStackView bottomAnchor];
    bottomAnchor4 = [(UIStackView *)self->_stackView bottomAnchor];
    v33 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v56[5] = v33;
    _textLabelInternal3 = [(RUICustomLinkTableViewCell *)self _textLabelInternal];
    leadingAnchor3 = [_textLabelInternal3 leadingAnchor];
    leadingAnchor4 = [(UIStackView *)self->_stackView leadingAnchor];
    v22 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
    v56[6] = v22;
    _textLabelInternal4 = [(RUICustomLinkTableViewCell *)self _textLabelInternal];
    trailingAnchor3 = [_textLabelInternal4 trailingAnchor];
    leadingAnchor5 = [(UIStackView *)self->_stackView leadingAnchor];
    v26 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor5 constant:66.0];
    v56[7] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:8];
    [v43 activateConstraints:v27];

    v28 = self->_stackView;
    _textLabelInternal5 = [(RUICustomLinkTableViewCell *)self _textLabelInternal];
    [(UIStackView *)v28 setCustomSpacing:_textLabelInternal5 afterView:16.0];

    _textLabelInternal6 = [(RUICustomLinkTableViewCell *)self _textLabelInternal];
    LODWORD(v31) = 1148846080;
    [_textLabelInternal6 setContentHuggingPriority:0 forAxis:v31];
  }
}

- (void)setDetailLinkText:(id)text handler:(id)handler
{
  textCopy = text;
  handlerCopy = handler;
  [(RUICustomLinkTableViewCell *)self _initializeViews];
  _detailTextLabelInternal = [(RUICustomLinkTableViewCell *)self _detailTextLabelInternal];
  [_detailTextLabelInternal removeFromSuperview];

  _subLabelInternal = [(RUICustomLinkTableViewCell *)self _subLabelInternal];
  [_subLabelInternal removeFromSuperview];

  v10 = _Block_copy(handlerCopy);
  detailLinkHandler = self->_detailLinkHandler;
  self->_detailLinkHandler = v10;

  v12 = [MEMORY[0x277D75220] buttonWithType:1];
  detailLinkButton = self->_detailLinkButton;
  self->_detailLinkButton = v12;

  [(UIButton *)self->_detailLinkButton setExclusiveTouch:1];
  [(UIButton *)self->_detailLinkButton addTarget:self action:sel__detailLinkPressed forControlEvents:64];
  imageView = [(UIButton *)self->_detailLinkButton imageView];
  [imageView setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = self->_detailLinkButton;
  _imageViewInternal = [(RUICustomLinkTableViewCell *)self _imageViewInternal];
  image = [_imageViewInternal image];
  [(UIButton *)v15 setImage:image forState:0];

  [(UIButton *)self->_detailLinkButton setTitle:textCopy forState:0];
  titleLabel = [(UIButton *)self->_detailLinkButton titleLabel];
  v19 = [MEMORY[0x277D74300] systemFontOfSize:15.0 weight:*MEMORY[0x277D74420]];
  [titleLabel setFont:v19];

  v20 = self->_detailLinkButton;
  _labelColor = [MEMORY[0x277D75348] _labelColor];
  [(UIButton *)v20 setTitleColor:_labelColor forState:0];

  [(UIButton *)self->_detailLinkButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_innerStackView addArrangedSubview:self->_detailLinkButton];
  [(UIStackView *)self->_innerStackView addArrangedSubview:self->_customLinkSubLabelInternal];
  leadingAnchor = [(UIButton *)self->_detailLinkButton leadingAnchor];
  leadingAnchor2 = [(UIStackView *)self->_innerStackView leadingAnchor];
  v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
  [v24 setActive:1];

  imageView2 = [(UIButton *)self->_detailLinkButton imageView];
  widthAnchor = [imageView2 widthAnchor];
  v27 = [widthAnchor constraintEqualToConstant:15.0];
  [v27 setActive:1];

  imageView3 = [(UIButton *)self->_detailLinkButton imageView];
  heightAnchor = [imageView3 heightAnchor];
  v30 = [heightAnchor constraintEqualToConstant:15.0];
  [v30 setActive:1];

  imageView4 = [(UIButton *)self->_detailLinkButton imageView];
  trailingAnchor = [imageView4 trailingAnchor];
  titleLabel2 = [(UIButton *)self->_detailLinkButton titleLabel];
  leadingAnchor3 = [titleLabel2 leadingAnchor];
  v35 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3 constant:-6.0];
  [v35 setActive:1];

  text = [(UILabel *)self->_customLinkTextLabelInternal text];

  if (text)
  {
    imageView5 = [(UIButton *)self->_detailLinkButton imageView];
    leadingAnchor4 = [imageView5 leadingAnchor];
    leadingAnchor5 = [(UIButton *)self->_detailLinkButton leadingAnchor];
    v40 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:0.0];
    [v40 setActive:1];
  }

  imageView6 = [(UIButton *)self->_detailLinkButton imageView];
  centerYAnchor = [imageView6 centerYAnchor];
  titleLabel3 = [(UIButton *)self->_detailLinkButton titleLabel];
  centerYAnchor2 = [titleLabel3 centerYAnchor];
  v45 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v45 setActive:1];

  [(RUICustomLinkTableViewCell *)self setNeedsLayout];
  v46.receiver = self;
  v46.super_class = RUICustomLinkTableViewCell;
  [(RemoteUITableViewCell *)&v46 setDetailLinkText:textCopy handler:handlerCopy];
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
  text = [(UILabel *)self->_customLinkTextLabelInternal text];

  if (!text)
  {
    [(UILabel *)self->_customLinkTextLabelInternal removeFromSuperview];
  }

  innerStackView = self->_innerStackView;
  _imageViewInternal = [(RUICustomLinkTableViewCell *)self _imageViewInternal];
  [(UIStackView *)innerStackView setCustomSpacing:_imageViewInternal afterView:6.0];

  v6.receiver = self;
  v6.super_class = RUICustomLinkTableViewCell;
  [(RemoteUITableViewCell *)&v6 layoutSubviews];
}

@end