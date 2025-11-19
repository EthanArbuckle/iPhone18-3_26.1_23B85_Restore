@interface _UIStatusBarVisualProvider_DynamicSplit
+ (Class)visualProviderSubclassForScreen:(id)a3 visualProviderInfo:(id)a4;
- (BOOL)_needsUpdateOfConstraintsForAvoidanceFrame:(CGRect)a3 cutoutOffset:(double *)a4 cutoutWidth:(double *)a5;
- (BOOL)_updateSystemNavigationWithData:(id)a3 avoidanceFrame:(CGRect)a4;
- (CGRect)sensorAreaRect;
- (CGSize)sensorAreaSize;
- (CGSize)smallPillSize;
- (NSDirectionalEdgeInsets)edgeInsets;
- (NSDirectionalEdgeInsets)expandedEdgeInsets;
- (double)effectiveTargetDisplayWidth;
- (double)leadingScaleForWidth:(double)a3;
- (double)minimumBottomLeadingWidth;
- (double)sensorAreaCenterOffsetFromTrailing;
- (double)trailingScaleForWidth:(double)a3 includingPrivacyIndicator:(BOOL)a4;
- (id)_orderedDisplayItemPlacements;
- (id)additionAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4;
- (id)leadingItemCutoffWidths;
- (id)normalRoundFont;
- (id)overriddenStyleAttributesForDisplayItemWithIdentifier:(id)a3;
- (id)region:(id)a3 willSetDisplayItems:(id)a4;
- (id)removalAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4;
- (id)setupInContainerView:(id)a3;
- (id)trailingItemCutoffWidths;
- (unint64_t)leadingNumberOfItemsForWidth:(double)a3;
- (unint64_t)trailingNumberOfItemsForWidth:(double)a3 includingPrivacyIndicator:(BOOL)a4;
- (void)avoidanceFrameUpdatedFromFrame:(CGRect)a3 withAnimationSettings:(id)a4 options:(unint64_t)a5;
- (void)dataUpdated:(id)a3;
- (void)orientationUpdatedFromOrientation:(int64_t)a3;
- (void)updateDisplayItem:(id)a3 toDynamicallyHidden:(BOOL)a4 scale:(double)a5;
- (void)updateDisplayItem:(id)a3 toScale:(double)a4;
@end

@implementation _UIStatusBarVisualProvider_DynamicSplit

+ (Class)visualProviderSubclassForScreen:(id)a3 visualProviderInfo:(id)a4
{
  v5 = a3;
  [v5 _unjailedReferenceBounds];
  Width = CGRectGetWidth(v14);
  [v5 _nativeScale];
  v8 = Width * v7;
  [v5 _scale];
  v10 = v9;

  if (v8 / v10 <= 393.0)
  {
    v11 = objc_opt_class();
  }

  else
  {
    v11 = a1;
  }

  return v11;
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
  v2 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  v3 = [v2 _effectiveTargetScreen];

  [v3 _unjailedReferenceBounds];
  Width = CGRectGetWidth(v10);
  [v3 _nativeScale];
  v6 = Width * v5;
  [v3 _scale];
  v8 = v6 / v7;

  return v8;
}

- (double)sensorAreaCenterOffsetFromTrailing
{
  [(_UIStatusBarVisualProvider_DynamicSplit *)self effectiveTargetDisplayWidth];
  v4 = v3;
  [(_UIStatusBarVisualProvider_DynamicSplit *)self sensorAreaRect];
  MidX = CGRectGetMidX(v10);
  v6 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  v7 = [v6 styleAttributes];
  v8 = [v7 effectiveLayoutDirection];

  result = v4 - MidX;
  if (v8 == 1)
  {
    return MidX;
  }

  return result;
}

