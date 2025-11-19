@interface _UIContextMenuLargeCellLayout
- (BOOL)_hasTrailingAccessory;
- (BOOL)useContentShapeForSelectionHighlight;
- (UIShape)contentShape;
- (_UIContextMenuCellContentView)contentView;
- (_UIContextMenuLargeCellLayout)initWithContentView:(id)a3;
- (id)preferredIconFontUsingBoldFont:(BOOL)a3;
- (void)installConstraints;
- (void)removeConstraints;
- (void)updateConstraints;
@end

@implementation _UIContextMenuLargeCellLayout

- (_UIContextMenuCellContentView)contentView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentView);

  return WeakRetained;
}

- (BOOL)useContentShapeForSelectionHighlight
{
  v2 = [(_UIContextMenuLargeCellLayout *)self contentView];
  v3 = [v2 traitCollection];
  v4 = _UIContextMenuGetPlatformMetrics([v3 userInterfaceIdiom]);

  LOBYTE(v2) = [v4 largeItemUsesContentShapeForSelectionHighlight];
  return v2;
}

- (void)removeConstraints
{
  v3 = MEMORY[0x1E69977A0];
  v4 = [(_UIContextMenuLargeCellLayout *)self managedConstraints];
  [v3 deactivateConstraints:v4];

  managedConstraints = self->_managedConstraints;
  self->_managedConstraints = 0;
}

- (_UIContextMenuLargeCellLayout)initWithContentView:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIContextMenuLargeCellLayout;
  v5 = [(_UIContextMenuLargeCellLayout *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(_UIContextMenuLargeCellLayout *)v5 setContentView:v4];
    v7 = [MEMORY[0x1E695DF70] array];
    [(_UIContextMenuLargeCellLayout *)v6 setManagedConstraints:v7];
  }

  return v6;
}

- (id)preferredIconFontUsingBoldFont:(BOOL)a3
{
  v4 = [(_UIContextMenuLargeCellLayout *)self contentView];
  v5 = [v4 traitCollection];
  v6 = _UIContextMenuGetPlatformMetrics([v5 userInterfaceIdiom]);
  v7 = v6;
  if (a3)
  {
    [v6 iconEmphasizedSymbolFont];
  }

  else
  {
    [v6 iconSymbolFont];
  }
  v8 = ;
  v9 = [v8 _fontAdjustedForCurrentContentSizeCategory];

  return v9;
}

- (UIShape)contentShape
{
  v2 = [(_UIContextMenuLargeCellLayout *)self contentView];
  v3 = [v2 traitCollection];
  v4 = _UIContextMenuGetPlatformMetrics([v3 userInterfaceIdiom]);

  v5 = [v4 largeItemContentShape];

  return v5;
}

- (void)installConstraints
{
  v96[2] = *MEMORY[0x1E69E9840];
  [(_UIContextMenuLargeCellLayout *)self removeConstraints];
  v3 = [(_UIContextMenuLargeCellLayout *)self contentView];
  v4 = [v3 traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v5);

  v7 = [v3 labelStackView];
  v8 = [v3 decorationView];
  v9 = [v3 iconView];
  v10 = [v3 keyShortcutView];
  [MEMORY[0x1E695DF70] array];
  v93 = v92 = v8;
  if (v8)
  {
    v90 = v10;
    v11 = v9;
    v12 = v7;
    [v3 addSubview:v8];
    v13 = [(_UIContextMenuLargeCellLayout *)self _hasTrailingAccessory];
    v14 = [v8 centerXAnchor];
    if (v13)
    {
      [v3 trailingAnchor];
    }

    else
    {
      [v3 leadingAnchor];
    }
    v15 = ;
    v16 = [v14 constraintEqualToAnchor:v15];
    [(_UIContextMenuLargeCellLayout *)self setDecorationViewCenterX:v16];

    v17 = [(_UIContextMenuLargeCellLayout *)self decorationViewCenterX];
    v96[0] = v17;
    v18 = [v8 centerYAnchor];
    v19 = [v3 centerYAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    v96[1] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:2];
    [v93 addObjectsFromArray:v21];

    v7 = v12;
    v9 = v11;
    v10 = v90;
  }

  if (v9 == 0 || IsAccessibilityCategory)
  {
    [v9 removeFromSuperview];
    if (v10)
    {
LABEL_8:
      [v3 addSubview:v10];
      v22 = [v10 trailingAnchor];
      v23 = [v3 trailingAnchor];
      v24 = [v22 constraintEqualToAnchor:v23];
      [(_UIContextMenuLargeCellLayout *)self setKeyboardShortcutTrailingToTrailing:v24];

      v25 = [(_UIContextMenuLargeCellLayout *)self keyboardShortcutTrailingToTrailing];
      v95[0] = v25;
      v26 = [v10 centerYAnchor];
      v27 = [v3 centerYAnchor];
      v28 = [v26 constraintEqualToAnchor:v27];
      v95[1] = v28;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:2];
      [v93 addObjectsFromArray:v29];

      goto LABEL_11;
    }
  }

  else
  {
    [v3 addSubview:v9];
    v30 = [v9 centerYAnchor];
    v31 = [v3 centerYAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];
    [v93 addObject:v32];

    v33 = [v9 centerXAnchor];
    v34 = [v3 trailingAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];
    [(_UIContextMenuLargeCellLayout *)self setIconViewCenterXToTrailing:v35];

    v36 = [(_UIContextMenuLargeCellLayout *)self iconViewCenterXToTrailing];
    [v93 addObject:v36];

    if (v10)
    {
      goto LABEL_8;
    }
  }

  [0 removeFromSuperview];
