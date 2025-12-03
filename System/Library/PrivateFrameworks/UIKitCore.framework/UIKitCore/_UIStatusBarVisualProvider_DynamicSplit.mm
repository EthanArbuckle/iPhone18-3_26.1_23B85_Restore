@interface _UIStatusBarVisualProvider_DynamicSplit
+ (Class)visualProviderSubclassForScreen:(id)screen visualProviderInfo:(id)info;
- (BOOL)_needsUpdateOfConstraintsForAvoidanceFrame:(CGRect)frame cutoutOffset:(double *)offset cutoutWidth:(double *)width;
- (BOOL)_updateSystemNavigationWithData:(id)data avoidanceFrame:(CGRect)frame;
- (CGRect)sensorAreaRect;
- (CGSize)sensorAreaSize;
- (CGSize)smallPillSize;
- (NSDirectionalEdgeInsets)edgeInsets;
- (NSDirectionalEdgeInsets)expandedEdgeInsets;
- (double)effectiveTargetDisplayWidth;
- (double)leadingScaleForWidth:(double)width;
- (double)minimumBottomLeadingWidth;
- (double)sensorAreaCenterOffsetFromTrailing;
- (double)trailingScaleForWidth:(double)width includingPrivacyIndicator:(BOOL)indicator;
- (id)_orderedDisplayItemPlacements;
- (id)additionAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation;
- (id)leadingItemCutoffWidths;
- (id)normalRoundFont;
- (id)overriddenStyleAttributesForDisplayItemWithIdentifier:(id)identifier;
- (id)region:(id)region willSetDisplayItems:(id)items;
- (id)removalAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation;
- (id)setupInContainerView:(id)view;
- (id)trailingItemCutoffWidths;
- (unint64_t)leadingNumberOfItemsForWidth:(double)width;
- (unint64_t)trailingNumberOfItemsForWidth:(double)width includingPrivacyIndicator:(BOOL)indicator;
- (void)avoidanceFrameUpdatedFromFrame:(CGRect)frame withAnimationSettings:(id)settings options:(unint64_t)options;
- (void)dataUpdated:(id)updated;
- (void)orientationUpdatedFromOrientation:(int64_t)orientation;
- (void)updateDisplayItem:(id)item toDynamicallyHidden:(BOOL)hidden scale:(double)scale;
- (void)updateDisplayItem:(id)item toScale:(double)scale;
@end

@implementation _UIStatusBarVisualProvider_DynamicSplit

