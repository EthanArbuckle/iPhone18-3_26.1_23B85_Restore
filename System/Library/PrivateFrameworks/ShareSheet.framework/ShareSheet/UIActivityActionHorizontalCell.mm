@interface UIActivityActionHorizontalCell
- (SHSheetContentLayoutSpec)layoutSpec;
- (double)_preferredImageSize;
- (id)_createTitleLabel;
- (id)_placeholderString;
- (id)_titleLabelFont;
- (id)createTargetedPreview;
- (void)_configureImageViewForPlaceholder:(BOOL)placeholder;
- (void)_installSubviewsIfNeeded;
- (void)_setLayoutSpec:(id)spec;
- (void)_updateConstraints;
- (void)_updateContentTintColor;
- (void)_updateDarkening;
- (void)_updateImageView;
- (void)_updateTitleView;
- (void)configureLayoutIfNeeded:(id)needed;
- (void)prepareForReuse;
- (void)setContentTintColor:(id)color;
- (void)setDisabled:(BOOL)disabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImage:(id)image;
- (void)setImageSlotID:(unsigned int)d;
- (void)setSelected:(BOOL)selected;
- (void)setTitle:(id)title;
- (void)setTitleSlotID:(unsigned int)d;
- (void)setupConstraints;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation UIActivityActionHorizontalCell

- (id)_placeholderString
{
  traitCollection = [(UIActivityActionHorizontalCell *)self traitCollection];
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
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v3 = getSFUIShareSheetActivityCellSpecClass_softClass_0;
  v20 = getSFUIShareSheetActivityCellSpecClass_softClass_0;
  if (!getSFUIShareSheetActivityCellSpecClass_softClass_0)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __getSFUIShareSheetActivityCellSpecClass_block_invoke_0;
    v16[3] = &unk_1E71F91F0;
    v16[4] = &v17;
    __getSFUIShareSheetActivityCellSpecClass_block_invoke_0(v16);
    v3 = v18[3];
  }

  v4 = v3;
  _Block_object_dispose(&v17, 8);
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v6 = [v3 titleLabelFontTextStyleForIdiom:{objc_msgSend(currentDevice, "userInterfaceIdiom")}];

  v7 = *MEMORY[0x1E69DDC50];
  traitCollection = [(UIActivityActionHorizontalCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v10 = UIContentSizeCategoryCompareToCategory(v7, preferredContentSizeCategory);

  if (v10)
  {
    v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v6];
  }

  else
  {
    v12 = MEMORY[0x1E69DB880];
    v13 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC58]];
    v14 = [v12 preferredFontDescriptorWithTextStyle:v6 compatibleWithTraitCollection:v13];

    v11 = [MEMORY[0x1E69DB878] fontWithDescriptor:v14 size:0.0];
  }

  return v11;
}

- (id)_createTitleLabel
{
  _placeholderString = [(UIActivityActionHorizontalCell *)self _placeholderString];
  v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  _titleLabelFont = [(UIActivityActionHorizontalCell *)self _titleLabelFont];
  [v4 setFont:_titleLabelFont];

  traitCollection = [(UIActivityActionHorizontalCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    v9 = 4;
  }

  else
  {
    v9 = 1;
  }

  [v4 setTextAlignment:v9];
  [v4 setNumberOfLines:0];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 _setHyphenationFactor:0.0];
  [v4 setText:_placeholderString];
  [v4 setAlpha:0.0];
  [v4 setAccessibilityIdentifier:@"cellTitleLabel"];

  return v4;
}

