@interface _UIContextMenuLargeFloatingPaletteCellLayout
- (UIColor)preferredContentColorForCurrentState;
- (UIShape)contentShape;
- (_UIContextMenuCellContentView)contentView;
- (_UIContextMenuLargeFloatingPaletteCellLayout)initWithContentView:(id)a3;
- (id)preferredIconFontUsingBoldFont:(BOOL)a3;
- (unint64_t)labelMaximumNumberOfLines;
- (void)_configureSharedFloatingContentViewStyleForImageStyle:(BOOL)a3;
- (void)installConstraints;
- (void)removeConstraints;
- (void)setControlState:(unint64_t)a3 withAnimationCoordinator:(id)a4;
@end

@implementation _UIContextMenuLargeFloatingPaletteCellLayout

- (_UIContextMenuLargeFloatingPaletteCellLayout)initWithContentView:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIContextMenuLargeFloatingPaletteCellLayout;
  v5 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(_UIContextMenuLargeFloatingPaletteCellLayout *)v5 setContentView:v4];
    v7 = [MEMORY[0x1E695DF70] array];
    [(_UIContextMenuLargeFloatingPaletteCellLayout *)v6 setManagedConstraints:v7];
  }

  return v6;
}

- (unint64_t)labelMaximumNumberOfLines
{
  v2 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self contentView];
  v3 = [v2 iconView];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

- (id)preferredIconFontUsingBoldFont:(BOOL)a3
{
  v4 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self contentView];
  v5 = [v4 traitCollection];
  v6 = _UIContextMenuGetPlatformMetrics([v5 userInterfaceIdiom]);
  v7 = v6;
  if (a3)
  {
    [v6 titleEmphasizedFont];
  }

  else
  {
    [v6 titleFont];
  }
  v8 = ;
  v9 = [v8 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v5];

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
  v2 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self contentView];
  v3 = [v2 traitCollection];
  v4 = _UIContextMenuGetPlatformMetrics([v3 userInterfaceIdiom]);

  [v4 menuCornerRadius];
  v6 = [UIShape rectShapeWithCornerRadius:fmax(v5 + -8.0, 8.0)];
  v7 = [v6 shapeByApplyingInsets:{8.0, 0.0, 8.0, 0.0}];

  return v7;
}

