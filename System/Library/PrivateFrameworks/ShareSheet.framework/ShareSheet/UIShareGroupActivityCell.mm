@interface UIShareGroupActivityCell
+ (double)maximumLabelHeightForTitle:(id)title width:(double)width traitCollection:(id)collection;
- (SHSheetContentLayoutSpec)layoutSpec;
- (id)_createTitleLabel;
- (id)_placeholderString;
- (id)_titleLabelFont;
- (id)createTargetedPreview;
- (void)_configureImageViewForPlaceholder:(BOOL)placeholder;
- (void)_installSubviewsIfNeeded;
- (void)_setLayoutSpec:(id)spec;
- (void)_updateBadgeSlotView;
- (void)_updateConstraints;
- (void)_updateDarkening;
- (void)_updateImageView;
- (void)_updateTitleView;
- (void)configureLayoutIfNeeded:(id)needed;
- (void)prepareForReuse;
- (void)setBadgeSlotID:(unsigned int)d;
- (void)setDisabled:(BOOL)disabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImage:(id)image;
- (void)setImageSlotID:(unsigned int)d;
- (void)setSelected:(BOOL)selected;
- (void)setTitle:(id)title;
- (void)setTitleSlotID:(unsigned int)d;
- (void)setupConstraints;
- (void)startPulsing;
- (void)stopPulsing;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation UIShareGroupActivityCell

+ (double)maximumLabelHeightForTitle:(id)title width:(double)width traitCollection:(id)collection
{
  collectionCopy = collection;
  titleCopy = title;
  SFUIShareSheetActivityCellSpecClass_0 = getSFUIShareSheetActivityCellSpecClass_0();
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v11 = [SFUIShareSheetActivityCellSpecClass_0 titleLabelFontTextStyleForIdiom:{objc_msgSend(currentDevice, "userInterfaceIdiom")}];

  v12 = *MEMORY[0x1E69DDC50];
  preferredContentSizeCategory = [collectionCopy preferredContentSizeCategory];
  v14 = UIContentSizeCategoryCompareToCategory(v12, preferredContentSizeCategory);

  if (v14)
  {
    v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v11];
  }

  else
  {
    v16 = MEMORY[0x1E69DB880];
    v17 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC58]];
    v18 = [v16 preferredFontDescriptorWithTextStyle:v11 compatibleWithTraitCollection:v17];

    v15 = [MEMORY[0x1E69DB878] fontWithDescriptor:v18 size:0.0];
  }

  v19 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v19 setFont:v15];
  [v19 setNumberOfLines:0];
  [v19 _setHyphenationFactor:0.0];
  preferredContentSizeCategory2 = [collectionCopy preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory2);

  if (IsAccessibilityCategory)
  {
    v22 = 4;
  }

  else
  {
    v22 = 1;
  }

  [v19 setTextAlignment:v22];
  [v19 setText:titleCopy];

  [v19 sizeThatFits:{width, 1.79769313e308}];
  v24 = ceil(v23);

  return v24;
}

- (id)_placeholderString
{
  traitCollection = [(UIShareGroupActivityCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    v5 = @"Apple\nInc\n";
  }

  else
  {
    v5 = @"Apple\nInc";
  }

  return v5;
}

- (id)_titleLabelFont
{
  SFUIShareSheetActivityCellSpecClass_0 = getSFUIShareSheetActivityCellSpecClass_0();
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [SFUIShareSheetActivityCellSpecClass_0 titleLabelFontTextStyleForIdiom:{objc_msgSend(currentDevice, "userInterfaceIdiom")}];

  v6 = *MEMORY[0x1E69DDC50];
  traitCollection = [(UIShareGroupActivityCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v9 = UIContentSizeCategoryCompareToCategory(v6, preferredContentSizeCategory);

  if (v9)
  {
    v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v5];
  }

  else
  {
    v11 = MEMORY[0x1E69DB880];
    v12 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC58]];
    v13 = [v11 preferredFontDescriptorWithTextStyle:v5 compatibleWithTraitCollection:v12];

    v10 = [MEMORY[0x1E69DB878] fontWithDescriptor:v13 size:0.0];
  }

  return v10;
}

- (id)_createTitleLabel
{
  _placeholderString = [(UIShareGroupActivityCell *)self _placeholderString];
  SFUIShareSheetActivityCellSpecClass_0 = getSFUIShareSheetActivityCellSpecClass_0();
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v6 = [SFUIShareSheetActivityCellSpecClass_0 titleLabelFontTextStyleForIdiom:{objc_msgSend(currentDevice, "userInterfaceIdiom")}];

  v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  _titleLabelFont = [(UIShareGroupActivityCell *)self _titleLabelFont];
  [v7 setFont:_titleLabelFont];

  traitCollection = [(UIShareGroupActivityCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    v12 = 4;
  }

  else
  {
    v12 = 1;
  }

  [v7 setTextAlignment:v12];
  [v7 setNumberOfLines:0];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 _setHyphenationFactor:0.0];
  [v7 setText:_placeholderString];
  [v7 setAlpha:0.0];
  [v7 setAccessibilityIdentifier:@"cellTitleLabel"];

  return v7;
}

