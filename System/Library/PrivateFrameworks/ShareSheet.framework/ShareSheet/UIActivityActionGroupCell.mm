@interface UIActivityActionGroupCell
- (NSDirectionalEdgeInsets)_preferredSeparatorInsetsForProposedInsets:(NSDirectionalEdgeInsets)insets;
- (UIActivityActionGroupCell)initWithFrame:(CGRect)frame;
- (id)badgeView;
- (id)statusImageView;
- (id)subtitleLabel;
- (void)_updateBadgeWithText:(id)text textColor:(id)color backgroundColor:(id)backgroundColor;
- (void)_updateContentTintColor;
- (void)_updateImageView;
- (void)_updateStatusImageView;
- (void)_updateSubtitleLabel;
- (void)_updateTitleHeight;
- (void)_updateTitleView;
- (void)prepareForReuse;
- (void)setContentTintColor:(id)color;
- (void)setDisabled:(BOOL)disabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImage:(id)image;
- (void)setImageSlotID:(unsigned int)d;
- (void)setPlatterTextHeight:(double)height;
- (void)setSelected:(BOOL)selected;
- (void)setStatusImage:(id)image;
- (void)setStatusImageTintColor:(id)color;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)setTitleSlotID:(unsigned int)d;
@end

@implementation UIActivityActionGroupCell

