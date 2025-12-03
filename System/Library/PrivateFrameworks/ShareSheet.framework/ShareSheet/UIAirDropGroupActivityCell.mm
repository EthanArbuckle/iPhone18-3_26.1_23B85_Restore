@interface UIAirDropGroupActivityCell
+ (double)maximumLabelHeightForNode:(id)node width:(double)width traitCollection:(id)collection;
+ (id)_createLabelForSingleLine:(BOOL)line isAccessibilityContentSize:(BOOL)size;
+ (id)_formattedDisplayName:(id)name ignoreNameWrapping:(BOOL)wrapping isAccessibilityContentSize:(BOOL)size nameLabel:(id)label;
+ (id)_labelFont;
+ (id)_placeholderStringForSingleLine:(BOOL)line isAccessibilityContentSize:(BOOL)size;
- (SHSheetContentLayoutSpec)layoutSpec;
- (id)createTargetedPreview;
- (void)_configureImageViewForPlaceholder:(BOOL)placeholder;
- (void)_configurePlaceholderViews;
- (void)_didCompleteAirDropProgress:(double)progress animated:(BOOL)animated;
- (void)_installSubviewsIfNeeded;
- (void)_invalidateDisplayName;
- (void)_invalidateSubtitle;
- (void)_setLayoutSpec:(id)spec;
- (void)_updateConstraints;
- (void)_updateDarkening;
- (void)_updateFormattedDisplayName;
- (void)_updateImageView;
- (void)_updateProgress:(double)progress animated:(BOOL)animated;
- (void)_updateSubtitleView;
- (void)_updateTextView;
- (void)_updateTitleView;
- (void)_updateTransportView;
- (void)configureLayoutIfNeeded:(id)needed;
- (void)prepareForReuse;
- (void)setDisabled:(BOOL)disabled;
- (void)setDisplayName:(id)name;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImage:(id)image;
- (void)setImageSlotID:(unsigned int)d;
- (void)setIsGroup:(BOOL)group;
- (void)setProgress:(double)progress animated:(BOOL)animated;
- (void)setSelected:(BOOL)selected;
- (void)setSquareImage:(BOOL)image;
- (void)setSubtitle:(id)subtitle;
- (void)setSubtitleSlotID:(unsigned int)d;
- (void)setSubtitleTextColor:(id)color;
- (void)setTextSlotID:(unsigned int)d;
- (void)setTransportIconHidden:(BOOL)hidden animated:(BOOL)animated useDelay:(BOOL)delay;
- (void)setTransportImage:(id)image;
- (void)setTransportSlotID:(unsigned int)d;
- (void)setupConstraints;
- (void)startPulsing;
- (void)stopPulsing;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation UIAirDropGroupActivityCell

+ (double)maximumLabelHeightForNode:(id)node width:(double)width traitCollection:(id)collection
{
  nodeCopy = node;
  collectionCopy = collection;
  displayName = [nodeCopy displayName];
  text = [displayName text];

  subtitle = [nodeCopy subtitle];
  text2 = [subtitle text];

  if (text2)
  {
    isGroup = 1;
  }

  else
  {
    peopleSuggestion = [nodeCopy peopleSuggestion];
    isGroup = [peopleSuggestion isGroup];
  }

  preferredContentSizeCategory = [collectionCopy preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  v17 = [objc_opt_class() _createLabelForSingleLine:text2 != 0 isAccessibilityContentSize:IsAccessibilityCategory];
  v18 = [objc_opt_class() _formattedDisplayName:text ignoreNameWrapping:isGroup isAccessibilityContentSize:IsAccessibilityCategory nameLabel:v17];
  [v17 setText:v18];
  [v17 sizeThatFits:{width, 1.79769313e308}];
  v20 = ceil(v19);

  return v20;
}

- (void)_installSubviewsIfNeeded
{
  if (![(UIAirDropGroupActivityCell *)self didInstallSubviews])
  {
    [(UIAirDropGroupActivityCell *)self setDidInstallSubviews:1];
    v142 = [MEMORY[0x1E69DC730] effectWithStyle:9];
    v3 = [MEMORY[0x1E69DD248] effectForBlurEffect:v142 style:0];
    v4 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v3];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIAirDropGroupActivityCell *)self setVibrantTitleView:v4];
    contentView = [(UIAirDropGroupActivityCell *)self contentView];
    vibrantTitleView = [(UIAirDropGroupActivityCell *)self vibrantTitleView];
    [contentView addSubview:vibrantTitleView];

    v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(UIAirDropGroupActivityCell *)self setPlaceholderTitleView:v7];

    placeholderTitleView = [(UIAirDropGroupActivityCell *)self placeholderTitleView];
    [placeholderTitleView setTranslatesAutoresizingMaskIntoConstraints:0];

    placeholderTitleView2 = [(UIAirDropGroupActivityCell *)self placeholderTitleView];
    [placeholderTitleView2 setAlpha:0.0];

    traitCollection = [(UIAirDropGroupActivityCell *)self traitCollection];
    v11 = SHSheetUISpecPlaceholderColor([traitCollection userInterfaceStyle]);
    placeholderTitleView3 = [(UIAirDropGroupActivityCell *)self placeholderTitleView];
    [placeholderTitleView3 setBackgroundColor:v11];

    placeholderTitleView4 = [(UIAirDropGroupActivityCell *)self placeholderTitleView];
    layer = [placeholderTitleView4 layer];
    [layer setCornerRadius:2.0];

    contentView2 = [(UIAirDropGroupActivityCell *)self contentView];
    placeholderTitleView5 = [(UIAirDropGroupActivityCell *)self placeholderTitleView];
    [contentView2 addSubview:placeholderTitleView5];

    traitCollection2 = [(UIAirDropGroupActivityCell *)self traitCollection];
    preferredContentSizeCategory = [traitCollection2 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    v20 = [objc_opt_class() _createLabelForSingleLine:0 isAccessibilityContentSize:IsAccessibilityCategory];
    [(UIAirDropGroupActivityCell *)self setTextLabel:v20];

    textLabel = [(UIAirDropGroupActivityCell *)self textLabel];
    [textLabel setAlpha:0.0];

    textLabel2 = [(UIAirDropGroupActivityCell *)self textLabel];
    [textLabel2 setAccessibilityIdentifier:@"textLabel"];

    contentView3 = [(UIAirDropGroupActivityCell *)self contentView];
    textLabel3 = [(UIAirDropGroupActivityCell *)self textLabel];
    [contentView3 addSubview:textLabel3];

    v25 = [objc_opt_class() _createLabelForSingleLine:1 isAccessibilityContentSize:IsAccessibilityCategory];
    [(UIAirDropGroupActivityCell *)self setTitleLabel:v25];

    titleLabel = [(UIAirDropGroupActivityCell *)self titleLabel];
    [titleLabel setAlpha:0.0];

    titleLabel2 = [(UIAirDropGroupActivityCell *)self titleLabel];
    [titleLabel2 setAccessibilityIdentifier:@"titleLabel"];

    contentView4 = [(UIAirDropGroupActivityCell *)self contentView];
    titleLabel3 = [(UIAirDropGroupActivityCell *)self titleLabel];
    [contentView4 addSubview:titleLabel3];

    v30 = [objc_opt_class() _createLabelForSingleLine:1 isAccessibilityContentSize:IsAccessibilityCategory];
    [(UIAirDropGroupActivityCell *)self setSubtitleLabel:v30];

    subtitleLabel = [(UIAirDropGroupActivityCell *)self subtitleLabel];
    [subtitleLabel setAlpha:0.0];

    SFUIShareSheetActivityCellSpecClass = getSFUIShareSheetActivityCellSpecClass();
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    v34 = [SFUIShareSheetActivityCellSpecClass subtitleLabelColorForIdiom:{objc_msgSend(currentDevice, "userInterfaceIdiom")}];
    subtitleLabel2 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
    [subtitleLabel2 setTextColor:v34];

    subtitleLabel3 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
    [subtitleLabel3 setAccessibilityIdentifier:@"subtitleLabel"];

    contentView5 = [(UIAirDropGroupActivityCell *)self contentView];
    subtitleLabel4 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
    [contentView5 addSubview:subtitleLabel4];

    v39 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(UIAirDropGroupActivityCell *)self setTextSlotView:v39];

    textSlotView = [(UIAirDropGroupActivityCell *)self textSlotView];
    [textSlotView setAlpha:0.0];

    textSlotView2 = [(UIAirDropGroupActivityCell *)self textSlotView];
    [textSlotView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    vibrantTitleView2 = [(UIAirDropGroupActivityCell *)self vibrantTitleView];
    contentView6 = [vibrantTitleView2 contentView];
    textSlotView3 = [(UIAirDropGroupActivityCell *)self textSlotView];
    [contentView6 addSubview:textSlotView3];

    v45 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(UIAirDropGroupActivityCell *)self setTitleSlotView:v45];

    titleSlotView = [(UIAirDropGroupActivityCell *)self titleSlotView];
    [titleSlotView setAlpha:0.0];

    titleSlotView2 = [(UIAirDropGroupActivityCell *)self titleSlotView];
    [titleSlotView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    vibrantTitleView3 = [(UIAirDropGroupActivityCell *)self vibrantTitleView];
    contentView7 = [vibrantTitleView3 contentView];
    titleSlotView3 = [(UIAirDropGroupActivityCell *)self titleSlotView];
    [contentView7 addSubview:titleSlotView3];

    v51 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(UIAirDropGroupActivityCell *)self setSubtitleSlotView:v51];

    subtitleSlotView = [(UIAirDropGroupActivityCell *)self subtitleSlotView];
    [subtitleSlotView setAlpha:0.0];

    subtitleSlotView2 = [(UIAirDropGroupActivityCell *)self subtitleSlotView];
    [subtitleSlotView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    vibrantTitleView4 = [(UIAirDropGroupActivityCell *)self vibrantTitleView];
    contentView8 = [vibrantTitleView4 contentView];
    subtitleSlotView3 = [(UIAirDropGroupActivityCell *)self subtitleSlotView];
    [contentView8 addSubview:subtitleSlotView3];

    v57 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [(UIAirDropGroupActivityCell *)self setImageView:v57];

    imageView = [(UIAirDropGroupActivityCell *)self imageView];
    [imageView setTranslatesAutoresizingMaskIntoConstraints:0];

    imageView2 = [(UIAirDropGroupActivityCell *)self imageView];
    [imageView2 setClipsToBounds:1];

    [(UIAirDropGroupActivityCell *)self circleWidth];
    v61 = v60 * 0.5;
    imageView3 = [(UIAirDropGroupActivityCell *)self imageView];
    layer2 = [imageView3 layer];
    [layer2 setCornerRadius:v61];

    v64 = *MEMORY[0x1E695F060];
    v65 = *(MEMORY[0x1E695F060] + 8);
    imageView4 = [(UIAirDropGroupActivityCell *)self imageView];
    layer3 = [imageView4 layer];
    [layer3 setShadowOffset:{v64, v65}];

    imageView5 = [(UIAirDropGroupActivityCell *)self imageView];
    layer4 = [imageView5 layer];
    [layer4 setShadowRadius:10.0];

    imageView6 = [(UIAirDropGroupActivityCell *)self imageView];
    layer5 = [imageView6 layer];
    [layer5 setShadowPathIsBounds:1];

    imageView7 = [(UIAirDropGroupActivityCell *)self imageView];
    [imageView7 setAccessibilityIdentifier:@"imageView"];

    contentView9 = [(UIAirDropGroupActivityCell *)self contentView];
    imageView8 = [(UIAirDropGroupActivityCell *)self imageView];
    [contentView9 addSubview:imageView8];

    v75 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(UIAirDropGroupActivityCell *)self setImageSlotView:v75];

    imageSlotView = [(UIAirDropGroupActivityCell *)self imageSlotView];
    [imageSlotView setTranslatesAutoresizingMaskIntoConstraints:0];

    imageSlotView2 = [(UIAirDropGroupActivityCell *)self imageSlotView];
    [imageSlotView2 setAlpha:0.0];

    blackColor = [MEMORY[0x1E69DC888] blackColor];
    cGColor = [blackColor CGColor];
    imageSlotView3 = [(UIAirDropGroupActivityCell *)self imageSlotView];
    layer6 = [imageSlotView3 layer];
    [layer6 setShadowColor:cGColor];

    imageSlotView4 = [(UIAirDropGroupActivityCell *)self imageSlotView];
    layer7 = [imageSlotView4 layer];
    LODWORD(v84) = 1032805417;
    [layer7 setShadowOpacity:v84];

    imageSlotView5 = [(UIAirDropGroupActivityCell *)self imageSlotView];
    layer8 = [imageSlotView5 layer];
    [layer8 setShadowOffset:{v64, v65}];

    imageSlotView6 = [(UIAirDropGroupActivityCell *)self imageSlotView];
    layer9 = [imageSlotView6 layer];
    [layer9 setShadowRadius:10.0];

    imageSlotView7 = [(UIAirDropGroupActivityCell *)self imageSlotView];
    layer10 = [imageSlotView7 layer];
    [layer10 setShadowPathIsBounds:1];

    imageSlotView8 = [(UIAirDropGroupActivityCell *)self imageSlotView];
    layer11 = [imageSlotView8 layer];
    [layer11 size];
    v94 = v93 * 0.5;
    imageSlotView9 = [(UIAirDropGroupActivityCell *)self imageSlotView];
    layer12 = [imageSlotView9 layer];
    [layer12 setCornerRadius:v94];

    contentView10 = [(UIAirDropGroupActivityCell *)self contentView];
    imageSlotView10 = [(UIAirDropGroupActivityCell *)self imageSlotView];
    [contentView10 addSubview:imageSlotView10];

    v99 = [_UIAirDropProgressView alloc];
    v100 = [(_UIAirDropProgressView *)v99 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(_UIAirDropProgressView *)v100 setProgressLineWidth:2.0];
    [(_UIAirDropProgressView *)v100 setShowProgressTray:1];
    [(_UIAirDropProgressView *)v100 setAlpha:1.0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(_UIAirDropProgressView *)v100 setBackgroundColor:clearColor];

    [(_UIAirDropProgressView *)v100 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_UIAirDropProgressView *)v100 setAccessibilityIdentifier:@"circleProgressView"];
    [(UIAirDropGroupActivityCell *)self setCircleProgressView:v100];
    contentView11 = [(UIAirDropGroupActivityCell *)self contentView];
    [contentView11 addSubview:v100];

    v103 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [(UIAirDropGroupActivityCell *)self setTransportImageView:v103];

    transportImageView = [(UIAirDropGroupActivityCell *)self transportImageView];
    [transportImageView setAlpha:0.0];

    transportImageView2 = [(UIAirDropGroupActivityCell *)self transportImageView];
    [transportImageView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    blackColor2 = [MEMORY[0x1E69DC888] blackColor];
    cGColor2 = [blackColor2 CGColor];
    transportImageView3 = [(UIAirDropGroupActivityCell *)self transportImageView];
    layer13 = [transportImageView3 layer];
    [layer13 setShadowColor:cGColor2];

    transportImageView4 = [(UIAirDropGroupActivityCell *)self transportImageView];
    layer14 = [transportImageView4 layer];
    LODWORD(v112) = 1032805417;
    [layer14 setShadowOpacity:v112];

    transportImageView5 = [(UIAirDropGroupActivityCell *)self transportImageView];
    layer15 = [transportImageView5 layer];
    [layer15 setShadowOffset:{v64, v65}];

    transportImageView6 = [(UIAirDropGroupActivityCell *)self transportImageView];
    layer16 = [transportImageView6 layer];
    [layer16 setShadowRadius:5.0];

    transportImageView7 = [(UIAirDropGroupActivityCell *)self transportImageView];
    layer17 = [transportImageView7 layer];
    [layer17 setShadowPathIsBounds:1];

    transportImageView8 = [(UIAirDropGroupActivityCell *)self transportImageView];
    [transportImageView8 setAccessibilityIdentifier:@"transportImageView"];

    contentView12 = [(UIAirDropGroupActivityCell *)self contentView];
    transportImageView9 = [(UIAirDropGroupActivityCell *)self transportImageView];
    circleProgressView = [(UIAirDropGroupActivityCell *)self circleProgressView];
    [contentView12 insertSubview:transportImageView9 above:circleProgressView];

    v123 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(UIAirDropGroupActivityCell *)self setTransportSlotView:v123];

    transportSlotView = [(UIAirDropGroupActivityCell *)self transportSlotView];
    [transportSlotView setAlpha:0.0];

    transportSlotView2 = [(UIAirDropGroupActivityCell *)self transportSlotView];
    [transportSlotView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    blackColor3 = [MEMORY[0x1E69DC888] blackColor];
    cGColor3 = [blackColor3 CGColor];
    transportSlotView3 = [(UIAirDropGroupActivityCell *)self transportSlotView];
    layer18 = [transportSlotView3 layer];
    [layer18 setShadowColor:cGColor3];

    transportSlotView4 = [(UIAirDropGroupActivityCell *)self transportSlotView];
    layer19 = [transportSlotView4 layer];
    LODWORD(v132) = 1032805417;
    [layer19 setShadowOpacity:v132];

    transportSlotView5 = [(UIAirDropGroupActivityCell *)self transportSlotView];
    layer20 = [transportSlotView5 layer];
    [layer20 setShadowOffset:{v64, v65}];

    transportSlotView6 = [(UIAirDropGroupActivityCell *)self transportSlotView];
    layer21 = [transportSlotView6 layer];
    [layer21 setShadowRadius:5.0];

    transportSlotView7 = [(UIAirDropGroupActivityCell *)self transportSlotView];
    layer22 = [transportSlotView7 layer];
    [layer22 setShadowPathIsBounds:1];

    contentView13 = [(UIAirDropGroupActivityCell *)self contentView];
    transportSlotView8 = [(UIAirDropGroupActivityCell *)self transportSlotView];
    circleProgressView2 = [(UIAirDropGroupActivityCell *)self circleProgressView];
    [contentView13 insertSubview:transportSlotView8 above:circleProgressView2];

    [(UIAirDropGroupActivityCell *)self _configurePlaceholderViews];
    [(UIAirDropGroupActivityCell *)self setupConstraints];
  }
}

