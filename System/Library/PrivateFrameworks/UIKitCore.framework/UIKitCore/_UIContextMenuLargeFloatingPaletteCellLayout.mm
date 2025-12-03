@interface _UIContextMenuLargeFloatingPaletteCellLayout
- (UIColor)preferredContentColorForCurrentState;
- (UIShape)contentShape;
- (_UIContextMenuCellContentView)contentView;
- (_UIContextMenuLargeFloatingPaletteCellLayout)initWithContentView:(id)view;
- (id)preferredIconFontUsingBoldFont:(BOOL)font;
- (unint64_t)labelMaximumNumberOfLines;
- (void)_configureSharedFloatingContentViewStyleForImageStyle:(BOOL)style;
- (void)installConstraints;
- (void)removeConstraints;
- (void)setControlState:(unint64_t)state withAnimationCoordinator:(id)coordinator;
@end

@implementation _UIContextMenuLargeFloatingPaletteCellLayout

- (_UIContextMenuLargeFloatingPaletteCellLayout)initWithContentView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = _UIContextMenuLargeFloatingPaletteCellLayout;
  v5 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(_UIContextMenuLargeFloatingPaletteCellLayout *)v5 setContentView:viewCopy];
    array = [MEMORY[0x1E695DF70] array];
    [(_UIContextMenuLargeFloatingPaletteCellLayout *)v6 setManagedConstraints:array];
  }

  return v6;
}

