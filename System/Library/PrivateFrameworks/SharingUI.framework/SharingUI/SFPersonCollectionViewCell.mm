@interface SFPersonCollectionViewCell
+ (CGSize)_cachedPreferredItemSizeForString:(id)string viewWidth:(double)width sizeCategory:(id)category;
+ (CGSize)_cachedPreferredItemSizeForViewWidth:(double)width sizeCategory:(id)category;
- (CGSize)calculatedContentSizeForSheetWidth:(double)width sizeCategory:(id)category;
- (SFPersonCollectionViewCell)initWithFrame:(CGRect)frame;
- (SFPersonCollectionViewCellDelegate)delegate;
- (void)_updateForCurrentSizeCategory;
- (void)addObserverOfValuesForKeyPaths:(id)paths ofObject:(id)object;
- (void)deactivateHaptics;
- (void)dealloc;
- (void)fireHapticsForState:(int64_t)state;
- (void)handleKVOUpdateForPerson:(id)person keyPath:(id)path;
- (void)handleKVOUpdateForProgress:(id)progress keyPath:(id)path;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)prepareForReuse;
- (void)prepareHapticsPreWarm:(BOOL)warm;
- (void)removeObserverOfValuesForKeyPaths:(id)paths ofObject:(id)object;
- (void)resetTransferState;
- (void)restoreCellStateFromFinalTransferState:(int64_t)state;
- (void)setCellState:(int64_t)state animated:(BOOL)animated silent:(BOOL)silent;
- (void)setDarkStyleOnLegacyApp:(BOOL)app;
- (void)setPerson:(id)person;
- (void)setProgress:(id)progress;
- (void)setSecondLabelText:(id)text withTextColor:(id)color animated:(BOOL)animated completion:(id)completion;
- (void)setSelected:(BOOL)selected;
- (void)setupConstraints;
- (void)setupConstraintsYukon;
- (void)traitCollectionDidChange:(id)change;
- (void)triggerKVOForKeyPaths:(id)paths ofObject:(id)object;
- (void)updateNameLabel;
- (void)updatePersonIconView;
- (void)userDidCancel;
- (void)userDidSelect;
@end

@implementation SFPersonCollectionViewCell

+ (CGSize)_cachedPreferredItemSizeForViewWidth:(double)width sizeCategory:(id)category
{
  [self _cachedPreferredItemSizeForString:@"Apple\nInc." viewWidth:category sizeCategory:width];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)_cachedPreferredItemSizeForString:(id)string viewWidth:(double)width sizeCategory:(id)category
{
  stringCopy = string;
  categoryCopy = category;
  categoryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%ld-%@", stringCopy, width, categoryCopy];
  v10 = getCachedPreferredItemSizesByString();
  v11 = [v10 objectForKey:categoryCopy];

  if (!v11)
  {
    v12 = __prototypeActivityCell;
    if (!v12)
    {
      v13 = objc_alloc_init(SFPersonCollectionViewCell);
      v14 = __prototypeActivityCell;
      __prototypeActivityCell = v13;

      v12 = v13;
      nameLabel = [(SFPersonCollectionViewCell *)v12 nameLabel];
      [nameLabel setAdjustsFontSizeToFitWidth:0];
    }

    nameLabel2 = [(SFPersonCollectionViewCell *)v12 nameLabel];
    [nameLabel2 setText:stringCopy];

    [(SFPersonCollectionViewCell *)v12 calculatedContentSizeForSheetWidth:categoryCopy sizeCategory:width];
    v11 = [MEMORY[0x1E696B098] valueWithCGSize:?];
    v17 = getCachedPreferredItemSizesByString();
    [v17 setObject:v11 forKey:categoryCopy];
  }

  [v11 CGSizeValue];
  v19 = v18;
  v21 = v20;

  v22 = v19;
  v23 = v21;
  result.height = v23;
  result.width = v22;
  return result;
}

- (SFPersonCollectionViewCell)initWithFrame:(CGRect)frame
{
  v52.receiver = self;
  v52.super_class = SFPersonCollectionViewCell;
  v3 = [(SFPersonCollectionViewCell *)&v52 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    progressKeyPaths = v3->_progressKeyPaths;
    v3->_progressKeyPaths = &unk_1F37F3FA8;

    v6 = objc_alloc_init(SFPersonImageView);
    [(SFPersonImageView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFPersonImageView *)v6 setContentMode:2];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    cGColor = [blackColor CGColor];
    layer = [(SFPersonImageView *)v6 layer];
    [layer setShadowColor:cGColor];

    layer2 = [(SFPersonImageView *)v6 layer];
    LODWORD(v11) = 1032805417;
    [layer2 setShadowOpacity:v11];

    v12 = *MEMORY[0x1E695F060];
    v13 = *(MEMORY[0x1E695F060] + 8);
    layer3 = [(SFPersonImageView *)v6 layer];
    [layer3 setShadowOffset:{v12, v13}];

    layer4 = [(SFPersonImageView *)v6 layer];
    [layer4 setShadowRadius:10.0];

    layer5 = [(SFPersonImageView *)v6 layer];
    [layer5 setShadowPathIsBounds:1];

    [(SFPersonCollectionViewCell *)v4 setImageView:v6];
    contentView = [(SFPersonCollectionViewCell *)v4 contentView];
    [contentView addSubview:v6];

    v18 = [SFCircleProgressView alloc];
    v19 = [(SFCircleProgressView *)v18 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(SFCircleProgressView *)v19 setProgressLineWidth:2.0];
    [(SFCircleProgressView *)v19 setShowProgressTray:1];
    [(SFCircleProgressView *)v19 setAlpha:1.0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(SFCircleProgressView *)v19 setBackgroundColor:clearColor];

    [(SFCircleProgressView *)v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    -[SFCircleProgressView setUsesRoundedLineCap:](v19, "setUsesRoundedLineCap:", [currentDevice userInterfaceIdiom] == 6);

    [(SFPersonCollectionViewCell *)v4 setCircleProgressView:v19];
    contentView2 = [(SFPersonCollectionViewCell *)v4 contentView];
    [contentView2 addSubview:v19];

    traitCollection = [(SFPersonCollectionViewCell *)v4 traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    v25 = createNameLabel(preferredContentSizeCategory);
    [(SFPersonCollectionViewCell *)v4 setNameLabel:v25];

    contentView3 = [(SFPersonCollectionViewCell *)v4 contentView];
    nameLabel = [(SFPersonCollectionViewCell *)v4 nameLabel];
    [contentView3 addSubview:nameLabel];

    traitCollection2 = [(SFPersonCollectionViewCell *)v4 traitCollection];
    preferredContentSizeCategory2 = [traitCollection2 preferredContentSizeCategory];
    v30 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v30 setTextColor:secondaryLabelColor];

    _screen = [v30 _screen];
    v33 = _SFPersonLabelFont();
    [v30 setFont:v33];

    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [v30 setBackgroundColor:clearColor2];

    if (UIContentSizeCategoryCompareToCategory(*MEMORY[0x1E69DDC58], preferredContentSizeCategory2) == NSOrderedAscending)
    {
      v35 = 4;
    }

    else
    {
      v35 = 1;
    }

    [v30 setTextAlignment:v35];
    [v30 setNumberOfLines:1];
    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v36) = 0.75;
    [v30 _setHyphenationFactor:v36];
    [(SFPersonCollectionViewCell *)v4 setSecondLabel:v30];

    contentView4 = [(SFPersonCollectionViewCell *)v4 contentView];
    secondLabel = [(SFPersonCollectionViewCell *)v4 secondLabel];
    [contentView4 addSubview:secondLabel];

    traitCollection3 = [(SFPersonCollectionViewCell *)v4 traitCollection];
    preferredContentSizeCategory3 = [traitCollection3 preferredContentSizeCategory];
    v41 = createNameLabel(preferredContentSizeCategory3);
    [(SFPersonCollectionViewCell *)v4 setLabelForPositioning:v41];

    labelForPositioning = [(SFPersonCollectionViewCell *)v4 labelForPositioning];
    [labelForPositioning setAlpha:0.0];

    labelForPositioning2 = [(SFPersonCollectionViewCell *)v4 labelForPositioning];
    [labelForPositioning2 setText:@"Apple\nInc"];

    contentView5 = [(SFPersonCollectionViewCell *)v4 contentView];
    labelForPositioning3 = [(SFPersonCollectionViewCell *)v4 labelForPositioning];
    [contentView5 addSubview:labelForPositioning3];

    contentView6 = [(SFPersonCollectionViewCell *)v4 contentView];
    clearColor3 = [MEMORY[0x1E69DC888] clearColor];
    [contentView6 setBackgroundColor:clearColor3];

    [contentView6 setTranslatesAutoresizingMaskIntoConstraints:1];
    [(SFPersonCollectionViewCell *)v4 setupConstraintsYukon];
    [(SFPersonCollectionViewCell *)v4 prepareHapticsPreWarm:0];
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

    if (userInterfaceIdiom == 6)
    {
      [(SFPersonCollectionViewCell *)v4 _setCornerRadius:12.0];
    }

    v50 = v4;
  }

  return v4;
}

