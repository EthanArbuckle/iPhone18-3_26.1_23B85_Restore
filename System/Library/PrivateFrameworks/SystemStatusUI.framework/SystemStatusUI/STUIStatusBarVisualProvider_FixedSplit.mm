@interface STUIStatusBarVisualProvider_FixedSplit
- (BOOL)_updateLowerRegionsWithData:(id)data;
- (CGRect)notchRect;
- (CGSize)expandedPillSize;
- (CGSize)notchSize;
- (CGSize)pillSize;
- (CGSize)smallPillSize;
- (NSDirectionalEdgeInsets)_edgeInsetsFromCenteringEdgeInset:(double)inset trailing:(BOOL)trailing;
- (NSDirectionalEdgeInsets)expandedEdgeInsets;
- (UIFont)pillFont;
- (UIFont)pillSmallFont;
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
- (void)avoidanceFrameUpdatedFromFrame:(CGRect)frame withAnimationSettings:(id)settings options:(unint64_t)options;
- (void)dataUpdated:(id)updated;
- (void)itemCreated:(id)created;
- (void)orientationUpdatedFromOrientation:(int64_t)orientation;
@end

@implementation STUIStatusBarVisualProvider_FixedSplit

- (double)nativeDisplayWidth
{
  statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  _effectiveTargetScreen = [statusBar _effectiveTargetScreen];
  [_effectiveTargetScreen nativeBounds];
  v5 = v4;

  return v5;
}

- (double)referenceWidth
{
  statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
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
  [(STUIStatusBarVisualProvider_FixedSplit *)self leadingPillInset];
  statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  _effectiveTargetScreen = [statusBar _effectiveTargetScreen];
  [_effectiveTargetScreen _scale];
  UIRoundToScale();
  v6 = v5;

  return v6;
}

- (double)leadingPillInset
{
  [(STUIStatusBarVisualProvider_FixedSplit *)self pillSize];
  statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  _effectiveTargetScreen = [statusBar _effectiveTargetScreen];
  [_effectiveTargetScreen _scale];
  UIRoundToScale();
  v6 = v5;

  return v6;
}

- (double)leadingCenteringEdgeInset
{
  [(STUIStatusBarVisualProvider_FixedSplit *)self notchRect];
  [(STUIStatusBarVisualProvider_Split *)self cornerRadius];
  statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  _effectiveTargetScreen = [statusBar _effectiveTargetScreen];
  [_effectiveTargetScreen _scale];
  UIRoundToScale();
  v6 = v5;
  [objc_opt_class() leadingCenteringOffset];
  v8 = v6 + v7;

  return v8;
}

- (double)trailingCenteringEdgeInset
{
  [(STUIStatusBarVisualProvider_FixedSplit *)self leadingCenteringEdgeInset];
  v3 = v2;
  [objc_opt_class() trailingCenteringOffset];
  return v3 + v4;
}

- (double)pillCenteringEdgeInset
{
  [(STUIStatusBarVisualProvider_FixedSplit *)self leadingCenteringEdgeInset];
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
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v3 = unk_280C1E800;
  if (unk_280C1E800)
  {
    v4 = byte_280C1E7C6 == IsBoldTextEnabled;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    byte_280C1E7C6 = IsBoldTextEnabled;
    v5 = MEMORY[0x277D74300];
    [objc_opt_class() pillFontSize];
    v6 = [v5 systemFontOfSize:? weight:?];
    v7 = unk_280C1E800;
    unk_280C1E800 = v6;

    v3 = unk_280C1E800;
  }

  return v3;
}

- (UIFont)pillSmallFont
{
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v3 = unk_280C1E808;
  if (unk_280C1E808)
  {
    v4 = byte_280C1E7C7 == IsBoldTextEnabled;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    byte_280C1E7C7 = IsBoldTextEnabled;
    v5 = MEMORY[0x277D74300];
    [objc_opt_class() pillFontSize];
    v6 = [v5 systemFontOfSize:? weight:?];
    v7 = unk_280C1E808;
    unk_280C1E808 = v6;

    v3 = unk_280C1E808;
  }

  return v3;
}

- (id)expandedPillFont
{
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v3 = qword_280C1E810;
  if (qword_280C1E810)
  {
    v4 = byte_280C1E7C8 == IsBoldTextEnabled;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    byte_280C1E7C8 = IsBoldTextEnabled;
    v5 = MEMORY[0x277D74300];
    [objc_opt_class() expandedPillFontSize];
    v6 = [v5 systemFontOfSize:? weight:?];
    v7 = qword_280C1E810;
    qword_280C1E810 = v6;

    v3 = qword_280C1E810;
  }

  return v3;
}

