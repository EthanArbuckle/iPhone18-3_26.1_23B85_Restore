@interface PSUsageSizeHeader
- (PSUsageSizeHeader)initWithSpecifier:(id)specifier;
- (void)_setupSubviewsAndConstraints;
- (void)setSize:(id)size;
@end

@implementation PSUsageSizeHeader

- (PSUsageSizeHeader)initWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v14.receiver = self;
  v14.super_class = PSUsageSizeHeader;
  v5 = [(PSUsageSizeHeader *)&v14 init];
  v6 = v5;
  if (v5)
  {
    [(PSUsageSizeHeader *)v5 _setupSubviewsAndConstraints];
    v7 = MEMORY[0x1E696AAF0];
    v8 = [specifierCopy propertyForKey:@"SIZE"];
    v9 = [v7 stringFromByteCount:objc_msgSend(v8 countStyle:{"longLongValue"), 2}];
    sizeLabel = [(PSUsageSizeHeader *)v6 sizeLabel];
    [sizeLabel setText:v9];

    name = [specifierCopy name];
    titleLabel = [(PSUsageSizeHeader *)v6 titleLabel];
    [titleLabel setText:name];
  }

  return v6;
}

- (void)_setupSubviewsAndConstraints
{
  _internalStackView = [(PSUsageSizeHeader *)self _internalStackView];
  [_internalStackView removeFromSuperview];

  v4 = objc_alloc(MEMORY[0x1E69DCF90]);
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
  [(PSUsageSizeHeader *)self set_internalStackView:v9];

  _internalStackView2 = [(PSUsageSizeHeader *)self _internalStackView];
  [_internalStackView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  _internalStackView3 = [(PSUsageSizeHeader *)self _internalStackView];
  [_internalStackView3 setAxis:0];

  _internalStackView4 = [(PSUsageSizeHeader *)self _internalStackView];
  [_internalStackView4 setDistribution:3];

  _internalStackView5 = [(PSUsageSizeHeader *)self _internalStackView];
  [_internalStackView5 setAlignment:2];

  contentView = [(PSUsageSizeHeader *)self contentView];
  _internalStackView6 = [(PSUsageSizeHeader *)self _internalStackView];
  [contentView addSubview:_internalStackView6];

  v16 = +[PSListController appearance];
  altTextColor = [v16 altTextColor];
  if (altTextColor)
  {
    v18 = +[PSListController appearance];
    altTextColor2 = [v18 altTextColor];
  }

  else
  {
    altTextColor2 = PreferencesTableViewFooterColor();
  }

  v19 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
  [(PSUsageSizeHeader *)self setTitleLabel:v19];

  titleLabel = [(PSUsageSizeHeader *)self titleLabel];
  [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel2 = [(PSUsageSizeHeader *)self titleLabel];
  [titleLabel2 setAdjustsFontForContentSizeCategory:1];

  v22 = PreferencesTableViewHeaderFont();
  titleLabel3 = [(PSUsageSizeHeader *)self titleLabel];
  [titleLabel3 setFont:v22];

  titleLabel4 = [(PSUsageSizeHeader *)self titleLabel];
  [titleLabel4 setTextColor:altTextColor2];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  titleLabel5 = [(PSUsageSizeHeader *)self titleLabel];
  [titleLabel5 setBackgroundColor:clearColor];

  _internalStackView7 = [(PSUsageSizeHeader *)self _internalStackView];
  titleLabel6 = [(PSUsageSizeHeader *)self titleLabel];
  [_internalStackView7 addArrangedSubview:titleLabel6];

  sizeLabel = [(PSUsageSizeHeader *)self sizeLabel];
  [sizeLabel removeFromSuperview];

  v30 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
  [(PSUsageSizeHeader *)self setSizeLabel:v30];

  sizeLabel2 = [(PSUsageSizeHeader *)self sizeLabel];
  [sizeLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

  sizeLabel3 = [(PSUsageSizeHeader *)self sizeLabel];
  [sizeLabel3 setAdjustsFontForContentSizeCategory:1];

  v33 = PreferencesTableViewHeaderFont();
  sizeLabel4 = [(PSUsageSizeHeader *)self sizeLabel];
  [sizeLabel4 setFont:v33];

  sizeLabel5 = [(PSUsageSizeHeader *)self sizeLabel];
  [sizeLabel5 setTextColor:altTextColor2];

  sizeLabel6 = [(PSUsageSizeHeader *)self sizeLabel];
  [sizeLabel6 setTextAlignment:2];

  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  sizeLabel7 = [(PSUsageSizeHeader *)self sizeLabel];
  [sizeLabel7 setBackgroundColor:clearColor2];

  _internalStackView8 = [(PSUsageSizeHeader *)self _internalStackView];
  sizeLabel8 = [(PSUsageSizeHeader *)self sizeLabel];
  [_internalStackView8 addArrangedSubview:sizeLabel8];

  array = [MEMORY[0x1E695DF70] array];
  _internalStackView9 = [(PSUsageSizeHeader *)self _internalStackView];
  leadingAnchor = [_internalStackView9 leadingAnchor];
  contentView2 = [(PSUsageSizeHeader *)self contentView];
  layoutMarginsGuide = [contentView2 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v47 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v47];

  _internalStackView10 = [(PSUsageSizeHeader *)self _internalStackView];
  trailingAnchor = [_internalStackView10 trailingAnchor];
  contentView3 = [(PSUsageSizeHeader *)self contentView];
  layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v53 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [array addObject:v53];

  _internalStackView11 = [(PSUsageSizeHeader *)self _internalStackView];
  topAnchor = [_internalStackView11 topAnchor];
  contentView4 = [(PSUsageSizeHeader *)self contentView];
  layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide3 topAnchor];
  v59 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [array addObject:v59];

  _internalStackView12 = [(PSUsageSizeHeader *)self _internalStackView];
  bottomAnchor = [_internalStackView12 bottomAnchor];
  contentView5 = [(PSUsageSizeHeader *)self contentView];
  layoutMarginsGuide4 = [contentView5 layoutMarginsGuide];
  bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
  v65 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [array addObject:v65];

  [MEMORY[0x1E696ACD8] activateConstraints:array];
}

- (void)setSize:(id)size
{
  [(UILabel *)self->_sizeLabel setText:size];
  [(UILabel *)self->_sizeLabel sizeToFit];

  [(PSUsageSizeHeader *)self setNeedsLayout];
}

@end