- (void)_installSubviewsIfNeeded
{
  if (![(UIShareGroupActivityCell *)self didInstallSubviews])
  {
    [(UIShareGroupActivityCell *)self setDidInstallSubviews:1];
    v93 = [MEMORY[0x1E69DC730] effectWithStyle:9];
    v3 = [MEMORY[0x1E69DD248] effectForBlurEffect:? style:?];
    v4 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v3];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIShareGroupActivityCell *)self setVibrantLabelView:v4];
    contentView = [(UIShareGroupActivityCell *)self contentView];
    vibrantLabelView = [(UIShareGroupActivityCell *)self vibrantLabelView];
    [contentView addSubview:vibrantLabelView];

    _createTitleLabel = [(UIShareGroupActivityCell *)self _createTitleLabel];
    [(UIShareGroupActivityCell *)self setTitleLabel:_createTitleLabel];

    vibrantLabelView2 = [(UIShareGroupActivityCell *)self vibrantLabelView];
    contentView2 = [vibrantLabelView2 contentView];
    titleLabel = [(UIShareGroupActivityCell *)self titleLabel];
    [contentView2 addSubview:titleLabel];

    _createTitleLabel2 = [(UIShareGroupActivityCell *)self _createTitleLabel];
    [(UIShareGroupActivityCell *)self setLabelForPositioning:_createTitleLabel2];

    vibrantLabelView3 = [(UIShareGroupActivityCell *)self vibrantLabelView];
    contentView3 = [vibrantLabelView3 contentView];
    labelForPositioning = [(UIShareGroupActivityCell *)self labelForPositioning];
    [contentView3 addSubview:labelForPositioning];

    v15 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8A78]];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v18 = 13.5;
    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      [v15 continuousCornerRadius];
      v18 = v19;
    }

    v20 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(UIShareGroupActivityCell *)self setImageSlotView:v20];

    imageSlotView = [(UIShareGroupActivityCell *)self imageSlotView];
    [imageSlotView setAlpha:0.0];

    imageSlotView2 = [(UIShareGroupActivityCell *)self imageSlotView];
    [imageSlotView2 setClipsToBounds:1];

    imageSlotView3 = [(UIShareGroupActivityCell *)self imageSlotView];
    [imageSlotView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    imageSlotView4 = [(UIShareGroupActivityCell *)self imageSlotView];
    layer = [imageSlotView4 layer];
    [layer setCornerRadius:v18];

    v26 = *MEMORY[0x1E69796E8];
    imageSlotView5 = [(UIShareGroupActivityCell *)self imageSlotView];
    layer2 = [imageSlotView5 layer];
    [layer2 setCornerCurve:v26];

    blackColor = [MEMORY[0x1E69DC888] blackColor];
    cGColor = [blackColor CGColor];
    imageSlotView6 = [(UIShareGroupActivityCell *)self imageSlotView];
    layer3 = [imageSlotView6 layer];
    [layer3 setShadowColor:cGColor];

    imageSlotView7 = [(UIShareGroupActivityCell *)self imageSlotView];
    layer4 = [imageSlotView7 layer];
    LODWORD(v35) = 1032805417;
    [layer4 setShadowOpacity:v35];

    v36 = *MEMORY[0x1E695F060];
    v37 = *(MEMORY[0x1E695F060] + 8);
    imageSlotView8 = [(UIShareGroupActivityCell *)self imageSlotView];
    layer5 = [imageSlotView8 layer];
    [layer5 setShadowOffset:{v36, v37}];

    imageSlotView9 = [(UIShareGroupActivityCell *)self imageSlotView];
    layer6 = [imageSlotView9 layer];
    [layer6 setShadowRadius:10.0];

    imageSlotView10 = [(UIShareGroupActivityCell *)self imageSlotView];
    layer7 = [imageSlotView10 layer];
    [layer7 setShadowPathIsBounds:1];

    imageSlotView11 = [(UIShareGroupActivityCell *)self imageSlotView];
    layer8 = [imageSlotView11 layer];
    [layer8 setShouldRasterize:0];

    imageSlotView12 = [(UIShareGroupActivityCell *)self imageSlotView];
    layer9 = [imageSlotView12 layer];
    [layer9 setMasksToBounds:0];

    contentView4 = [(UIShareGroupActivityCell *)self contentView];
    imageSlotView13 = [(UIShareGroupActivityCell *)self imageSlotView];
    [contentView4 addSubview:imageSlotView13];

    v50 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [(UIShareGroupActivityCell *)self setActivityImageView:v50];

    traitCollection = [(UIShareGroupActivityCell *)self traitCollection];
    v52 = SHSheetUISpecPlaceholderColor([traitCollection userInterfaceStyle]);
    activityImageView = [(UIShareGroupActivityCell *)self activityImageView];
    [activityImageView setBackgroundColor:v52];

    activityImageView2 = [(UIShareGroupActivityCell *)self activityImageView];
    [activityImageView2 setClipsToBounds:1];

    activityImageView3 = [(UIShareGroupActivityCell *)self activityImageView];
    [activityImageView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    activityImageView4 = [(UIShareGroupActivityCell *)self activityImageView];
    [activityImageView4 setContentMode:2];

    activityImageView5 = [(UIShareGroupActivityCell *)self activityImageView];
    layer10 = [activityImageView5 layer];
    [layer10 setCornerRadius:v18];

    activityImageView6 = [(UIShareGroupActivityCell *)self activityImageView];
    layer11 = [activityImageView6 layer];
    [layer11 setCornerCurve:v26];

    activityImageView7 = [(UIShareGroupActivityCell *)self activityImageView];
    layer12 = [activityImageView7 layer];
    [layer12 setShadowOffset:{v36, v37}];

    activityImageView8 = [(UIShareGroupActivityCell *)self activityImageView];
    layer13 = [activityImageView8 layer];
    [layer13 setShadowRadius:10.0];

    activityImageView9 = [(UIShareGroupActivityCell *)self activityImageView];
    layer14 = [activityImageView9 layer];
    [layer14 setShadowPathIsBounds:1];

    activityImageView10 = [(UIShareGroupActivityCell *)self activityImageView];
    layer15 = [activityImageView10 layer];
    [layer15 setShouldRasterize:0];

    activityImageView11 = [(UIShareGroupActivityCell *)self activityImageView];
    layer16 = [activityImageView11 layer];
    [layer16 setMasksToBounds:0];

    activityImageView12 = [(UIShareGroupActivityCell *)self activityImageView];
    [activityImageView12 setAccessibilityIdentifier:@"activityImageView"];

    contentView5 = [(UIShareGroupActivityCell *)self contentView];
    activityImageView13 = [(UIShareGroupActivityCell *)self activityImageView];
    [contentView5 addSubview:activityImageView13];

    v74 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(UIShareGroupActivityCell *)self setTitleSlotView:v74];

    titleSlotView = [(UIShareGroupActivityCell *)self titleSlotView];
    [titleSlotView setAlpha:0.0];

    titleSlotView2 = [(UIShareGroupActivityCell *)self titleSlotView];
    [titleSlotView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    vibrantLabelView4 = [(UIShareGroupActivityCell *)self vibrantLabelView];
    contentView6 = [vibrantLabelView4 contentView];
    titleSlotView3 = [(UIShareGroupActivityCell *)self titleSlotView];
    [contentView6 addSubview:titleSlotView3];

    v80 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(UIShareGroupActivityCell *)self setBadgeSlotView:v80];

    badgeSlotView = [(UIShareGroupActivityCell *)self badgeSlotView];
    [badgeSlotView setAlpha:0.0];

    badgeSlotView2 = [(UIShareGroupActivityCell *)self badgeSlotView];
    [badgeSlotView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
    badgeSlotView3 = [(UIShareGroupActivityCell *)self badgeSlotView];
    [badgeSlotView3 setBackgroundColor:systemRedColor];

    SFUIShareSheetActivityCellSpecClass_0 = getSFUIShareSheetActivityCellSpecClass_0();
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    [SFUIShareSheetActivityCellSpecClass_0 nearbyAirDropBadgeSizeForIdiom:{objc_msgSend(currentDevice2, "userInterfaceIdiom")}];
    v88 = v87 * 0.5;
    badgeSlotView4 = [(UIShareGroupActivityCell *)self badgeSlotView];
    layer17 = [badgeSlotView4 layer];
    [layer17 setCornerRadius:v88];

    contentView7 = [(UIShareGroupActivityCell *)self contentView];
    badgeSlotView5 = [(UIShareGroupActivityCell *)self badgeSlotView];
    [contentView7 addSubview:badgeSlotView5];

    [(UIShareGroupActivityCell *)self _configureImageViewForPlaceholder:1];
    [(UIShareGroupActivityCell *)self setupConstraints];
  }
}