+ (Class)visualProviderSubclassForScreen:(id)screen visualProviderInfo:(id)info
{
  screenCopy = screen;
  [screenCopy _unjailedReferenceBounds];
  Width = CGRectGetWidth(v14);
  [screenCopy _nativeScale];
  v8 = Width * v7;
  [screenCopy _scale];
  v10 = v9;

  if (v8 / v10 <= 393.0)
  {
    selfCopy = objc_opt_class();
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (CGSize)smallPillSize
{
  v2 = 20.0;
  v3 = 20.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)normalRoundFont
{
  v2 = _AXSEnhanceTextLegibilityEnabled() != 0;
  v3 = qword_1ED49A978;
  if (qword_1ED49A978)
  {
    v4 = _MergedGlobals_11_8 == v2;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    _MergedGlobals_11_8 = v2;
    [objc_opt_class() baseFontSize];
    v5 = [off_1E70ECC18 systemFontOfSize:*off_1E70ECCB0 weight:? design:?];
    v6 = qword_1ED49A978;
    qword_1ED49A978 = v5;

    v3 = qword_1ED49A978;
  }

  return v3;
}

- (double)minimumBottomLeadingWidth
{
  [(_UIStatusBarVisualProvider_DynamicSplit *)self sensorAreaRect];
  v4 = v3;
  [(_UIStatusBarVisualProvider_Split *)self bottomLeadingSpace];
  return floor((v4 - (v5 + v5)) * 0.75);
}

- (NSDirectionalEdgeInsets)edgeInsets
{
  v2 = 0.0;
  v3 = 17.0;
  v4 = 0.0;
  v5 = 18.0;
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (NSDirectionalEdgeInsets)expandedEdgeInsets
{
  v2 = 0.0;
  v3 = 6.0;
  v4 = 0.0;
  v5 = 5.0;
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (CGRect)sensorAreaRect
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

- (CGSize)sensorAreaSize
{
  [(_UIStatusBarVisualProvider_DynamicSplit *)self sensorAreaRect];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (double)effectiveTargetDisplayWidth
{
  statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  _effectiveTargetScreen = [statusBar _effectiveTargetScreen];

  [_effectiveTargetScreen _unjailedReferenceBounds];
  Width = CGRectGetWidth(v10);
  [_effectiveTargetScreen _nativeScale];
  v6 = Width * v5;
  [_effectiveTargetScreen _scale];
  v8 = v6 / v7;

  return v8;
}

- (double)sensorAreaCenterOffsetFromTrailing
{
  [(_UIStatusBarVisualProvider_DynamicSplit *)self effectiveTargetDisplayWidth];
  v4 = v3;
  [(_UIStatusBarVisualProvider_DynamicSplit *)self sensorAreaRect];
  MidX = CGRectGetMidX(v10);
  statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  styleAttributes = [statusBar styleAttributes];
  effectiveLayoutDirection = [styleAttributes effectiveLayoutDirection];

  result = v4 - MidX;
  if (effectiveLayoutDirection == 1)
  {
    return MidX;
  }

  return result;
}

- (id)setupInContainerView:(id)view
{
  v4 = MEMORY[0x1E695DF70];
  viewCopy = view;
  array = [v4 array];
  array2 = [MEMORY[0x1E695DF70] array];
  [objc_opt_class() height];
  v160 = v7;
  [(_UIStatusBarVisualProvider_DynamicSplit *)self sensorAreaRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(_UIStatusBarVisualProvider_DynamicSplit *)self sensorAreaCenterOffsetFromTrailing];
  v15 = v14;
  [(_UIStatusBarVisualProvider_DynamicSplit *)self edgeInsets];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v155 = v22;
  [(_UIStatusBarVisualProvider_DynamicSplit *)self expandedEdgeInsets];
  [(_UIStatusBarVisualProvider_DynamicSplit *)self cutoutEdgeInset];
  v157 = v23;
  [(_UIStatusBarVisualProvider_DynamicSplit *)self leadingItemSpacing];
  v25 = v24;
  [(_UIStatusBarVisualProvider_DynamicSplit *)self itemSpacing];
  v158 = v26;
  normalFont = [(_UIStatusBarVisualProvider_Split *)self normalFont];
  [normalFont capHeight];
  v156 = v28 + 1.0;

  [(_UIStatusBarVisualProvider_iOS *)self expandedItemSpacing];
  expandedFont = [(_UIStatusBarVisualProvider_Split *)self expandedFont];
  [expandedFont capHeight];

  v30 = objc_alloc_init(UILayoutGuide);
  [(UILayoutGuide *)v30 setIdentifier:@"UIStatusBarCutout"];
  topAnchor = [(UILayoutGuide *)v30 topAnchor];
  v32 = viewCopy;
  topAnchor2 = [viewCopy topAnchor];
  v34 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v9];
  [array addObject:v34];

  trailingAnchor = [v32 trailingAnchor];
  centerXAnchor = [(UILayoutGuide *)v30 centerXAnchor];
  v37 = [trailingAnchor constraintEqualToAnchor:centerXAnchor constant:v15];
  [(_UIStatusBarVisualProvider_DynamicSplit *)self setCutoutCenterConstraint:v37];

  cutoutCenterConstraint = [(_UIStatusBarVisualProvider_DynamicSplit *)self cutoutCenterConstraint];
  [array addObject:cutoutCenterConstraint];

  widthAnchor = [(UILayoutGuide *)v30 widthAnchor];
  v40 = [widthAnchor constraintEqualToConstant:v11];
  [(_UIStatusBarVisualProvider_DynamicSplit *)self setCutoutWidthConstraint:v40];

  cutoutWidthConstraint = [(_UIStatusBarVisualProvider_DynamicSplit *)self cutoutWidthConstraint];
  [array addObject:cutoutWidthConstraint];

  heightAnchor = [(UILayoutGuide *)v30 heightAnchor];
  v43 = [heightAnchor constraintEqualToConstant:v13];
  [array addObject:v43];

  [v32 addLayoutGuide:v30];
  [(_UIStatusBarVisualProvider_Split *)self setCutoutLayoutGuide:v30];

  v44 = objc_alloc_init(UILayoutGuide);
  [(UILayoutGuide *)v44 setIdentifier:@"UIStatusBarMainRegions"];
  trailingAnchor2 = [(UILayoutGuide *)v44 trailingAnchor];
  v46 = v32;
  trailingAnchor3 = [v32 trailingAnchor];
  v48 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];

  LODWORD(v49) = 1144750080;
  [v48 setPriority:v49];
  [array addObject:v48];
  widthAnchor2 = [(UILayoutGuide *)v44 widthAnchor];
  [(_UIStatusBarVisualProvider_DynamicSplit *)self effectiveTargetDisplayWidth];
  v51 = [widthAnchor2 constraintEqualToConstant:?];

  LODWORD(v52) = 1144750080;
  [v51 setPriority:v52];
  [array addObject:v51];
  heightAnchor2 = [(UILayoutGuide *)v44 heightAnchor];
  v54 = [heightAnchor2 constraintEqualToConstant:v13];
  [array addObject:v54];

  bottomAnchor = [(UILayoutGuide *)v44 bottomAnchor];
  cutoutLayoutGuide = [(_UIStatusBarVisualProvider_Split *)self cutoutLayoutGuide];
  bottomAnchor2 = [cutoutLayoutGuide bottomAnchor];
  v58 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [array addObject:v58];

  v162 = v46;
  [v46 addLayoutGuide:v44];

  [(_UIStatusBarVisualProvider_Split *)self setMainRegionsLayoutGuide:v44];
  v59 = [[_UIStatusBarRegion alloc] initWithIdentifier:0x1EFB3CE30];
  v60 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v61 = objc_alloc_init(_UIStatusBarRegionAxisSquishyLayout);
  [(_UIStatusBarRegionAxisSquishyLayout *)v61 setAlignment:3];
  [(_UIStatusBarRegionAxisSquishyLayout *)v61 setInterspace:v25];
  [(_UIStatusBarRegionAxisSquishyLayout *)v61 setCompressItems:1];
  [(_UIStatusBarRegionAxisSquishyLayout *)v61 setMaxNumberOfItems:3];
  [(_UIStatusBarRegionAxisSquishyLayout *)v61 setMaxNumberOfVisibleItems:3];
  [(_UIStatusBarVisualProvider_DynamicSplit *)self minimumItemScaleFactor];
  [(_UIStatusBarRegionAxisSquishyLayout *)v61 setMinItemDynamicScale:?];
  [(_UIStatusBarRegionAxisSquishyLayout *)v61 setMinInterspaceDynamicScale:0.6];
  [(_UIStatusBarRegionAxisSquishyLayout *)v61 setDynamicHidingDelegate:self];
  [(_UIStatusBarRegionAxesLayout *)v60 setHorizontalLayout:v61];

  v62 = [_UIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:5];
  [(_UIStatusBarRegionAxesLayout *)v60 setVerticalLayout:v62];

  [(_UIStatusBarRegion *)v59 setLayout:v60];
  [(_UIStatusBarRegion *)v59 setActionInsets:-v17, -v19, -(v160 + v21 - v13), -v155];
  [(_UIStatusBarRegion *)v59 setDisableItemFrameBasedOverflow:1];
  layoutItem = [(_UIStatusBarRegion *)v59 layoutItem];
  centerYAnchor = [layoutItem centerYAnchor];
  mainRegionsLayoutGuide = [(_UIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  centerYAnchor2 = [mainRegionsLayoutGuide centerYAnchor];
  v67 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:v17];
  leadingCenterYConstraint = self->_leadingCenterYConstraint;
  self->_leadingCenterYConstraint = v67;

  [array addObject:self->_leadingCenterYConstraint];
  v69 = layoutItem;
  heightAnchor3 = [layoutItem heightAnchor];
  v71 = [heightAnchor3 constraintEqualToConstant:v156];
  [array addObject:v71];

  leadingAnchor = [layoutItem leadingAnchor];
  mainRegionsLayoutGuide2 = [(_UIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  leadingAnchor2 = [mainRegionsLayoutGuide2 leadingAnchor];
  v75 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v19];
  [array addObject:v75];

  v161 = v69;
  trailingAnchor4 = [v69 trailingAnchor];
  cutoutLayoutGuide2 = [(_UIStatusBarVisualProvider_Split *)self cutoutLayoutGuide];
  leadingAnchor3 = [cutoutLayoutGuide2 leadingAnchor];
  v79 = [trailingAnchor4 constraintEqualToAnchor:leadingAnchor3 constant:-v157];

  LODWORD(v80) = 1144750080;
  [v79 setPriority:v80];
  [array addObject:v79];
  [v46 _ui_addSubLayoutItem:v69];

  [array2 addObject:v59];
  v81 = [[_UIStatusBarRegion alloc] initWithIdentifier:0x1EFB3CE50];
  v82 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v83 = objc_alloc_init(_UIStatusBarRegionAxisSquishyLayout);
  [(_UIStatusBarRegionAxisSquishyLayout *)v83 setAlignment:4];
  [(_UIStatusBarRegionAxisSquishyLayout *)v83 setInterspace:v158];
  [(_UIStatusBarRegionAxisSquishyLayout *)v83 setMaxNumberOfItems:3];
  [(_UIStatusBarRegionAxisSquishyLayout *)v83 setMaxNumberOfVisibleItems:3];
  [(_UIStatusBarVisualProvider_DynamicSplit *)self minimumItemScaleFactor];
  [(_UIStatusBarRegionAxisSquishyLayout *)v83 setMinItemDynamicScale:?];
  [(_UIStatusBarRegionAxisSquishyLayout *)v83 setMinInterspaceDynamicScale:0.6];
  [(_UIStatusBarRegionAxisSquishyLayout *)v83 setDynamicHidingDelegate:self];
  [(_UIStatusBarRegionAxesLayout *)v82 setHorizontalLayout:v83];

  v84 = [_UIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:5];
  [(_UIStatusBarRegionAxesLayout *)v82 setVerticalLayout:v84];

  [(_UIStatusBarRegion *)v81 setLayout:v82];
  [(_UIStatusBarRegion *)v81 setActionInsets:-100.0, -20.0, -10.0, -20.0];
  [(_UIStatusBarRegion *)v81 setDisableItemFrameBasedOverflow:1];
  layoutItem2 = [(_UIStatusBarRegion *)v81 layoutItem];
  v86 = +[_UIStatusBarStyleAttributes overriddenStyleAttributes];
  emphasizedFont = [(_UIStatusBarVisualProvider_Split *)self emphasizedFont];
  [v86 setFont:emphasizedFont];

  normalFont2 = [(_UIStatusBarVisualProvider_Split *)self normalFont];
  [v86 setSmallFont:normalFont2];

  [v86 setImageNamePrefixes:&unk_1EFE2D2D0];
  [(_UIStatusBarRegion *)v81 setOverriddenStyleAttributes:v86];
  centerYAnchor3 = [layoutItem2 centerYAnchor];
  mainRegionsLayoutGuide3 = [(_UIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  centerYAnchor4 = [mainRegionsLayoutGuide3 centerYAnchor];
  v92 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4 constant:v17];
  [array addObject:v92];

  heightAnchor4 = [layoutItem2 heightAnchor];
  v94 = [heightAnchor4 constraintEqualToConstant:v156];
  [array addObject:v94];

  trailingAnchor5 = [layoutItem2 trailingAnchor];
  mainRegionsLayoutGuide4 = [(_UIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  trailingAnchor6 = [mainRegionsLayoutGuide4 trailingAnchor];
  v98 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-v155];
  [array addObject:v98];

  leadingAnchor4 = [layoutItem2 leadingAnchor];
  cutoutLayoutGuide3 = [(_UIStatusBarVisualProvider_Split *)self cutoutLayoutGuide];
  trailingAnchor7 = [cutoutLayoutGuide3 trailingAnchor];
  v102 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor7 constant:v157];

  LODWORD(v103) = 1144750080;
  [v102 setPriority:v103];
  [array addObject:v102];
  [v162 _ui_addSubLayoutItem:layoutItem2];

  [array2 addObject:v81];
  v104 = [[_UIStatusBarRegion alloc] initWithIdentifier:0x1EFB9B110];
  v105 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v106 = objc_alloc_init(_UIStatusBarRegionAxisCenteringLayout);
  [(_UIStatusBarRegionAxisCenteringLayout *)v106 setMaxNumberOfItems:3];
  [(_UIStatusBarRegionAxesLayout *)v105 setHorizontalLayout:v106];

  v107 = [_UIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:5];
  [(_UIStatusBarRegionAxesLayout *)v105 setVerticalLayout:v107];

  [(_UIStatusBarRegion *)v104 setLayout:v105];
  v108 = +[_UIStatusBarStyleAttributes overriddenStyleAttributes];
  [v108 setImageNamePrefixes:&unk_1EFE2D2E8];
  systemUpdateFont = [(_UIStatusBarVisualProvider_Split *)self systemUpdateFont];
  [v108 setFont:systemUpdateFont];

  systemUpdateFont2 = [(_UIStatusBarVisualProvider_Split *)self systemUpdateFont];
  [v108 setEmphasizedFont:systemUpdateFont2];

  [v108 setSymbolScale:2];
  [(_UIStatusBarRegion *)v104 setOverriddenStyleAttributes:v108];
  layoutItem3 = [(_UIStatusBarRegion *)v104 layoutItem];
  topAnchor3 = [layoutItem3 topAnchor];
  topAnchor4 = [layoutItem2 topAnchor];
  v114 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [array addObject:v114];

  layoutItem4 = [(_UIStatusBarRegion *)v104 layoutItem];
  bottomAnchor3 = [layoutItem4 bottomAnchor];
  bottomAnchor4 = [layoutItem2 bottomAnchor];
  v118 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  [array addObject:v118];

  layoutItem5 = [(_UIStatusBarRegion *)v104 layoutItem];
  rightAnchor = [layoutItem5 rightAnchor];
  rightAnchor2 = [layoutItem2 rightAnchor];
  v122 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [array addObject:v122];

  layoutItem6 = [(_UIStatusBarRegion *)v104 layoutItem];
  leftAnchor = [layoutItem6 leftAnchor];
  leftAnchor2 = [layoutItem2 leftAnchor];
  v126 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [array addObject:v126];

  layoutItem7 = [(_UIStatusBarRegion *)v104 layoutItem];
  [v162 _ui_addSubLayoutItem:layoutItem7];

  [array2 addObject:v104];
  v164 = array2;
  v165 = array;
  [(_UIStatusBarVisualProvider_Split *)self _setupExpandedRegionsInContainerView:v162 sensorHeight:&v165 constraints:&v164 regions:v13];
  v128 = v165;

  v159 = v164;
  v129 = [[_UIStatusBarRegion alloc] initWithIdentifier:0x1EFB9B0F0];
  v130 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v131 = objc_alloc_init(_UIStatusBarRegionAxisStackingLayout);
  [(_UIStatusBarRegionAxisStackingLayout *)v131 setAlignment:3];
  [(_UIStatusBarRegionAxisStackingLayout *)v131 setInterspace:v158];
  [(_UIStatusBarRegionAxesLayout *)v130 setHorizontalLayout:v131];

  v132 = [_UIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:6];
  [(_UIStatusBarRegionAxesLayout *)v130 setVerticalLayout:v132];

  [(_UIStatusBarRegion *)v129 setLayout:v130];
  [(_UIStatusBarRegion *)v129 setActionInsets:-100.0, -12.0, -10.0, -12.0];
  layoutItem8 = [(_UIStatusBarRegion *)v129 layoutItem];
  leadingAnchor5 = [layoutItem8 leadingAnchor];
  mainRegionsLayoutGuide5 = [(_UIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  leadingAnchor6 = [mainRegionsLayoutGuide5 leadingAnchor];
  [(_UIStatusBarVisualProvider_Split *)self bottomLeadingSpace];
  v137 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:?];
  [v128 addObject:v137];

  layoutItem9 = [(_UIStatusBarRegion *)v129 layoutItem];
  trailingAnchor8 = [layoutItem9 trailingAnchor];
  cutoutLayoutGuide4 = [(_UIStatusBarVisualProvider_Split *)self cutoutLayoutGuide];
  leadingAnchor7 = [cutoutLayoutGuide4 leadingAnchor];
  [(_UIStatusBarVisualProvider_Split *)self bottomLeadingSpace];
  v143 = [trailingAnchor8 constraintEqualToAnchor:leadingAnchor7 constant:-v142];
  [v128 addObject:v143];

  layoutItem10 = [(_UIStatusBarRegion *)v129 layoutItem];
  bottomAnchor5 = [layoutItem10 bottomAnchor];
  cutoutLayoutGuide5 = [(_UIStatusBarVisualProvider_Split *)self cutoutLayoutGuide];
  bottomAnchor6 = [cutoutLayoutGuide5 bottomAnchor];
  [(_UIStatusBarVisualProvider_DynamicSplit *)self bottomLeadingTopOffset];
  v149 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-v148];
  [v128 addObject:v149];

  layoutItem11 = [(_UIStatusBarRegion *)v129 layoutItem];
  heightAnchor5 = [layoutItem11 heightAnchor];
  v152 = [heightAnchor5 constraintEqualToConstant:13.3333333];
  [v128 addObject:v152];

  layoutItem12 = [(_UIStatusBarRegion *)v129 layoutItem];
  [v162 _ui_insertSubLayoutItem:layoutItem12 atIndex:0];

  [v159 addObject:v129];
  [MEMORY[0x1E69977A0] activateConstraints:v128];

  return v159;
}

- (id)_orderedDisplayItemPlacements
{
  v67[3] = *MEMORY[0x1E69E9840];
  v57.receiver = self;
  v57.super_class = _UIStatusBarVisualProvider_DynamicSplit;
  _orderedDisplayItemPlacements = [(_UIStatusBarVisualProvider_Split *)&v57 _orderedDisplayItemPlacements];
  v3 = +[_UIStatusBarIndicatorQuietModeItem emphasizedQuietModeIdentifier];
  v4 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v3 priority:997];

  v5 = [_UIStatusBarIndicatorLocationItem groupWithPriority:1000];
  v6 = +[(_UIStatusBarCellularItem *)_UIStatusBarCellularCondensedItem];
  v7 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v6 priority:1010];
  prominentPlacement = [v5 prominentPlacement];
  v67[0] = prominentPlacement;
  regularPlacement = [v5 regularPlacement];
  v67[1] = regularPlacement;
  v67[2] = v4;
  v10 = v4;
  v55 = v4;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:3];
  v12 = [v7 excludingPlacements:v11];
  [(_UIStatusBarVisualProvider_Split *)self setServiceNamePlacement:v12];

  v13 = +[_UIStatusBarCellularCondensedItem dualNameDisplayIdentifier];
  v14 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v13 priority:1011];
  prominentPlacement2 = [v5 prominentPlacement];
  v66[0] = prominentPlacement2;
  regularPlacement2 = [v5 regularPlacement];
  v66[1] = regularPlacement2;
  v66[2] = v10;
  serviceNamePlacement = [(_UIStatusBarVisualProvider_Split *)self serviceNamePlacement];
  v66[3] = serviceNamePlacement;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:4];
  v19 = [v14 excludingPlacements:v18];
  [(_UIStatusBarVisualProvider_Split *)self setDualServiceNamePlacement:v19];

  v20 = +[_UIStatusBarTimeItem shortTimeDisplayIdentifier];
  v21 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v20 priority:1012];
  serviceNamePlacement2 = [(_UIStatusBarVisualProvider_Split *)self serviceNamePlacement];
  v65[0] = serviceNamePlacement2;
  dualServiceNamePlacement = [(_UIStatusBarVisualProvider_Split *)self dualServiceNamePlacement];
  v65[1] = dualServiceNamePlacement;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];
  v25 = [v21 excludingPlacements:v24];

  v26 = +[(_UIStatusBarItem *)_UIStatusBarVoiceControlPillItem];
  v27 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v26 priority:1014];
  prominentPlacement3 = [v5 prominentPlacement];
  v64[0] = prominentPlacement3;
  regularPlacement3 = [v5 regularPlacement];
  v64[1] = regularPlacement3;
  v64[2] = v55;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:3];
  v56 = [v27 excludingPlacements:v30];

  v63[0] = v25;
  serviceNamePlacement3 = [(_UIStatusBarVisualProvider_Split *)self serviceNamePlacement];
  v63[1] = serviceNamePlacement3;
  dualServiceNamePlacement2 = [(_UIStatusBarVisualProvider_Split *)self dualServiceNamePlacement];
  v63[2] = dualServiceNamePlacement2;
  v62 = v25;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
  v48 = [v55 requiringAllPlacements:v49];
  v63[3] = v48;
  v52 = v5;
  regularPlacement4 = [v5 regularPlacement];
  v61 = v55;
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
  v31 = [regularPlacement4 excludingPlacements:v46];
  v32 = v25;
  v50 = v25;
  v60 = v25;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
  v34 = [v31 requiringAllPlacements:v33];
  v63[4] = v34;
  prominentPlacement4 = [v5 prominentPlacement];
  v59 = v55;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
  v37 = [prominentPlacement4 excludingPlacements:v36];
  v58 = v32;
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
  v39 = [v37 requiringAllPlacements:v38];
  v63[5] = v39;
  v63[6] = v56;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:7];
  [_orderedDisplayItemPlacements setObject:v40 forKeyedSubscript:0x1EFB3CE30];

  v41 = [_orderedDisplayItemPlacements objectForKeyedSubscript:0x1EFB3CE50];
  v42 = +[(_UIStatusBarItem *)_UIStatusBarSensorActivityItem];
  v43 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v42 priority:1310];
  v44 = [v41 arrayByAddingObject:v43];
  [_orderedDisplayItemPlacements setObject:v44 forKeyedSubscript:0x1EFB3CE50];

  return _orderedDisplayItemPlacements;
}