- (void)_setLayoutSpec:(id)spec
{
  specCopy = spec;
  [(UIAirDropGroupActivityCell *)self setLayoutSpec:specCopy];
  deviceClass = [specCopy deviceClass];
  v6 = &regularHeight5_8Rounded;
  v7 = &visionLarge;
  v8 = &regularHeight;
  if (deviceClass == 9)
  {
    v8 = &visionCompact;
  }

  if (deviceClass != 10)
  {
    v7 = v8;
  }

  if (deviceClass != 3)
  {
    v6 = v7;
  }

  layout = v6;
  [specCopy peopleIconWidth];
  v10 = v9;

  self->_circleWidth = v10;
  [getSFUIShareSheetActivityCellSpecClass() transportIconWidth];
  self->_transportIconWidth = v11;
  if (_ShareSheetSolariumEnabled())
  {
    self->_transportIconWidth = 22.0;
    layout = &solariumLayout;
  }
}

- (void)configureLayoutIfNeeded:(id)needed
{
  neededCopy = needed;
  layoutSpec = [(UIAirDropGroupActivityCell *)self layoutSpec];

  [(UIAirDropGroupActivityCell *)self _setLayoutSpec:neededCopy];
  if ([(UIAirDropGroupActivityCell *)self didInstallSubviews])
  {
    v5 = neededCopy;
    if (layoutSpec == neededCopy)
    {
      goto LABEL_6;
    }

    v6 = MEMORY[0x1E696ACD8];
    allConstraints = [(UIAirDropGroupActivityCell *)self allConstraints];
    [v6 deactivateConstraints:allConstraints];

    [(UIAirDropGroupActivityCell *)self circleWidth];
    v9 = v8 * 0.5;
    imageView = [(UIAirDropGroupActivityCell *)self imageView];
    layer = [imageView layer];
    [layer setCornerRadius:v9];

    [(UIAirDropGroupActivityCell *)self setupConstraints];
  }

  else
  {
    [(UIAirDropGroupActivityCell *)self _installSubviewsIfNeeded];
  }

  v5 = neededCopy;
LABEL_6:
}