- (void)_installSubviewsIfNeeded
{
  v93[1] = *MEMORY[0x1E69E9840];
  if (![(UIActivityActionHorizontalCell *)self didInstallSubviews])
  {
    [(UIActivityActionHorizontalCell *)self setDidInstallSubviews:1];
    v3 = [MEMORY[0x1E69DC730] effectWithStyle:8];
    v92 = v3;
    if (_ShareSheetSolariumEnabled())
    {
      v4 = [MEMORY[0x1E69DD248] effectForBlurEffect:v3 style:6];
      v5 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v4];
      if (v4)
      {
        v93[0] = v4;
        v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:1];
        [v5 setBackgroundEffects:v6];
      }
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v3];
    }

    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 setClipsToBounds:1];
    [(UIActivityActionHorizontalCell *)self setImageEffectView:v5];
    layoutSpec = [(UIActivityActionHorizontalCell *)self layoutSpec];
    [layoutSpec peopleIconWidth];
    v9 = v8 * 0.5;
    imageEffectView = [(UIActivityActionHorizontalCell *)self imageEffectView];
    layer = [imageEffectView layer];
    [layer setCornerRadius:v9];

    contentView = [(UIActivityActionHorizontalCell *)self contentView];
    imageEffectView2 = [(UIActivityActionHorizontalCell *)self imageEffectView];
    [contentView addSubview:imageEffectView2];

    v91 = [MEMORY[0x1E69DC730] effectWithStyle:9];
    v14 = [MEMORY[0x1E69DD248] effectForBlurEffect:? style:?];
    v15 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v14];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIActivityActionHorizontalCell *)self setVibrantLabelView:v15];
    contentView2 = [(UIActivityActionHorizontalCell *)self contentView];
    vibrantLabelView = [(UIActivityActionHorizontalCell *)self vibrantLabelView];
    [contentView2 addSubview:vibrantLabelView];

    _createTitleLabel = [(UIActivityActionHorizontalCell *)self _createTitleLabel];
    [(UIActivityActionHorizontalCell *)self setTitleLabel:_createTitleLabel];

    vibrantLabelView2 = [(UIActivityActionHorizontalCell *)self vibrantLabelView];
    contentView3 = [vibrantLabelView2 contentView];
    titleLabel = [(UIActivityActionHorizontalCell *)self titleLabel];
    [contentView3 addSubview:titleLabel];

    _createTitleLabel2 = [(UIActivityActionHorizontalCell *)self _createTitleLabel];
    [(UIActivityActionHorizontalCell *)self setLabelForPositioning:_createTitleLabel2];

    vibrantLabelView3 = [(UIActivityActionHorizontalCell *)self vibrantLabelView];
    contentView4 = [vibrantLabelView3 contentView];
    labelForPositioning = [(UIActivityActionHorizontalCell *)self labelForPositioning];
    [contentView4 addSubview:labelForPositioning];

    v26 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8A78]];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v29 = 13.5;
    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      [v26 continuousCornerRadius];
      v29 = v30;
    }

    v31 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(UIActivityActionHorizontalCell *)self setImageSlotView:v31];

    imageSlotView = [(UIActivityActionHorizontalCell *)self imageSlotView];
    [imageSlotView setAlpha:0.0];

    imageSlotView2 = [(UIActivityActionHorizontalCell *)self imageSlotView];
    [imageSlotView2 setClipsToBounds:1];

    imageSlotView3 = [(UIActivityActionHorizontalCell *)self imageSlotView];
    [imageSlotView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    imageSlotView4 = [(UIActivityActionHorizontalCell *)self imageSlotView];
    layer2 = [imageSlotView4 layer];
    [layer2 setCornerRadius:v29];

    v37 = *MEMORY[0x1E69796E8];
    imageSlotView5 = [(UIActivityActionHorizontalCell *)self imageSlotView];
    layer3 = [imageSlotView5 layer];
    [layer3 setCornerCurve:v37];

    blackColor = [MEMORY[0x1E69DC888] blackColor];
    cGColor = [blackColor CGColor];
    imageSlotView6 = [(UIActivityActionHorizontalCell *)self imageSlotView];
    layer4 = [imageSlotView6 layer];
    [layer4 setShadowColor:cGColor];

    imageSlotView7 = [(UIActivityActionHorizontalCell *)self imageSlotView];
    layer5 = [imageSlotView7 layer];
    LODWORD(v46) = 1032805417;
    [layer5 setShadowOpacity:v46];

    v47 = *MEMORY[0x1E695F060];
    v48 = *(MEMORY[0x1E695F060] + 8);
    imageSlotView8 = [(UIActivityActionHorizontalCell *)self imageSlotView];
    layer6 = [imageSlotView8 layer];
    [layer6 setShadowOffset:{v47, v48}];

    imageSlotView9 = [(UIActivityActionHorizontalCell *)self imageSlotView];
    layer7 = [imageSlotView9 layer];
    [layer7 setShadowRadius:10.0];

    imageSlotView10 = [(UIActivityActionHorizontalCell *)self imageSlotView];
    layer8 = [imageSlotView10 layer];
    [layer8 setShadowPathIsBounds:1];

    imageSlotView11 = [(UIActivityActionHorizontalCell *)self imageSlotView];
    layer9 = [imageSlotView11 layer];
    [layer9 setShouldRasterize:0];

    imageSlotView12 = [(UIActivityActionHorizontalCell *)self imageSlotView];
    layer10 = [imageSlotView12 layer];
    [layer10 setMasksToBounds:0];

    contentView5 = [(UIActivityActionHorizontalCell *)self contentView];
    imageSlotView13 = [(UIActivityActionHorizontalCell *)self imageSlotView];
    [contentView5 addSubview:imageSlotView13];

    v61 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [(UIActivityActionHorizontalCell *)self setActivityImageView:v61];

    traitCollection = [(UIActivityActionHorizontalCell *)self traitCollection];
    v63 = SHSheetUISpecPlaceholderColor([traitCollection userInterfaceStyle]);
    activityImageView = [(UIActivityActionHorizontalCell *)self activityImageView];
    [activityImageView setBackgroundColor:v63];

    activityImageView2 = [(UIActivityActionHorizontalCell *)self activityImageView];
    [activityImageView2 setClipsToBounds:1];

    activityImageView3 = [(UIActivityActionHorizontalCell *)self activityImageView];
    [activityImageView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    activityImageView4 = [(UIActivityActionHorizontalCell *)self activityImageView];
    [activityImageView4 setContentMode:2];

    activityImageView5 = [(UIActivityActionHorizontalCell *)self activityImageView];
    layer11 = [activityImageView5 layer];
    [layer11 setCornerRadius:v29];

    activityImageView6 = [(UIActivityActionHorizontalCell *)self activityImageView];
    layer12 = [activityImageView6 layer];
    [layer12 setCornerCurve:v37];

    activityImageView7 = [(UIActivityActionHorizontalCell *)self activityImageView];
    layer13 = [activityImageView7 layer];
    [layer13 setShadowOffset:{v47, v48}];

    activityImageView8 = [(UIActivityActionHorizontalCell *)self activityImageView];
    layer14 = [activityImageView8 layer];
    [layer14 setShadowRadius:10.0];

    activityImageView9 = [(UIActivityActionHorizontalCell *)self activityImageView];
    layer15 = [activityImageView9 layer];
    [layer15 setShadowPathIsBounds:1];

    activityImageView10 = [(UIActivityActionHorizontalCell *)self activityImageView];
    layer16 = [activityImageView10 layer];
    [layer16 setShouldRasterize:0];

    activityImageView11 = [(UIActivityActionHorizontalCell *)self activityImageView];
    layer17 = [activityImageView11 layer];
    [layer17 setMasksToBounds:0];

    activityImageView12 = [(UIActivityActionHorizontalCell *)self activityImageView];
    [activityImageView12 setAccessibilityIdentifier:@"activityImageView"];

    contentView6 = [(UIActivityActionHorizontalCell *)self contentView];
    activityImageView13 = [(UIActivityActionHorizontalCell *)self activityImageView];
    [contentView6 addSubview:activityImageView13];

    v85 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(UIActivityActionHorizontalCell *)self setTitleSlotView:v85];

    titleSlotView = [(UIActivityActionHorizontalCell *)self titleSlotView];
    [titleSlotView setAlpha:0.0];

    titleSlotView2 = [(UIActivityActionHorizontalCell *)self titleSlotView];
    [titleSlotView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    vibrantLabelView4 = [(UIActivityActionHorizontalCell *)self vibrantLabelView];
    contentView7 = [vibrantLabelView4 contentView];
    titleSlotView3 = [(UIActivityActionHorizontalCell *)self titleSlotView];
    [contentView7 addSubview:titleSlotView3];

    [(UIActivityActionHorizontalCell *)self _configureImageViewForPlaceholder:1];
    [(UIActivityActionHorizontalCell *)self setupConstraints];
  }
}

