@interface _UIStatusBarVisualProvider_FixedSplit
- (BOOL)_updateLowerRegionsWithData:(id)a3;
- (CGRect)notchRect;
- (CGSize)expandedPillSize;
- (CGSize)notchSize;
- (CGSize)pillSize;
- (CGSize)smallPillSize;
- (NSDirectionalEdgeInsets)_edgeInsetsFromCenteringEdgeInset:(double)a3 trailing:(BOOL)a4;
- (NSDirectionalEdgeInsets)expandedEdgeInsets;
- (NSDirectionalEdgeInsets)leadingEdgeInsets;
- (NSDirectionalEdgeInsets)trailingEdgeInsets;
- (UIFont)pillFont;
- (UIFont)pillSmallFont;
- (double)bottomLeadingWidth;
- (double)leadingCenteringEdgeInset;
- (double)leadingPillInset;
- (double)leadingPillSpacing;
- (double)nativeDisplayWidth;
- (double)pillCenteringEdgeInset;
- (double)referenceWidth;
- (double)trailingCenteringEdgeInset;
- (id)_orderedDisplayItemPlacements;
- (id)animationForBackgroundActivityPillAnimation:(id)a3 duration:(double)a4 scale:(double)a5;
- (id)expandedPillFont;
- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)a3;
- (id)overriddenStyleAttributesForDisplayItemWithIdentifier:(id)a3;
- (id)region:(id)a3 willSetDisplayItems:(id)a4;
- (id)regionIdentifiersForPartWithIdentifier:(id)a3;
- (id)setupInContainerView:(id)a3;
- (id)styleAttributesForStyle:(int64_t)a3;
- (void)_updateSystemNavigationWithData:(id)a3;
- (void)dataUpdated:(id)a3;
- (void)itemCreated:(id)a3;
- (void)orientationUpdatedFromOrientation:(int64_t)a3;
@end

@implementation _UIStatusBarVisualProvider_FixedSplit

- (double)nativeDisplayWidth
{
  v2 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  v3 = [v2 _effectiveTargetScreen];
  [v3 nativeBounds];
  v5 = v4;

  return v5;
}

- (double)referenceWidth
{
  v2 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  v3 = [v2 _effectiveTargetScreen];

  [v3 nativeBounds];
  v5 = v4;
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    [objc_opt_class() referenceScreenScale];
  }

  else
  {
    [v3 _scale];
  }

  v7 = v5 / v6;

  return v7;
}

- (double)leadingPillSpacing
{
  [(_UIStatusBarVisualProvider_FixedSplit *)self leadingPillInset];
  v4 = v3 / 3.0;
  v5 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  v6 = [v5 _effectiveTargetScreen];
  [v6 _scale];
  UIRoundToScale(v4, v7);
  v9 = v8;

  return v9;
}

- (double)leadingPillInset
{
  [(_UIStatusBarVisualProvider_FixedSplit *)self pillSize];
  v4 = v3 * 0.25;
  v5 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  v6 = [v5 _effectiveTargetScreen];
  [v6 _scale];
  UIRoundToScale(v4, v7);
  v9 = v8;

  return v9;
}

- (double)leadingCenteringEdgeInset
{
  [(_UIStatusBarVisualProvider_FixedSplit *)self notchRect];
  v4 = v3 * 0.5;
  [(_UIStatusBarVisualProvider_Split *)self cornerRadius];
  v6 = v5 * 0.15 + v4;
  v7 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  v8 = [v7 _effectiveTargetScreen];
  [v8 _scale];
  UIRoundToScale(v6, v9);
  v11 = v10;
  [objc_opt_class() leadingCenteringOffset];
  v13 = v11 + v12;

  return v13;
}

- (double)trailingCenteringEdgeInset
{
  [(_UIStatusBarVisualProvider_FixedSplit *)self leadingCenteringEdgeInset];
  v3 = v2;
  [objc_opt_class() trailingCenteringOffset];
  return v3 + v4;
}

- (double)pillCenteringEdgeInset
{
  [(_UIStatusBarVisualProvider_FixedSplit *)self leadingCenteringEdgeInset];
  v3 = v2;
  [objc_opt_class() pillCenteringOffset];
  return v3 + v4;
}