- (id)setupInContainerView:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = [v4 array];
  v163 = [MEMORY[0x1E695DF70] array];
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
  v27 = [(_UIStatusBarVisualProvider_Split *)self normalFont];
  [v27 capHeight];
  v156 = v28 + 1.0;

  [(_UIStatusBarVisualProvider_iOS *)self expandedItemSpacing];
  v29 = [(_UIStatusBarVisualProvider_Split *)self expandedFont];
  [v29 capHeight];

  v30 = objc_alloc_init(UILayoutGuide);
  [(UILayoutGuide *)v30 setIdentifier:@"UIStatusBarCutout"];
  v31 = [(UILayoutGuide *)v30 topAnchor];
  v32 = v5;
  v33 = [v5 topAnchor];
  v34 = [v31 constraintEqualToAnchor:v33 constant:v9];
  [v6 addObject:v34];

  v35 = [v32 trailingAnchor];
  v36 = [(UILayoutGuide *)v30 centerXAnchor];
  v37 = [v35 constraintEqualToAnchor:v36 constant:v15];
  [(_UIStatusBarVisualProvider_DynamicSplit *)self setCutoutCenterConstraint:v37];

  v38 = [(_UIStatusBarVisualProvider_DynamicSplit *)self cutoutCenterConstraint];
  [v6 addObject:v38];

  v39 = [(UILayoutGuide *)v30 widthAnchor];
  v40 = [v39 constraintEqualToConstant:v11];
  [(_UIStatusBarVisualProvider_DynamicSplit *)self setCutoutWidthConstraint:v40];

  v41 = [(_UIStatusBarVisualProvider_DynamicSplit *)self cutoutWidthConstraint];
  [v6 addObject:v41];

  v42 = [(UILayoutGuide *)v30 heightAnchor];
  v43 = [v42 constraintEqualToConstant:v13];
  [v6 addObject:v43];

  [v32 addLayoutGuide:v30];
  [(_UIStatusBarVisualProvider_Split *)self setCutoutLayoutGuide:v30];

  v44 = objc_alloc_init(UILayoutGuide);
  [(UILayoutGuide *)v44 setIdentifier:@"UIStatusBarMainRegions"];
  v45 = [(UILayoutGuide *)v44 trailingAnchor];
  v46 = v32;
  v47 = [v32 trailingAnchor];
  v48 = [v45 constraintEqualToAnchor:v47];

  LODWORD(v49) = 1144750080;
  [v48 setPriority:v49];
  [v6 addObject:v48];
  v50 = [(UILayoutGuide *)v44 widthAnchor];
  [(_UIStatusBarVisualProvider_DynamicSplit *)self effectiveTargetDisplayWidth];
  v51 = [v50 constraintEqualToConstant:?];

  LODWORD(v52) = 1144750080;
  [v51 setPriority:v52];
  [v6 addObject:v51];
  v53 = [(UILayoutGuide *)v44 heightAnchor];
  v54 = [v53 constraintEqualToConstant:v13];
  [v6 addObject:v54];

  v55 = [(UILayoutGuide *)v44 bottomAnchor];
  v56 = [(_UIStatusBarVisualProvider_Split *)self cutoutLayoutGuide];
  v57 = [v56 bottomAnchor];
  v58 = [v55 constraintEqualToAnchor:v57];
  [v6 addObject:v58];

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
  v63 = [(_UIStatusBarRegion *)v59 layoutItem];
  v64 = [v63 centerYAnchor];
  v65 = [(_UIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  v66 = [v65 centerYAnchor];
  v67 = [v64 constraintEqualToAnchor:v66 constant:v17];
  leadingCenterYConstraint = self->_leadingCenterYConstraint;
  self->_leadingCenterYConstraint = v67;

  [v6 addObject:self->_leadingCenterYConstraint];
  v69 = v63;
  v70 = [v63 heightAnchor];
  v71 = [v70 constraintEqualToConstant:v156];
  [v6 addObject:v71];

  v72 = [v63 leadingAnchor];
  v73 = [(_UIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  v74 = [v73 leadingAnchor];
  v75 = [v72 constraintEqualToAnchor:v74 constant:v19];
  [v6 addObject:v75];

  v161 = v69;
  v76 = [v69 trailingAnchor];
  v77 = [(_UIStatusBarVisualProvider_Split *)self cutoutLayoutGuide];
  v78 = [v77 leadingAnchor];
  v79 = [v76 constraintEqualToAnchor:v78 constant:-v157];

  LODWORD(v80) = 1144750080;
  [v79 setPriority:v80];
  [v6 addObject:v79];
  [v46 _ui_addSubLayoutItem:v69];

  [v163 addObject:v59];
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
  v85 = [(_UIStatusBarRegion *)v81 layoutItem];
  v86 = +[_UIStatusBarStyleAttributes overriddenStyleAttributes];
  v87 = [(_UIStatusBarVisualProvider_Split *)self emphasizedFont];
  [v86 setFont:v87];

  v88 = [(_UIStatusBarVisualProvider_Split *)self normalFont];
  [v86 setSmallFont:v88];

  [v86 setImageNamePrefixes:&unk_1EFE2D2D0];
  [(_UIStatusBarRegion *)v81 setOverriddenStyleAttributes:v86];
  v89 = [v85 centerYAnchor];
  v90 = [(_UIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  v91 = [v90 centerYAnchor];
  v92 = [v89 constraintEqualToAnchor:v91 constant:v17];
  [v6 addObject:v92];

  v93 = [v85 heightAnchor];
  v94 = [v93 constraintEqualToConstant:v156];
  [v6 addObject:v94];

  v95 = [v85 trailingAnchor];
  v96 = [(_UIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  v97 = [v96 trailingAnchor];
  v98 = [v95 constraintEqualToAnchor:v97 constant:-v155];
  [v6 addObject:v98];

  v99 = [v85 leadingAnchor];
  v100 = [(_UIStatusBarVisualProvider_Split *)self cutoutLayoutGuide];
  v101 = [v100 trailingAnchor];
  v102 = [v99 constraintEqualToAnchor:v101 constant:v157];

  LODWORD(v103) = 1144750080;
  [v102 setPriority:v103];
  [v6 addObject:v102];
  [v162 _ui_addSubLayoutItem:v85];

  [v163 addObject:v81];
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
  v109 = [(_UIStatusBarVisualProvider_Split *)self systemUpdateFont];
  [v108 setFont:v109];

  v110 = [(_UIStatusBarVisualProvider_Split *)self systemUpdateFont];
  [v108 setEmphasizedFont:v110];

  [v108 setSymbolScale:2];
  [(_UIStatusBarRegion *)v104 setOverriddenStyleAttributes:v108];
  v111 = [(_UIStatusBarRegion *)v104 layoutItem];
  v112 = [v111 topAnchor];
  v113 = [v85 topAnchor];
  v114 = [v112 constraintEqualToAnchor:v113];
  [v6 addObject:v114];

  v115 = [(_UIStatusBarRegion *)v104 layoutItem];
  v116 = [v115 bottomAnchor];
  v117 = [v85 bottomAnchor];
  v118 = [v116 constraintEqualToAnchor:v117];
  [v6 addObject:v118];

  v119 = [(_UIStatusBarRegion *)v104 layoutItem];
  v120 = [v119 rightAnchor];
  v121 = [v85 rightAnchor];
  v122 = [v120 constraintEqualToAnchor:v121];
  [v6 addObject:v122];

  v123 = [(_UIStatusBarRegion *)v104 layoutItem];
  v124 = [v123 leftAnchor];
  v125 = [v85 leftAnchor];
  v126 = [v124 constraintEqualToAnchor:v125];
  [v6 addObject:v126];

  v127 = [(_UIStatusBarRegion *)v104 layoutItem];
  [v162 _ui_addSubLayoutItem:v127];

  [v163 addObject:v104];
  v164 = v163;
  v165 = v6;
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
  v133 = [(_UIStatusBarRegion *)v129 layoutItem];
  v134 = [v133 leadingAnchor];
  v135 = [(_UIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  v136 = [v135 leadingAnchor];
  [(_UIStatusBarVisualProvider_Split *)self bottomLeadingSpace];
  v137 = [v134 constraintEqualToAnchor:v136 constant:?];
  [v128 addObject:v137];

  v138 = [(_UIStatusBarRegion *)v129 layoutItem];
  v139 = [v138 trailingAnchor];
  v140 = [(_UIStatusBarVisualProvider_Split *)self cutoutLayoutGuide];
  v141 = [v140 leadingAnchor];
  [(_UIStatusBarVisualProvider_Split *)self bottomLeadingSpace];
  v143 = [v139 constraintEqualToAnchor:v141 constant:-v142];
  [v128 addObject:v143];

  v144 = [(_UIStatusBarRegion *)v129 layoutItem];
  v145 = [v144 bottomAnchor];
  v146 = [(_UIStatusBarVisualProvider_Split *)self cutoutLayoutGuide];
  v147 = [v146 bottomAnchor];
  [(_UIStatusBarVisualProvider_DynamicSplit *)self bottomLeadingTopOffset];
  v149 = [v145 constraintEqualToAnchor:v147 constant:-v148];
  [v128 addObject:v149];

  v150 = [(_UIStatusBarRegion *)v129 layoutItem];
  v151 = [v150 heightAnchor];
  v152 = [v151 constraintEqualToConstant:13.3333333];
  [v128 addObject:v152];

  v153 = [(_UIStatusBarRegion *)v129 layoutItem];
  [v162 _ui_insertSubLayoutItem:v153 atIndex:0];

  [v159 addObject:v129];
  [MEMORY[0x1E69977A0] activateConstraints:v128];

  return v159;
}

- (id)_orderedDisplayItemPlacements
{
  v67[3] = *MEMORY[0x1E69E9840];
  v57.receiver = self;
  v57.super_class = _UIStatusBarVisualProvider_DynamicSplit;
  v54 = [(_UIStatusBarVisualProvider_Split *)&v57 _orderedDisplayItemPlacements];
  v3 = +[_UIStatusBarIndicatorQuietModeItem emphasizedQuietModeIdentifier];
  v4 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v3 priority:997];

  v5 = [_UIStatusBarIndicatorLocationItem groupWithPriority:1000];
  v6 = +[(_UIStatusBarCellularItem *)_UIStatusBarCellularCondensedItem];
  v7 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v6 priority:1010];
  v8 = [v5 prominentPlacement];
  v67[0] = v8;
  v9 = [v5 regularPlacement];
  v67[1] = v9;
  v67[2] = v4;
  v10 = v4;
  v55 = v4;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:3];
  v12 = [v7 excludingPlacements:v11];
  [(_UIStatusBarVisualProvider_Split *)self setServiceNamePlacement:v12];

  v13 = +[_UIStatusBarCellularCondensedItem dualNameDisplayIdentifier];
  v14 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v13 priority:1011];
  v15 = [v5 prominentPlacement];
  v66[0] = v15;
  v16 = [v5 regularPlacement];
  v66[1] = v16;
  v66[2] = v10;
  v17 = [(_UIStatusBarVisualProvider_Split *)self serviceNamePlacement];
  v66[3] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:4];
  v19 = [v14 excludingPlacements:v18];
  [(_UIStatusBarVisualProvider_Split *)self setDualServiceNamePlacement:v19];

  v20 = +[_UIStatusBarTimeItem shortTimeDisplayIdentifier];
  v21 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v20 priority:1012];
  v22 = [(_UIStatusBarVisualProvider_Split *)self serviceNamePlacement];
  v65[0] = v22;
  v23 = [(_UIStatusBarVisualProvider_Split *)self dualServiceNamePlacement];
  v65[1] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];
  v25 = [v21 excludingPlacements:v24];

  v26 = +[(_UIStatusBarItem *)_UIStatusBarVoiceControlPillItem];
  v27 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v26 priority:1014];
  v28 = [v5 prominentPlacement];
  v64[0] = v28;
  v29 = [v5 regularPlacement];
  v64[1] = v29;
  v64[2] = v55;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:3];
  v56 = [v27 excludingPlacements:v30];

  v63[0] = v25;
  v53 = [(_UIStatusBarVisualProvider_Split *)self serviceNamePlacement];
  v63[1] = v53;
  v51 = [(_UIStatusBarVisualProvider_Split *)self dualServiceNamePlacement];
  v63[2] = v51;
  v62 = v25;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
  v48 = [v55 requiringAllPlacements:v49];
  v63[3] = v48;
  v52 = v5;
  v47 = [v5 regularPlacement];
  v61 = v55;
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
  v31 = [v47 excludingPlacements:v46];
  v32 = v25;
  v50 = v25;
  v60 = v25;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
  v34 = [v31 requiringAllPlacements:v33];
  v63[4] = v34;
  v35 = [v5 prominentPlacement];
  v59 = v55;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
  v37 = [v35 excludingPlacements:v36];
  v58 = v32;
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
  v39 = [v37 requiringAllPlacements:v38];
  v63[5] = v39;
  v63[6] = v56;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:7];
  [v54 setObject:v40 forKeyedSubscript:0x1EFB3CE30];

  v41 = [v54 objectForKeyedSubscript:0x1EFB3CE50];
  v42 = +[(_UIStatusBarItem *)_UIStatusBarSensorActivityItem];
  v43 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v42 priority:1310];
  v44 = [v41 arrayByAddingObject:v43];
  [v54 setObject:v44 forKeyedSubscript:0x1EFB3CE50];

  return v54;
}