- (UIActivityActionGroupCell)initWithFrame:(CGRect)frame
{
  v160.receiver = self;
  v160.super_class = UIActivityActionGroupCell;
  v3 = [(UIActivityActionCell *)&v160 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(_UIActivityActionCellTitleLabel);
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(_UIActivityActionCellTitleLabel *)v4 setBackgroundColor:clearColor];

    [(_UIActivityActionCellTitleLabel *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_UIActivityActionCellTitleLabel *)v4 setLineBreakMode:4];
    [(_UIActivityActionCellTitleLabel *)v4 setAlpha:0.0];
    [(_UIActivityActionCellTitleLabel *)v4 setAccessibilityIdentifier:@"titleLabel"];
    [(UIActivityActionGroupCell *)v3 setTitleLabel:v4];
    v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [v6 setContentMode:4];
    [v6 setAccessibilityIdentifier:@"activityImageView"];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v159 = v6;
    [(UIActivityActionGroupCell *)v3 setActivityImageView:v6];
    v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v158 = v7;
    [(UIActivityActionGroupCell *)v3 setActivitySlotView:v7];
    v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v157 = v8;
    [(UIActivityActionGroupCell *)v3 setTitleSlotView:v8];
    v9 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    [v9 setAxis:1];
    [v9 setSpacing:-2.0];
    [v9 setAccessibilityIdentifier:@"titleStackView"];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v156 = v9;
    [(UIActivityActionGroupCell *)v3 setTitleStackView:v9];
    v10 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    [v10 setAlignment:3];
    [v10 setSpacing:8.0];
    [v10 setAccessibilityIdentifier:@"imageStackView"];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v155 = v10;
    [(UIActivityActionGroupCell *)v3 setImageStackView:v10];
    contentView = [(UIActivityActionGroupCell *)v3 contentView];
    v12 = MEMORY[0x1E69DB878];
    v13 = *MEMORY[0x1E69DDCF8];
    v14 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:0x8000 options:0];
    v15 = [v12 fontWithDescriptor:v14 size:0.0];

    traitCollection = [(UIActivityActionGroupCell *)v3 traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

    [(UIActivityActionGroupCell *)v3 _legacyIconSizeForContentSizeCategory:preferredContentSizeCategory];
    v19 = v18;
    v153 = preferredContentSizeCategory;
    if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
    {
      v20 = MEMORY[0x1E69DB880];
      v21 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:{*MEMORY[0x1E69DDC40], preferredContentSizeCategory}];
      v22 = [v20 preferredFontDescriptorWithTextStyle:v13 compatibleWithTraitCollection:v21];

      v23 = [v22 fontDescriptorWithSymbolicTraits:0x8000];

      v24 = [MEMORY[0x1E69DB878] fontWithDescriptor:v23 size:0.0];

      v15 = v24;
    }

    titleStackView = [(UIActivityActionGroupCell *)v3 titleStackView];
    titleLabel = [(UIActivityActionGroupCell *)v3 titleLabel];
    [titleStackView addArrangedSubview:titleLabel];

    imageStackView = [(UIActivityActionGroupCell *)v3 imageStackView];
    activityImageView = [(UIActivityActionGroupCell *)v3 activityImageView];
    [imageStackView addArrangedSubview:activityImageView];

    titleStackView2 = [(UIActivityActionGroupCell *)v3 titleStackView];
    [contentView addSubview:titleStackView2];

    imageStackView2 = [(UIActivityActionGroupCell *)v3 imageStackView];
    [contentView addSubview:imageStackView2];

    activitySlotView = [(UIActivityActionGroupCell *)v3 activitySlotView];
    [contentView addSubview:activitySlotView];

    titleSlotView = [(UIActivityActionGroupCell *)v3 titleSlotView];
    [contentView addSubview:titleSlotView];

    array = [MEMORY[0x1E695DF70] array];
    heightAnchor = [contentView heightAnchor];
    titleLabel2 = [(UIActivityActionGroupCell *)v3 titleLabel];
    heightAnchor2 = [titleLabel2 heightAnchor];
    v37 = [heightAnchor constraintGreaterThanOrEqualToAnchor:heightAnchor2 constant:30.0];
    [array addObject:v37];

    titleSlotView2 = [(UIActivityActionGroupCell *)v3 titleSlotView];
    widthAnchor = [titleSlotView2 widthAnchor];
    titleLabel3 = [(UIActivityActionGroupCell *)v3 titleLabel];
    widthAnchor2 = [titleLabel3 widthAnchor];
    v42 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    [array addObject:v42];

    titleSlotView3 = [(UIActivityActionGroupCell *)v3 titleSlotView];
    heightAnchor3 = [titleSlotView3 heightAnchor];
    titleLabel4 = [(UIActivityActionGroupCell *)v3 titleLabel];
    heightAnchor4 = [titleLabel4 heightAnchor];
    v47 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];
    [array addObject:v47];

    titleSlotView4 = [(UIActivityActionGroupCell *)v3 titleSlotView];
    centerYAnchor = [titleSlotView4 centerYAnchor];
    titleLabel5 = [(UIActivityActionGroupCell *)v3 titleLabel];
    centerYAnchor2 = [titleLabel5 centerYAnchor];
    v52 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [array addObject:v52];

    titleSlotView5 = [(UIActivityActionGroupCell *)v3 titleSlotView];
    centerXAnchor = [titleSlotView5 centerXAnchor];
    titleLabel6 = [(UIActivityActionGroupCell *)v3 titleLabel];
    centerXAnchor2 = [titleLabel6 centerXAnchor];
    v57 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [array addObject:v57];

    imageStackView3 = [(UIActivityActionGroupCell *)v3 imageStackView];
    heightAnchor5 = [imageStackView3 heightAnchor];
    v60 = [heightAnchor5 constraintEqualToConstant:v19];
    [array addObject:v60];

    activityImageView2 = [(UIActivityActionGroupCell *)v3 activityImageView];
    widthAnchor3 = [activityImageView2 widthAnchor];
    v63 = [widthAnchor3 constraintEqualToConstant:v19];
    [array addObject:v63];

    activityImageView3 = [(UIActivityActionGroupCell *)v3 activityImageView];
    heightAnchor6 = [activityImageView3 heightAnchor];
    v66 = [heightAnchor6 constraintEqualToConstant:v19];
    [array addObject:v66];

    activitySlotView2 = [(UIActivityActionGroupCell *)v3 activitySlotView];
    centerXAnchor3 = [activitySlotView2 centerXAnchor];
    activityImageView4 = [(UIActivityActionGroupCell *)v3 activityImageView];
    centerXAnchor4 = [activityImageView4 centerXAnchor];
    v71 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    [array addObject:v71];

    activitySlotView3 = [(UIActivityActionGroupCell *)v3 activitySlotView];
    centerYAnchor3 = [activitySlotView3 centerYAnchor];
    centerYAnchor4 = [contentView centerYAnchor];
    v75 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [array addObject:v75];

    activitySlotView4 = [(UIActivityActionGroupCell *)v3 activitySlotView];
    widthAnchor4 = [activitySlotView4 widthAnchor];
    v78 = [widthAnchor4 constraintEqualToConstant:v19];
    [array addObject:v78];

    activitySlotView5 = [(UIActivityActionGroupCell *)v3 activitySlotView];
    heightAnchor7 = [activitySlotView5 heightAnchor];
    v81 = [heightAnchor7 constraintEqualToConstant:v19];
    [array addObject:v81];

    if (_ShareSheetSolariumEnabled())
    {
      imageStackView4 = [(UIActivityActionGroupCell *)v3 imageStackView];
      leadingAnchor = [imageStackView4 leadingAnchor];
      layoutMarginsGuide = [contentView layoutMarginsGuide];
      leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
      v86 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      [array addObject:v86];

      imageStackView5 = [(UIActivityActionGroupCell *)v3 imageStackView];
      centerYAnchor5 = [imageStackView5 centerYAnchor];
      centerYAnchor6 = [contentView centerYAnchor];
      v90 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
      [array addObject:v90];

      titleStackView3 = [(UIActivityActionGroupCell *)v3 titleStackView];
      leadingAnchor3 = [titleStackView3 leadingAnchor];
      imageStackView6 = [(UIActivityActionGroupCell *)v3 imageStackView];
      trailingAnchor = [imageStackView6 trailingAnchor];
      v95 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:8.0];
      [array addObject:v95];

      titleStackView4 = [(UIActivityActionGroupCell *)v3 titleStackView];
      topAnchor = [titleStackView4 topAnchor];
      topAnchor2 = [contentView topAnchor];
      v99 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:4.0];
      [array addObject:v99];

      bottomAnchor = [contentView bottomAnchor];
      titleStackView5 = [(UIActivityActionGroupCell *)v3 titleStackView];
      bottomAnchor2 = [titleStackView5 bottomAnchor];
      v103 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:4.0];
      [array addObject:v103];

      titleStackView6 = [(UIActivityActionGroupCell *)v3 titleStackView];
      centerYAnchor7 = [titleStackView6 centerYAnchor];
      centerYAnchor8 = [contentView centerYAnchor];
      v107 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
      [array addObject:v107];

      titleStackView7 = [(UIActivityActionGroupCell *)v3 titleStackView];
      trailingAnchor2 = [titleStackView7 trailingAnchor];
      layoutMarginsGuide2 = [contentView layoutMarginsGuide];
      trailingAnchor3 = [layoutMarginsGuide2 trailingAnchor];
      v112 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
      [array addObject:v112];
    }

    else
    {
      titleStackView8 = [(UIActivityActionGroupCell *)v3 titleStackView];
      leadingAnchor4 = [titleStackView8 leadingAnchor];
      layoutMarginsGuide3 = [contentView layoutMarginsGuide];
      leadingAnchor5 = [layoutMarginsGuide3 leadingAnchor];
      v117 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
      [array addObject:v117];

      titleStackView9 = [(UIActivityActionGroupCell *)v3 titleStackView];
      topAnchor3 = [titleStackView9 topAnchor];
      topAnchor4 = [contentView topAnchor];
      v121 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4 constant:4.0];
      [array addObject:v121];

      bottomAnchor3 = [contentView bottomAnchor];
      titleStackView10 = [(UIActivityActionGroupCell *)v3 titleStackView];
      bottomAnchor4 = [titleStackView10 bottomAnchor];
      v125 = [bottomAnchor3 constraintGreaterThanOrEqualToAnchor:bottomAnchor4 constant:4.0];
      [array addObject:v125];

      titleStackView11 = [(UIActivityActionGroupCell *)v3 titleStackView];
      centerYAnchor9 = [titleStackView11 centerYAnchor];
      centerYAnchor10 = [contentView centerYAnchor];
      v129 = [centerYAnchor9 constraintEqualToAnchor:centerYAnchor10];
      [array addObject:v129];

      imageStackView7 = [(UIActivityActionGroupCell *)v3 imageStackView];
      leadingAnchor6 = [imageStackView7 leadingAnchor];
      titleStackView12 = [(UIActivityActionGroupCell *)v3 titleStackView];
      trailingAnchor4 = [titleStackView12 trailingAnchor];
      v134 = [leadingAnchor6 constraintEqualToAnchor:trailingAnchor4 constant:16.0];
      [array addObject:v134];

      trailingAnchor5 = [contentView trailingAnchor];
      imageStackView8 = [(UIActivityActionGroupCell *)v3 imageStackView];
      trailingAnchor6 = [imageStackView8 trailingAnchor];
      [v15 lineHeight];
      v139 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:v138 + 6.0 + v19 * -0.5];
      [array addObject:v139];

      imageStackView9 = [(UIActivityActionGroupCell *)v3 imageStackView];
      centerYAnchor11 = [imageStackView9 centerYAnchor];
      centerYAnchor12 = [contentView centerYAnchor];
      v143 = [centerYAnchor11 constraintEqualToAnchor:centerYAnchor12];
      [array addObject:v143];

      titleStackView7 = [contentView trailingAnchor];
      trailingAnchor2 = [(UIActivityActionGroupCell *)v3 activitySlotView];
      layoutMarginsGuide2 = [trailingAnchor2 centerXAnchor];
      [v15 lineHeight];
      trailingAnchor3 = [titleStackView7 constraintEqualToAnchor:layoutMarginsGuide2 constant:v144 + 6.0];
      [array addObject:trailingAnchor3];
    }

    titleLabel7 = [(UIActivityActionGroupCell *)v3 titleLabel];
    heightAnchor8 = [titleLabel7 heightAnchor];
    v147 = [heightAnchor8 constraintGreaterThanOrEqualToConstant:0.0];
    titleLabelHeightAnchor = v3->_titleLabelHeightAnchor;
    v3->_titleLabelHeightAnchor = v147;

    [(NSLayoutConstraint *)v3->_titleLabelHeightAnchor setActive:0];
    [array addObject:v3->_titleLabelHeightAnchor];
    heightAnchor9 = [contentView heightAnchor];
    v150 = [heightAnchor9 constraintEqualToConstant:0.0];

    LODWORD(v151) = 1132068864;
    [v150 setPriority:v151];
    [array addObject:v150];
    [MEMORY[0x1E696ACD8] activateConstraints:array];
  }

  return v3;
}