- (void)_setLayoutSpec:(id)spec
{
  specCopy = spec;
  [(UIActivityActionHorizontalCell *)self setLayoutSpec:specCopy];
  deviceClass = [specCopy deviceClass];

  v6 = &regularHeight5_8Rounded_1;
  v7 = &visionLarge_0;
  v8 = &regularHeight_1;
  if (deviceClass == 9)
  {
    v8 = &visionCompact_0;
  }

  if (deviceClass != 10)
  {
    v7 = v8;
  }

  if (deviceClass != 3)
  {
    v6 = v7;
  }

  layout_1 = v6;
  if (_ShareSheetSolariumEnabled())
  {
    layout_1 = &solariumLayout_0;
  }
}

- (void)configureLayoutIfNeeded:(id)needed
{
  neededCopy = needed;
  layoutSpec = [(UIActivityActionHorizontalCell *)self layoutSpec];

  [(UIActivityActionHorizontalCell *)self _setLayoutSpec:neededCopy];
  if ([(UIActivityActionHorizontalCell *)self didInstallSubviews])
  {
    v5 = neededCopy;
    if (layoutSpec == neededCopy)
    {
      goto LABEL_6;
    }

    v6 = MEMORY[0x1E696ACD8];
    allConstraints = [(UIActivityActionHorizontalCell *)self allConstraints];
    [v6 deactivateConstraints:allConstraints];

    [(UIActivityActionHorizontalCell *)self setupConstraints];
  }

  else
  {
    [(UIActivityActionHorizontalCell *)self _installSubviewsIfNeeded];
  }

  v5 = neededCopy;
LABEL_6:
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = UIActivityActionHorizontalCell;
  [(UIActivityActionHorizontalCell *)&v3 prepareForReuse];
  [(UIActivityActionHorizontalCell *)self setImage:0];
  [(UIActivityActionHorizontalCell *)self setImageSlotID:0];
  [(UIActivityActionHorizontalCell *)self _configureImageViewForPlaceholder:1];
}