- (CGSize)pillSize
{
  v2 = 64.6666667;
  v3 = 23.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)smallPillSize
{
  v2 = 19.6666667;
  v3 = 19.6666667;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)expandedPillSize
{
  v2 = 50.0;
  v3 = 18.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (UIFont)pillFont
{
  v2 = _AXSEnhanceTextLegibilityEnabled() != 0;
  v3 = unk_1ED491D68;
  if (unk_1ED491D68)
  {
    v4 = byte_1ED491D2E == v2;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    byte_1ED491D2E = v2;
    [objc_opt_class() pillFontSize];
    v5 = [off_1E70ECC18 systemFontOfSize:? weight:?];
    v6 = unk_1ED491D68;
    unk_1ED491D68 = v5;

    v3 = unk_1ED491D68;
  }

  return v3;
}

- (UIFont)pillSmallFont
{
  v2 = _AXSEnhanceTextLegibilityEnabled() != 0;
  v3 = unk_1ED491D70;
  if (unk_1ED491D70)
  {
    v4 = byte_1ED491D2F == v2;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    byte_1ED491D2F = v2;
    [objc_opt_class() pillFontSize];
    v5 = [off_1E70ECC18 systemFontOfSize:? weight:?];
    v6 = unk_1ED491D70;
    unk_1ED491D70 = v5;

    v3 = unk_1ED491D70;
  }

  return v3;
}

- (id)expandedPillFont
{
  v2 = _AXSEnhanceTextLegibilityEnabled() != 0;
  v3 = qword_1ED491D78;
  if (qword_1ED491D78)
  {
    v4 = byte_1ED491D30 == v2;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    byte_1ED491D30 = v2;
    [objc_opt_class() expandedPillFontSize];
    v5 = [off_1E70ECC18 systemFontOfSize:? weight:?];
    v6 = qword_1ED491D78;
    qword_1ED491D78 = v5;

    v3 = qword_1ED491D78;
  }

  return v3;
}

- (double)bottomLeadingWidth
{
  [(_UIStatusBarVisualProvider_FixedSplit *)self notchRect];
  v3 = floor(v2);
  [objc_opt_class() additionalBottomLeadingMargin];
  return v3 - v4;
}

- (NSDirectionalEdgeInsets)_edgeInsetsFromCenteringEdgeInset:(double)a3 trailing:(BOOL)a4
{
  v4 = a4;
  v7 = [(_UIStatusBarVisualProvider_Split *)self normalIconSize];
  [_UIStatusBarBatteryView _statusBarIntrinsicContentSizeForIconSize:v7];
  v9 = v8;
  [_UIStatusBarCellularSignalView _intrinsicContentSizeForNumberOfBars:4 iconSize:v7];
  v11 = v9 + v10;
  [_UIStatusBarWifiSignalView _intrinsicContentSizeForNumberOfBars:3 iconSize:v7];
  v13 = v11 + v12;
  [(_UIStatusBarVisualProvider_Split *)self itemSpacing];
  v15 = v13 + v14 + v14;
  v16 = a3 - v15 * 0.5;
  [(_UIStatusBarVisualProvider_FixedSplit *)self referenceWidth];
  v18 = v17;
  [(_UIStatusBarVisualProvider_FixedSplit *)self notchSize];
  v20 = (v18 - v19) * 0.5 - (v15 + v16);
  [(_UIStatusBarVisualProvider_Split *)self baselineBottomInset];
  v22 = v21;
  if (v4)
  {
    v23 = v20;
  }

  else
  {
    v23 = v16;
  }

  if (v4)
  {
    v24 = v16;
  }

  else
  {
    v24 = v20;
  }

  v25 = 14.6666667;
  result.trailing = v24;
  result.bottom = v22;
  result.leading = v23;
  result.top = v25;
  return result;
}

- (NSDirectionalEdgeInsets)leadingEdgeInsets
{
  [(_UIStatusBarVisualProvider_FixedSplit *)self leadingCenteringEdgeInset];

  [(_UIStatusBarVisualProvider_FixedSplit *)self _edgeInsetsFromCenteringEdgeInset:0 trailing:?];
  result.trailing = v6;
  result.bottom = v5;
  result.leading = v4;
  result.top = v3;
  return result;
}

- (NSDirectionalEdgeInsets)trailingEdgeInsets
{
  [(_UIStatusBarVisualProvider_FixedSplit *)self trailingCenteringEdgeInset];
  [(_UIStatusBarVisualProvider_FixedSplit *)self _edgeInsetsFromCenteringEdgeInset:1 trailing:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [objc_opt_class() trailingEdgeInsetLeadingAdjustment];
  v12 = v6 - v11;
  v13 = v4;
  v14 = v8;
  v15 = v10;
  result.trailing = v15;
  result.bottom = v14;
  result.leading = v12;
  result.top = v13;
  return result;
}

- (NSDirectionalEdgeInsets)expandedEdgeInsets
{
  [(_UIStatusBarVisualProvider_FixedSplit *)self leadingEdgeInsets];
  v3 = v2;
  v5 = v4;
  [objc_opt_class() expandedEdgeInset];
  v7 = v6;
  [objc_opt_class() trailingCenteringOffset];
  v9 = v7 + v8;
  [objc_opt_class() expandedEdgeInset];
  v11 = v10;
  v12 = v3;
  v13 = v9;
  v14 = v5;
  result.trailing = v11;
  result.bottom = v14;
  result.leading = v13;
  result.top = v12;
  return result;
}

- (CGRect)notchRect
{
  v2 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  v3 = [v2 _effectiveTargetScreen];

  v4 = [v3 _exclusionArea];
  [v4 rect];
  v6 = v5;
  [v3 _nativeScale];
  v8 = v7 * v6;
  [v3 _scale];
  v10 = v8 / v9;
  [v4 rect];
  v12 = v11;
  [v3 _nativeScale];
  v14 = v13 * v12;
  [v3 _scale];
  v16 = v14 / v15;
  [v4 rect];
  v18 = v17;
  [v3 _nativeScale];
  v20 = v19 * v18;
  [v3 _scale];
  v22 = v20 / v21;
  [v4 rect];
  v24 = v23;
  [v3 _nativeScale];
  v26 = v25 * v24;
  [v3 _scale];
  v28 = v26 / v27;

  v29 = v10;
  v30 = v16;
  v31 = v22;
  v32 = v28;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (CGSize)notchSize
{
  [(_UIStatusBarVisualProvider_FixedSplit *)self notchRect];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (id)setupInContainerView:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = [v4 array];
  v238 = [MEMORY[0x1E695DF70] array];
  [objc_opt_class() height];
  v236 = v7;
  [(_UIStatusBarVisualProvider_FixedSplit *)self referenceWidth];
  v9 = v8;
  [(_UIStatusBarVisualProvider_FixedSplit *)self notchSize];
  v11 = v10;
  v13 = v12;
  v14 = (v9 - v10) * 0.5;
  [(_UIStatusBarVisualProvider_Split *)self itemSpacing];
  v235 = v15;
  [(_UIStatusBarVisualProvider_iOS *)self expandedItemSpacing];
  [(_UIStatusBarVisualProvider_FixedSplit *)self leadingItemSpacing];
  v224 = v16;
  [(_UIStatusBarVisualProvider_FixedSplit *)self leadingPillSpacing];
  v228 = v17;
  [(_UIStatusBarVisualProvider_FixedSplit *)self leadingPillInset];
  v229 = v18;
  [(_UIStatusBarVisualProvider_FixedSplit *)self pillCenteringEdgeInset];
  v225 = v19;
  [(_UIStatusBarVisualProvider_FixedSplit *)self pillSize];
  v226 = v20;
  v227 = v21;
  [(_UIStatusBarVisualProvider_FixedSplit *)self leadingEdgeInsets];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  [(_UIStatusBarVisualProvider_FixedSplit *)self trailingEdgeInsets];
  v230 = v30;
  v231 = v31;
  v232 = v33;
  v234 = v32;
  [(_UIStatusBarVisualProvider_FixedSplit *)self expandedEdgeInsets];
  v34 = [(_UIStatusBarVisualProvider_Split *)self expandedFont];
  [v34 capHeight];

  v35 = objc_alloc_init(UILayoutGuide);
  [(UILayoutGuide *)v35 setIdentifier:@"cutout"];
  v36 = [(UILayoutGuide *)v35 topAnchor];
  v37 = [v5 topAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];
  [v6 addObject:v38];

  v39 = [v5 trailingAnchor];
  v40 = [(UILayoutGuide *)v35 trailingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:v14];
  [v6 addObject:v41];

  v42 = [(UILayoutGuide *)v35 widthAnchor];
  v43 = [v42 constraintEqualToConstant:v11];
  [v6 addObject:v43];

  v44 = [(UILayoutGuide *)v35 heightAnchor];
  v45 = [v44 constraintEqualToConstant:v13];
  [v6 addObject:v45];

  [v5 addLayoutGuide:v35];
  [(_UIStatusBarVisualProvider_Split *)self setCutoutLayoutGuide:v35];

  v46 = objc_alloc_init(UILayoutGuide);
  [(UILayoutGuide *)v46 setIdentifier:@"UIStatusBarMainRegions"];
  v47 = [(UILayoutGuide *)v46 trailingAnchor];
  v239 = v5;
  v48 = [v5 trailingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];
  [v6 addObject:v49];

  v50 = [(UILayoutGuide *)v46 widthAnchor];
  v51 = [v50 constraintEqualToConstant:v9];
  [v6 addObject:v51];

  v52 = [(UILayoutGuide *)v46 heightAnchor];
  v53 = [v52 constraintEqualToConstant:v13];
  [v6 addObject:v53];

  v54 = [(UILayoutGuide *)v46 bottomAnchor];
  v55 = [(_UIStatusBarVisualProvider_Split *)self cutoutLayoutGuide];
  v56 = [v55 bottomAnchor];
  v57 = [v54 constraintEqualToAnchor:v56];
  [v6 addObject:v57];

  [v5 addLayoutGuide:v46];
  [(_UIStatusBarVisualProvider_Split *)self setMainRegionsLayoutGuide:v46];

  v58 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"leading"];
  v59 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v60 = objc_alloc_init(_UIStatusBarRegionAxisCenteringLayout);
  [(_UIStatusBarRegionAxisCenteringLayout *)v60 setInterspace:v224];
  [(_UIStatusBarRegionAxisCenteringLayout *)v60 setMaxNumberOfItems:3];
  [(_UIStatusBarRegionAxesLayout *)v59 setHorizontalLayout:v60];

  v61 = [_UIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:5];
  [(_UIStatusBarRegionAxesLayout *)v59 setVerticalLayout:v61];

  [(_UIStatusBarRegion *)v58 setLayout:v59];
  [(_UIStatusBarRegion *)v58 setActionInsets:-v23, -v25, -(v236 + v27 - v13), -v29];
  v62 = [(_UIStatusBarRegion *)v58 layoutItem];
  v63 = [v62 topAnchor];
  v64 = [(_UIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  v65 = [v64 topAnchor];
  v66 = [v63 constraintEqualToAnchor:v65 constant:v23];
  [v6 addObject:v66];

  v67 = [v62 bottomAnchor];
  v68 = [(_UIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  v69 = [v68 bottomAnchor];
  v70 = [v67 constraintEqualToAnchor:v69 constant:-v27];
  leadingBottomConstraint = self->_leadingBottomConstraint;
  self->_leadingBottomConstraint = v70;

  [v6 addObject:self->_leadingBottomConstraint];
  v72 = [v62 leadingAnchor];
  v73 = [(_UIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  v74 = [v73 leadingAnchor];
  v75 = [v72 constraintEqualToAnchor:v74 constant:v25];
  [v6 addObject:v75];

  v76 = [v62 widthAnchor];
  v77 = [v76 constraintEqualToConstant:v14 - (v25 + v29)];
  [v6 addObject:v77];

  v237 = v62;
  [v239 _ui_addSubLayoutItem:v62];

  [v238 addObject:v58];
  v78 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"pill"];
  v79 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v80 = +[_UIStatusBarRegionAxisFillingLayout fillingLayout];
  [(_UIStatusBarRegionAxesLayout *)v79 setHorizontalLayout:v80];

  v81 = +[_UIStatusBarRegionAxisFillingLayout fillingLayout];
  [(_UIStatusBarRegionAxesLayout *)v79 setVerticalLayout:v81];

  [(_UIStatusBarRegion *)v78 setLayout:v79];
  [(_UIStatusBarRegion *)v78 setActionInsets:-100.0, -20.0, -10.0, -20.0];
  v82 = [(_UIStatusBarRegion *)v78 layoutItem];
  v83 = [v82 bottomAnchor];
  v84 = [(_UIStatusBarVisualProvider_Split *)self cutoutLayoutGuide];
  v85 = [v84 bottomAnchor];
  v86 = [v83 constraintEqualToAnchor:v85];
  [v6 addObject:v86];

  v87 = [(_UIStatusBarRegion *)v78 layoutItem];
  v88 = [v87 centerXAnchor];
  v89 = [v239 leadingAnchor];
  v90 = [v88 constraintEqualToAnchor:v89 constant:v225];
  [v6 addObject:v90];

  v91 = [(_UIStatusBarRegion *)v78 layoutItem];
  v92 = [v91 widthAnchor];
  v93 = [v92 constraintEqualToConstant:v226];
  [v6 addObject:v93];

  v94 = [(_UIStatusBarRegion *)v78 layoutItem];
  v95 = [v94 heightAnchor];
  v96 = [v95 constraintEqualToConstant:v227];
  [v6 addObject:v96];

  v97 = [(_UIStatusBarRegion *)v78 layoutItem];
  [v239 _ui_addSubLayoutItem:v97];

  [v238 addObject:v78];
  v98 = [v238 lastObject];
  v99 = [(_UIStatusBarVisualProvider_Phone *)self pillRegionCoordinator];
  [v99 setPillRegion:v98];

  v100 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"pillContent"];
  v101 = [(_UIStatusBarVisualProvider_Phone *)self pillRegionCoordinator];
  v102 = [v101 pillRegion];
  [(_UIStatusBarRegion *)v100 setEnabilityRegion:v102];

  v103 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v104 = objc_alloc_init(_UIStatusBarRegionAxisCenteringLayout);
  [(_UIStatusBarRegionAxisCenteringLayout *)v104 setInterspace:v228];
  [(_UIStatusBarRegionAxisCenteringLayout *)v104 setMaxNumberOfItems:2];
  [(_UIStatusBarRegionAxesLayout *)v103 setHorizontalLayout:v104];

  v105 = [_UIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:1];
  [(_UIStatusBarRegionAxesLayout *)v103 setVerticalLayout:v105];

  [(_UIStatusBarRegion *)v100 setLayout:v103];
  v106 = +[_UIStatusBarStyleAttributes overriddenStyleAttributes];
  v107 = +[UIColor whiteColor];
  [v106 setTextColor:v107];

  v108 = +[UIColor whiteColor];
  [v106 setImageTintColor:v108];

  v109 = [UIColor colorWithWhite:1.0 alpha:0.3];
  [v106 setImageDimmedTintColor:v109];

  v110 = [(_UIStatusBarVisualProvider_FixedSplit *)self pillFont];
  [v106 setFont:v110];

  v111 = [(_UIStatusBarVisualProvider_FixedSplit *)self pillSmallFont];
  [v106 setSmallFont:v111];

  v112 = [(_UIStatusBarVisualProvider_FixedSplit *)self pillFont];
  [v106 setEmphasizedFont:v112];

  [v106 setSymbolScale:2];
  [(_UIStatusBarRegion *)v100 setOverriddenStyleAttributes:v106];
  v113 = [(_UIStatusBarVisualProvider_Phone *)self pillRegionCoordinator];
  v114 = [v113 pillRegion];
  v115 = [v114 layoutItem];

  v116 = [(_UIStatusBarRegion *)v100 layoutItem];
  v117 = [v116 topAnchor];
  v118 = [v115 topAnchor];
  v119 = [v117 constraintEqualToAnchor:v118];
  [v6 addObject:v119];

  v120 = [(_UIStatusBarRegion *)v100 layoutItem];
  v121 = [v120 bottomAnchor];
  v122 = [v115 bottomAnchor];
  v123 = [v121 constraintEqualToAnchor:v122];
  [v6 addObject:v123];

  v124 = [(_UIStatusBarRegion *)v100 layoutItem];
  v125 = [v124 leadingAnchor];
  v126 = [v115 leadingAnchor];
  v127 = [v125 constraintEqualToAnchor:v126 constant:v229];
  [v6 addObject:v127];

  v128 = [(_UIStatusBarRegion *)v100 layoutItem];
  v129 = [v128 trailingAnchor];
  v130 = [v115 trailingAnchor];
  v131 = [v129 constraintEqualToAnchor:v130 constant:-v229];
  [v6 addObject:v131];

  v132 = [(_UIStatusBarRegion *)v100 layoutItem];
  [v239 _ui_addSubLayoutItem:v132];

  [v238 addObject:v100];
  v133 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"trailing"];
  v134 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v135 = [_UIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:5];
  [(_UIStatusBarRegionAxesLayout *)v134 setVerticalLayout:v135];

  [(_UIStatusBarRegion *)v133 setLayout:v134];
  [(_UIStatusBarRegion *)v133 setActionInsets:-100.0, -20.0, -10.0, -20.0];
  v136 = [(_UIStatusBarRegion *)v133 layoutItem];
  v137 = +[_UIStatusBarStyleAttributes overriddenStyleAttributes];
  v138 = [(_UIStatusBarVisualProvider_Split *)self emphasizedFont];
  [v137 setFont:v138];

  v139 = [(_UIStatusBarVisualProvider_Split *)self normalFont];
  [v137 setSmallFont:v139];

  [v137 setImageNamePrefixes:&unk_1EFE2D780];
  [(_UIStatusBarRegion *)v133 setOverriddenStyleAttributes:v137];
  v140 = [v136 topAnchor];
  v141 = [(_UIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  v142 = [v141 topAnchor];
  v143 = [v140 constraintEqualToAnchor:v142 constant:v230];
  [v6 addObject:v143];

  v144 = [v136 bottomAnchor];
  v145 = [(_UIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  v146 = [v145 bottomAnchor];
  v147 = [v144 constraintEqualToAnchor:v146 constant:-v231];
  [v6 addObject:v147];

  v148 = [v136 trailingAnchor];
  v149 = [(_UIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  v150 = [v149 trailingAnchor];
  v151 = [v148 constraintEqualToAnchor:v150 constant:-v232];
  [v6 addObject:v151];

  v152 = [v136 widthAnchor];
  v153 = [v152 constraintEqualToConstant:v14 - (v234 + v232)];
  [v6 addObject:v153];

  [v239 _ui_addSubLayoutItem:v136];
  [v238 addObject:v133];

  v154 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"systemUpdates"];
  v155 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v156 = objc_alloc_init(_UIStatusBarRegionAxisCenteringLayout);
  [(_UIStatusBarRegionAxisCenteringLayout *)v156 setMaxNumberOfItems:3];
  [(_UIStatusBarRegionAxesLayout *)v155 setHorizontalLayout:v156];

  v157 = [_UIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:5];
  [(_UIStatusBarRegionAxesLayout *)v155 setVerticalLayout:v157];

  [(_UIStatusBarRegion *)v154 setLayout:v155];
  v158 = +[_UIStatusBarStyleAttributes overriddenStyleAttributes];
  [v158 setImageNamePrefixes:&unk_1EFE2D798];
  v159 = [(_UIStatusBarVisualProvider_Split *)self systemUpdateFont];
  [v158 setFont:v159];

  v160 = [(_UIStatusBarVisualProvider_Split *)self systemUpdateFont];
  [v158 setEmphasizedFont:v160];

  [v158 setSymbolScale:2];
  [(_UIStatusBarRegion *)v154 setOverriddenStyleAttributes:v158];
  v161 = [(_UIStatusBarRegion *)v154 layoutItem];
  v162 = [v161 topAnchor];
  v163 = [v136 topAnchor];
  v164 = [v162 constraintEqualToAnchor:v163];
  [v6 addObject:v164];

  v165 = [(_UIStatusBarRegion *)v154 layoutItem];
  v166 = [v165 bottomAnchor];
  v167 = [v136 bottomAnchor];
  v168 = [v166 constraintEqualToAnchor:v167];
  [v6 addObject:v168];

  v169 = [(_UIStatusBarRegion *)v154 layoutItem];
  v170 = [v169 rightAnchor];
  v171 = [v136 rightAnchor];
  v172 = [v170 constraintEqualToAnchor:v171];
  [v6 addObject:v172];

  v173 = [(_UIStatusBarRegion *)v154 layoutItem];
  v174 = [v173 leftAnchor];
  v175 = [v136 leftAnchor];
  v176 = [v174 constraintEqualToAnchor:v175];
  [v6 addObject:v176];

  v177 = [(_UIStatusBarRegion *)v154 layoutItem];
  [v239 _ui_addSubLayoutItem:v177];

  [v238 addObject:v154];
  v240 = v238;
  v241[0] = v6;
  [(_UIStatusBarVisualProvider_Split *)self _setupExpandedRegionsInContainerView:v239 sensorHeight:v241 constraints:&v240 regions:v13];
  v178 = v241[0];

  v233 = v240;
  v179 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"bottomLeading"];
  v180 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v181 = objc_alloc_init(_UIStatusBarRegionAxisStackingLayout);
  [(_UIStatusBarRegionAxisStackingLayout *)v181 setAlignment:3];
  [(_UIStatusBarRegionAxisStackingLayout *)v181 setInterspace:v235];
  [(_UIStatusBarRegionAxesLayout *)v180 setHorizontalLayout:v181];

  v182 = [_UIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:6];
  [(_UIStatusBarRegionAxesLayout *)v180 setVerticalLayout:v182];

  [(_UIStatusBarRegion *)v179 setLayout:v180];
  [(_UIStatusBarRegion *)v179 setActionInsets:-100.0, -12.0, -10.0, -12.0];
  v183 = [(_UIStatusBarRegion *)v179 layoutItem];
  v184 = [v183 leadingAnchor];
  v185 = [v239 leadingAnchor];
  [(_UIStatusBarVisualProvider_Split *)self bottomLeadingSpace];
  v186 = [v184 constraintEqualToAnchor:v185 constant:?];
  [v178 addObject:v186];

  v187 = [(_UIStatusBarRegion *)v179 layoutItem];
  v188 = [v187 bottomAnchor];
  v189 = [v239 topAnchor];
  [(_UIStatusBarVisualProvider_FixedSplit *)self bottomLeadingBaseline];
  v190 = [v188 constraintEqualToAnchor:v189 constant:?];
  [v178 addObject:v190];

  v191 = [(_UIStatusBarRegion *)v179 layoutItem];
  v192 = [v191 widthAnchor];
  [(_UIStatusBarVisualProvider_FixedSplit *)self bottomLeadingWidth];
  v193 = [v192 constraintEqualToConstant:?];
  [v178 addObject:v193];

  v194 = [(_UIStatusBarRegion *)v179 layoutItem];
  v195 = [v194 heightAnchor];
  v196 = [v195 constraintEqualToConstant:13.3333333];
  [v178 addObject:v196];

  v197 = [(_UIStatusBarRegion *)v179 layoutItem];
  [v239 _ui_insertSubLayoutItem:v197 atIndex:0];

  [v233 addObject:v179];
  v198 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"topTrailing"];
  v199 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v200 = +[_UIStatusBarRegionAxisFillingLayout fillingLayout];
  [(_UIStatusBarRegionAxesLayout *)v199 setHorizontalLayout:v200];

  v201 = [_UIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:3];
  [(_UIStatusBarRegionAxesLayout *)v199 setVerticalLayout:v201];

  [(_UIStatusBarRegion *)v198 setLayout:v199];
  v202 = [(_UIStatusBarRegion *)v198 layoutItem];
  v203 = [v202 leadingAnchor];
  v204 = [(_UIStatusBarVisualProvider_Split *)self cutoutLayoutGuide];
  v205 = [v204 trailingAnchor];
  v206 = [v203 constraintEqualToAnchor:v205 constant:6.66666667];
  [v178 addObject:v206];

  v207 = [(_UIStatusBarRegion *)v198 layoutItem];
  v208 = [v207 topAnchor];
  v209 = [v239 topAnchor];
  v210 = [v208 constraintEqualToAnchor:v209 constant:6.33333333];
  [v178 addObject:v210];

  v211 = [(_UIStatusBarRegion *)v198 layoutItem];
  v212 = [v211 trailingAnchor];
  v213 = [v239 trailingAnchor];
  v214 = [v212 constraintEqualToAnchor:v213 constant:-30.0];
  [v178 addObject:v214];

  v215 = [(_UIStatusBarRegion *)v198 layoutItem];
  v216 = [v215 heightAnchor];
  v217 = [v216 constraintEqualToConstant:4.0];
  [v178 addObject:v217];

  v218 = [(_UIStatusBarRegion *)v198 layoutItem];
  [v239 _ui_addSubLayoutItem:v218];

  [v233 addObject:v198];
  [MEMORY[0x1E69977A0] activateConstraints:v178];
  if (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_StatusBarBackgroundActivityCoalescingDelay, @"StatusBarBackgroundActivityCoalescingDelay", _UIInternalPreferenceUpdateDouble))
  {
    v219 = 0.0;
  }

  else
  {
    v219 = *&qword_1EA95E6B8;
  }

  if (v219 > 0.0)
  {
    v220 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    v221 = [v220 dataAggregator];
    v222 = [MEMORY[0x1E695DFD8] setWithObject:@"backgroundActivityEntry"];
    [v221 beginCoalescingUpdatesForEntryKeys:v222 delay:v219];
  }

  return v233;
}

- (id)_orderedDisplayItemPlacements
{
  v117[3] = *MEMORY[0x1E69E9840];
  v97.receiver = self;
  v97.super_class = _UIStatusBarVisualProvider_FixedSplit;
  v89 = [(_UIStatusBarVisualProvider_Split *)&v97 _orderedDisplayItemPlacements];
  v3 = +[_UIStatusBarIndicatorQuietModeItem emphasizedQuietModeIdentifier];
  v4 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v3 priority:997];

  v5 = [_UIStatusBarIndicatorLocationItem groupWithPriority:1000];
  v6 = +[(_UIStatusBarCellularItem *)_UIStatusBarCellularCondensedItem];
  v7 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v6 priority:1010];
  v8 = [v5 prominentPlacement];
  v117[0] = v8;
  v9 = [v5 regularPlacement];
  v117[1] = v9;
  v117[2] = v4;
  v10 = v4;
  v96 = v4;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:3];
  v12 = [v7 excludingPlacements:v11];
  [(_UIStatusBarVisualProvider_Split *)self setServiceNamePlacement:v12];

  v13 = +[_UIStatusBarCellularCondensedItem dualNameDisplayIdentifier];
  v14 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v13 priority:1011];
  v15 = [v5 prominentPlacement];
  v116[0] = v15;
  v16 = [v5 regularPlacement];
  v116[1] = v16;
  v116[2] = v10;
  v17 = [(_UIStatusBarVisualProvider_Split *)self serviceNamePlacement];
  v116[3] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:4];
  v19 = [v14 excludingPlacements:v18];
  [(_UIStatusBarVisualProvider_Split *)self setDualServiceNamePlacement:v19];

  v20 = +[_UIStatusBarTimeItem shortTimeDisplayIdentifier];
  v21 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v20 priority:1012];
  v22 = [(_UIStatusBarVisualProvider_Split *)self serviceNamePlacement];
  v115[0] = v22;
  v23 = [(_UIStatusBarVisualProvider_Split *)self dualServiceNamePlacement];
  v115[1] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:2];
  v25 = [v21 excludingPlacements:v24];

  v26 = +[(_UIStatusBarItem *)_UIStatusBarVoiceControlPillItem];
  v27 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v26 priority:1014];
  v28 = [v5 prominentPlacement];
  v114[0] = v28;
  v29 = [v5 regularPlacement];
  v114[1] = v29;
  v114[2] = v96;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v114 count:3];
  v95 = [v27 excludingPlacements:v30];

  [(_UIStatusBarVisualProvider_FixedSplit *)self leadingSmallPillSpacing];
  v32 = v31;
  [(_UIStatusBarVisualProvider_FixedSplit *)self leadingItemSpacing];
  v94 = [_UIStatusBarDisplayItemPlacement spacerPlacementWithSize:1013 priority:v32 - (v33 + v33), 0.0];
  v34 = +[_UIStatusBarTimeItem pillTimeDisplayIdentifier];
  v93 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v34 priority:1900];

  v35 = +[(_UIStatusBarItem *)_UIStatusBarVoiceControlItem];
  v92 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v35 priority:1800];

  v36 = +[(_UIStatusBarItem *)_UIStatusBarPillBackgroundActivityItem];
  v37 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v36 priority:1950];
  v113[0] = v93;
  v113[1] = v92;
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v113 count:2];
  v39 = [v37 excludingPlacements:v38];

  v40 = [(_UIStatusBarVisualProvider_Phone *)self pillRegionCoordinator];
  [v40 setPillIconPlacement:v39];

  v41 = +[(_UIStatusBarBackgroundActivityItem *)_UIStatusBarPillBackgroundActivityItem];
  v42 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v41 priority:1949];
  v112 = v39;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v112 count:1];
  v44 = [v42 requiringAllPlacements:v43];

  v110[0] = @"leading";
  v109[0] = v25;
  v87 = [(_UIStatusBarVisualProvider_Split *)self serviceNamePlacement];
  v109[1] = v87;
  v86 = [(_UIStatusBarVisualProvider_Split *)self dualServiceNamePlacement];
  v109[2] = v86;
  v108 = v25;
  v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v108 count:1];
  v84 = [v96 requiringAllPlacements:v85];
  v109[3] = v84;
  v83 = [v5 regularPlacement];
  v107 = v96;
  v82 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v107 count:1];
  v81 = [v83 excludingPlacements:v82];
  v106 = v25;
  v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v106 count:1];
  v79 = [v81 requiringAllPlacements:v80];
  v109[4] = v79;
  v91 = v5;
  v78 = [v5 prominentPlacement];
  v105 = v96;
  v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v105 count:1];
  v76 = [v78 excludingPlacements:v77];
  v90 = v25;
  v104 = v25;
  v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v104 count:1];
  v74 = [v76 requiringAllPlacements:v75];
  v109[5] = v74;
  v103 = v95;
  v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v103 count:1];
  v45 = [v94 requiringAllPlacements:v73];
  v109[6] = v45;
  v109[7] = v95;
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v109 count:8];
  v111[0] = v46;
  v110[1] = @"pill";
  v47 = +[(_UIStatusBarBackgroundActivityItem *)_UIStatusBarPillBackgroundActivityItem];
  v48 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v47 priority:2000];
  v101[0] = @"leading";
  v101[1] = @"bottomLeading";
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:2];
  v50 = [v48 excludingAllPlacementsInRegions:v49];
  v102 = v50;
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v102 count:1];
  v111[1] = v51;
  v110[2] = @"pillContent";
  v88 = v39;
  v100[0] = v39;
  v100[1] = v44;
  v100[2] = v93;
  v100[3] = v92;
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:4];
  v111[2] = v52;
  v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v111 forKeys:v110 count:3];
  [v89 addEntriesFromDictionary:v53];

  if ((_UIInternalPreferenceUsesDefault(&dword_1ED48B518, @"StatusBarEnableActivity", _UIInternalPreferenceUpdateBool) & 1) == 0 && byte_1ED48B51C)
  {
    v54 = +[_UIStatusBarActivityItem_Split pillDisplayIdentifier];
    v55 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v54 priority:100];
    v99 = v55;
    v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v99 count:1];
    [v89 setObject:v56 forKeyedSubscript:@"topTrailing"];
  }

  if ((_UIInternalPreferenceUsesDefault(&_MergedGlobals_951, @"StatusBarPromoteThermalWarning", _UIInternalPreferenceUpdateBool) & 1) == 0 && byte_1ED48B514)
  {
    v57 = [v89 objectForKeyedSubscript:@"trailing"];
    v58 = [v57 mutableCopy];

    v59 = [v58 indexOfObjectPassingTest:&__block_literal_global_411_1];
    v60 = [v58 indexOfObjectPassingTest:&__block_literal_global_413_2];
    if (v60 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v61 = 0;
    }

    else
    {
      v61 = [v58 objectAtIndexedSubscript:v60];
    }

    v62 = [v58 indexOfObjectPassingTest:&__block_literal_global_415];
    if (v62 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v63 = 0;
    }

    else
    {
      v64 = [v58 objectAtIndexedSubscript:v62];
      v63 = v64;
      if (v59 != 0x7FFFFFFFFFFFFFFFLL && v61 && v64)
      {
        v65 = +[(_UIStatusBarItem *)_UIStatusBarThermalItem];
        v66 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v65 priority:1110];
        v98[0] = v61;
        v98[1] = v63;
        v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:2];
        v68 = [v66 excludingPlacements:v67];
        [v58 insertObject:v68 atIndex:v59];
      }
    }

    [v89 setObject:v58 forKeyedSubscript:@"trailing"];

    v69 = [v89 objectForKeyedSubscript:@"systemUpdates"];
    v70 = [v69 mutableCopy];

    v71 = [v70 indexOfObjectPassingTest:&__block_literal_global_417_1];
    if (v71 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v70 removeObjectAtIndex:v71];
    }

    [v89 setObject:v70 forKeyedSubscript:@"systemUpdates"];
  }

  return v89;
}

- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(_UIStatusBarVisualProvider_Split *)self orderedDisplayItemPlacements];

  if (!v5)
  {
    v6 = [(_UIStatusBarVisualProvider_FixedSplit *)self _orderedDisplayItemPlacements];
    [(_UIStatusBarVisualProvider_Split *)self setOrderedDisplayItemPlacements:v6];
  }

  v7 = [(_UIStatusBarVisualProvider_Split *)self orderedDisplayItemPlacements];
  v8 = [v7 objectForKeyedSubscript:v4];

  return v8;
}

- (id)styleAttributesForStyle:(int64_t)a3
{
  v12.receiver = self;
  v12.super_class = _UIStatusBarVisualProvider_FixedSplit;
  v4 = [(_UIStatusBarVisualProvider_Split *)&v12 styleAttributesForStyle:a3];
  [(_UIStatusBarVisualProvider_FixedSplit *)self referenceWidth];
  v6 = v5;
  v7 = [objc_opt_self() mainScreen];
  [v7 _unjailedReferenceBounds];
  Width = CGRectGetWidth(v14);

  v9 = [v4 mode];
  if (v9 != 2)
  {
    if (v9 == 1)
    {
      v10 = 0;
      goto LABEL_6;
    }

    if (v9)
    {
      goto LABEL_7;
    }
  }

  v10 = v6 != Width;
LABEL_6:
  [v4 setScaledFixedWidthBar:v10];
LABEL_7:

  return v4;
}