- (NSDirectionalEdgeInsets)_preferredSeparatorInsetsForProposedInsets:(NSDirectionalEdgeInsets)insets
{
  trailing = insets.trailing;
  bottom = insets.bottom;
  leading = insets.leading;
  top = insets.top;
  if (_ShareSheetSolariumEnabled())
  {
    [(UIActivityActionGroupCell *)self layoutIfNeeded];
    traitCollection = [(UIActivityActionGroupCell *)self traitCollection];
    layoutDirection = [traitCollection layoutDirection];

    if (layoutDirection == 1)
    {
      [(UIActivityActionGroupCell *)self bounds];
      Width = CGRectGetWidth(v16);
      titleStackView = [(UIActivityActionGroupCell *)self titleStackView];
      [titleStackView frame];
      leading = Width - CGRectGetMaxX(v17);
    }

    else
    {
      titleStackView = [(UIActivityActionGroupCell *)self titleStackView];
      [titleStackView frame];
      leading = CGRectGetMinX(v18);
    }
  }

  v12 = top;
  v13 = leading;
  v14 = bottom;
  v15 = trailing;
  result.trailing = v15;
  result.bottom = v14;
  result.leading = v13;
  result.top = v12;
  return result;
}

- (id)subtitleLabel
{
  subtitleLabelIfLoaded = [(UIActivityActionGroupCell *)self subtitleLabelIfLoaded];

  if (!subtitleLabelIfLoaded)
  {
    v4 = objc_alloc_init(_UIActivityActionCellTitleLabel);
    [(_UIActivityActionCellTitleLabel *)v4 setTextStyle:*MEMORY[0x1E69DDD80]];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(_UIActivityActionCellTitleLabel *)v4 setTextColor:secondaryLabelColor];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(_UIActivityActionCellTitleLabel *)v4 setBackgroundColor:clearColor];

    [(_UIActivityActionCellTitleLabel *)v4 setLineBreakMode:4];
    [(_UIActivityActionCellTitleLabel *)v4 setAlpha:0.0];
    [(_UIActivityActionCellTitleLabel *)v4 setHidden:1];
    [(UIStackView *)self->_titleStackView addArrangedSubview:v4];
    [(UIActivityActionGroupCell *)self setSubtitleLabelIfLoaded:v4];
  }

  return [(UIActivityActionGroupCell *)self subtitleLabelIfLoaded];
}