- (void)_setLayoutSpec:(id)spec
{
  specCopy = spec;
  [(UIShareGroupActivityCell *)self setLayoutSpec:specCopy];
  deviceClass = [specCopy deviceClass];

  v6 = &regularHeight5_8Rounded_2;
  v7 = &visionLarge_1;
  v8 = &regularHeight_2;
  if (deviceClass == 9)
  {
    v8 = &visionCompact_1;
  }

  if (deviceClass != 10)
  {
    v7 = v8;
  }

  if (deviceClass != 3)
  {
    v6 = v7;
  }

  layout_2 = v6;
  if (_ShareSheetSolariumEnabled())
  {
    layout_2 = &solariumLayout_1;
  }
}

- (void)configureLayoutIfNeeded:(id)needed
{
  neededCopy = needed;
  layoutSpec = [(UIShareGroupActivityCell *)self layoutSpec];

  [(UIShareGroupActivityCell *)self _setLayoutSpec:neededCopy];
  if ([(UIShareGroupActivityCell *)self didInstallSubviews])
  {
    v5 = neededCopy;
    if (layoutSpec == neededCopy)
    {
      goto LABEL_6;
    }

    v6 = MEMORY[0x1E696ACD8];
    allConstraints = [(UIShareGroupActivityCell *)self allConstraints];
    [v6 deactivateConstraints:allConstraints];

    [(UIShareGroupActivityCell *)self setupConstraints];
  }

  else
  {
    [(UIShareGroupActivityCell *)self _installSubviewsIfNeeded];
  }

  v5 = neededCopy;
LABEL_6:
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = UIShareGroupActivityCell;
  [(UIShareGroupActivityCell *)&v3 prepareForReuse];
  [(UIShareGroupActivityCell *)self setImage:0];
  [(UIShareGroupActivityCell *)self setImageSlotID:0];
  [(UIShareGroupActivityCell *)self _configureImageViewForPlaceholder:1];
  [(UIShareGroupActivityCell *)self stopPulsing];
}