- (void)setupConstraints
{
  v317[36] = *MEMORY[0x1E69E9840];
  circleProgressView = [(UIAirDropGroupActivityCell *)self circleProgressView];
  contentView = [(UIAirDropGroupActivityCell *)self contentView];
  [(UIAirDropGroupActivityCell *)self circleWidth];
  v5 = v4;
  if (_ShareSheetSolariumEnabled())
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 2.0;
  }

  v7 = MEMORY[0x1E695DF70];
  imageView = [(UIAirDropGroupActivityCell *)self imageView];
  widthAnchor = [imageView widthAnchor];
  v306 = [widthAnchor constraintEqualToConstant:v5];
  v317[0] = v306;
  imageView2 = [(UIAirDropGroupActivityCell *)self imageView];
  heightAnchor = [imageView2 heightAnchor];
  v297 = [heightAnchor constraintEqualToConstant:v5];
  v317[1] = v297;
  imageSlotView = [(UIAirDropGroupActivityCell *)self imageSlotView];
  widthAnchor2 = [imageSlotView widthAnchor];
  v288 = [widthAnchor2 constraintEqualToConstant:v5];
  v317[2] = v288;
  imageSlotView2 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  heightAnchor2 = [imageSlotView2 heightAnchor];
  v279 = [heightAnchor2 constraintEqualToConstant:v5];
  v317[3] = v279;
  vibrantTitleView = [(UIAirDropGroupActivityCell *)self vibrantTitleView];
  centerXAnchor = [vibrantTitleView centerXAnchor];
  textLabel = [(UIAirDropGroupActivityCell *)self textLabel];
  centerXAnchor2 = [textLabel centerXAnchor];
  v264 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v317[4] = v264;
  vibrantTitleView2 = [(UIAirDropGroupActivityCell *)self vibrantTitleView];
  centerYAnchor = [vibrantTitleView2 centerYAnchor];
  textLabel2 = [(UIAirDropGroupActivityCell *)self textLabel];
  centerYAnchor2 = [textLabel2 centerYAnchor];
  v249 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v317[5] = v249;
  vibrantTitleView3 = [(UIAirDropGroupActivityCell *)self vibrantTitleView];
  heightAnchor3 = [vibrantTitleView3 heightAnchor];
  textLabel3 = [(UIAirDropGroupActivityCell *)self textLabel];
  heightAnchor4 = [textLabel3 heightAnchor];
  v234 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];
  v317[6] = v234;
  vibrantTitleView4 = [(UIAirDropGroupActivityCell *)self vibrantTitleView];
  widthAnchor3 = [vibrantTitleView4 widthAnchor];
  textLabel4 = [(UIAirDropGroupActivityCell *)self textLabel];
  widthAnchor4 = [textLabel4 widthAnchor];
  v219 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
  v317[7] = v219;
  widthAnchor5 = [circleProgressView widthAnchor];
  imageSlotView3 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  widthAnchor6 = [imageSlotView3 widthAnchor];
  v207 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6 constant:10.0];
  v317[8] = v207;
  heightAnchor5 = [circleProgressView heightAnchor];
  imageSlotView4 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  heightAnchor6 = [imageSlotView4 heightAnchor];
  v195 = [heightAnchor5 constraintEqualToAnchor:heightAnchor6 constant:10.0];
  v317[9] = v195;
  centerXAnchor3 = [circleProgressView centerXAnchor];
  imageSlotView5 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  centerXAnchor4 = [imageSlotView5 centerXAnchor];
  v183 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v317[10] = v183;
  v313 = circleProgressView;
  centerYAnchor3 = [circleProgressView centerYAnchor];
  imageSlotView6 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  centerYAnchor4 = [imageSlotView6 centerYAnchor];
  v171 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v317[11] = v171;
  textSlotView = [(UIAirDropGroupActivityCell *)self textSlotView];
  centerXAnchor5 = [textSlotView centerXAnchor];
  textLabel5 = [(UIAirDropGroupActivityCell *)self textLabel];
  centerXAnchor6 = [textLabel5 centerXAnchor];
  v156 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  v317[12] = v156;
  textSlotView2 = [(UIAirDropGroupActivityCell *)self textSlotView];
  centerYAnchor5 = [textSlotView2 centerYAnchor];
  textLabel6 = [(UIAirDropGroupActivityCell *)self textLabel];
  centerYAnchor6 = [textLabel6 centerYAnchor];
  v145 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  v317[13] = v145;
  textSlotView3 = [(UIAirDropGroupActivityCell *)self textSlotView];
  heightAnchor7 = [textSlotView3 heightAnchor];
  textLabel7 = [(UIAirDropGroupActivityCell *)self textLabel];
  heightAnchor8 = [textLabel7 heightAnchor];
  v135 = [heightAnchor7 constraintEqualToAnchor:heightAnchor8];
  v317[14] = v135;
  textSlotView4 = [(UIAirDropGroupActivityCell *)self textSlotView];
  widthAnchor7 = [textSlotView4 widthAnchor];
  textLabel8 = [(UIAirDropGroupActivityCell *)self textLabel];
  widthAnchor8 = [textLabel8 widthAnchor];
  v125 = [widthAnchor7 constraintEqualToAnchor:widthAnchor8];
  v317[15] = v125;
  titleSlotView = [(UIAirDropGroupActivityCell *)self titleSlotView];
  centerXAnchor7 = [titleSlotView centerXAnchor];
  titleLabel = [(UIAirDropGroupActivityCell *)self titleLabel];
  centerXAnchor8 = [titleLabel centerXAnchor];
  v117 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
  v317[16] = v117;
  titleSlotView2 = [(UIAirDropGroupActivityCell *)self titleSlotView];
  centerYAnchor7 = [titleSlotView2 centerYAnchor];
  titleLabel2 = [(UIAirDropGroupActivityCell *)self titleLabel];
  centerYAnchor8 = [titleLabel2 centerYAnchor];
  v112 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
  v317[17] = v112;
  titleSlotView3 = [(UIAirDropGroupActivityCell *)self titleSlotView];
  heightAnchor9 = [titleSlotView3 heightAnchor];
  titleLabel3 = [(UIAirDropGroupActivityCell *)self titleLabel];
  heightAnchor10 = [titleLabel3 heightAnchor];
  v107 = [heightAnchor9 constraintEqualToAnchor:heightAnchor10];
  v317[18] = v107;
  titleSlotView4 = [(UIAirDropGroupActivityCell *)self titleSlotView];
  widthAnchor9 = [titleSlotView4 widthAnchor];
  titleLabel4 = [(UIAirDropGroupActivityCell *)self titleLabel];
  widthAnchor10 = [titleLabel4 widthAnchor];
  v102 = [widthAnchor9 constraintEqualToAnchor:widthAnchor10];
  v317[19] = v102;
  subtitleSlotView = [(UIAirDropGroupActivityCell *)self subtitleSlotView];
  centerXAnchor9 = [subtitleSlotView centerXAnchor];
  subtitleLabel = [(UIAirDropGroupActivityCell *)self subtitleLabel];
  centerXAnchor10 = [subtitleLabel centerXAnchor];
  v97 = [centerXAnchor9 constraintEqualToAnchor:centerXAnchor10];
  v317[20] = v97;
  subtitleSlotView2 = [(UIAirDropGroupActivityCell *)self subtitleSlotView];
  centerYAnchor9 = [subtitleSlotView2 centerYAnchor];
  subtitleLabel2 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
  centerYAnchor10 = [subtitleLabel2 centerYAnchor];
  v92 = [centerYAnchor9 constraintEqualToAnchor:centerYAnchor10];
  v317[21] = v92;
  subtitleSlotView3 = [(UIAirDropGroupActivityCell *)self subtitleSlotView];
  heightAnchor11 = [subtitleSlotView3 heightAnchor];
  subtitleLabel3 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
  heightAnchor12 = [subtitleLabel3 heightAnchor];
  v87 = [heightAnchor11 constraintEqualToAnchor:heightAnchor12];
  v317[22] = v87;
  subtitleSlotView4 = [(UIAirDropGroupActivityCell *)self subtitleSlotView];
  widthAnchor11 = [subtitleSlotView4 widthAnchor];
  subtitleLabel4 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
  widthAnchor12 = [subtitleLabel4 widthAnchor];
  v82 = [widthAnchor11 constraintEqualToAnchor:widthAnchor12];
  v317[23] = v82;
  transportSlotView = [(UIAirDropGroupActivityCell *)self transportSlotView];
  trailingAnchor = [transportSlotView trailingAnchor];
  imageSlotView7 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  trailingAnchor2 = [imageSlotView7 trailingAnchor];
  v77 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v6];
  v317[24] = v77;
  transportSlotView2 = [(UIAirDropGroupActivityCell *)self transportSlotView];
  bottomAnchor = [transportSlotView2 bottomAnchor];
  imageSlotView8 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  bottomAnchor2 = [imageSlotView8 bottomAnchor];
  v72 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v6];
  v317[25] = v72;
  transportSlotView3 = [(UIAirDropGroupActivityCell *)self transportSlotView];
  widthAnchor13 = [transportSlotView3 widthAnchor];
  [(UIAirDropGroupActivityCell *)self transportIconWidth];
  v69 = [widthAnchor13 constraintEqualToConstant:?];
  v317[26] = v69;
  transportSlotView4 = [(UIAirDropGroupActivityCell *)self transportSlotView];
  heightAnchor13 = [transportSlotView4 heightAnchor];
  [(UIAirDropGroupActivityCell *)self transportIconWidth];
  v66 = [heightAnchor13 constraintEqualToConstant:?];
  v317[27] = v66;
  transportImageView = [(UIAirDropGroupActivityCell *)self transportImageView];
  trailingAnchor3 = [transportImageView trailingAnchor];
  imageSlotView9 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  trailingAnchor4 = [imageSlotView9 trailingAnchor];
  v61 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:v6];
  v317[28] = v61;
  transportImageView2 = [(UIAirDropGroupActivityCell *)self transportImageView];
  bottomAnchor3 = [transportImageView2 bottomAnchor];
  imageSlotView10 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  bottomAnchor4 = [imageSlotView10 bottomAnchor];
  v56 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:v6];
  v317[29] = v56;
  transportImageView3 = [(UIAirDropGroupActivityCell *)self transportImageView];
  widthAnchor14 = [transportImageView3 widthAnchor];
  [(UIAirDropGroupActivityCell *)self transportIconWidth];
  v53 = [widthAnchor14 constraintEqualToConstant:?];
  v317[30] = v53;
  transportImageView4 = [(UIAirDropGroupActivityCell *)self transportImageView];
  heightAnchor14 = [transportImageView4 heightAnchor];
  [(UIAirDropGroupActivityCell *)self transportIconWidth];
  v50 = [heightAnchor14 constraintEqualToConstant:?];
  v317[31] = v50;
  placeholderTitleView = [(UIAirDropGroupActivityCell *)self placeholderTitleView];
  centerXAnchor11 = [placeholderTitleView centerXAnchor];
  titleLabel5 = [(UIAirDropGroupActivityCell *)self titleLabel];
  centerXAnchor12 = [titleLabel5 centerXAnchor];
  v45 = [centerXAnchor11 constraintEqualToAnchor:centerXAnchor12];
  v317[32] = v45;
  placeholderTitleView2 = [(UIAirDropGroupActivityCell *)self placeholderTitleView];
  centerYAnchor11 = [placeholderTitleView2 centerYAnchor];
  titleLabel6 = [(UIAirDropGroupActivityCell *)self titleLabel];
  centerYAnchor12 = [titleLabel6 centerYAnchor];
  v8 = [centerYAnchor11 constraintEqualToAnchor:centerYAnchor12];
  v317[33] = v8;
  placeholderTitleView3 = [(UIAirDropGroupActivityCell *)self placeholderTitleView];
  widthAnchor15 = [placeholderTitleView3 widthAnchor];
  v11 = [widthAnchor15 constraintEqualToConstant:58.0];
  v317[34] = v11;
  placeholderTitleView4 = [(UIAirDropGroupActivityCell *)self placeholderTitleView];
  heightAnchor15 = [placeholderTitleView4 heightAnchor];
  v14 = [heightAnchor15 constraintEqualToConstant:9.0];
  v317[35] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v317 count:36];
  v16 = [v7 arrayWithArray:v15];
  [(UIAirDropGroupActivityCell *)self setAllConstraints:v16];

  traitCollection = [(UIAirDropGroupActivityCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  LODWORD(imageView) = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  imageView3 = [(UIAirDropGroupActivityCell *)self imageView];
  centerYAnchor13 = [imageView3 centerYAnchor];
  centerYAnchor14 = [contentView centerYAnchor];
  v301 = [centerYAnchor13 constraintEqualToAnchor:centerYAnchor14];
  v316[0] = v301;
  imageView4 = [(UIAirDropGroupActivityCell *)self imageView];
  leadingAnchor = [imageView4 leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v289 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
  v316[1] = v289;
  imageSlotView11 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  centerYAnchor15 = [imageSlotView11 centerYAnchor];
  centerYAnchor16 = [contentView centerYAnchor];
  v277 = [centerYAnchor15 constraintEqualToAnchor:centerYAnchor16];
  v316[2] = v277;
  imageSlotView12 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  leadingAnchor3 = [imageSlotView12 leadingAnchor];
  leadingAnchor4 = [contentView leadingAnchor];
  v265 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:0.0];
  v316[3] = v265;
  textLabel9 = [(UIAirDropGroupActivityCell *)self textLabel];
  topAnchor = [textLabel9 topAnchor];
  topAnchor2 = [contentView topAnchor];
  v253 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:8.0];
  v316[4] = v253;
  bottomAnchor5 = [contentView bottomAnchor];
  textLabel10 = [(UIAirDropGroupActivityCell *)self textLabel];
  bottomAnchor6 = [textLabel10 bottomAnchor];
  v241 = [bottomAnchor5 constraintGreaterThanOrEqualToAnchor:bottomAnchor6 constant:8.0];
  v316[5] = v241;
  textLabel11 = [(UIAirDropGroupActivityCell *)self textLabel];
  trailingAnchor5 = [textLabel11 trailingAnchor];
  trailingAnchor6 = [contentView trailingAnchor];
  v229 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v316[6] = v229;
  textLabel12 = [(UIAirDropGroupActivityCell *)self textLabel];
  leadingAnchor5 = [textLabel12 leadingAnchor];
  imageSlotView13 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  trailingAnchor7 = [imageSlotView13 trailingAnchor];
  v214 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor7 constant:13.0];
  v316[7] = v214;
  textLabel13 = [(UIAirDropGroupActivityCell *)self textLabel];
  centerYAnchor17 = [textLabel13 centerYAnchor];
  imageView5 = [(UIAirDropGroupActivityCell *)self imageView];
  centerYAnchor18 = [imageView5 centerYAnchor];
  v199 = [centerYAnchor17 constraintEqualToAnchor:centerYAnchor18];
  v316[8] = v199;
  titleLabel7 = [(UIAirDropGroupActivityCell *)self titleLabel];
  topAnchor3 = [titleLabel7 topAnchor];
  textLabel14 = [(UIAirDropGroupActivityCell *)self textLabel];
  topAnchor4 = [textLabel14 topAnchor];
  v184 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v316[9] = v184;
  titleLabel8 = [(UIAirDropGroupActivityCell *)self titleLabel];
  bottomAnchor7 = [titleLabel8 bottomAnchor];
  textLabel15 = [(UIAirDropGroupActivityCell *)self textLabel];
  centerYAnchor19 = [textLabel15 centerYAnchor];
  v169 = [bottomAnchor7 constraintEqualToAnchor:centerYAnchor19];
  v316[10] = v169;
  titleLabel9 = [(UIAirDropGroupActivityCell *)self titleLabel];
  leadingAnchor6 = [titleLabel9 leadingAnchor];
  textLabel16 = [(UIAirDropGroupActivityCell *)self textLabel];
  leadingAnchor7 = [textLabel16 leadingAnchor];
  v154 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
  v316[11] = v154;
  titleLabel10 = [(UIAirDropGroupActivityCell *)self titleLabel];
  trailingAnchor8 = [titleLabel10 trailingAnchor];
  textLabel17 = [(UIAirDropGroupActivityCell *)self textLabel];
  trailingAnchor9 = [textLabel17 trailingAnchor];
  v144 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
  v316[12] = v144;
  subtitleLabel5 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
  topAnchor5 = [subtitleLabel5 topAnchor];
  textLabel18 = [(UIAirDropGroupActivityCell *)self textLabel];
  centerYAnchor20 = [textLabel18 centerYAnchor];
  v134 = [topAnchor5 constraintEqualToAnchor:centerYAnchor20];
  v316[13] = v134;
  subtitleLabel6 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
  bottomAnchor8 = [subtitleLabel6 bottomAnchor];
  textLabel19 = [(UIAirDropGroupActivityCell *)self textLabel];
  bottomAnchor9 = [textLabel19 bottomAnchor];
  v124 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9];
  v316[14] = v124;
  subtitleLabel7 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
  leadingAnchor8 = [subtitleLabel7 leadingAnchor];
  textLabel20 = [(UIAirDropGroupActivityCell *)self textLabel];
  leadingAnchor9 = [textLabel20 leadingAnchor];
  v21 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
  v316[15] = v21;
  subtitleLabel8 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
  trailingAnchor10 = [subtitleLabel8 trailingAnchor];
  textLabel21 = [(UIAirDropGroupActivityCell *)self textLabel];
  trailingAnchor11 = [textLabel21 trailingAnchor];
  v26 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11];
  v316[16] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v316 count:17];
  [(UIAirDropGroupActivityCell *)self setLargeTextConstraints:v27];

  imageView6 = [(UIAirDropGroupActivityCell *)self imageView];
  topAnchor6 = [imageView6 topAnchor];
  topAnchor7 = [contentView topAnchor];
  v302 = [topAnchor6 constraintEqualToAnchor:topAnchor7 constant:*layout];
  v315[0] = v302;
  imageView7 = [(UIAirDropGroupActivityCell *)self imageView];
  centerXAnchor13 = [imageView7 centerXAnchor];
  centerXAnchor14 = [contentView centerXAnchor];
  v290 = [centerXAnchor13 constraintEqualToAnchor:centerXAnchor14];
  v315[1] = v290;
  imageSlotView14 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  topAnchor8 = [imageSlotView14 topAnchor];
  imageView8 = [(UIAirDropGroupActivityCell *)self imageView];
  topAnchor9 = [imageView8 topAnchor];
  v275 = [topAnchor8 constraintEqualToAnchor:topAnchor9];
  v315[2] = v275;
  imageSlotView15 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  centerXAnchor15 = [imageSlotView15 centerXAnchor];
  imageView9 = [(UIAirDropGroupActivityCell *)self imageView];
  centerXAnchor16 = [imageView9 centerXAnchor];
  v260 = [centerXAnchor15 constraintEqualToAnchor:centerXAnchor16];
  v315[3] = v260;
  textLabel22 = [(UIAirDropGroupActivityCell *)self textLabel];
  topAnchor10 = [textLabel22 topAnchor];
  imageSlotView16 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  bottomAnchor10 = [imageSlotView16 bottomAnchor];
  v245 = [topAnchor10 constraintEqualToAnchor:bottomAnchor10 constant:*(layout + 8)];
  v315[4] = v245;
  textLabel23 = [(UIAirDropGroupActivityCell *)self textLabel];
  bottomAnchor11 = [textLabel23 bottomAnchor];
  bottomAnchor12 = [contentView bottomAnchor];
  v233 = [bottomAnchor11 constraintLessThanOrEqualToAnchor:bottomAnchor12 constant:*(layout + 16)];
  v315[5] = v233;
  textLabel24 = [(UIAirDropGroupActivityCell *)self textLabel];
  widthAnchor16 = [textLabel24 widthAnchor];
  widthAnchor17 = [contentView widthAnchor];
  v221 = [widthAnchor16 constraintEqualToAnchor:widthAnchor17 constant:*(layout + 24)];
  v315[6] = v221;
  textLabel25 = [(UIAirDropGroupActivityCell *)self textLabel];
  centerXAnchor17 = [textLabel25 centerXAnchor];
  centerXAnchor18 = [contentView centerXAnchor];
  v209 = [centerXAnchor17 constraintEqualToAnchor:centerXAnchor18];
  v315[7] = v209;
  titleLabel11 = [(UIAirDropGroupActivityCell *)self titleLabel];
  topAnchor11 = [titleLabel11 topAnchor];
  imageSlotView17 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  bottomAnchor13 = [imageSlotView17 bottomAnchor];
  v194 = [topAnchor11 constraintEqualToAnchor:bottomAnchor13 constant:*(layout + 8)];
  v315[8] = v194;
  titleLabel12 = [(UIAirDropGroupActivityCell *)self titleLabel];
  widthAnchor18 = [titleLabel12 widthAnchor];
  widthAnchor19 = [contentView widthAnchor];
  v182 = [widthAnchor18 constraintEqualToAnchor:widthAnchor19 constant:*(layout + 24)];
  v315[9] = v182;
  titleLabel13 = [(UIAirDropGroupActivityCell *)self titleLabel];
  centerXAnchor19 = [titleLabel13 centerXAnchor];
  centerXAnchor20 = [contentView centerXAnchor];
  v170 = [centerXAnchor19 constraintEqualToAnchor:centerXAnchor20];
  v315[10] = v170;
  subtitleLabel9 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
  topAnchor12 = [subtitleLabel9 topAnchor];
  titleLabel14 = [(UIAirDropGroupActivityCell *)self titleLabel];
  bottomAnchor14 = [titleLabel14 bottomAnchor];
  v155 = [topAnchor12 constraintEqualToAnchor:bottomAnchor14];
  v315[11] = v155;
  subtitleLabel10 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
  widthAnchor20 = [subtitleLabel10 widthAnchor];
  widthAnchor21 = [contentView widthAnchor];
  v31 = [widthAnchor20 constraintEqualToAnchor:widthAnchor21 constant:*(layout + 24)];
  v315[12] = v31;
  subtitleLabel11 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
  centerXAnchor21 = [subtitleLabel11 centerXAnchor];
  centerXAnchor22 = [contentView centerXAnchor];
  v35 = [centerXAnchor21 constraintEqualToAnchor:centerXAnchor22];
  v315[13] = v35;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v315 count:14];
  [(UIAirDropGroupActivityCell *)self setRegularConstraints:v36];

  allConstraints = [(UIAirDropGroupActivityCell *)self allConstraints];
  if (imageView)
  {
    [(UIAirDropGroupActivityCell *)self largeTextConstraints];
  }

  else
  {
    [(UIAirDropGroupActivityCell *)self regularConstraints];
  }
  v38 = ;
  [allConstraints addObjectsFromArray:v38];

  v39 = MEMORY[0x1E696ACD8];
  allConstraints2 = [(UIAirDropGroupActivityCell *)self allConstraints];
  [v39 activateConstraints:allConstraints2];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = UIAirDropGroupActivityCell;
  changeCopy = change;
  [(UIAirDropGroupActivityCell *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(UIAirDropGroupActivityCell *)self traitCollection:v8.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    [(UIAirDropGroupActivityCell *)self _updateConstraints];
  }
}