- (void)dealloc
{
  [(SFPersonCollectionViewCell *)self setPerson:0];
  [(SFPersonCollectionViewCell *)self setProgress:0];
  v3.receiver = self;
  v3.super_class = SFPersonCollectionViewCell;
  [(SFPersonCollectionViewCell *)&v3 dealloc];
}

- (void)setupConstraints
{
  v100[9] = *MEMORY[0x1E69E9840];
  circleProgressView = [(SFPersonCollectionViewCell *)self circleProgressView];
  contentView = [(SFPersonCollectionViewCell *)self contentView];
  ChickletSize = getChickletSize();
  v7 = v6;
  v8 = MEMORY[0x1E696ACD8];
  imageView = [(SFPersonCollectionViewCell *)self imageView];
  v89 = [v8 constraintWithItem:circleProgressView attribute:7 relatedBy:0 toItem:imageView attribute:7 multiplier:1.0 constant:10.0];
  v100[0] = v89;
  v9 = MEMORY[0x1E696ACD8];
  imageView2 = [(SFPersonCollectionViewCell *)self imageView];
  v83 = [v9 constraintWithItem:circleProgressView attribute:8 relatedBy:0 toItem:imageView2 attribute:8 multiplier:1.0 constant:10.0];
  v100[1] = v83;
  v10 = MEMORY[0x1E696ACD8];
  imageView3 = [(SFPersonCollectionViewCell *)self imageView];
  v96 = circleProgressView;
  v80 = [v10 constraintWithItem:circleProgressView attribute:9 relatedBy:0 toItem:imageView3 attribute:9 multiplier:1.0 constant:0.0];
  v100[2] = v80;
  v11 = MEMORY[0x1E696ACD8];
  imageView4 = [(SFPersonCollectionViewCell *)self imageView];
  v12 = [v11 constraintWithItem:circleProgressView attribute:10 relatedBy:0 toItem:imageView4 attribute:10 multiplier:1.0 constant:0.0];
  v100[3] = v12;
  v13 = [MEMORY[0x1E696ACD8] constraintWithItem:contentView attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
  cellWidthConstraint = self->_cellWidthConstraint;
  self->_cellWidthConstraint = v13;

  v100[4] = v13;
  v15 = MEMORY[0x1E696ACD8];
  imageView5 = [(SFPersonCollectionViewCell *)self imageView];
  v17 = [v15 constraintWithItem:imageView5 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v7];
  v100[5] = v17;
  v18 = MEMORY[0x1E696ACD8];
  imageView6 = [(SFPersonCollectionViewCell *)self imageView];
  v20 = [v18 constraintWithItem:imageView6 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v7];
  v100[6] = v20;
  v21 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_nameLabel attribute:6 relatedBy:0 toItem:contentView attribute:6 multiplier:1.0 constant:-0.5];
  v100[7] = v21;
  v22 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_secondLabel attribute:6 relatedBy:0 toItem:contentView attribute:6 multiplier:1.0 constant:-0.5];
  v100[8] = v22;
  v95 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:9];

  v23 = MEMORY[0x1E696ACD8];
  imageView7 = [(SFPersonCollectionViewCell *)self imageView];
  v24 = contentView;
  v90 = [v23 constraintWithItem:imageView7 attribute:3 relatedBy:0 toItem:contentView attribute:3 multiplier:1.0 constant:0.0];
  v99[0] = v90;
  v25 = MEMORY[0x1E696ACD8];
  imageView8 = [(SFPersonCollectionViewCell *)self imageView];
  v84 = [v25 constraintWithItem:imageView8 attribute:9 relatedBy:0 toItem:contentView attribute:9 multiplier:1.0 constant:0.0];
  v99[1] = v84;
  v26 = MEMORY[0x1E696ACD8];
  nameLabel = self->_nameLabel;
  imageView9 = [(SFPersonCollectionViewCell *)self imageView];
  v29 = [v26 constraintWithItem:nameLabel attribute:12 relatedBy:0 toItem:imageView9 attribute:4 multiplier:1.0 constant:0.0];
  chickletToTitleSpacingConstraint = self->_chickletToTitleSpacingConstraint;
  self->_chickletToTitleSpacingConstraint = v29;

  v99[2] = v29;
  v31 = [MEMORY[0x1E696ACD8] constraintWithItem:v24 attribute:4 relatedBy:0 toItem:self->_secondLabel attribute:11 multiplier:1.0 constant:0.0];
  v99[3] = v31;
  v32 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_nameLabel attribute:5 relatedBy:0 toItem:v24 attribute:5 multiplier:1.0 constant:0.5];
  v99[4] = v32;
  v33 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_secondLabel attribute:5 relatedBy:0 toItem:v24 attribute:5 multiplier:1.0 constant:0.5];
  v99[5] = v33;
  v34 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_secondLabel attribute:3 relatedBy:0 toItem:self->_nameLabel attribute:12 multiplier:1.0 constant:3.0];
  secondLabelFBConstraint = self->_secondLabelFBConstraint;
  self->_secondLabelFBConstraint = v34;

  v99[6] = v34;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:7];
  [(SFPersonCollectionViewCell *)self setRegularConstraints:v36];

  centerYAnchor = [(UILabel *)self->_labelForPositioning centerYAnchor];
  imageView10 = [(SFPersonCollectionViewCell *)self imageView];
  centerYAnchor2 = [imageView10 centerYAnchor];
  v85 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v98[0] = v85;
  leadingAnchor = [(UILabel *)self->_labelForPositioning leadingAnchor];
  imageView11 = [(SFPersonCollectionViewCell *)self imageView];
  trailingAnchor = [imageView11 trailingAnchor];
  v76 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:10.0];
  v98[1] = v76;
  trailingAnchor2 = [(UILabel *)self->_labelForPositioning trailingAnchor];
  trailingAnchor3 = [v24 trailingAnchor];
  v72 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-0.5];
  v98[2] = v72;
  firstBaselineAnchor = [(UILabel *)self->_secondLabel firstBaselineAnchor];
  lastBaselineAnchor = [(UILabel *)self->_labelForPositioning lastBaselineAnchor];
  v69 = [firstBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor];
  v98[3] = v69;
  imageView12 = [(SFPersonCollectionViewCell *)self imageView];
  topAnchor = [imageView12 topAnchor];
  v37 = v24;
  topAnchor2 = [v24 topAnchor];
  v65 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:5.0];
  v98[4] = v65;
  imageView13 = [(SFPersonCollectionViewCell *)self imageView];
  bottomAnchor = [imageView13 bottomAnchor];
  v75 = v24;
  bottomAnchor2 = [v24 bottomAnchor];
  v61 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:-5.0];
  v98[5] = v61;
  centerYAnchor3 = [(UILabel *)self->_nameLabel centerYAnchor];
  imageView14 = [(SFPersonCollectionViewCell *)self imageView];
  centerYAnchor4 = [imageView14 centerYAnchor];
  v38 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  largeTextNameCenterYConstraint = self->_largeTextNameCenterYConstraint;
  self->_largeTextNameCenterYConstraint = v38;

  v98[6] = v38;
  imageView15 = [(SFPersonCollectionViewCell *)self imageView];
  leadingAnchor2 = [imageView15 leadingAnchor];
  leadingAnchor3 = [v37 leadingAnchor];
  v43 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:5.0];
  v98[7] = v43;
  v44 = MEMORY[0x1E696ACD8];
  v45 = self->_nameLabel;
  imageView16 = [(SFPersonCollectionViewCell *)self imageView];
  v47 = [v44 constraintWithItem:v45 attribute:5 relatedBy:0 toItem:imageView16 attribute:6 multiplier:1.0 constant:10.0];
  v98[8] = v47;
  v48 = MEMORY[0x1E696ACD8];
  secondLabel = self->_secondLabel;
  imageView17 = [(SFPersonCollectionViewCell *)self imageView];
  v51 = [v48 constraintWithItem:secondLabel attribute:5 relatedBy:0 toItem:imageView17 attribute:6 multiplier:1.0 constant:10.0];
  v98[9] = v51;
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:10];
  [(SFPersonCollectionViewCell *)self setLargeTextConstraints:v52];

  v53 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_nameLabel attribute:11 relatedBy:0 toItem:self->_nameLabel attribute:12 multiplier:1.0 constant:0.0];
  v97[0] = v53;
  firstBaselineAnchor2 = [(UILabel *)self->_nameLabel firstBaselineAnchor];
  firstBaselineAnchor3 = [(UILabel *)self->_labelForPositioning firstBaselineAnchor];
  v56 = [firstBaselineAnchor2 constraintEqualToAnchor:firstBaselineAnchor3];
  v97[1] = v56;
  v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:2];
  [(SFPersonCollectionViewCell *)self setSecondLabelVisibleConstraintsArray:v57];

  [MEMORY[0x1E696ACD8] activateConstraints:v95];
}