- (BOOL)_needsUpdateOfConstraintsForAvoidanceFrame:(CGRect)frame cutoutOffset:(double *)offset cutoutWidth:(double *)width
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(_UIStatusBarVisualProvider_DynamicSplit *)self sensorAreaRect];
  if (width <= v12 + 20.0)
  {
    v19 = v12;
    [(_UIStatusBarVisualProvider_DynamicSplit *)self sensorAreaCenterOffsetFromTrailing];
    MidX = v20;
    width = v19;
  }

  else
  {
    [(_UIStatusBarVisualProvider_DynamicSplit *)self effectiveTargetDisplayWidth];
    v14 = v13;
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    MidX = CGRectGetMidX(v27);
    statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    styleAttributes = [statusBar styleAttributes];
    effectiveLayoutDirection = [styleAttributes effectiveLayoutDirection];

    if (effectiveLayoutDirection != 1)
    {
      MidX = v14 - MidX;
    }
  }

  result = 0;
  if ((*&MidX & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&width & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    cutoutCenterConstraint = [(_UIStatusBarVisualProvider_DynamicSplit *)self cutoutCenterConstraint];
    [cutoutCenterConstraint constant];
    if (MidX == v23)
    {
      cutoutWidthConstraint = [(_UIStatusBarVisualProvider_DynamicSplit *)self cutoutWidthConstraint];
      [cutoutWidthConstraint constant];
      v26 = v25;

      if (width == v26)
      {
        return 0;
      }
    }

    else
    {
    }

    if (offset)
    {
      *offset = MidX;
    }

    if (width)
    {
      *width = width;
    }

    return 1;
  }

  return result;
}