- (BOOL)_needsUpdateOfConstraintsForAvoidanceFrame:(CGRect)a3 cutoutOffset:(double *)a4 cutoutWidth:(double *)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v16 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    v17 = [v16 styleAttributes];
    v18 = [v17 effectiveLayoutDirection];

    if (v18 != 1)
    {
      MidX = v14 - MidX;
    }
  }

  result = 0;
  if ((*&MidX & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&width & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v22 = [(_UIStatusBarVisualProvider_DynamicSplit *)self cutoutCenterConstraint];
    [v22 constant];
    if (MidX == v23)
    {
      v24 = [(_UIStatusBarVisualProvider_DynamicSplit *)self cutoutWidthConstraint];
      [v24 constant];
      v26 = v25;

      if (width == v26)
      {
        return 0;
      }
    }

    else
    {
    }

    if (a4)
    {
      *a4 = MidX;
    }

    if (a5)
    {
      *a5 = width;
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

- (unint64_t)leadingNumberOfItemsForWidth:(double)a3
{
  v5 = [(_UIStatusBarVisualProvider_DynamicSplit *)self leadingItemCutoffWidths];
  [(_UIStatusBarVisualProvider_DynamicSplit *)self minimumItemScaleFactor];
  v7 = numberOfItemsForWidth(v5, a3, v6);

  return v7;
}

- (unint64_t)trailingNumberOfItemsForWidth:(double)a3 includingPrivacyIndicator:(BOOL)a4
{
  v6 = [(_UIStatusBarVisualProvider_DynamicSplit *)self trailingItemCutoffWidths];
  [(_UIStatusBarVisualProvider_DynamicSplit *)self minimumItemScaleFactor];
  v8 = numberOfItemsForWidth(v6, a3, v7);

  return v8;
}

- (double)leadingScaleForWidth:(double)a3
{
  v4 = [(_UIStatusBarVisualProvider_DynamicSplit *)self leadingItemCutoffWidths];
  [(_UIStatusBarVisualProvider_DynamicSplit *)self minimumItemScaleFactor];
  scaleForWidth(v4);
  v6 = v5;

  return v6;
}

- (double)trailingScaleForWidth:(double)a3 includingPrivacyIndicator:(BOOL)a4
{
  v5 = [(_UIStatusBarVisualProvider_DynamicSplit *)self trailingItemCutoffWidths];
  [(_UIStatusBarVisualProvider_DynamicSplit *)self minimumItemScaleFactor];
  scaleForWidth(v5);
  v7 = v6;

  return v7;
}

- (void)updateDisplayItem:(id)a3 toDynamicallyHidden:(BOOL)a4 scale:(double)a5
{
  v6 = a4;
  v8 = a3;
  if ([v8 visible])
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
      v46 = v6;
      v43 = v8;
      v44 = v30;
      v45 = a5;
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
      if (!v6)
      {
        v34 = 0.5;
      }

      _UIStatusBarDynamicSplitPerformBaseAnimation(v8, v6, 1, 1, 0, 0.5, v34, 0.0);
      if (!v6)
      {
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __87___UIStatusBarVisualProvider_DynamicSplit_updateDisplayItem_toDynamicallyHidden_scale___block_invoke_98;
        v39[3] = &unk_1E70F32F0;
        v40 = v8;
        v41 = a5;
        [UIView animateWithDuration:4 delay:v39 options:0 animations:0.25 completion:0.0];
      }
    }
  }

  else
  {
    if (v6)
    {
      [v8 setDynamicHidingAlpha:0.0];
      CGAffineTransformMakeScale(&v38, 0.5, 0.5);
      *&v37.a = *&v38.a;
      *&v37.c = *&v38.c;
      v33 = *&v38.tx;
    }

    else
    {
      [v8 setDynamicHidingAlpha:1.0];
      v35 = *(MEMORY[0x1E695EFD0] + 16);
      *&v37.a = *MEMORY[0x1E695EFD0];
      *&v37.c = v35;
      v33 = *(MEMORY[0x1E695EFD0] + 32);
    }

    *&v37.tx = v33;
    [v8 setDynamicHidingTransform:&v37];
    CGAffineTransformMakeScale(&v36, a5, a5);
    v37 = v36;
    [v8 setDynamicScaleTransform:&v37];
  }
}

- (void)updateDisplayItem:(id)a3 toScale:(double)a4
{
  v6 = a3;
  if (+[UIView _isInAnimationBlockWithAnimationsEnabled]&& self->_currentAnimationSettings && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = self->_currentAnimationSettings;
    [(BSAnimationSettings *)v7 damping];
    if (v8 >= 0.7)
    {
      CGAffineTransformMakeScale(&v23, a4, a4);
      v22 = v23;
      [v6 setDynamicScaleTransform:&v22];
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
      v25 = v6;
      v26 = a4;
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
    v20 = v6;
    v21 = a4;
    [UIView animateWithDuration:4 delay:v19 options:0 animations:0.25 completion:0.0];
    v7 = v20;
  }
}

- (void)avoidanceFrameUpdatedFromFrame:(CGRect)a3 withAnimationSettings:(id)a4 options:(unint64_t)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v105 = *MEMORY[0x1E69E9840];
  v86 = a4;
  [(_UIStatusBarVisualProvider_DynamicSplit *)self setDeferredAvoidanceFrameUpdateBlock:0];
  v10 = _avoidanceFrameInLocalCoordinateSpace(self);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  val = self;
  v87 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  v102 = 0.0;
  v103 = 0.0;
  v82 = [(_UIStatusBarVisualProvider_DynamicSplit *)self _needsUpdateOfConstraintsForAvoidanceFrame:&v103 cutoutOffset:&v102 cutoutWidth:v10, v12, v14, v16];
  v17 = [v87 currentAggregatedData];
  v80 = [(_UIStatusBarVisualProvider_DynamicSplit *)val _updateSystemNavigationWithData:v17 avoidanceFrame:v10, v12, v14, v16];

  v18 = _statusBarRunningAnimations;
  v19 = [(_UIStatusBarVisualProvider_iOS *)val statusBar];
  v20 = [(_UIStatusBarVisualProvider_Split *)val regionIdentifiersForPartWithIdentifier:0x1EFB9C3D0];
  v21 = [v20 allObjects];
  v84 = [v19 displayItemIdentifiersInRegionsWithIdentifiers:v21];

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
        v26 = [v25 displayItemIdentifier];
        v27 = +[_UIStatusBarIndicatorQuietModeItem emphasizedQuietModeIdentifier];
        if ([v26 isEqual:v27])
        {
          v28 = [v25 identifier];
          v29 = [v28 isEqualToString:0x1EFB9A510];

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
            v95 = v86;
            v96[5] = a5;
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
            v64 = obj;
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
    if (v86 || (a5 & 2) != 0)
    {
      v30 = v86;
    }

    currentAnimationSettings = val->_currentAnimationSettings;
    val->_currentAnimationSettings = v86;

    if ((a5 & 1) == 0)
    {
      [(_UIStatusBarVisualProvider_DynamicSplit *)val edgeInsets];
      v33 = v32;
      v35 = v34;
      [(_UIStatusBarVisualProvider_DynamicSplit *)val cutoutEdgeInset];
      v37 = v36;
      [(_UIStatusBarVisualProvider_DynamicSplit *)val effectiveTargetDisplayWidth];
      v39 = v38;
      v40 = [v87 regionWithIdentifier:0x1EFB3CE30];
      v41 = [v40 displayItems];
      v42 = fmax(v39 - v103 + v102 * -0.5 - v33 - v37, 0.0);
      [(_UIStatusBarVisualProvider_DynamicSplit *)val leadingScaleForWidth:v42];
      v44 = v43;
      v45 = [(_UIStatusBarVisualProvider_DynamicSplit *)val leadingNumberOfItemsForWidth:v42];
      v81 = [v40 layout];
      v83 = [v81 horizontalLayout];
      if (v45 != [v83 maxNumberOfVisibleItems] || (objc_msgSend(v83, "itemDynamicScale"), vabdd_f64(v44, v46) > 0.0001))
      {
        [v83 setMaxNumberOfVisibleItems:v45];
        [v83 setItemDynamicScale:v44];
        [v40 setNeedsReLayout:1];
        [v81 invalidate];
      }

      v47 = [v87 regionWithIdentifier:0x1EFB3CE50];
      v79 = [v47 displayItems];
      v49 = v102;
      v48 = v103;
      v50 = [v87 currentAggregatedData];
      v51 = [v50 sensorActivityEntry];
      v52 = fmax(v48 + v49 * -0.5 - v35 - v37, 0.0);
      -[_UIStatusBarVisualProvider_DynamicSplit trailingScaleForWidth:includingPrivacyIndicator:](val, "trailingScaleForWidth:includingPrivacyIndicator:", [v51 isEnabled], v52);
      v54 = v53;

      v55 = [v87 currentAggregatedData];
      v56 = [v55 sensorActivityEntry];
      v57 = -[_UIStatusBarVisualProvider_DynamicSplit trailingNumberOfItemsForWidth:includingPrivacyIndicator:](val, "trailingNumberOfItemsForWidth:includingPrivacyIndicator:", [v56 isEnabled], v52);

      v58 = [v47 layout];
      v59 = [v58 horizontalLayout];
      if (v57 != [v59 maxNumberOfVisibleItems] || (objc_msgSend(v59, "itemDynamicScale"), vabdd_f64(v54, v60) > 0.0001))
      {
        [v59 setMaxNumberOfVisibleItems:v57];
        [v59 setItemDynamicScale:v54];
        [v47 setNeedsReLayout:1];
        [v58 invalidate];
      }

      v61 = [(_UIStatusBarVisualProvider_iOS *)val statusBar];
      v62 = [v61 regions];
      v63 = [v62 objectForKeyedSubscript:0x1EFB9B110];

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
    v66 = [(_UIStatusBarVisualProvider_DynamicSplit *)val cutoutCenterConstraint];
    [v66 constant];
    v68 = v65 != v67;

    if (v68)
    {
      v69 = v103;
      v70 = [(_UIStatusBarVisualProvider_DynamicSplit *)val cutoutCenterConstraint];
      [v70 setConstant:v69];
    }

    v71 = v102;
    v72 = [(_UIStatusBarVisualProvider_DynamicSplit *)val cutoutWidthConstraint];
    [v72 constant];
    v74 = v71 != v73;

    if (v74)
    {
      v75 = v102;
      v76 = [(_UIStatusBarVisualProvider_DynamicSplit *)val cutoutWidthConstraint];
      [v76 setConstant:v75];
    }

    if ((a5 & 2) != 0)
    {
      v77 = [(_UIStatusBarVisualProvider_Split *)val cutoutLayoutGuide];
      v78 = [v77 owningView];
      [v78 layoutSubviews];
    }

    else if (v86)
    {
      v91[0] = MEMORY[0x1E69E9820];
      v91[1] = 3221225472;
      v91[2] = __104___UIStatusBarVisualProvider_DynamicSplit_avoidanceFrameUpdatedFromFrame_withAnimationSettings_options___block_invoke_3;
      v91[3] = &unk_1E70F5AC0;
      v91[4] = val;
      [MEMORY[0x1E698E608] tryAnimatingWithSettings:v86 fromCurrentState:1 actions:v91 completion:0];
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

    v64 = val->_currentAnimationSettings;
    val->_currentAnimationSettings = 0;
    goto LABEL_39;
  }

  if (v80)
  {
    v64 = [(_UIStatusBarVisualProvider_iOS *)val statusBar];
    [v64 updateWithAnimations:MEMORY[0x1E695E0F0]];
LABEL_39:
  }
}

- (id)region:(id)a3 willSetDisplayItems:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 identifier];
  if ([v7 isEqual:0x1EFB3CE50])
  {
  }

  else
  {
    v8 = [v5 identifier];
    v9 = [v8 isEqual:0x1EFB3CE30];

    if (!v9)
    {
      goto LABEL_14;
    }
  }

  v26 = v5;
  v27 = v6;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = v6;
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
        v17 = [v16 view];
        v18 = [v17 layer];
        v19 = [v18 filters];
        v20 = [v19 count];

        if (!v20)
        {
          v21 = [MEMORY[0x1E6979378] filterWithType:v14];
          [v21 setValue:&unk_1EFE2EA48 forKey:@"inputRadius"];
          [v21 setName:@"gaussianBlur"];
          v32 = v21;
          v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
          v23 = [v16 view];
          v24 = [v23 layer];
          [v24 setFilters:v22];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v12);
  }

  v5 = v26;
  v6 = v27;
LABEL_14:

  return v6;
}