LABEL_11:
  v37 = [v3 titleLabel];
  v38 = [v37 text];
  if ([v38 length])
  {
  }

  else
  {
    v39 = [v3 subtitleLabel];
    v40 = [v39 text];
    v41 = [v40 length];

    if (!v41)
    {
      v72 = [v3 traitCollection];
      v73 = [v72 userInterfaceIdiom];

      v74 = _UIContextMenuGetPlatformMetrics(v73);
      [v74 itemTopToFirstBaseline];
      v76 = v75;

      v77 = _UIContextMenuGetPlatformMetrics(v73);
      [v77 itemLastBaselineToBottom];
      v79 = v78;

      v80 = [v3 heightAnchor];
      v81 = [v80 constraintGreaterThanOrEqualToConstant:v76 + v79];
      [(_UIContextMenuLargeCellLayout *)self setMinHeightConstraint:v81];

      v66 = [(_UIContextMenuLargeCellLayout *)self minHeightConstraint];
      v71 = v93;
      [v93 addObject:v66];
      goto LABEL_20;
    }
  }

  [v3 addSubview:v7];
  v42 = [v3 traitCollection];
  v43 = _UIContextMenuGetPlatformMetrics([v42 userInterfaceIdiom]);
  [v43 menuItemInternalPadding];
  v45 = v44;
  v47 = v46;

  v48 = [v7 firstBaselineAnchor];
  v49 = [v3 topAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];
  [(_UIContextMenuLargeCellLayout *)self setTopToFirstBaseline:v50];

  v51 = [v7 lastBaselineAnchor];
  v52 = [v3 bottomAnchor];
  v53 = [v51 constraintEqualToAnchor:v52];
  [(_UIContextMenuLargeCellLayout *)self setLastBaselineToBottom:v53];

  v54 = [v7 leadingAnchor];
  v55 = [v3 leadingAnchor];
  v56 = [v54 constraintEqualToAnchor:v55 constant:v45];
  [(_UIContextMenuLargeCellLayout *)self setLeadingToLabelStackViewLeading:v56];

  v57 = [v10 superview];

  v91 = v9;
  if (v57)
  {
    v58 = [v7 trailingAnchor];
    v59 = [v10 leadingAnchor];
    v60 = [v58 constraintLessThanOrEqualToAnchor:v59];
    [(_UIContextMenuLargeCellLayout *)self setLabelStackViewTrailingToKeyboardShortcutLeading:v60];

    v61 = [(_UIContextMenuLargeCellLayout *)self labelStackViewTrailingToKeyboardShortcutLeading];
  }

  else
  {
    v62 = [v9 superview];

    if (v62)
    {
      v63 = [v7 trailingAnchor];
      v64 = [v9 centerXAnchor];
      v65 = [v63 constraintLessThanOrEqualToAnchor:v64];
      [(_UIContextMenuLargeCellLayout *)self setLabelStackViewTrailingToiconViewCenterX:v65];

      v61 = [(_UIContextMenuLargeCellLayout *)self labelStackViewTrailingToiconViewCenterX];
    }

    else
    {
      v82 = [v92 superview];
      if (!v82 || (v83 = v82, v84 = [(_UIContextMenuLargeCellLayout *)self _hasTrailingAccessory], v83, !v84))
      {
        v88 = [v7 trailingAnchor];
        v89 = [v3 trailingAnchor];
        v66 = [v88 constraintEqualToAnchor:v89 constant:-v47];

        goto LABEL_19;
      }

      v85 = [v7 trailingAnchor];
      v86 = [v92 leadingAnchor];
      v87 = [v85 constraintLessThanOrEqualToAnchor:v86];
      [(_UIContextMenuLargeCellLayout *)self setLabelStackViewTrailingToDecorationViewLeading:v87];

      v61 = [(_UIContextMenuLargeCellLayout *)self labelStackViewTrailingToDecorationViewLeading];
    }
  }

  v66 = v61;