- (id)leadingItemCutoffWidths
{
  if (qword_1ED49A980 != -1)
  {
    dispatch_once(&qword_1ED49A980, &__block_literal_global_482);
  }

  v3 = qword_1ED49A988;

  return v3;
}

- (id)trailingItemCutoffWidths
{
  if (qword_1ED49A990 != -1)
  {
    dispatch_once(&qword_1ED49A990, &__block_literal_global_74_3);
  }

  v3 = qword_1ED49A998;

  return v3;
}

- (unint64_t)leadingNumberOfItemsForWidth:(double)width
{
  leadingItemCutoffWidths = [(_UIStatusBarVisualProvider_DynamicSplit *)self leadingItemCutoffWidths];
  [(_UIStatusBarVisualProvider_DynamicSplit *)self minimumItemScaleFactor];
  v7 = numberOfItemsForWidth(leadingItemCutoffWidths, width, v6);

  return v7;
}

- (unint64_t)trailingNumberOfItemsForWidth:(double)width includingPrivacyIndicator:(BOOL)indicator
{
  trailingItemCutoffWidths = [(_UIStatusBarVisualProvider_DynamicSplit *)self trailingItemCutoffWidths];
  [(_UIStatusBarVisualProvider_DynamicSplit *)self minimumItemScaleFactor];
  v8 = numberOfItemsForWidth(trailingItemCutoffWidths, width, v7);

  return v8;
}