- (id)additionAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = _UIStatusBarVisualProvider_DynamicSplit;
  if (-[_UIStatusBarVisualProvider_Split hasCustomAnimationForDisplayItemWithIdentifier:removal:](&v17, sel_hasCustomAnimationForDisplayItemWithIdentifier_removal_, v6, 0) || (-[_UIStatusBarVisualProvider_iOS statusBar](self, "statusBar"), v8 = objc_claimAutoreleasedReturnValue(), -[_UIStatusBarVisualProvider_Split regionIdentifiersForPartWithIdentifier:](self, "regionIdentifiersForPartWithIdentifier:", 0x1EFB9C3D0), v9 = objc_claimAutoreleasedReturnValue(), [v9 allObjects], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "displayItemIdentifiersInRegionsWithIdentifiers:", v10), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "containsObject:", v6), v11, v10, v9, v8, !v12))
  {
    v16.receiver = self;
    v16.super_class = _UIStatusBarVisualProvider_DynamicSplit;
    v13 = [(_UIStatusBarVisualProvider_Split *)&v16 additionAnimationForDisplayItemWithIdentifier:v6 itemAnimation:v7];
  }

  else
  {
    v13 = _UIStatusBarDynamicSplitDefaultAnimation(self, v6);
  }

  v14 = v13;

  return v14;
}