- (void)setupConstraints
{
  v173[18] = *MEMORY[0x1E69E9840];
  contentView = [(UIShareGroupActivityCell *)self contentView];
  layoutSpec = [(UIShareGroupActivityCell *)self layoutSpec];
  [layoutSpec sharingAppIconWidth];
  v5 = v4;

  SFUIShareSheetActivityCellSpecClass_0 = getSFUIShareSheetActivityCellSpecClass_0();
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  [SFUIShareSheetActivityCellSpecClass_0 nearbyAirDropBadgeSizeForIdiom:{objc_msgSend(currentDevice, "userInterfaceIdiom")}];
  v9 = v8;

  traitCollection = [(UIShareGroupActivityCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  v168 = IsAccessibilityCategory;
  if (IsAccessibilityCategory)
  {
    [(UIShareGroupActivityCell *)self labelForPositioning];
  }

  else
  {
    [(UIShareGroupActivityCell *)self titleLabel];
  }
  v13 = ;
  v14 = MEMORY[0x1E695DF70];
  imageSlotView = [(UIShareGroupActivityCell *)self imageSlotView];
  widthAnchor = [imageSlotView widthAnchor];
  v159 = [widthAnchor constraintEqualToConstant:v5];
  v173[0] = v159;
  imageSlotView2 = [(UIShareGroupActivityCell *)self imageSlotView];
  heightAnchor = [imageSlotView2 heightAnchor];
  v150 = [heightAnchor constraintEqualToConstant:v5];
  v173[1] = v150;
  activityImageView = [(UIShareGroupActivityCell *)self activityImageView];
  widthAnchor2 = [activityImageView widthAnchor];
  imageSlotView3 = [(UIShareGroupActivityCell *)self imageSlotView];
  widthAnchor3 = [imageSlotView3 widthAnchor];
  v135 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];
  v173[2] = v135;
  activityImageView2 = [(UIShareGroupActivityCell *)self activityImageView];
  heightAnchor2 = [activityImageView2 heightAnchor];
  imageSlotView4 = [(UIShareGroupActivityCell *)self imageSlotView];
  heightAnchor3 = [imageSlotView4 heightAnchor];
  v120 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
  v173[3] = v120;
  activityImageView3 = [(UIShareGroupActivityCell *)self activityImageView];
  centerXAnchor = [activityImageView3 centerXAnchor];
  imageSlotView5 = [(UIShareGroupActivityCell *)self imageSlotView];
  centerXAnchor2 = [imageSlotView5 centerXAnchor];
  v108 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v173[4] = v108;
  activityImageView4 = [(UIShareGroupActivityCell *)self activityImageView];
  centerYAnchor = [activityImageView4 centerYAnchor];
  imageSlotView6 = [(UIShareGroupActivityCell *)self imageSlotView];
  centerYAnchor2 = [imageSlotView6 centerYAnchor];
  v98 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v173[5] = v98;
  titleSlotView = [(UIShareGroupActivityCell *)self titleSlotView];
  centerXAnchor3 = [titleSlotView centerXAnchor];
  centerXAnchor4 = [v13 centerXAnchor];
  v90 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v173[6] = v90;
  titleSlotView2 = [(UIShareGroupActivityCell *)self titleSlotView];
  centerYAnchor3 = [titleSlotView2 centerYAnchor];
  centerYAnchor4 = [v13 centerYAnchor];
  v82 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v173[7] = v82;
  titleSlotView3 = [(UIShareGroupActivityCell *)self titleSlotView];
  heightAnchor4 = [titleSlotView3 heightAnchor];
  heightAnchor5 = [v13 heightAnchor];
  v75 = [heightAnchor4 constraintEqualToAnchor:heightAnchor5];
  v173[8] = v75;
  titleSlotView4 = [(UIShareGroupActivityCell *)self titleSlotView];
  widthAnchor4 = [titleSlotView4 widthAnchor];
  widthAnchor5 = [v13 widthAnchor];
  v71 = [widthAnchor4 constraintEqualToAnchor:widthAnchor5];
  v173[9] = v71;
  vibrantLabelView = [(UIShareGroupActivityCell *)self vibrantLabelView];
  centerXAnchor5 = [vibrantLabelView centerXAnchor];
  centerXAnchor6 = [v13 centerXAnchor];
  v67 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  v173[10] = v67;
  vibrantLabelView2 = [(UIShareGroupActivityCell *)self vibrantLabelView];
  centerYAnchor5 = [vibrantLabelView2 centerYAnchor];
  centerYAnchor6 = [v13 centerYAnchor];
  v63 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  v173[11] = v63;
  vibrantLabelView3 = [(UIShareGroupActivityCell *)self vibrantLabelView];
  heightAnchor6 = [vibrantLabelView3 heightAnchor];
  heightAnchor7 = [v13 heightAnchor];
  v59 = [heightAnchor6 constraintEqualToAnchor:heightAnchor7];
  v173[12] = v59;
  vibrantLabelView4 = [(UIShareGroupActivityCell *)self vibrantLabelView];
  widthAnchor6 = [vibrantLabelView4 widthAnchor];
  v169 = v13;
  widthAnchor7 = [v13 widthAnchor];
  v55 = [widthAnchor6 constraintEqualToAnchor:widthAnchor7];
  v173[13] = v55;
  badgeSlotView = [(UIShareGroupActivityCell *)self badgeSlotView];
  trailingAnchor = [badgeSlotView trailingAnchor];
  imageSlotView7 = [(UIShareGroupActivityCell *)self imageSlotView];
  trailingAnchor2 = [imageSlotView7 trailingAnchor];
  v50 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:*(layout_2 + 32)];
  v173[14] = v50;
  badgeSlotView2 = [(UIShareGroupActivityCell *)self badgeSlotView];
  topAnchor = [badgeSlotView2 topAnchor];
  imageSlotView8 = [(UIShareGroupActivityCell *)self imageSlotView];
  topAnchor2 = [imageSlotView8 topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:*(layout_2 + 24)];
  v173[15] = v15;
  badgeSlotView3 = [(UIShareGroupActivityCell *)self badgeSlotView];
  widthAnchor8 = [badgeSlotView3 widthAnchor];
  v18 = [widthAnchor8 constraintEqualToConstant:v9];
  v173[16] = v18;
  badgeSlotView4 = [(UIShareGroupActivityCell *)self badgeSlotView];
  heightAnchor8 = [badgeSlotView4 heightAnchor];
  v21 = [heightAnchor8 constraintEqualToConstant:v9];
  v173[17] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v173 count:18];
  v23 = [v14 arrayWithArray:v22];
  [(UIShareGroupActivityCell *)self setAllConstraints:v23];

  labelForPositioning = [(UIShareGroupActivityCell *)self labelForPositioning];
  topAnchor3 = [labelForPositioning topAnchor];
  topAnchor4 = [contentView topAnchor];
  v157 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4 constant:8.0];
  v172[0] = v157;
  bottomAnchor = [contentView bottomAnchor];
  labelForPositioning2 = [(UIShareGroupActivityCell *)self labelForPositioning];
  bottomAnchor2 = [labelForPositioning2 bottomAnchor];
  v145 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:8.0];
  v172[1] = v145;
  labelForPositioning3 = [(UIShareGroupActivityCell *)self labelForPositioning];
  centerYAnchor7 = [labelForPositioning3 centerYAnchor];
  activityImageView5 = [(UIShareGroupActivityCell *)self activityImageView];
  centerYAnchor8 = [activityImageView5 centerYAnchor];
  v130 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
  v172[2] = v130;
  imageSlotView9 = [(UIShareGroupActivityCell *)self imageSlotView];
  leadingAnchor = [imageSlotView9 leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v118 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
  v172[3] = v118;
  imageSlotView10 = [(UIShareGroupActivityCell *)self imageSlotView];
  centerYAnchor9 = [imageSlotView10 centerYAnchor];
  centerYAnchor10 = [contentView centerYAnchor];
  v109 = [centerYAnchor9 constraintEqualToAnchor:centerYAnchor10];
  v172[4] = v109;
  labelForPositioning4 = [(UIShareGroupActivityCell *)self labelForPositioning];
  trailingAnchor3 = [labelForPositioning4 trailingAnchor];
  trailingAnchor4 = [contentView trailingAnchor];
  v101 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v172[5] = v101;
  labelForPositioning5 = [(UIShareGroupActivityCell *)self labelForPositioning];
  leadingAnchor3 = [labelForPositioning5 leadingAnchor];
  imageSlotView11 = [(UIShareGroupActivityCell *)self imageSlotView];
  trailingAnchor5 = [imageSlotView11 trailingAnchor];
  v91 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor5 constant:14.0];
  v172[6] = v91;
  labelForPositioning6 = [(UIShareGroupActivityCell *)self labelForPositioning];
  leadingAnchor4 = [labelForPositioning6 leadingAnchor];
  titleLabel = [(UIShareGroupActivityCell *)self titleLabel];
  leadingAnchor5 = [titleLabel leadingAnchor];
  v81 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
  v172[7] = v81;
  labelForPositioning7 = [(UIShareGroupActivityCell *)self labelForPositioning];
  trailingAnchor6 = [labelForPositioning7 trailingAnchor];
  titleLabel2 = [(UIShareGroupActivityCell *)self titleLabel];
  trailingAnchor7 = [titleLabel2 trailingAnchor];
  v26 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
  v172[8] = v26;
  labelForPositioning8 = [(UIShareGroupActivityCell *)self labelForPositioning];
  centerYAnchor11 = [labelForPositioning8 centerYAnchor];
  titleLabel3 = [(UIShareGroupActivityCell *)self titleLabel];
  centerYAnchor12 = [titleLabel3 centerYAnchor];
  v31 = [centerYAnchor11 constraintEqualToAnchor:centerYAnchor12];
  v172[9] = v31;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v172 count:10];
  [(UIShareGroupActivityCell *)self setLargeTextConstraints:v32];

  imageSlotView12 = [(UIShareGroupActivityCell *)self imageSlotView];
  centerXAnchor7 = [imageSlotView12 centerXAnchor];
  centerXAnchor8 = [contentView centerXAnchor];
  v158 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
  v171[0] = v158;
  imageSlotView13 = [(UIShareGroupActivityCell *)self imageSlotView];
  centerXAnchor9 = [imageSlotView13 centerXAnchor];
  titleLabel4 = [(UIShareGroupActivityCell *)self titleLabel];
  centerXAnchor10 = [titleLabel4 centerXAnchor];
  v143 = [centerXAnchor9 constraintEqualToAnchor:centerXAnchor10];
  v171[1] = v143;
  imageSlotView14 = [(UIShareGroupActivityCell *)self imageSlotView];
  topAnchor5 = [imageSlotView14 topAnchor];
  topAnchor6 = [contentView topAnchor];
  v131 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:*layout_2];
  v171[2] = v131;
  titleLabel5 = [(UIShareGroupActivityCell *)self titleLabel];
  widthAnchor9 = [titleLabel5 widthAnchor];
  widthAnchor10 = [contentView widthAnchor];
  v119 = [widthAnchor9 constraintEqualToAnchor:widthAnchor10 constant:*(layout_2 + 40)];
  v171[3] = v119;
  titleLabel6 = [(UIShareGroupActivityCell *)self titleLabel];
  topAnchor7 = [titleLabel6 topAnchor];
  imageSlotView15 = [(UIShareGroupActivityCell *)self imageSlotView];
  bottomAnchor3 = [imageSlotView15 bottomAnchor];
  v36 = [topAnchor7 constraintEqualToAnchor:bottomAnchor3 constant:*(layout_2 + 8)];
  v171[4] = v36;
  titleLabel7 = [(UIShareGroupActivityCell *)self titleLabel];
  bottomAnchor4 = [titleLabel7 bottomAnchor];
  bottomAnchor5 = [contentView bottomAnchor];
  v40 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:*(layout_2 + 16)];
  v171[5] = v40;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v171 count:6];
  [(UIShareGroupActivityCell *)self setRegularConstraints:v41];

  allConstraints = [(UIShareGroupActivityCell *)self allConstraints];
  if (v168)
  {
    [(UIShareGroupActivityCell *)self largeTextConstraints];
  }

  else
  {
    [(UIShareGroupActivityCell *)self regularConstraints];
  }
  v43 = ;
  [allConstraints addObjectsFromArray:v43];

  v44 = MEMORY[0x1E696ACD8];
  allConstraints2 = [(UIShareGroupActivityCell *)self allConstraints];
  [v44 activateConstraints:allConstraints2];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = UIShareGroupActivityCell;
  changeCopy = change;
  [(UIShareGroupActivityCell *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(UIShareGroupActivityCell *)self traitCollection:v8.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    [(UIShareGroupActivityCell *)self _updateConstraints];
  }
}