- (unint64_t)labelMaximumNumberOfLines
{
  contentView = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self contentView];
  iconView = [contentView iconView];
  if (iconView)
  {
    v4 = 1;
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

- (id)preferredIconFontUsingBoldFont:(BOOL)font
{
  contentView = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self contentView];
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

- (UIColor)preferredContentColorForCurrentState
{
  if ((-[_UIContextMenuLargeFloatingPaletteCellLayout controlState](self, "controlState") & 8) != 0 && (-[_UIContextMenuLargeFloatingPaletteCellLayout contentView](self, "contentView"), v3 = objc_claimAutoreleasedReturnValue(), [v3 iconView], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    v5 = +[UIColor labelColor];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIShape)contentShape
{
  contentView = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self contentView];
  traitCollection = [contentView traitCollection];
  v4 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  [v4 menuCornerRadius];
  v6 = [UIShape rectShapeWithCornerRadius:fmax(v5 + -8.0, 8.0)];
  v7 = [v6 shapeByApplyingInsets:{8.0, 0.0, 8.0, 0.0}];

  return v7;
}

- (void)installConstraints
{
  selfCopy = self;
  v165[6] = *MEMORY[0x1E69E9840];
  [(_UIContextMenuLargeFloatingPaletteCellLayout *)self removeConstraints];
  array = [MEMORY[0x1E695DF70] array];
  contentView = [(_UIContextMenuLargeFloatingPaletteCellLayout *)selfCopy contentView];
  labelStackView = [contentView labelStackView];
  [labelStackView removeFromSuperview];

  floatingContentView = [(_UIContextMenuLargeFloatingPaletteCellLayout *)selfCopy floatingContentView];

  if (!floatingContentView)
  {
    v7 = [_UIFloatingContentView alloc];
    v8 = [(_UIFloatingContentView *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(UIView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_UIContextMenuLargeFloatingPaletteCellLayout *)selfCopy setFloatingContentView:v8];
  }

  floatingContentView2 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)selfCopy floatingContentView];
  [contentView addSubview:floatingContentView2];

  iconView = [contentView iconView];
  titleLabel = [contentView titleLabel];
  floatingContentView3 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)selfCopy floatingContentView];
  v157 = titleLabel;
  v152 = iconView;
  if (iconView)
  {
    [(_UIContextMenuLargeFloatingPaletteCellLayout *)selfCopy _configureSharedFloatingContentViewStyleForImageStyle:1];
    [contentView addSubview:iconView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v143 = selfCopy;
      v153 = iconView;
      _currentImage = [v153 _currentImage];
      topAnchor = [floatingContentView3 topAnchor];
      topAnchor2 = [contentView topAnchor];
      v121 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:30.0];
      v165[0] = v121;
      widthAnchor = [floatingContentView3 widthAnchor];
      [_currentImage size];
      v112 = [widthAnchor constraintEqualToConstant:?];
      v165[1] = v112;
      heightAnchor = [floatingContentView3 heightAnchor];
      [_currentImage size];
      v106 = [heightAnchor constraintEqualToConstant:v13];
      v165[2] = v106;
      [floatingContentView3 centerXAnchor];
      v104 = v14 = contentView;
      [contentView centerXAnchor];
      v15 = array;
      v16 = v148 = array;
      v17 = [v104 constraintEqualToAnchor:v16];
      v165[3] = v17;
      leadingAnchor = [floatingContentView3 leadingAnchor];
      leadingAnchor2 = [v14 leadingAnchor];
      v20 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
      v165[4] = v20;
      trailingAnchor = [floatingContentView3 trailingAnchor];
      v150 = v14;
      trailingAnchor2 = [v14 trailingAnchor];
      [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
      v23 = v147 = floatingContentView3;
      v165[5] = v23;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v165 count:6];
      [v15 addObjectsFromArray:v24];

      contentView2 = [v147 contentView];
      [contentView2 addSubview:v153];

      widthAnchor2 = [v153 widthAnchor];
      [_currentImage size];
      v128 = [widthAnchor2 constraintEqualToConstant:?];
      v164[0] = v128;
      heightAnchor2 = [v153 heightAnchor];
      [_currentImage size];
      v27 = [heightAnchor2 constraintEqualToConstant:v26];
      v164[1] = v27;
      centerXAnchor = [v153 centerXAnchor];
      contentView3 = [v147 contentView];
      centerXAnchor2 = [contentView3 centerXAnchor];
      v31 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v164[2] = v31;
      centerYAnchor = [v153 centerYAnchor];
      contentView4 = [v147 contentView];
      centerYAnchor2 = [contentView4 centerYAnchor];
      v35 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v164[3] = v35;
      v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v164 count:4];
      [v148 addObjectsFromArray:v36];

      v37 = v157;
      if (v157)
      {
        v38 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleCaption1"];
        [v157 setFont:v38];

        v39 = ([(_UIContextMenuLargeFloatingPaletteCellLayout *)v143 controlState]& 8) == 0 && ([(_UIContextMenuLargeFloatingPaletteCellLayout *)v143 controlState]& 1) == 0;
        [v157 setHidden:v39];
        [v150 addSubview:v157];
        topAnchor3 = [v157 topAnchor];
        bottomAnchor = [v147 bottomAnchor];
        v126 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:5.0];
        v163[0] = v126;
        bottomAnchor2 = [v157 bottomAnchor];
        bottomAnchor3 = [v150 bottomAnchor];
        v96 = [bottomAnchor2 constraintLessThanOrEqualToAnchor:bottomAnchor3 constant:-16.0];
        v163[1] = v96;
        centerXAnchor3 = [v157 centerXAnchor];
        centerXAnchor4 = [v147 centerXAnchor];
        v99 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
        v163[2] = v99;
        widthAnchor3 = [v157 widthAnchor];
        widthAnchor4 = [v147 widthAnchor];
        v102 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
        v163[3] = v102;
        v103 = [MEMORY[0x1E695DEC8] arrayWithObjects:v163 count:4];
        [v148 addObjectsFromArray:v103];

        v37 = v157;
        v67 = v148;

        contentView = v150;
        [v157 setPreferredMaxLayoutWidth:0.0];
      }

      else
      {
        bottomAnchor4 = [v147 bottomAnchor];
        contentView = v150;
        bottomAnchor5 = [v150 bottomAnchor];
        v93 = [bottomAnchor4 constraintLessThanOrEqualToAnchor:bottomAnchor5 constant:-46.0];
        v162 = v93;
        v94 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v162 count:1];
        v67 = v148;
        [v148 addObjectsFromArray:v94];
      }

      selfCopy = v143;

      v74 = v152;
      v63 = v153;
      floatingContentView3 = v147;
    }

    else
    {
      [contentView addSubview:iconView];
      centerYAnchor3 = [iconView centerYAnchor];
      centerYAnchor4 = [contentView centerYAnchor];
      v68 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
      v161[0] = v68;
      centerXAnchor5 = [iconView centerXAnchor];
      centerXAnchor6 = [contentView centerXAnchor];
      [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
      v72 = v71 = floatingContentView3;
      v161[1] = v72;
      v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:v161 count:2];
      v67 = [v73 mutableCopy];

      floatingContentView3 = v71;
      v74 = v152;
      v63 = centerYAnchor3;

      v37 = v157;
    }
  }

  else
  {
    v149 = array;
    v151 = contentView;
    if (titleLabel)
    {
      v40 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleCaption1"];
      [titleLabel setFont:v40];

      [(_UIContextMenuLargeFloatingPaletteCellLayout *)selfCopy _configureSharedFloatingContentViewStyleForImageStyle:0];
      contentView5 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)selfCopy contentView];
      traitCollection = [contentView5 traitCollection];
      userInterfaceIdiom = [traitCollection userInterfaceIdiom];

      v154 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
      [v154 paletteMinimumItemSize];
      v45 = v44;
      v47 = v46;
      topAnchor4 = [floatingContentView3 topAnchor];
      topAnchor5 = [contentView topAnchor];
      v129 = [topAnchor4 constraintEqualToAnchor:topAnchor5 constant:30.0];
      v160[0] = v129;
      bottomAnchor6 = [floatingContentView3 bottomAnchor];
      bottomAnchor7 = [contentView bottomAnchor];
      v113 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7 constant:-46.0];
      v160[1] = v113;
      leadingAnchor3 = [floatingContentView3 leadingAnchor];
      leadingAnchor4 = [contentView leadingAnchor];
      v48 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      v160[2] = v48;
      trailingAnchor3 = [floatingContentView3 trailingAnchor];
      trailingAnchor4 = [v151 trailingAnchor];
      v51 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      v160[3] = v51;
      widthAnchor5 = [floatingContentView3 widthAnchor];
      v53 = [widthAnchor5 constraintGreaterThanOrEqualToConstant:v45];
      v160[4] = v53;
      heightAnchor3 = [floatingContentView3 heightAnchor];
      v55 = [heightAnchor3 constraintGreaterThanOrEqualToConstant:v47];
      v160[5] = v55;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v160 count:6];
      v56 = v144 = selfCopy;
      [v149 addObjectsFromArray:v56];

      contentView6 = [floatingContentView3 contentView];
      [contentView6 addSubview:v157];

      topAnchor6 = [v157 topAnchor];
      topAnchor7 = [floatingContentView3 topAnchor];
      v130 = [topAnchor6 constraintEqualToAnchor:topAnchor7 constant:19.0];
      v159[0] = v130;
      bottomAnchor8 = [v157 bottomAnchor];
      bottomAnchor9 = [floatingContentView3 bottomAnchor];
      v114 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9 constant:-19.0];
      v159[1] = v114;
      centerXAnchor7 = [v157 centerXAnchor];
      centerXAnchor8 = [floatingContentView3 centerXAnchor];
      v60 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
      v159[2] = v60;
      widthAnchor6 = [v157 widthAnchor];
      widthAnchor7 = [floatingContentView3 widthAnchor];
      v63 = v154;
      [v154 paletteItemMinimumHorizontalMargin];
      v65 = [widthAnchor6 constraintLessThanOrEqualToAnchor:widthAnchor7 constant:v64 * -2.0];
      v159[3] = v65;
      v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:v159 count:4];
      v67 = v149;
      [v149 addObjectsFromArray:v66];

      v37 = v157;
      contentView = v151;

      selfCopy = v144;
      [v157 setPreferredMaxLayoutWidth:208.0];
    }

    else
    {
      [(_UIContextMenuLargeFloatingPaletteCellLayout *)selfCopy _configureSharedFloatingContentViewStyleForImageStyle:0];
      contentView7 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)selfCopy contentView];
      traitCollection2 = [contentView7 traitCollection];
      userInterfaceIdiom2 = [traitCollection2 userInterfaceIdiom];

      v156 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom2);
      [v156 paletteMinimumItemSize];
      v79 = v78;
      v81 = v80;
      topAnchor8 = [floatingContentView3 topAnchor];
      topAnchor9 = [contentView topAnchor];
      v137 = [topAnchor8 constraintEqualToAnchor:topAnchor9 constant:30.0];
      v158[0] = v137;
      bottomAnchor10 = [floatingContentView3 bottomAnchor];
      bottomAnchor11 = [contentView bottomAnchor];
      v119 = [bottomAnchor10 constraintEqualToAnchor:bottomAnchor11 constant:-46.0];
      v158[1] = v119;
      leadingAnchor5 = [floatingContentView3 leadingAnchor];
      leadingAnchor6 = [contentView leadingAnchor];
      v108 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
      v158[2] = v108;
      trailingAnchor5 = [floatingContentView3 trailingAnchor];
      trailingAnchor6 = [contentView trailingAnchor];
      v83 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
      v158[3] = v83;
      widthAnchor8 = [floatingContentView3 widthAnchor];
      v85 = [widthAnchor8 constraintEqualToConstant:v79];
      v158[4] = v85;
      heightAnchor4 = [floatingContentView3 heightAnchor];
      v87 = [heightAnchor4 constraintEqualToConstant:v81];
      v158[5] = v87;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v158 count:6];
      v88 = floatingContentView3;
      v90 = v89 = selfCopy;
      v67 = v149;
      [v149 addObjectsFromArray:v90];

      selfCopy = v89;
      floatingContentView3 = v88;

      v37 = v157;
      v63 = v156;

      contentView = v151;
    }

    v74 = 0;
  }

  [MEMORY[0x1E69977A0] activateConstraints:v67];
  [(_UIContextMenuLargeFloatingPaletteCellLayout *)selfCopy setManagedConstraints:v67];
}