- (id)overriddenStyleAttributesForDisplayItemWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[(_UIStatusBarPillBackgroundActivityItem *)_UIStatusBarExpandedPillBackgroundActivityItem];

  if (v5 == v4)
  {
    v6 = +[_UIStatusBarStyleAttributes overriddenStyleAttributes];
    v7 = [(_UIStatusBarVisualProvider_FixedSplit *)self expandedPillFont];
    [v6 setFont:v7];

    v8 = [(_UIStatusBarVisualProvider_FixedSplit *)self expandedPillFont];
    [v6 setSmallFont:v8];

    [(_UIStatusBarVisualProvider_FixedSplit *)self expandedPillSize];
    [v6 setIconScale:v9 / 21.3333333];
    [v6 setSymbolScale:2];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = _UIStatusBarVisualProvider_FixedSplit;
    v6 = [(_UIStatusBarVisualProvider_Split *)&v11 overriddenStyleAttributesForDisplayItemWithIdentifier:v4];
  }

  return v6;
}

- (void)itemCreated:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIStatusBarVisualProvider_FixedSplit;
  [(_UIStatusBarVisualProvider_Split *)&v8 itemCreated:v4];
  v5 = [v4 identifier];
  v6 = +[(_UIStatusBarItem *)_UIStatusBarExpandedPillBackgroundActivityItem];

  if (v5 == v6)
  {
    v7 = v4;
    [(_UIStatusBarVisualProvider_FixedSplit *)self expandedPillSize];
    [v7 setPillSize:?];
  }
}