- (void)setProgress:(double)progress animated:(BOOL)animated
{
  self->_progress = progress;
  objc_initWeak(&location, self);
  v6 = *MEMORY[0x1E69DDA98];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__UIAirDropGroupActivityCell_setProgress_animated___block_invoke;
  v7[3] = &unk_1E71F9580;
  objc_copyWeak(v8, &location);
  v8[1] = *&progress;
  animatedCopy = animated;
  [v6 _performBlockAfterCATransactionCommits:v7];
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

void __51__UIAirDropGroupActivityCell_setProgress_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateProgress:*(a1 + 48) animated:*(a1 + 40)];
}

- (void)_updateProgress:(double)progress animated:(BOOL)animated
{
  animatedCopy = animated;
  stateBeingRestored = [(UIAirDropGroupActivityCell *)self stateBeingRestored];
  objc_initWeak(&location, self);
  circleProgressView = [(UIAirDropGroupActivityCell *)self circleProgressView];
  v9 = animatedCopy & ~stateBeingRestored;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__UIAirDropGroupActivityCell__updateProgress_animated___block_invoke;
  v10[3] = &unk_1E71F9580;
  objc_copyWeak(v11, &location);
  v11[1] = *&progress;
  v12 = v9;
  [circleProgressView setProgress:v9 animated:v10 completion:progress];

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __55__UIAirDropGroupActivityCell__updateProgress_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didCompleteAirDropProgress:*(a1 + 48) animated:*(a1 + 40)];
}