- (void)setupConstraintsYukon
{
  v196[16] = *MEMORY[0x1E69E9840];
  circleProgressView = [(SFPersonCollectionViewCell *)self circleProgressView];
  contentView = [(SFPersonCollectionViewCell *)self contentView];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v190 = userInterfaceIdiom;
  if (userInterfaceIdiom == 6)
  {
    v5 = 8.0;
    v6 = -8.0;
    v7 = 4.0;
    v8 = 52.0;
    v9 = -8.0;
  }

  else
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen _referenceBounds];
    if (v11 >= 414.0)
    {
      currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
      userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

      if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v8 = 62.0;
      }

      else
      {
        v8 = 66.0;
      }
    }

    else
    {
      v8 = 62.0;
    }

    v9 = -5.0;
    v6 = 0.0;
    v7 = 10.0;
    v5 = 0.0;
  }

  v14 = MEMORY[0x1E695DF70];
  imageView = [(SFPersonCollectionViewCell *)self imageView];
  widthAnchor = [imageView widthAnchor];
  v182 = [widthAnchor constraintEqualToConstant:v8];
  v196[0] = v182;
  imageView2 = [(SFPersonCollectionViewCell *)self imageView];
  heightAnchor = [imageView2 heightAnchor];
  v176 = [heightAnchor constraintEqualToConstant:v8];
  v196[1] = v176;
  imageView3 = [(SFPersonCollectionViewCell *)self imageView];
  topAnchor = [imageView3 topAnchor];
  topAnchor2 = [contentView topAnchor];
  v168 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v5];
  v196[2] = v168;
  imageView4 = [(SFPersonCollectionViewCell *)self imageView];
  centerXAnchor = [imageView4 centerXAnchor];
  centerXAnchor2 = [contentView centerXAnchor];
  v160 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v196[3] = v160;
  imageView5 = [(SFPersonCollectionViewCell *)self imageView];
  centerXAnchor3 = [imageView5 centerXAnchor];
  labelForPositioning = [(SFPersonCollectionViewCell *)self labelForPositioning];
  centerXAnchor4 = [labelForPositioning centerXAnchor];
  v150 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v196[4] = v150;
  imageView6 = [(SFPersonCollectionViewCell *)self imageView];
  bottomAnchor = [imageView6 bottomAnchor];
  labelForPositioning2 = [(SFPersonCollectionViewCell *)self labelForPositioning];
  topAnchor3 = [labelForPositioning2 topAnchor];
  v140 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:v9];
  v196[5] = v140;
  labelForPositioning3 = [(SFPersonCollectionViewCell *)self labelForPositioning];
  bottomAnchor2 = [labelForPositioning3 bottomAnchor];
  bottomAnchor3 = [contentView bottomAnchor];
  v132 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:v6];
  v196[6] = v132;
  nameLabel = [(SFPersonCollectionViewCell *)self nameLabel];
  firstBaselineAnchor = [nameLabel firstBaselineAnchor];
  labelForPositioning4 = [(SFPersonCollectionViewCell *)self labelForPositioning];
  firstBaselineAnchor2 = [labelForPositioning4 firstBaselineAnchor];
  v122 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
  v196[7] = v122;
  nameLabel2 = [(SFPersonCollectionViewCell *)self nameLabel];
  widthAnchor2 = [nameLabel2 widthAnchor];
  widthAnchor3 = [contentView widthAnchor];
  v114 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3 constant:v6];
  v196[8] = v114;
  secondLabel = [(SFPersonCollectionViewCell *)self secondLabel];
  centerXAnchor5 = [secondLabel centerXAnchor];
  labelForPositioning5 = [(SFPersonCollectionViewCell *)self labelForPositioning];
  centerXAnchor6 = [labelForPositioning5 centerXAnchor];
  v104 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  v196[9] = v104;
  secondLabel2 = [(SFPersonCollectionViewCell *)self secondLabel];
  widthAnchor4 = [secondLabel2 widthAnchor];
  widthAnchor5 = [contentView widthAnchor];
  v96 = [widthAnchor4 constraintEqualToAnchor:widthAnchor5 constant:v6];
  v196[10] = v96;
  secondLabel3 = [(SFPersonCollectionViewCell *)self secondLabel];
  lastBaselineAnchor = [secondLabel3 lastBaselineAnchor];
  labelForPositioning6 = [(SFPersonCollectionViewCell *)self labelForPositioning];
  lastBaselineAnchor2 = [labelForPositioning6 lastBaselineAnchor];
  v86 = [lastBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor2];
  v196[11] = v86;
  widthAnchor6 = [circleProgressView widthAnchor];
  imageView7 = [(SFPersonCollectionViewCell *)self imageView];
  widthAnchor7 = [imageView7 widthAnchor];
  v78 = [widthAnchor6 constraintEqualToAnchor:widthAnchor7 constant:v7];
  v196[12] = v78;
  heightAnchor2 = [circleProgressView heightAnchor];
  imageView8 = [(SFPersonCollectionViewCell *)self imageView];
  heightAnchor3 = [imageView8 heightAnchor];
  v70 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3 constant:v7];
  v196[13] = v70;
  centerXAnchor7 = [circleProgressView centerXAnchor];
  imageView9 = [(SFPersonCollectionViewCell *)self imageView];
  centerXAnchor8 = [imageView9 centerXAnchor];
  v17 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
  v196[14] = v17;
  centerYAnchor = [circleProgressView centerYAnchor];
  imageView10 = [(SFPersonCollectionViewCell *)self imageView];
  centerYAnchor2 = [imageView10 centerYAnchor];
  v21 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v196[15] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v196 count:16];
  v23 = [v14 arrayWithArray:v22];

  if (v190 == 6)
  {
    nameLabel3 = [(SFPersonCollectionViewCell *)self nameLabel];
    centerXAnchor9 = [nameLabel3 centerXAnchor];
    labelForPositioning7 = [(SFPersonCollectionViewCell *)self labelForPositioning];
    centerXAnchor10 = [labelForPositioning7 centerXAnchor];
    v28 = [centerXAnchor9 constraintEqualToAnchor:centerXAnchor10];
    [v23 addObject:v28];
  }

  v191 = v23;
  [(SFPersonCollectionViewCell *)self setRegularConstraints:v23];
  nameLabel4 = [(SFPersonCollectionViewCell *)self nameLabel];
  centerYAnchor3 = [nameLabel4 centerYAnchor];
  imageView11 = [(SFPersonCollectionViewCell *)self imageView];
  centerYAnchor4 = [imageView11 centerYAnchor];
  v33 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [(SFPersonCollectionViewCell *)self setLargeTextNameCenterYConstraint:v33];

  v34 = MEMORY[0x1E695DF70];
  imageView12 = [(SFPersonCollectionViewCell *)self imageView];
  widthAnchor8 = [imageView12 widthAnchor];
  v183 = [widthAnchor8 constraintEqualToConstant:v8];
  v195[0] = v183;
  imageView13 = [(SFPersonCollectionViewCell *)self imageView];
  heightAnchor4 = [imageView13 heightAnchor];
  v177 = [heightAnchor4 constraintEqualToConstant:v8];
  v195[1] = v177;
  imageView14 = [(SFPersonCollectionViewCell *)self imageView];
  centerYAnchor5 = [imageView14 centerYAnchor];
  centerYAnchor6 = [contentView centerYAnchor];
  v169 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  v195[2] = v169;
  imageView15 = [(SFPersonCollectionViewCell *)self imageView];
  leadingAnchor = [imageView15 leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v161 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v195[3] = v161;
  labelForPositioning8 = [(SFPersonCollectionViewCell *)self labelForPositioning];
  bottomAnchor4 = [labelForPositioning8 bottomAnchor];
  bottomAnchor5 = [contentView bottomAnchor];
  v153 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:-8.0];
  v195[4] = v153;
  labelForPositioning9 = [(SFPersonCollectionViewCell *)self labelForPositioning];
  topAnchor4 = [labelForPositioning9 topAnchor];
  topAnchor5 = [contentView topAnchor];
  v145 = [topAnchor4 constraintEqualToAnchor:topAnchor5 constant:8.0];
  v195[5] = v145;
  labelForPositioning10 = [(SFPersonCollectionViewCell *)self labelForPositioning];
  leadingAnchor3 = [labelForPositioning10 leadingAnchor];
  imageView16 = [(SFPersonCollectionViewCell *)self imageView];
  trailingAnchor = [imageView16 trailingAnchor];
  v135 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:13.0];
  v195[6] = v135;
  labelForPositioning11 = [(SFPersonCollectionViewCell *)self labelForPositioning];
  trailingAnchor2 = [labelForPositioning11 trailingAnchor];
  trailingAnchor3 = [contentView trailingAnchor];
  v127 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:8.0];
  v195[7] = v127;
  nameLabel5 = [(SFPersonCollectionViewCell *)self nameLabel];
  firstBaselineAnchor3 = [nameLabel5 firstBaselineAnchor];
  labelForPositioning12 = [(SFPersonCollectionViewCell *)self labelForPositioning];
  firstBaselineAnchor4 = [labelForPositioning12 firstBaselineAnchor];
  v117 = [firstBaselineAnchor3 constraintEqualToAnchor:firstBaselineAnchor4];
  v195[8] = v117;
  nameLabel6 = [(SFPersonCollectionViewCell *)self nameLabel];
  leadingAnchor4 = [nameLabel6 leadingAnchor];
  imageView17 = [(SFPersonCollectionViewCell *)self imageView];
  trailingAnchor4 = [imageView17 trailingAnchor];
  v107 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor4 constant:13.0];
  v195[9] = v107;
  nameLabel7 = [(SFPersonCollectionViewCell *)self nameLabel];
  trailingAnchor5 = [nameLabel7 trailingAnchor];
  trailingAnchor6 = [contentView trailingAnchor];
  v99 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-8.0];
  v195[10] = v99;
  widthAnchor9 = [circleProgressView widthAnchor];
  imageView18 = [(SFPersonCollectionViewCell *)self imageView];
  widthAnchor10 = [imageView18 widthAnchor];
  v91 = [widthAnchor9 constraintEqualToAnchor:widthAnchor10 constant:v7];
  v195[11] = v91;
  heightAnchor5 = [circleProgressView heightAnchor];
  imageView19 = [(SFPersonCollectionViewCell *)self imageView];
  heightAnchor6 = [imageView19 heightAnchor];
  v83 = [heightAnchor5 constraintEqualToAnchor:heightAnchor6 constant:v7];
  v195[12] = v83;
  centerXAnchor11 = [circleProgressView centerXAnchor];
  imageView20 = [(SFPersonCollectionViewCell *)self imageView];
  centerXAnchor12 = [imageView20 centerXAnchor];
  v75 = [centerXAnchor11 constraintEqualToAnchor:centerXAnchor12];
  v195[13] = v75;
  centerYAnchor7 = [circleProgressView centerYAnchor];
  imageView21 = [(SFPersonCollectionViewCell *)self imageView];
  centerYAnchor8 = [imageView21 centerYAnchor];
  v67 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
  v195[14] = v67;
  secondLabel4 = [(SFPersonCollectionViewCell *)self secondLabel];
  widthAnchor11 = [secondLabel4 widthAnchor];
  nameLabel8 = [(SFPersonCollectionViewCell *)self nameLabel];
  widthAnchor12 = [nameLabel8 widthAnchor];
  v62 = [widthAnchor11 constraintEqualToAnchor:widthAnchor12];
  v195[15] = v62;
  secondLabel5 = [(SFPersonCollectionViewCell *)self secondLabel];
  leadingAnchor5 = [secondLabel5 leadingAnchor];
  nameLabel9 = [(SFPersonCollectionViewCell *)self nameLabel];
  leadingAnchor6 = [nameLabel9 leadingAnchor];
  v35 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v195[16] = v35;
  secondLabel6 = [(SFPersonCollectionViewCell *)self secondLabel];
  lastBaselineAnchor3 = [secondLabel6 lastBaselineAnchor];
  labelForPositioning13 = [(SFPersonCollectionViewCell *)self labelForPositioning];
  lastBaselineAnchor4 = [labelForPositioning13 lastBaselineAnchor];
  v40 = [lastBaselineAnchor3 constraintEqualToAnchor:lastBaselineAnchor4];
  v195[17] = v40;
  largeTextNameCenterYConstraint = [(SFPersonCollectionViewCell *)self largeTextNameCenterYConstraint];
  v195[18] = largeTextNameCenterYConstraint;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v195 count:19];
  v43 = [v34 arrayWithArray:v42];
  [(SFPersonCollectionViewCell *)self setLargeTextConstraints:v43];

  nameLabel10 = [(SFPersonCollectionViewCell *)self nameLabel];
  lastBaselineAnchor5 = [nameLabel10 lastBaselineAnchor];
  nameLabel11 = [(SFPersonCollectionViewCell *)self nameLabel];
  firstBaselineAnchor5 = [nameLabel11 firstBaselineAnchor];
  v46 = [lastBaselineAnchor5 constraintEqualToAnchor:firstBaselineAnchor5];
  v194[0] = v46;
  nameLabel12 = [(SFPersonCollectionViewCell *)self nameLabel];
  firstBaselineAnchor6 = [nameLabel12 firstBaselineAnchor];
  labelForPositioning14 = [(SFPersonCollectionViewCell *)self labelForPositioning];
  firstBaselineAnchor7 = [labelForPositioning14 firstBaselineAnchor];
  v51 = [firstBaselineAnchor6 constraintEqualToAnchor:firstBaselineAnchor7];
  v194[1] = v51;
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v194 count:2];
  [(SFPersonCollectionViewCell *)self setSecondLabelVisibleConstraintsArray:v52];

  traitCollection = [(SFPersonCollectionViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v55 = UIContentSizeCategoryCompareToCategory(*MEMORY[0x1E69DDC58], preferredContentSizeCategory);

  v56 = MEMORY[0x1E696ACD8];
  if (v55 == NSOrderedAscending)
  {
    [(SFPersonCollectionViewCell *)self largeTextConstraints];
  }

  else
  {
    [(SFPersonCollectionViewCell *)self regularConstraints];
  }
  v57 = ;
  [v56 activateConstraints:v57];
}

- (void)setDarkStyleOnLegacyApp:(BOOL)app
{
  self->_darkStyleOnLegacyApp = app;
  nameLabel = self->_nameLabel;
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)nameLabel setTextColor:labelColor];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(SFPersonCollectionViewCell *)self setFadedSecondLabelColor:secondaryLabelColor];
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = SFPersonCollectionViewCell;
  [(SFPersonCollectionViewCell *)&v6 prepareForReuse];
  [(SFPersonCollectionViewCell *)self deactivateHaptics];
  [(SFPersonCollectionViewCell *)self setPerson:0];
  [(SFPersonCollectionViewCell *)self setProgress:0];
  [(SFPersonCollectionViewCell *)self setCellState:0];
  [(SFPersonCollectionViewCell *)self setSelected:0];
  nameLabel = [(SFPersonCollectionViewCell *)self nameLabel];
  [nameLabel setText:0];

  secondLabel = [(SFPersonCollectionViewCell *)self secondLabel];
  [secondLabel setText:0];

  imageView = [(SFPersonCollectionViewCell *)self imageView];
  [imageView setImage:0];
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = SFPersonCollectionViewCell;
  [(SFPersonCollectionViewCell *)&v11 layoutSubviews];
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    contentView = [(SFPersonCollectionViewCell *)self contentView];
    [contentView frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;

    contentView2 = [(SFPersonCollectionViewCell *)self contentView];
    [contentView2 setFrame:{v5, 0.0, v7, v9}];
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  if ([(SFPersonCollectionViewCell *)self isSelected]!= selected)
  {
    isHighlighted = [(SFPersonCollectionViewCell *)self isHighlighted];
    v7.receiver = self;
    v7.super_class = SFPersonCollectionViewCell;
    [(SFPersonCollectionViewCell *)&v7 setSelected:selectedCopy];
    imageView = [(SFPersonCollectionViewCell *)self imageView];
    [imageView setHighlighted:isHighlighted];
  }
}