- (id)badgeView
{
  badgeViewIfLoaded = [(UIActivityActionGroupCell *)self badgeViewIfLoaded];

  if (!badgeViewIfLoaded)
  {
    v4 = objc_alloc_init(_UIActivityActionCellBadgeView);
    [(_UIActivityActionCellBadgeView *)v4 setAlpha:0.0];
    [(_UIActivityActionCellBadgeView *)v4 setHidden:1];
    imageStackView = [(UIActivityActionGroupCell *)self imageStackView];
    [imageStackView insertArrangedSubview:v4 atIndex:0];

    [(UIActivityActionGroupCell *)self setBadgeViewIfLoaded:v4];
  }

  return [(UIActivityActionGroupCell *)self badgeViewIfLoaded];
}

- (id)statusImageView
{
  statusImageViewIfLoaded = [(UIActivityActionGroupCell *)self statusImageViewIfLoaded];

  if (!statusImageViewIfLoaded)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v5 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
    [v4 setPreferredSymbolConfiguration:v5];

    [v4 setContentMode:4];
    [v4 setAlpha:0.0];
    [v4 setHidden:1];
    LODWORD(v6) = 1144766464;
    [v4 setContentHuggingPriority:0 forAxis:v6];
    imageStackView = [(UIActivityActionGroupCell *)self imageStackView];
    badgeViewIfLoaded = [(UIActivityActionGroupCell *)self badgeViewIfLoaded];
    [imageStackView insertArrangedSubview:v4 atIndex:badgeViewIfLoaded != 0];

    [(UIActivityActionGroupCell *)self setStatusImageViewIfLoaded:v4];
  }

  return [(UIActivityActionGroupCell *)self statusImageViewIfLoaded];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = UIActivityActionGroupCell;
  [(UIActivityActionCell *)&v4 prepareForReuse];
  imageStackView = [(UIActivityActionGroupCell *)self imageStackView];
  [imageStackView setNeedsLayout];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  activitySlotView = [(UIActivityActionGroupCell *)self activitySlotView];
  layer = [activitySlotView layer];
  contents = [layer contents];

  titleSlotView = [(UIActivityActionGroupCell *)self titleSlotView];
  layer2 = [titleSlotView layer];
  contents2 = [layer2 contents];

  v15.receiver = self;
  v15.super_class = UIActivityActionGroupCell;
  [(UIActivityActionCell *)&v15 setHighlighted:highlightedCopy];
  activitySlotView2 = [(UIActivityActionGroupCell *)self activitySlotView];
  layer3 = [activitySlotView2 layer];
  [layer3 setContents:contents];

  titleSlotView2 = [(UIActivityActionGroupCell *)self titleSlotView];
  layer4 = [titleSlotView2 layer];
  [layer4 setContents:contents2];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  activitySlotView = [(UIActivityActionGroupCell *)self activitySlotView];
  layer = [activitySlotView layer];
  contents = [layer contents];

  titleSlotView = [(UIActivityActionGroupCell *)self titleSlotView];
  layer2 = [titleSlotView layer];
  contents2 = [layer2 contents];

  v15.receiver = self;
  v15.super_class = UIActivityActionGroupCell;
  [(UIActivityActionGroupCell *)&v15 setSelected:selectedCopy];
  activitySlotView2 = [(UIActivityActionGroupCell *)self activitySlotView];
  layer3 = [activitySlotView2 layer];
  [layer3 setContents:contents];

  titleSlotView2 = [(UIActivityActionGroupCell *)self titleSlotView];
  layer4 = [titleSlotView2 layer];
  [layer4 setContents:contents2];
}