- (id)region:(id)a3 willSetDisplayItems:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 identifier];
  if (![v7 isEqual:@"trailing"])
  {
    goto LABEL_11;
  }

  v8 = [v6 count];

  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = [v6 count];
  isKindOfClass = v9 < 3;
  v7 = [v5 layout];
  v11 = [v7 horizontalLayout];
  if (v11)
  {
    v12 = [v7 horizontalLayout];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  if (v9 >= 3 && (isKindOfClass & 1) == 0)
  {
    v13 = objc_alloc_init(_UIStatusBarRegionAxisCenteringLayout);
    [(_UIStatusBarRegionAxisCenteringLayout *)v13 setMargin:0.0];
    [(_UIStatusBarRegionAxisCenteringLayout *)v13 setMaxNumberOfItems:3];
LABEL_10:
    [v7 setHorizontalLayout:v13];

    goto LABEL_11;
  }

  if (((v9 < 3) & isKindOfClass) == 1)
  {
    v13 = objc_alloc_init(_UIStatusBarRegionAxisStackingLayout);
    [(_UIStatusBarRegionAxisCenteringLayout *)v13 setAlignment:4];
    [(_UIStatusBarRegionAxisCenteringLayout *)v13 setInterspace:6.0];
    goto LABEL_10;
  }

LABEL_11:

LABEL_12:

  return v6;
}

