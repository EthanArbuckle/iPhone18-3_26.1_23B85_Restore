@interface STUIStatusBarVisualProvider_DynamicSplit
+ (Class)visualProviderSubclassForScreen:(id)screen visualProviderInfo:(id)info;
- (BOOL)_needsUpdateOfConstraintsForAvoidanceFrame:(double *)frame cutoutOffset:(CGFloat)offset cutoutWidth:(CGFloat)width;
- (CGSize)smallPillSize;
- (NSDirectionalEdgeInsets)expandedEdgeInsets;
- (double)edgeInsets;
- (double)effectiveTargetDisplayWidth;
- (double)sensorAreaRect;
- (id)_orderedDisplayItemPlacements;
- (id)_updateSystemNavigationWithData:(CGFloat)data avoidanceFrame:(CGFloat)frame;
- (id)additionAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation;
- (id)displayItemIdentifiersForPartWithIdentifier:(id)identifier;
- (id)leadingItemCutoffWidths;
- (id)region:(id)region willSetDisplayItems:(id)items;
- (id)removalAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation;
- (id)setupInContainerView:(id)view;
- (id)trailingItemCutoffWidths;
- (uint64_t)_updateSystemUpdateRegionEnablement:(uint64_t)enablement forTrailingNumberOfItems:;
- (void)_calculateSquishyLayoutValuesForCutoutOffset:(uint64_t)offset cutoutWidth:(uint64_t *)width maxLeadingItems:(uint64_t *)items maxTrailingItems:(void *)trailingItems leadingScale:(void *)scale trailingScale:(double)trailingScale includingPrivacyIndicator:(double)indicator;
- (void)_updateRingerDisplayItem:(int)item enabled:;
- (void)avoidanceFrameUpdatedFromFrame:(CGRect)frame withAnimationSettings:(id)settings options:(unint64_t)options;
- (void)dataUpdated:(id)updated;
- (void)itemCreated:(id)created;
- (void)orientationUpdatedFromOrientation:(int64_t)orientation;
- (void)setOnAODLockScreen:(BOOL)screen;
- (void)setOnLockScreen:(BOOL)screen;
- (void)updateDisplayItem:(id)item toDynamicallyHidden:(BOOL)hidden scale:(double)scale;
- (void)updateDisplayItem:(id)item toScale:(double)scale;
@end

@implementation STUIStatusBarVisualProvider_DynamicSplit

- (double)edgeInsets
{
  if (!self)
  {
    return 0.0;
  }

  if ((*(self + 328) & 4) == 0)
  {
    *(self + 328) |= 4u;
    statusBar = [self statusBar];
    _effectiveTargetScreen = [statusBar _effectiveTargetScreen];

    [_effectiveTargetScreen _nativeScale];
    v5 = v4;
    [_effectiveTargetScreen _displayCornerRadiusIgnoringZoom];
    v7 = floor(v5 * (v6 + -55.0) / 10.0) / v5;
    v10.origin.x = [(STUIStatusBarVisualProvider_DynamicSplit *)self sensorAreaRect];
    v8 = v7 + floor(v5 * fmax(CGRectGetMinY(v10) + -14.0, 0.0) / -3.0) / v5;
    *(self + 296) = v7;
    *(self + 304) = v8 + 17.0;
    *(self + 312) = 0;
    *(self + 320) = v8 + 18.0;
  }

  return *(self + 296);
}

- (double)sensorAreaRect
{
  if (!self)
  {
    return 0.0;
  }

  if ((*(self + 328) & 1) == 0)
  {
    *(self + 328) |= 1u;
    statusBar = [self statusBar];
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
    *(self + 256) = v10;
    *(self + 264) = v16;
    *(self + 272) = v22;
    *(self + 280) = v26 / v27;
  }

  return *(self + 256);
}

- (double)effectiveTargetDisplayWidth
{
  if (!self)
  {
    return 0.0;
  }

  if ((*(self + 328) & 2) == 0)
  {
    *(self + 328) |= 2u;
    statusBar = [self statusBar];
    _effectiveTargetScreen = [statusBar _effectiveTargetScreen];

    [_effectiveTargetScreen _unjailedReferenceBounds];
    Width = CGRectGetWidth(v9);
    [_effectiveTargetScreen _nativeScale];
    v6 = Width * v5;
    [_effectiveTargetScreen _scale];
    *(self + 288) = v6 / v7;
  }

  return *(self + 288);
}

- (id)leadingItemCutoffWidths
{
  if (_MergedGlobals_11 != -1)
  {
    dispatch_once(&_MergedGlobals_11, &__block_literal_global_3);
  }

  v1 = qword_280C1E788;

  return v1;
}

- (id)trailingItemCutoffWidths
{
  if (qword_280C1E790 != -1)
  {
    dispatch_once(&qword_280C1E790, &__block_literal_global_70);
  }

  v1 = qword_280C1E798;

  return v1;
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

- (id)_orderedDisplayItemPlacements
{
  v8.receiver = self;
  v8.super_class = STUIStatusBarVisualProvider_DynamicSplit;
  _orderedDisplayItemPlacements = [(STUIStatusBarVisualProvider_Split *)&v8 _orderedDisplayItemPlacements];
  v3 = [_orderedDisplayItemPlacements objectForKeyedSubscript:@"trailing"];
  v4 = +[(STUIStatusBarItem *)STUIStatusBarSensorActivityItem];
  v5 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v4 priority:1310];
  v6 = [v3 arrayByAddingObject:v5];
  [_orderedDisplayItemPlacements setObject:v6 forKeyedSubscript:@"trailing"];

  return _orderedDisplayItemPlacements;
}