- (id)createTargetedPreview
{
  image = [(UIShareGroupActivityCell *)self image];

  if (image)
  {
    [(UIShareGroupActivityCell *)self activityImageView];
  }

  else
  {
    [(UIShareGroupActivityCell *)self imageSlotView];
  }
  v4 = ;
  [v4 frame];
  v5 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:0.0 cornerRadius:0.0];
  v6 = objc_alloc_init(MEMORY[0x1E69DCE28]);
  [v6 setVisiblePath:v5];
  v7 = _ShareSheetSolariumEnabled();
  v8 = objc_alloc(MEMORY[0x1E69DD070]);
  if (v7)
  {
    v9 = [v8 initWithView:v4];
  }

  else
  {
    v9 = [v8 initWithView:v4 parameters:v6];
  }

  v10 = v9;

  return v10;
}

- (void)_configureImageViewForPlaceholder:(BOOL)placeholder
{
  placeholderCopy = placeholder;
  if (placeholder)
  {
    v6 = 1.0;
  }

  else
  {
    activityImageView = [(UIShareGroupActivityCell *)self activityImageView];
    [activityImageView alpha];
    v6 = v7;
  }

  activityImageView2 = [(UIShareGroupActivityCell *)self activityImageView];
  [activityImageView2 setAlpha:v6];

  if (placeholderCopy)
  {
    activityImageView3 = [(UIShareGroupActivityCell *)self activityImageView];
    layer = [activityImageView3 layer];
    [layer setShadowOpacity:0.0];

    traitCollection = [(UIShareGroupActivityCell *)self traitCollection];
    SHSheetUISpecPlaceholderColor([traitCollection userInterfaceStyle]);
  }

  else
  {

    traitCollection = [(UIShareGroupActivityCell *)self activityImageView];
    layer2 = [traitCollection layer];
    LODWORD(v13) = 1032805417;
    [layer2 setShadowOpacity:v13];

    [MEMORY[0x1E69DC888] clearColor];
  }
  v15 = ;
  activityImageView4 = [(UIShareGroupActivityCell *)self activityImageView];
  [activityImageView4 setBackgroundColor:v15];

  if (placeholderCopy)
  {

    v15 = traitCollection;
  }
}