- (double)leadingScaleForWidth:(double)width
{
  leadingItemCutoffWidths = [(_UIStatusBarVisualProvider_DynamicSplit *)self leadingItemCutoffWidths];
  [(_UIStatusBarVisualProvider_DynamicSplit *)self minimumItemScaleFactor];
  scaleForWidth(leadingItemCutoffWidths);
  v6 = v5;

  return v6;
}

- (double)trailingScaleForWidth:(double)width includingPrivacyIndicator:(BOOL)indicator
{
  trailingItemCutoffWidths = [(_UIStatusBarVisualProvider_DynamicSplit *)self trailingItemCutoffWidths];
  [(_UIStatusBarVisualProvider_DynamicSplit *)self minimumItemScaleFactor];
  scaleForWidth(trailingItemCutoffWidths);
  v7 = v6;

  return v7;
}

- (void)updateDisplayItem:(id)item toDynamicallyHidden:(BOOL)hidden scale:(double)scale
{
  hiddenCopy = hidden;
  itemCopy = item;
  if ([itemCopy visible])
  {
    if (+[UIView _isInAnimationBlockWithAnimationsEnabled]&& self->_currentAnimationSettings && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = self->_currentAnimationSettings;
      [(BSAnimationSettings *)v9 damping];
      v11 = v10;
      if (v10 < 0.7)
      {
        v12 = MEMORY[0x1E698E780];
        [(BSAnimationSettings *)v9 mass];
        v14 = v13;
        [(BSAnimationSettings *)v9 stiffness];
        v16 = v15;
        [(BSAnimationSettings *)v9 epsilon];
        v18 = v17;
        [(BSAnimationSettings *)v9 initialVelocity];
        v20 = [v12 settingsWithMass:v14 stiffness:v16 damping:0.7 epsilon:v18 initialVelocity:v19];

        v9 = v20;
      }

      [(BSAnimationSettings *)v9 mass];
      v22 = v21;
      [(BSAnimationSettings *)v9 stiffness];
      v24 = v23;
      [(BSAnimationSettings *)v9 damping];
      v26 = v25;
      [(BSAnimationSettings *)v9 initialVelocity];
      v28 = v27;
      objc_opt_self();
      _durationOfSpringAnimation(v22, v24, v26, v28);
      v30 = v29;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __87___UIStatusBarVisualProvider_DynamicSplit_updateDisplayItem_toDynamicallyHidden_scale___block_invoke;
      aBlock[3] = &unk_1E711CC88;
      v46 = hiddenCopy;
      v43 = itemCopy;
      v44 = v30;
      scaleCopy = scale;
      v31 = _Block_copy(aBlock);
      v32 = v31;
      if (v11 >= 0.7)
      {
        (*(v31 + 2))(v31, 1);
      }

      else
      {
        [MEMORY[0x1E698E608] tryAnimatingWithSettings:v9 fromCurrentState:1 actions:v31 completion:0];
      }
    }

    else
    {
      v34 = 0.25;
      if (!hiddenCopy)
      {
        v34 = 0.5;
      }

      _UIStatusBarDynamicSplitPerformBaseAnimation(itemCopy, hiddenCopy, 1, 1, 0, 0.5, v34, 0.0);
      if (!hiddenCopy)
      {
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __87___UIStatusBarVisualProvider_DynamicSplit_updateDisplayItem_toDynamicallyHidden_scale___block_invoke_98;
        v39[3] = &unk_1E70F32F0;
        v40 = itemCopy;
        scaleCopy2 = scale;
        [UIView animateWithDuration:4 delay:v39 options:0 animations:0.25 completion:0.0];
      }
    }
  }

  else
  {
    if (hiddenCopy)
    {
      [itemCopy setDynamicHidingAlpha:0.0];
      CGAffineTransformMakeScale(&v38, 0.5, 0.5);
      *&v37.a = *&v38.a;
      *&v37.c = *&v38.c;
      v33 = *&v38.tx;
    }

    else
    {
      [itemCopy setDynamicHidingAlpha:1.0];
      v35 = *(MEMORY[0x1E695EFD0] + 16);
      *&v37.a = *MEMORY[0x1E695EFD0];
      *&v37.c = v35;
      v33 = *(MEMORY[0x1E695EFD0] + 32);
    }

    *&v37.tx = v33;
    [itemCopy setDynamicHidingTransform:&v37];
    CGAffineTransformMakeScale(&v36, scale, scale);
    v37 = v36;
    [itemCopy setDynamicScaleTransform:&v37];
  }
}