- (CGSize)smallPillSize
{
  v2 = 20.0;
  v3 = 20.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (Class)visualProviderSubclassForScreen:(id)screen visualProviderInfo:(id)info
{
  screenCopy = screen;
  [screenCopy _unjailedReferenceBounds];
  Width = CGRectGetWidth(v14);
  [screenCopy _nativeScale];
  v8 = Width * v7;
  [screenCopy _scale];
  v10 = v9;

  if (v8 / v10 <= 402.0)
  {
    selfCopy = objc_opt_class();
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)setupInContainerView:(id)view
{
  v211[2] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  [objc_opt_class() height];
  v198 = v6;
  [(STUIStatusBarVisualProvider_DynamicSplit *)self sensorAreaRect];
  v8 = v7;
  v10 = v9;
  edgeInsets = [(STUIStatusBarVisualProvider_DynamicSplit *)self edgeInsets];
  v12 = v11;
  v194 = v13;
  v195 = v14;
  [(STUIStatusBarVisualProvider_DynamicSplit *)self leadingItemSpacing];
  v193 = v15;
  [(STUIStatusBarVisualProvider_DynamicSplit *)self itemSpacing];
  v200 = v16;
  normalFont = [(STUIStatusBarVisualProvider_Split *)self normalFont];
  [normalFont capHeight];
  v19 = v18;

  statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  [statusBar avoidanceFrame];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v209 = 0.0;
  v210 = 0.0;
  [(STUIStatusBarVisualProvider_DynamicSplit *)&self->super.super.super.super.isa _needsUpdateOfConstraintsForAvoidanceFrame:&v209 cutoutOffset:v22 cutoutWidth:v24, v26, v28];
  v207 = 0.0;
  v208 = 0.0;
  v205 = 0;
  v206 = 0;
  [STUIStatusBarVisualProvider_DynamicSplit _calculateSquishyLayoutValuesForCutoutOffset:&v206 cutoutWidth:&v205 maxLeadingItems:&v208 maxTrailingItems:&v207 leadingScale:v210 trailingScale:v209 includingPrivacyIndicator:?];
  v29 = objc_alloc_init(MEMORY[0x277D756D0]);
  [v29 setIdentifier:@"UIStatusBarCutout"];
  topAnchor = [v29 topAnchor];
  topAnchor2 = [viewCopy topAnchor];
  v32 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v8];
  [array addObject:v32];

  trailingAnchor = [viewCopy trailingAnchor];
  centerXAnchor = [v29 centerXAnchor];
  v35 = [trailingAnchor constraintEqualToAnchor:centerXAnchor constant:v210];
  v36 = v35;
  if (self)
  {
    objc_storeStrong(&self->_cutoutCenterConstraint, v35);

    [array addObject:self->_cutoutCenterConstraint];
    widthAnchor = [v29 widthAnchor];
    v38 = [widthAnchor constraintEqualToConstant:v209];
    objc_storeStrong(&self->_cutoutWidthConstraint, v38);

    cutoutWidthConstraint = self->_cutoutWidthConstraint;
    v40 = 8.0;
    v41 = 0.94;
  }

  else
  {

    [array addObject:0];
    widthAnchor2 = [v29 widthAnchor];
    [widthAnchor2 constraintEqualToConstant:v209];

    cutoutWidthConstraint = 0;
    v41 = 0.0;
    v40 = 0.0;
  }

  [array addObject:cutoutWidthConstraint];
  heightAnchor = [v29 heightAnchor];
  v43 = [heightAnchor constraintEqualToConstant:v10];
  [array addObject:v43];

  [viewCopy addLayoutGuide:v29];
  [(STUIStatusBarVisualProvider_Split *)self setCutoutLayoutGuide:v29];

  v44 = objc_alloc_init(MEMORY[0x277D756D0]);
  [v44 setIdentifier:@"UIStatusBarMainRegions"];
  trailingAnchor2 = [v44 trailingAnchor];
  trailingAnchor3 = [viewCopy trailingAnchor];
  v47 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];

  LODWORD(v48) = 1144750080;
  [v47 setPriority:v48];
  [array addObject:v47];
  widthAnchor3 = [v44 widthAnchor];
  v50 = [widthAnchor3 constraintEqualToConstant:-[STUIStatusBarVisualProvider_DynamicSplit effectiveTargetDisplayWidth](self)];

  LODWORD(v51) = 1144750080;
  [v50 setPriority:v51];
  [array addObject:v50];
  heightAnchor2 = [v44 heightAnchor];
  [heightAnchor2 constraintEqualToConstant:v10];
  v54 = v53 = viewCopy;
  [array addObject:v54];

  bottomAnchor = [v44 bottomAnchor];
  cutoutLayoutGuide = [(STUIStatusBarVisualProvider_Split *)self cutoutLayoutGuide];
  bottomAnchor2 = [cutoutLayoutGuide bottomAnchor];
  v58 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [array addObject:v58];

  v201 = v53;
  [v53 addLayoutGuide:v44];

  [(STUIStatusBarVisualProvider_Split *)self setMainRegionsLayoutGuide:v44];
  v59 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"leading"];
  v60 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v61 = objc_alloc_init(STUIStatusBarRegionAxisSquishyLayout);
  [(STUIStatusBarRegionAxisSquishyLayout *)v61 setAlignment:3];
  [(STUIStatusBarRegionAxisSquishyLayout *)v61 setInterspace:v193];
  [(STUIStatusBarRegionAxisSquishyLayout *)v61 setCompressItems:1];
  [(STUIStatusBarRegionAxisSquishyLayout *)v61 setMaxNumberOfItems:3];
  _updateSquishyRegionForDynamicValues(v61, v206, v208);
  [(STUIStatusBarRegionAxisSquishyLayout *)v61 setMinItemDynamicScale:v41];
  [(STUIStatusBarRegionAxisSquishyLayout *)v61 setMinInterspaceDynamicScale:0.6];
  [(STUIStatusBarRegionAxisSquishyLayout *)v61 setDynamicHidingDelegate:self];
  [(STUIStatusBarRegionAxesLayout *)v60 setHorizontalLayout:v61];

  v62 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:5];
  [(STUIStatusBarRegionAxesLayout *)v60 setVerticalLayout:v62];

  [(STUIStatusBarRegion *)v59 setLayout:v60];
  [(STUIStatusBarRegion *)v59 setActionInsets:-edgeInsets, -v12, -(v198 + v194 - v10), -v195];
  [(STUIStatusBarRegion *)v59 setDisableItemFrameBasedOverflow:1];
  layoutItem = [(STUIStatusBarRegion *)v59 layoutItem];
  centerYAnchor = [layoutItem centerYAnchor];
  mainRegionsLayoutGuide = [(STUIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  centerYAnchor2 = [mainRegionsLayoutGuide centerYAnchor];
  v67 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:edgeInsets];
  leadingCenterYConstraint = self->_leadingCenterYConstraint;
  self->_leadingCenterYConstraint = v67;

  [array addObject:self->_leadingCenterYConstraint];
  v69 = layoutItem;
  heightAnchor3 = [layoutItem heightAnchor];
  v71 = [heightAnchor3 constraintEqualToConstant:v19 + 1.0];
  [array addObject:v71];

  leadingAnchor = [layoutItem leadingAnchor];
  mainRegionsLayoutGuide2 = [(STUIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  leadingAnchor2 = [mainRegionsLayoutGuide2 leadingAnchor];
  v75 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v12];
  [array addObject:v75];

  v199 = v69;
  trailingAnchor4 = [v69 trailingAnchor];
  cutoutLayoutGuide2 = [(STUIStatusBarVisualProvider_Split *)self cutoutLayoutGuide];
  leadingAnchor3 = [cutoutLayoutGuide2 leadingAnchor];
  v79 = [trailingAnchor4 constraintEqualToAnchor:leadingAnchor3 constant:-v40];

  LODWORD(v80) = 1144750080;
  [v79 setPriority:v80];
  [array addObject:v79];
  [v53 _ui_addSubLayoutItem:v69];

  [array2 addObject:v59];
  v81 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"trailing"];
  v82 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v83 = objc_alloc_init(STUIStatusBarRegionAxisSquishyLayout);
  [(STUIStatusBarRegionAxisSquishyLayout *)v83 setAlignment:4];
  [(STUIStatusBarRegionAxisSquishyLayout *)v83 setInterspace:v200];
  [(STUIStatusBarRegionAxisSquishyLayout *)v83 setMaxNumberOfItems:3];
  _updateSquishyRegionForDynamicValues(v83, v205, v207);
  [(STUIStatusBarRegionAxisSquishyLayout *)v83 setMinItemDynamicScale:v41];
  [(STUIStatusBarRegionAxisSquishyLayout *)v83 setMinInterspaceDynamicScale:0.6];
  [(STUIStatusBarRegionAxisSquishyLayout *)v83 setDynamicHidingDelegate:self];
  [(STUIStatusBarRegionAxesLayout *)v82 setHorizontalLayout:v83];

  v84 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:5];
  [(STUIStatusBarRegionAxesLayout *)v82 setVerticalLayout:v84];

  [(STUIStatusBarRegion *)v81 setLayout:v82];
  [(STUIStatusBarRegion *)v81 setActionInsets:-100.0, -20.0, -10.0, -20.0];
  [(STUIStatusBarRegion *)v81 setDisableItemFrameBasedOverflow:1];
  layoutItem2 = [(STUIStatusBarRegion *)v81 layoutItem];
  v86 = +[STUIStatusBarStyleAttributes overriddenStyleAttributes];
  emphasizedFont = [(STUIStatusBarVisualProvider_Split *)self emphasizedFont];
  [v86 setFont:emphasizedFont];

  normalFont2 = [(STUIStatusBarVisualProvider_Split *)self normalFont];
  [v86 setSmallFont:normalFont2];

  [v86 setImageNamePrefixes:&unk_287D1AE58];
  [(STUIStatusBarRegion *)v81 setOverriddenStyleAttributes:v86];
  centerYAnchor3 = [layoutItem2 centerYAnchor];
  mainRegionsLayoutGuide3 = [(STUIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  centerYAnchor4 = [mainRegionsLayoutGuide3 centerYAnchor];
  v92 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4 constant:edgeInsets];
  [array addObject:v92];

  heightAnchor4 = [layoutItem2 heightAnchor];
  v94 = [heightAnchor4 constraintEqualToConstant:v19 + 1.0];
  [array addObject:v94];

  trailingAnchor5 = [layoutItem2 trailingAnchor];
  mainRegionsLayoutGuide4 = [(STUIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  trailingAnchor6 = [mainRegionsLayoutGuide4 trailingAnchor];
  v98 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-v195];
  [array addObject:v98];

  leadingAnchor4 = [layoutItem2 leadingAnchor];
  cutoutLayoutGuide3 = [(STUIStatusBarVisualProvider_Split *)self cutoutLayoutGuide];
  trailingAnchor7 = [cutoutLayoutGuide3 trailingAnchor];
  v102 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor7 constant:v40];

  LODWORD(v103) = 1144750080;
  [v102 setPriority:v103];
  [array addObject:v102];
  [v201 _ui_addSubLayoutItem:layoutItem2];

  [array2 addObject:v81];
  v104 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"systemUpdates"];
  v105 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v106 = objc_alloc_init(STUIStatusBarRegionAxisCenteringLayout);
  [(STUIStatusBarRegionAxisCenteringLayout *)v106 setMaxNumberOfItems:3];
  [(STUIStatusBarRegionAxesLayout *)v105 setHorizontalLayout:v106];

  v107 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:5];
  [(STUIStatusBarRegionAxesLayout *)v105 setVerticalLayout:v107];

  [(STUIStatusBarRegion *)v104 setLayout:v105];
  v108 = +[STUIStatusBarStyleAttributes overriddenStyleAttributes];
  [v108 setImageNamePrefixes:&unk_287D1AE70];
  systemUpdateFont = [(STUIStatusBarVisualProvider_Split *)self systemUpdateFont];
  [v108 setFont:systemUpdateFont];

  systemUpdateFont2 = [(STUIStatusBarVisualProvider_Split *)self systemUpdateFont];
  [v108 setEmphasizedFont:systemUpdateFont2];

  [v108 setSymbolScale:2];
  [(STUIStatusBarRegion *)v104 setOverriddenStyleAttributes:v108];
  layoutItem3 = [(STUIStatusBarRegion *)v104 layoutItem];
  topAnchor3 = [layoutItem3 topAnchor];
  topAnchor4 = [layoutItem2 topAnchor];
  v114 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [array addObject:v114];

  layoutItem4 = [(STUIStatusBarRegion *)v104 layoutItem];
  bottomAnchor3 = [layoutItem4 bottomAnchor];
  bottomAnchor4 = [layoutItem2 bottomAnchor];
  v118 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  [array addObject:v118];

  layoutItem5 = [(STUIStatusBarRegion *)v104 layoutItem];
  rightAnchor = [layoutItem5 rightAnchor];
  rightAnchor2 = [layoutItem2 rightAnchor];
  v122 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [array addObject:v122];

  layoutItem6 = [(STUIStatusBarRegion *)v104 layoutItem];
  leftAnchor = [layoutItem6 leftAnchor];
  leftAnchor2 = [layoutItem2 leftAnchor];
  v126 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [array addObject:v126];

  layoutItem7 = [(STUIStatusBarRegion *)v104 layoutItem];
  [v201 _ui_addSubLayoutItem:layoutItem7];

  [(STUIStatusBarVisualProvider_DynamicSplit *)self _updateSystemUpdateRegionEnablement:v104 forTrailingNumberOfItems:v205];
  [array2 addObject:v104];

  v128 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"controlCenter"];
  v129 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v130 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  [(STUIStatusBarRegionAxesLayout *)v129 setHorizontalLayout:v130];

  v131 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  [(STUIStatusBarRegionAxesLayout *)v129 setVerticalLayout:v131];

  [(STUIStatusBarRegion *)v128 setLayout:v129];
  layoutItem8 = [(STUIStatusBarRegion *)v128 layoutItem];
  bottomAnchor5 = [layoutItem8 bottomAnchor];
  cutoutLayoutGuide4 = [(STUIStatusBarVisualProvider_Split *)self cutoutLayoutGuide];
  bottomAnchor6 = [cutoutLayoutGuide4 bottomAnchor];
  v136 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-2.0];
  [array addObject:v136];

  layoutItem9 = [(STUIStatusBarRegion *)v128 layoutItem];
  heightAnchor5 = [layoutItem9 heightAnchor];
  [(STUIStatusBarVisualProvider_Split *)self grabberHeight];
  v139 = [heightAnchor5 constraintEqualToConstant:?];
  [array addObject:v139];

  layoutItem10 = [(STUIStatusBarRegion *)v128 layoutItem];
  leftAnchor3 = [layoutItem10 leftAnchor];
  leftAnchor4 = [layoutItem2 leftAnchor];
  v143 = [leftAnchor3 constraintGreaterThanOrEqualToAnchor:leftAnchor4 constant:10.0];
  [array addObject:v143];

  layoutItem11 = [(STUIStatusBarRegion *)v128 layoutItem];
  rightAnchor3 = [layoutItem11 rightAnchor];
  v196 = layoutItem2;
  rightAnchor4 = [layoutItem2 rightAnchor];
  v147 = [rightAnchor3 constraintLessThanOrEqualToAnchor:rightAnchor4 constant:-10.0];
  [array addObject:v147];

  layoutItem12 = [(STUIStatusBarRegion *)v128 layoutItem];
  widthAnchor4 = [layoutItem12 widthAnchor];
  v150 = [widthAnchor4 constraintEqualToConstant:41.0];

  LODWORD(v151) = 1132068864;
  [v150 setPriority:v151];
  [array addObject:v150];
  layoutItem13 = [(STUIStatusBarRegion *)v128 layoutItem];
  centerXAnchor2 = [layoutItem13 centerXAnchor];
  centerXAnchor3 = [layoutItem2 centerXAnchor];
  v155 = [centerXAnchor2 constraintEqualToAnchor:centerXAnchor3];
  [array addObject:v155];

  layoutItem14 = [(STUIStatusBarRegion *)v128 layoutItem];
  [v201 _ui_addSubLayoutItem:layoutItem14];

  [array2 addObject:v128];
  v203 = array2;
  v204 = array;
  [(STUIStatusBarVisualProvider_Split *)self _setupExpandedRegionsInContainerView:v201 sensorHeight:&v204 constraints:&v203 regions:v10];
  v157 = v204;

  v158 = v203;
  v159 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"bottomLeading"];
  v160 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v161 = objc_alloc_init(STUIStatusBarRegionAxisStackingLayout);
  [(STUIStatusBarRegionAxisStackingLayout *)v161 setAlignment:3];
  [(STUIStatusBarRegionAxisStackingLayout *)v161 setInterspace:v200];
  [(STUIStatusBarRegionAxesLayout *)v160 setHorizontalLayout:v161];

  v162 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:6];
  [(STUIStatusBarRegionAxesLayout *)v160 setVerticalLayout:v162];

  [(STUIStatusBarRegion *)v159 setLayout:v160];
  [(STUIStatusBarRegion *)v159 setActionInsets:-100.0, -12.0, -10.0, -12.0];
  layoutItem15 = [(STUIStatusBarRegion *)v159 layoutItem];
  leadingAnchor5 = [layoutItem15 leadingAnchor];
  mainRegionsLayoutGuide5 = [(STUIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  leadingAnchor6 = [mainRegionsLayoutGuide5 leadingAnchor];
  [(STUIStatusBarVisualProvider_Split *)self bottomLeadingSpace];
  v167 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:?];
  [v157 addObject:v167];

  layoutItem16 = [(STUIStatusBarRegion *)v159 layoutItem];
  trailingAnchor8 = [layoutItem16 trailingAnchor];
  cutoutLayoutGuide5 = [(STUIStatusBarVisualProvider_Split *)self cutoutLayoutGuide];
  leadingAnchor7 = [cutoutLayoutGuide5 leadingAnchor];
  [(STUIStatusBarVisualProvider_Split *)self bottomLeadingSpace];
  v173 = [trailingAnchor8 constraintEqualToAnchor:leadingAnchor7 constant:-v172];
  [v157 addObject:v173];

  layoutItem17 = [(STUIStatusBarRegion *)v159 layoutItem];
  bottomAnchor7 = [layoutItem17 bottomAnchor];
  cutoutLayoutGuide6 = [(STUIStatusBarVisualProvider_Split *)self cutoutLayoutGuide];
  bottomAnchor8 = [cutoutLayoutGuide6 bottomAnchor];
  [(STUIStatusBarVisualProvider_DynamicSplit *)self bottomLeadingTopOffset];
  v179 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8 constant:-v178];
  [v157 addObject:v179];

  layoutItem18 = [(STUIStatusBarRegion *)v159 layoutItem];
  heightAnchor6 = [layoutItem18 heightAnchor];
  v182 = [heightAnchor6 constraintEqualToConstant:13.3333333];
  [v157 addObject:v182];

  layoutItem19 = [(STUIStatusBarRegion *)v159 layoutItem];
  [v201 _ui_insertSubLayoutItem:layoutItem19 atIndex:0];

  [v158 addObject:v159];
  v184 = STUIStatusBarAddLumaView(v201, v157, v199, 0, v10);
  [(STUIStatusBarVisualProvider_Split *)self setLeadingBackgroundLumaView:v184];

  v185 = STUIStatusBarAddLumaView(v201, v157, v196, 0, v10);
  [(STUIStatusBarVisualProvider_Split *)self setTrailingBackgroundLumaView:v185];

  v186 = objc_alloc(MEMORY[0x277D760C8]);
  leadingBackgroundLumaView = [(STUIStatusBarVisualProvider_Split *)self leadingBackgroundLumaView];
  v211[0] = leadingBackgroundLumaView;
  trailingBackgroundLumaView = [(STUIStatusBarVisualProvider_Split *)self trailingBackgroundLumaView];
  v211[1] = trailingBackgroundLumaView;
  v189 = [MEMORY[0x277CBEA60] arrayWithObjects:v211 count:2];
  v190 = [v186 initWithTransitionBoundaries:self minimumDifference:v189 delegate:0.4 views:{0.7, 0.5}];
  [(STUIStatusBarVisualProvider_iOS *)self setLumaTrackingGroup:v190];

  [MEMORY[0x277CCAAD0] activateConstraints:v157];

  return v158;
}