- (void)setPerson:(id)person
{
  personCopy = person;
  if (self->_person != personCopy)
  {
    [(SFPersonCollectionViewCell *)self removeObserverOfValuesForKeyPaths:&unk_1F37F3FC0 ofObject:?];
    [(SFPersonCollectionViewCell *)self willChangeValueForKey:@"person"];
    objc_storeStrong(&self->_person, person);
    [(SFPersonCollectionViewCell *)self didChangeValueForKey:@"person"];
    [(SFPersonCollectionViewCell *)self addObserverOfValuesForKeyPaths:&unk_1F37F3FC0 ofObject:self->_person];
    if (self->_person)
    {
      [(SFPersonCollectionViewCell *)self updatePersonIconView];
      [(SFPersonCollectionViewCell *)self updateNameLabel];
    }
  }
}

- (void)setProgress:(id)progress
{
  progressCopy = progress;
  if (self->_progress != progressCopy)
  {
    v6 = progressCopy;
    [(SFPersonCollectionViewCell *)self removeObserverOfValuesForKeyPaths:self->_progressKeyPaths ofObject:?];
    objc_storeStrong(&self->_progress, progress);
    [(SFPersonCollectionViewCell *)self addObserverOfValuesForKeyPaths:self->_progressKeyPaths ofObject:self->_progress];
    [(SFPersonCollectionViewCell *)self triggerKVOForKeyPaths:self->_progressKeyPaths ofObject:self->_progress];
    progressCopy = v6;
  }
}

