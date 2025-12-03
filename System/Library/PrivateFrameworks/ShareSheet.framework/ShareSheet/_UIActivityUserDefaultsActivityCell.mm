@interface _UIActivityUserDefaultsActivityCell
+ (id)bodyShortFont;
- (_UIActivityUserDefaultsActivityCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_updateImageDarkening;
- (void)layoutMarginsDidChange;
- (void)prepareForReuse;
- (void)setActivityProxy:(id)proxy;
- (void)setDisabled:(BOOL)disabled;
@end

@implementation _UIActivityUserDefaultsActivityCell

- (_UIActivityUserDefaultsActivityCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v98.receiver = self;
  v98.super_class = _UIActivityUserDefaultsActivityCell;
  v4 = [(_UIActivityUserDefaultsActivityCell *)&v98 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [v5 setBackgroundColor:clearColor];

    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 setLineBreakMode:4];
    [v5 setAlpha:0.0];
    bodyShortFont = [objc_opt_class() bodyShortFont];
    [v5 setFont:bodyShortFont];

    [(_UIActivityUserDefaultsActivityCell *)v4 setActivityTitleLabel:v5];
    activityTitleLabel = [(_UIActivityUserDefaultsActivityCell *)v4 activityTitleLabel];
    [activityTitleLabel setAccessibilityIdentifier:@"activityTitleLabel"];

    v9 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [v9 setContentMode:1];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_UIActivityUserDefaultsActivityCell *)v4 setActivityImageView:v9];
    activityImageView = [(_UIActivityUserDefaultsActivityCell *)v4 activityImageView];
    [activityImageView setAccessibilityIdentifier:@"activityImageView"];

    v97 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v97 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_UIActivityUserDefaultsActivityCell *)v4 setActivityImageSlotView:v97];
    v96 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v96 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_UIActivityUserDefaultsActivityCell *)v4 setActivityTitleView:v96];
    contentView = [(_UIActivityUserDefaultsActivityCell *)v4 contentView];
    [contentView setClipsToBounds:1];
    [contentView setAccessibilityIdentifier:@"activityCell"];
    activityTitleLabel2 = [(_UIActivityUserDefaultsActivityCell *)v4 activityTitleLabel];
    [contentView addSubview:activityTitleLabel2];

    activityImageView2 = [(_UIActivityUserDefaultsActivityCell *)v4 activityImageView];
    [contentView addSubview:activityImageView2];

    activityImageSlotView = [(_UIActivityUserDefaultsActivityCell *)v4 activityImageSlotView];
    [contentView addSubview:activityImageSlotView];

    activityTitleView = [(_UIActivityUserDefaultsActivityCell *)v4 activityTitleView];
    [contentView addSubview:activityTitleView];

    array = [MEMORY[0x1E695DF70] array];
    activityImageView3 = [(_UIActivityUserDefaultsActivityCell *)v4 activityImageView];
    leadingAnchor = [activityImageView3 leadingAnchor];
    leadingAnchor2 = [contentView leadingAnchor];
    v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:17.0];
    [array addObject:v20];

    activityTitleLabel3 = [(_UIActivityUserDefaultsActivityCell *)v4 activityTitleLabel];
    topAnchor = [activityTitleLabel3 topAnchor];
    topAnchor2 = [contentView topAnchor];
    v24 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:15.0];
    [array addObject:v24];

    bottomAnchor = [contentView bottomAnchor];
    activityTitleLabel4 = [(_UIActivityUserDefaultsActivityCell *)v4 activityTitleLabel];
    bottomAnchor2 = [activityTitleLabel4 bottomAnchor];
    v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:15.0];
    [array addObject:v28];

    activityTitleLabel5 = [(_UIActivityUserDefaultsActivityCell *)v4 activityTitleLabel];
    leadingAnchor3 = [activityTitleLabel5 leadingAnchor];
    activityImageView4 = [(_UIActivityUserDefaultsActivityCell *)v4 activityImageView];
    trailingAnchor = [activityImageView4 trailingAnchor];
    v33 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:14.0];
    [(_UIActivityUserDefaultsActivityCell *)v4 setLabelLeadingConstraint:v33];

    labelLeadingConstraint = [(_UIActivityUserDefaultsActivityCell *)v4 labelLeadingConstraint];
    [array addObject:labelLeadingConstraint];

    activityTitleLabel6 = [(_UIActivityUserDefaultsActivityCell *)v4 activityTitleLabel];
    trailingAnchor2 = [activityTitleLabel6 trailingAnchor];
    trailingAnchor3 = [contentView trailingAnchor];
    v38 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-15.0];
    [array addObject:v38];

    activityImageView5 = [(_UIActivityUserDefaultsActivityCell *)v4 activityImageView];
    centerYAnchor = [activityImageView5 centerYAnchor];
    centerYAnchor2 = [contentView centerYAnchor];
    v42 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [array addObject:v42];

    activityImageView6 = [(_UIActivityUserDefaultsActivityCell *)v4 activityImageView];
    widthAnchor = [activityImageView6 widthAnchor];
    v45 = [widthAnchor constraintEqualToConstant:29.0];
    [(_UIActivityUserDefaultsActivityCell *)v4 setImageViewWidthConstraint:v45];

    imageViewWidthConstraint = [(_UIActivityUserDefaultsActivityCell *)v4 imageViewWidthConstraint];
    [array addObject:imageViewWidthConstraint];

    activityImageView7 = [(_UIActivityUserDefaultsActivityCell *)v4 activityImageView];
    heightAnchor = [activityImageView7 heightAnchor];
    v49 = [heightAnchor constraintEqualToConstant:29.0];
    [array addObject:v49];

    activityImageSlotView2 = [(_UIActivityUserDefaultsActivityCell *)v4 activityImageSlotView];
    widthAnchor2 = [activityImageSlotView2 widthAnchor];
    activityImageView8 = [(_UIActivityUserDefaultsActivityCell *)v4 activityImageView];
    widthAnchor3 = [activityImageView8 widthAnchor];
    v54 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];
    [array addObject:v54];

    activityImageSlotView3 = [(_UIActivityUserDefaultsActivityCell *)v4 activityImageSlotView];
    heightAnchor2 = [activityImageSlotView3 heightAnchor];
    activityImageView9 = [(_UIActivityUserDefaultsActivityCell *)v4 activityImageView];
    heightAnchor3 = [activityImageView9 heightAnchor];
    v59 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
    [array addObject:v59];

    activityImageSlotView4 = [(_UIActivityUserDefaultsActivityCell *)v4 activityImageSlotView];
    centerXAnchor = [activityImageSlotView4 centerXAnchor];
    activityImageView10 = [(_UIActivityUserDefaultsActivityCell *)v4 activityImageView];
    centerXAnchor2 = [activityImageView10 centerXAnchor];
    v64 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [array addObject:v64];

    activityImageSlotView5 = [(_UIActivityUserDefaultsActivityCell *)v4 activityImageSlotView];
    centerYAnchor3 = [activityImageSlotView5 centerYAnchor];
    activityImageView11 = [(_UIActivityUserDefaultsActivityCell *)v4 activityImageView];
    centerYAnchor4 = [activityImageView11 centerYAnchor];
    v69 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [array addObject:v69];

    activityTitleView2 = [(_UIActivityUserDefaultsActivityCell *)v4 activityTitleView];
    widthAnchor4 = [activityTitleView2 widthAnchor];
    activityTitleLabel7 = [(_UIActivityUserDefaultsActivityCell *)v4 activityTitleLabel];
    widthAnchor5 = [activityTitleLabel7 widthAnchor];
    v74 = [widthAnchor4 constraintEqualToAnchor:widthAnchor5];
    [array addObject:v74];

    activityTitleView3 = [(_UIActivityUserDefaultsActivityCell *)v4 activityTitleView];
    heightAnchor4 = [activityTitleView3 heightAnchor];
    activityTitleLabel8 = [(_UIActivityUserDefaultsActivityCell *)v4 activityTitleLabel];
    heightAnchor5 = [activityTitleLabel8 heightAnchor];
    v79 = [heightAnchor4 constraintEqualToAnchor:heightAnchor5];
    [array addObject:v79];

    activityTitleView4 = [(_UIActivityUserDefaultsActivityCell *)v4 activityTitleView];
    centerYAnchor5 = [activityTitleView4 centerYAnchor];
    activityTitleLabel9 = [(_UIActivityUserDefaultsActivityCell *)v4 activityTitleLabel];
    centerYAnchor6 = [activityTitleLabel9 centerYAnchor];
    v84 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    [array addObject:v84];

    activityTitleView5 = [(_UIActivityUserDefaultsActivityCell *)v4 activityTitleView];
    centerXAnchor3 = [activityTitleView5 centerXAnchor];
    activityTitleLabel10 = [(_UIActivityUserDefaultsActivityCell *)v4 activityTitleLabel];
    centerXAnchor4 = [activityTitleLabel10 centerXAnchor];
    v89 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    [array addObject:v89];

    activityTitleLabel11 = [(_UIActivityUserDefaultsActivityCell *)v4 activityTitleLabel];
    heightAnchor6 = [activityTitleLabel11 heightAnchor];
    v92 = [heightAnchor6 constraintGreaterThanOrEqualToConstant:0.0];
    titleLabelHeightAnchor = v4->_titleLabelHeightAnchor;
    v4->_titleLabelHeightAnchor = v92;

    [(NSLayoutConstraint *)v4->_titleLabelHeightAnchor setActive:0];
    [array addObject:v4->_titleLabelHeightAnchor];
    [MEMORY[0x1E696ACD8] activateConstraints:array];
    v94 = v4;
  }

  return v4;
}