- (BOOL)_needsUpdateOfConstraintsForAvoidanceFrame:(double *)frame cutoutOffset:(CGFloat)offset cutoutWidth:(CGFloat)width
{
  if (!self)
  {
    return 0;
  }

  [(STUIStatusBarVisualProvider_DynamicSplit *)self sensorAreaRect];
  v15 = v14;
  v16 = v14 + 20.0;
  effectiveTargetDisplayWidth = [(STUIStatusBarVisualProvider_DynamicSplit *)self effectiveTargetDisplayWidth];
  if (a6 <= v16)
  {
    v33.origin.x = [(STUIStatusBarVisualProvider_DynamicSplit *)self sensorAreaRect];
    MidX = CGRectGetMidX(v33);
    statusBar = [self statusBar];
    styleAttributes = [statusBar styleAttributes];
    effectiveLayoutDirection = [styleAttributes effectiveLayoutDirection];

    if (effectiveLayoutDirection == 1)
    {
      v22 = MidX;
    }

    else
    {
      v22 = effectiveTargetDisplayWidth - MidX;
    }

    a6 = v15;
  }

  else
  {
    v32.origin.x = offset;
    v32.origin.y = width;
    v32.size.width = a6;
    v32.size.height = a7;
    v18 = CGRectGetMidX(v32);
    statusBar2 = [self statusBar];
    styleAttributes2 = [statusBar2 styleAttributes];
    effectiveLayoutDirection2 = [styleAttributes2 effectiveLayoutDirection];

    if (effectiveLayoutDirection2 == 1)
    {
      v22 = v18;
    }

    else
    {
      v22 = effectiveTargetDisplayWidth - v18;
    }
  }

  v27 = 0;
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (a2)
    {
      *a2 = v22;
    }

    if (frame)
    {
      *frame = a6;
    }

    v28 = self[43];
    [v28 constant];
    if (v22 == v29)
    {
      [self[42] constant];
      v27 = a6 != v30;
    }

    else
    {
      v27 = 1;
    }
  }

  return v27;
}