- (void)orientationUpdatedFromOrientation:(int64_t)a3
{
  v5 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  v4 = [v5 currentAggregatedData];
  [(_UIStatusBarVisualProvider_FixedSplit *)self _updateLowerRegionsWithData:v4];
}

- (void)dataUpdated:(id)a3
{
  v4 = a3;
  [(_UIStatusBarVisualProvider_FixedSplit *)self _updateSystemNavigationWithData:v4];
  [(_UIStatusBarVisualProvider_FixedSplit *)self _updateLowerRegionsWithData:v4];
}

- (id)regionIdentifiersForPartWithIdentifier:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _UIStatusBarVisualProvider_FixedSplit;
  v5 = [(_UIStatusBarVisualProvider_Split *)&v13 regionIdentifiersForPartWithIdentifier:v4];
  if ([v4 isEqual:@"leadingPartIdentifier"])
  {
    v15[0] = @"pill";
    v15[1] = @"pillContent";
    v6 = MEMORY[0x1E695DEC8];
    v7 = v15;
    v8 = 2;
LABEL_3:
    v9 = [v6 arrayWithObjects:v7 count:v8];
    v10 = [v5 setByAddingObjectsFromArray:v9];

    goto LABEL_10;
  }

  if ([v4 isEqual:@"trailingPartIdentifier"])
  {
    v11 = [v5 setByAddingObject:@"topTrailing"];
  }

  else
  {
    if ([v4 isEqual:0x1EFB9C3D0])
    {
      v14[0] = @"pill";
      v14[1] = @"pillContent";
      v14[2] = @"topTrailing";
      v6 = MEMORY[0x1E695DEC8];
      v7 = v14;
      v8 = 3;
      goto LABEL_3;
    }

    v11 = v5;
  }

  v10 = v11;