- (void)setDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  v10.receiver = self;
  v10.super_class = UIActivityActionGroupCell;
  [(UIActivityActionCell *)&v10 setDisabled:?];
  if (disabledCopy)
  {
    v5 = 0.4;
  }

  else
  {
    v5 = 1.0;
  }

  titleStackView = [(UIActivityActionGroupCell *)self titleStackView];
  [titleStackView setAlpha:v5];

  imageStackView = [(UIActivityActionGroupCell *)self imageStackView];
  [imageStackView setAlpha:v5];

  activitySlotView = [(UIActivityActionGroupCell *)self activitySlotView];
  [activitySlotView setAlpha:v5];

  titleSlotView = [(UIActivityActionGroupCell *)self titleSlotView];
  [titleSlotView setAlpha:v5];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = self->_title;
  v9 = titleCopy;
  titleCopy2 = title;
  if (titleCopy2 == v9)
  {

    goto LABEL_8;
  }

  if ((v9 != 0) == (titleCopy2 == 0))
  {

    goto LABEL_7;
  }

  v8 = [(NSString *)v9 isEqual:titleCopy2];

  if ((v8 & 1) == 0)
  {
LABEL_7:
    objc_storeStrong(&self->_title, title);
    [(UIActivityActionGroupCell *)self _updateTitleView];
  }