- (void)_calculateSquishyLayoutValuesForCutoutOffset:(uint64_t)offset cutoutWidth:(uint64_t *)width maxLeadingItems:(uint64_t *)items maxTrailingItems:(void *)trailingItems leadingScale:(void *)scale trailingScale:(double)trailingScale includingPrivacyIndicator:(double)indicator
{
  if (offset)
  {
    [(STUIStatusBarVisualProvider_DynamicSplit *)offset edgeInsets];
    v15 = v14;
    v17 = v16;
    effectiveTargetDisplayWidth = [(STUIStatusBarVisualProvider_DynamicSplit *)offset effectiveTargetDisplayWidth];
    v19 = indicator * 0.5;
    v20 = fmax(effectiveTargetDisplayWidth - trailingScale - indicator * 0.5 - v15 + -8.0, 0.0);
    v21 = trailingScale - v19 - v17 + -8.0;
    if (width)
    {
      leadingItemCutoffWidths = [STUIStatusBarVisualProvider_DynamicSplit leadingItemCutoffWidths];
      v23 = numberOfItemsForWidth(leadingItemCutoffWidths, v20);

      *width = v23;
    }

    v24 = fmax(v21, 0.0);
    if (items)
    {
      trailingItemCutoffWidths = [STUIStatusBarVisualProvider_DynamicSplit trailingItemCutoffWidths];
      v26 = numberOfItemsForWidth(trailingItemCutoffWidths, v24);

      *items = v26;
    }

    if (trailingItems)
    {
      leadingItemCutoffWidths2 = [STUIStatusBarVisualProvider_DynamicSplit leadingItemCutoffWidths];
      scaleForWidth(leadingItemCutoffWidths2);
      v29 = v28;

      *trailingItems = v29;
    }

    if (scale)
    {
      trailingItemCutoffWidths2 = [STUIStatusBarVisualProvider_DynamicSplit trailingItemCutoffWidths];
      scaleForWidth(trailingItemCutoffWidths2);
      v32 = v31;

      *scale = v32;
    }
  }
}