- (void)setCellState:(int64_t)state animated:(BOOL)animated silent:(BOOL)silent
{
  v66 = *MEMORY[0x1E69E9840];
  cellState = self->_cellState;
  if (cellState == state)
  {
    return;
  }

  animatedCopy = animated;
  v10 = state - 2;
  if (state >= 2 && cellState > state)
  {
    v11 = airdrop_ui_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_cellState;
      if (v12 > 6)
      {
        v13 = @"?";
      }

      else
      {
        v13 = off_1E7EE43E8[v12];
      }

      if (v10 > 4)
      {
        v23 = @"?";
      }

      else
      {
        v23 = off_1E7EE43C0[v10];
      }

      displayName = [(SFAirDropNode *)self->_person displayName];
      *location = 138412803;
      *&location[4] = v13;
      v62 = 2112;
      v63 = v23;
      v64 = 2113;
      v65 = displayName;
      _os_log_impl(&dword_1B9E4B000, v11, OS_LOG_TYPE_DEFAULT, "Unsupported cell state transition %@ -> %@ for person %{private}@. Ignoring", location, 0x20u);
    }

    return;
  }

  progress = self->_progress;
  if (!progress || ([(NSProgress *)progress sf_initiator]& 1) != 0)
  {
    v15 = 1;
  }

  else
  {
    if ((state - 3) >= 4 && state)
    {
      return;
    }

    [(SFCircleProgressView *)self->_circleProgressView setAlpha:0.0];
    v15 = 0;
  }

  if (state <= 2)
  {
    if (state)
    {
      if (state == 1)
      {
        secondLabel = [(SFPersonCollectionViewCell *)self secondLabel];
        objc_initWeak(location, secondLabel);

        if (!silent)
        {
          [(SFPersonCollectionViewCell *)self fireHapticsForState:1];
        }

        v33 = SFLocalizedStringForKey();
        fadedSecondLabelColor = [(SFPersonCollectionViewCell *)self fadedSecondLabelColor];
        v59[0] = MEMORY[0x1E69E9820];
        v59[1] = 3221225472;
        v59[2] = __59__SFPersonCollectionViewCell_setCellState_animated_silent___block_invoke;
        v59[3] = &unk_1E7EE4350;
        objc_copyWeak(&v60, location);
        [(SFPersonCollectionViewCell *)self setSecondLabelText:v33 withTextColor:fadedSecondLabelColor animated:animatedCopy completion:v59];

        [(SFCircleProgressView *)self->_circleProgressView setProgress:animatedCopy animated:0 completion:0.0];
        if (v15)
        {
          [(SFCircleProgressView *)self->_circleProgressView setAlpha:1.0];
        }

        objc_destroyWeak(&v60);
        objc_destroyWeak(location);
      }

      else if (state == 2)
      {
        secondLabel2 = [(SFPersonCollectionViewCell *)self secondLabel];
        objc_initWeak(location, secondLabel2);

        if (!silent)
        {
          [(SFPersonCollectionViewCell *)self fireHapticsForState:2];
        }

        v18 = SFLocalizedStringForKey();
        fadedSecondLabelColor2 = [(SFPersonCollectionViewCell *)self fadedSecondLabelColor];
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __59__SFPersonCollectionViewCell_setCellState_animated_silent___block_invoke_3;
        v57[3] = &unk_1E7EE4350;
        objc_copyWeak(&v58, location);
        [(SFPersonCollectionViewCell *)self setSecondLabelText:v18 withTextColor:fadedSecondLabelColor2 animated:animatedCopy completion:v57];

        objc_destroyWeak(&v58);
        objc_destroyWeak(location);
      }

      goto LABEL_46;
    }

    [(SFPersonCollectionViewCell *)self prepareHaptics];
    [(SFPersonCollectionViewCell *)self setSecondLabelText:0 withTextColor:0 animated:animatedCopy completion:0];
    [(SFCircleProgressView *)self->_circleProgressView setProgress:animatedCopy animated:0 completion:0.0];
    circleProgressView = self->_circleProgressView;
    v26 = 0.0;
  }

  else
  {
    if (state > 4)
    {
      if (state == 5)
      {
        objc_initWeak(location, self);
        v29 = SFLocalizedStringForKey();
        systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
        [(SFPersonCollectionViewCell *)self setSecondLabelText:v29 withTextColor:systemRedColor animated:animatedCopy completion:0];

        v31 = self->_circleProgressView;
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = __59__SFPersonCollectionViewCell_setCellState_animated_silent___block_invoke_7;
        v49[3] = &unk_1E7EE4378;
        v51 = animatedCopy;
        silentCopy = silent;
        objc_copyWeak(&v50, location);
        [(SFCircleProgressView *)v31 setProgress:animatedCopy animated:v49 completion:0.0];
        [(SFCircleProgressView *)self->_circleProgressView setAlpha:0.0];
        objc_destroyWeak(&v50);
        objc_destroyWeak(location);
      }

      else if (state == 6)
      {
        objc_initWeak(location, self);
        v20 = SFLocalizedStringForKey();
        systemRedColor2 = [MEMORY[0x1E69DC888] systemRedColor];
        [(SFPersonCollectionViewCell *)self setSecondLabelText:v20 withTextColor:systemRedColor2 animated:animatedCopy completion:0];

        v22 = self->_circleProgressView;
        v42 = MEMORY[0x1E69E9820];
        v43 = 3221225472;
        v44 = __59__SFPersonCollectionViewCell_setCellState_animated_silent___block_invoke_8;
        v45 = &unk_1E7EE4378;
        v47 = animatedCopy;
        silentCopy2 = silent;
        objc_copyWeak(&v46, location);
        [(SFCircleProgressView *)v22 setProgress:animatedCopy animated:&v42 completion:0.0];
        [(SFCircleProgressView *)self->_circleProgressView setAlpha:0.0, v42, v43, v44, v45];
        objc_destroyWeak(&v46);
        objc_destroyWeak(location);
      }

      goto LABEL_46;
    }

    if (state != 3)
    {
      if (animatedCopy)
      {
        objc_initWeak(location, self);
        v16 = self->_circleProgressView;
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __59__SFPersonCollectionViewCell_setCellState_animated_silent___block_invoke_5;
        v53[3] = &unk_1E7EE4378;
        silentCopy3 = silent;
        objc_copyWeak(&v54, location);
        v56 = animatedCopy;
        [(SFCircleProgressView *)v16 animateProgressCompletedWithCompletion:v53];
        objc_destroyWeak(&v54);
        objc_destroyWeak(location);
      }

      else
      {
        v35 = SFLocalizedStringForKey();
        systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
        [(SFPersonCollectionViewCell *)self setSecondLabelText:v35 withTextColor:systemBlueColor animated:0 completion:0];

        [(SFCircleProgressView *)self->_circleProgressView setAlpha:0.0];
        [(SFCircleProgressView *)self->_circleProgressView setProgress:1.0];
      }

      goto LABEL_46;
    }

    if (!silent)
    {
      [(SFPersonCollectionViewCell *)self fireHapticsForState:3];
    }

    v27 = SFLocalizedStringForKey();
    fadedSecondLabelColor3 = [(SFPersonCollectionViewCell *)self fadedSecondLabelColor];
    [(SFPersonCollectionViewCell *)self setSecondLabelText:v27 withTextColor:fadedSecondLabelColor3 animated:animatedCopy completion:0];

    if (!v15)
    {
      goto LABEL_46;
    }

    circleProgressView = self->_circleProgressView;
    v26 = 1.0;
  }

  [(SFCircleProgressView *)circleProgressView setAlpha:v26];