- (void)installConstraints
{
  v2 = self;
  v165[6] = *MEMORY[0x1E69E9840];
  [(_UIContextMenuLargeFloatingPaletteCellLayout *)self removeConstraints];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)v2 contentView];
  v5 = [v4 labelStackView];
  [v5 removeFromSuperview];

  v6 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)v2 floatingContentView];

  if (!v6)
  {
    v7 = [_UIFloatingContentView alloc];
    v8 = [(_UIFloatingContentView *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(UIView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_UIContextMenuLargeFloatingPaletteCellLayout *)v2 setFloatingContentView:v8];
  }

  v9 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)v2 floatingContentView];
  [v4 addSubview:v9];

  v10 = [v4 iconView];
  v11 = [v4 titleLabel];
  v12 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)v2 floatingContentView];
  v157 = v11;
  v152 = v10;
  if (v10)
  {
    [(_UIContextMenuLargeFloatingPaletteCellLayout *)v2 _configureSharedFloatingContentViewStyleForImageStyle:1];
    [v4 addSubview:v10];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v143 = v2;
      v153 = v10;
      v139 = [v153 _currentImage];
      v133 = [v12 topAnchor];
      v127 = [v4 topAnchor];
      v121 = [v133 constraintEqualToAnchor:v127 constant:30.0];
      v165[0] = v121;
      v116 = [v12 widthAnchor];
      [v139 size];
      v112 = [v116 constraintEqualToConstant:?];
      v165[1] = v112;
      v109 = [v12 heightAnchor];
      [v139 size];
      v106 = [v109 constraintEqualToConstant:v13];
      v165[2] = v106;
      [v12 centerXAnchor];
      v104 = v14 = v4;
      [v4 centerXAnchor];
      v15 = v3;
      v16 = v148 = v3;
      v17 = [v104 constraintEqualToAnchor:v16];
      v165[3] = v17;
      v18 = [v12 leadingAnchor];
      v19 = [v14 leadingAnchor];
      v20 = [v18 constraintGreaterThanOrEqualToAnchor:v19];
      v165[4] = v20;
      v21 = [v12 trailingAnchor];
      v150 = v14;
      v22 = [v14 trailingAnchor];
      [v21 constraintLessThanOrEqualToAnchor:v22];
      v23 = v147 = v12;
      v165[5] = v23;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v165 count:6];
      [v15 addObjectsFromArray:v24];

      v25 = [v147 contentView];
      [v25 addSubview:v153];

      v134 = [v153 widthAnchor];
      [v139 size];
      v128 = [v134 constraintEqualToConstant:?];
      v164[0] = v128;
      v122 = [v153 heightAnchor];
      [v139 size];
      v27 = [v122 constraintEqualToConstant:v26];
      v164[1] = v27;
      v28 = [v153 centerXAnchor];
      v29 = [v147 contentView];
      v30 = [v29 centerXAnchor];
      v31 = [v28 constraintEqualToAnchor:v30];
      v164[2] = v31;
      v32 = [v153 centerYAnchor];
      v33 = [v147 contentView];
      v34 = [v33 centerYAnchor];
      v35 = [v32 constraintEqualToAnchor:v34];
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
        v138 = [v157 topAnchor];
        v132 = [v147 bottomAnchor];
        v126 = [v138 constraintEqualToAnchor:v132 constant:5.0];
        v163[0] = v126;
        v120 = [v157 bottomAnchor];
        v95 = [v150 bottomAnchor];
        v96 = [v120 constraintLessThanOrEqualToAnchor:v95 constant:-16.0];
        v163[1] = v96;
        v97 = [v157 centerXAnchor];
        v98 = [v147 centerXAnchor];
        v99 = [v97 constraintEqualToAnchor:v98];
        v163[2] = v99;
        v100 = [v157 widthAnchor];
        v101 = [v147 widthAnchor];
        v102 = [v100 constraintEqualToAnchor:v101];
        v163[3] = v102;
        v103 = [MEMORY[0x1E695DEC8] arrayWithObjects:v163 count:4];
        [v148 addObjectsFromArray:v103];

        v37 = v157;
        v67 = v148;

        v4 = v150;
        [v157 setPreferredMaxLayoutWidth:0.0];
      }

      else
      {
        v91 = [v147 bottomAnchor];
        v4 = v150;
        v92 = [v150 bottomAnchor];
        v93 = [v91 constraintLessThanOrEqualToAnchor:v92 constant:-46.0];
        v162 = v93;
        v94 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v162 count:1];
        v67 = v148;
        [v148 addObjectsFromArray:v94];
      }

      v2 = v143;

      v74 = v152;
      v63 = v153;
      v12 = v147;
    }

    else
    {
      [v4 addSubview:v10];
      v155 = [v10 centerYAnchor];
      v145 = [v4 centerYAnchor];
      v68 = [v155 constraintEqualToAnchor:v145];
      v161[0] = v68;
      v69 = [v10 centerXAnchor];
      v70 = [v4 centerXAnchor];
      [v69 constraintEqualToAnchor:v70];
      v72 = v71 = v12;
      v161[1] = v72;
      v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:v161 count:2];
      v67 = [v73 mutableCopy];

      v12 = v71;
      v74 = v152;
      v63 = v155;

      v37 = v157;
    }
  }

  else
  {
    v149 = v3;
    v151 = v4;
    if (v11)
    {
      v40 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleCaption1"];
      [v11 setFont:v40];

      [(_UIContextMenuLargeFloatingPaletteCellLayout *)v2 _configureSharedFloatingContentViewStyleForImageStyle:0];
      v41 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)v2 contentView];
      v42 = [v41 traitCollection];
      v43 = [v42 userInterfaceIdiom];

      v154 = _UIContextMenuGetPlatformMetrics(v43);
      [v154 paletteMinimumItemSize];
      v45 = v44;
      v47 = v46;
      v140 = [v12 topAnchor];
      v135 = [v4 topAnchor];
      v129 = [v140 constraintEqualToAnchor:v135 constant:30.0];
      v160[0] = v129;
      v123 = [v12 bottomAnchor];
      v117 = [v4 bottomAnchor];
      v113 = [v123 constraintEqualToAnchor:v117 constant:-46.0];
      v160[1] = v113;
      v110 = [v12 leadingAnchor];
      v107 = [v4 leadingAnchor];
      v48 = [v110 constraintEqualToAnchor:v107];
      v160[2] = v48;
      v49 = [v12 trailingAnchor];
      v50 = [v151 trailingAnchor];
      v51 = [v49 constraintEqualToAnchor:v50];
      v160[3] = v51;
      v52 = [v12 widthAnchor];
      v53 = [v52 constraintGreaterThanOrEqualToConstant:v45];
      v160[4] = v53;
      v54 = [v12 heightAnchor];
      v55 = [v54 constraintGreaterThanOrEqualToConstant:v47];
      v160[5] = v55;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v160 count:6];
      v56 = v144 = v2;
      [v149 addObjectsFromArray:v56];

      v57 = [v12 contentView];
      [v57 addSubview:v157];

      v141 = [v157 topAnchor];
      v136 = [v12 topAnchor];
      v130 = [v141 constraintEqualToAnchor:v136 constant:19.0];
      v159[0] = v130;
      v124 = [v157 bottomAnchor];
      v118 = [v12 bottomAnchor];
      v114 = [v124 constraintEqualToAnchor:v118 constant:-19.0];
      v159[1] = v114;
      v58 = [v157 centerXAnchor];
      v59 = [v12 centerXAnchor];
      v60 = [v58 constraintEqualToAnchor:v59];
      v159[2] = v60;
      v61 = [v157 widthAnchor];
      v62 = [v12 widthAnchor];
      v63 = v154;
      [v154 paletteItemMinimumHorizontalMargin];
      v65 = [v61 constraintLessThanOrEqualToAnchor:v62 constant:v64 * -2.0];
      v159[3] = v65;
      v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:v159 count:4];
      v67 = v149;
      [v149 addObjectsFromArray:v66];

      v37 = v157;
      v4 = v151;

      v2 = v144;
      [v157 setPreferredMaxLayoutWidth:208.0];
    }

    else
    {
      [(_UIContextMenuLargeFloatingPaletteCellLayout *)v2 _configureSharedFloatingContentViewStyleForImageStyle:0];
      v75 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)v2 contentView];
      v76 = [v75 traitCollection];
      v77 = [v76 userInterfaceIdiom];

      v156 = _UIContextMenuGetPlatformMetrics(v77);
      [v156 paletteMinimumItemSize];
      v79 = v78;
      v81 = v80;
      v146 = [v12 topAnchor];
      v142 = [v4 topAnchor];
      v137 = [v146 constraintEqualToAnchor:v142 constant:30.0];
      v158[0] = v137;
      v131 = [v12 bottomAnchor];
      v125 = [v4 bottomAnchor];
      v119 = [v131 constraintEqualToAnchor:v125 constant:-46.0];
      v158[1] = v119;
      v115 = [v12 leadingAnchor];
      v111 = [v4 leadingAnchor];
      v108 = [v115 constraintEqualToAnchor:v111];
      v158[2] = v108;
      v105 = [v12 trailingAnchor];
      v82 = [v4 trailingAnchor];
      v83 = [v105 constraintEqualToAnchor:v82];
      v158[3] = v83;
      v84 = [v12 widthAnchor];
      v85 = [v84 constraintEqualToConstant:v79];
      v158[4] = v85;
      v86 = [v12 heightAnchor];
      v87 = [v86 constraintEqualToConstant:v81];
      v158[5] = v87;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v158 count:6];
      v88 = v12;
      v90 = v89 = v2;
      v67 = v149;
      [v149 addObjectsFromArray:v90];

      v2 = v89;
      v12 = v88;

      v37 = v157;
      v63 = v156;

      v4 = v151;
    }

    v74 = 0;
  }

  [MEMORY[0x1E69977A0] activateConstraints:v67];
  [(_UIContextMenuLargeFloatingPaletteCellLayout *)v2 setManagedConstraints:v67];
}