- (uint64_t)_updateSystemUpdateRegionEnablement:(uint64_t)enablement forTrailingNumberOfItems:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    if (enablement < 2)
    {
      v7 = [v5 disableWithToken:13];
    }

    else
    {
      v7 = [v5 enableWithToken:13];
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)updateDisplayItem:(id)item toDynamicallyHidden:(BOOL)hidden scale:(double)scale
{
  hiddenCopy = hidden;
  itemCopy = item;
  if ([itemCopy visible])
  {
    if ([MEMORY[0x277D75D18] _isInAnimationBlockWithAnimationsEnabled] && self->_currentAnimationSettings && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = self->_currentAnimationSettings;
      [(BSAnimationSettings *)v9 damping];
      v11 = v10;
      if (v10 < 0.7)
      {
        v12 = MEMORY[0x277CF0CF0];
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
      [(BSAnimationSettings *)v9 stiffness];
      [(BSAnimationSettings *)v9 damping];
      [(BSAnimationSettings *)v9 initialVelocity];
      _StatusBar_UIGetDurationOfSpringAnimation();
      v22 = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __88__STUIStatusBarVisualProvider_DynamicSplit_updateDisplayItem_toDynamicallyHidden_scale___block_invoke;
      aBlock[3] = &unk_279D38650;
      v39 = hiddenCopy;
      v36 = itemCopy;
      v37 = v22;
      scaleCopy = scale;
      v23 = _Block_copy(aBlock);
      v24 = v23;
      if (v11 >= 0.7)
      {
        (*(v23 + 2))(v23, 1);
      }

      else
      {
        [MEMORY[0x277CF0B70] tryAnimatingWithSettings:v9 fromCurrentState:1 actions:v23 completion:0];
      }
    }

    else
    {
      v26 = 0.25;
      if (!hiddenCopy)
      {
        v26 = 0.5;
      }

      STUIStatusBarDynamicSplitPerformBaseAnimation(itemCopy, hiddenCopy, 1, 1, 0, 0.5, v26, 0.0);
      if (!hiddenCopy)
      {
        v27 = MEMORY[0x277D75D18];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __88__STUIStatusBarVisualProvider_DynamicSplit_updateDisplayItem_toDynamicallyHidden_scale___block_invoke_94;
        v32[3] = &unk_279D38628;
        v33 = itemCopy;
        scaleCopy2 = scale;
        [v27 animateWithDuration:4 delay:v32 options:0 animations:0.25 completion:0.0];
      }
    }
  }

  else
  {
    if (hiddenCopy)
    {
      [itemCopy setDynamicHidingAlpha:0.0];
      CGAffineTransformMakeScale(&v31, 0.5, 0.5);
      *&v30.a = *&v31.a;
      *&v30.c = *&v31.c;
      v25 = *&v31.tx;
    }

    else
    {
      [itemCopy setDynamicHidingAlpha:1.0];
      v28 = *(MEMORY[0x277CBF2C0] + 16);
      *&v30.a = *MEMORY[0x277CBF2C0];
      *&v30.c = v28;
      v25 = *(MEMORY[0x277CBF2C0] + 32);
    }

    *&v30.tx = v25;
    [itemCopy setDynamicHidingTransform:&v30];
    CGAffineTransformMakeScale(&v29, scale, scale);
    v30 = v29;
    [itemCopy setDynamicScaleTransform:&v30];
  }
}

- (void)updateDisplayItem:(id)item toScale:(double)scale
{
  itemCopy = item;
  if ([MEMORY[0x277D75D18] _isInAnimationBlockWithAnimationsEnabled] && self->_currentAnimationSettings && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = self->_currentAnimationSettings;
    [(BSAnimationSettings *)v7 damping];
    if (v8 >= 0.7)
    {
      CGAffineTransformMakeScale(&v24, scale, scale);
      v23 = v24;
      [itemCopy setDynamicScaleTransform:&v23];
    }

    else
    {
      v9 = MEMORY[0x277CF0CF0];
      [(BSAnimationSettings *)v7 mass];
      v11 = v10;
      [(BSAnimationSettings *)v7 stiffness];
      v13 = v12;
      [(BSAnimationSettings *)v7 epsilon];
      v15 = v14;
      [(BSAnimationSettings *)v7 initialVelocity];
      v17 = [v9 settingsWithMass:v11 stiffness:v13 damping:0.7 epsilon:v15 initialVelocity:v16];

      v18 = MEMORY[0x277CF0B70];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __70__STUIStatusBarVisualProvider_DynamicSplit_updateDisplayItem_toScale___block_invoke;
      v25[3] = &unk_279D38678;
      v26 = itemCopy;
      scaleCopy = scale;
      [v18 tryAnimatingWithSettings:v17 fromCurrentState:1 actions:v25 completion:0];

      v7 = v17;
    }
  }

  else
  {
    v19 = MEMORY[0x277D75D18];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __70__STUIStatusBarVisualProvider_DynamicSplit_updateDisplayItem_toScale___block_invoke_2;
    v20[3] = &unk_279D38628;
    v21 = itemCopy;
    scaleCopy2 = scale;
    [v19 animateWithDuration:4 delay:v20 options:0 animations:0.25 completion:0.0];
    v7 = v21;
  }
}

- (void)avoidanceFrameUpdatedFromFrame:(CGRect)frame withAnimationSettings:(id)settings options:(unint64_t)options
{
  optionsCopy = options;
  settingsCopy = settings;
  v8 = _avoidanceFrameInLocalCoordinateSpace(self);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  [statusBar avoidanceFrame];
  [(STUIStatusBarVisualProvider_Split *)self _updateExpandedConstraintsForAvoidanceFrame:?];
  v61 = 0.0;
  v62[0] = 0.0;
  v16 = [(STUIStatusBarVisualProvider_DynamicSplit *)&self->super.super.super.super.isa _needsUpdateOfConstraintsForAvoidanceFrame:v62 cutoutOffset:&v61 cutoutWidth:v8, v10, v12, v14];
  currentAggregatedData = [statusBar currentAggregatedData];
  v18 = [(STUIStatusBarVisualProvider_DynamicSplit *)&self->super.super.super.super.isa _updateSystemNavigationWithData:currentAggregatedData avoidanceFrame:v8, v10, v12, v14];

  if (v16)
  {
    if (!self)
    {
      v19 = 1;
      goto LABEL_7;
    }
  }

  else
  {
    if (!self)
    {
      goto LABEL_38;
    }

    if (!self->_forceAvoidanceRectUpdate)
    {
      if (!v18)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }
  }

  v19 = 0;
  self->_forceAvoidanceRectUpdate = 0;
LABEL_7:
  if (settingsCopy || (optionsCopy & 2) != 0)
  {
    v20 = settingsCopy;
  }

  currentAnimationSettings = self->_currentAnimationSettings;
  self->_currentAnimationSettings = settingsCopy;

  v22 = 0x280C1B000uLL;
  if (optionsCopy)
  {
    if (v19)
    {
      v38 = 0;
      v37 = v62[0];
      goto LABEL_20;
    }

    self->_forceAvoidanceRectUpdate = 1;
    v37 = v62[0];
  }

  else
  {
    v52 = optionsCopy;
    v59 = 0.0;
    v60 = 0.0;
    v58 = 0;
    v57 = 0;
    v24 = v61;
    v23 = v62[0];
    currentAggregatedData2 = [statusBar currentAggregatedData];
    sensorActivityEntry = [currentAggregatedData2 sensorActivityEntry];
    [sensorActivityEntry isEnabled];
    [STUIStatusBarVisualProvider_DynamicSplit _calculateSquishyLayoutValuesForCutoutOffset:&v58 cutoutWidth:&v57 maxLeadingItems:&v60 maxTrailingItems:&v59 leadingScale:v23 trailingScale:v24 includingPrivacyIndicator:?];

    v27 = [statusBar regionWithIdentifier:@"leading"];
    layout = [v27 layout];
    horizontalLayout = [layout horizontalLayout];
    if (_updateSquishyRegionForDynamicValues(horizontalLayout, v58, v60))
    {
      [v27 setNeedsReLayout:{1, horizontalLayout}];
      [layout invalidate];
    }

    v50 = layout;
    v51 = v27;
    v29 = v18;
    v53 = settingsCopy;
    v30 = [statusBar regionWithIdentifier:{@"trailing", horizontalLayout}];
    layout2 = [v30 layout];
    horizontalLayout2 = [layout2 horizontalLayout];
    if (_updateSquishyRegionForDynamicValues(horizontalLayout2, v57, v59))
    {
      [v30 setNeedsReLayout:1];
      [layout2 invalidate];
    }

    statusBar2 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    regions = [statusBar2 regions];
    v35 = [regions objectForKeyedSubscript:@"systemUpdates"];

    v36 = [(STUIStatusBarVisualProvider_DynamicSplit *)self _updateSystemUpdateRegionEnablement:v35 forTrailingNumberOfItems:v57]| v29;
    v37 = v62[0];
    if (v19)
    {
      v38 = 0;
      optionsCopy = v52;
      settingsCopy = v53;
      LOBYTE(v18) = v36;
      v22 = 0x280C1B000;
      goto LABEL_20;
    }

    optionsCopy = v52;
    settingsCopy = v53;
    LOBYTE(v18) = v36;
    v22 = 0x280C1B000;
  }

  v38 = *(&self->super.super.super.super.isa + *(v22 + 1920));
LABEL_20:
  [v38 constant];
  if (v37 != v39)
  {
    if (v19)
    {
      v40 = 0;
    }

    else
    {
      v40 = *(&self->super.super.super.super.isa + *(v22 + 1920));
    }

    [v40 setConstant:v62[0]];
  }

  v41 = v61;
  if (v19)
  {
    cutoutWidthConstraint = 0;
  }

  else
  {
    cutoutWidthConstraint = self->_cutoutWidthConstraint;
  }

  [(NSLayoutConstraint *)cutoutWidthConstraint constant];
  if (v41 != v43)
  {
    if (v19)
    {
      v44 = 0;
    }

    else
    {
      v44 = self->_cutoutWidthConstraint;
    }

    [(NSLayoutConstraint *)v44 setConstant:v61];
  }

  if ((optionsCopy & 2) != 0)
  {
    cutoutLayoutGuide = [(STUIStatusBarVisualProvider_Split *)self cutoutLayoutGuide];
    owningView = [cutoutLayoutGuide owningView];
    [owningView layoutSubviews];
  }

  else if (settingsCopy)
  {
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __105__STUIStatusBarVisualProvider_DynamicSplit_avoidanceFrameUpdatedFromFrame_withAnimationSettings_options___block_invoke;
    v56[3] = &unk_279D386A0;
    v56[4] = self;
    [MEMORY[0x277CF0B70] tryAnimatingWithSettings:settingsCopy fromCurrentState:1 actions:v56 completion:0];
  }

  else
  {
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __105__STUIStatusBarVisualProvider_DynamicSplit_avoidanceFrameUpdatedFromFrame_withAnimationSettings_options___block_invoke_2;
    v55[3] = &unk_279D37F00;
    v55[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v55];
  }

  v47 = self->_currentAnimationSettings;
  self->_currentAnimationSettings = 0;

LABEL_38:
  if (v18)
  {
LABEL_39:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __105__STUIStatusBarVisualProvider_DynamicSplit_avoidanceFrameUpdatedFromFrame_withAnimationSettings_options___block_invoke_3;
    block[3] = &unk_279D37F00;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

LABEL_40:
}

- (id)_updateSystemNavigationWithData:(CGFloat)data avoidanceFrame:(CGFloat)frame
{
  v11 = a2;
  if (self)
  {
    statusBar = [self statusBar];
    _shouldReverseLayoutDirection = [statusBar _shouldReverseLayoutDirection];

    sensorAreaRect = [(STUIStatusBarVisualProvider_DynamicSplit *)self sensorAreaRect];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v41.origin.x = data;
    v41.origin.y = frame;
    v41.size.width = a5;
    v41.size.height = a6;
    v45.origin.x = sensorAreaRect;
    v45.origin.y = v16;
    v45.size.width = v18;
    v45.size.height = v20;
    if (!CGRectIntersectsRect(v41, v45))
    {
      a6 = v20;
      a5 = v18;
      frame = v16;
      data = sensorAreaRect;
    }

    if (_shouldReverseLayoutDirection)
    {
      mainRegionsLayoutGuide = [self mainRegionsLayoutGuide];
      [mainRegionsLayoutGuide layoutFrame];
      MaxX = CGRectGetMaxX(v42);
      v43.origin.x = data;
      v43.origin.y = frame;
      v43.size.width = a5;
      v43.size.height = a6;
      MinX = MaxX - CGRectGetMaxX(v43);
    }

    else
    {
      v44.origin.x = data;
      v44.origin.y = frame;
      v44.size.width = a5;
      v44.size.height = a6;
      MinX = CGRectGetMinX(v44);
    }

    [self bottomLeadingSpace];
    v25 = MinX + v24 * -2.0;
    sensorAreaRect2 = [(STUIStatusBarVisualProvider_DynamicSplit *)self sensorAreaRect];
    [self bottomLeadingSpace];
    v28 = floor((sensorAreaRect2 + v27 * -2.0) * 0.75);
    backNavigationEntry = [v11 backNavigationEntry];

    if (backNavigationEntry || v28 > v25)
    {
      statusBar2 = [self statusBar];
      regions = [statusBar2 regions];
      v32 = [regions objectForKeyedSubscript:@"bottomLeading"];

      statusBar3 = [self statusBar];
      regions2 = [statusBar3 regions];
      v35 = [regions2 objectForKeyedSubscript:@"leading"];
      action = [v35 action];

      edgeInsets = [(STUIStatusBarVisualProvider_DynamicSplit *)self edgeInsets];
      backNavigationEntry2 = [v11 backNavigationEntry];
      LODWORD(regions2) = [backNavigationEntry2 isEnabled];

      if (regions2 && v28 <= v25)
      {
        [self[44] setConstant:edgeInsets + -7.66666667];
        [action setEnabled:0];
        v39 = [v32 enableWithToken:13];
      }

      else
      {
        [self[44] setConstant:edgeInsets];
        [action setEnabled:1];
        v39 = [v32 disableWithToken:13];
      }

      self = v39;
    }

    else
    {
      self = 0;
    }
  }

  return self;
}

- (id)region:(id)region willSetDisplayItems:(id)items
{
  v34 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  itemsCopy = items;
  identifier = [regionCopy identifier];
  if ([identifier isEqual:@"trailing"])
  {
  }

  else
  {
    identifier2 = [regionCopy identifier];
    v9 = [identifier2 isEqual:@"leading"];

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
    v14 = *MEMORY[0x277CDA328];
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
          v21 = [MEMORY[0x277CD9EA0] filterWithType:v14];
          [v21 setValue:&unk_287D1B240 forKey:@"inputRadius"];
          [v21 setName:@"gaussianBlur"];
          v32 = v21;
          v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
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
  v21.receiver = self;
  v21.super_class = STUIStatusBarVisualProvider_DynamicSplit;
  v8 = [(STUIStatusBarVisualProvider_Split *)&v21 hasCustomAnimationForDisplayItemWithIdentifier:identifierCopy removal:0];
  statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  v10 = [statusBar displayItemWithIdentifier:identifierCopy];
  dynamicallyHidden = [v10 dynamicallyHidden];

  if (dynamicallyHidden)
  {
    v12 = 0;
  }

  else
  {
    if ((v8 & 1) != 0 || (-[STUIStatusBarVisualProvider_iOS statusBar](self, "statusBar"), v13 = objc_claimAutoreleasedReturnValue(), -[STUIStatusBarVisualProvider_Split regionIdentifiersForPartWithIdentifier:](self, "regionIdentifiersForPartWithIdentifier:", @"normalPartIdentifier"), v14 = objc_claimAutoreleasedReturnValue(), [v14 allObjects], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "displayItemIdentifiersInRegionsWithIdentifiers:", v15), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "containsObject:", identifierCopy), v16, v15, v14, v13, !v17))
    {
      v20.receiver = self;
      v20.super_class = STUIStatusBarVisualProvider_DynamicSplit;
      v18 = [(STUIStatusBarVisualProvider_Split *)&v20 additionAnimationForDisplayItemWithIdentifier:identifierCopy itemAnimation:animationCopy];
    }

    else
    {
      v18 = STUIStatusBarDynamicSplitDefaultAnimation(self, identifierCopy);
    }

    v12 = v18;
  }

  return v12;
}

- (id)removalAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation
{
  identifierCopy = identifier;
  animationCopy = animation;
  v21.receiver = self;
  v21.super_class = STUIStatusBarVisualProvider_DynamicSplit;
  v8 = [(STUIStatusBarVisualProvider_Split *)&v21 hasCustomAnimationForDisplayItemWithIdentifier:identifierCopy removal:1];
  statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  v10 = [statusBar displayItemWithIdentifier:identifierCopy];
  dynamicallyHidden = [v10 dynamicallyHidden];

  if (dynamicallyHidden)
  {
    v12 = 0;
  }

  else
  {
    if ((v8 & 1) != 0 || (-[STUIStatusBarVisualProvider_iOS statusBar](self, "statusBar"), v13 = objc_claimAutoreleasedReturnValue(), -[STUIStatusBarVisualProvider_Split regionIdentifiersForPartWithIdentifier:](self, "regionIdentifiersForPartWithIdentifier:", @"normalPartIdentifier"), v14 = objc_claimAutoreleasedReturnValue(), [v14 allObjects], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "displayItemIdentifiersInRegionsWithIdentifiers:", v15), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "containsObject:", identifierCopy), v16, v15, v14, v13, !v17))
    {
      v20.receiver = self;
      v20.super_class = STUIStatusBarVisualProvider_DynamicSplit;
      v18 = [(STUIStatusBarVisualProvider_Split *)&v20 removalAnimationForDisplayItemWithIdentifier:identifierCopy itemAnimation:animationCopy];
    }

    else
    {
      v18 = STUIStatusBarDynamicSplitDefaultAnimation(self, identifierCopy);
    }

    v12 = v18;
  }

  return v12;
}