- (NSDirectionalEdgeInsets)_edgeInsetsFromCenteringEdgeInset:(double)inset trailing:(BOOL)trailing
{
  trailingCopy = trailing;
  normalIconSize = [(STUIStatusBarVisualProvider_Split *)self normalIconSize];
  [STUIStatusBarBatteryView _statusBarIntrinsicContentSizeForIconSize:normalIconSize];
  v9 = v8;
  [STUIStatusBarCellularSignalView _intrinsicContentSizeForNumberOfBars:4 iconSize:normalIconSize];
  v11 = v9 + v10;
  [STUIStatusBarWifiSignalView _intrinsicContentSizeForNumberOfBars:3 iconSize:normalIconSize];
  v13 = v11 + v12;
  [(STUIStatusBarVisualProvider_Split *)self itemSpacing];
  v15 = v13 + v14 * 2.0;
  v16 = inset - v15 * 0.5;
  [(STUIStatusBarVisualProvider_FixedSplit *)self referenceWidth];
  v18 = v17;
  [(STUIStatusBarVisualProvider_FixedSplit *)self notchSize];
  v20 = (v18 - v19) * 0.5 - (v15 + v16);
  [(STUIStatusBarVisualProvider_Split *)self baselineBottomInset];
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

- (NSDirectionalEdgeInsets)expandedEdgeInsets
{
  if (self)
  {
    [(STUIStatusBarVisualProvider_FixedSplit *)self leadingCenteringEdgeInset];
    [(STUIStatusBarVisualProvider_FixedSplit *)self _edgeInsetsFromCenteringEdgeInset:0 trailing:?];
    v4 = v3;
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
    v4 = 0.0;
  }

  [objc_opt_class() expandedEdgeInset];
  v8 = v7;
  [objc_opt_class() trailingCenteringOffset];
  v10 = v8 + v9;
  [objc_opt_class() expandedEdgeInset];
  v12 = v11;
  v13 = v4;
  v14 = v10;
  v15 = v6;
  result.trailing = v12;
  result.bottom = v15;
  result.leading = v14;
  result.top = v13;
  return result;
}

- (CGRect)notchRect
{
  if ((*&self->_fixedSplitVisualProviderFlags & 1) == 0)
  {
    *&self->_fixedSplitVisualProviderFlags |= 1u;
    statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    _effectiveTargetScreen = [statusBar _effectiveTargetScreen];

    _exclusionArea = [_effectiveTargetScreen _exclusionArea];
    [_exclusionArea rect];
    v7 = v6;
    [_effectiveTargetScreen _nativeScale];
    v9 = v8 * v7;
    [_effectiveTargetScreen _scale];
    v11 = v9 / v10;
    [_exclusionArea rect];
    v13 = v12;
    [_effectiveTargetScreen _nativeScale];
    v15 = v14 * v13;
    [_effectiveTargetScreen _scale];
    v17 = v15 / v16;
    [_exclusionArea rect];
    v19 = v18;
    [_effectiveTargetScreen _nativeScale];
    v21 = v20 * v19;
    [_effectiveTargetScreen _scale];
    v23 = v21 / v22;
    [_exclusionArea rect];
    v25 = v24;
    [_effectiveTargetScreen _nativeScale];
    v27 = v26 * v25;
    [_effectiveTargetScreen _scale];
    self->_notchRect.origin.x = v11;
    self->_notchRect.origin.y = v17;
    self->_notchRect.size.width = v23;
    self->_notchRect.size.height = v27 / v28;
  }

  x = self->_notchRect.origin.x;
  y = self->_notchRect.origin.y;
  width = self->_notchRect.size.width;
  height = self->_notchRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)notchSize
{
  [(STUIStatusBarVisualProvider_FixedSplit *)self notchRect];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (id)setupInContainerView:(id)view
{
  v278[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB18];
  viewCopy = view;
  array = [v4 array];
  array2 = [MEMORY[0x277CBEB18] array];
  [objc_opt_class() height];
  v269 = v7;
  [(STUIStatusBarVisualProvider_FixedSplit *)self referenceWidth];
  v9 = v8;
  [(STUIStatusBarVisualProvider_FixedSplit *)self notchSize];
  v11 = v10;
  v13 = v12;
  v14 = (v9 - v10) * 0.5;
  [(STUIStatusBarVisualProvider_Split *)self itemSpacing];
  v271 = v15;
  [(STUIStatusBarVisualProvider_FixedSplit *)self leadingItemSpacing];
  v259 = v16;
  [(STUIStatusBarVisualProvider_FixedSplit *)self leadingPillSpacing];
  v262 = v17;
  [(STUIStatusBarVisualProvider_FixedSplit *)self leadingPillInset];
  v263 = v18;
  [(STUIStatusBarVisualProvider_FixedSplit *)self pillCenteringEdgeInset];
  v260 = v19;
  [(STUIStatusBarVisualProvider_FixedSplit *)self pillSize];
  v261 = v20;
  v272 = v21;
  if (self)
  {
    [(STUIStatusBarVisualProvider_FixedSplit *)self leadingCenteringEdgeInset];
    [(STUIStatusBarVisualProvider_FixedSplit *)self _edgeInsetsFromCenteringEdgeInset:0 trailing:?];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v273 = v28;
    [(STUIStatusBarVisualProvider_FixedSplit *)self trailingCenteringEdgeInset];
    [(STUIStatusBarVisualProvider_FixedSplit *)self _edgeInsetsFromCenteringEdgeInset:1 trailing:?];
    v264 = v29;
    v265 = v30;
    v32 = v31;
    v267 = v33;
    [objc_opt_class() trailingEdgeInsetLeadingAdjustment];
    v266 = v32 - v34;
  }

  else
  {
    v23 = 0.0;
    v273 = 0.0;
    v27 = 0.0;
    v25 = 0.0;
    v265 = 0.0;
    v266 = 0.0;
    v267 = 0.0;
    v264 = 0.0;
  }

  v35 = objc_alloc_init(MEMORY[0x277D756D0]);
  [v35 setIdentifier:@"cutout"];
  topAnchor = [v35 topAnchor];
  topAnchor2 = [viewCopy topAnchor];
  v38 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [array addObject:v38];

  trailingAnchor = [viewCopy trailingAnchor];
  trailingAnchor2 = [v35 trailingAnchor];
  v41 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v14];
  [array addObject:v41];

  widthAnchor = [v35 widthAnchor];
  v43 = [widthAnchor constraintEqualToConstant:v11];
  [array addObject:v43];

  heightAnchor = [v35 heightAnchor];
  v45 = [heightAnchor constraintEqualToConstant:v13];
  [array addObject:v45];

  [viewCopy addLayoutGuide:v35];
  [(STUIStatusBarVisualProvider_Split *)self setCutoutLayoutGuide:v35];

  v46 = objc_alloc_init(MEMORY[0x277D756D0]);
  [v46 setIdentifier:@"UIStatusBarMainRegions"];
  trailingAnchor3 = [v46 trailingAnchor];
  v274 = viewCopy;
  trailingAnchor4 = [viewCopy trailingAnchor];
  v49 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [array addObject:v49];

  widthAnchor2 = [v46 widthAnchor];
  v51 = [widthAnchor2 constraintEqualToConstant:v9];
  [array addObject:v51];

  heightAnchor2 = [v46 heightAnchor];
  v53 = [heightAnchor2 constraintEqualToConstant:v13];
  [array addObject:v53];

  bottomAnchor = [v46 bottomAnchor];
  cutoutLayoutGuide = [(STUIStatusBarVisualProvider_Split *)self cutoutLayoutGuide];
  bottomAnchor2 = [cutoutLayoutGuide bottomAnchor];
  v57 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [array addObject:v57];

  [viewCopy addLayoutGuide:v46];
  [(STUIStatusBarVisualProvider_Split *)self setMainRegionsLayoutGuide:v46];

  v58 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"leading"];
  v59 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v60 = objc_alloc_init(STUIStatusBarRegionAxisCenteringLayout);
  [(STUIStatusBarRegionAxisCenteringLayout *)v60 setInterspace:v259];
  [(STUIStatusBarRegionAxisCenteringLayout *)v60 setMaxNumberOfItems:3];
  [(STUIStatusBarRegionAxesLayout *)v59 setHorizontalLayout:v60];

  v61 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:5];
  [(STUIStatusBarRegionAxesLayout *)v59 setVerticalLayout:v61];

  [(STUIStatusBarRegion *)v58 setLayout:v59];
  [(STUIStatusBarRegion *)v58 setActionInsets:-v23, -v25, -(v269 + v27 - v13), -v273];
  layoutItem = [(STUIStatusBarRegion *)v58 layoutItem];
  topAnchor3 = [layoutItem topAnchor];
  mainRegionsLayoutGuide = [(STUIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  topAnchor4 = [mainRegionsLayoutGuide topAnchor];
  v66 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:v23];
  [array addObject:v66];

  bottomAnchor3 = [layoutItem bottomAnchor];
  mainRegionsLayoutGuide2 = [(STUIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  bottomAnchor4 = [mainRegionsLayoutGuide2 bottomAnchor];
  v70 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-v27];
  leadingBottomConstraint = self->_leadingBottomConstraint;
  self->_leadingBottomConstraint = v70;

  [array addObject:self->_leadingBottomConstraint];
  leadingAnchor = [layoutItem leadingAnchor];
  mainRegionsLayoutGuide3 = [(STUIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  leadingAnchor2 = [mainRegionsLayoutGuide3 leadingAnchor];
  v75 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v25];
  [array addObject:v75];

  v270 = layoutItem;
  widthAnchor3 = [layoutItem widthAnchor];
  v77 = [widthAnchor3 constraintEqualToConstant:v14 - (v273 + v25)];
  [array addObject:v77];

  [v274 _ui_addSubLayoutItem:layoutItem];
  [array2 addObject:v58];

  v78 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"pill"];
  v79 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v80 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  [(STUIStatusBarRegionAxesLayout *)v79 setHorizontalLayout:v80];

  v81 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  [(STUIStatusBarRegionAxesLayout *)v79 setVerticalLayout:v81];

  [(STUIStatusBarRegion *)v78 setLayout:v79];
  [(STUIStatusBarRegion *)v78 setActionInsets:-100.0, -20.0, -10.0, -20.0];
  layoutItem2 = [(STUIStatusBarRegion *)v78 layoutItem];
  bottomAnchor5 = [layoutItem2 bottomAnchor];
  cutoutLayoutGuide2 = [(STUIStatusBarVisualProvider_Split *)self cutoutLayoutGuide];
  bottomAnchor6 = [cutoutLayoutGuide2 bottomAnchor];
  v86 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  [array addObject:v86];

  layoutItem3 = [(STUIStatusBarRegion *)v78 layoutItem];
  centerXAnchor = [layoutItem3 centerXAnchor];
  leadingAnchor3 = [v274 leadingAnchor];
  v90 = [centerXAnchor constraintEqualToAnchor:leadingAnchor3 constant:v260];
  [array addObject:v90];

  layoutItem4 = [(STUIStatusBarRegion *)v78 layoutItem];
  widthAnchor4 = [layoutItem4 widthAnchor];
  v93 = [widthAnchor4 constraintEqualToConstant:v261];
  [array addObject:v93];

  layoutItem5 = [(STUIStatusBarRegion *)v78 layoutItem];
  heightAnchor3 = [layoutItem5 heightAnchor];
  v96 = [heightAnchor3 constraintEqualToConstant:v272];
  [array addObject:v96];

  layoutItem6 = [(STUIStatusBarRegion *)v78 layoutItem];
  [v274 _ui_addSubLayoutItem:layoutItem6];

  [array2 addObject:v78];
  lastObject = [array2 lastObject];
  pillRegionCoordinator = [(STUIStatusBarVisualProvider_Phone *)self pillRegionCoordinator];
  [pillRegionCoordinator setPillRegion:lastObject];

  v100 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"pillContent"];
  pillRegionCoordinator2 = [(STUIStatusBarVisualProvider_Phone *)self pillRegionCoordinator];
  pillRegion = [pillRegionCoordinator2 pillRegion];
  [(STUIStatusBarRegion *)v100 setEnabilityRegion:pillRegion];

  v103 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v104 = objc_alloc_init(STUIStatusBarRegionAxisCenteringLayout);
  [(STUIStatusBarRegionAxisCenteringLayout *)v104 setInterspace:v262];
  [(STUIStatusBarRegionAxisCenteringLayout *)v104 setMaxNumberOfItems:2];
  [(STUIStatusBarRegionAxesLayout *)v103 setHorizontalLayout:v104];

  v105 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:1];
  [(STUIStatusBarRegionAxesLayout *)v103 setVerticalLayout:v105];

  [(STUIStatusBarRegion *)v100 setLayout:v103];
  v106 = +[STUIStatusBarStyleAttributes overriddenStyleAttributes];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v106 setTextColor:whiteColor];

  whiteColor2 = [MEMORY[0x277D75348] whiteColor];
  [v106 setImageTintColor:whiteColor2];

  v109 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.3];
  [v106 setImageDimmedTintColor:v109];

  pillFont = [(STUIStatusBarVisualProvider_FixedSplit *)self pillFont];
  [v106 setFont:pillFont];

  pillSmallFont = [(STUIStatusBarVisualProvider_FixedSplit *)self pillSmallFont];
  [v106 setSmallFont:pillSmallFont];

  pillFont2 = [(STUIStatusBarVisualProvider_FixedSplit *)self pillFont];
  [v106 setEmphasizedFont:pillFont2];

  [v106 setSymbolScale:2];
  [(STUIStatusBarRegion *)v100 setOverriddenStyleAttributes:v106];
  pillRegionCoordinator3 = [(STUIStatusBarVisualProvider_Phone *)self pillRegionCoordinator];
  pillRegion2 = [pillRegionCoordinator3 pillRegion];
  layoutItem7 = [pillRegion2 layoutItem];

  layoutItem8 = [(STUIStatusBarRegion *)v100 layoutItem];
  topAnchor5 = [layoutItem8 topAnchor];
  topAnchor6 = [layoutItem7 topAnchor];
  v119 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  [array addObject:v119];

  layoutItem9 = [(STUIStatusBarRegion *)v100 layoutItem];
  bottomAnchor7 = [layoutItem9 bottomAnchor];
  bottomAnchor8 = [layoutItem7 bottomAnchor];
  v123 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
  [array addObject:v123];

  layoutItem10 = [(STUIStatusBarRegion *)v100 layoutItem];
  leadingAnchor4 = [layoutItem10 leadingAnchor];
  leadingAnchor5 = [layoutItem7 leadingAnchor];
  v127 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:v263];
  [array addObject:v127];

  layoutItem11 = [(STUIStatusBarRegion *)v100 layoutItem];
  trailingAnchor5 = [layoutItem11 trailingAnchor];
  trailingAnchor6 = [layoutItem7 trailingAnchor];
  v131 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-v263];
  [array addObject:v131];

  layoutItem12 = [(STUIStatusBarRegion *)v100 layoutItem];
  [v274 _ui_addSubLayoutItem:layoutItem12];

  [array2 addObject:v100];
  v133 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"trailing"];
  v134 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v135 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:5];
  [(STUIStatusBarRegionAxesLayout *)v134 setVerticalLayout:v135];

  [(STUIStatusBarRegion *)v133 setLayout:v134];
  [(STUIStatusBarRegion *)v133 setActionInsets:-100.0, -20.0, -10.0, -20.0];
  layoutItem13 = [(STUIStatusBarRegion *)v133 layoutItem];
  v137 = +[STUIStatusBarStyleAttributes overriddenStyleAttributes];
  emphasizedFont = [(STUIStatusBarVisualProvider_Split *)self emphasizedFont];
  [v137 setFont:emphasizedFont];

  normalFont = [(STUIStatusBarVisualProvider_Split *)self normalFont];
  [v137 setSmallFont:normalFont];

  [v137 setImageNamePrefixes:&unk_287D1B080];
  [(STUIStatusBarRegion *)v133 setOverriddenStyleAttributes:v137];
  topAnchor7 = [layoutItem13 topAnchor];
  mainRegionsLayoutGuide4 = [(STUIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  topAnchor8 = [mainRegionsLayoutGuide4 topAnchor];
  v143 = [topAnchor7 constraintEqualToAnchor:topAnchor8 constant:v264];
  [array addObject:v143];

  bottomAnchor9 = [layoutItem13 bottomAnchor];
  mainRegionsLayoutGuide5 = [(STUIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  bottomAnchor10 = [mainRegionsLayoutGuide5 bottomAnchor];
  v147 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10 constant:-v265];
  [array addObject:v147];

  trailingAnchor7 = [layoutItem13 trailingAnchor];
  mainRegionsLayoutGuide6 = [(STUIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  trailingAnchor8 = [mainRegionsLayoutGuide6 trailingAnchor];
  v151 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-v267];
  [array addObject:v151];

  widthAnchor5 = [layoutItem13 widthAnchor];
  v153 = [widthAnchor5 constraintEqualToConstant:v14 - (v266 + v267)];
  [array addObject:v153];

  [v274 _ui_addSubLayoutItem:layoutItem13];
  [array2 addObject:v133];

  v154 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"systemUpdates"];
  v155 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v156 = objc_alloc_init(STUIStatusBarRegionAxisCenteringLayout);
  [(STUIStatusBarRegionAxisCenteringLayout *)v156 setMaxNumberOfItems:3];
  [(STUIStatusBarRegionAxesLayout *)v155 setHorizontalLayout:v156];

  v157 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:5];
  [(STUIStatusBarRegionAxesLayout *)v155 setVerticalLayout:v157];

  [(STUIStatusBarRegion *)v154 setLayout:v155];
  v158 = +[STUIStatusBarStyleAttributes overriddenStyleAttributes];
  [v158 setImageNamePrefixes:&unk_287D1B098];
  systemUpdateFont = [(STUIStatusBarVisualProvider_Split *)self systemUpdateFont];
  [v158 setFont:systemUpdateFont];

  systemUpdateFont2 = [(STUIStatusBarVisualProvider_Split *)self systemUpdateFont];
  [v158 setEmphasizedFont:systemUpdateFont2];

  [v158 setSymbolScale:2];
  [(STUIStatusBarRegion *)v154 setOverriddenStyleAttributes:v158];
  layoutItem14 = [(STUIStatusBarRegion *)v154 layoutItem];
  topAnchor9 = [layoutItem14 topAnchor];
  topAnchor10 = [layoutItem13 topAnchor];
  v164 = [topAnchor9 constraintEqualToAnchor:topAnchor10];
  [array addObject:v164];

  layoutItem15 = [(STUIStatusBarRegion *)v154 layoutItem];
  bottomAnchor11 = [layoutItem15 bottomAnchor];
  bottomAnchor12 = [layoutItem13 bottomAnchor];
  v168 = [bottomAnchor11 constraintEqualToAnchor:bottomAnchor12];
  [array addObject:v168];

  layoutItem16 = [(STUIStatusBarRegion *)v154 layoutItem];
  rightAnchor = [layoutItem16 rightAnchor];
  rightAnchor2 = [layoutItem13 rightAnchor];
  v172 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [array addObject:v172];

  layoutItem17 = [(STUIStatusBarRegion *)v154 layoutItem];
  leftAnchor = [layoutItem17 leftAnchor];
  leftAnchor2 = [layoutItem13 leftAnchor];
  v176 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [array addObject:v176];

  layoutItem18 = [(STUIStatusBarRegion *)v154 layoutItem];
  [v274 _ui_addSubLayoutItem:layoutItem18];

  [array2 addObject:v154];
  v178 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"controlCenter"];
  v179 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v180 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  [(STUIStatusBarRegionAxesLayout *)v179 setHorizontalLayout:v180];

  v181 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  [(STUIStatusBarRegionAxesLayout *)v179 setVerticalLayout:v181];

  [(STUIStatusBarRegion *)v178 setLayout:v179];
  layoutItem19 = [(STUIStatusBarRegion *)v178 layoutItem];
  topAnchor11 = [layoutItem19 topAnchor];
  cutoutLayoutGuide3 = [(STUIStatusBarVisualProvider_Split *)self cutoutLayoutGuide];
  bottomAnchor13 = [cutoutLayoutGuide3 bottomAnchor];
  v186 = [topAnchor11 constraintEqualToAnchor:bottomAnchor13 constant:6.0];
  [array addObject:v186];

  layoutItem20 = [(STUIStatusBarRegion *)v178 layoutItem];
  heightAnchor4 = [layoutItem20 heightAnchor];
  [(STUIStatusBarVisualProvider_Split *)self grabberHeight];
  v189 = [heightAnchor4 constraintEqualToConstant:?];
  [array addObject:v189];

  layoutItem21 = [(STUIStatusBarRegion *)v178 layoutItem];
  leftAnchor3 = [layoutItem21 leftAnchor];
  leftAnchor4 = [layoutItem13 leftAnchor];
  v193 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4 constant:10.0];
  [array addObject:v193];

  layoutItem22 = [(STUIStatusBarRegion *)v178 layoutItem];
  rightAnchor3 = [layoutItem22 rightAnchor];
  rightAnchor4 = [layoutItem13 rightAnchor];
  v197 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4 constant:-10.0];
  [array addObject:v197];

  layoutItem23 = [(STUIStatusBarRegion *)v178 layoutItem];
  [v274 _ui_addSubLayoutItem:layoutItem23];

  [array2 addObject:v178];
  v276 = array2;
  v277 = array;
  [(STUIStatusBarVisualProvider_Split *)self _setupExpandedRegionsInContainerView:v274 sensorHeight:&v277 constraints:&v276 regions:v13];
  v199 = v277;

  v268 = v276;
  v200 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"bottomLeading"];
  v201 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v202 = objc_alloc_init(STUIStatusBarRegionAxisStackingLayout);
  [(STUIStatusBarRegionAxisStackingLayout *)v202 setAlignment:3];
  [(STUIStatusBarRegionAxisStackingLayout *)v202 setInterspace:v271];
  [(STUIStatusBarRegionAxesLayout *)v201 setHorizontalLayout:v202];

  v203 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:6];
  [(STUIStatusBarRegionAxesLayout *)v201 setVerticalLayout:v203];

  [(STUIStatusBarRegion *)v200 setLayout:v201];
  [(STUIStatusBarRegion *)v200 setActionInsets:-100.0, -12.0, -10.0, -12.0];
  layoutItem24 = [(STUIStatusBarRegion *)v200 layoutItem];
  leadingAnchor6 = [layoutItem24 leadingAnchor];
  leadingAnchor7 = [v274 leadingAnchor];
  [(STUIStatusBarVisualProvider_Split *)self bottomLeadingSpace];
  v207 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7 constant:?];
  [v199 addObject:v207];

  layoutItem25 = [(STUIStatusBarRegion *)v200 layoutItem];
  bottomAnchor14 = [layoutItem25 bottomAnchor];
  topAnchor12 = [v274 topAnchor];
  [objc_opt_class() height];
  v212 = [bottomAnchor14 constraintEqualToAnchor:topAnchor12 constant:v211 + -6.0];
  [v199 addObject:v212];

  layoutItem26 = [(STUIStatusBarRegion *)v200 layoutItem];
  widthAnchor6 = [layoutItem26 widthAnchor];
  [(STUIStatusBarVisualProvider_FixedSplit *)self notchRect];
  v216 = floor(v215);
  [objc_opt_class() additionalBottomLeadingMargin];
  v217 = [widthAnchor6 constraintEqualToConstant:v216 - v217];
  [v199 addObject:v217];

  layoutItem27 = [(STUIStatusBarRegion *)v200 layoutItem];
  heightAnchor5 = [layoutItem27 heightAnchor];
  v221 = [heightAnchor5 constraintEqualToConstant:13.3333333];
  [v199 addObject:v221];

  layoutItem28 = [(STUIStatusBarRegion *)v200 layoutItem];
  [v274 _ui_insertSubLayoutItem:layoutItem28 atIndex:0];

  [v268 addObject:v200];
  v223 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"topTrailing"];
  v224 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v225 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  [(STUIStatusBarRegionAxesLayout *)v224 setHorizontalLayout:v225];

  v226 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:3];
  [(STUIStatusBarRegionAxesLayout *)v224 setVerticalLayout:v226];

  [(STUIStatusBarRegion *)v223 setLayout:v224];
  layoutItem29 = [(STUIStatusBarRegion *)v223 layoutItem];
  leadingAnchor8 = [layoutItem29 leadingAnchor];
  cutoutLayoutGuide4 = [(STUIStatusBarVisualProvider_Split *)self cutoutLayoutGuide];
  trailingAnchor9 = [cutoutLayoutGuide4 trailingAnchor];
  v231 = [leadingAnchor8 constraintEqualToAnchor:trailingAnchor9 constant:6.66666667];
  [v199 addObject:v231];

  layoutItem30 = [(STUIStatusBarRegion *)v223 layoutItem];
  topAnchor13 = [layoutItem30 topAnchor];
  topAnchor14 = [v274 topAnchor];
  v235 = [topAnchor13 constraintEqualToAnchor:topAnchor14 constant:6.33333333];
  [v199 addObject:v235];

  layoutItem31 = [(STUIStatusBarRegion *)v223 layoutItem];
  trailingAnchor10 = [layoutItem31 trailingAnchor];
  trailingAnchor11 = [v274 trailingAnchor];
  v239 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11 constant:-30.0];
  [v199 addObject:v239];

  layoutItem32 = [(STUIStatusBarRegion *)v223 layoutItem];
  heightAnchor6 = [layoutItem32 heightAnchor];
  v242 = [heightAnchor6 constraintEqualToConstant:4.0];
  [v199 addObject:v242];

  layoutItem33 = [(STUIStatusBarRegion *)v223 layoutItem];
  [v274 _ui_addSubLayoutItem:layoutItem33];

  [v268 addObject:v223];
  v244 = STUIStatusBarAddLumaView(v274, v199, v270, 0, v272);
  [(STUIStatusBarVisualProvider_Split *)self setLeadingBackgroundLumaView:v244];

  v245 = STUIStatusBarAddLumaView(v274, v199, layoutItem13, 0, v272);

  [(STUIStatusBarVisualProvider_Split *)self setTrailingBackgroundLumaView:v245];
  v246 = objc_alloc(MEMORY[0x277D760C8]);
  leadingBackgroundLumaView = [(STUIStatusBarVisualProvider_Split *)self leadingBackgroundLumaView];
  v278[0] = leadingBackgroundLumaView;
  trailingBackgroundLumaView = [(STUIStatusBarVisualProvider_Split *)self trailingBackgroundLumaView];
  v278[1] = trailingBackgroundLumaView;
  v249 = [MEMORY[0x277CBEA60] arrayWithObjects:v278 count:2];
  v250 = [v246 initWithTransitionBoundaries:self minimumDifference:v249 delegate:0.4 views:{0.7, 0.5}];
  [(STUIStatusBarVisualProvider_iOS *)self setLumaTrackingGroup:v250];

  [MEMORY[0x277CCAAD0] activateConstraints:v199];
  v251 = +[STUIStatusBarSettingsDomain rootSettings];
  visualProviderSettings = [v251 visualProviderSettings];
  [visualProviderSettings backgroundActivityCoalescingDelay];
  v254 = v253;

  if (v254 > 0.0)
  {
    statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    dataAggregator = [statusBar dataAggregator];
    v257 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D6BD78]];
    [dataAggregator beginCoalescingUpdatesForEntryKeys:v257 delay:v254];
  }

  return v268;
}