- (void)setupConstraints
{
  v192[2] = *MEMORY[0x1E69E9840];
  contentView = [(UIActivityActionHorizontalCell *)self contentView];
  [(UIActivityActionHorizontalCell *)self _preferredImageSize];
  v4 = v3;
  traitCollection = [(UIActivityActionHorizontalCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  v186 = IsAccessibilityCategory;
  if (IsAccessibilityCategory)
  {
    [(UIActivityActionHorizontalCell *)self labelForPositioning];
  }

  else
  {
    [(UIActivityActionHorizontalCell *)self titleLabel];
  }
  v8 = ;
  v9 = MEMORY[0x1E695DF70];
  imageSlotView = [(UIActivityActionHorizontalCell *)self imageSlotView];
  widthAnchor = [imageSlotView widthAnchor];
  v12 = [widthAnchor constraintEqualToConstant:v4];
  v192[0] = v12;
  imageSlotView2 = [(UIActivityActionHorizontalCell *)self imageSlotView];
  heightAnchor = [imageSlotView2 heightAnchor];
  v15 = [heightAnchor constraintEqualToConstant:v4];
  v192[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v192 count:2];
  v17 = [v9 arrayWithArray:v16];
  [(UIActivityActionHorizontalCell *)self setImageDimensionConstantConstraints:v17];

  v102 = MEMORY[0x1E695DF70];
  imageDimensionConstantConstraints = [(UIActivityActionHorizontalCell *)self imageDimensionConstantConstraints];
  v180 = [imageDimensionConstantConstraints objectAtIndexedSubscript:0];
  v191[0] = v180;
  imageDimensionConstantConstraints2 = [(UIActivityActionHorizontalCell *)self imageDimensionConstantConstraints];
  v174 = [imageDimensionConstantConstraints2 objectAtIndexedSubscript:1];
  v191[1] = v174;
  imageEffectView = [(UIActivityActionHorizontalCell *)self imageEffectView];
  widthAnchor2 = [imageEffectView widthAnchor];
  layoutSpec = [(UIActivityActionHorizontalCell *)self layoutSpec];
  [layoutSpec peopleIconWidth];
  v162 = [widthAnchor2 constraintEqualToConstant:?];
  v191[2] = v162;
  imageEffectView2 = [(UIActivityActionHorizontalCell *)self imageEffectView];
  heightAnchor2 = [imageEffectView2 heightAnchor];
  layoutSpec2 = [(UIActivityActionHorizontalCell *)self layoutSpec];
  [layoutSpec2 peopleIconWidth];
  v150 = [heightAnchor2 constraintEqualToConstant:?];
  v191[3] = v150;
  activityImageView = [(UIActivityActionHorizontalCell *)self activityImageView];
  widthAnchor3 = [activityImageView widthAnchor];
  imageSlotView3 = [(UIActivityActionHorizontalCell *)self imageSlotView];
  widthAnchor4 = [imageSlotView3 widthAnchor];
  v135 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
  v191[4] = v135;
  activityImageView2 = [(UIActivityActionHorizontalCell *)self activityImageView];
  heightAnchor3 = [activityImageView2 heightAnchor];
  imageSlotView4 = [(UIActivityActionHorizontalCell *)self imageSlotView];
  heightAnchor4 = [imageSlotView4 heightAnchor];
  v120 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];
  v191[5] = v120;
  activityImageView3 = [(UIActivityActionHorizontalCell *)self activityImageView];
  centerXAnchor = [activityImageView3 centerXAnchor];
  imageSlotView5 = [(UIActivityActionHorizontalCell *)self imageSlotView];
  centerXAnchor2 = [imageSlotView5 centerXAnchor];
  v105 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v191[6] = v105;
  activityImageView4 = [(UIActivityActionHorizontalCell *)self activityImageView];
  centerYAnchor = [activityImageView4 centerYAnchor];
  imageSlotView6 = [(UIActivityActionHorizontalCell *)self imageSlotView];
  centerYAnchor2 = [imageSlotView6 centerYAnchor];
  v88 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v191[7] = v88;
  titleSlotView = [(UIActivityActionHorizontalCell *)self titleSlotView];
  centerXAnchor3 = [titleSlotView centerXAnchor];
  centerXAnchor4 = [v8 centerXAnchor];
  v80 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v191[8] = v80;
  titleSlotView2 = [(UIActivityActionHorizontalCell *)self titleSlotView];
  centerYAnchor3 = [titleSlotView2 centerYAnchor];
  centerYAnchor4 = [v8 centerYAnchor];
  v72 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v191[9] = v72;
  titleSlotView3 = [(UIActivityActionHorizontalCell *)self titleSlotView];
  heightAnchor5 = [titleSlotView3 heightAnchor];
  heightAnchor6 = [v8 heightAnchor];
  v64 = [heightAnchor5 constraintEqualToAnchor:heightAnchor6];
  v191[10] = v64;
  titleSlotView4 = [(UIActivityActionHorizontalCell *)self titleSlotView];
  widthAnchor5 = [titleSlotView4 widthAnchor];
  widthAnchor6 = [v8 widthAnchor];
  v58 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6];
  v191[11] = v58;
  vibrantLabelView = [(UIActivityActionHorizontalCell *)self vibrantLabelView];
  centerXAnchor5 = [vibrantLabelView centerXAnchor];
  centerXAnchor6 = [v8 centerXAnchor];
  v54 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  v191[12] = v54;
  vibrantLabelView2 = [(UIActivityActionHorizontalCell *)self vibrantLabelView];
  centerYAnchor5 = [vibrantLabelView2 centerYAnchor];
  centerYAnchor6 = [v8 centerYAnchor];
  v50 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  v191[13] = v50;
  vibrantLabelView3 = [(UIActivityActionHorizontalCell *)self vibrantLabelView];
  heightAnchor7 = [vibrantLabelView3 heightAnchor];
  heightAnchor8 = [v8 heightAnchor];
  v20 = [heightAnchor7 constraintEqualToAnchor:heightAnchor8];
  v191[14] = v20;
  vibrantLabelView4 = [(UIActivityActionHorizontalCell *)self vibrantLabelView];
  widthAnchor7 = [vibrantLabelView4 widthAnchor];
  v187 = v8;
  widthAnchor8 = [v8 widthAnchor];
  v24 = [widthAnchor7 constraintEqualToAnchor:widthAnchor8];
  v191[15] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v191 count:16];
  v26 = [v102 arrayWithArray:v25];
  [(UIActivityActionHorizontalCell *)self setAllConstraints:v26];

  labelForPositioning = [(UIActivityActionHorizontalCell *)self labelForPositioning];
  topAnchor = [labelForPositioning topAnchor];
  topAnchor2 = [contentView topAnchor];
  v175 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:8.0];
  v190[0] = v175;
  bottomAnchor = [contentView bottomAnchor];
  labelForPositioning2 = [(UIActivityActionHorizontalCell *)self labelForPositioning];
  bottomAnchor2 = [labelForPositioning2 bottomAnchor];
  v163 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:8.0];
  v190[1] = v163;
  labelForPositioning3 = [(UIActivityActionHorizontalCell *)self labelForPositioning];
  centerYAnchor7 = [labelForPositioning3 centerYAnchor];
  activityImageView5 = [(UIActivityActionHorizontalCell *)self activityImageView];
  centerYAnchor8 = [activityImageView5 centerYAnchor];
  v148 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
  v190[2] = v148;
  imageEffectView3 = [(UIActivityActionHorizontalCell *)self imageEffectView];
  leadingAnchor = [imageEffectView3 leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v136 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
  v190[3] = v136;
  imageEffectView4 = [(UIActivityActionHorizontalCell *)self imageEffectView];
  centerYAnchor9 = [imageEffectView4 centerYAnchor];
  centerYAnchor10 = [contentView centerYAnchor];
  v124 = [centerYAnchor9 constraintEqualToAnchor:centerYAnchor10];
  v190[4] = v124;
  imageSlotView7 = [(UIActivityActionHorizontalCell *)self imageSlotView];
  centerXAnchor7 = [imageSlotView7 centerXAnchor];
  imageEffectView5 = [(UIActivityActionHorizontalCell *)self imageEffectView];
  centerXAnchor8 = [imageEffectView5 centerXAnchor];
  v109 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
  v190[5] = v109;
  imageSlotView8 = [(UIActivityActionHorizontalCell *)self imageSlotView];
  centerYAnchor11 = [imageSlotView8 centerYAnchor];
  imageEffectView6 = [(UIActivityActionHorizontalCell *)self imageEffectView];
  centerYAnchor12 = [imageEffectView6 centerYAnchor];
  v94 = [centerYAnchor11 constraintEqualToAnchor:centerYAnchor12];
  v190[6] = v94;
  labelForPositioning4 = [(UIActivityActionHorizontalCell *)self labelForPositioning];
  trailingAnchor = [labelForPositioning4 trailingAnchor];
  trailingAnchor2 = [contentView trailingAnchor];
  v85 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v190[7] = v85;
  labelForPositioning5 = [(UIActivityActionHorizontalCell *)self labelForPositioning];
  leadingAnchor3 = [labelForPositioning5 leadingAnchor];
  imageEffectView7 = [(UIActivityActionHorizontalCell *)self imageEffectView];
  trailingAnchor3 = [imageEffectView7 trailingAnchor];
  v75 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor3 constant:14.0];
  v190[8] = v75;
  labelForPositioning6 = [(UIActivityActionHorizontalCell *)self labelForPositioning];
  leadingAnchor4 = [labelForPositioning6 leadingAnchor];
  titleLabel = [(UIActivityActionHorizontalCell *)self titleLabel];
  leadingAnchor5 = [titleLabel leadingAnchor];
  v65 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
  v190[9] = v65;
  labelForPositioning7 = [(UIActivityActionHorizontalCell *)self labelForPositioning];
  trailingAnchor4 = [labelForPositioning7 trailingAnchor];
  titleLabel2 = [(UIActivityActionHorizontalCell *)self titleLabel];
  trailingAnchor5 = [titleLabel2 trailingAnchor];
  v29 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  v190[10] = v29;
  labelForPositioning8 = [(UIActivityActionHorizontalCell *)self labelForPositioning];
  centerYAnchor13 = [labelForPositioning8 centerYAnchor];
  titleLabel3 = [(UIActivityActionHorizontalCell *)self titleLabel];
  centerYAnchor14 = [titleLabel3 centerYAnchor];
  v34 = [centerYAnchor13 constraintEqualToAnchor:centerYAnchor14];
  v190[11] = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v190 count:12];
  [(UIActivityActionHorizontalCell *)self setLargeTextConstraints:v35];

  imageEffectView8 = [(UIActivityActionHorizontalCell *)self imageEffectView];
  centerXAnchor9 = [imageEffectView8 centerXAnchor];
  centerXAnchor10 = [contentView centerXAnchor];
  v176 = [centerXAnchor9 constraintEqualToAnchor:centerXAnchor10];
  v189[0] = v176;
  imageEffectView9 = [(UIActivityActionHorizontalCell *)self imageEffectView];
  topAnchor3 = [imageEffectView9 topAnchor];
  topAnchor4 = [contentView topAnchor];
  v164 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:*layout_1];
  v189[1] = v164;
  imageSlotView9 = [(UIActivityActionHorizontalCell *)self imageSlotView];
  centerXAnchor11 = [imageSlotView9 centerXAnchor];
  centerXAnchor12 = [contentView centerXAnchor];
  v152 = [centerXAnchor11 constraintEqualToAnchor:centerXAnchor12];
  v189[2] = v152;
  imageSlotView10 = [(UIActivityActionHorizontalCell *)self imageSlotView];
  centerYAnchor15 = [imageSlotView10 centerYAnchor];
  imageEffectView10 = [(UIActivityActionHorizontalCell *)self imageEffectView];
  centerYAnchor16 = [imageEffectView10 centerYAnchor];
  v137 = [centerYAnchor15 constraintEqualToAnchor:centerYAnchor16];
  v189[3] = v137;
  titleLabel4 = [(UIActivityActionHorizontalCell *)self titleLabel];
  widthAnchor9 = [titleLabel4 widthAnchor];
  widthAnchor10 = [contentView widthAnchor];
  v125 = [widthAnchor9 constraintEqualToAnchor:widthAnchor10 constant:*(layout_1 + 24)];
  v189[4] = v125;
  labelForPositioning9 = [(UIActivityActionHorizontalCell *)self labelForPositioning];
  topAnchor5 = [labelForPositioning9 topAnchor];
  imageEffectView11 = [(UIActivityActionHorizontalCell *)self imageEffectView];
  bottomAnchor3 = [imageEffectView11 bottomAnchor];
  v110 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:*(layout_1 + 8)];
  v189[5] = v110;
  labelForPositioning10 = [(UIActivityActionHorizontalCell *)self labelForPositioning];
  bottomAnchor4 = [labelForPositioning10 bottomAnchor];
  bottomAnchor5 = [contentView bottomAnchor];
  v98 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:*(layout_1 + 16)];
  v189[6] = v98;
  titleLabel5 = [(UIActivityActionHorizontalCell *)self titleLabel];
  topAnchor6 = [titleLabel5 topAnchor];
  labelForPositioning11 = [(UIActivityActionHorizontalCell *)self labelForPositioning];
  topAnchor7 = [labelForPositioning11 topAnchor];
  v38 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
  v189[7] = v38;
  titleLabel6 = [(UIActivityActionHorizontalCell *)self titleLabel];
  bottomAnchor6 = [titleLabel6 bottomAnchor];
  labelForPositioning12 = [(UIActivityActionHorizontalCell *)self labelForPositioning];
  bottomAnchor7 = [labelForPositioning12 bottomAnchor];
  v43 = [bottomAnchor6 constraintLessThanOrEqualToAnchor:bottomAnchor7];
  v189[8] = v43;
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v189 count:9];
  [(UIActivityActionHorizontalCell *)self setRegularConstraints:v44];

  allConstraints = [(UIActivityActionHorizontalCell *)self allConstraints];
  if (v186)
  {
    [(UIActivityActionHorizontalCell *)self largeTextConstraints];
  }

  else
  {
    [(UIActivityActionHorizontalCell *)self regularConstraints];
  }
  v46 = ;
  [allConstraints addObjectsFromArray:v46];

  v47 = MEMORY[0x1E696ACD8];
  allConstraints2 = [(UIActivityActionHorizontalCell *)self allConstraints];
  [v47 activateConstraints:allConstraints2];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = UIActivityActionHorizontalCell;
  changeCopy = change;
  [(UIActivityActionHorizontalCell *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(UIActivityActionHorizontalCell *)self traitCollection:v8.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    [(UIActivityActionHorizontalCell *)self _updateConstraints];
  }
}