- (void)_updateRingerDisplayItem:(int)item enabled:
{
  v5 = a2;
  if (self)
  {
    v6 = v5;
    if (item)
    {
      [v5 enableWithToken:15];
    }

    else
    {
      [v5 disableWithToken:15];
    }

    v5 = v6;
  }
}

- (void)itemCreated:(id)created
{
  createdCopy = created;
  v13.receiver = self;
  v13.super_class = STUIStatusBarVisualProvider_DynamicSplit;
  [(STUIStatusBarVisualProvider_Split *)&v13 itemCreated:createdCopy];
  v5 = +[STUIStatusBarSettingsDomain rootSettings];
  itemSettings = [v5 itemSettings];
  if ([itemSettings showRingerOffLockScreen])
  {
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorRingerSilenceItem];
      v9 = [createdCopy displayItemForIdentifier:v8];
      [(STUIStatusBarVisualProvider_DynamicSplit *)self _updateRingerDisplayItem:v9 enabled:[(STUIStatusBarVisualProvider_iOS *)self onLockScreen]];
LABEL_10:

      goto LABEL_11;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = +[(STUIStatusBarCellularItem *)STUIStatusBarCellularCondensedItem];
    v8 = [createdCopy displayItemForIdentifier:v10];

    if (self)
    {
      v11 = 2.0;
    }

    else
    {
      v11 = 0.0;
    }

    [v8 setAdditionalDynamicPadding:v11];
    v12 = +[STUIStatusBarCellularCondensedItem dualNameDisplayIdentifier];
    v9 = [createdCopy displayItemForIdentifier:v12];

    [v9 setAdditionalDynamicPadding:v11];
    goto LABEL_10;
  }

