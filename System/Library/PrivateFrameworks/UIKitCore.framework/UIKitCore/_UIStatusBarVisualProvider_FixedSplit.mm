@interface _UIStatusBarVisualProvider_FixedSplit
- (BOOL)_updateLowerRegionsWithData:(id)data;
- (CGRect)notchRect;
- (CGSize)expandedPillSize;
- (CGSize)notchSize;
- (CGSize)pillSize;
- (CGSize)smallPillSize;
- (NSDirectionalEdgeInsets)_edgeInsetsFromCenteringEdgeInset:(double)inset trailing:(BOOL)trailing;
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
- (id)animationForBackgroundActivityPillAnimation:(id)animation duration:(double)duration scale:(double)scale;
- (id)expandedPillFont;
- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)identifier;
- (id)overriddenStyleAttributesForDisplayItemWithIdentifier:(id)identifier;
- (id)region:(id)region willSetDisplayItems:(id)items;
- (id)regionIdentifiersForPartWithIdentifier:(id)identifier;
- (id)setupInContainerView:(id)view;
- (id)styleAttributesForStyle:(int64_t)style;
- (void)_updateSystemNavigationWithData:(id)data;
- (void)dataUpdated:(id)updated;
- (void)itemCreated:(id)created;
- (void)orientationUpdatedFromOrientation:(int64_t)orientation;
@end

@implementation _UIStatusBarVisualProvider_FixedSplit

- (double)nativeDisplayWidth
{
  statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  _effectiveTargetScreen = [statusBar _effectiveTargetScreen];
  [_effectiveTargetScreen nativeBounds];
  v5 = v4;

  return v5;
}

- (double)referenceWidth
{
  statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  _effectiveTargetScreen = [statusBar _effectiveTargetScreen];

  [_effectiveTargetScreen nativeBounds];
  v5 = v4;
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    [objc_opt_class() referenceScreenScale];
  }

  else
  {
    [_effectiveTargetScreen _scale];
  }

  v7 = v5 / v6;

  return v7;
}

- (double)leadingPillSpacing
{
  [(_UIStatusBarVisualProvider_FixedSplit *)self leadingPillInset];
  v4 = v3 / 3.0;
  statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  _effectiveTargetScreen = [statusBar _effectiveTargetScreen];
  [_effectiveTargetScreen _scale];
  UIRoundToScale(v4, v7);
  v9 = v8;

  return v9;
}