- (void)removeConstraints
{
  v3 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self floatingContentView];
  [v3 removeFromSuperview];

  v4 = MEMORY[0x1E69977A0];
  v5 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self managedConstraints];
  [v4 deactivateConstraints:v5];

  managedConstraints = self->_managedConstraints;
  self->_managedConstraints = 0;
}

- (void)setControlState:(unint64_t)a3 withAnimationCoordinator:(id)a4
{
  v4 = a3;
  self->_controlState = a3;
  [_UIFloatingContentView setControlState:"setControlState:withAnimationCoordinator:" withAnimationCoordinator:?];
  v6 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self contentView];
  v7 = [v6 iconView];

  if (v7)
  {
    v9 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self contentView];
    v8 = [v9 titleLabel];
    [v8 setHidden:(v4 & 9) == 0];
  }
}

- (void)_configureSharedFloatingContentViewStyleForImageStyle:(BOOL)a3
{
  v5 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self floatingContentView];
  v6 = [_UIFocusAnimationConfiguration configurationWithStyle:2];
  [v5 setFocusAnimationConfiguration:v6];

  v7 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self floatingContentView];
  [v7 setCornerRadius:24.0];

  v8 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self floatingContentView];
  [v8 setRoundContentWhenDeselected:1];

  v9 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self floatingContentView];
  [v9 setClipsContentToBounds:1];

  v10 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self floatingContentView];
  [v10 setFocusedSizeIncrease:20.0];

  v11 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self floatingContentView];
  [v11 setUseShadowImage:0];

  v12 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self floatingContentView];
  [v12 setShadowRadius:10.0];

  v13 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self floatingContentView];
  [v13 setShadowVerticalOffset:15.0];

  v14 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self floatingContentView];
  [v14 setContentMotionRotation:0.0 translation:{0.0, 4.0, 4.0}];

  v15 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self floatingContentView];
  [v15 setFocusScaleAnchorPoint:{0.5, 1.0}];

  v16 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self contentView];
  v17 = [v16 traitCollection];
  v18 = [v17 userInterfaceIdiom];

  v19 = _UIContextMenuGetPlatformMetrics(v18);
  v32 = v19;
  if (a3)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
  }

  else
  {
    v24 = [v19 itemBackgroundColorProvider];
    v22 = v24[2](v24, 0, 0);

    v25 = [v32 itemBackgroundColorProvider];
    v21 = v25[2](v25, 8, 0);

    v26 = [v32 itemBackgroundColorProvider];
    v23 = v26[2](v26, 1, 0);

    v27 = [v32 itemBackgroundColorProvider];
    v20 = v27[2](v27, 4, 0);
  }

  v28 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self floatingContentView];
  [v28 setBackgroundColor:v22 forState:0];

  v29 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self floatingContentView];
  [v29 setBackgroundColor:v21 forState:8];

  v30 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self floatingContentView];
  [v30 setBackgroundColor:v23 forState:1];

  v31 = [(_UIContextMenuLargeFloatingPaletteCellLayout *)self floatingContentView];
  [v31 setBackgroundColor:v20 forState:4];
}

- (_UIContextMenuCellContentView)contentView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentView);

  return WeakRetained;
}

@end