LABEL_46:
  v37 = airdrop_ui_log();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = self->_cellState;
    if (v38 > 6)
    {
      v39 = @"?";
    }

    else
    {
      v39 = off_1E7EE43E8[v38];
    }

    if (state > 6)
    {
      v40 = @"?";
    }

    else
    {
      v40 = off_1E7EE43E8[state];
    }

    displayName2 = [(SFAirDropNode *)self->_person displayName];
    *location = 138412803;
    *&location[4] = v39;
    v62 = 2112;
    v63 = v40;
    v64 = 2113;
    v65 = displayName2;
    _os_log_impl(&dword_1B9E4B000, v37, OS_LOG_TYPE_DEFAULT, "Changing cell state %@ -> %@ for person %{private}@", location, 0x20u);
  }

  self->_cellState = state;
}

void __59__SFPersonCollectionViewCell_setCellState_animated_silent___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E69DD250];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __59__SFPersonCollectionViewCell_setCellState_animated_silent___block_invoke_2;
  v2[3] = &unk_1E7EE3688;
  objc_copyWeak(&v3, (a1 + 32));
  [v1 animateWithDuration:24 delay:v2 options:0 animations:0.75 completion:0.0];
  objc_destroyWeak(&v3);
}

void __59__SFPersonCollectionViewCell_setCellState_animated_silent___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAlpha:0.2];
}

void __59__SFPersonCollectionViewCell_setCellState_animated_silent___block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E69DD250];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __59__SFPersonCollectionViewCell_setCellState_animated_silent___block_invoke_4;
  v2[3] = &unk_1E7EE3688;
  objc_copyWeak(&v3, (a1 + 32));
  [v1 animateWithDuration:24 delay:v2 options:0 animations:0.75 completion:0.0];
  objc_destroyWeak(&v3);
}

void __59__SFPersonCollectionViewCell_setCellState_animated_silent___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAlpha:0.2];
}

void __59__SFPersonCollectionViewCell_setCellState_animated_silent___block_invoke_5(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained fireHapticsForState:4];
  }

  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = SFLocalizedStringForKey();
  v5 = [MEMORY[0x1E69DC888] systemBlueColor];
  [v3 setSecondLabelText:v4 withTextColor:v5 animated:*(a1 + 41) completion:0];

  v6 = MEMORY[0x1E69DD250];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__SFPersonCollectionViewCell_setCellState_animated_silent___block_invoke_6;
  v7[3] = &unk_1E7EE3688;
  objc_copyWeak(&v8, (a1 + 32));
  [v6 animateWithDuration:v7 animations:0.5];
  objc_destroyWeak(&v8);
}

void __59__SFPersonCollectionViewCell_setCellState_animated_silent___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained circleProgressView];
  [v1 setAlpha:0.0];
}

void __59__SFPersonCollectionViewCell_setCellState_animated_silent___block_invoke_7(uint64_t a1)
{
  if (*(a1 + 40) == 1 && (*(a1 + 41) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained fireHapticsForState:5];
  }
}

void __59__SFPersonCollectionViewCell_setCellState_animated_silent___block_invoke_8(uint64_t a1)
{
  if (*(a1 + 40) == 1 && (*(a1 + 41) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained fireHapticsForState:6];
  }
}

- (void)restoreCellStateFromFinalTransferState:(int64_t)state
{
  if ((state - 4) <= 2)
  {
    [(SFPersonCollectionViewCell *)self setCellState:qword_1B9EDEB18[state - 4]];

    [(SFPersonCollectionViewCell *)self updateNameLabel];
  }
}

- (void)prepareHapticsPreWarm:(BOOL)warm
{
  warmCopy = warm;
  v5 = airdrop_ui_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SFPersonCollectionViewCell prepareHapticsPreWarm:];
  }

  if (!self->_notificationHaptic)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCCF0]);
    notificationHaptic = self->_notificationHaptic;
    self->_notificationHaptic = v6;
  }

  if (!self->_impactHaptic)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DCAE8]) initWithStyle:1];
    impactHaptic = self->_impactHaptic;
    self->_impactHaptic = v8;
  }

  if (self->_selectionHaptic)
  {
    if (!warmCopy)
    {
      return;
    }
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E69DCF40]);
    selectionHaptic = self->_selectionHaptic;
    self->_selectionHaptic = v10;

    if (!warmCopy)
    {
      return;
    }
  }

  v12 = airdrop_ui_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [SFPersonCollectionViewCell prepareHapticsPreWarm:];
  }

  [(UINotificationFeedbackGenerator *)self->_notificationHaptic prepare];
  [(UIImpactFeedbackGenerator *)self->_impactHaptic prepare];
  [(UISelectionFeedbackGenerator *)self->_selectionHaptic prepare];
}

- (void)deactivateHaptics
{
  notificationHaptic = self->_notificationHaptic;
  self->_notificationHaptic = 0;

  impactHaptic = self->_impactHaptic;
  self->_impactHaptic = 0;

  selectionHaptic = self->_selectionHaptic;
  self->_selectionHaptic = 0;
}

- (void)fireHapticsForState:(int64_t)state
{
  if (state > 3)
  {
    switch(state)
    {
      case 4:
        v5 = 0;
        break;
      case 5:
        v5 = 1;
        break;
      case 6:
        v5 = 2;
        break;
      default:
        goto LABEL_13;
    }

    [(SFPersonCollectionViewCell *)self prepareHaptics];
    v8 = airdrop_ui_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [SFPersonCollectionViewCell fireHapticsForState:];
    }

    [(UINotificationFeedbackGenerator *)self->_notificationHaptic notificationOccurred:v5];
    goto LABEL_23;
  }

  switch(state)
  {
    case 1:
      goto LABEL_5;
    case 2:
      [(SFPersonCollectionViewCell *)self prepareHaptics];
      v7 = airdrop_ui_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [SFPersonCollectionViewCell fireHapticsForState:];
      }

      [(UISelectionFeedbackGenerator *)self->_selectionHaptic selectionChanged];
      goto LABEL_23;
    case 3:
LABEL_5:
      [(SFPersonCollectionViewCell *)self prepareHaptics];
      v4 = airdrop_ui_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        [SFPersonCollectionViewCell fireHapticsForState:];
      }

      [(UIImpactFeedbackGenerator *)self->_impactHaptic impactOccurred];
LABEL_23:
      [(SFPersonCollectionViewCell *)self prepareHaptics];
      return;
  }

LABEL_13:
  v6 = airdrop_ui_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [SFPersonCollectionViewCell fireHapticsForState:];
  }
}

- (void)updatePersonIconView
{
  stateBeingRestored = self->_stateBeingRestored;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__SFPersonCollectionViewCell_updatePersonIconView__block_invoke;
  aBlock[3] = &unk_1E7EE3720;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v5 = v4;
  if (stateBeingRestored)
  {
    (*(v4 + 2))(v4);
  }

  else
  {
    v6 = MEMORY[0x1E69DD250];
    imageView = [(SFPersonCollectionViewCell *)self imageView];
    [v6 transitionWithView:imageView duration:5242880 options:v5 animations:0 completion:0.200000003];
  }
}

void __50__SFPersonCollectionViewCell_updatePersonIconView__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) person];
  v3 = [v2 isClassroom];
  v4 = [*(a1 + 32) imageView];
  [v4 setImageIsSquare:v3];

  v5 = objc_alloc(MEMORY[0x1E69DCAB8]);
  v6 = [*(a1 + 32) person];
  v8 = [v5 initWithCGImage:{objc_msgSend(v6, "displayIcon")}];

  v7 = [*(a1 + 32) imageView];
  [v7 setImage:v8];
}