- (id)_orderedDisplayItemPlacements
{
  v75[1] = *MEMORY[0x277D85DE8];
  v65.receiver = self;
  v65.super_class = STUIStatusBarVisualProvider_FixedSplit;
  _orderedDisplayItemPlacements = [(STUIStatusBarVisualProvider_Split *)&v65 _orderedDisplayItemPlacements];
  [(STUIStatusBarVisualProvider_FixedSplit *)self leadingSmallPillSpacing];
  v5 = v4;
  [(STUIStatusBarVisualProvider_FixedSplit *)self leadingItemSpacing];
  v7 = [STUIStatusBarDisplayItemPlacement spacerPlacementWithSize:1013 priority:v5 + v6 * -2.0, 0.0];
  v8 = [_orderedDisplayItemPlacements objectForKeyedSubscript:@"leading"];
  v9 = [v8 mutableCopy];

  voiceControlPillPlacement = [(STUIStatusBarVisualProvider_Split *)self voiceControlPillPlacement];
  v11 = [v9 indexOfObject:voiceControlPillPlacement];

  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    voiceControlPillPlacement2 = [(STUIStatusBarVisualProvider_Split *)self voiceControlPillPlacement];
    v75[0] = voiceControlPillPlacement2;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:1];
    v14 = [v7 requiringAllPlacements:v13];
    [v9 insertObject:v14 atIndex:v11];

    [_orderedDisplayItemPlacements setObject:v9 forKeyedSubscript:@"leading"];
  }

  v61 = v7;
  v62 = v9;
  v15 = +[STUIStatusBarTimeItem pillTimeDisplayIdentifier];
  v63 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v15 priority:1900];

  v16 = +[(STUIStatusBarItem *)STUIStatusBarVoiceControlItem];
  v17 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v16 priority:1800];

  v18 = +[(STUIStatusBarItem *)STUIStatusBarPillBackgroundActivityItem];
  v19 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v18 priority:1950];
  v74[0] = v63;
  v74[1] = v17;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:2];
  v21 = [v19 excludingPlacements:v20];

  pillRegionCoordinator = [(STUIStatusBarVisualProvider_Phone *)self pillRegionCoordinator];
  [pillRegionCoordinator setPillIconPlacement:v21];

  v23 = +[(STUIStatusBarBackgroundActivityItem *)STUIStatusBarPillBackgroundActivityItem];
  v24 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v23 priority:1949];
  v73 = v21;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v73 count:1];
  v26 = [v24 requiringAllPlacements:v25];

  v71[0] = @"pill";
  v27 = +[(STUIStatusBarBackgroundActivityItem *)STUIStatusBarPillBackgroundActivityItem];
  v28 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v27 priority:2000];
  v69[0] = @"leading";
  v69[1] = @"bottomLeading";
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:2];
  v30 = [v28 excludingAllPlacementsInRegions:v29];
  v70 = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
  v71[1] = @"pillContent";
  v72[0] = v31;
  v59 = v26;
  v60 = v21;
  v68[0] = v21;
  v68[1] = v26;
  v68[2] = v63;
  v68[3] = v17;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:4];
  v72[1] = v32;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:2];
  [_orderedDisplayItemPlacements addEntriesFromDictionary:v33];

  v34 = +[STUIStatusBarSettingsDomain rootSettings];
  visualProviderSettings = [v34 visualProviderSettings];
  LODWORD(v32) = [visualProviderSettings enableActivity];

  if (v32)
  {
    v36 = +[STUIStatusBarActivityItem_Split pillDisplayIdentifier];
    v37 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v36 priority:100];
    v67 = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v67 count:1];
    [_orderedDisplayItemPlacements setObject:v38 forKeyedSubscript:@"topTrailing"];
  }

  v39 = +[STUIStatusBarSettingsDomain rootSettings];
  visualProviderSettings2 = [v39 visualProviderSettings];
  promoteThermalWarning = [visualProviderSettings2 promoteThermalWarning];

  v42 = v62;
  if (promoteThermalWarning)
  {
    v43 = [_orderedDisplayItemPlacements objectForKeyedSubscript:@"trailing"];
    v44 = [v43 mutableCopy];

    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __71__STUIStatusBarVisualProvider_FixedSplit__orderedDisplayItemPlacements__block_invoke;
    v64[3] = &unk_279D392D8;
    v64[4] = self;
    v45 = [v44 indexOfObjectPassingTest:v64];
    v46 = [v44 indexOfObjectPassingTest:&__block_literal_global_452];
    if (v46 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v47 = 0;
    }

    else
    {
      v47 = [v44 objectAtIndexedSubscript:v46];
    }

    v48 = [v44 indexOfObjectPassingTest:&__block_literal_global_454];
    if (v48 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v49 = 0;
    }

    else
    {
      v50 = [v44 objectAtIndexedSubscript:v48];
      v49 = v50;
      if (v45 != 0x7FFFFFFFFFFFFFFFLL && v47 && v50)
      {
        v51 = +[(STUIStatusBarItem *)STUIStatusBarThermalItem];
        v52 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v51 priority:1110];
        v66[0] = v47;
        v66[1] = v49;
        v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:2];
        v54 = [v52 excludingPlacements:v53];
        [v44 insertObject:v54 atIndex:v45];

        v42 = v62;
      }
    }

    [_orderedDisplayItemPlacements setObject:v44 forKeyedSubscript:@"trailing"];

    v55 = [_orderedDisplayItemPlacements objectForKeyedSubscript:@"systemUpdates"];
    v56 = [v55 mutableCopy];

    v57 = [v56 indexOfObjectPassingTest:&__block_literal_global_456];
    if (v57 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v56 removeObjectAtIndex:v57];
    }

    [_orderedDisplayItemPlacements setObject:v56 forKeyedSubscript:@"systemUpdates"];
  }

  return _orderedDisplayItemPlacements;
}

- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  orderedDisplayItemPlacements = [(STUIStatusBarVisualProvider_Split *)self orderedDisplayItemPlacements];

  if (!orderedDisplayItemPlacements)
  {
    _orderedDisplayItemPlacements = [(STUIStatusBarVisualProvider_FixedSplit *)self _orderedDisplayItemPlacements];
    [(STUIStatusBarVisualProvider_Split *)self setOrderedDisplayItemPlacements:_orderedDisplayItemPlacements];
  }

  orderedDisplayItemPlacements2 = [(STUIStatusBarVisualProvider_Split *)self orderedDisplayItemPlacements];
  v8 = [orderedDisplayItemPlacements2 objectForKeyedSubscript:identifierCopy];

  return v8;
}

- (id)styleAttributesForStyle:(int64_t)style
{
  v12.receiver = self;
  v12.super_class = STUIStatusBarVisualProvider_FixedSplit;
  v4 = [(STUIStatusBarVisualProvider_Split *)&v12 styleAttributesForStyle:style];
  [(STUIStatusBarVisualProvider_FixedSplit *)self referenceWidth];
  v6 = v5;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _unjailedReferenceBounds];
  Width = CGRectGetWidth(v14);

  mode = [v4 mode];
  if ((mode - 2) < 4)
  {
    goto LABEL_2;
  }

  if (mode == 1)
  {
    v10 = 0;
    goto LABEL_3;
  }

  if (!mode)
  {
LABEL_2:
    v10 = v6 != Width;
LABEL_3:
    [v4 setScaledFixedWidthBar:v10];
  }

  return v4;
}

- (id)overriddenStyleAttributesForDisplayItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[(STUIStatusBarPillBackgroundActivityItem *)STUIStatusBarExpandedPillBackgroundActivityItem];

  if (v5 == identifierCopy)
  {
    v6 = +[STUIStatusBarStyleAttributes overriddenStyleAttributes];
    expandedPillFont = [(STUIStatusBarVisualProvider_FixedSplit *)self expandedPillFont];
    [v6 setFont:expandedPillFont];

    expandedPillFont2 = [(STUIStatusBarVisualProvider_FixedSplit *)self expandedPillFont];
    [v6 setSmallFont:expandedPillFont2];

    [(STUIStatusBarVisualProvider_FixedSplit *)self expandedPillSize];
    [v6 setIconScale:v9 / 21.3333333];
    [v6 setSymbolScale:2];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = STUIStatusBarVisualProvider_FixedSplit;
    v6 = [(STUIStatusBarVisualProvider_Split *)&v11 overriddenStyleAttributesForDisplayItemWithIdentifier:identifierCopy];
  }

  return v6;
}

- (void)itemCreated:(id)created
{
  createdCopy = created;
  v8.receiver = self;
  v8.super_class = STUIStatusBarVisualProvider_FixedSplit;
  [(STUIStatusBarVisualProvider_Split *)&v8 itemCreated:createdCopy];
  identifier = [createdCopy identifier];
  v6 = +[(STUIStatusBarItem *)STUIStatusBarExpandedPillBackgroundActivityItem];

  if (identifier == v6)
  {
    v7 = createdCopy;
    [(STUIStatusBarVisualProvider_FixedSplit *)self expandedPillSize];
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
    v13 = objc_alloc_init(STUIStatusBarRegionAxisCenteringLayout);
    [(STUIStatusBarRegionAxisCenteringLayout *)v13 setMargin:0.0];
    [(STUIStatusBarRegionAxisCenteringLayout *)v13 setMaxNumberOfItems:3];
LABEL_10:
    [identifier setHorizontalLayout:v13];

    goto LABEL_11;
  }

  if (((v9 < 3) & isKindOfClass) == 1)
  {
    v13 = objc_alloc_init(STUIStatusBarRegionAxisStackingLayout);
    [(STUIStatusBarRegionAxisCenteringLayout *)v13 setAlignment:4];
    [(STUIStatusBarRegionAxisCenteringLayout *)v13 setInterspace:6.0];
    goto LABEL_10;
  }

LABEL_11:

LABEL_12:

  return itemsCopy;
}