- (void)_didCompleteAirDropProgress:(double)progress animated:(BOOL)animated
{
  if (progress >= 1.0 || progress == 0.0)
  {
    if (animated)
    {
      objc_initWeak(&location, self);
      v9 = MEMORY[0x1E69DD250];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __67__UIAirDropGroupActivityCell__didCompleteAirDropProgress_animated___block_invoke;
      v11[3] = &unk_1E71F95A8;
      objc_copyWeak(&v12, &location);
      [v9 animateWithDuration:v11 animations:0.5];
      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
      return;
    }

    circleProgressView = [(UIAirDropGroupActivityCell *)self circleProgressView];
    v10 = circleProgressView;
    goto LABEL_8;
  }

  [(UIAirDropGroupActivityCell *)self progress];
  v6 = v5;
  circleProgressView = [(UIAirDropGroupActivityCell *)self circleProgressView];
  v10 = circleProgressView;
  if (v6 <= 0.0)
  {
LABEL_8:
    v8 = 0.0;
    goto LABEL_9;
  }

  v8 = 1.0;
LABEL_9:
  [circleProgressView setAlpha:v8];
}

void __67__UIAirDropGroupActivityCell__didCompleteAirDropProgress_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained circleProgressView];
  [v1 setAlpha:0.0];
}

- (void)startPulsing
{
  if (![(UIAirDropGroupActivityCell *)self isPulsing])
  {
    [(UIAirDropGroupActivityCell *)self setIsPulsing:1];
    subtitle = [(UIAirDropGroupActivityCell *)self subtitle];
    if ([subtitle length])
    {
      [(UIAirDropGroupActivityCell *)self subtitleLabel];
    }

    else
    {
      [(UIAirDropGroupActivityCell *)self subtitleSlotView];
    }
    v4 = ;

    [v4 setAlpha:1.0];
    v5 = MEMORY[0x1E69DD250];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__UIAirDropGroupActivityCell_startPulsing__block_invoke;
    v7[3] = &unk_1E71F9510;
    v8 = v4;
    v6 = v4;
    [v5 animateWithDuration:24 delay:v7 options:0 animations:0.75 completion:0.0];
  }
}

- (void)stopPulsing
{
  if ([(UIAirDropGroupActivityCell *)self isPulsing])
  {
    [(UIAirDropGroupActivityCell *)self setIsPulsing:0];
    subtitleLabel = [(UIAirDropGroupActivityCell *)self subtitleLabel];
    [subtitleLabel _removeAllAnimations:1];

    subtitleLabel2 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
    [subtitleLabel2 alpha];
    v6 = v5;

    if (v6 > 0.0)
    {
      subtitleLabel3 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
      [subtitleLabel3 setAlpha:1.0];
    }

    subtitleSlotView = [(UIAirDropGroupActivityCell *)self subtitleSlotView];
    layer = [subtitleSlotView layer];
    [layer removeAllAnimations];

    subtitleSlotView2 = [(UIAirDropGroupActivityCell *)self subtitleSlotView];
    [subtitleSlotView2 alpha];
    v12 = v11;

    if (v12 > 0.0)
    {
      subtitleSlotView3 = [(UIAirDropGroupActivityCell *)self subtitleSlotView];
      [subtitleSlotView3 setAlpha:1.0];
    }
  }
}

- (id)createTargetedPreview
{
  if ([(UIAirDropGroupActivityCell *)self imageSlotID])
  {
    [(UIAirDropGroupActivityCell *)self imageSlotView];
  }

  else
  {
    [(UIAirDropGroupActivityCell *)self imageView];
  }
  v3 = ;
  [v3 frame];
  v4 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:0.0 cornerRadius:0.0];
  v5 = objc_alloc_init(MEMORY[0x1E69DCE28]);
  [v5 setVisiblePath:v4];
  v6 = _ShareSheetSolariumEnabled();
  v7 = objc_alloc(MEMORY[0x1E69DD070]);
  if (v6)
  {
    v8 = [v7 initWithView:v3];
  }

  else
  {
    v8 = [v7 initWithView:v3 parameters:v5];
  }

  v9 = v8;

  return v9;
}

- (void)prepareForReuse
{
  v7.receiver = self;
  v7.super_class = UIAirDropGroupActivityCell;
  [(UIAirDropGroupActivityCell *)&v7 prepareForReuse];
  [(UIAirDropGroupActivityCell *)self setDisplayName:0];
  [(UIAirDropGroupActivityCell *)self setTextSlotID:0];
  [(UIAirDropGroupActivityCell *)self setSubtitle:0];
  [(UIAirDropGroupActivityCell *)self setSubtitleSlotID:0];
  [(UIAirDropGroupActivityCell *)self setImage:0];
  [(UIAirDropGroupActivityCell *)self setImageSlotID:0];
  [(UIAirDropGroupActivityCell *)self setTransportImage:0];
  [(UIAirDropGroupActivityCell *)self setTransportSlotID:0];
  [(UIAirDropGroupActivityCell *)self setSquareImage:0];
  [(UIAirDropGroupActivityCell *)self setDisabled:0];
  [(UIAirDropGroupActivityCell *)self setIsGroup:0];
  [(UIAirDropGroupActivityCell *)self _configurePlaceholderViews];
  SFUIShareSheetActivityCellSpecClass = getSFUIShareSheetActivityCellSpecClass();
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [SFUIShareSheetActivityCellSpecClass subtitleLabelColorForIdiom:{objc_msgSend(currentDevice, "userInterfaceIdiom")}];
  subtitleLabel = [(UIAirDropGroupActivityCell *)self subtitleLabel];
  [subtitleLabel setTextColor:v5];

  [(UIAirDropGroupActivityCell *)self stopPulsing];
}

+ (id)_placeholderStringForSingleLine:(BOOL)line isAccessibilityContentSize:(BOOL)size
{
  if (line)
  {
    v5 = @"Apple";
  }

  else
  {
    v7 = @"Apple\nInc";
    if (size)
    {
      v7 = @"Apple\nInc\n";
    }

    v5 = v7;
  }

  return v5;
}

+ (id)_labelFont
{
  v2 = MEMORY[0x1E69DB878];
  SFUIShareSheetActivityCellSpecClass = getSFUIShareSheetActivityCellSpecClass();
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [SFUIShareSheetActivityCellSpecClass titleLabelFontTextStyleForIdiom:{objc_msgSend(currentDevice, "userInterfaceIdiom")}];
  v6 = [v2 preferredFontForTextStyle:v5];

  return v6;
}

+ (id)_createLabelForSingleLine:(BOOL)line isAccessibilityContentSize:(BOOL)size
{
  lineCopy = line;
  v5 = [objc_opt_class() _placeholderStringForSingleLine:line isAccessibilityContentSize:size];
  v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  _labelFont = [objc_opt_class() _labelFont];
  [v6 setFont:_labelFont];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v6 setBackgroundColor:clearColor];

  [v6 setTextAlignment:1];
  if (lineCopy)
  {
    v9 = 1;
  }

  else
  {
    v9 = 3;
  }

  [v6 setNumberOfLines:v9];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setText:v5];
  [v6 setAlpha:0.0];

  return v6;
}