LABEL_10:

  return v10;
}

- (void)_updateSystemNavigationWithData:(id)a3
{
  v4 = a3;
  v5 = [v4 backNavigationEntry];
  if (v5)
  {
  }

  else
  {
    v9 = [v4 backgroundActivityEntry];
    if (!v9)
    {
      goto LABEL_17;
    }

    v10 = v9;
    v11 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    v12 = [v11 currentAggregatedData];
    v13 = [v12 backNavigationEntry];
    v14 = [v13 isEnabled];

    if (!v14)
    {
      goto LABEL_17;
    }
  }

  v6 = [v4 backNavigationEntry];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v15 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    v16 = [v15 currentAggregatedData];
    v8 = [v16 backNavigationEntry];
  }

  v17 = [v4 backgroundActivityEntry];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v20 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    v21 = [v20 currentAggregatedData];
    v19 = [v21 backgroundActivityEntry];
  }

  v22 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  v23 = [v22 regions];
  v24 = [v23 objectForKeyedSubscript:@"leading"];
  v25 = [v24 action];

  [(_UIStatusBarVisualProvider_FixedSplit *)self leadingEdgeInsets];
  v27 = v26;
  if ([v8 isEnabled] && (objc_msgSend(v19, "isEnabled") & 1) == 0)
  {
    [(_UIStatusBarVisualProvider_Split *)self bottomLeadingTopOffset];
    v29 = 0;
    v28 = -v27 - v30;
  }

  else
  {
    v28 = -v27;
    v29 = 1;
  }

  [(NSLayoutConstraint *)self->_leadingBottomConstraint setConstant:v28];
  [v25 setEnabled:v29];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __73___UIStatusBarVisualProvider_FixedSplit__updateSystemNavigationWithData___block_invoke;
  v31[3] = &unk_1E70F3590;
  v31[4] = self;
  [UIView _animateUsingSpringWithTension:0 friction:v31 interactive:0 animations:200.0 completion:20.0];

