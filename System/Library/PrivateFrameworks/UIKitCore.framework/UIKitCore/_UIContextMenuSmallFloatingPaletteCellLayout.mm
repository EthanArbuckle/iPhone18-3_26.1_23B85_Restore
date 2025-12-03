@interface _UIContextMenuSmallFloatingPaletteCellLayout
- (UIShape)contentShape;
- (_UIContextMenuCellContentView)contentView;
- (_UIContextMenuSmallFloatingPaletteCellLayout)initWithContentView:(id)view;
- (id)preferredIconFontUsingBoldFont:(BOOL)font;
- (void)_configureSharedFloatingContentViewStyle;
- (void)installConstraints;
- (void)removeConstraints;
- (void)setControlState:(unint64_t)state withAnimationCoordinator:(id)coordinator;
@end

@implementation _UIContextMenuSmallFloatingPaletteCellLayout

- (_UIContextMenuSmallFloatingPaletteCellLayout)initWithContentView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = _UIContextMenuSmallFloatingPaletteCellLayout;
  v5 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(_UIContextMenuSmallFloatingPaletteCellLayout *)v5 setContentView:viewCopy];
    array = [MEMORY[0x1E695DF70] array];
    [(_UIContextMenuSmallFloatingPaletteCellLayout *)v6 setManagedConstraints:array];
  }

  return v6;
}

- (id)preferredIconFontUsingBoldFont:(BOOL)font
{
  contentView = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self contentView];
  traitCollection = [contentView traitCollection];
  v6 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);
  v7 = v6;
  if (font)
  {
    [v6 titleEmphasizedFont];
  }

  else
  {
    [v6 titleFont];
  }
  v8 = ;
  v9 = [v8 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:traitCollection];

  return v9;
}

- (UIShape)contentShape
{
  contentView = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self contentView];
  traitCollection = [contentView traitCollection];
  v4 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  [v4 menuCornerRadius];
  v6 = [UIShape rectShapeWithCornerRadius:fmax(v5 + -8.0, 8.0)];
  v7 = [v6 shapeByApplyingInsets:{8.0, 0.0, 8.0, 0.0}];

  return v7;
}

- (void)installConstraints
{
  v78[6] = *MEMORY[0x1E69E9840];
  [(_UIContextMenuSmallFloatingPaletteCellLayout *)self removeConstraints];
  array = [MEMORY[0x1E695DF70] array];
  contentView = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self contentView];
  labelStackView = [contentView labelStackView];
  [labelStackView removeFromSuperview];

  floatingContentView = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];

  if (!floatingContentView)
  {
    v6 = [_UIFloatingContentView alloc];
    v7 = [(_UIFloatingContentView *)v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(UIView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_UIContextMenuSmallFloatingPaletteCellLayout *)self setFloatingContentView:v7];
    [(_UIContextMenuSmallFloatingPaletteCellLayout *)self _configureSharedFloatingContentViewStyle];
  }

  floatingContentView2 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];
  [contentView addSubview:floatingContentView2];

  iconView = [contentView iconView];
  titleLabel = [contentView titleLabel];
  floatingContentView3 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];
  selfCopy = self;
  contentView2 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self contentView];
  traitCollection = [contentView2 traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  v69 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
  [v69 paletteMinimumItemSize];
  v14 = v13;
  v16 = v15;
  topAnchor = [floatingContentView3 topAnchor];
  topAnchor2 = [contentView topAnchor];
  v60 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:26.0];
  v78[0] = v60;
  bottomAnchor = [floatingContentView3 bottomAnchor];
  bottomAnchor2 = [contentView bottomAnchor];
  v56 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-46.0];
  v78[1] = v56;
  leadingAnchor = [floatingContentView3 leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v78[2] = v18;
  trailingAnchor = [floatingContentView3 trailingAnchor];
  v72 = contentView;
  trailingAnchor2 = [contentView trailingAnchor];
  v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v78[3] = v21;
  widthAnchor = [floatingContentView3 widthAnchor];
  v23 = [widthAnchor constraintEqualToConstant:v14];
  v78[4] = v23;
  v70 = floatingContentView3;
  heightAnchor = [floatingContentView3 heightAnchor];
  v25 = [heightAnchor constraintEqualToConstant:v16];
  v78[5] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:6];
  [array addObjectsFromArray:v26];

  v27 = iconView;
  if (iconView)
  {
    contentView3 = [v70 contentView];
    [contentView3 addSubview:iconView];

    centerYAnchor = [iconView centerYAnchor];
    contentView4 = [v70 contentView];
    centerYAnchor2 = [contentView4 centerYAnchor];
    v30 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v77[0] = v30;
    centerXAnchor = [iconView centerXAnchor];
    contentView5 = [v70 contentView];
    centerXAnchor2 = [contentView5 centerXAnchor];
    v34 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v77[1] = v34;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:2];
    v36 = array;
    [array addObjectsFromArray:v35];

    objc_opt_class();
    v38 = titleLabel;
    v37 = v72;
    v39 = v70;
    if (objc_opt_isKindOfClass())
    {
      contentView7 = iconView;
      _currentImage = [contentView7 _currentImage];
      if (([v72 options] & 4) != 0 && !objc_msgSend(v72, "selectedIconBehavior"))
      {
        if ([v72 isFocused])
        {
          +[UIColor blackColor];
        }

        else
        {
          +[UIColor labelColor];
        }
        v53 = ;
        v76 = v53;
        v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
        centerYAnchor3 = [UIImageSymbolConfiguration configurationWithPaletteColors:v54];
      }

      else
      {
        centerYAnchor3 = 0;
      }

      [contentView7 _setOverridingSymbolConfiguration:centerYAnchor3];
      goto LABEL_11;
    }
  }

  else
  {
    v36 = array;
    v38 = titleLabel;
    v37 = v72;
    v39 = v70;
    if (titleLabel)
    {
      v43 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleCaption1"];
      [titleLabel setFont:v43];

      contentView6 = [v70 contentView];
      [contentView6 addSubview:titleLabel];

      centerYAnchor3 = [titleLabel centerYAnchor];
      contentView7 = [v70 contentView];
      centerYAnchor4 = [contentView7 centerYAnchor];
      v67 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
      v75[0] = v67;
      leadingAnchor3 = [titleLabel leadingAnchor];
      contentView8 = [v70 contentView];
      leadingAnchor4 = [contentView8 leadingAnchor];
      [v69 paletteItemMinimumHorizontalMargin];
      v46 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:?];
      v75[1] = v46;
      trailingAnchor3 = [titleLabel trailingAnchor];
      contentView9 = [v70 contentView];
      trailingAnchor4 = [contentView9 trailingAnchor];
      [v69 paletteItemMinimumHorizontalMargin];
      v51 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-v50];
      v75[2] = v51;
      v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:3];
      v36 = array;
      [array addObjectsFromArray:v52];

      _currentImage = centerYAnchor4;
      v39 = v70;

      v38 = titleLabel;
      v37 = v72;