LABEL_8:
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  subtitle = self->_subtitle;
  v9 = subtitleCopy;
  subtitleCopy2 = subtitle;
  if (subtitleCopy2 == v9)
  {

    goto LABEL_8;
  }

  if ((v9 != 0) == (subtitleCopy2 == 0))
  {

    goto LABEL_7;
  }

  v8 = [(NSString *)v9 isEqual:subtitleCopy2];

  if ((v8 & 1) == 0)
  {
LABEL_7:
    objc_storeStrong(&self->_subtitle, subtitle);
    [(UIActivityActionGroupCell *)self _updateSubtitleLabel];
  }

LABEL_8:
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_image, image);
    [(UIActivityActionGroupCell *)self _updateImageView];
    imageCopy = v6;
  }
}

- (void)setStatusImage:(id)image
{
  imageCopy = image;
  if (self->_statusImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_statusImage, image);
    [(UIActivityActionGroupCell *)self _updateStatusImageView];
    imageCopy = v6;
  }
}

- (void)setStatusImageTintColor:(id)color
{
  colorCopy = color;
  if (self->_statusImageTintColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_statusImageTintColor, color);
    [(UIActivityActionGroupCell *)self _updateStatusImageView];
    colorCopy = v6;
  }
}

- (void)setImageSlotID:(unsigned int)d
{
  if (self->_imageSlotID != d)
  {
    self->_imageSlotID = d;
    [(UIActivityActionGroupCell *)self _updateImageView];
  }
}

- (void)setTitleSlotID:(unsigned int)d
{
  if (self->_titleSlotID != d)
  {
    self->_titleSlotID = d;
    [(UIActivityActionGroupCell *)self _updateTitleView];
  }
}

- (void)setPlatterTextHeight:(double)height
{
  if (self->_platterTextHeight != height)
  {
    self->_platterTextHeight = height;
    [(UIActivityActionGroupCell *)self _updateTitleHeight];
  }
}

- (void)setContentTintColor:(id)color
{
  colorCopy = color;
  if (self->_contentTintColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_contentTintColor, color);
    [(UIActivityActionGroupCell *)self _updateContentTintColor];
    colorCopy = v6;
  }
}