LABEL_17:
}

- (id)animationForBackgroundActivityPillAnimation:(id)a3 duration:(double)a4 scale:(double)a5
{
  v8 = a3;
  v9 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  v10 = [v9 currentAggregatedData];
  v11 = [v10 voiceControlEntry];
  v12 = [v11 isEnabled];

  if (v12)
  {
    v13 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    v14 = [v13 _shouldReverseLayoutDirection];

    if (v14)
    {
      v15 = -1.0;
    }

    else
    {
      v15 = 1.0;
    }

    v16 = [_UIStatusBarAnimationFactory fadeAnimationWithDuration:a4 scale:a5 offset:v15 * 5.0, 0.0];
    [v16 setPriority:30];
    v17 = +[_UIStatusBarTimeItem pillTimeDisplayIdentifier];
    [v8 addSubAnimation:v16 forDisplayItemWithIdentifier:v17];

    v18 = [_UIStatusBarAnimationFactory fadeAnimationWithDuration:a4 scale:a5 offset:v15 * -5.0, 0.0];
    [v18 setPriority:30];
    v19 = +[(_UIStatusBarItem *)_UIStatusBarVoiceControlItem];
    [v8 addSubAnimation:v18 forDisplayItemWithIdentifier:v19];
  }

  [v8 setDelaysDependentItems:1];

  return v8;
}

- (BOOL)_updateLowerRegionsWithData:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarVisualProvider_FixedSplit;
  v4 = [(_UIStatusBarVisualProvider_Split *)&v7 _updateLowerRegionsWithData:a3];
  if (v4)
  {
    v5 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    [v5 updateWithAnimations:MEMORY[0x1E695E0F0]];
  }

  return v4;
}

@end