- (void)_updateConstraints
{
  _labelFont = [objc_opt_class() _labelFont];
  titleLabel = [(UIAirDropGroupActivityCell *)self titleLabel];
  [titleLabel setFont:_labelFont];

  subtitleLabel = [(UIAirDropGroupActivityCell *)self subtitleLabel];
  [subtitleLabel setFont:_labelFont];

  textLabel = [(UIAirDropGroupActivityCell *)self textLabel];
  [textLabel setFont:_labelFont];

  [(UIAirDropGroupActivityCell *)self _invalidateDisplayName];
  traitCollection = [(UIAirDropGroupActivityCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  v9 = MEMORY[0x1E696ACD8];
  if (IsAccessibilityCategory)
  {
    regularConstraints = [(UIAirDropGroupActivityCell *)self regularConstraints];
    [v9 deactivateConstraints:regularConstraints];

    v11 = MEMORY[0x1E696ACD8];
    [(UIAirDropGroupActivityCell *)self largeTextConstraints];
  }

  else
  {
    largeTextConstraints = [(UIAirDropGroupActivityCell *)self largeTextConstraints];
    [v9 deactivateConstraints:largeTextConstraints];

    v11 = MEMORY[0x1E696ACD8];
    [(UIAirDropGroupActivityCell *)self regularConstraints];
  }
  v13 = ;
  [v11 activateConstraints:v13];

  [(UIAirDropGroupActivityCell *)self setNeedsLayout];
}

- (void)_updateFormattedDisplayName
{
  displayName = [(UIAirDropGroupActivityCell *)self displayName];
  textLabel = [(UIAirDropGroupActivityCell *)self textLabel];
  traitCollection = [(UIAirDropGroupActivityCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  subtitle = [(UIAirDropGroupActivityCell *)self subtitle];
  if (subtitle)
  {
    isGroup = 1;
  }

  else
  {
    isGroup = [(UIAirDropGroupActivityCell *)self isGroup];
  }

  v9 = [objc_opt_class() _formattedDisplayName:displayName ignoreNameWrapping:isGroup isAccessibilityContentSize:IsAccessibilityCategory nameLabel:textLabel];

  formattedDisplayName = self->_formattedDisplayName;
  self->_formattedDisplayName = v9;
}

+ (id)_formattedDisplayName:(id)name ignoreNameWrapping:(BOOL)wrapping isAccessibilityContentSize:(BOOL)size nameLabel:(id)label
{
  sizeCopy = size;
  v32[3] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  labelCopy = label;
  v11 = nameCopy;
  if (!labelCopy)
  {
    labelCopy = [objc_opt_class() _createLabelForSingleLine:0 isAccessibilityContentSize:sizeCopy];
  }

  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v13 = [v11 componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

  v14 = v11;
  if (!sizeCopy)
  {
    if ([v13 count] != 2 || wrapping)
    {
      v14 = SFNonBreakingStringFromDeviceName();
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
      [v15 setLineBreakMode:0];
      [v15 setHyphenationFactor:0.0];
      [v15 setLineBreakStrategy:0xFFFFLL];
      [v15 setAlignment:1];
      v31[0] = *MEMORY[0x1E69DB650];
      textColor = [labelCopy textColor];
      v32[0] = textColor;
      v31[1] = *MEMORY[0x1E69DB648];
      font = [labelCopy font];
      v32[1] = font;
      v31[2] = *MEMORY[0x1E69DB688];
      v18 = [v15 copy];
      v32[2] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:3];

      firstObject = [v13 firstObject];
      lastObject = [v13 lastObject];
      v14 = v11;
      if ([firstObject length])
      {
        v14 = v11;
        if ([lastObject length])
        {
          v22 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:firstObject attributes:v19];
          [labelCopy frame];
          [v22 boundingRectWithSize:35 options:0 context:{v23, v24}];
          v35 = CGRectIntegral(v34);
          height = v35.size.height;
          font2 = [labelCopy font];
          [font2 lineHeight];
          *&v27 = v27;
          v28 = llroundf(*&v27);

          v29 = height;
          v14 = v11;
          if (llroundf(v29) / v28 == 1)
          {
            v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@", firstObject, lastObject];
          }
        }
      }
    }
  }

  return v14;
}

- (void)setDisplayName:(id)name
{
  nameCopy = name;
  displayName = self->_displayName;
  v10 = nameCopy;
  v6 = displayName;
  if (v6 == v10)
  {

    goto LABEL_8;
  }

  if ((v10 != 0) == (v6 == 0))
  {

    goto LABEL_7;
  }

  v7 = [(NSString *)v10 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_7:
    v8 = [(NSString *)v10 copy];
    v9 = self->_displayName;
    self->_displayName = v8;

    [(UIAirDropGroupActivityCell *)self _invalidateDisplayName];
  }

LABEL_8:
}

- (void)setTextSlotID:(unsigned int)d
{
  if (self->_textSlotID != d)
  {
    self->_textSlotID = d;
    [(UIAirDropGroupActivityCell *)self _invalidateDisplayName];
  }
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  subtitle = self->_subtitle;
  v10 = subtitleCopy;
  subtitleCopy2 = subtitle;
  if (subtitleCopy2 == v10)
  {

    goto LABEL_8;
  }

  if ((v10 != 0) == (subtitleCopy2 == 0))
  {

    goto LABEL_7;
  }

  v7 = [(NSString *)v10 isEqual:subtitleCopy2];

  if ((v7 & 1) == 0)
  {
LABEL_7:
    v8 = [(NSString *)v10 copy];
    v9 = self->_subtitle;
    self->_subtitle = v8;

    [(UIAirDropGroupActivityCell *)self _invalidateSubtitle];
  }

LABEL_8:
}

- (void)setSubtitleSlotID:(unsigned int)d
{
  if (self->_subtitleSlotID != d)
  {
    self->_subtitleSlotID = d;
    [(UIAirDropGroupActivityCell *)self _invalidateSubtitle];
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_image, image);
    [(UIAirDropGroupActivityCell *)self _updateImageView];
    imageCopy = v6;
  }
}

- (void)setImageSlotID:(unsigned int)d
{
  if (self->_imageSlotID != d)
  {
    self->_imageSlotID = d;
    [(UIAirDropGroupActivityCell *)self _updateImageView];
  }
}

- (void)setTransportImage:(id)image
{
  imageCopy = image;
  if (self->_transportImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_transportImage, image);
    [(UIAirDropGroupActivityCell *)self _updateTransportView];
    imageCopy = v6;
  }
}

- (void)setTransportSlotID:(unsigned int)d
{
  if (self->_transportSlotID != d)
  {
    self->_transportSlotID = d;
    [(UIAirDropGroupActivityCell *)self _updateTransportView];
  }
}

- (void)setSquareImage:(BOOL)image
{
  if (self->_squareImage != image)
  {
    imageCopy = image;
    self->_squareImage = image;
    if (image)
    {
      imageSlotView = [(UIAirDropGroupActivityCell *)self imageSlotView];
      [imageSlotView bounds];
      v7 = CGRectGetWidth(v12) * 0.5;
    }

    else
    {
      v7 = 0.0;
    }

    imageSlotView2 = [(UIAirDropGroupActivityCell *)self imageSlotView];
    layer = [imageSlotView2 layer];
    [layer setCornerRadius:v7];

    if (imageCopy)
    {
    }

    imageSlotView3 = [(UIAirDropGroupActivityCell *)self imageSlotView];
    layer2 = [imageSlotView3 layer];
    [layer2 setMasksToBounds:imageCopy];
  }
}

- (void)setDisabled:(BOOL)disabled
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_disabled != disabled)
  {
    disabledCopy = disabled;
    self->_disabled = disabled;
    v5 = share_sheet_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [(UIAirDropGroupActivityCell *)self identifier];
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
      _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Updating People Cell with identifier:%@ to disabled:%s", &v9, 0x16u);
    }

    [(UIAirDropGroupActivityCell *)self _updateDarkening];
  }
}

- (void)setSubtitleTextColor:(id)color
{
  colorCopy = color;
  v9 = colorCopy;
  if (!colorCopy)
  {
    SFUIShareSheetActivityCellSpecClass = getSFUIShareSheetActivityCellSpecClass();
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    colorCopy = [SFUIShareSheetActivityCellSpecClass subtitleLabelColorForIdiom:{objc_msgSend(currentDevice, "userInterfaceIdiom")}];
  }

  subtitleLabel = [(UIAirDropGroupActivityCell *)self subtitleLabel];
  [subtitleLabel setTextColor:colorCopy];

  v8 = v9;
  if (!v9)
  {

    v8 = 0;
  }
}

- (void)setIsGroup:(BOOL)group
{
  if (self->_isGroup != group)
  {
    self->_isGroup = group;
    [(UIAirDropGroupActivityCell *)self _invalidateDisplayName];
  }
}

- (void)_invalidateDisplayName
{
  [(UIAirDropGroupActivityCell *)self _updateFormattedDisplayName];
  subtitle = [(UIAirDropGroupActivityCell *)self subtitle];
  if ([subtitle length])
  {

LABEL_4:

    [(UIAirDropGroupActivityCell *)self _updateTitleView];
    return;
  }

  subtitleSlotID = [(UIAirDropGroupActivityCell *)self subtitleSlotID];

  if (subtitleSlotID)
  {
    goto LABEL_4;
  }

  [(UIAirDropGroupActivityCell *)self _updateTextView];
}

- (void)_invalidateSubtitle
{
  [(UIAirDropGroupActivityCell *)self _invalidateDisplayName];

  [(UIAirDropGroupActivityCell *)self _updateSubtitleView];
}

- (void)_configurePlaceholderViews
{
  placeholderTitleView = [(UIAirDropGroupActivityCell *)self placeholderTitleView];
  [placeholderTitleView setAlpha:1.0];

  [(UIAirDropGroupActivityCell *)self _configureImageViewForPlaceholder:1];
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
    imageView = [(UIAirDropGroupActivityCell *)self imageView];
    [imageView alpha];
    v6 = v7;
  }

  imageView2 = [(UIAirDropGroupActivityCell *)self imageView];
  [imageView2 setAlpha:v6];

  if (placeholderCopy)
  {
    imageView3 = [(UIAirDropGroupActivityCell *)self imageView];
    layer = [imageView3 layer];
    [layer setShadowOpacity:0.0];

    traitCollection = [(UIAirDropGroupActivityCell *)self traitCollection];
    SHSheetUISpecPlaceholderColor([traitCollection userInterfaceStyle]);
  }

  else
  {

    traitCollection = [(UIAirDropGroupActivityCell *)self imageView];
    layer2 = [traitCollection layer];
    LODWORD(v13) = 1032805417;
    [layer2 setShadowOpacity:v13];

    [MEMORY[0x1E69DC888] clearColor];
  }
  v15 = ;
  imageView4 = [(UIAirDropGroupActivityCell *)self imageView];
  [imageView4 setBackgroundColor:v15];

  if (placeholderCopy)
  {

    v15 = traitCollection;
  }
}

