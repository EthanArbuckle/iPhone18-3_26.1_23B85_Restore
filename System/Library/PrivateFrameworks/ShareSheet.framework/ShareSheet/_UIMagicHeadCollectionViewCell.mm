@interface _UIMagicHeadCollectionViewCell
- (void)_setupConstraints;
- (void)_updateMHForCurrentSizeCategory;
- (void)configureLayoutIfNeeded:(id)needed;
- (void)traitCollectionDidChange:(id)change;
- (void)updateDarkening;
@end

@implementation _UIMagicHeadCollectionViewCell

- (void)configureLayoutIfNeeded:(id)needed
{
  v16.receiver = self;
  v16.super_class = _UIMagicHeadCollectionViewCell;
  neededCopy = needed;
  [(UIAirDropGroupActivityCell *)&v16 configureLayoutIfNeeded:neededCopy];
  deviceClass = [neededCopy deviceClass];

  v6 = &regularHeight_0;
  if ((deviceClass & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    v6 = &compactHeight;
  }

  if (deviceClass == 3)
  {
    v6 = &regularHeight5_8Rounded_0;
  }

  layout_0 = v6;
  v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(_UIMagicHeadCollectionViewCell *)self setMagicHeadView:v7];

  magicHeadView = [(_UIMagicHeadCollectionViewCell *)self magicHeadView];
  [magicHeadView setTranslatesAutoresizingMaskIntoConstraints:0];

  magicHeadView2 = [(_UIMagicHeadCollectionViewCell *)self magicHeadView];
  [magicHeadView2 setAlpha:1.0];

  magicHeadView3 = [(_UIMagicHeadCollectionViewCell *)self magicHeadView];
  [magicHeadView3 setAccessibilityIdentifier:@"magicHeadView"];

  contentView = [(_UIMagicHeadCollectionViewCell *)self contentView];
  magicHeadView4 = [(_UIMagicHeadCollectionViewCell *)self magicHeadView];
  [contentView addSubview:magicHeadView4];

  contentView2 = [(_UIMagicHeadCollectionViewCell *)self contentView];
  transportSlotView = [(UIAirDropGroupActivityCell *)self transportSlotView];
  [contentView2 bringSubviewToFront:transportSlotView];

  contentView3 = [(_UIMagicHeadCollectionViewCell *)self contentView];
  [contentView3 setAccessibilityIdentifier:@"magicHeadCell.contentView"];

  [(_UIMagicHeadCollectionViewCell *)self _setupConstraints];
}