- (id)createTargetedPreview
{
  image = [(UIActivityActionHorizontalCell *)self image];

  if (image)
  {
    [(UIActivityActionHorizontalCell *)self activityImageView];
  }

  else
  {
    [(UIActivityActionHorizontalCell *)self imageSlotView];
  }
  v4 = ;
  [v4 frame];
  v5 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:0.0 cornerRadius:0.0];
  v6 = objc_alloc_init(MEMORY[0x1E69DCE28]);
  [v6 setVisiblePath:v5];
  v7 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v4 parameters:v6];

  return v7;
}

- (double)_preferredImageSize
{
  traitCollection = [(UIActivityActionHorizontalCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  [(UIActivityActionHorizontalCell *)self _legacyIconSizeForContentSizeCategory:preferredContentSizeCategory];
  v6 = v5;

  image = [(UIActivityActionHorizontalCell *)self image];
  if (![image isSymbolImage])
  {
    v6 = v6 * 1.35;
  }

  return v6;
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
    activityImageView = [(UIActivityActionHorizontalCell *)self activityImageView];
    [activityImageView alpha];
    v6 = v7;
  }

  activityImageView2 = [(UIActivityActionHorizontalCell *)self activityImageView];
  [activityImageView2 setAlpha:v6];

  if (placeholderCopy)
  {
    activityImageView3 = [(UIActivityActionHorizontalCell *)self activityImageView];
    layer = [activityImageView3 layer];
    [layer setShadowOpacity:0.0];

    traitCollection = [(UIActivityActionHorizontalCell *)self traitCollection];
    SHSheetUISpecPlaceholderColor([traitCollection userInterfaceStyle]);
  }

  else
  {

    traitCollection = [(UIActivityActionHorizontalCell *)self activityImageView];
    layer2 = [traitCollection layer];
    LODWORD(v13) = 1032805417;
    [layer2 setShadowOpacity:v13];

    [MEMORY[0x1E69DC888] clearColor];
  }
  v15 = ;
  activityImageView4 = [(UIActivityActionHorizontalCell *)self activityImageView];
  [activityImageView4 setBackgroundColor:v15];

  if (placeholderCopy)
  {

    v15 = traitCollection;
  }
}

- (void)_updateConstraints
{
  _titleLabelFont = [(UIActivityActionHorizontalCell *)self _titleLabelFont];
  titleLabel = [(UIActivityActionHorizontalCell *)self titleLabel];
  [titleLabel setFont:_titleLabelFont];

  traitCollection = [(UIActivityActionHorizontalCell *)self traitCollection];
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

  titleLabel2 = [(UIActivityActionHorizontalCell *)self titleLabel];
  [titleLabel2 setTextAlignment:v8];

  v10 = MEMORY[0x1E696ACD8];
  if (IsAccessibilityCategory)
  {
    regularConstraints = [(UIActivityActionHorizontalCell *)self regularConstraints];
    [v10 deactivateConstraints:regularConstraints];

    v12 = MEMORY[0x1E696ACD8];
    [(UIActivityActionHorizontalCell *)self largeTextConstraints];
  }

  else
  {
    largeTextConstraints = [(UIActivityActionHorizontalCell *)self largeTextConstraints];
    [v10 deactivateConstraints:largeTextConstraints];

    v12 = MEMORY[0x1E696ACD8];
    [(UIActivityActionHorizontalCell *)self regularConstraints];
  }
  v14 = ;
  [v12 activateConstraints:v14];

  [(UIActivityActionHorizontalCell *)self setNeedsLayout];
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
      identifier = [(UIActivityActionHorizontalCell *)self identifier];
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
    [(UIActivityActionHorizontalCell *)self _updateDarkening];
  }
}