LABEL_19:
  v67 = [(_UIContextMenuLargeCellLayout *)self topToFirstBaseline];
  v94[0] = v67;
  v68 = [(_UIContextMenuLargeCellLayout *)self lastBaselineToBottom];
  v94[1] = v68;
  v69 = [(_UIContextMenuLargeCellLayout *)self leadingToLabelStackViewLeading];
  v94[2] = v69;
  v94[3] = v66;
  v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:4];
  v71 = v93;
  [v93 addObjectsFromArray:v70];

  v9 = v91;
LABEL_20:

  [MEMORY[0x1E69977A0] activateConstraints:v71];
  [(_UIContextMenuLargeCellLayout *)self setManagedConstraints:v71];
}

- (void)updateConstraints
{
  v94 = [(_UIContextMenuLargeCellLayout *)self contentView];
  v3 = [v94 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  v5 = _UIContextMenuGetPlatformMetrics(v4);
  v6 = [v94 traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v7);

  v9 = [v94 subtitleLabel];
  v10 = [v9 text];
  v11 = [v10 length];

  v12 = [v94 traitCollection];
  v13 = _UIContextMenuGetPlatformMetrics([v12 userInterfaceIdiom]);
  v14 = [v13 titleFont];
  v15 = [v14 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v12];

  v16 = _UIContextMenuGetPlatformMetrics(v4);
  [v16 itemBaselineToBaseline];
  v18 = v17;

  [v15 _scaledValueForValue:1 useLanguageAwareScaling:v18];
  UIRoundToViewScale(v94);
  v20 = v19;
  v21 = [v94 labelStackView];
  [v21 setSpacing:v20];

  v22 = _UIContextMenuGetPlatformMetrics(v4);
  v23 = v22;
  if (v11)
  {
    [v22 itemTopToFirstBaselineWithSubtitle];
  }

  else
  {
    [v22 itemTopToFirstBaseline];
  }

  v25 = v24;

  v26 = _UIContextMenuGetPlatformMetrics(v4);
  v27 = v26;
  if (v11)
  {
    [v26 itemLastBaselineToBottomWithSubtitle];
  }

  else
  {
    [v26 itemLastBaselineToBottom];
  }

  v29 = v28;

  [v15 _scaledValueForValue:v25];
  UIRoundToViewScale(v94);
  v31 = v30;
  [v15 _scaledValueForValue:v29];
  UIRoundToViewScale(v94);
  v33 = v32;
  v34 = [(_UIContextMenuLargeCellLayout *)self topToFirstBaseline];
  [v34 setConstant:v31];

  v35 = [(_UIContextMenuLargeCellLayout *)self lastBaselineToBottom];
  [v35 setConstant:-v33];

  [v94 directionalLayoutMargins];
  v37 = v36;
  v38 = [v94 decorationView];
  if (v38)
  {
    v39 = v38;
    v40 = [(_UIContextMenuLargeCellLayout *)self _hasTrailingAccessory];

    if (!v40)
    {
      [v5 leadingDecorationViewOffset];
      [v15 _scaledValueForValue:?];
      UIRoundToViewScale(v94);
      v42 = v41;
      v43 = [(_UIContextMenuLargeCellLayout *)self decorationViewCenterX];
      [v43 setConstant:v42];
    }
  }

  v44 = [(_UIContextMenuLargeCellLayout *)self leadingToLabelStackViewLeading];
  [v44 setConstant:v37];

  v45 = [v94 keyShortcutView];

  if (v45)
  {
    v46 = _UIContextMenuGetPlatformMetrics(v4);
    [v46 minIntraItemSpacing];
    v48 = v47;

    [v94 directionalLayoutMargins];
    v50 = v49;
    v51 = [v94 iconView];
    LOBYTE(v46) = v51 == 0 || IsAccessibilityCategory;

    if ((v46 & 1) == 0)
    {
      v52 = _UIContextMenuGetPlatformMetrics(v4);
      [v52 dynamicImageBoxWidth];
      v54 = v53;

      [v15 _scaledValueForValue:v54];
      UIRoundToViewScale(v94);
      v50 = v50 + v48 + v55;
    }

    v56 = [(_UIContextMenuLargeCellLayout *)self keyboardShortcutTrailingToTrailing];
    [v56 setConstant:-v50];

    v57 = [(_UIContextMenuLargeCellLayout *)self labelStackViewTrailingToKeyboardShortcutLeading];
    [v57 setConstant:-v48];
  }

  v58 = [v94 iconView];
  v59 = v58 == 0 || IsAccessibilityCategory;

  if (!v59)
  {
    v60 = _UIContextMenuGetPlatformMetrics(v4);
    [v60 dynamicImageBoxWidth];
    v62 = v61;

    [v15 _scaledValueForValue:v62];
    UIRoundToViewScale(v94);
    v64 = v63;
    [v94 directionalLayoutMargins];
    v65 = v64 * 0.5;
    v67 = v64 * 0.5 + v66;
    v68 = _UIContextMenuGetPlatformMetrics(v4);
    [v68 minIntraItemSpacing];
    v70 = v69;

    v71 = [(_UIContextMenuLargeCellLayout *)self iconViewCenterXToTrailing];
    [v71 setConstant:-v67];

    v72 = [(_UIContextMenuLargeCellLayout *)self labelStackViewTrailingToiconViewCenterX];
    [v72 setConstant:-(v65 + v70)];
  }

  v73 = [v94 decorationView];
  if (v73)
  {
    v74 = v73;
    v75 = [(_UIContextMenuLargeCellLayout *)self _hasTrailingAccessory];

    if (v75)
    {
      [v5 trailingDecorationViewOffset];
      [v15 _scaledValueForValue:?];
      v76 = _UIContextMenuGetPlatformMetrics(v4);
      [v76 menuItemInternalPadding];

      _UIContextMenuGutterWidth(v4);
      UIRoundToViewScale(v94);
      v78 = -v77;
      v79 = [(_UIContextMenuLargeCellLayout *)self decorationViewCenterX];
      [v79 setConstant:v78];

      v80 = [(_UIContextMenuLargeCellLayout *)self labelStackViewTrailingToDecorationViewLeading];

      if (v80)
      {
        v81 = _UIContextMenuGetPlatformMetrics(v4);
        [v81 minIntraItemSpacing];
        v83 = v82;

        v84 = [(_UIContextMenuLargeCellLayout *)self labelStackViewTrailingToDecorationViewLeading];
        [v84 setConstant:-v83];
      }
    }
  }

  v85 = _UIContextMenuGetPlatformMetrics(v4);
  [v85 itemTopToFirstBaseline];
  v87 = v86;

  v88 = _UIContextMenuGetPlatformMetrics(v4);
  [v88 itemLastBaselineToBottom];
  v90 = v89;

  [v15 _scaledValueForValue:v87 + v90];
  UIRoundToViewScale(v94);
  v92 = v91;
  v93 = [(_UIContextMenuLargeCellLayout *)self minHeightConstraint];
  [v93 setConstant:v92];
}

- (BOOL)_hasTrailingAccessory
{
  v2 = [(_UIContextMenuLargeCellLayout *)self contentView];
  v3 = ~[v2 options];

  return (v3 & 0x30) == 0;
}

@end