- (void)_updateContentTintColor
{
  contentTintColor = [(UIActivityActionGroupCell *)self contentTintColor];
  titleLabel = [(UIActivityActionGroupCell *)self titleLabel];
  [titleLabel setTextColor:contentTintColor];

  contentTintColor2 = [(UIActivityActionGroupCell *)self contentTintColor];
  activityImageView = [(UIActivityActionGroupCell *)self activityImageView];
  [activityImageView setTintColor:contentTintColor2];

  contentTintColor3 = [(UIActivityActionGroupCell *)self contentTintColor];
  v7 = contentTintColor3;
  cGColor = [contentTintColor3 CGColor];
  activitySlotView = [(UIActivityActionGroupCell *)self activitySlotView];
  layer = [activitySlotView layer];
  [layer setContentsMultiplyColor:cGColor];
}

- (void)_updateSubtitleLabel
{
  subtitle = [(UIActivityActionGroupCell *)self subtitle];
  v4 = [subtitle length];

  subtitle2 = [(UIActivityActionGroupCell *)self subtitle];
  subtitleLabel = [(UIActivityActionGroupCell *)self subtitleLabel];
  [subtitleLabel setText:subtitle2];

  v7 = v4 == 0;
  if (v4)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  subtitleLabel2 = [(UIActivityActionGroupCell *)self subtitleLabel];
  [subtitleLabel2 setAlpha:v8];

  subtitleLabel3 = [(UIActivityActionGroupCell *)self subtitleLabel];
  [subtitleLabel3 setHidden:v7];
}

- (void)_updateBadgeWithText:(id)text textColor:(id)color backgroundColor:(id)backgroundColor
{
  backgroundColorCopy = backgroundColor;
  colorCopy = color;
  textCopy = text;
  v11 = [textCopy length];
  badgeView = [(UIActivityActionGroupCell *)self badgeView];
  titleLabel = [badgeView titleLabel];
  [titleLabel setText:textCopy];

  badgeView2 = [(UIActivityActionGroupCell *)self badgeView];
  titleLabel2 = [badgeView2 titleLabel];
  [titleLabel2 setTextColor:colorCopy];

  badgeView3 = [(UIActivityActionGroupCell *)self badgeView];
  [badgeView3 setBackgroundColor:backgroundColorCopy];

  v17 = v11 == 0;
  if (v11)
  {
    v18 = 1.0;
  }

  else
  {
    v18 = 0.0;
  }

  badgeView4 = [(UIActivityActionGroupCell *)self badgeView];
  [badgeView4 setAlpha:v18];

  badgeView5 = [(UIActivityActionGroupCell *)self badgeView];
  [badgeView5 setHidden:v17];
}

- (void)_updateImageView
{
  image = [(UIActivityActionGroupCell *)self image];

  image2 = [(UIActivityActionGroupCell *)self image];
  activityImageView = [(UIActivityActionGroupCell *)self activityImageView];
  [activityImageView setImage:image2];

  if (image)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  activityImageView2 = [(UIActivityActionGroupCell *)self activityImageView];
  [activityImageView2 setAlpha:v6];

  imageSlotID = [(UIActivityActionGroupCell *)self imageSlotID];
  if (imageSlotID)
  {
    activitySlotView3 = [MEMORY[0x1E6979320] objectForSlot:{-[UIActivityActionGroupCell imageSlotID](self, "imageSlotID")}];
    v10 = *MEMORY[0x1E6979DE0];
    activitySlotView = [(UIActivityActionGroupCell *)self activitySlotView];
    layer = [activitySlotView layer];
    [layer setContentsGravity:v10];

    activitySlotView2 = [(UIActivityActionGroupCell *)self activitySlotView];
    layer2 = [activitySlotView2 layer];
    [layer2 setContents:activitySlotView3];
  }

  else
  {
    activitySlotView3 = [(UIActivityActionGroupCell *)self activitySlotView];
    activitySlotView2 = [activitySlotView3 layer];
    [activitySlotView2 setContents:0];
  }

  if (imageSlotID)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.0;
  }

  activitySlotView4 = [(UIActivityActionGroupCell *)self activitySlotView];
  [activitySlotView4 setAlpha:v15];
}