- (double)leadingPillInset
{
  [(_UIStatusBarVisualProvider_FixedSplit *)self pillSize];
  v4 = v3 * 0.25;
  statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  _effectiveTargetScreen = [statusBar _effectiveTargetScreen];
  [_effectiveTargetScreen _scale];
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
  statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  _effectiveTargetScreen = [statusBar _effectiveTargetScreen];
  [_effectiveTargetScreen _scale];
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

- (NSDirectionalEdgeInsets)_edgeInsetsFromCenteringEdgeInset:(double)inset trailing:(BOOL)trailing
{
  trailingCopy = trailing;
  normalIconSize = [(_UIStatusBarVisualProvider_Split *)self normalIconSize];
  [_UIStatusBarBatteryView _statusBarIntrinsicContentSizeForIconSize:normalIconSize];
  v9 = v8;
  [_UIStatusBarCellularSignalView _intrinsicContentSizeForNumberOfBars:4 iconSize:normalIconSize];
  v11 = v9 + v10;
  [_UIStatusBarWifiSignalView _intrinsicContentSizeForNumberOfBars:3 iconSize:normalIconSize];
  v13 = v11 + v12;
  [(_UIStatusBarVisualProvider_Split *)self itemSpacing];
  v15 = v13 + v14 + v14;
  v16 = inset - v15 * 0.5;
  [(_UIStatusBarVisualProvider_FixedSplit *)self referenceWidth];
  v18 = v17;
  [(_UIStatusBarVisualProvider_FixedSplit *)self notchSize];
  v20 = (v18 - v19) * 0.5 - (v15 + v16);
  [(_UIStatusBarVisualProvider_Split *)self baselineBottomInset];
  v22 = v21;
  if (trailingCopy)
  {
    v23 = v20;
  }

  else
  {
    v23 = v16;
  }

  if (trailingCopy)
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
  statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  _effectiveTargetScreen = [statusBar _effectiveTargetScreen];

  _exclusionArea = [_effectiveTargetScreen _exclusionArea];
  [_exclusionArea rect];
  v6 = v5;
  [_effectiveTargetScreen _nativeScale];
  v8 = v7 * v6;
  [_effectiveTargetScreen _scale];
  v10 = v8 / v9;
  [_exclusionArea rect];
  v12 = v11;
  [_effectiveTargetScreen _nativeScale];
  v14 = v13 * v12;
  [_effectiveTargetScreen _scale];
  v16 = v14 / v15;
  [_exclusionArea rect];
  v18 = v17;
  [_effectiveTargetScreen _nativeScale];
  v20 = v19 * v18;
  [_effectiveTargetScreen _scale];
  v22 = v20 / v21;
  [_exclusionArea rect];
  v24 = v23;
  [_effectiveTargetScreen _nativeScale];
  v26 = v25 * v24;
  [_effectiveTargetScreen _scale];
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

- (id)setupInContainerView:(id)view
{
  v4 = MEMORY[0x1E695DF70];
  viewCopy = view;
  array = [v4 array];
  array2 = [MEMORY[0x1E695DF70] array];
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
  expandedFont = [(_UIStatusBarVisualProvider_Split *)self expandedFont];
  [expandedFont capHeight];

  v35 = objc_alloc_init(UILayoutGuide);
  [(UILayoutGuide *)v35 setIdentifier:@"cutout"];
  topAnchor = [(UILayoutGuide *)v35 topAnchor];
  topAnchor2 = [viewCopy topAnchor];
  v38 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [array addObject:v38];

  trailingAnchor = [viewCopy trailingAnchor];
  trailingAnchor2 = [(UILayoutGuide *)v35 trailingAnchor];
  v41 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v14];
  [array addObject:v41];

  widthAnchor = [(UILayoutGuide *)v35 widthAnchor];
  v43 = [widthAnchor constraintEqualToConstant:v11];
  [array addObject:v43];

  heightAnchor = [(UILayoutGuide *)v35 heightAnchor];
  v45 = [heightAnchor constraintEqualToConstant:v13];
  [array addObject:v45];

  [viewCopy addLayoutGuide:v35];
  [(_UIStatusBarVisualProvider_Split *)self setCutoutLayoutGuide:v35];

  v46 = objc_alloc_init(UILayoutGuide);
  [(UILayoutGuide *)v46 setIdentifier:@"UIStatusBarMainRegions"];
  trailingAnchor3 = [(UILayoutGuide *)v46 trailingAnchor];
  v239 = viewCopy;
  trailingAnchor4 = [viewCopy trailingAnchor];
  v49 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [array addObject:v49];

  widthAnchor2 = [(UILayoutGuide *)v46 widthAnchor];
  v51 = [widthAnchor2 constraintEqualToConstant:v9];
  [array addObject:v51];

  heightAnchor2 = [(UILayoutGuide *)v46 heightAnchor];
  v53 = [heightAnchor2 constraintEqualToConstant:v13];
  [array addObject:v53];

  bottomAnchor = [(UILayoutGuide *)v46 bottomAnchor];
  cutoutLayoutGuide = [(_UIStatusBarVisualProvider_Split *)self cutoutLayoutGuide];
  bottomAnchor2 = [cutoutLayoutGuide bottomAnchor];
  v57 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [array addObject:v57];

  [viewCopy addLayoutGuide:v46];
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
  layoutItem = [(_UIStatusBarRegion *)v58 layoutItem];
  topAnchor3 = [layoutItem topAnchor];
  mainRegionsLayoutGuide = [(_UIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  topAnchor4 = [mainRegionsLayoutGuide topAnchor];
  v66 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:v23];
  [array addObject:v66];

  bottomAnchor3 = [layoutItem bottomAnchor];
  mainRegionsLayoutGuide2 = [(_UIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  bottomAnchor4 = [mainRegionsLayoutGuide2 bottomAnchor];
  v70 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-v27];
  leadingBottomConstraint = self->_leadingBottomConstraint;
  self->_leadingBottomConstraint = v70;

  [array addObject:self->_leadingBottomConstraint];
  leadingAnchor = [layoutItem leadingAnchor];
  mainRegionsLayoutGuide3 = [(_UIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  leadingAnchor2 = [mainRegionsLayoutGuide3 leadingAnchor];
  v75 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v25];
  [array addObject:v75];

  widthAnchor3 = [layoutItem widthAnchor];
  v77 = [widthAnchor3 constraintEqualToConstant:v14 - (v25 + v29)];
  [array addObject:v77];

  v237 = layoutItem;
  [v239 _ui_addSubLayoutItem:layoutItem];

  [array2 addObject:v58];
  v78 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"pill"];
  v79 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v80 = +[_UIStatusBarRegionAxisFillingLayout fillingLayout];
  [(_UIStatusBarRegionAxesLayout *)v79 setHorizontalLayout:v80];

  v81 = +[_UIStatusBarRegionAxisFillingLayout fillingLayout];
  [(_UIStatusBarRegionAxesLayout *)v79 setVerticalLayout:v81];

  [(_UIStatusBarRegion *)v78 setLayout:v79];
  [(_UIStatusBarRegion *)v78 setActionInsets:-100.0, -20.0, -10.0, -20.0];
  layoutItem2 = [(_UIStatusBarRegion *)v78 layoutItem];
  bottomAnchor5 = [layoutItem2 bottomAnchor];
  cutoutLayoutGuide2 = [(_UIStatusBarVisualProvider_Split *)self cutoutLayoutGuide];
  bottomAnchor6 = [cutoutLayoutGuide2 bottomAnchor];
  v86 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  [array addObject:v86];

  layoutItem3 = [(_UIStatusBarRegion *)v78 layoutItem];
  centerXAnchor = [layoutItem3 centerXAnchor];
  leadingAnchor3 = [v239 leadingAnchor];
  v90 = [centerXAnchor constraintEqualToAnchor:leadingAnchor3 constant:v225];
  [array addObject:v90];

  layoutItem4 = [(_UIStatusBarRegion *)v78 layoutItem];
  widthAnchor4 = [layoutItem4 widthAnchor];
  v93 = [widthAnchor4 constraintEqualToConstant:v226];
  [array addObject:v93];

  layoutItem5 = [(_UIStatusBarRegion *)v78 layoutItem];
  heightAnchor3 = [layoutItem5 heightAnchor];
  v96 = [heightAnchor3 constraintEqualToConstant:v227];
  [array addObject:v96];

  layoutItem6 = [(_UIStatusBarRegion *)v78 layoutItem];
  [v239 _ui_addSubLayoutItem:layoutItem6];

  [array2 addObject:v78];
  lastObject = [array2 lastObject];
  pillRegionCoordinator = [(_UIStatusBarVisualProvider_Phone *)self pillRegionCoordinator];
  [pillRegionCoordinator setPillRegion:lastObject];

  v100 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"pillContent"];
  pillRegionCoordinator2 = [(_UIStatusBarVisualProvider_Phone *)self pillRegionCoordinator];
  pillRegion = [pillRegionCoordinator2 pillRegion];
  [(_UIStatusBarRegion *)v100 setEnabilityRegion:pillRegion];

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

  pillFont = [(_UIStatusBarVisualProvider_FixedSplit *)self pillFont];
  [v106 setFont:pillFont];

  pillSmallFont = [(_UIStatusBarVisualProvider_FixedSplit *)self pillSmallFont];
  [v106 setSmallFont:pillSmallFont];

  pillFont2 = [(_UIStatusBarVisualProvider_FixedSplit *)self pillFont];
  [v106 setEmphasizedFont:pillFont2];

  [v106 setSymbolScale:2];
  [(_UIStatusBarRegion *)v100 setOverriddenStyleAttributes:v106];
  pillRegionCoordinator3 = [(_UIStatusBarVisualProvider_Phone *)self pillRegionCoordinator];
  pillRegion2 = [pillRegionCoordinator3 pillRegion];
  layoutItem7 = [pillRegion2 layoutItem];

  layoutItem8 = [(_UIStatusBarRegion *)v100 layoutItem];
  topAnchor5 = [layoutItem8 topAnchor];
  topAnchor6 = [layoutItem7 topAnchor];
  v119 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  [array addObject:v119];

  layoutItem9 = [(_UIStatusBarRegion *)v100 layoutItem];
  bottomAnchor7 = [layoutItem9 bottomAnchor];
  bottomAnchor8 = [layoutItem7 bottomAnchor];
  v123 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
  [array addObject:v123];

  layoutItem10 = [(_UIStatusBarRegion *)v100 layoutItem];
  leadingAnchor4 = [layoutItem10 leadingAnchor];
  leadingAnchor5 = [layoutItem7 leadingAnchor];
  v127 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:v229];
  [array addObject:v127];

  layoutItem11 = [(_UIStatusBarRegion *)v100 layoutItem];
  trailingAnchor5 = [layoutItem11 trailingAnchor];
  trailingAnchor6 = [layoutItem7 trailingAnchor];
  v131 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-v229];
  [array addObject:v131];

  layoutItem12 = [(_UIStatusBarRegion *)v100 layoutItem];
  [v239 _ui_addSubLayoutItem:layoutItem12];

  [array2 addObject:v100];
  v133 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"trailing"];
  v134 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v135 = [_UIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:5];
  [(_UIStatusBarRegionAxesLayout *)v134 setVerticalLayout:v135];

  [(_UIStatusBarRegion *)v133 setLayout:v134];
  [(_UIStatusBarRegion *)v133 setActionInsets:-100.0, -20.0, -10.0, -20.0];
  layoutItem13 = [(_UIStatusBarRegion *)v133 layoutItem];
  v137 = +[_UIStatusBarStyleAttributes overriddenStyleAttributes];
  emphasizedFont = [(_UIStatusBarVisualProvider_Split *)self emphasizedFont];
  [v137 setFont:emphasizedFont];

  normalFont = [(_UIStatusBarVisualProvider_Split *)self normalFont];
  [v137 setSmallFont:normalFont];

  [v137 setImageNamePrefixes:&unk_1EFE2D780];
  [(_UIStatusBarRegion *)v133 setOverriddenStyleAttributes:v137];
  topAnchor7 = [layoutItem13 topAnchor];
  mainRegionsLayoutGuide4 = [(_UIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  topAnchor8 = [mainRegionsLayoutGuide4 topAnchor];
  v143 = [topAnchor7 constraintEqualToAnchor:topAnchor8 constant:v230];
  [array addObject:v143];

  bottomAnchor9 = [layoutItem13 bottomAnchor];
  mainRegionsLayoutGuide5 = [(_UIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  bottomAnchor10 = [mainRegionsLayoutGuide5 bottomAnchor];
  v147 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10 constant:-v231];
  [array addObject:v147];

  trailingAnchor7 = [layoutItem13 trailingAnchor];
  mainRegionsLayoutGuide6 = [(_UIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  trailingAnchor8 = [mainRegionsLayoutGuide6 trailingAnchor];
  v151 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-v232];
  [array addObject:v151];

  widthAnchor5 = [layoutItem13 widthAnchor];
  v153 = [widthAnchor5 constraintEqualToConstant:v14 - (v234 + v232)];
  [array addObject:v153];

  [v239 _ui_addSubLayoutItem:layoutItem13];
  [array2 addObject:v133];

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
  systemUpdateFont = [(_UIStatusBarVisualProvider_Split *)self systemUpdateFont];
  [v158 setFont:systemUpdateFont];

  systemUpdateFont2 = [(_UIStatusBarVisualProvider_Split *)self systemUpdateFont];
  [v158 setEmphasizedFont:systemUpdateFont2];

  [v158 setSymbolScale:2];
  [(_UIStatusBarRegion *)v154 setOverriddenStyleAttributes:v158];
  layoutItem14 = [(_UIStatusBarRegion *)v154 layoutItem];
  topAnchor9 = [layoutItem14 topAnchor];
  topAnchor10 = [layoutItem13 topAnchor];
  v164 = [topAnchor9 constraintEqualToAnchor:topAnchor10];
  [array addObject:v164];

  layoutItem15 = [(_UIStatusBarRegion *)v154 layoutItem];
  bottomAnchor11 = [layoutItem15 bottomAnchor];
  bottomAnchor12 = [layoutItem13 bottomAnchor];
  v168 = [bottomAnchor11 constraintEqualToAnchor:bottomAnchor12];
  [array addObject:v168];

  layoutItem16 = [(_UIStatusBarRegion *)v154 layoutItem];
  rightAnchor = [layoutItem16 rightAnchor];
  rightAnchor2 = [layoutItem13 rightAnchor];
  v172 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [array addObject:v172];

  layoutItem17 = [(_UIStatusBarRegion *)v154 layoutItem];
  leftAnchor = [layoutItem17 leftAnchor];
  leftAnchor2 = [layoutItem13 leftAnchor];
  v176 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [array addObject:v176];

  layoutItem18 = [(_UIStatusBarRegion *)v154 layoutItem];
  [v239 _ui_addSubLayoutItem:layoutItem18];

  [array2 addObject:v154];
  v240 = array2;
  v241[0] = array;
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
  layoutItem19 = [(_UIStatusBarRegion *)v179 layoutItem];
  leadingAnchor6 = [layoutItem19 leadingAnchor];
  leadingAnchor7 = [v239 leadingAnchor];
  [(_UIStatusBarVisualProvider_Split *)self bottomLeadingSpace];
  v186 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7 constant:?];
  [v178 addObject:v186];

  layoutItem20 = [(_UIStatusBarRegion *)v179 layoutItem];
  bottomAnchor13 = [layoutItem20 bottomAnchor];
  topAnchor11 = [v239 topAnchor];
  [(_UIStatusBarVisualProvider_FixedSplit *)self bottomLeadingBaseline];
  v190 = [bottomAnchor13 constraintEqualToAnchor:topAnchor11 constant:?];
  [v178 addObject:v190];

  layoutItem21 = [(_UIStatusBarRegion *)v179 layoutItem];
  widthAnchor6 = [layoutItem21 widthAnchor];
  [(_UIStatusBarVisualProvider_FixedSplit *)self bottomLeadingWidth];
  v193 = [widthAnchor6 constraintEqualToConstant:?];
  [v178 addObject:v193];

  layoutItem22 = [(_UIStatusBarRegion *)v179 layoutItem];
  heightAnchor4 = [layoutItem22 heightAnchor];
  v196 = [heightAnchor4 constraintEqualToConstant:13.3333333];
  [v178 addObject:v196];

  layoutItem23 = [(_UIStatusBarRegion *)v179 layoutItem];
  [v239 _ui_insertSubLayoutItem:layoutItem23 atIndex:0];

  [v233 addObject:v179];
  v198 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"topTrailing"];
  v199 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v200 = +[_UIStatusBarRegionAxisFillingLayout fillingLayout];
  [(_UIStatusBarRegionAxesLayout *)v199 setHorizontalLayout:v200];

  v201 = [_UIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:3];
  [(_UIStatusBarRegionAxesLayout *)v199 setVerticalLayout:v201];

  [(_UIStatusBarRegion *)v198 setLayout:v199];
  layoutItem24 = [(_UIStatusBarRegion *)v198 layoutItem];
  leadingAnchor8 = [layoutItem24 leadingAnchor];
  cutoutLayoutGuide3 = [(_UIStatusBarVisualProvider_Split *)self cutoutLayoutGuide];
  trailingAnchor9 = [cutoutLayoutGuide3 trailingAnchor];
  v206 = [leadingAnchor8 constraintEqualToAnchor:trailingAnchor9 constant:6.66666667];
  [v178 addObject:v206];

  layoutItem25 = [(_UIStatusBarRegion *)v198 layoutItem];
  topAnchor12 = [layoutItem25 topAnchor];
  topAnchor13 = [v239 topAnchor];
  v210 = [topAnchor12 constraintEqualToAnchor:topAnchor13 constant:6.33333333];
  [v178 addObject:v210];

  layoutItem26 = [(_UIStatusBarRegion *)v198 layoutItem];
  trailingAnchor10 = [layoutItem26 trailingAnchor];
  trailingAnchor11 = [v239 trailingAnchor];
  v214 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11 constant:-30.0];
  [v178 addObject:v214];

  layoutItem27 = [(_UIStatusBarRegion *)v198 layoutItem];
  heightAnchor5 = [layoutItem27 heightAnchor];
  v217 = [heightAnchor5 constraintEqualToConstant:4.0];
  [v178 addObject:v217];

  layoutItem28 = [(_UIStatusBarRegion *)v198 layoutItem];
  [v239 _ui_addSubLayoutItem:layoutItem28];

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
    statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    dataAggregator = [statusBar dataAggregator];
    v222 = [MEMORY[0x1E695DFD8] setWithObject:@"backgroundActivityEntry"];
    [dataAggregator beginCoalescingUpdatesForEntryKeys:v222 delay:v219];
  }

  return v233;
}