LABEL_11:
      v27 = iconView;
    }
  }

  [MEMORY[0x1E69977A0] activateConstraints:v36];
  [(_UIContextMenuSmallFloatingPaletteCellLayout *)selfCopy setManagedConstraints:v36];
}

- (void)removeConstraints
{
  floatingContentView = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];
  [floatingContentView removeFromSuperview];

  v4 = MEMORY[0x1E69977A0];
  managedConstraints = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self managedConstraints];
  [v4 deactivateConstraints:managedConstraints];

  managedConstraints = self->_managedConstraints;
  self->_managedConstraints = 0;
}

- (void)setControlState:(unint64_t)state withAnimationCoordinator:(id)coordinator
{
  self->_controlState = state;
  coordinatorCopy = coordinator;
  floatingContentView = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];
  [floatingContentView setControlState:state withAnimationCoordinator:coordinatorCopy];
}

- (void)_configureSharedFloatingContentViewStyle
{
  contentView = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self contentView];
  traitCollection = [contentView traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  v29 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
  floatingContentView = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];
  itemBackgroundColorProvider = [v29 itemBackgroundColorProvider];
  v8 = itemBackgroundColorProvider[2](itemBackgroundColorProvider, 0, 0);
  [floatingContentView setBackgroundColor:v8 forState:0];

  floatingContentView2 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];
  itemBackgroundColorProvider2 = [v29 itemBackgroundColorProvider];
  v11 = itemBackgroundColorProvider2[2](itemBackgroundColorProvider2, 8, 0);
  [floatingContentView2 setBackgroundColor:v11 forState:8];

  floatingContentView3 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];
  itemBackgroundColorProvider3 = [v29 itemBackgroundColorProvider];
  v14 = itemBackgroundColorProvider3[2](itemBackgroundColorProvider3, 1, 0);
  [floatingContentView3 setBackgroundColor:v14 forState:1];

  floatingContentView4 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];
  itemBackgroundColorProvider4 = [v29 itemBackgroundColorProvider];
  v17 = itemBackgroundColorProvider4[2](itemBackgroundColorProvider4, 4, 0);
  [floatingContentView4 setBackgroundColor:v17 forState:4];

  floatingContentView5 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];
  v19 = [_UIFocusAnimationConfiguration configurationWithStyle:2];
  [floatingContentView5 setFocusAnimationConfiguration:v19];

  floatingContentView6 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];
  [floatingContentView6 setCornerRadius:24.0];

  floatingContentView7 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];
  [floatingContentView7 setRoundContentWhenDeselected:1];

  floatingContentView8 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];
  [floatingContentView8 setClipsContentToBounds:1];

  floatingContentView9 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];
  [floatingContentView9 setFocusedSizeIncrease:20.0];

  floatingContentView10 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];
  [floatingContentView10 setShadowOpacity:1 forUserInterfaceStyle:0.3];

  floatingContentView11 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];
  [floatingContentView11 setUseShadowImage:0];

  floatingContentView12 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];
  [floatingContentView12 setShadowRadius:10.0];

  floatingContentView13 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];
  [floatingContentView13 setShadowVerticalOffset:10.0];

  floatingContentView14 = [(_UIContextMenuSmallFloatingPaletteCellLayout *)self floatingContentView];
  [floatingContentView14 setContentMotionRotation:0.0 translation:{0.0, 4.0, 4.0}];
}

- (_UIContextMenuCellContentView)contentView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentView);

  return WeakRetained;
}

@end