- (void)_updateConstraints
{
  _titleLabelFont = [(UIShareGroupActivityCell *)self _titleLabelFont];
  titleLabel = [(UIShareGroupActivityCell *)self titleLabel];
  [titleLabel setFont:_titleLabelFont];

  traitCollection = [(UIShareGroupActivityCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    v8 = 4;
  }

  else
  {
    v8 = 1;
  }

  titleLabel2 = [(UIShareGroupActivityCell *)self titleLabel];
  [titleLabel2 setTextAlignment:v8];

  v10 = MEMORY[0x1E696ACD8];
  if (IsAccessibilityCategory)
  {
    regularConstraints = [(UIShareGroupActivityCell *)self regularConstraints];
    [v10 deactivateConstraints:regularConstraints];

    v12 = MEMORY[0x1E696ACD8];
    [(UIShareGroupActivityCell *)self largeTextConstraints];
  }

  else
  {
    largeTextConstraints = [(UIShareGroupActivityCell *)self largeTextConstraints];
    [v10 deactivateConstraints:largeTextConstraints];

    v12 = MEMORY[0x1E696ACD8];
    [(UIShareGroupActivityCell *)self regularConstraints];
  }
  v14 = ;
  [v12 activateConstraints:v14];

  [(UIShareGroupActivityCell *)self setNeedsLayout];
}

- (void)setDisabled:(BOOL)disabled
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_disabled != disabled)
  {
    disabledCopy = disabled;
    v5 = share_sheet_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [(UIShareGroupActivityCell *)self identifier];
      v7 = identifier;
      v8 = "no";
      if (disabledCopy)
      {
        v8 = "yes";
      }

      v9 = 138412546;
      v10 = identifier;
      v11 = 2080;
      v12 = v8;
      _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Updating Activity Cell with identifier:%@ to disabled:%s", &v9, 0x16u);
    }

    self->_disabled = disabledCopy;
    [(UIShareGroupActivityCell *)self _updateDarkening];
  }
}

- (void)_updateDarkening
{
  v27[1] = *MEMORY[0x1E69E9840];
  imageSlotView = [(UIShareGroupActivityCell *)self imageSlotView];
  layer = [imageSlotView layer];
  contents = [layer contents];

  titleSlotView = [(UIShareGroupActivityCell *)self titleSlotView];
  layer2 = [titleSlotView layer];
  contents2 = [layer2 contents];

  badgeSlotView = [(UIShareGroupActivityCell *)self badgeSlotView];
  layer3 = [badgeSlotView layer];
  contents3 = [layer3 contents];

  imageSlotView2 = [(UIShareGroupActivityCell *)self imageSlotView];
  layer4 = [imageSlotView2 layer];
  [layer4 setContents:contents];

  titleSlotView2 = [(UIShareGroupActivityCell *)self titleSlotView];
  layer5 = [titleSlotView2 layer];
  [layer5 setContents:contents2];

  badgeSlotView2 = [(UIShareGroupActivityCell *)self badgeSlotView];
  layer6 = [badgeSlotView2 layer];
  [layer6 setContents:contents3];

  if (([(UIShareGroupActivityCell *)self isHighlighted]& 1) != 0 || [(UIShareGroupActivityCell *)self isDisabled])
  {
    badgeSlotView2 = [MEMORY[0x1E69DC888] grayColor];
    cGColor = [badgeSlotView2 CGColor];
    v19 = 1;
  }

  else
  {
    v19 = 0;
    cGColor = 0;
  }

  imageSlotView3 = [(UIShareGroupActivityCell *)self imageSlotView];
  layer7 = [imageSlotView3 layer];
  [layer7 setContentsMultiplyColor:cGColor];

  if (v19)
  {
  }

  if (([(UIShareGroupActivityCell *)self isHighlighted]& 1) != 0 || [(UIShareGroupActivityCell *)self isDisabled])
  {
    v22 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CB0]];
    v23 = [MEMORY[0x1E69DC888] colorWithWhite:0.5 alpha:1.0];
    [v22 setValue:objc_msgSend(v23 forKey:{"CGColor"), @"inputColor"}];

    v27[0] = v22;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  }

  else
  {
    v24 = 0;
  }

  activityImageView = [(UIShareGroupActivityCell *)self activityImageView];
  layer8 = [activityImageView layer];
  [layer8 setFilters:v24];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([(UIShareGroupActivityCell *)self isHighlighted]!= highlighted)
  {
    v5.receiver = self;
    v5.super_class = UIShareGroupActivityCell;
    [(UIShareGroupActivityCell *)&v5 setHighlighted:highlightedCopy];
    [(UIShareGroupActivityCell *)self _updateDarkening];
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  imageSlotView = [(UIShareGroupActivityCell *)self imageSlotView];
  layer = [imageSlotView layer];
  contents = [layer contents];

  titleSlotView = [(UIShareGroupActivityCell *)self titleSlotView];
  layer2 = [titleSlotView layer];
  contents2 = [layer2 contents];

  badgeSlotView = [(UIShareGroupActivityCell *)self badgeSlotView];
  layer3 = [badgeSlotView layer];
  contents3 = [layer3 contents];

  v20.receiver = self;
  v20.super_class = UIShareGroupActivityCell;
  [(UIShareGroupActivityCell *)&v20 setSelected:selectedCopy];
  imageSlotView2 = [(UIShareGroupActivityCell *)self imageSlotView];
  layer4 = [imageSlotView2 layer];
  [layer4 setContents:contents];

  titleSlotView2 = [(UIShareGroupActivityCell *)self titleSlotView];
  layer5 = [titleSlotView2 layer];
  [layer5 setContents:contents2];

  badgeSlotView2 = [(UIShareGroupActivityCell *)self badgeSlotView];
  layer6 = [badgeSlotView2 layer];
  [layer6 setContents:contents3];
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
    [(UIShareGroupActivityCell *)self _updateTitleView];
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
    [(UIShareGroupActivityCell *)self _updateImageView];
    imageCopy = v6;
  }
}