+ (id)bodyShortFont
{
  v2 = MEMORY[0x1E69DB878];
  v3 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:0x8000 options:0];
  v4 = [v2 fontWithDescriptor:v3 size:0.0];

  return v4;
}

- (void)setActivityProxy:(id)proxy
{
  proxyCopy = proxy;
  objc_storeStrong(&self->_activityProxy, proxy);
  titleLabelHeightAnchor = self->_titleLabelHeightAnchor;
  if (proxyCopy)
  {
    [(NSLayoutConstraint *)titleLabelHeightAnchor constant];
    v7 = v6;
    activityTitle = [proxyCopy activityTitle];
    [activityTitle slotTextHeight];
    v10 = v9 / _ShareSheetDeviceScreenScale();

    [(NSLayoutConstraint *)self->_titleLabelHeightAnchor setConstant:v10];
    [(NSLayoutConstraint *)self->_titleLabelHeightAnchor setActive:1];
    if (vabdd_f64(v7, v10) < 0.00000011920929)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  isActive = [(NSLayoutConstraint *)titleLabelHeightAnchor isActive];
  [(NSLayoutConstraint *)self->_titleLabelHeightAnchor setActive:0];
  if (isActive)
  {
LABEL_3:
    [(_UIActivityUserDefaultsActivityCell *)self setNeedsLayout];
  }

LABEL_4:
}

- (void)prepareForReuse
{
  v9.receiver = self;
  v9.super_class = _UIActivityUserDefaultsActivityCell;
  [(_UIActivityUserDefaultsActivityCell *)&v9 prepareForReuse];
  activityImageSlotView = [(_UIActivityUserDefaultsActivityCell *)self activityImageSlotView];
  layer = [activityImageSlotView layer];
  [layer setContents:0];

  activityTitleView = [(_UIActivityUserDefaultsActivityCell *)self activityTitleView];
  layer2 = [activityTitleView layer];
  [layer2 setContents:0];

  activityTitleLabel = [(_UIActivityUserDefaultsActivityCell *)self activityTitleLabel];
  [activityTitleLabel setText:0];

  activityImageView = [(_UIActivityUserDefaultsActivityCell *)self activityImageView];
  [activityImageView setImage:0];

  [(_UIActivityUserDefaultsActivityCell *)self setActivityProxy:0];
  [(_UIActivityUserDefaultsActivityCell *)self setDisabled:0];
}

- (void)setDisabled:(BOOL)disabled
{
  if (self->_disabled != disabled)
  {
    self->_disabled = disabled;
    [(_UIActivityUserDefaultsActivityCell *)self _updateImageDarkening];
  }
}

- (void)_updateImageDarkening
{
  v17[1] = *MEMORY[0x1E69E9840];
  activityImageSlotView = [(_UIActivityUserDefaultsActivityCell *)self activityImageSlotView];
  layer = [activityImageSlotView layer];
  contents = [layer contents];

  activityImageSlotView2 = [(_UIActivityUserDefaultsActivityCell *)self activityImageSlotView];
  layer2 = [activityImageSlotView2 layer];
  [layer2 setContents:contents];

  if (([(_UIActivityUserDefaultsActivityCell *)self isHighlighted]& 1) != 0 || [(_UIActivityUserDefaultsActivityCell *)self isDisabled])
  {
    activityImageSlotView2 = [MEMORY[0x1E69DC888] grayColor];
    cGColor = [activityImageSlotView2 CGColor];
    v9 = 1;
  }

  else
  {
    v9 = 0;
    cGColor = 0;
  }

  activityImageSlotView3 = [(_UIActivityUserDefaultsActivityCell *)self activityImageSlotView];
  layer3 = [activityImageSlotView3 layer];
  [layer3 setContentsMultiplyColor:cGColor];

  if (v9)
  {
  }

  if (([(_UIActivityUserDefaultsActivityCell *)self isHighlighted]& 1) != 0 || [(_UIActivityUserDefaultsActivityCell *)self isDisabled])
  {
    v12 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CB0]];
    v13 = [MEMORY[0x1E69DC888] colorWithWhite:0.5 alpha:1.0];
    [v12 setValue:objc_msgSend(v13 forKey:{"CGColor"), @"inputColor"}];

    v17[0] = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  }

  else
  {
    v14 = 0;
  }

  activityImageView = [(_UIActivityUserDefaultsActivityCell *)self activityImageView];
  layer4 = [activityImageView layer];
  [layer4 setFilters:v14];
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = _UIActivityUserDefaultsActivityCell;
  [(_UIActivityUserDefaultsActivityCell *)&v3 layoutMarginsDidChange];
  if (_ShareSheetSolariumEnabled())
  {
    [(_UIActivityUserDefaultsActivityCell *)self directionalLayoutMargins];
    [(_UIActivityUserDefaultsActivityCell *)self setSeparatorInset:0.0, 60.0, 0.0];
  }
}

@end