- (void)_updateDarkening
{
  v24[1] = *MEMORY[0x1E69E9840];
  imageSlotView = [(UIActivityActionHorizontalCell *)self imageSlotView];
  layer = [imageSlotView layer];
  contents = [layer contents];

  titleSlotView = [(UIActivityActionHorizontalCell *)self titleSlotView];
  layer2 = [titleSlotView layer];
  contents2 = [layer2 contents];

  imageSlotView2 = [(UIActivityActionHorizontalCell *)self imageSlotView];
  layer3 = [imageSlotView2 layer];
  [layer3 setContents:contents];

  titleSlotView2 = [(UIActivityActionHorizontalCell *)self titleSlotView];
  layer4 = [titleSlotView2 layer];
  [layer4 setContents:contents2];

  if (([(UIActivityActionHorizontalCell *)self isHighlighted]& 1) != 0 || [(UIActivityActionHorizontalCell *)self isDisabled])
  {
    grayColor = [MEMORY[0x1E69DC888] grayColor];
    v14 = 0;
    v15 = 1;
  }

  else
  {
    grayColor = [(UIActivityActionHorizontalCell *)self contentTintColor];
    v15 = 0;
    v14 = 1;
  }

  cGColor = [grayColor CGColor];
  imageSlotView3 = [(UIActivityActionHorizontalCell *)self imageSlotView];
  layer5 = [imageSlotView3 layer];
  [layer5 setContentsMultiplyColor:cGColor];

  if (v14)
  {
  }

  if (v15)
  {
  }

  if (([(UIActivityActionHorizontalCell *)self isHighlighted]& 1) != 0 || [(UIActivityActionHorizontalCell *)self isDisabled])
  {
    v19 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CB0]];
    v20 = [MEMORY[0x1E69DC888] colorWithWhite:0.5 alpha:1.0];
    [v19 setValue:objc_msgSend(v20 forKey:{"CGColor"), @"inputColor"}];

    v24[0] = v19;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  }

  else
  {
    v21 = 0;
  }

  activityImageView = [(UIActivityActionHorizontalCell *)self activityImageView];
  layer6 = [activityImageView layer];
  [layer6 setFilters:v21];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([(UIActivityActionHorizontalCell *)self isHighlighted]!= highlighted)
  {
    v5.receiver = self;
    v5.super_class = UIActivityActionHorizontalCell;
    [(UIActivityActionHorizontalCell *)&v5 setHighlighted:highlightedCopy];
    [(UIActivityActionHorizontalCell *)self _updateDarkening];
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  imageSlotView = [(UIActivityActionHorizontalCell *)self imageSlotView];
  layer = [imageSlotView layer];
  contents = [layer contents];

  titleSlotView = [(UIActivityActionHorizontalCell *)self titleSlotView];
  layer2 = [titleSlotView layer];
  contents2 = [layer2 contents];

  v15.receiver = self;
  v15.super_class = UIActivityActionHorizontalCell;
  [(UIActivityActionHorizontalCell *)&v15 setSelected:selectedCopy];
  imageSlotView2 = [(UIActivityActionHorizontalCell *)self imageSlotView];
  layer3 = [imageSlotView2 layer];
  [layer3 setContents:contents];

  titleSlotView2 = [(UIActivityActionHorizontalCell *)self titleSlotView];
  layer4 = [titleSlotView2 layer];
  [layer4 setContents:contents2];
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
    [(UIActivityActionHorizontalCell *)self _updateTitleView];
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
    [(UIActivityActionHorizontalCell *)self _updateImageView];
    imageCopy = v6;
  }
}