LABEL_11:
}

- (void)orientationUpdatedFromOrientation:(int64_t)orientation
{
  statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  [statusBar avoidanceFrame];
  [(STUIStatusBarVisualProvider_Split *)self _updateExpandedConstraintsForAvoidanceFrame:?];

  statusBar2 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  currentAggregatedData = [statusBar2 currentAggregatedData];
  v7 = [(STUIStatusBarVisualProvider_Split *)self _updateLowerRegionsWithData:currentAggregatedData];

  if (v7)
  {
    statusBar3 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    [statusBar3 updateWithAnimations:MEMORY[0x277CBEBF8]];
  }
}

- (void)dataUpdated:(id)updated
{
  updatedCopy = updated;
  v5 = _avoidanceFrameInLocalCoordinateSpace(self);
  v9 = [(STUIStatusBarVisualProvider_DynamicSplit *)&self->super.super.super.super.isa _updateSystemNavigationWithData:updatedCopy avoidanceFrame:v5, v6, v7, v8];
  v10 = [(STUIStatusBarVisualProvider_Split *)self _updateLowerRegionsWithData:updatedCopy];

  if ((v9 & 1) != 0 || v10)
  {
    statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    [statusBar updateWithAnimations:MEMORY[0x277CBEBF8]];
  }
}

- (id)displayItemIdentifiersForPartWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[STUIStatusBarSettingsDomain rootSettings];
  itemSettings = [v5 itemSettings];
  if ([itemSettings showRingerOnAODLockScreen])
  {
    v7 = [identifierCopy isEqual:@"aodPartIdentifier"];

    if (v7)
    {
      v8 = MEMORY[0x277CBEB98];
      v9 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorRingerSilenceItem];
      v10 = [v8 setWithObject:v9];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v12.receiver = self;
  v12.super_class = STUIStatusBarVisualProvider_DynamicSplit;
  v10 = [(STUIStatusBarVisualProvider_Split *)&v12 displayItemIdentifiersForPartWithIdentifier:identifierCopy];
LABEL_6:

  return v10;
}

- (void)setOnLockScreen:(BOOL)screen
{
  screenCopy = screen;
  statusBar = +[STUIStatusBarSettingsDomain rootSettings];
  itemSettings = [statusBar itemSettings];
  if ([itemSettings showRingerOffLockScreen])
  {
    goto LABEL_4;
  }

  onLockScreen = [(STUIStatusBarVisualProvider_iOS *)self onLockScreen];

  if (onLockScreen != screenCopy)
  {
    statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    itemSettings = +[(STUIStatusBarItem *)STUIStatusBarIndicatorRingerSilenceItem];
    v8 = [statusBar displayItemWithIdentifier:itemSettings];
    [(STUIStatusBarVisualProvider_DynamicSplit *)self _updateRingerDisplayItem:v8 enabled:screenCopy];

LABEL_4:
  }

  v9.receiver = self;
  v9.super_class = STUIStatusBarVisualProvider_DynamicSplit;
  [(STUIStatusBarVisualProvider_iOS *)&v9 setOnLockScreen:screenCopy];
}

- (void)setOnAODLockScreen:(BOOL)screen
{
  screenCopy = screen;
  selfCopy = self;
  v46 = *MEMORY[0x277D85DE8];
  if ([(STUIStatusBarVisualProvider_iOS *)self onAODLockScreen]!= screen)
  {
    v27 = screenCopy;
    v5 = [MEMORY[0x277CBEB58] set];
    v6 = [(STUIStatusBarVisualProvider_Split *)selfCopy regionIdentifiersForPartWithIdentifier:@"normalPartIdentifier"];
    v7 = [(STUIStatusBarVisualProvider_DynamicSplit *)selfCopy displayItemIdentifiersForPartWithIdentifier:@"aodPartIdentifier"];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v8)
    {
      v9 = v8;
      v29 = *v40;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v40 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v11 = selfCopy;
          v12 = [(STUIStatusBarVisualProvider_Split *)selfCopy orderedDisplayItemPlacementsInRegionWithIdentifier:*(*(&v39 + 1) + 8 * i)];
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v13 = [v12 countByEnumeratingWithState:&v35 objects:v44 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v36;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v36 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                identifier = [*(*(&v35 + 1) + 8 * j) identifier];
                if (([v7 containsObject:identifier] & 1) == 0)
                {
                  [v5 addObject:identifier];
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v35 objects:v44 count:16];
            }

            while (v14);
          }

          selfCopy = v11;
        }

        v9 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v9);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v18 = v5;
    v19 = [v18 countByEnumeratingWithState:&v31 objects:v43 count:16];
    statusBar2 = v18;
    if (v19)
    {
      v21 = v19;
      v22 = *v32;
      do
      {
        for (k = 0; k != v21; ++k)
        {
          if (*v32 != v22)
          {
            objc_enumerationMutation(v18);
          }

          v24 = *(*(&v31 + 1) + 8 * k);
          statusBar = [(STUIStatusBarVisualProvider_iOS *)selfCopy statusBar];
          v26 = [statusBar displayItemWithIdentifier:v24];

          if (v27)
          {
            [v26 disableWithToken:14];
          }

          else
          {
            [v26 enableWithToken:14];
          }
        }

        v21 = [v18 countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v21);

      statusBar2 = [(STUIStatusBarVisualProvider_iOS *)selfCopy statusBar];
      [statusBar2 updateWithAnimations:MEMORY[0x277CBEBF8]];
    }

    v30.receiver = selfCopy;
    v30.super_class = STUIStatusBarVisualProvider_DynamicSplit;
    [(STUIStatusBarVisualProvider_iOS *)&v30 setOnAODLockScreen:v27];
  }
}

@end