- (void)updateDisplayItem:(id)item toScale:(double)scale
{
  itemCopy = item;
  if (+[UIView _isInAnimationBlockWithAnimationsEnabled]&& self->_currentAnimationSettings && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = self->_currentAnimationSettings;
    [(BSAnimationSettings *)v7 damping];
    if (v8 >= 0.7)
    {
      CGAffineTransformMakeScale(&v23, scale, scale);
      v22 = v23;
      [itemCopy setDynamicScaleTransform:&v22];
    }

    else
    {
      v9 = MEMORY[0x1E698E780];
      [(BSAnimationSettings *)v7 mass];
      v11 = v10;
      [(BSAnimationSettings *)v7 stiffness];
      v13 = v12;
      [(BSAnimationSettings *)v7 epsilon];
      v15 = v14;
      [(BSAnimationSettings *)v7 initialVelocity];
      v17 = [v9 settingsWithMass:v11 stiffness:v13 damping:0.7 epsilon:v15 initialVelocity:v16];

      v18 = MEMORY[0x1E698E608];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __69___UIStatusBarVisualProvider_DynamicSplit_updateDisplayItem_toScale___block_invoke;
      v24[3] = &unk_1E70F9B38;
      v25 = itemCopy;
      scaleCopy = scale;
      [v18 tryAnimatingWithSettings:v17 fromCurrentState:1 actions:v24 completion:0];

      v7 = v17;
    }
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __69___UIStatusBarVisualProvider_DynamicSplit_updateDisplayItem_toScale___block_invoke_2;
    v19[3] = &unk_1E70F32F0;
    v20 = itemCopy;
    scaleCopy2 = scale;
    [UIView animateWithDuration:4 delay:v19 options:0 animations:0.25 completion:0.0];
    v7 = v20;
  }
}