- (id)_orderedDisplayItemPlacements
{
  v117[3] = *MEMORY[0x1E69E9840];
  v97.receiver = self;
  v97.super_class = _UIStatusBarVisualProvider_FixedSplit;
  _orderedDisplayItemPlacements = [(_UIStatusBarVisualProvider_Split *)&v97 _orderedDisplayItemPlacements];
  v3 = +[_UIStatusBarIndicatorQuietModeItem emphasizedQuietModeIdentifier];
  v4 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v3 priority:997];

  v5 = [_UIStatusBarIndicatorLocationItem groupWithPriority:1000];
  v6 = +[(_UIStatusBarCellularItem *)_UIStatusBarCellularCondensedItem];
  v7 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v6 priority:1010];
  prominentPlacement = [v5 prominentPlacement];
  v117[0] = prominentPlacement;
  regularPlacement = [v5 regularPlacement];
  v117[1] = regularPlacement;
  v117[2] = v4;
  v10 = v4;
  v96 = v4;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:3];
  v12 = [v7 excludingPlacements:v11];
  [(_UIStatusBarVisualProvider_Split *)self setServiceNamePlacement:v12];

  v13 = +[_UIStatusBarCellularCondensedItem dualNameDisplayIdentifier];
  v14 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v13 priority:1011];
  prominentPlacement2 = [v5 prominentPlacement];
  v116[0] = prominentPlacement2;
  regularPlacement2 = [v5 regularPlacement];
  v116[1] = regularPlacement2;
  v116[2] = v10;
  serviceNamePlacement = [(_UIStatusBarVisualProvider_Split *)self serviceNamePlacement];
  v116[3] = serviceNamePlacement;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:4];
  v19 = [v14 excludingPlacements:v18];
  [(_UIStatusBarVisualProvider_Split *)self setDualServiceNamePlacement:v19];

  v20 = +[_UIStatusBarTimeItem shortTimeDisplayIdentifier];
  v21 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v20 priority:1012];
  serviceNamePlacement2 = [(_UIStatusBarVisualProvider_Split *)self serviceNamePlacement];
  v115[0] = serviceNamePlacement2;
  dualServiceNamePlacement = [(_UIStatusBarVisualProvider_Split *)self dualServiceNamePlacement];
  v115[1] = dualServiceNamePlacement;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:2];
  v25 = [v21 excludingPlacements:v24];

  v26 = +[(_UIStatusBarItem *)_UIStatusBarVoiceControlPillItem];
  v27 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v26 priority:1014];
  prominentPlacement3 = [v5 prominentPlacement];
  v114[0] = prominentPlacement3;
  regularPlacement3 = [v5 regularPlacement];
  v114[1] = regularPlacement3;
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

  pillRegionCoordinator = [(_UIStatusBarVisualProvider_Phone *)self pillRegionCoordinator];
  [pillRegionCoordinator setPillIconPlacement:v39];

  v41 = +[(_UIStatusBarBackgroundActivityItem *)_UIStatusBarPillBackgroundActivityItem];
  v42 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v41 priority:1949];
  v112 = v39;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v112 count:1];
  v44 = [v42 requiringAllPlacements:v43];

  v110[0] = @"leading";
  v109[0] = v25;
  serviceNamePlacement3 = [(_UIStatusBarVisualProvider_Split *)self serviceNamePlacement];
  v109[1] = serviceNamePlacement3;
  dualServiceNamePlacement2 = [(_UIStatusBarVisualProvider_Split *)self dualServiceNamePlacement];
  v109[2] = dualServiceNamePlacement2;
  v108 = v25;
  v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v108 count:1];
  v84 = [v96 requiringAllPlacements:v85];
  v109[3] = v84;
  regularPlacement4 = [v5 regularPlacement];
  v107 = v96;
  v82 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v107 count:1];
  v81 = [regularPlacement4 excludingPlacements:v82];
  v106 = v25;
  v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v106 count:1];
  v79 = [v81 requiringAllPlacements:v80];
  v109[4] = v79;
  v91 = v5;
  prominentPlacement4 = [v5 prominentPlacement];
  v105 = v96;
  v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v105 count:1];
  v76 = [prominentPlacement4 excludingPlacements:v77];
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
  [_orderedDisplayItemPlacements addEntriesFromDictionary:v53];

  if ((_UIInternalPreferenceUsesDefault(&dword_1ED48B518, @"StatusBarEnableActivity", _UIInternalPreferenceUpdateBool) & 1) == 0 && byte_1ED48B51C)
  {
    v54 = +[_UIStatusBarActivityItem_Split pillDisplayIdentifier];
    v55 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v54 priority:100];
    v99 = v55;
    v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v99 count:1];
    [_orderedDisplayItemPlacements setObject:v56 forKeyedSubscript:@"topTrailing"];
  }

  if ((_UIInternalPreferenceUsesDefault(&_MergedGlobals_951, @"StatusBarPromoteThermalWarning", _UIInternalPreferenceUpdateBool) & 1) == 0 && byte_1ED48B514)
  {
    v57 = [_orderedDisplayItemPlacements objectForKeyedSubscript:@"trailing"];
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

    [_orderedDisplayItemPlacements setObject:v58 forKeyedSubscript:@"trailing"];

    v69 = [_orderedDisplayItemPlacements objectForKeyedSubscript:@"systemUpdates"];
    v70 = [v69 mutableCopy];

    v71 = [v70 indexOfObjectPassingTest:&__block_literal_global_417_1];
    if (v71 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v70 removeObjectAtIndex:v71];
    }

    [_orderedDisplayItemPlacements setObject:v70 forKeyedSubscript:@"systemUpdates"];
  }

  return _orderedDisplayItemPlacements;
}

- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  orderedDisplayItemPlacements = [(_UIStatusBarVisualProvider_Split *)self orderedDisplayItemPlacements];

  if (!orderedDisplayItemPlacements)
  {
    _orderedDisplayItemPlacements = [(_UIStatusBarVisualProvider_FixedSplit *)self _orderedDisplayItemPlacements];
    [(_UIStatusBarVisualProvider_Split *)self setOrderedDisplayItemPlacements:_orderedDisplayItemPlacements];
  }

  orderedDisplayItemPlacements2 = [(_UIStatusBarVisualProvider_Split *)self orderedDisplayItemPlacements];
  v8 = [orderedDisplayItemPlacements2 objectForKeyedSubscript:identifierCopy];

  return v8;
}

- (id)styleAttributesForStyle:(int64_t)style
{
  v12.receiver = self;
  v12.super_class = _UIStatusBarVisualProvider_FixedSplit;
  v4 = [(_UIStatusBarVisualProvider_Split *)&v12 styleAttributesForStyle:style];
  [(_UIStatusBarVisualProvider_FixedSplit *)self referenceWidth];
  v6 = v5;
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen _unjailedReferenceBounds];
  Width = CGRectGetWidth(v14);

  mode = [v4 mode];
  if (mode != 2)
  {
    if (mode == 1)
    {
      v10 = 0;
      goto LABEL_6;
    }

    if (mode)
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

- (id)overriddenStyleAttributesForDisplayItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[(_UIStatusBarPillBackgroundActivityItem *)_UIStatusBarExpandedPillBackgroundActivityItem];

  if (v5 == identifierCopy)
  {
    v6 = +[_UIStatusBarStyleAttributes overriddenStyleAttributes];
    expandedPillFont = [(_UIStatusBarVisualProvider_FixedSplit *)self expandedPillFont];
    [v6 setFont:expandedPillFont];

    expandedPillFont2 = [(_UIStatusBarVisualProvider_FixedSplit *)self expandedPillFont];
    [v6 setSmallFont:expandedPillFont2];

    [(_UIStatusBarVisualProvider_FixedSplit *)self expandedPillSize];
    [v6 setIconScale:v9 / 21.3333333];
    [v6 setSymbolScale:2];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = _UIStatusBarVisualProvider_FixedSplit;
    v6 = [(_UIStatusBarVisualProvider_Split *)&v11 overriddenStyleAttributesForDisplayItemWithIdentifier:identifierCopy];
  }

  return v6;
}