- (id)removalAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = _UIStatusBarVisualProvider_DynamicSplit;
  if (-[_UIStatusBarVisualProvider_Split hasCustomAnimationForDisplayItemWithIdentifier:removal:](&v17, sel_hasCustomAnimationForDisplayItemWithIdentifier_removal_, v6, 1) || (-[_UIStatusBarVisualProvider_iOS statusBar](self, "statusBar"), v8 = objc_claimAutoreleasedReturnValue(), -[_UIStatusBarVisualProvider_Split regionIdentifiersForPartWithIdentifier:](self, "regionIdentifiersForPartWithIdentifier:", 0x1EFB9C3D0), v9 = objc_claimAutoreleasedReturnValue(), [v9 allObjects], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "displayItemIdentifiersInRegionsWithIdentifiers:", v10), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "containsObject:", v6), v11, v10, v9, v8, !v12))
  {
    v16.receiver = self;
    v16.super_class = _UIStatusBarVisualProvider_DynamicSplit;
    v13 = [(_UIStatusBarVisualProvider_Split *)&v16 removalAnimationForDisplayItemWithIdentifier:v6 itemAnimation:v7];
  }

  else
  {
    v13 = _UIStatusBarDynamicSplitDefaultAnimation(self, v6);
  }

  v14 = v13;

  return v14;
}