- (void)_setupConstraints
{
  v43[2] = *MEMORY[0x1E69E9840];
  contentView = [(_UIMagicHeadCollectionViewCell *)self contentView];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen _referenceBounds];
  if (v4 >= 414.0)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v5 = 80.0;
    }

    else
    {
      v5 = 84.0;
    }
  }

  else
  {
    v5 = 80.0;
  }

  v8 = MEMORY[0x1E695DF70];
  magicHeadView = [(_UIMagicHeadCollectionViewCell *)self magicHeadView];
  widthAnchor = [magicHeadView widthAnchor];
  v11 = [widthAnchor constraintEqualToConstant:v5];
  v43[0] = v11;
  magicHeadView2 = [(_UIMagicHeadCollectionViewCell *)self magicHeadView];
  heightAnchor = [magicHeadView2 heightAnchor];
  v14 = [heightAnchor constraintEqualToConstant:v5];
  v43[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
  v39 = [v8 arrayWithArray:v15];

  traitCollection = [(_UIMagicHeadCollectionViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  magicHeadView3 = [(_UIMagicHeadCollectionViewCell *)self magicHeadView];
  centerYAnchor = [magicHeadView3 centerYAnchor];
  centerYAnchor2 = [contentView centerYAnchor];
  v20 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v42[0] = v20;
  magicHeadView4 = [(_UIMagicHeadCollectionViewCell *)self magicHeadView];
  centerXAnchor = [magicHeadView4 centerXAnchor];
  imageSlotView = [(UIAirDropGroupActivityCell *)self imageSlotView];
  centerXAnchor2 = [imageSlotView centerXAnchor];
  v25 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v42[1] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
  [(_UIMagicHeadCollectionViewCell *)self setLargeTextMHConstraints:v26];

  magicHeadView5 = [(_UIMagicHeadCollectionViewCell *)self magicHeadView];
  topAnchor = [magicHeadView5 topAnchor];
  topAnchor2 = [contentView topAnchor];
  v30 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:*layout_0 + -9.0];
  v41[0] = v30;
  magicHeadView6 = [(_UIMagicHeadCollectionViewCell *)self magicHeadView];
  centerXAnchor3 = [magicHeadView6 centerXAnchor];
  centerXAnchor4 = [contentView centerXAnchor];
  v34 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v41[1] = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
  [(_UIMagicHeadCollectionViewCell *)self setRegularMHConstraints:v35];

  if (IsAccessibilityCategory)
  {
    [(_UIMagicHeadCollectionViewCell *)self largeTextMHConstraints];
  }

  else
  {
    [(_UIMagicHeadCollectionViewCell *)self regularMHConstraints];
  }
  v36 = ;
  [v39 addObjectsFromArray:v36];

  [MEMORY[0x1E696ACD8] activateConstraints:v39];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = _UIMagicHeadCollectionViewCell;
  changeCopy = change;
  [(UIAirDropGroupActivityCell *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(_UIMagicHeadCollectionViewCell *)self traitCollection:v8.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    [(_UIMagicHeadCollectionViewCell *)self _updateMHForCurrentSizeCategory];
  }
}

- (void)_updateMHForCurrentSizeCategory
{
  traitCollection = [(_UIMagicHeadCollectionViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  v6 = MEMORY[0x1E696ACD8];
  if (IsAccessibilityCategory)
  {
    regularMHConstraints = [(_UIMagicHeadCollectionViewCell *)self regularMHConstraints];
    [v6 deactivateConstraints:regularMHConstraints];

    v8 = MEMORY[0x1E696ACD8];
    [(_UIMagicHeadCollectionViewCell *)self largeTextMHConstraints];
  }

  else
  {
    largeTextMHConstraints = [(_UIMagicHeadCollectionViewCell *)self largeTextMHConstraints];
    [v6 deactivateConstraints:largeTextMHConstraints];

    v8 = MEMORY[0x1E696ACD8];
    [(_UIMagicHeadCollectionViewCell *)self regularMHConstraints];
  }
  v10 = ;
  [v8 activateConstraints:v10];

  [(_UIMagicHeadCollectionViewCell *)self layoutIfNeeded];
}

- (void)updateDarkening
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

  if (([(_UIMagicHeadCollectionViewCell *)self isHighlighted]& 1) != 0 || [(UIAirDropGroupActivityCell *)self isDisabled])
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

  if (([(_UIMagicHeadCollectionViewCell *)self isHighlighted]& 1) != 0 || [(UIAirDropGroupActivityCell *)self isDisabled])
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

  if (([(_UIMagicHeadCollectionViewCell *)self isHighlighted]& 1) != 0 || [(UIAirDropGroupActivityCell *)self isDisabled])
  {
    transportSlotView2 = [MEMORY[0x1E69DC888] grayColor];
    cGColor3 = [transportSlotView2 CGColor];
    v26 = 1;
  }

  else
  {
    v26 = 0;
    cGColor3 = 0;
  }

  magicHeadWheelView = [(_UIMagicHeadCollectionViewCell *)self magicHeadWheelView];
  selectedHead = [magicHeadWheelView selectedHead];
  imageSlotView4 = [selectedHead imageSlotView];
  layer9 = [imageSlotView4 layer];
  [layer9 setContentsMultiplyColor:cGColor3];

  if (v26)
  {
  }
}

@end