- (void)removeConstraints
{
  floatingContentView = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self floatingContentView];
  [floatingContentView removeFromSuperview];

  v4 = MEMORY[0x1E69977A0];
  managedConstraints = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self managedConstraints];
  [v4 deactivateConstraints:managedConstraints];

  managedConstraints = self->_managedConstraints;
  self->_managedConstraints = 0;
}

- (void)setControlState:(unint64_t)state withAnimationCoordinator:(id)coordinator
{
  stateCopy = state;
  self->_controlState = state;
  [_UIFloatingContentView setControlState:"setControlState:withAnimationCoordinator:" withAnimationCoordinator:?];
  contentView = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self contentView];
  iconView = [contentView iconView];

  if (iconView)
  {
    contentView2 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self contentView];
    titleLabel = [contentView2 titleLabel];
    [titleLabel setHidden:(stateCopy & 9) == 0];
  }
}

- (void)_configureSharedFloatingContentViewStyleForImageStyle:(BOOL)style
{
  floatingContentView = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self floatingContentView];
  v6 = [_UIFocusAnimationConfiguration configurationWithStyle:2];
  [floatingContentView setFocusAnimationConfiguration:v6];

  floatingContentView2 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self floatingContentView];
  [floatingContentView2 setCornerRadius:24.0];

  floatingContentView3 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self floatingContentView];
  [floatingContentView3 setRoundContentWhenDeselected:1];

  floatingContentView4 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self floatingContentView];
  [floatingContentView4 setClipsContentToBounds:1];

  floatingContentView5 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self floatingContentView];
  [floatingContentView5 setFocusedSizeIncrease:20.0];

  floatingContentView6 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self floatingContentView];
  [floatingContentView6 setUseShadowImage:0];

  floatingContentView7 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self floatingContentView];
  [floatingContentView7 setShadowRadius:10.0];

  floatingContentView8 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self floatingContentView];
  [floatingContentView8 setShadowVerticalOffset:15.0];

  floatingContentView9 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self floatingContentView];
  [floatingContentView9 setContentMotionRotation:0.0 translation:{0.0, 4.0, 4.0}];

  floatingContentView10 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self floatingContentView];
  [floatingContentView10 setFocusScaleAnchorPoint:{0.5, 1.0}];

  contentView = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self contentView];
  traitCollection = [contentView traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  v19 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
  v32 = v19;
  if (style)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
  }

  else
  {
    itemBackgroundColorProvider = [v19 itemBackgroundColorProvider];
    v22 = itemBackgroundColorProvider[2](itemBackgroundColorProvider, 0, 0);

    itemBackgroundColorProvider2 = [v32 itemBackgroundColorProvider];
    v21 = itemBackgroundColorProvider2[2](itemBackgroundColorProvider2, 8, 0);

    itemBackgroundColorProvider3 = [v32 itemBackgroundColorProvider];
    v23 = itemBackgroundColorProvider3[2](itemBackgroundColorProvider3, 1, 0);

    itemBackgroundColorProvider4 = [v32 itemBackgroundColorProvider];
    v20 = itemBackgroundColorProvider4[2](itemBackgroundColorProvider4, 4, 0);
  }

  floatingContentView11 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self floatingContentView];
  [floatingContentView11 setBackgroundColor:v22 forState:0];

  floatingContentView12 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self floatingContentView];
  [floatingContentView12 setBackgroundColor:v21 forState:8];

  floatingContentView13 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self floatingContentView];
  [floatingContentView13 setBackgroundColor:v23 forState:1];

  floatingContentView14 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self floatingContentView];
  [floatingContentView14 setBackgroundColor:v20 forState:4];
}

- (_UIContextMenuCellContentView)contentView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentView);

  return WeakRetained;
}

@end