- (id)overriddenStyleAttributesForDisplayItemWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[_UIStatusBarBatteryItem iconDisplayIdentifier];
  v6 = v5;
  if (v5 == v4)
  {
  }

  else
  {
    v7 = +[_UIStatusBarBatteryItem staticIconDisplayIdentifier];

    if (v7 != v4)
    {
      v11.receiver = self;
      v11.super_class = _UIStatusBarVisualProvider_DynamicSplit;
      v8 = [(_UIStatusBarVisualProvider_Split *)&v11 overriddenStyleAttributesForDisplayItemWithIdentifier:v4];
      goto LABEL_6;
    }
  }

  v8 = +[_UIStatusBarStyleAttributes overriddenStyleAttributes];
  v9 = [(_UIStatusBarVisualProvider_DynamicSplit *)self normalRoundFont];
  [v8 setFont:v9];

LABEL_6:

  return v8;
}

- (void)orientationUpdatedFromOrientation:(int64_t)a3
{
  v4 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  v5 = [v4 currentAggregatedData];
  v6 = [(_UIStatusBarVisualProvider_Split *)self _updateLowerRegionsWithData:v5];

  if (v6)
  {
    v7 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    [v7 updateWithAnimations:MEMORY[0x1E695E0F0]];
  }
}

- (void)dataUpdated:(id)a3
{
  v4 = a3;
  v5 = [(_UIStatusBarVisualProvider_DynamicSplit *)self _updateSystemNavigationWithData:v4 avoidanceFrame:_avoidanceFrameInLocalCoordinateSpace(self)];
  v6 = [(_UIStatusBarVisualProvider_Split *)self _updateLowerRegionsWithData:v4];

  if (v5 || v6)
  {
    v7 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    [v7 updateWithAnimations:MEMORY[0x1E695E0F0]];
  }
}