- (void)setImageSlotID:(unsigned int)d
{
  if (self->_imageSlotID != d)
  {
    self->_imageSlotID = d;
    [(UIActivityActionHorizontalCell *)self _updateImageView];
  }
}

- (void)setTitleSlotID:(unsigned int)d
{
  if (self->_titleSlotID != d)
  {
    self->_titleSlotID = d;
    [(UIActivityActionHorizontalCell *)self _updateTitleView];
  }
}

- (void)setContentTintColor:(id)color
{
  colorCopy = color;
  if (self->_contentTintColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_contentTintColor, color);
    [(UIActivityActionHorizontalCell *)self _updateContentTintColor];
    colorCopy = v6;
  }
}

- (void)_updateContentTintColor
{
  contentTintColor = [(UIActivityActionHorizontalCell *)self contentTintColor];
  titleLabel = [(UIActivityActionHorizontalCell *)self titleLabel];
  [titleLabel setTextColor:contentTintColor];

  contentTintColor2 = [(UIActivityActionHorizontalCell *)self contentTintColor];
  activityImageView = [(UIActivityActionHorizontalCell *)self activityImageView];
  [activityImageView setTintColor:contentTintColor2];

  contentTintColor3 = [(UIActivityActionHorizontalCell *)self contentTintColor];
  v7 = contentTintColor3;
  cGColor = [contentTintColor3 CGColor];
  imageSlotView = [(UIActivityActionHorizontalCell *)self imageSlotView];
  layer = [imageSlotView layer];
  [layer setContentsMultiplyColor:cGColor];
}