- (void)updateNameLabel
{
  v35[3] = *MEMORY[0x1E69E9840];
  person = self->_person;
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v5 = [(SFAirDropNode *)person displayNameForLocale:currentLocale];

  if ((-[SFAirDropNode isMe](self->_person, "isMe") & 1) != 0 || (-[SFAirDropNode isUnknown](self->_person, "isUnknown") & 1) != 0 || (-[SFAirDropNode isClassroom](self->_person, "isClassroom") & 1) != 0 || (-[SFPersonCollectionViewCell traitCollection](self, "traitCollection"), v6 = objc_claimAutoreleasedReturnValue(), [v6 preferredContentSizeCategory], v7 = objc_claimAutoreleasedReturnValue(), v8 = UIContentSizeCategoryCompareToCategory(*MEMORY[0x1E69DDC58], v7), v7, v6, v8 == NSOrderedAscending))
  {
    if (([(SFAirDropNode *)self->_person isMe]& 1) != 0 || [(SFAirDropNode *)self->_person isUnknown])
    {
      traitCollection = [(SFPersonCollectionViewCell *)self traitCollection];
      preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
      v30 = UIContentSizeCategoryCompareToCategory(*MEMORY[0x1E69DDC58], preferredContentSizeCategory);

      if (v30 != NSOrderedAscending)
      {
        v31 = SFNonBreakingStringFromDeviceName();

        v5 = v31;
      }
    }
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    [v9 setLineBreakMode:0];
    [v9 setHyphenationFactor:0.0];
    [v9 setLineBreakStrategy:0xFFFFLL];
    [v9 setAlignment:1];
    v34[0] = *MEMORY[0x1E69DB650];
    textColor = [(UILabel *)self->_nameLabel textColor];
    v35[0] = textColor;
    v34[1] = *MEMORY[0x1E69DB648];
    font = [(UILabel *)self->_nameLabel font];
    v35[1] = font;
    v34[2] = *MEMORY[0x1E69DB688];
    v12 = [v9 copy];
    v35[2] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:3];

    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v15 = [v5 componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

    if ([v15 count] == 2)
    {
      firstObject = [v15 firstObject];
      lastObject = [v15 lastObject];
      if ([firstObject length] && objc_msgSend(lastObject, "length"))
      {
        v33 = lastObject;
        v18 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:firstObject attributes:v13];
        nameLabel = [(SFPersonCollectionViewCell *)self nameLabel];
        [nameLabel frame];
        v32 = v18;
        [v18 boundingRectWithSize:35 options:0 context:{v20, v21}];
        v37 = CGRectIntegral(v36);
        height = v37.size.height;

        nameLabel2 = [(SFPersonCollectionViewCell *)self nameLabel];
        font2 = [nameLabel2 font];
        [font2 lineHeight];
        *&v25 = v25;
        LODWORD(v18) = llroundf(*&v25);

        v26 = height;
        if (llroundf(v26) / v18 == 1)
        {
          lastObject = v33;
          v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@", firstObject, v33];

          v5 = v27;
        }

        else
        {
          lastObject = v33;
        }
      }
    }
  }

  [(UILabel *)self->_nameLabel setText:v5];
}

- (void)setSecondLabelText:(id)text withTextColor:(id)color animated:(BOOL)animated completion:(id)completion
{
  v38[1] = *MEMORY[0x1E69E9840];
  textCopy = text;
  colorCopy = color;
  completionCopy = completion;
  traitCollection = [(SFPersonCollectionViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v14 = UIContentSizeCategoryCompareToCategory(*MEMORY[0x1E69DDC58], preferredContentSizeCategory);

  if ([textCopy length])
  {
    if (v14 == NSOrderedAscending)
    {
      v15 = MEMORY[0x1E696ACD8];
      largeTextNameCenterYConstraint = [(SFPersonCollectionViewCell *)self largeTextNameCenterYConstraint];
      v38[0] = largeTextNameCenterYConstraint;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
      [v15 deactivateConstraints:v17];
    }

    v18 = MEMORY[0x1E696ACD8];
    secondLabelVisibleConstraintsArray = [(SFPersonCollectionViewCell *)self secondLabelVisibleConstraintsArray];
    [v18 activateConstraints:secondLabelVisibleConstraintsArray];
    v20 = 0;
  }

  else
  {
    if (v14 == NSOrderedAscending)
    {
      v21 = MEMORY[0x1E696ACD8];
      largeTextNameCenterYConstraint2 = [(SFPersonCollectionViewCell *)self largeTextNameCenterYConstraint];
      v37 = largeTextNameCenterYConstraint2;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
      [v21 activateConstraints:v23];
    }

    v24 = MEMORY[0x1E696ACD8];
    secondLabelVisibleConstraintsArray = [(SFPersonCollectionViewCell *)self secondLabelVisibleConstraintsArray];
    [v24 deactivateConstraints:secondLabelVisibleConstraintsArray];
    v20 = 4;
  }

  nameLabel = [(SFPersonCollectionViewCell *)self nameLabel];
  [nameLabel setLineBreakMode:v20];

  secondLabel = [(SFPersonCollectionViewCell *)self secondLabel];
  text = [secondLabel text];
  if (textCopy | text)
  {
    v28 = text;
    secondLabel2 = [(SFPersonCollectionViewCell *)self secondLabel];
    text2 = [secondLabel2 text];
    v31 = [text2 isEqual:textCopy];

    if ((v31 & 1) == 0)
    {
      secondLabel3 = [(SFPersonCollectionViewCell *)self secondLabel];
      layer = [secondLabel3 layer];
      [layer removeAllAnimations];

      secondLabel4 = [(SFPersonCollectionViewCell *)self secondLabel];
      [secondLabel4 setAlpha:1.0];

      secondLabel5 = [(SFPersonCollectionViewCell *)self secondLabel];
      [secondLabel5 setText:textCopy];

      secondLabel6 = [(SFPersonCollectionViewCell *)self secondLabel];
      [secondLabel6 setTextColor:colorCopy];

      [(SFPersonCollectionViewCell *)self setNeedsLayout];
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 1);
      }
    }
  }

  else
  {
  }
}

- (void)resetTransferState
{
  [(SFPersonCollectionViewCell *)self setCellState:0 animated:1 silent:1];

  [(SFPersonCollectionViewCell *)self updateNameLabel];
}

- (void)userDidSelect
{
  [(SFPersonCollectionViewCell *)self resetTransferState];

  [(SFPersonCollectionViewCell *)self setCellState:2 animated:1 silent:0];
}