- (BOOL)_updateSystemNavigationWithData:(id)a3 avoidanceFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  v11 = [v10 _shouldReverseLayoutDirection];

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

  if (v11)
  {
    v20 = [(_UIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
    [v20 layoutFrame];
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
  v27 = [v9 backNavigationEntry];
  v29 = v26 > v24 || v27 != 0;

  if (v29)
  {
    v30 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    v31 = [v30 regions];
    v32 = [v31 objectForKeyedSubscript:0x1EFB9B0F0];

    v33 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    v34 = [v33 regions];
    v35 = [v34 objectForKeyedSubscript:0x1EFB3CE30];
    v36 = [v35 action];

    [(_UIStatusBarVisualProvider_DynamicSplit *)self edgeInsets];
    v38 = v37;
    v39 = [v9 backNavigationEntry];
    LODWORD(v34) = [v39 isEnabled];

    if (v34 && v26 <= v24)
    {
      [(_UIStatusBarVisualProvider_DynamicSplit *)self topLeadingCenterOffset];
      [(NSLayoutConstraint *)self->_leadingCenterYConstraint setConstant:v38 - v40];
      [v36 setEnabled:0];
      [v32 enableWithToken:13];
    }

    else
    {
      [(NSLayoutConstraint *)self->_leadingCenterYConstraint setConstant:v38];
      [v36 setEnabled:1];
      [v32 disableWithToken:13];
    }
  }

  return v29;
}

@end