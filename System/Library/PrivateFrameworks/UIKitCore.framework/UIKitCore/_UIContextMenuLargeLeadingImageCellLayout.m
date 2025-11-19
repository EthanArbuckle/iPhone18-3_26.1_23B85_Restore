@interface _UIContextMenuLargeLeadingImageCellLayout
- (void)installConstraints;
- (void)updateConstraints;
@end

@implementation _UIContextMenuLargeLeadingImageCellLayout

- (void)installConstraints
{
  v93[2] = *MEMORY[0x1E69E9840];
  [(_UIContextMenuLargeCellLayout *)self removeConstraints];
  v3 = [(_UIContextMenuLargeCellLayout *)self contentView];
  v4 = [v3 traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v5);

  v6 = [v3 labelStackView];
  v7 = [v3 decorationView];
  v8 = [v3 iconView];
  v9 = [v3 keyShortcutView];
  v10 = [v3 traitCollection];
  v11 = _UIContextMenuGetPlatformMetrics([v10 userInterfaceIdiom]);
  [v11 menuItemInternalPadding];
  v13 = v12;
  v15 = v14;

  [MEMORY[0x1E695DF70] array];
  v90 = v89 = v7;
  v88 = v9;
  if (v7)
  {
    v16 = v6;
    [v3 addSubview:v89];
    v17 = [(_UIContextMenuLargeCellLayout *)self _hasTrailingAccessory];
    v18 = [v89 centerXAnchor];
    v19 = v8;
    if (v17)
    {
      [v3 trailingAnchor];
    }

    else
    {
      [v3 leadingAnchor];
    }
    v20 = ;
    v21 = [v18 constraintEqualToAnchor:v20];
    [(_UIContextMenuLargeCellLayout *)self setDecorationViewCenterX:v21];

    v22 = [(_UIContextMenuLargeCellLayout *)self decorationViewCenterX];
    v93[0] = v22;
    v23 = [v89 centerYAnchor];
    v24 = [v3 centerYAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    v93[1] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:2];
    [v90 addObjectsFromArray:v26];

    v6 = v16;
    v8 = v19;
    v9 = v88;
  }

  v27 = -v15;
  if (v9)
  {
    [v3 addSubview:v9];
    [v9 trailingAnchor];
    v28 = v86 = v6;
    [v3 trailingAnchor];
    v30 = v29 = v8;
    v31 = [v28 constraintEqualToAnchor:v30 constant:v27];
    v92[0] = v31;
    v32 = [v9 centerYAnchor];
    v33 = [v3 centerYAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];
    v92[1] = v34;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:2];
    [v90 addObjectsFromArray:v35];

    v8 = v29;
    v6 = v86;
  }

  if (v8 == 0 || IsAccessibilityCategory)
  {
    [v8 removeFromSuperview];
  }

  else
  {
    [v3 addSubview:v8];
    v36 = [v8 centerYAnchor];
    v37 = [v3 centerYAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];
    [v90 addObject:v38];

    v39 = [v8 centerXAnchor];
    v40 = [v3 leadingAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];
    [(_UIContextMenuLargeLeadingImageCellLayout *)self setLeadingToIconViewCenterX:v41];

    v42 = [(_UIContextMenuLargeLeadingImageCellLayout *)self leadingToIconViewCenterX];
    [v90 addObject:v42];
  }

  v43 = [v3 titleLabel];
  v44 = [v43 text];
  if ([v44 length])
  {
  }

  else
  {
    v45 = [v3 subtitleLabel];
    v46 = [v45 text];
    v47 = [v46 length];

    if (!v47)
    {
      v76 = [v3 traitCollection];
      v77 = [v76 userInterfaceIdiom];

      v78 = _UIContextMenuGetPlatformMetrics(v77);
      [v78 itemTopToFirstBaseline];
      v80 = v79;

      v81 = _UIContextMenuGetPlatformMetrics(v77);
      [v81 itemLastBaselineToBottom];
      v83 = v82;

      v84 = [v3 heightAnchor];
      v85 = [v84 constraintGreaterThanOrEqualToConstant:v80 + v83];
      [(_UIContextMenuLargeCellLayout *)self setMinHeightConstraint:v85];

      v62 = [(_UIContextMenuLargeCellLayout *)self minHeightConstraint];
      v75 = v90;
      [v90 addObject:v62];
      goto LABEL_22;
    }
  }

  [v3 addSubview:v6];
  v48 = [v6 firstBaselineAnchor];
  v49 = [v3 topAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];
  [(_UIContextMenuLargeCellLayout *)self setTopToFirstBaseline:v50];

  v51 = [v6 lastBaselineAnchor];
  v52 = [v3 bottomAnchor];
  v53 = [v51 constraintEqualToAnchor:v52];
  [(_UIContextMenuLargeCellLayout *)self setLastBaselineToBottom:v53];

  v54 = [v6 leadingAnchor];
  v55 = [v3 leadingAnchor];
  v56 = [v54 constraintEqualToAnchor:v55 constant:v13];
  [(_UIContextMenuLargeCellLayout *)self setLeadingToLabelStackViewLeading:v56];

  v57 = [v88 superview];

  if (v57)
  {
    v58 = [v6 trailingAnchor];
    v59 = [v88 leadingAnchor];
    v60 = [v58 constraintLessThanOrEqualToAnchor:v59 constant:v27];
    [(_UIContextMenuLargeCellLayout *)self setLabelStackViewTrailingToKeyboardShortcutLeading:v60];

    v61 = [(_UIContextMenuLargeCellLayout *)self labelStackViewTrailingToKeyboardShortcutLeading];
  }

  else
  {
    v63 = [v89 superview];
    if (!v63 || (v64 = v63, v65 = [(_UIContextMenuLargeCellLayout *)self _hasTrailingAccessory], v64, !v65))
    {
      v69 = [v6 trailingAnchor];
      v70 = [v3 trailingAnchor];
      v62 = [v69 constraintEqualToAnchor:v70 constant:v27];

      goto LABEL_21;
    }

    v66 = [v6 trailingAnchor];
    v67 = [v89 leadingAnchor];
    v68 = [v66 constraintLessThanOrEqualToAnchor:v67];
    [(_UIContextMenuLargeCellLayout *)self setLabelStackViewTrailingToDecorationViewLeading:v68];

    v61 = [(_UIContextMenuLargeCellLayout *)self labelStackViewTrailingToDecorationViewLeading];
  }

  v62 = v61;