- (void)_updateImageView
{
  v37 = *MEMORY[0x1E69E9840];
  [(UIActivityActionHorizontalCell *)self _configureImageViewForPlaceholder:0];
  image = [(UIActivityActionHorizontalCell *)self image];
  activityImageView = [(UIActivityActionHorizontalCell *)self activityImageView];
  [activityImageView setImage:image];

  image2 = [(UIActivityActionHorizontalCell *)self image];

  activityImageView2 = [(UIActivityActionHorizontalCell *)self activityImageView];
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

  activityImageView3 = [(UIActivityActionHorizontalCell *)self activityImageView];
  layer = [activityImageView3 layer];
  *&v12 = v9;
  [layer setShadowOpacity:v12];

  imageSlotID = [(UIActivityActionHorizontalCell *)self imageSlotID];
  if (imageSlotID)
  {
    imageDimensionConstantConstraints = [MEMORY[0x1E6979320] objectForSlot:{-[UIActivityActionHorizontalCell imageSlotID](self, "imageSlotID")}];
    v15 = *MEMORY[0x1E6979DE0];
    imageSlotView = [(UIActivityActionHorizontalCell *)self imageSlotView];
    layer2 = [imageSlotView layer];
    [layer2 setContentsGravity:v15];

    imageSlotView2 = [(UIActivityActionHorizontalCell *)self imageSlotView];
    layer3 = [imageSlotView2 layer];
    [layer3 setContents:imageDimensionConstantConstraints];

    imageSlotView3 = [(UIActivityActionHorizontalCell *)self imageSlotView];
    [imageSlotView3 setBackgroundColor:0];
  }

  else
  {
    imageSlotView4 = [(UIActivityActionHorizontalCell *)self imageSlotView];
    layer4 = [imageSlotView4 layer];
    [layer4 setContents:0];

    if (image2)
    {
      [MEMORY[0x1E69DC888] clearColor];
    }

    else
    {
      imageSlotView4 = [(UIActivityActionHorizontalCell *)self traitCollection];
      SHSheetUISpecPlaceholderColor([imageSlotView4 userInterfaceStyle]);
    }
    v23 = ;
    activityImageView4 = [(UIActivityActionHorizontalCell *)self activityImageView];
    [activityImageView4 setBackgroundColor:v23];

    if (!image2)
    {

      v23 = imageSlotView4;
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    imageDimensionConstantConstraints = [(UIActivityActionHorizontalCell *)self imageDimensionConstantConstraints];
    v25 = [imageDimensionConstantConstraints countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v33;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v33 != v27)
          {
            objc_enumerationMutation(imageDimensionConstantConstraints);
          }

          v29 = *(*(&v32 + 1) + 8 * i);
          [(UIActivityActionHorizontalCell *)self _preferredImageSize];
          [v29 setConstant:?];
        }

        v26 = [imageDimensionConstantConstraints countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v26);
    }
  }

  if (imageSlotID)
  {
    v30 = 1.0;
  }

  else
  {
    v30 = 0.0;
  }

  imageSlotView5 = [(UIActivityActionHorizontalCell *)self imageSlotView];
  [imageSlotView5 setAlpha:v30];
}

- (void)_updateTitleView
{
  title = [(UIActivityActionHorizontalCell *)self title];
  v4 = [title length];

  if (v4)
  {
    [(UIActivityActionHorizontalCell *)self title];
  }

  else
  {
    [(UIActivityActionHorizontalCell *)self _placeholderString];
  }
  v5 = ;
  titleLabel = [(UIActivityActionHorizontalCell *)self titleLabel];
  [titleLabel setText:v5];

  if (v4)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  titleLabel2 = [(UIActivityActionHorizontalCell *)self titleLabel];
  [titleLabel2 setAlpha:v7];

  titleSlotID = [(UIActivityActionHorizontalCell *)self titleSlotID];
  if (titleSlotID)
  {
    traitCollection = [(UIActivityActionHorizontalCell *)self traitCollection];
    layoutDirection = [traitCollection layoutDirection];

    traitCollection2 = [(UIActivityActionHorizontalCell *)self traitCollection];
    preferredContentSizeCategory = [traitCollection2 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    v15 = MEMORY[0x1E6979DF8];
    if (layoutDirection != 1)
    {
      v15 = MEMORY[0x1E6979DD8];
    }

    v16 = MEMORY[0x1E6979320];
    v17 = *v15;
    titleSlotView5 = [v16 objectForSlot:{-[UIActivityActionHorizontalCell titleSlotID](self, "titleSlotID")}];
    v19 = _ShareSheetDeviceScreenScale();
    titleSlotView = [(UIActivityActionHorizontalCell *)self titleSlotView];
    layer = [titleSlotView layer];
    [layer setContentsScale:v19];

    v22 = _ShareSheetDeviceScreenScale();
    titleSlotView2 = [(UIActivityActionHorizontalCell *)self titleSlotView];
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

    titleSlotView3 = [(UIActivityActionHorizontalCell *)self titleSlotView];
    layer3 = [titleSlotView3 layer];
    [layer3 setContentsGravity:v25];

    titleSlotView4 = [(UIActivityActionHorizontalCell *)self titleSlotView];
    layer4 = [titleSlotView4 layer];
    [layer4 setContents:titleSlotView5];
  }

  else
  {
    titleSlotView5 = [(UIActivityActionHorizontalCell *)self titleSlotView];
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

  titleSlotView6 = [(UIActivityActionHorizontalCell *)self titleSlotView];
  [titleSlotView6 setAlpha:v30];
}

- (SHSheetContentLayoutSpec)layoutSpec
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutSpec);

  return WeakRetained;
}

@end