- (void)itemCreated:(id)created
{
  createdCopy = created;
  v8.receiver = self;
  v8.super_class = _UIStatusBarVisualProvider_FixedSplit;
  [(_UIStatusBarVisualProvider_Split *)&v8 itemCreated:createdCopy];
  identifier = [createdCopy identifier];
  v6 = +[(_UIStatusBarItem *)_UIStatusBarExpandedPillBackgroundActivityItem];

  if (identifier == v6)
  {
    v7 = createdCopy;
    [(_UIStatusBarVisualProvider_FixedSplit *)self expandedPillSize];
    [v7 setPillSize:?];
  }
}

- (id)region:(id)region willSetDisplayItems:(id)items
{
  regionCopy = region;
  itemsCopy = items;
  identifier = [regionCopy identifier];
  if (![identifier isEqual:@"trailing"])
  {
    goto LABEL_11;
  }

  v8 = [itemsCopy count];

  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = [itemsCopy count];
  isKindOfClass = v9 < 3;
  identifier = [regionCopy layout];
  horizontalLayout = [identifier horizontalLayout];
  if (horizontalLayout)
  {
    horizontalLayout2 = [identifier horizontalLayout];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  if (v9 >= 3 && (isKindOfClass & 1) == 0)
  {
    v13 = objc_alloc_init(_UIStatusBarRegionAxisCenteringLayout);
    [(_UIStatusBarRegionAxisCenteringLayout *)v13 setMargin:0.0];
    [(_UIStatusBarRegionAxisCenteringLayout *)v13 setMaxNumberOfItems:3];
LABEL_10:
    [identifier setHorizontalLayout:v13];

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

  return itemsCopy;
}

- (void)orientationUpdatedFromOrientation:(int64_t)orientation
{
  statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  currentAggregatedData = [statusBar currentAggregatedData];
  [(_UIStatusBarVisualProvider_FixedSplit *)self _updateLowerRegionsWithData:currentAggregatedData];
}

- (void)dataUpdated:(id)updated
{
  updatedCopy = updated;
  [(_UIStatusBarVisualProvider_FixedSplit *)self _updateSystemNavigationWithData:updatedCopy];
  [(_UIStatusBarVisualProvider_FixedSplit *)self _updateLowerRegionsWithData:updatedCopy];
}

- (id)regionIdentifiersForPartWithIdentifier:(id)identifier
{
  v15[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = _UIStatusBarVisualProvider_FixedSplit;
  v5 = [(_UIStatusBarVisualProvider_Split *)&v13 regionIdentifiersForPartWithIdentifier:identifierCopy];
  if ([identifierCopy isEqual:@"leadingPartIdentifier"])
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

  if ([identifierCopy isEqual:@"trailingPartIdentifier"])
  {
    v11 = [v5 setByAddingObject:@"topTrailing"];
  }

  else
  {
    if ([identifierCopy isEqual:0x1EFB9C3D0])
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

- (void)_updateSystemNavigationWithData:(id)data
{
  dataCopy = data;
  backNavigationEntry = [dataCopy backNavigationEntry];
  if (backNavigationEntry)
  {
  }

  else
  {
    backgroundActivityEntry = [dataCopy backgroundActivityEntry];
    if (!backgroundActivityEntry)
    {
      goto LABEL_17;
    }

    v10 = backgroundActivityEntry;
    statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    currentAggregatedData = [statusBar currentAggregatedData];
    backNavigationEntry2 = [currentAggregatedData backNavigationEntry];
    isEnabled = [backNavigationEntry2 isEnabled];

    if (!isEnabled)
    {
      goto LABEL_17;
    }
  }

  backNavigationEntry3 = [dataCopy backNavigationEntry];
  v7 = backNavigationEntry3;
  if (backNavigationEntry3)
  {
    backNavigationEntry4 = backNavigationEntry3;
  }

  else
  {
    statusBar2 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    currentAggregatedData2 = [statusBar2 currentAggregatedData];
    backNavigationEntry4 = [currentAggregatedData2 backNavigationEntry];
  }

  backgroundActivityEntry2 = [dataCopy backgroundActivityEntry];
  v18 = backgroundActivityEntry2;
  if (backgroundActivityEntry2)
  {
    backgroundActivityEntry3 = backgroundActivityEntry2;
  }

  else
  {
    statusBar3 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    currentAggregatedData3 = [statusBar3 currentAggregatedData];
    backgroundActivityEntry3 = [currentAggregatedData3 backgroundActivityEntry];
  }

  statusBar4 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  regions = [statusBar4 regions];
  v24 = [regions objectForKeyedSubscript:@"leading"];
  action = [v24 action];

  [(_UIStatusBarVisualProvider_FixedSplit *)self leadingEdgeInsets];
  v27 = v26;
  if ([backNavigationEntry4 isEnabled] && (objc_msgSend(backgroundActivityEntry3, "isEnabled") & 1) == 0)
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
  [action setEnabled:v29];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __73___UIStatusBarVisualProvider_FixedSplit__updateSystemNavigationWithData___block_invoke;
  v31[3] = &unk_1E70F3590;
  v31[4] = self;
  [UIView _animateUsingSpringWithTension:0 friction:v31 interactive:0 animations:200.0 completion:20.0];

LABEL_17:
}

- (id)animationForBackgroundActivityPillAnimation:(id)animation duration:(double)duration scale:(double)scale
{
  animationCopy = animation;
  statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  currentAggregatedData = [statusBar currentAggregatedData];
  voiceControlEntry = [currentAggregatedData voiceControlEntry];
  isEnabled = [voiceControlEntry isEnabled];

  if (isEnabled)
  {
    statusBar2 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    _shouldReverseLayoutDirection = [statusBar2 _shouldReverseLayoutDirection];

    if (_shouldReverseLayoutDirection)
    {
      v15 = -1.0;
    }

    else
    {
      v15 = 1.0;
    }

    v16 = [_UIStatusBarAnimationFactory fadeAnimationWithDuration:duration scale:scale offset:v15 * 5.0, 0.0];
    [v16 setPriority:30];
    v17 = +[_UIStatusBarTimeItem pillTimeDisplayIdentifier];
    [animationCopy addSubAnimation:v16 forDisplayItemWithIdentifier:v17];

    v18 = [_UIStatusBarAnimationFactory fadeAnimationWithDuration:duration scale:scale offset:v15 * -5.0, 0.0];
    [v18 setPriority:30];
    v19 = +[(_UIStatusBarItem *)_UIStatusBarVoiceControlItem];
    [animationCopy addSubAnimation:v18 forDisplayItemWithIdentifier:v19];
  }

  [animationCopy setDelaysDependentItems:1];

  return animationCopy;
}

- (BOOL)_updateLowerRegionsWithData:(id)data
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarVisualProvider_FixedSplit;
  v4 = [(_UIStatusBarVisualProvider_Split *)&v7 _updateLowerRegionsWithData:data];
  if (v4)
  {
    statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    [statusBar updateWithAnimations:MEMORY[0x1E695E0F0]];
  }

  return v4;
}

@end