- (void)orientationUpdatedFromOrientation:(int64_t)orientation
{
  statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  [statusBar avoidanceFrame];
  [(STUIStatusBarVisualProvider_Split *)self _updateExpandedConstraintsForAvoidanceFrame:?];

  statusBar2 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  currentAggregatedData = [statusBar2 currentAggregatedData];
  [(STUIStatusBarVisualProvider_FixedSplit *)self _updateLowerRegionsWithData:currentAggregatedData];
}

- (void)dataUpdated:(id)updated
{
  updatedCopy = updated;
  [(STUIStatusBarVisualProvider_FixedSplit *)self _updateSystemNavigationWithData:updatedCopy];
  [(STUIStatusBarVisualProvider_FixedSplit *)self _updateLowerRegionsWithData:updatedCopy];
}

- (id)regionIdentifiersForPartWithIdentifier:(id)identifier
{
  v15[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = STUIStatusBarVisualProvider_FixedSplit;
  v5 = [(STUIStatusBarVisualProvider_Split *)&v13 regionIdentifiersForPartWithIdentifier:identifierCopy];
  if ([identifierCopy isEqual:@"leadingPartIdentifier"])
  {
    v15[0] = @"pill";
    v15[1] = @"pillContent";
    v6 = MEMORY[0x277CBEA60];
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
    if ([identifierCopy isEqual:@"normalPartIdentifier"])
    {
      v14[0] = @"pill";
      v14[1] = @"pillContent";
      v14[2] = @"topTrailing";
      v6 = MEMORY[0x277CBEA60];
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

- (void)avoidanceFrameUpdatedFromFrame:(CGRect)frame withAnimationSettings:(id)settings options:(unint64_t)options
{
  v6 = [(STUIStatusBarVisualProvider_iOS *)self statusBar:settings];
  [v6 avoidanceFrame];
  [(STUIStatusBarVisualProvider_Split *)self _updateExpandedConstraintsForAvoidanceFrame:?];
}

- (void)_updateSystemNavigationWithData:(id)data
{
  dataCopy = data;
  backNavigationEntry = [dataCopy backNavigationEntry];
  if (backNavigationEntry)
  {

LABEL_3:
    backNavigationEntry2 = [dataCopy backNavigationEntry];
    v7 = backNavigationEntry2;
    if (backNavigationEntry2)
    {
      backNavigationEntry3 = backNavigationEntry2;
    }

    else
    {
      statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
      currentAggregatedData = [statusBar currentAggregatedData];
      backNavigationEntry3 = [currentAggregatedData backNavigationEntry];
    }

    backgroundActivityEntry = [dataCopy backgroundActivityEntry];
    v18 = backgroundActivityEntry;
    if (backgroundActivityEntry)
    {
      backgroundActivityEntry2 = backgroundActivityEntry;
    }

    else
    {
      statusBar2 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
      currentAggregatedData2 = [statusBar2 currentAggregatedData];
      backgroundActivityEntry2 = [currentAggregatedData2 backgroundActivityEntry];
    }

    statusBar3 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    regions = [statusBar3 regions];
    v24 = [regions objectForKeyedSubscript:@"leading"];
    action = [v24 action];

    if (self)
    {
      [(STUIStatusBarVisualProvider_FixedSplit *)self leadingCenteringEdgeInset];
      [(STUIStatusBarVisualProvider_FixedSplit *)self _edgeInsetsFromCenteringEdgeInset:0 trailing:?];
      v27 = v26;
    }

    else
    {
      v27 = 0.0;
    }

    if ([backNavigationEntry3 isEnabled] && (objc_msgSend(backgroundActivityEntry2, "isEnabled") & 1) == 0)
    {
      [(STUIStatusBarVisualProvider_Split *)self bottomLeadingTopOffset];
      v30 = -v27 - v34;
      p_leadingBottomConstraint = &self->_leadingBottomConstraint;
      [(NSLayoutConstraint *)self->_leadingBottomConstraint constant];
      if (vabdd_f64(v35, v30) > 2.22044605e-16)
      {
        v31 = 0;
        goto LABEL_21;
      }

      v32 = action;
      v33 = 0;
    }

    else
    {
      p_leadingBottomConstraint = &self->_leadingBottomConstraint;
      [(NSLayoutConstraint *)self->_leadingBottomConstraint constant];
      if (fabs(v27 + v29) > 2.22044605e-16)
      {
        v30 = -v27;
        v31 = 1;
LABEL_21:
        [(NSLayoutConstraint *)*p_leadingBottomConstraint setConstant:v30];
        [action setEnabled:v31];
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __74__STUIStatusBarVisualProvider_FixedSplit__updateSystemNavigationWithData___block_invoke;
        v36[3] = &unk_279D37F00;
        v36[4] = self;
        [MEMORY[0x277D75D18] _animateUsingSpringWithTension:0 friction:v36 interactive:0 animations:200.0 completion:20.0];
LABEL_24:

        goto LABEL_25;
      }

      v32 = action;
      v33 = 1;
    }

    [v32 setEnabled:v33];
    goto LABEL_24;
  }

  backgroundActivityEntry3 = [dataCopy backgroundActivityEntry];
  if (backgroundActivityEntry3)
  {
    v10 = backgroundActivityEntry3;
    statusBar4 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    currentAggregatedData3 = [statusBar4 currentAggregatedData];
    backNavigationEntry4 = [currentAggregatedData3 backNavigationEntry];
    isEnabled = [backNavigationEntry4 isEnabled];

    if (isEnabled)
    {
      goto LABEL_3;
    }
  }

LABEL_25:
}

- (id)animationForBackgroundActivityPillAnimation:(id)animation duration:(double)duration scale:(double)scale
{
  animationCopy = animation;
  statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  currentAggregatedData = [statusBar currentAggregatedData];
  voiceControlEntry = [currentAggregatedData voiceControlEntry];
  isEnabled = [voiceControlEntry isEnabled];

  if (isEnabled)
  {
    statusBar2 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    _shouldReverseLayoutDirection = [statusBar2 _shouldReverseLayoutDirection];

    if (_shouldReverseLayoutDirection)
    {
      v15 = -1.0;
    }

    else
    {
      v15 = 1.0;
    }

    v16 = [STUIStatusBarAnimationFactory fadeAnimationWithDuration:duration scale:scale offset:v15 * 5.0, 0.0];
    [v16 setPriority:30];
    v17 = +[STUIStatusBarTimeItem pillTimeDisplayIdentifier];
    [animationCopy addSubAnimation:v16 forDisplayItemWithIdentifier:v17];

    v18 = [STUIStatusBarAnimationFactory fadeAnimationWithDuration:duration scale:scale offset:v15 * -5.0, 0.0];
    [v18 setPriority:30];
    v19 = +[(STUIStatusBarItem *)STUIStatusBarVoiceControlItem];
    [animationCopy addSubAnimation:v18 forDisplayItemWithIdentifier:v19];
  }

  [animationCopy setDelaysDependentItems:1];

  return animationCopy;
}

- (BOOL)_updateLowerRegionsWithData:(id)data
{
  v7.receiver = self;
  v7.super_class = STUIStatusBarVisualProvider_FixedSplit;
  v4 = [(STUIStatusBarVisualProvider_Split *)&v7 _updateLowerRegionsWithData:data];
  if (v4)
  {
    statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    [statusBar updateWithAnimations:MEMORY[0x277CBEBF8]];
  }

  return v4;
}

@end