- (void)setImageSlotID:(unsigned int)d
{
  if (self->_imageSlotID != d)
  {
    self->_imageSlotID = d;
    [(UIShareGroupActivityCell *)self _updateImageView];
  }
}

- (void)setTitleSlotID:(unsigned int)d
{
  if (self->_titleSlotID != d)
  {
    self->_titleSlotID = d;
    [(UIShareGroupActivityCell *)self _updateTitleView];
  }
}

- (void)setBadgeSlotID:(unsigned int)d
{
  if (self->_badgeSlotID != d)
  {
    self->_badgeSlotID = d;
    [(UIShareGroupActivityCell *)self _updateBadgeSlotView];
  }
}

- (void)startPulsing
{
  if (![(UIShareGroupActivityCell *)self isPulsing])
  {
    [(UIShareGroupActivityCell *)self setIsPulsing:1];
    title = [(UIShareGroupActivityCell *)self title];
    if ([title length])
    {
      [(UIShareGroupActivityCell *)self titleLabel];
    }

    else
    {
      [(UIShareGroupActivityCell *)self titleSlotView];
    }
    v4 = ;

    [v4 setAlpha:1.0];
    v5 = MEMORY[0x1E69DD250];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __40__UIShareGroupActivityCell_startPulsing__block_invoke;
    v7[3] = &unk_1E71F9510;
    v8 = v4;
    v6 = v4;
    [v5 animateWithDuration:24 delay:v7 options:0 animations:0.75 completion:0.0];
  }
}

- (void)stopPulsing
{
  if ([(UIShareGroupActivityCell *)self isPulsing])
  {
    [(UIShareGroupActivityCell *)self setIsPulsing:0];
    titleLabel = [(UIShareGroupActivityCell *)self titleLabel];
    layer = [titleLabel layer];
    [layer removeAllAnimations];

    titleLabel2 = [(UIShareGroupActivityCell *)self titleLabel];
    [titleLabel2 alpha];
    v7 = v6;

    if (v7 > 0.0)
    {
      titleLabel3 = [(UIShareGroupActivityCell *)self titleLabel];
      [titleLabel3 setAlpha:1.0];
    }

    titleSlotView = [(UIShareGroupActivityCell *)self titleSlotView];
    layer2 = [titleSlotView layer];
    [layer2 removeAllAnimations];

    titleSlotView2 = [(UIShareGroupActivityCell *)self titleSlotView];
    [titleSlotView2 alpha];
    v13 = v12;

    if (v13 > 0.0)
    {
      titleSlotView3 = [(UIShareGroupActivityCell *)self titleSlotView];
      [titleSlotView3 setAlpha:1.0];
    }
  }
}

- (void)_updateImageView
{
  [(UIShareGroupActivityCell *)self _configureImageViewForPlaceholder:0];
  image = [(UIShareGroupActivityCell *)self image];
  activityImageView = [(UIShareGroupActivityCell *)self activityImageView];
  [activityImageView setImage:image];

  image2 = [(UIShareGroupActivityCell *)self image];

  activityImageView2 = [(UIShareGroupActivityCell *)self activityImageView];
  v7 = activityImageView2;
  v8 = 0.0;
  if (image2)
  {
    v8 = 1.0;
    v9 = 0.07;
  }

  else
  {
    v9 = 0.0;
  }

  [activityImageView2 setAlpha:v8];

  activityImageView3 = [(UIShareGroupActivityCell *)self activityImageView];
  layer = [activityImageView3 layer];
  *&v12 = v9;
  [layer setShadowOpacity:v12];

  imageSlotID = [(UIShareGroupActivityCell *)self imageSlotID];
  if (imageSlotID)
  {
    traitCollection = [MEMORY[0x1E6979320] objectForSlot:{-[UIShareGroupActivityCell imageSlotID](self, "imageSlotID")}];
    v15 = *MEMORY[0x1E6979DE0];
    imageSlotView = [(UIShareGroupActivityCell *)self imageSlotView];
    layer2 = [imageSlotView layer];
    [layer2 setContentsGravity:v15];

    imageSlotView2 = [(UIShareGroupActivityCell *)self imageSlotView];
    layer3 = [imageSlotView2 layer];
    [layer3 setContents:traitCollection];

    imageSlotView3 = [(UIShareGroupActivityCell *)self imageSlotView];
    [imageSlotView3 setBackgroundColor:0];
LABEL_6:

    goto LABEL_11;
  }

  imageSlotView4 = [(UIShareGroupActivityCell *)self imageSlotView];
  layer4 = [imageSlotView4 layer];
  [layer4 setContents:0];

  if (image2)
  {
    imageSlotView3 = [MEMORY[0x1E69DC888] clearColor];
    traitCollection = imageSlotView3;
  }

  else
  {
    traitCollection = [(UIShareGroupActivityCell *)self traitCollection];
    imageSlotView3 = SHSheetUISpecPlaceholderColor([traitCollection userInterfaceStyle]);
  }

  activityImageView4 = [(UIShareGroupActivityCell *)self activityImageView];
  [activityImageView4 setBackgroundColor:imageSlotView3];

  if (!image2)
  {
    goto LABEL_6;
  }

LABEL_11:

  if (imageSlotID)
  {
    v24 = 1.0;
  }

  else
  {
    v24 = 0.0;
  }

  imageSlotView5 = [(UIShareGroupActivityCell *)self imageSlotView];
  [imageSlotView5 setAlpha:v24];
}