- (void)_updateTextView
{
  placeholderTitleView = [(UIAirDropGroupActivityCell *)self placeholderTitleView];
  [placeholderTitleView setAlpha:0.0];

  formattedDisplayName = [(UIAirDropGroupActivityCell *)self formattedDisplayName];
  v4 = [formattedDisplayName length];
  traitCollection = [(UIAirDropGroupActivityCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  v8 = formattedDisplayName;
  if (!v4)
  {
    v8 = [objc_opt_class() _placeholderStringForSingleLine:0 isAccessibilityContentSize:IsAccessibilityCategory];
  }

  textLabel = [(UIAirDropGroupActivityCell *)self textLabel];
  [textLabel setText:v8];

  if (v4)
  {
    v10 = 1.0;
  }

  else
  {

    v10 = 0.0;
  }

  textLabel2 = [(UIAirDropGroupActivityCell *)self textLabel];
  [textLabel2 setAlpha:v10];

  textSlotID = [(UIAirDropGroupActivityCell *)self textSlotID];
  if (textSlotID)
  {
    traitCollection2 = [(UIAirDropGroupActivityCell *)self traitCollection];
    layoutDirection = [traitCollection2 layoutDirection];

    traitCollection3 = [(UIAirDropGroupActivityCell *)self traitCollection];
    preferredContentSizeCategory2 = [traitCollection3 preferredContentSizeCategory];
    v17 = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory2);

    v18 = MEMORY[0x1E6979DF8];
    if (layoutDirection != 1)
    {
      v18 = MEMORY[0x1E6979DD8];
    }

    v19 = MEMORY[0x1E6979320];
    v20 = *v18;
    textSlotView6 = [v19 objectForSlot:{-[UIAirDropGroupActivityCell textSlotID](self, "textSlotID")}];
    textSlotView = [(UIAirDropGroupActivityCell *)self textSlotView];
    [textSlotView setAlpha:1.0];

    v23 = _ShareSheetDeviceScreenScale();
    textSlotView2 = [(UIAirDropGroupActivityCell *)self textSlotView];
    layer = [textSlotView2 layer];
    [layer setContentsScale:v23];

    v26 = _ShareSheetDeviceScreenScale();
    textSlotView3 = [(UIAirDropGroupActivityCell *)self textSlotView];
    layer2 = [textSlotView3 layer];
    [layer2 setRasterizationScale:v26];

    if (v17)
    {
      v29 = v20;
    }

    else
    {
      v29 = *MEMORY[0x1E6979DB8];
    }

    textSlotView4 = [(UIAirDropGroupActivityCell *)self textSlotView];
    layer3 = [textSlotView4 layer];
    [layer3 setContentsGravity:v29];

    textSlotView5 = [(UIAirDropGroupActivityCell *)self textSlotView];
    layer4 = [textSlotView5 layer];
    [layer4 setContents:textSlotView6];
  }

  else
  {
    textSlotView6 = [(UIAirDropGroupActivityCell *)self textSlotView];
    textSlotView5 = [textSlotView6 layer];
    [textSlotView5 setContents:0];
  }

  if (textSlotID)
  {
    v34 = 1.0;
  }

  else
  {
    v34 = 0.0;
  }

  textSlotView7 = [(UIAirDropGroupActivityCell *)self textSlotView];
  [textSlotView7 setAlpha:v34];

  if (v4 || textSlotID)
  {
    titleSlotView = [(UIAirDropGroupActivityCell *)self titleSlotView];
    [titleSlotView setAlpha:0.0];

    titleLabel = [(UIAirDropGroupActivityCell *)self titleLabel];
    [titleLabel setAlpha:0.0];

    v38 = [objc_opt_class() _placeholderStringForSingleLine:1 isAccessibilityContentSize:IsAccessibilityCategory];
    titleLabel2 = [(UIAirDropGroupActivityCell *)self titleLabel];
    [titleLabel2 setText:v38];
  }
}

- (void)_updateTitleView
{
  placeholderTitleView = [(UIAirDropGroupActivityCell *)self placeholderTitleView];
  [placeholderTitleView setAlpha:0.0];

  formattedDisplayName = [(UIAirDropGroupActivityCell *)self formattedDisplayName];
  v4 = [formattedDisplayName length];
  traitCollection = [(UIAirDropGroupActivityCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  v8 = formattedDisplayName;
  if (!v4)
  {
    v8 = [objc_opt_class() _placeholderStringForSingleLine:1 isAccessibilityContentSize:IsAccessibilityCategory];
  }

  titleLabel = [(UIAirDropGroupActivityCell *)self titleLabel];
  [titleLabel setText:v8];

  if (v4)
  {
    v10 = 1.0;
  }

  else
  {

    v10 = 0.0;
  }

  titleLabel2 = [(UIAirDropGroupActivityCell *)self titleLabel];
  [titleLabel2 setAlpha:v10];

  if ([(UIAirDropGroupActivityCell *)self isGroup])
  {
    v12 = 0.8;
  }

  else
  {
    v12 = 0.0;
  }

  titleLabel3 = [(UIAirDropGroupActivityCell *)self titleLabel];
  [titleLabel3 setMinimumScaleFactor:v12];

  isGroup = [(UIAirDropGroupActivityCell *)self isGroup];
  titleLabel4 = [(UIAirDropGroupActivityCell *)self titleLabel];
  [titleLabel4 setAdjustsFontSizeToFitWidth:isGroup];

  textSlotID = [(UIAirDropGroupActivityCell *)self textSlotID];
  if (textSlotID)
  {
    traitCollection2 = [(UIAirDropGroupActivityCell *)self traitCollection];
    layoutDirection = [traitCollection2 layoutDirection];

    traitCollection3 = [(UIAirDropGroupActivityCell *)self traitCollection];
    preferredContentSizeCategory2 = [traitCollection3 preferredContentSizeCategory];
    v21 = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory2);

    v22 = MEMORY[0x1E6979DF8];
    if (layoutDirection != 1)
    {
      v22 = MEMORY[0x1E6979DD8];
    }

    v23 = MEMORY[0x1E6979320];
    v24 = *v22;
    titleSlotView5 = [v23 objectForSlot:{-[UIAirDropGroupActivityCell textSlotID](self, "textSlotID")}];
    v26 = _ShareSheetDeviceScreenScale();
    titleSlotView = [(UIAirDropGroupActivityCell *)self titleSlotView];
    layer = [titleSlotView layer];
    [layer setContentsScale:v26];

    v29 = _ShareSheetDeviceScreenScale();
    titleSlotView2 = [(UIAirDropGroupActivityCell *)self titleSlotView];
    layer2 = [titleSlotView2 layer];
    [layer2 setRasterizationScale:v29];

    if (v21)
    {
      v32 = v24;
    }

    else
    {
      v32 = *MEMORY[0x1E6979DB8];
    }

    titleSlotView3 = [(UIAirDropGroupActivityCell *)self titleSlotView];
    layer3 = [titleSlotView3 layer];
    [layer3 setContentsGravity:v32];

    titleSlotView4 = [(UIAirDropGroupActivityCell *)self titleSlotView];
    layer4 = [titleSlotView4 layer];
    [layer4 setContents:titleSlotView5];
  }

  else
  {
    titleSlotView5 = [(UIAirDropGroupActivityCell *)self titleSlotView];
    titleSlotView4 = [titleSlotView5 layer];
    [titleSlotView4 setContents:0];
  }

  if (textSlotID)
  {
    v37 = 1.0;
  }

  else
  {
    v37 = 0.0;
  }

  titleSlotView6 = [(UIAirDropGroupActivityCell *)self titleSlotView];
  [titleSlotView6 setAlpha:v37];

  if (v4 || textSlotID)
  {
    textSlotView = [(UIAirDropGroupActivityCell *)self textSlotView];
    [textSlotView setAlpha:0.0];

    textLabel = [(UIAirDropGroupActivityCell *)self textLabel];
    [textLabel setAlpha:0.0];

    v41 = [objc_opt_class() _placeholderStringForSingleLine:0 isAccessibilityContentSize:IsAccessibilityCategory];
    textLabel2 = [(UIAirDropGroupActivityCell *)self textLabel];
    [textLabel2 setText:v41];
  }
}

- (void)_updateSubtitleView
{
  placeholderTitleView = [(UIAirDropGroupActivityCell *)self placeholderTitleView];
  [placeholderTitleView setAlpha:0.0];

  subtitle = [(UIAirDropGroupActivityCell *)self subtitle];
  v4 = [subtitle length];
  traitCollection = [(UIAirDropGroupActivityCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  v8 = subtitle;
  if (!v4)
  {
    v8 = [objc_opt_class() _placeholderStringForSingleLine:1 isAccessibilityContentSize:IsAccessibilityCategory];
  }

  subtitleLabel = [(UIAirDropGroupActivityCell *)self subtitleLabel];
  [subtitleLabel setText:v8];

  if (v4)
  {
    v10 = 1.0;
  }

  else
  {

    v10 = 0.0;
  }

  subtitleLabel2 = [(UIAirDropGroupActivityCell *)self subtitleLabel];
  [subtitleLabel2 setAlpha:v10];

  subtitleSlotID = [(UIAirDropGroupActivityCell *)self subtitleSlotID];
  if (subtitleSlotID)
  {
    traitCollection2 = [(UIAirDropGroupActivityCell *)self traitCollection];
    layoutDirection = [traitCollection2 layoutDirection];

    traitCollection3 = [(UIAirDropGroupActivityCell *)self traitCollection];
    preferredContentSizeCategory2 = [traitCollection3 preferredContentSizeCategory];
    v17 = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory2);

    v18 = MEMORY[0x1E6979DC8];
    if (layoutDirection != 1)
    {
      v18 = MEMORY[0x1E6979DC0];
    }

    v19 = MEMORY[0x1E6979320];
    v20 = *v18;
    subtitleSlotView5 = [v19 objectForSlot:{-[UIAirDropGroupActivityCell subtitleSlotID](self, "subtitleSlotID")}];
    v22 = _ShareSheetDeviceScreenScale();
    subtitleSlotView = [(UIAirDropGroupActivityCell *)self subtitleSlotView];
    layer = [subtitleSlotView layer];
    [layer setContentsScale:v22];

    v25 = _ShareSheetDeviceScreenScale();
    subtitleSlotView2 = [(UIAirDropGroupActivityCell *)self subtitleSlotView];
    layer2 = [subtitleSlotView2 layer];
    [layer2 setRasterizationScale:v25];

    if (v17)
    {
      v28 = v20;
    }

    else
    {
      v28 = *MEMORY[0x1E6979DB8];
    }

    subtitleSlotView3 = [(UIAirDropGroupActivityCell *)self subtitleSlotView];
    layer3 = [subtitleSlotView3 layer];
    [layer3 setContentsGravity:v28];

    subtitleSlotView4 = [(UIAirDropGroupActivityCell *)self subtitleSlotView];
    layer4 = [subtitleSlotView4 layer];
    [layer4 setContents:subtitleSlotView5];
  }

  else
  {
    subtitleSlotView5 = [(UIAirDropGroupActivityCell *)self subtitleSlotView];
    subtitleSlotView4 = [subtitleSlotView5 layer];
    [subtitleSlotView4 setContents:0];
  }

  if (subtitleSlotID)
  {
    v33 = 1.0;
  }

  else
  {
    v33 = 0.0;
  }

  subtitleSlotView6 = [(UIAirDropGroupActivityCell *)self subtitleSlotView];
  [subtitleSlotView6 setAlpha:v33];
}

- (void)_updateImageView
{
  [(UIAirDropGroupActivityCell *)self _configureImageViewForPlaceholder:0];
  image = [(UIAirDropGroupActivityCell *)self image];

  image2 = [(UIAirDropGroupActivityCell *)self image];
  imageView = [(UIAirDropGroupActivityCell *)self imageView];
  [imageView setImage:image2];

  v6 = 0.0;
  if (image)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  imageView2 = [(UIAirDropGroupActivityCell *)self imageView];
  [imageView2 setAlpha:v7];

  imageSlotID = [(UIAirDropGroupActivityCell *)self imageSlotID];
  if (imageSlotID)
  {
    imageSlotView5 = [MEMORY[0x1E6979320] objectForSlot:{-[UIAirDropGroupActivityCell imageSlotID](self, "imageSlotID")}];
    v11 = *MEMORY[0x1E6979DE0];
    imageSlotView = [(UIAirDropGroupActivityCell *)self imageSlotView];
    layer = [imageSlotView layer];
    [layer setContentsGravity:v11];

    imageSlotView2 = [(UIAirDropGroupActivityCell *)self imageSlotView];
    layer2 = [imageSlotView2 layer];
    [layer2 setContents:imageSlotView5];

    isSquareImage = [(UIAirDropGroupActivityCell *)self isSquareImage];
    if (isSquareImage)
    {
      layer2 = [(UIAirDropGroupActivityCell *)self imageSlotView];
      [layer2 bounds];
      v6 = CGRectGetWidth(v25) * 0.5;
    }

    imageSlotView3 = [(UIAirDropGroupActivityCell *)self imageSlotView];
    layer3 = [imageSlotView3 layer];
    [layer3 setCornerRadius:v6];

    if (isSquareImage)
    {
    }

    isSquareImage2 = [(UIAirDropGroupActivityCell *)self isSquareImage];
    imageSlotView4 = [(UIAirDropGroupActivityCell *)self imageSlotView];
    layer4 = [imageSlotView4 layer];
    [layer4 setMasksToBounds:isSquareImage2];
  }

  else
  {
    imageSlotView5 = [(UIAirDropGroupActivityCell *)self imageSlotView];
    imageSlotView4 = [imageSlotView5 layer];
    [imageSlotView4 setContents:0];
  }

  if (imageSlotID)
  {
    v22 = 1.0;
  }

  else
  {
    v22 = 0.0;
  }

  imageSlotView6 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  [imageSlotView6 setAlpha:v22];
}

- (void)_updateTransportView
{
  transportImage = [(UIAirDropGroupActivityCell *)self transportImage];

  transportImage2 = [(UIAirDropGroupActivityCell *)self transportImage];
  transportImageView = [(UIAirDropGroupActivityCell *)self transportImageView];
  [transportImageView setImage:transportImage2];

  if (transportImage)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  transportImageView2 = [(UIAirDropGroupActivityCell *)self transportImageView];
  [transportImageView2 setAlpha:v6];

  transportSlotID = [(UIAirDropGroupActivityCell *)self transportSlotID];
  if (transportSlotID)
  {
    transportSlotView3 = [MEMORY[0x1E6979320] objectForSlot:{-[UIAirDropGroupActivityCell transportSlotID](self, "transportSlotID")}];
    v10 = *MEMORY[0x1E6979DE0];
    transportSlotView = [(UIAirDropGroupActivityCell *)self transportSlotView];
    layer = [transportSlotView layer];
    [layer setContentsGravity:v10];

    transportSlotView2 = [(UIAirDropGroupActivityCell *)self transportSlotView];
    layer2 = [transportSlotView2 layer];
    [layer2 setContents:transportSlotView3];
  }

  else
  {
    transportSlotView3 = [(UIAirDropGroupActivityCell *)self transportSlotView];
    transportSlotView2 = [transportSlotView3 layer];
    [transportSlotView2 setContents:0];
  }

  if (transportSlotID)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.0;
  }

  transportSlotView4 = [(UIAirDropGroupActivityCell *)self transportSlotView];
  [transportSlotView4 setAlpha:v15];
}

- (void)_updateDarkening
{
  imageSlotView = [(UIAirDropGroupActivityCell *)self imageSlotView];
  layer = [imageSlotView layer];
  contents = [layer contents];

  titleSlotView = [(UIAirDropGroupActivityCell *)self titleSlotView];
  layer2 = [titleSlotView layer];
  contents2 = [layer2 contents];

  transportSlotView = [(UIAirDropGroupActivityCell *)self transportSlotView];
  layer3 = [transportSlotView layer];
  contents3 = [layer3 contents];

  imageSlotView2 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  layer4 = [imageSlotView2 layer];
  [layer4 setContents:contents];

  titleSlotView2 = [(UIAirDropGroupActivityCell *)self titleSlotView];
  layer5 = [titleSlotView2 layer];
  [layer5 setContents:contents2];

  transportSlotView2 = [(UIAirDropGroupActivityCell *)self transportSlotView];
  layer6 = [transportSlotView2 layer];
  [layer6 setContents:contents3];

  if (([(UIAirDropGroupActivityCell *)self isHighlighted]& 1) != 0 || [(UIAirDropGroupActivityCell *)self isDisabled])
  {
    transportSlotView2 = [MEMORY[0x1E69DC888] grayColor];
    cGColor = [transportSlotView2 CGColor];
    v18 = 1;
  }

  else
  {
    v18 = 0;
    cGColor = 0;
  }

  imageSlotView3 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  layer7 = [imageSlotView3 layer];
  [layer7 setContentsMultiplyColor:cGColor];

  if (v18)
  {
  }

  if (([(UIAirDropGroupActivityCell *)self isHighlighted]& 1) != 0 || [(UIAirDropGroupActivityCell *)self isDisabled])
  {
    transportSlotView2 = [MEMORY[0x1E69DC888] grayColor];
    cGColor2 = [transportSlotView2 CGColor];
    v22 = 1;
  }

  else
  {
    v22 = 0;
    cGColor2 = 0;
  }

  transportSlotView3 = [(UIAirDropGroupActivityCell *)self transportSlotView];
  layer8 = [transportSlotView3 layer];
  [layer8 setContentsMultiplyColor:cGColor2];

  if (v22)
  {
  }

  isDisabled = [(UIAirDropGroupActivityCell *)self isDisabled];
  textLabel = [(UIAirDropGroupActivityCell *)self textLabel];
  [textLabel setEnabled:!isDisabled];

  titleLabel = [(UIAirDropGroupActivityCell *)self titleLabel];
  [titleLabel setEnabled:!isDisabled];

  subtitleLabel = [(UIAirDropGroupActivityCell *)self subtitleLabel];
  [subtitleLabel setEnabled:!isDisabled];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([(UIAirDropGroupActivityCell *)self isHighlighted]!= highlighted)
  {
    v5.receiver = self;
    v5.super_class = UIAirDropGroupActivityCell;
    [(UIAirDropGroupActivityCell *)&v5 setHighlighted:highlightedCopy];
    [(UIAirDropGroupActivityCell *)self _updateDarkening];
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  imageSlotView = [(UIAirDropGroupActivityCell *)self imageSlotView];
  layer = [imageSlotView layer];
  contents = [layer contents];

  titleSlotView = [(UIAirDropGroupActivityCell *)self titleSlotView];
  layer2 = [titleSlotView layer];
  contents2 = [layer2 contents];

  transportSlotView = [(UIAirDropGroupActivityCell *)self transportSlotView];
  layer3 = [transportSlotView layer];
  contents3 = [layer3 contents];

  v20.receiver = self;
  v20.super_class = UIAirDropGroupActivityCell;
  [(UIAirDropGroupActivityCell *)&v20 setSelected:selectedCopy];
  imageSlotView2 = [(UIAirDropGroupActivityCell *)self imageSlotView];
  layer4 = [imageSlotView2 layer];
  [layer4 setContents:contents];

  titleSlotView2 = [(UIAirDropGroupActivityCell *)self titleSlotView];
  layer5 = [titleSlotView2 layer];
  [layer5 setContents:contents2];

  transportSlotView2 = [(UIAirDropGroupActivityCell *)self transportSlotView];
  layer6 = [transportSlotView2 layer];
  [layer6 setContents:contents3];
}

- (void)setTransportIconHidden:(BOOL)hidden animated:(BOOL)animated useDelay:(BOOL)delay
{
  delayCopy = delay;
  animatedCopy = animated;
  v8 = !hidden;
  if ([(UIAirDropGroupActivityCell *)self transportSlotID])
  {
    [(UIAirDropGroupActivityCell *)self transportSlotView];
  }

  else
  {
    [(UIAirDropGroupActivityCell *)self transportImageView];
  }
  v9 = ;
  v10 = v9;
  if (animatedCopy)
  {
    v11 = MEMORY[0x1E69DD250];
    if (delayCopy)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __71__UIAirDropGroupActivityCell_setTransportIconHidden_animated_useDelay___block_invoke;
      v19[3] = &unk_1E71F95D0;
      v20 = v9;
      v21 = v8;
      [v11 animateWithDuration:196608 delay:v19 options:0 animations:0.200000003 completion:0.6];
      v12 = v20;
    }

    else
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __71__UIAirDropGroupActivityCell_setTransportIconHidden_animated_useDelay___block_invoke_2;
      v16[3] = &unk_1E71F95D0;
      v17 = v9;
      v18 = v8;
      [v11 animateWithDuration:v16 animations:0.200000003];
      v12 = v17;
    }
  }

  else
  {
    v13 = *(MEMORY[0x1E695EFD0] + 16);
    *&v14.a = *MEMORY[0x1E695EFD0];
    *&v14.c = v13;
    *&v14.tx = *(MEMORY[0x1E695EFD0] + 32);
    CGAffineTransformScale(&v15, &v14, v8, v8);
    v14 = v15;
    [v10 setTransform:&v14];
  }
}

uint64_t __71__UIAirDropGroupActivityCell_setTransportIconHidden_animated_useDelay___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  *&v6.a = *MEMORY[0x1E695EFD0];
  *&v6.c = v3;
  *&v6.tx = *(MEMORY[0x1E695EFD0] + 32);
  CGAffineTransformScale(&v7, &v6, v2, v2);
  v4 = *(a1 + 32);
  v6 = v7;
  return [v4 setTransform:&v6];
}

uint64_t __71__UIAirDropGroupActivityCell_setTransportIconHidden_animated_useDelay___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  *&v6.a = *MEMORY[0x1E695EFD0];
  *&v6.c = v3;
  *&v6.tx = *(MEMORY[0x1E695EFD0] + 32);
  CGAffineTransformScale(&v7, &v6, v2, v2);
  v4 = *(a1 + 32);
  v6 = v7;
  return [v4 setTransform:&v6];
}

- (SHSheetContentLayoutSpec)layoutSpec
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutSpec);

  return WeakRetained;
}

@end