LABEL_21:
  v71 = [(_UIContextMenuLargeCellLayout *)self topToFirstBaseline];
  v91[0] = v71;
  v72 = [(_UIContextMenuLargeCellLayout *)self lastBaselineToBottom];
  v91[1] = v72;
  v73 = [(_UIContextMenuLargeCellLayout *)self leadingToLabelStackViewLeading];
  v91[2] = v73;
  v91[3] = v62;
  v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:4];
  v75 = v90;
  [v90 addObjectsFromArray:v74];

LABEL_22:
  [MEMORY[0x1E69977A0] activateConstraints:v75];
  [(_UIContextMenuLargeCellLayout *)self setManagedConstraints:v75];
}

- (void)updateConstraints
{
  v88 = [(_UIContextMenuLargeCellLayout *)self contentView];
  v3 = [v88 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  v5 = _UIContextMenuGetPlatformMetrics(v4);
  v6 = [v88 traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v7);

  v9 = [v88 subtitleLabel];
  v10 = [v9 text];
  v11 = [v10 length];

  v12 = [v88 traitCollection];
  v13 = _UIContextMenuGetPlatformMetrics([v12 userInterfaceIdiom]);
  v14 = [v13 titleFont];
  v15 = [v14 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v12];

  v16 = _UIContextMenuGetPlatformMetrics(v4);
  [v16 itemBaselineToBaseline];
  v18 = v17;

  [v15 _scaledValueForValue:1 useLanguageAwareScaling:v18];
  UIRoundToViewScale(v88);
  v20 = v19;
  v21 = [v88 labelStackView];
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
  UIRoundToViewScale(v88);
  v31 = v30;
  [v15 _scaledValueForValue:v29];
  UIRoundToViewScale(v88);
  v33 = v32;
  v34 = [(_UIContextMenuLargeCellLayout *)self topToFirstBaseline];
  [v34 setConstant:v31];

  v35 = [(_UIContextMenuLargeCellLayout *)self lastBaselineToBottom];
  [v35 setConstant:-v33];

  [v88 directionalLayoutMargins];
  v37 = v36;
  v38 = [v88 decorationView];
  if (v38)
  {
    v39 = v38;
    v40 = [(_UIContextMenuLargeCellLayout *)self _hasTrailingAccessory];

    if (!v40)
    {
      [v5 leadingDecorationViewOffset];
      [v15 _scaledValueForValue:?];
      UIRoundToViewScale(v88);
      v42 = v41;
      v43 = [(_UIContextMenuLargeCellLayout *)self decorationViewCenterX];
      [v43 setConstant:v42];
    }
  }

  v44 = [v88 options];
  v45 = [v88 iconView];
  if (v45 || (v44 & 0x100) != 0)
  {

    if (!IsAccessibilityCategory)
    {
      v46 = _UIContextMenuGetPlatformMetrics(v4);
      [v46 dynamicImageBoxWidth];
      v48 = v47;

      [v15 _scaledValueForValue:v48];
      UIRoundToViewScale(v88);
      v50 = v49;
      v51 = _UIContextMenuGetPlatformMetrics(v4);
      [v51 minIntraItemSpacing];
      v53 = v52;

      [v5 leadingImageOffset];
      v55 = v54;
      v56 = v37 + v50 * 0.5 + v54;
      v57 = [(_UIContextMenuLargeLeadingImageCellLayout *)self leadingToIconViewCenterX];
      [v57 setConstant:v56];

      v37 = v50 + v37 + v53 + v55;
    }
  }

  v58 = [(_UIContextMenuLargeCellLayout *)self leadingToLabelStackViewLeading];
  [v58 setConstant:v37];

  v59 = [v88 keyShortcutView];
  if (v59)
  {
    v60 = v59;
    v61 = [(_UIContextMenuLargeCellLayout *)self labelStackViewTrailingToKeyboardShortcutLeading];

    if (v61)
    {
      v62 = _UIContextMenuGetPlatformMetrics(v4);
      [v62 minIntraItemSpacing];
      v64 = v63;

      v65 = -v64;
      v66 = [(_UIContextMenuLargeCellLayout *)self labelStackViewTrailingToKeyboardShortcutLeading];
LABEL_21:
      v78 = v66;
      [v66 setConstant:v65];

      goto LABEL_22;
    }
  }

  v67 = [v88 decorationView];
  if (v67)
  {
    v68 = v67;
    v69 = [(_UIContextMenuLargeCellLayout *)self _hasTrailingAccessory];

    if (v69)
    {
      [v5 trailingDecorationViewOffset];
      [v15 _scaledValueForValue:?];
      v70 = _UIContextMenuGetPlatformMetrics(v4);
      [v70 menuItemInternalPadding];

      _UIContextMenuGutterWidth(v4);
      UIRoundToViewScale(v88);
      v72 = -v71;
      v73 = [(_UIContextMenuLargeCellLayout *)self decorationViewCenterX];
      [v73 setConstant:v72];

      v74 = [(_UIContextMenuLargeCellLayout *)self labelStackViewTrailingToDecorationViewLeading];

      if (v74)
      {
        v75 = _UIContextMenuGetPlatformMetrics(v4);
        [v75 minIntraItemSpacing];
        v77 = v76;

        v65 = -v77;
        v66 = [(_UIContextMenuLargeCellLayout *)self labelStackViewTrailingToDecorationViewLeading];
        goto LABEL_21;
      }
    }
  }

LABEL_22:
  v79 = _UIContextMenuGetPlatformMetrics(v4);
  [v79 itemTopToFirstBaseline];
  v81 = v80;

  v82 = _UIContextMenuGetPlatformMetrics(v4);
  [v82 itemLastBaselineToBottom];
  v84 = v83;

  [v15 _scaledValueForValue:v81 + v84];
  UIRoundToViewScale(v88);
  v86 = v85;
  v87 = [(_UIContextMenuLargeCellLayout *)self minHeightConstraint];
  [v87 setConstant:v86];
}

@end