- (void)avoidanceFrameUpdatedFromFrame:(CGRect)frame withAnimationSettings:(id)settings options:(unint64_t)options
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v105 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  [(_UIStatusBarVisualProvider_DynamicSplit *)self setDeferredAvoidanceFrameUpdateBlock:0];
  v10 = _avoidanceFrameInLocalCoordinateSpace(self);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  val = self;
  statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  v102 = 0.0;
  v103 = 0.0;
  v82 = [(_UIStatusBarVisualProvider_DynamicSplit *)self _needsUpdateOfConstraintsForAvoidanceFrame:&v103 cutoutOffset:&v102 cutoutWidth:v10, v12, v14, v16];
  currentAggregatedData = [statusBar currentAggregatedData];
  v80 = [(_UIStatusBarVisualProvider_DynamicSplit *)val _updateSystemNavigationWithData:currentAggregatedData avoidanceFrame:v10, v12, v14, v16];

  v18 = _statusBarRunningAnimations;
  statusBar2 = [(_UIStatusBarVisualProvider_iOS *)val statusBar];
  v20 = [(_UIStatusBarVisualProvider_Split *)val regionIdentifiersForPartWithIdentifier:0x1EFB9C3D0];
  allObjects = [v20 allObjects];
  v84 = [statusBar2 displayItemIdentifiersInRegionsWithIdentifiers:allObjects];

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = v18;
  v22 = [obj countByEnumeratingWithState:&v98 objects:v104 count:16];
  if (v22)
  {
    v23 = *v99;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v99 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v98 + 1) + 8 * i);
        displayItemIdentifier = [v25 displayItemIdentifier];
        v27 = +[_UIStatusBarIndicatorQuietModeItem emphasizedQuietModeIdentifier];
        if ([displayItemIdentifier isEqual:v27])
        {
          identifier = [v25 identifier];
          v29 = [identifier isEqualToString:0x1EFB9A510];

          if ((v29 & 1) == 0)
          {
            objc_initWeak(&location, val);
            v94[0] = MEMORY[0x1E69E9820];
            v94[1] = 3221225472;
            v94[2] = __104___UIStatusBarVisualProvider_DynamicSplit_avoidanceFrameUpdatedFromFrame_withAnimationSettings_options___block_invoke;
            v94[3] = &unk_1E711CCB0;
            objc_copyWeak(v96, &location);
            v96[1] = *&x;
            v96[2] = *&y;
            v96[3] = *&width;
            v96[4] = *&height;
            v95 = settingsCopy;
            v96[5] = options;
            [(_UIStatusBarVisualProvider_DynamicSplit *)val setDeferredAvoidanceFrameUpdateBlock:v94];
            v92[0] = MEMORY[0x1E69E9820];
            v92[1] = 3221225472;
            v92[2] = __104___UIStatusBarVisualProvider_DynamicSplit_avoidanceFrameUpdatedFromFrame_withAnimationSettings_options___block_invoke_2;
            v92[3] = &unk_1E70F5A28;
            objc_copyWeak(&v93, &location);
            [v25 addTotalCompletionHandler:v92];
            objc_destroyWeak(&v93);

            objc_destroyWeak(v96);
            objc_destroyWeak(&location);
            statusBar4 = obj;
            goto LABEL_39;
          }
        }

        else
        {
        }
      }

      v22 = [obj countByEnumeratingWithState:&v98 objects:v104 count:16];
    }

    while (v22);
  }

  if (v82)
  {
    if (settingsCopy || (options & 2) != 0)
    {
      v30 = settingsCopy;
    }

    currentAnimationSettings = val->_currentAnimationSettings;
    val->_currentAnimationSettings = settingsCopy;

    if ((options & 1) == 0)
    {
      [(_UIStatusBarVisualProvider_DynamicSplit *)val edgeInsets];
      v33 = v32;
      v35 = v34;
      [(_UIStatusBarVisualProvider_DynamicSplit *)val cutoutEdgeInset];
      v37 = v36;
      [(_UIStatusBarVisualProvider_DynamicSplit *)val effectiveTargetDisplayWidth];
      v39 = v38;
      v40 = [statusBar regionWithIdentifier:0x1EFB3CE30];
      displayItems = [v40 displayItems];
      v42 = fmax(v39 - v103 + v102 * -0.5 - v33 - v37, 0.0);
      [(_UIStatusBarVisualProvider_DynamicSplit *)val leadingScaleForWidth:v42];
      v44 = v43;
      v45 = [(_UIStatusBarVisualProvider_DynamicSplit *)val leadingNumberOfItemsForWidth:v42];
      layout = [v40 layout];
      horizontalLayout = [layout horizontalLayout];
      if (v45 != [horizontalLayout maxNumberOfVisibleItems] || (objc_msgSend(horizontalLayout, "itemDynamicScale"), vabdd_f64(v44, v46) > 0.0001))
      {
        [horizontalLayout setMaxNumberOfVisibleItems:v45];
        [horizontalLayout setItemDynamicScale:v44];
        [v40 setNeedsReLayout:1];
        [layout invalidate];
      }

      v47 = [statusBar regionWithIdentifier:0x1EFB3CE50];
      displayItems2 = [v47 displayItems];
      v49 = v102;
      v48 = v103;
      currentAggregatedData2 = [statusBar currentAggregatedData];
      sensorActivityEntry = [currentAggregatedData2 sensorActivityEntry];
      v52 = fmax(v48 + v49 * -0.5 - v35 - v37, 0.0);
      -[_UIStatusBarVisualProvider_DynamicSplit trailingScaleForWidth:includingPrivacyIndicator:](val, "trailingScaleForWidth:includingPrivacyIndicator:", [sensorActivityEntry isEnabled], v52);
      v54 = v53;

      currentAggregatedData3 = [statusBar currentAggregatedData];
      sensorActivityEntry2 = [currentAggregatedData3 sensorActivityEntry];
      v57 = -[_UIStatusBarVisualProvider_DynamicSplit trailingNumberOfItemsForWidth:includingPrivacyIndicator:](val, "trailingNumberOfItemsForWidth:includingPrivacyIndicator:", [sensorActivityEntry2 isEnabled], v52);

      layout2 = [v47 layout];
      horizontalLayout2 = [layout2 horizontalLayout];
      if (v57 != [horizontalLayout2 maxNumberOfVisibleItems] || (objc_msgSend(horizontalLayout2, "itemDynamicScale"), vabdd_f64(v54, v60) > 0.0001))
      {
        [horizontalLayout2 setMaxNumberOfVisibleItems:v57];
        [horizontalLayout2 setItemDynamicScale:v54];
        [v47 setNeedsReLayout:1];
        [layout2 invalidate];
      }

      statusBar3 = [(_UIStatusBarVisualProvider_iOS *)val statusBar];
      regions = [statusBar3 regions];
      v63 = [regions objectForKeyedSubscript:0x1EFB9B110];

      if (v57 < 2)
      {
        [v63 disableWithToken:13];
      }

      else
      {
        [v63 enableWithToken:13];
      }
    }

    v65 = v103;
    cutoutCenterConstraint = [(_UIStatusBarVisualProvider_DynamicSplit *)val cutoutCenterConstraint];
    [cutoutCenterConstraint constant];
    v68 = v65 != v67;

    if (v68)
    {
      v69 = v103;
      cutoutCenterConstraint2 = [(_UIStatusBarVisualProvider_DynamicSplit *)val cutoutCenterConstraint];
      [cutoutCenterConstraint2 setConstant:v69];
    }

    v71 = v102;
    cutoutWidthConstraint = [(_UIStatusBarVisualProvider_DynamicSplit *)val cutoutWidthConstraint];
    [cutoutWidthConstraint constant];
    v74 = v71 != v73;

    if (v74)
    {
      v75 = v102;
      cutoutWidthConstraint2 = [(_UIStatusBarVisualProvider_DynamicSplit *)val cutoutWidthConstraint];
      [cutoutWidthConstraint2 setConstant:v75];
    }

    if ((options & 2) != 0)
    {
      cutoutLayoutGuide = [(_UIStatusBarVisualProvider_Split *)val cutoutLayoutGuide];
      owningView = [cutoutLayoutGuide owningView];
      [owningView layoutSubviews];
    }

    else if (settingsCopy)
    {
      v91[0] = MEMORY[0x1E69E9820];
      v91[1] = 3221225472;
      v91[2] = __104___UIStatusBarVisualProvider_DynamicSplit_avoidanceFrameUpdatedFromFrame_withAnimationSettings_options___block_invoke_3;
      v91[3] = &unk_1E70F5AC0;
      v91[4] = val;
      [MEMORY[0x1E698E608] tryAnimatingWithSettings:settingsCopy fromCurrentState:1 actions:v91 completion:0];
    }

    else
    {
      v90[0] = MEMORY[0x1E69E9820];
      v90[1] = 3221225472;
      v90[2] = __104___UIStatusBarVisualProvider_DynamicSplit_avoidanceFrameUpdatedFromFrame_withAnimationSettings_options___block_invoke_4;
      v90[3] = &unk_1E70F3590;
      v90[4] = val;
      [UIView performWithoutAnimation:v90];
    }

    statusBar4 = val->_currentAnimationSettings;
    val->_currentAnimationSettings = 0;
    goto LABEL_39;
  }

  if (v80)
  {
    statusBar4 = [(_UIStatusBarVisualProvider_iOS *)val statusBar];
    [statusBar4 updateWithAnimations:MEMORY[0x1E695E0F0]];
LABEL_39:
  }
}

- (id)region:(id)region willSetDisplayItems:(id)items
{
  v34 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  itemsCopy = items;
  identifier = [regionCopy identifier];
  if ([identifier isEqual:0x1EFB3CE50])
  {
  }

  else
  {
    identifier2 = [regionCopy identifier];
    v9 = [identifier2 isEqual:0x1EFB3CE30];

    if (!v9)
    {
      goto LABEL_14;
    }
  }

  v26 = regionCopy;
  v27 = itemsCopy;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = itemsCopy;
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    v14 = *MEMORY[0x1E6979928];
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        view = [v16 view];
        layer = [view layer];
        filters = [layer filters];
        v20 = [filters count];

        if (!v20)
        {
          v21 = [MEMORY[0x1E6979378] filterWithType:v14];
          [v21 setValue:&unk_1EFE2EA48 forKey:@"inputRadius"];
          [v21 setName:@"gaussianBlur"];
          v32 = v21;
          v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
          view2 = [v16 view];
          layer2 = [view2 layer];
          [layer2 setFilters:v22];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v12);
  }

  regionCopy = v26;
  itemsCopy = v27;
LABEL_14:

  return itemsCopy;
}