- (void)_updateTitleView
{
  title = [(UIShareGroupActivityCell *)self title];
  v4 = [title length];

  if (v4)
  {
    [(UIShareGroupActivityCell *)self title];
  }

  else
  {
    [(UIShareGroupActivityCell *)self _placeholderString];
  }
  v5 = ;
  titleLabel = [(UIShareGroupActivityCell *)self titleLabel];
  [titleLabel setText:v5];

  if (v4)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  titleLabel2 = [(UIShareGroupActivityCell *)self titleLabel];
  [titleLabel2 setAlpha:v7];

  titleSlotID = [(UIShareGroupActivityCell *)self titleSlotID];
  if (titleSlotID)
  {
    traitCollection = [(UIShareGroupActivityCell *)self traitCollection];
    layoutDirection = [traitCollection layoutDirection];

    traitCollection2 = [(UIShareGroupActivityCell *)self traitCollection];
    preferredContentSizeCategory = [traitCollection2 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    v15 = MEMORY[0x1E6979DF8];
    if (layoutDirection != 1)
    {
      v15 = MEMORY[0x1E6979DD8];
    }

    v16 = MEMORY[0x1E6979320];
    v17 = *v15;
    titleSlotView5 = [v16 objectForSlot:{-[UIShareGroupActivityCell titleSlotID](self, "titleSlotID")}];
    v19 = _ShareSheetDeviceScreenScale();
    titleSlotView = [(UIShareGroupActivityCell *)self titleSlotView];
    layer = [titleSlotView layer];
    [layer setContentsScale:v19];

    v22 = _ShareSheetDeviceScreenScale();
    titleSlotView2 = [(UIShareGroupActivityCell *)self titleSlotView];
    layer2 = [titleSlotView2 layer];
    [layer2 setRasterizationScale:v22];

    if (IsAccessibilityCategory)
    {
      v25 = v17;
    }

    else
    {
      v25 = *MEMORY[0x1E6979DB8];
    }

    titleSlotView3 = [(UIShareGroupActivityCell *)self titleSlotView];
    layer3 = [titleSlotView3 layer];
    [layer3 setContentsGravity:v25];

    titleSlotView4 = [(UIShareGroupActivityCell *)self titleSlotView];
    layer4 = [titleSlotView4 layer];
    [layer4 setContents:titleSlotView5];
  }

  else
  {
    titleSlotView5 = [(UIShareGroupActivityCell *)self titleSlotView];
    titleSlotView4 = [titleSlotView5 layer];
    [titleSlotView4 setContents:0];
  }

  if (titleSlotID)
  {
    v30 = 1.0;
  }

  else
  {
    v30 = 0.0;
  }

  titleSlotView6 = [(UIShareGroupActivityCell *)self titleSlotView];
  [titleSlotView6 setAlpha:v30];
}

- (void)_updateBadgeSlotView
{
  badgeSlotID = [(UIShareGroupActivityCell *)self badgeSlotID];
  if (badgeSlotID)
  {
    badgeSlotView5 = [MEMORY[0x1E6979320] objectForSlot:{-[UIShareGroupActivityCell badgeSlotID](self, "badgeSlotID")}];
    v5 = _ShareSheetDeviceScreenScale();
    badgeSlotView = [(UIShareGroupActivityCell *)self badgeSlotView];
    layer = [badgeSlotView layer];
    [layer setContentsScale:v5];

    v8 = _ShareSheetDeviceScreenScale();
    badgeSlotView2 = [(UIShareGroupActivityCell *)self badgeSlotView];
    layer2 = [badgeSlotView2 layer];
    [layer2 setRasterizationScale:v8];

    v11 = *MEMORY[0x1E6979DD0];
    badgeSlotView3 = [(UIShareGroupActivityCell *)self badgeSlotView];
    layer3 = [badgeSlotView3 layer];
    [layer3 setContentsGravity:v11];

    badgeSlotView4 = [(UIShareGroupActivityCell *)self badgeSlotView];
    layer4 = [badgeSlotView4 layer];
    [layer4 setContents:badgeSlotView5];
  }

  else
  {
    badgeSlotView5 = [(UIShareGroupActivityCell *)self badgeSlotView];
    badgeSlotView4 = [badgeSlotView5 layer];
    [badgeSlotView4 setContents:0];
  }

  if (badgeSlotID)
  {
    v16 = 1.0;
  }

  else
  {
    v16 = 0.0;
  }

  badgeSlotView6 = [(UIShareGroupActivityCell *)self badgeSlotView];
  [badgeSlotView6 setAlpha:v16];
}

- (SHSheetContentLayoutSpec)layoutSpec
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutSpec);

  return WeakRetained;
}

@end