- (void)_updateStatusImageView
{
  statusImage = [(UIActivityActionGroupCell *)self statusImage];

  statusImage2 = [(UIActivityActionGroupCell *)self statusImage];
  statusImageView = [(UIActivityActionGroupCell *)self statusImageView];
  [statusImageView setImage:statusImage2];

  v6 = statusImage == 0;
  v7 = statusImage == 0;
  if (v6)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 1.0;
  }

  statusImageView2 = [(UIActivityActionGroupCell *)self statusImageView];
  [statusImageView2 setAlpha:v8];

  statusImageView3 = [(UIActivityActionGroupCell *)self statusImageView];
  [statusImageView3 setHidden:v7];

  statusImageTintColor = [(UIActivityActionGroupCell *)self statusImageTintColor];
  statusImageView4 = [(UIActivityActionGroupCell *)self statusImageView];
  [statusImageView4 setTintColor:statusImageTintColor];
}

- (void)_updateTitleView
{
  title = [(UIActivityActionGroupCell *)self title];
  v4 = [title length];

  title2 = [(UIActivityActionGroupCell *)self title];
  titleLabel = [(UIActivityActionGroupCell *)self titleLabel];
  [titleLabel setText:title2];

  if (v4)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  titleLabel2 = [(UIActivityActionGroupCell *)self titleLabel];
  [titleLabel2 setAlpha:v7];

  titleSlotID = [(UIActivityActionGroupCell *)self titleSlotID];
  if (titleSlotID)
  {
    traitCollection = [(UIActivityActionGroupCell *)self traitCollection];
    layoutDirection = [traitCollection layoutDirection];

    v12 = MEMORY[0x1E6979DF8];
    if (layoutDirection != 1)
    {
      v12 = MEMORY[0x1E6979DD8];
    }

    v13 = MEMORY[0x1E6979320];
    v14 = *v12;
    titleSlotView5 = [v13 objectForSlot:{-[UIActivityActionGroupCell titleSlotID](self, "titleSlotID")}];
    v16 = _ShareSheetDeviceScreenScale();
    titleSlotView = [(UIActivityActionGroupCell *)self titleSlotView];
    layer = [titleSlotView layer];
    [layer setContentsScale:v16];

    v19 = _ShareSheetDeviceScreenScale();
    titleSlotView2 = [(UIActivityActionGroupCell *)self titleSlotView];
    layer2 = [titleSlotView2 layer];
    [layer2 setRasterizationScale:v19];

    titleSlotView3 = [(UIActivityActionGroupCell *)self titleSlotView];
    layer3 = [titleSlotView3 layer];
    [layer3 setContentsGravity:v14];

    titleSlotView4 = [(UIActivityActionGroupCell *)self titleSlotView];
    layer4 = [titleSlotView4 layer];
    [layer4 setContents:titleSlotView5];
  }

  else
  {
    titleSlotView5 = [(UIActivityActionGroupCell *)self titleSlotView];
    titleSlotView4 = [titleSlotView5 layer];
    [titleSlotView4 setContents:0];
  }

  if (titleSlotID)
  {
    v26 = 1.0;
  }

  else
  {
    v26 = 0.0;
  }

  titleSlotView6 = [(UIActivityActionGroupCell *)self titleSlotView];
  [titleSlotView6 setAlpha:v26];
}

- (void)_updateTitleHeight
{
  [(NSLayoutConstraint *)self->_titleLabelHeightAnchor constant];
  v4 = v3;
  [(UIActivityActionGroupCell *)self platterTextHeight];
  v6 = v5 / _ShareSheetDeviceScreenScale();
  [(NSLayoutConstraint *)self->_titleLabelHeightAnchor setConstant:v6];
  [(NSLayoutConstraint *)self->_titleLabelHeightAnchor setActive:v6 > 0.0];
  if (vabdd_f64(v4, v6) >= 0.00000011920929)
  {

    [(UIActivityActionGroupCell *)self setNeedsLayout];
  }
}

@end