- (id)additionAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation
{
  identifierCopy = identifier;
  animationCopy = animation;
  v17.receiver = self;
  v17.super_class = _UIStatusBarVisualProvider_DynamicSplit;
  if (-[_UIStatusBarVisualProvider_Split hasCustomAnimationForDisplayItemWithIdentifier:removal:](&v17, sel_hasCustomAnimationForDisplayItemWithIdentifier_removal_, identifierCopy, 0) || (-[_UIStatusBarVisualProvider_iOS statusBar](self, "statusBar"), v8 = objc_claimAutoreleasedReturnValue(), -[_UIStatusBarVisualProvider_Split regionIdentifiersForPartWithIdentifier:](self, "regionIdentifiersForPartWithIdentifier:", 0x1EFB9C3D0), v9 = objc_claimAutoreleasedReturnValue(), [v9 allObjects], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "displayItemIdentifiersInRegionsWithIdentifiers:", v10), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "containsObject:", identifierCopy), v11, v10, v9, v8, !v12))
  {
    v16.receiver = self;
    v16.super_class = _UIStatusBarVisualProvider_DynamicSplit;
    v13 = [(_UIStatusBarVisualProvider_Split *)&v16 additionAnimationForDisplayItemWithIdentifier:identifierCopy itemAnimation:animationCopy];
  }

  else
  {
    v13 = _UIStatusBarDynamicSplitDefaultAnimation(self, identifierCopy);
  }

  v14 = v13;

  return v14;
}

- (id)removalAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation
{
  identifierCopy = identifier;
  animationCopy = animation;
  v17.receiver = self;
  v17.super_class = _UIStatusBarVisualProvider_DynamicSplit;
  if (-[_UIStatusBarVisualProvider_Split hasCustomAnimationForDisplayItemWithIdentifier:removal:](&v17, sel_hasCustomAnimationForDisplayItemWithIdentifier_removal_, identifierCopy, 1) || (-[_UIStatusBarVisualProvider_iOS statusBar](self, "statusBar"), v8 = objc_claimAutoreleasedReturnValue(), -[_UIStatusBarVisualProvider_Split regionIdentifiersForPartWithIdentifier:](self, "regionIdentifiersForPartWithIdentifier:", 0x1EFB9C3D0), v9 = objc_claimAutoreleasedReturnValue(), [v9 allObjects], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "displayItemIdentifiersInRegionsWithIdentifiers:", v10), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "containsObject:", identifierCopy), v11, v10, v9, v8, !v12))
  {
    v16.receiver = self;
    v16.super_class = _UIStatusBarVisualProvider_DynamicSplit;
    v13 = [(_UIStatusBarVisualProvider_Split *)&v16 removalAnimationForDisplayItemWithIdentifier:identifierCopy itemAnimation:animationCopy];
  }

  else
  {
    v13 = _UIStatusBarDynamicSplitDefaultAnimation(self, identifierCopy);
  }

  v14 = v13;

  return v14;
}

- (id)overriddenStyleAttributesForDisplayItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[_UIStatusBarBatteryItem iconDisplayIdentifier];
  v6 = v5;
  if (v5 == identifierCopy)
  {
  }

  else
  {
    v7 = +[_UIStatusBarBatteryItem staticIconDisplayIdentifier];

    if (v7 != identifierCopy)
    {
      v11.receiver = self;
      v11.super_class = _UIStatusBarVisualProvider_DynamicSplit;
      v8 = [(_UIStatusBarVisualProvider_Split *)&v11 overriddenStyleAttributesForDisplayItemWithIdentifier:identifierCopy];
      goto LABEL_6;
    }
  }

  v8 = +[_UIStatusBarStyleAttributes overriddenStyleAttributes];
  normalRoundFont = [(_UIStatusBarVisualProvider_DynamicSplit *)self normalRoundFont];
  [v8 setFont:normalRoundFont];

LABEL_6:

  return v8;
}

- (void)orientationUpdatedFromOrientation:(int64_t)orientation
{
  statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  currentAggregatedData = [statusBar currentAggregatedData];
  v6 = [(_UIStatusBarVisualProvider_Split *)self _updateLowerRegionsWithData:currentAggregatedData];

  if (v6)
  {
    statusBar2 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    [statusBar2 updateWithAnimations:MEMORY[0x1E695E0F0]];
  }
}

- (void)dataUpdated:(id)updated
{
  updatedCopy = updated;
  v5 = [(_UIStatusBarVisualProvider_DynamicSplit *)self _updateSystemNavigationWithData:updatedCopy avoidanceFrame:_avoidanceFrameInLocalCoordinateSpace(self)];
  v6 = [(_UIStatusBarVisualProvider_Split *)self _updateLowerRegionsWithData:updatedCopy];

  if (v5 || v6)
  {
    statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    [statusBar updateWithAnimations:MEMORY[0x1E695E0F0]];
  }
}

- (BOOL)_updateSystemNavigationWithData:(id)data avoidanceFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  dataCopy = data;
  statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  _shouldReverseLayoutDirection = [statusBar _shouldReverseLayoutDirection];

  [(_UIStatusBarVisualProvider_DynamicSplit *)self sensorAreaRect];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  v46.origin.x = v13;
  v46.origin.y = v15;
  v46.size.width = v17;
  v46.size.height = v19;
  if (!CGRectIntersectsRect(v42, v46))
  {
    height = v19;
    width = v17;
    y = v15;
    x = v13;
  }

  if (_shouldReverseLayoutDirection)
  {
    mainRegionsLayoutGuide = [(_UIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
    [mainRegionsLayoutGuide layoutFrame];
    MaxX = CGRectGetMaxX(v43);
    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.width = width;
    v44.size.height = height;
    MinX = MaxX - CGRectGetMaxX(v44);
  }

  else
  {
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = height;
    MinX = CGRectGetMinX(v45);
  }

  [(_UIStatusBarVisualProvider_Split *)self bottomLeadingSpace];
  v24 = MinX - (v23 + v23);
  [(_UIStatusBarVisualProvider_DynamicSplit *)self minimumBottomLeadingWidth];
  v26 = v25;
  backNavigationEntry = [dataCopy backNavigationEntry];
  v29 = v26 > v24 || backNavigationEntry != 0;

  if (v29)
  {
    statusBar2 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    regions = [statusBar2 regions];
    v32 = [regions objectForKeyedSubscript:0x1EFB9B0F0];

    statusBar3 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    regions2 = [statusBar3 regions];
    v35 = [regions2 objectForKeyedSubscript:0x1EFB3CE30];
    action = [v35 action];

    [(_UIStatusBarVisualProvider_DynamicSplit *)self edgeInsets];
    v38 = v37;
    backNavigationEntry2 = [dataCopy backNavigationEntry];
    LODWORD(regions2) = [backNavigationEntry2 isEnabled];

    if (regions2 && v26 <= v24)
    {
      [(_UIStatusBarVisualProvider_DynamicSplit *)self topLeadingCenterOffset];
      [(NSLayoutConstraint *)self->_leadingCenterYConstraint setConstant:v38 - v40];
      [action setEnabled:0];
      [v32 enableWithToken:13];
    }

    else
    {
      [(NSLayoutConstraint *)self->_leadingCenterYConstraint setConstant:v38];
      [action setEnabled:1];
      [v32 disableWithToken:13];
    }
  }

  return v29;
}

@end