- (void)userDidCancel
{
  if ((self->_cellState | 2) != 6)
  {
    [(NSProgress *)self->_progress cancel];
    [(SFAirDropNode *)self->_person cancelSend];
    [(SFPersonCollectionViewCell *)self setCellState:0 animated:1 silent:1];

    [(SFPersonCollectionViewCell *)self updateNameLabel];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  mainThread = [MEMORY[0x1E696AF00] mainThread];

  if (mainThread)
  {
    if ([objectCopy isEqual:self->_person])
    {
      [(SFPersonCollectionViewCell *)self handleKVOUpdateForPerson:self->_person keyPath:pathCopy];
    }

    else if ([objectCopy isEqual:self->_progress])
    {
      [(SFPersonCollectionViewCell *)self handleKVOUpdateForProgress:self->_progress keyPath:pathCopy];
    }

    else
    {
      v14 = airdrop_ui_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [SFPersonCollectionViewCell observeValueForKeyPath:pathCopy ofObject:v14 change:? context:?];
      }
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__SFPersonCollectionViewCell_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E7EE43A0;
    block[4] = self;
    v16 = pathCopy;
    v17 = objectCopy;
    v18 = changeCopy;
    contextCopy = context;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)addObserverOfValuesForKeyPaths:(id)paths ofObject:(id)object
{
  v17 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  objectCopy = object;
  if (objectCopy)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v8 = [pathsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(pathsCopy);
          }

          [objectCopy addObserver:self forKeyPath:*(*(&v12 + 1) + 8 * v11++) options:0 context:0];
        }

        while (v9 != v11);
        v9 = [pathsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)removeObserverOfValuesForKeyPaths:(id)paths ofObject:(id)object
{
  v17 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  objectCopy = object;
  if (objectCopy)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v8 = [pathsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(pathsCopy);
          }

          [objectCopy removeObserver:self forKeyPath:*(*(&v12 + 1) + 8 * v11++)];
        }

        while (v9 != v11);
        v9 = [pathsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)triggerKVOForKeyPaths:(id)paths ofObject:(id)object
{
  v17 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  objectCopy = object;
  if (objectCopy)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v8 = [pathsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(pathsCopy);
          }

          [(SFPersonCollectionViewCell *)self observeValueForKeyPath:*(*(&v12 + 1) + 8 * v11++) ofObject:objectCopy change:0 context:0];
        }

        while (v9 != v11);
        v9 = [pathsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = SFPersonCollectionViewCell;
  changeCopy = change;
  [(SFPersonCollectionViewCell *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(SFPersonCollectionViewCell *)self traitCollection:v8.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    [(SFPersonCollectionViewCell *)self _updateForCurrentSizeCategory];
  }
}

- (void)_updateForCurrentSizeCategory
{
  traitCollection = [(SFPersonCollectionViewCell *)self traitCollection];
  rhs = [traitCollection preferredContentSizeCategory];

  v4 = UIContentSizeCategoryCompareToCategory(*MEMORY[0x1E69DDC58], rhs);
  _screen = [(SFPersonCollectionViewCell *)self _screen];
  v6 = _SFPersonLabelFont();

  secondLabel = [(SFPersonCollectionViewCell *)self secondLabel];
  [secondLabel setFont:v6];

  nameLabel = [(SFPersonCollectionViewCell *)self nameLabel];
  [nameLabel setFont:v6];

  labelForPositioning = [(SFPersonCollectionViewCell *)self labelForPositioning];
  [labelForPositioning setFont:v6];

  nameLabel = self->_nameLabel;
  if (v4 == NSOrderedAscending)
  {
    [(UILabel *)nameLabel setTextAlignment:4];
    [(UILabel *)self->_secondLabel setTextAlignment:4];
    v14 = MEMORY[0x1E696ACD8];
    regularConstraints = [(SFPersonCollectionViewCell *)self regularConstraints];
    [v14 deactivateConstraints:regularConstraints];

    v13 = MEMORY[0x1E696ACD8];
    [(SFPersonCollectionViewCell *)self largeTextConstraints];
  }

  else
  {
    [(UILabel *)nameLabel setTextAlignment:1];
    [(UILabel *)self->_secondLabel setTextAlignment:1];
    v11 = MEMORY[0x1E696ACD8];
    largeTextConstraints = [(SFPersonCollectionViewCell *)self largeTextConstraints];
    [v11 deactivateConstraints:largeTextConstraints];

    v13 = MEMORY[0x1E696ACD8];
    [(SFPersonCollectionViewCell *)self regularConstraints];
  }
  v16 = ;
  [v13 activateConstraints:v16];

  [(SFPersonCollectionViewCell *)self setNeedsLayout];
}

- (void)handleKVOUpdateForPerson:(id)person keyPath:(id)path
{
  pathCopy = path;
  if (([pathCopy isEqual:@"displayIcon"] & 1) != 0 || (objc_msgSend(pathCopy, "isEqual:", @"monogram") & 1) != 0 || (objc_msgSend(pathCopy, "isEqual:", @"unknown") & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"me"))
  {
    [(SFPersonCollectionViewCell *)self updatePersonIconView];
  }

  else if (([pathCopy isEqual:@"displayName"] & 1) != 0 || objc_msgSend(pathCopy, "isEqual:", @"secondaryName"))
  {
    [(SFPersonCollectionViewCell *)self updateNameLabel];
  }
}

- (void)handleKVOUpdateForProgress:(id)progress keyPath:(id)path
{
  pathCopy = path;
  stateBeingRestored = self->_stateBeingRestored;
  if ([pathCopy isEqualToString:@"userInfo.sendState"])
  {
    sf_transferState = [(NSProgress *)self->_progress sf_transferState];
    if (sf_transferState <= 2)
    {
      if (sf_transferState)
      {
        if (sf_transferState == 1)
        {
          v15 = stateBeingRestored ^ 1;
          selfCopy4 = self;
          v17 = 1;
          goto LABEL_26;
        }

        if (sf_transferState != 2)
        {
          goto LABEL_27;
        }
      }

      else
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained personCollectionViewCellDidStartTransfer:self];
      }

      v15 = stateBeingRestored ^ 1;
      selfCopy4 = self;
      v17 = 2;
LABEL_26:
      [(SFPersonCollectionViewCell *)selfCopy4 setCellState:v17 animated:v15 silent:stateBeingRestored];
      goto LABEL_27;
    }

    if (sf_transferState <= 4)
    {
      if (sf_transferState != 3)
      {
        v8 = airdrop_ui_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [SFPersonCollectionViewCell handleKVOUpdateForProgress:? keyPath:?];
        }

        v9 = stateBeingRestored ^ 1;
        selfCopy5 = self;
        v11 = 5;
LABEL_23:
        [(SFPersonCollectionViewCell *)selfCopy5 setCellState:v11 animated:v9 silent:stateBeingRestored];
        [(SFCircleProgressView *)self->_circleProgressView setProgress:stateBeingRestored ^ 1 animated:0 completion:0.0];
        v13 = objc_loadWeakRetained(&self->_delegate);
        [v13 personCollectionViewCellDidTerminateTransfer:self];
        goto LABEL_24;
      }

      v15 = stateBeingRestored ^ 1;
      selfCopy4 = self;
      v17 = 3;
      goto LABEL_26;
    }

    if (sf_transferState == 5)
    {
      v18 = airdrop_ui_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [SFPersonCollectionViewCell handleKVOUpdateForProgress:? keyPath:?];
      }

      v9 = stateBeingRestored ^ 1;
      selfCopy5 = self;
      v11 = 6;
      goto LABEL_23;
    }

    if (sf_transferState == 6)
    {
      [(SFPersonCollectionViewCell *)self setCellState:4 animated:stateBeingRestored ^ 1 silent:stateBeingRestored];
      v13 = objc_loadWeakRetained(&self->_delegate);
      [v13 personCollectionViewCellDidFinishTransfer:self];
LABEL_24:
    }
  }

  else if ([pathCopy isEqualToString:@"fractionCompleted"])
  {
    circleProgressView = self->_circleProgressView;
    [(NSProgress *)self->_progress fractionCompleted];
    [(SFCircleProgressView *)circleProgressView setProgress:stateBeingRestored ^ 1 animated:0 completion:?];
  }

LABEL_27:
}

- (CGSize)calculatedContentSizeForSheetWidth:(double)width sizeCategory:(id)category
{
  categoryCopy = category;
  _screen = [(SFPersonCollectionViewCell *)self _screen];
  v7 = _SFPersonLabelFont();

  ChickletSize = getChickletSize();
  v9 = v7;
  v10 = UIContentSizeCategoryCompareToCategory(categoryCopy, *MEMORY[0x1E69DDC60]);

  if (v10 == NSOrderedAscending)
  {
    v13 = 1.0;
  }

  else
  {
    [v9 pointSize];
    v12 = v11 / 11.0;
    if (v12 <= 2.0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 2.0;
    }
  }

  [v9 ascender];
  nameLabel = [(SFPersonCollectionViewCell *)self nameLabel];
  text = [nameLabel text];
  v16 = v9;
  v17 = sNameLabel;
  if (!sNameLabel)
  {
    v18 = createNameLabel(*MEMORY[0x1E69DDC70]);
    v19 = sNameLabel;
    sNameLabel = v18;

    v17 = sNameLabel;
  }

  [v17 setFont:v16];
  [sNameLabel setText:text];
  [sNameLabel sizeThatFits:{v13 * ChickletSize + 10.0, 1.79769313e308}];

  [v16 descender];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  UIRectIntegralWithScale();
  v22 = v21;
  v24 = v23;

  v25 = v22;
  v26 = v24;
  result.height = v26;
  result.width = v25;
  return result;
}

- (SFPersonCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)prepareHapticsPreWarm:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)prepareHapticsPreWarm:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fireHapticsForState:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fireHapticsForState:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fireHapticsForState:.cold.3()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)fireHapticsForState:.cold.4()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)observeValueForKeyPath:(NSObject *)a3 ofObject:change:context:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  OUTLINED_FUNCTION_0_1();
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1B9E4B000, a3, OS_LOG_TYPE_ERROR, "%@: incorrect object for keypath %@", v7, 0x16u);
}

- (void)handleKVOUpdateForProgress:(id *)a1 keyPath:.cold.1(id *a1)
{
  v1 = [*a1 sf_error];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1B9E4B000, v2, v3, "SFAirDropTransferProgressStateFailed with error: %@", v4, v5, v6, v7, v8);
}

- (void)handleKVOUpdateForProgress:(uint64_t)a1 keyPath:.cold.2(uint64_t a1)
{
  v1 = [*(a1 + 656) displayName];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1B9E4B000, v2, v3, "SFAirDropTransferProgressStateCanceled by: %@", v4, v5, v6, v7, v8);
}

@end