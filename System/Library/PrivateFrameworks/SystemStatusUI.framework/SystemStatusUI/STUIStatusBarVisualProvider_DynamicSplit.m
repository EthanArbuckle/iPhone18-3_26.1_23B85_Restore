@interface STUIStatusBarVisualProvider_DynamicSplit
+ (Class)visualProviderSubclassForScreen:(id)a3 visualProviderInfo:(id)a4;
- (BOOL)_needsUpdateOfConstraintsForAvoidanceFrame:(double *)a3 cutoutOffset:(CGFloat)a4 cutoutWidth:(CGFloat)a5;
- (CGSize)smallPillSize;
- (NSDirectionalEdgeInsets)expandedEdgeInsets;
- (double)edgeInsets;
- (double)effectiveTargetDisplayWidth;
- (double)sensorAreaRect;
- (id)_orderedDisplayItemPlacements;
- (id)_updateSystemNavigationWithData:(CGFloat)a3 avoidanceFrame:(CGFloat)a4;
- (id)additionAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4;
- (id)displayItemIdentifiersForPartWithIdentifier:(id)a3;
- (id)leadingItemCutoffWidths;
- (id)region:(id)a3 willSetDisplayItems:(id)a4;
- (id)removalAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4;
- (id)setupInContainerView:(id)a3;
- (id)trailingItemCutoffWidths;
- (uint64_t)_updateSystemUpdateRegionEnablement:(uint64_t)a3 forTrailingNumberOfItems:;
- (void)_calculateSquishyLayoutValuesForCutoutOffset:(uint64_t)a1 cutoutWidth:(uint64_t *)a2 maxLeadingItems:(uint64_t *)a3 maxTrailingItems:(void *)a4 leadingScale:(void *)a5 trailingScale:(double)a6 includingPrivacyIndicator:(double)a7;
- (void)_updateRingerDisplayItem:(int)a3 enabled:;
- (void)avoidanceFrameUpdatedFromFrame:(CGRect)a3 withAnimationSettings:(id)a4 options:(unint64_t)a5;
- (void)dataUpdated:(id)a3;
- (void)itemCreated:(id)a3;
- (void)orientationUpdatedFromOrientation:(int64_t)a3;
- (void)setOnAODLockScreen:(BOOL)a3;
- (void)setOnLockScreen:(BOOL)a3;
- (void)updateDisplayItem:(id)a3 toDynamicallyHidden:(BOOL)a4 scale:(double)a5;
- (void)updateDisplayItem:(id)a3 toScale:(double)a4;
@end

@implementation STUIStatusBarVisualProvider_DynamicSplit

- (double)edgeInsets
{
  if (!a1)
  {
    return 0.0;
  }

  if ((*(a1 + 328) & 4) == 0)
  {
    *(a1 + 328) |= 4u;
    v2 = [a1 statusBar];
    v3 = [v2 _effectiveTargetScreen];

    [v3 _nativeScale];
    v5 = v4;
    [v3 _displayCornerRadiusIgnoringZoom];
    v7 = floor(v5 * (v6 + -55.0) / 10.0) / v5;
    v10.origin.x = [(STUIStatusBarVisualProvider_DynamicSplit *)a1 sensorAreaRect];
    v8 = v7 + floor(v5 * fmax(CGRectGetMinY(v10) + -14.0, 0.0) / -3.0) / v5;
    *(a1 + 296) = v7;
    *(a1 + 304) = v8 + 17.0;
    *(a1 + 312) = 0;
    *(a1 + 320) = v8 + 18.0;
  }

  return *(a1 + 296);
}

- (double)sensorAreaRect
{
  if (!a1)
  {
    return 0.0;
  }

  if ((*(a1 + 328) & 1) == 0)
  {
    *(a1 + 328) |= 1u;
    v2 = [a1 statusBar];
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
    *(a1 + 256) = v10;
    *(a1 + 264) = v16;
    *(a1 + 272) = v22;
    *(a1 + 280) = v26 / v27;
  }

  return *(a1 + 256);
}

- (double)effectiveTargetDisplayWidth
{
  if (!a1)
  {
    return 0.0;
  }

  if ((*(a1 + 328) & 2) == 0)
  {
    *(a1 + 328) |= 2u;
    v2 = [a1 statusBar];
    v3 = [v2 _effectiveTargetScreen];

    [v3 _unjailedReferenceBounds];
    Width = CGRectGetWidth(v9);
    [v3 _nativeScale];
    v6 = Width * v5;
    [v3 _scale];
    *(a1 + 288) = v6 / v7;
  }

  return *(a1 + 288);
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
  v2 = [(STUIStatusBarVisualProvider_Split *)&v8 _orderedDisplayItemPlacements];
  v3 = [v2 objectForKeyedSubscript:@"trailing"];
  v4 = +[(STUIStatusBarItem *)STUIStatusBarSensorActivityItem];
  v5 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v4 priority:1310];
  v6 = [v3 arrayByAddingObject:v5];
  [v2 setObject:v6 forKeyedSubscript:@"trailing"];

  return v2;
}

- (CGSize)smallPillSize
{
  v2 = 20.0;
  v3 = 20.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (Class)visualProviderSubclassForScreen:(id)a3 visualProviderInfo:(id)a4
{
  v5 = a3;
  [v5 _unjailedReferenceBounds];
  Width = CGRectGetWidth(v14);
  [v5 _nativeScale];
  v8 = Width * v7;
  [v5 _scale];
  v10 = v9;

  if (v8 / v10 <= 402.0)
  {
    v11 = objc_opt_class();
  }

  else
  {
    v11 = a1;
  }

  return v11;
}

- (id)setupInContainerView:(id)a3
{
  v211[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v202 = [MEMORY[0x277CBEB18] array];
  [objc_opt_class() height];
  v198 = v6;
  [(STUIStatusBarVisualProvider_DynamicSplit *)self sensorAreaRect];
  v8 = v7;
  v10 = v9;
  v197 = [(STUIStatusBarVisualProvider_DynamicSplit *)self edgeInsets];
  v12 = v11;
  v194 = v13;
  v195 = v14;
  [(STUIStatusBarVisualProvider_DynamicSplit *)self leadingItemSpacing];
  v193 = v15;
  [(STUIStatusBarVisualProvider_DynamicSplit *)self itemSpacing];
  v200 = v16;
  v17 = [(STUIStatusBarVisualProvider_Split *)self normalFont];
  [v17 capHeight];
  v19 = v18;

  v20 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  [v20 avoidanceFrame];
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
  v30 = [v29 topAnchor];
  v31 = [v4 topAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:v8];
  [v5 addObject:v32];

  v33 = [v4 trailingAnchor];
  v34 = [v29 centerXAnchor];
  v35 = [v33 constraintEqualToAnchor:v34 constant:v210];
  v36 = v35;
  if (self)
  {
    objc_storeStrong(&self->_cutoutCenterConstraint, v35);

    [v5 addObject:self->_cutoutCenterConstraint];
    v37 = [v29 widthAnchor];
    v38 = [v37 constraintEqualToConstant:v209];
    objc_storeStrong(&self->_cutoutWidthConstraint, v38);

    cutoutWidthConstraint = self->_cutoutWidthConstraint;
    v40 = 8.0;
    v41 = 0.94;
  }

  else
  {

    [v5 addObject:0];
    v192 = [v29 widthAnchor];
    [v192 constraintEqualToConstant:v209];

    cutoutWidthConstraint = 0;
    v41 = 0.0;
    v40 = 0.0;
  }

  [v5 addObject:cutoutWidthConstraint];
  v42 = [v29 heightAnchor];
  v43 = [v42 constraintEqualToConstant:v10];
  [v5 addObject:v43];

  [v4 addLayoutGuide:v29];
  [(STUIStatusBarVisualProvider_Split *)self setCutoutLayoutGuide:v29];

  v44 = objc_alloc_init(MEMORY[0x277D756D0]);
  [v44 setIdentifier:@"UIStatusBarMainRegions"];
  v45 = [v44 trailingAnchor];
  v46 = [v4 trailingAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  LODWORD(v48) = 1144750080;
  [v47 setPriority:v48];
  [v5 addObject:v47];
  v49 = [v44 widthAnchor];
  v50 = [v49 constraintEqualToConstant:-[STUIStatusBarVisualProvider_DynamicSplit effectiveTargetDisplayWidth](self)];

  LODWORD(v51) = 1144750080;
  [v50 setPriority:v51];
  [v5 addObject:v50];
  v52 = [v44 heightAnchor];
  [v52 constraintEqualToConstant:v10];
  v54 = v53 = v4;
  [v5 addObject:v54];

  v55 = [v44 bottomAnchor];
  v56 = [(STUIStatusBarVisualProvider_Split *)self cutoutLayoutGuide];
  v57 = [v56 bottomAnchor];
  v58 = [v55 constraintEqualToAnchor:v57];
  [v5 addObject:v58];

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
  [(STUIStatusBarRegion *)v59 setActionInsets:-v197, -v12, -(v198 + v194 - v10), -v195];
  [(STUIStatusBarRegion *)v59 setDisableItemFrameBasedOverflow:1];
  v63 = [(STUIStatusBarRegion *)v59 layoutItem];
  v64 = [v63 centerYAnchor];
  v65 = [(STUIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  v66 = [v65 centerYAnchor];
  v67 = [v64 constraintEqualToAnchor:v66 constant:v197];
  leadingCenterYConstraint = self->_leadingCenterYConstraint;
  self->_leadingCenterYConstraint = v67;

  [v5 addObject:self->_leadingCenterYConstraint];
  v69 = v63;
  v70 = [v63 heightAnchor];
  v71 = [v70 constraintEqualToConstant:v19 + 1.0];
  [v5 addObject:v71];

  v72 = [v63 leadingAnchor];
  v73 = [(STUIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  v74 = [v73 leadingAnchor];
  v75 = [v72 constraintEqualToAnchor:v74 constant:v12];
  [v5 addObject:v75];

  v199 = v69;
  v76 = [v69 trailingAnchor];
  v77 = [(STUIStatusBarVisualProvider_Split *)self cutoutLayoutGuide];
  v78 = [v77 leadingAnchor];
  v79 = [v76 constraintEqualToAnchor:v78 constant:-v40];

  LODWORD(v80) = 1144750080;
  [v79 setPriority:v80];
  [v5 addObject:v79];
  [v53 _ui_addSubLayoutItem:v69];

  [v202 addObject:v59];
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
  v85 = [(STUIStatusBarRegion *)v81 layoutItem];
  v86 = +[STUIStatusBarStyleAttributes overriddenStyleAttributes];
  v87 = [(STUIStatusBarVisualProvider_Split *)self emphasizedFont];
  [v86 setFont:v87];

  v88 = [(STUIStatusBarVisualProvider_Split *)self normalFont];
  [v86 setSmallFont:v88];

  [v86 setImageNamePrefixes:&unk_287D1AE58];
  [(STUIStatusBarRegion *)v81 setOverriddenStyleAttributes:v86];
  v89 = [v85 centerYAnchor];
  v90 = [(STUIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  v91 = [v90 centerYAnchor];
  v92 = [v89 constraintEqualToAnchor:v91 constant:v197];
  [v5 addObject:v92];

  v93 = [v85 heightAnchor];
  v94 = [v93 constraintEqualToConstant:v19 + 1.0];
  [v5 addObject:v94];

  v95 = [v85 trailingAnchor];
  v96 = [(STUIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  v97 = [v96 trailingAnchor];
  v98 = [v95 constraintEqualToAnchor:v97 constant:-v195];
  [v5 addObject:v98];

  v99 = [v85 leadingAnchor];
  v100 = [(STUIStatusBarVisualProvider_Split *)self cutoutLayoutGuide];
  v101 = [v100 trailingAnchor];
  v102 = [v99 constraintEqualToAnchor:v101 constant:v40];

  LODWORD(v103) = 1144750080;
  [v102 setPriority:v103];
  [v5 addObject:v102];
  [v201 _ui_addSubLayoutItem:v85];

  [v202 addObject:v81];
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
  v109 = [(STUIStatusBarVisualProvider_Split *)self systemUpdateFont];
  [v108 setFont:v109];

  v110 = [(STUIStatusBarVisualProvider_Split *)self systemUpdateFont];
  [v108 setEmphasizedFont:v110];

  [v108 setSymbolScale:2];
  [(STUIStatusBarRegion *)v104 setOverriddenStyleAttributes:v108];
  v111 = [(STUIStatusBarRegion *)v104 layoutItem];
  v112 = [v111 topAnchor];
  v113 = [v85 topAnchor];
  v114 = [v112 constraintEqualToAnchor:v113];
  [v5 addObject:v114];

  v115 = [(STUIStatusBarRegion *)v104 layoutItem];
  v116 = [v115 bottomAnchor];
  v117 = [v85 bottomAnchor];
  v118 = [v116 constraintEqualToAnchor:v117];
  [v5 addObject:v118];

  v119 = [(STUIStatusBarRegion *)v104 layoutItem];
  v120 = [v119 rightAnchor];
  v121 = [v85 rightAnchor];
  v122 = [v120 constraintEqualToAnchor:v121];
  [v5 addObject:v122];

  v123 = [(STUIStatusBarRegion *)v104 layoutItem];
  v124 = [v123 leftAnchor];
  v125 = [v85 leftAnchor];
  v126 = [v124 constraintEqualToAnchor:v125];
  [v5 addObject:v126];

  v127 = [(STUIStatusBarRegion *)v104 layoutItem];
  [v201 _ui_addSubLayoutItem:v127];

  [(STUIStatusBarVisualProvider_DynamicSplit *)self _updateSystemUpdateRegionEnablement:v104 forTrailingNumberOfItems:v205];
  [v202 addObject:v104];

  v128 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"controlCenter"];
  v129 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v130 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  [(STUIStatusBarRegionAxesLayout *)v129 setHorizontalLayout:v130];

  v131 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  [(STUIStatusBarRegionAxesLayout *)v129 setVerticalLayout:v131];

  [(STUIStatusBarRegion *)v128 setLayout:v129];
  v132 = [(STUIStatusBarRegion *)v128 layoutItem];
  v133 = [v132 bottomAnchor];
  v134 = [(STUIStatusBarVisualProvider_Split *)self cutoutLayoutGuide];
  v135 = [v134 bottomAnchor];
  v136 = [v133 constraintEqualToAnchor:v135 constant:-2.0];
  [v5 addObject:v136];

  v137 = [(STUIStatusBarRegion *)v128 layoutItem];
  v138 = [v137 heightAnchor];
  [(STUIStatusBarVisualProvider_Split *)self grabberHeight];
  v139 = [v138 constraintEqualToConstant:?];
  [v5 addObject:v139];

  v140 = [(STUIStatusBarRegion *)v128 layoutItem];
  v141 = [v140 leftAnchor];
  v142 = [v85 leftAnchor];
  v143 = [v141 constraintGreaterThanOrEqualToAnchor:v142 constant:10.0];
  [v5 addObject:v143];

  v144 = [(STUIStatusBarRegion *)v128 layoutItem];
  v145 = [v144 rightAnchor];
  v196 = v85;
  v146 = [v85 rightAnchor];
  v147 = [v145 constraintLessThanOrEqualToAnchor:v146 constant:-10.0];
  [v5 addObject:v147];

  v148 = [(STUIStatusBarRegion *)v128 layoutItem];
  v149 = [v148 widthAnchor];
  v150 = [v149 constraintEqualToConstant:41.0];

  LODWORD(v151) = 1132068864;
  [v150 setPriority:v151];
  [v5 addObject:v150];
  v152 = [(STUIStatusBarRegion *)v128 layoutItem];
  v153 = [v152 centerXAnchor];
  v154 = [v85 centerXAnchor];
  v155 = [v153 constraintEqualToAnchor:v154];
  [v5 addObject:v155];

  v156 = [(STUIStatusBarRegion *)v128 layoutItem];
  [v201 _ui_addSubLayoutItem:v156];

  [v202 addObject:v128];
  v203 = v202;
  v204 = v5;
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
  v163 = [(STUIStatusBarRegion *)v159 layoutItem];
  v164 = [v163 leadingAnchor];
  v165 = [(STUIStatusBarVisualProvider_Split *)self mainRegionsLayoutGuide];
  v166 = [v165 leadingAnchor];
  [(STUIStatusBarVisualProvider_Split *)self bottomLeadingSpace];
  v167 = [v164 constraintEqualToAnchor:v166 constant:?];
  [v157 addObject:v167];

  v168 = [(STUIStatusBarRegion *)v159 layoutItem];
  v169 = [v168 trailingAnchor];
  v170 = [(STUIStatusBarVisualProvider_Split *)self cutoutLayoutGuide];
  v171 = [v170 leadingAnchor];
  [(STUIStatusBarVisualProvider_Split *)self bottomLeadingSpace];
  v173 = [v169 constraintEqualToAnchor:v171 constant:-v172];
  [v157 addObject:v173];

  v174 = [(STUIStatusBarRegion *)v159 layoutItem];
  v175 = [v174 bottomAnchor];
  v176 = [(STUIStatusBarVisualProvider_Split *)self cutoutLayoutGuide];
  v177 = [v176 bottomAnchor];
  [(STUIStatusBarVisualProvider_DynamicSplit *)self bottomLeadingTopOffset];
  v179 = [v175 constraintEqualToAnchor:v177 constant:-v178];
  [v157 addObject:v179];

  v180 = [(STUIStatusBarRegion *)v159 layoutItem];
  v181 = [v180 heightAnchor];
  v182 = [v181 constraintEqualToConstant:13.3333333];
  [v157 addObject:v182];

  v183 = [(STUIStatusBarRegion *)v159 layoutItem];
  [v201 _ui_insertSubLayoutItem:v183 atIndex:0];

  [v158 addObject:v159];
  v184 = STUIStatusBarAddLumaView(v201, v157, v199, 0, v10);
  [(STUIStatusBarVisualProvider_Split *)self setLeadingBackgroundLumaView:v184];

  v185 = STUIStatusBarAddLumaView(v201, v157, v196, 0, v10);
  [(STUIStatusBarVisualProvider_Split *)self setTrailingBackgroundLumaView:v185];

  v186 = objc_alloc(MEMORY[0x277D760C8]);
  v187 = [(STUIStatusBarVisualProvider_Split *)self leadingBackgroundLumaView];
  v211[0] = v187;
  v188 = [(STUIStatusBarVisualProvider_Split *)self trailingBackgroundLumaView];
  v211[1] = v188;
  v189 = [MEMORY[0x277CBEA60] arrayWithObjects:v211 count:2];
  v190 = [v186 initWithTransitionBoundaries:self minimumDifference:v189 delegate:0.4 views:{0.7, 0.5}];
  [(STUIStatusBarVisualProvider_iOS *)self setLumaTrackingGroup:v190];

  [MEMORY[0x277CCAAD0] activateConstraints:v157];

  return v158;
}

- (BOOL)_needsUpdateOfConstraintsForAvoidanceFrame:(double *)a3 cutoutOffset:(CGFloat)a4 cutoutWidth:(CGFloat)a5
{
  if (!a1)
  {
    return 0;
  }

  [(STUIStatusBarVisualProvider_DynamicSplit *)a1 sensorAreaRect];
  v15 = v14;
  v16 = v14 + 20.0;
  v17 = [(STUIStatusBarVisualProvider_DynamicSplit *)a1 effectiveTargetDisplayWidth];
  if (a6 <= v16)
  {
    v33.origin.x = [(STUIStatusBarVisualProvider_DynamicSplit *)a1 sensorAreaRect];
    MidX = CGRectGetMidX(v33);
    v24 = [a1 statusBar];
    v25 = [v24 styleAttributes];
    v26 = [v25 effectiveLayoutDirection];

    if (v26 == 1)
    {
      v22 = MidX;
    }

    else
    {
      v22 = v17 - MidX;
    }

    a6 = v15;
  }

  else
  {
    v32.origin.x = a4;
    v32.origin.y = a5;
    v32.size.width = a6;
    v32.size.height = a7;
    v18 = CGRectGetMidX(v32);
    v19 = [a1 statusBar];
    v20 = [v19 styleAttributes];
    v21 = [v20 effectiveLayoutDirection];

    if (v21 == 1)
    {
      v22 = v18;
    }

    else
    {
      v22 = v17 - v18;
    }
  }

  v27 = 0;
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (a2)
    {
      *a2 = v22;
    }

    if (a3)
    {
      *a3 = a6;
    }

    v28 = a1[43];
    [v28 constant];
    if (v22 == v29)
    {
      [a1[42] constant];
      v27 = a6 != v30;
    }

    else
    {
      v27 = 1;
    }
  }

  return v27;
}

- (void)_calculateSquishyLayoutValuesForCutoutOffset:(uint64_t)a1 cutoutWidth:(uint64_t *)a2 maxLeadingItems:(uint64_t *)a3 maxTrailingItems:(void *)a4 leadingScale:(void *)a5 trailingScale:(double)a6 includingPrivacyIndicator:(double)a7
{
  if (a1)
  {
    [(STUIStatusBarVisualProvider_DynamicSplit *)a1 edgeInsets];
    v15 = v14;
    v17 = v16;
    v18 = [(STUIStatusBarVisualProvider_DynamicSplit *)a1 effectiveTargetDisplayWidth];
    v19 = a7 * 0.5;
    v20 = fmax(v18 - a6 - a7 * 0.5 - v15 + -8.0, 0.0);
    v21 = a6 - v19 - v17 + -8.0;
    if (a2)
    {
      v22 = [STUIStatusBarVisualProvider_DynamicSplit leadingItemCutoffWidths];
      v23 = numberOfItemsForWidth(v22, v20);

      *a2 = v23;
    }

    v24 = fmax(v21, 0.0);
    if (a3)
    {
      v25 = [STUIStatusBarVisualProvider_DynamicSplit trailingItemCutoffWidths];
      v26 = numberOfItemsForWidth(v25, v24);

      *a3 = v26;
    }

    if (a4)
    {
      v27 = [STUIStatusBarVisualProvider_DynamicSplit leadingItemCutoffWidths];
      scaleForWidth(v27);
      v29 = v28;

      *a4 = v29;
    }

    if (a5)
    {
      v30 = [STUIStatusBarVisualProvider_DynamicSplit trailingItemCutoffWidths];
      scaleForWidth(v30);
      v32 = v31;

      *a5 = v32;
    }
  }
}

- (uint64_t)_updateSystemUpdateRegionEnablement:(uint64_t)a3 forTrailingNumberOfItems:
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if (a3 < 2)
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

- (void)updateDisplayItem:(id)a3 toDynamicallyHidden:(BOOL)a4 scale:(double)a5
{
  v6 = a4;
  v8 = a3;
  if ([v8 visible])
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
      v39 = v6;
      v36 = v8;
      v37 = v22;
      v38 = a5;
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
      if (!v6)
      {
        v26 = 0.5;
      }

      STUIStatusBarDynamicSplitPerformBaseAnimation(v8, v6, 1, 1, 0, 0.5, v26, 0.0);
      if (!v6)
      {
        v27 = MEMORY[0x277D75D18];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __88__STUIStatusBarVisualProvider_DynamicSplit_updateDisplayItem_toDynamicallyHidden_scale___block_invoke_94;
        v32[3] = &unk_279D38628;
        v33 = v8;
        v34 = a5;
        [v27 animateWithDuration:4 delay:v32 options:0 animations:0.25 completion:0.0];
      }
    }
  }

  else
  {
    if (v6)
    {
      [v8 setDynamicHidingAlpha:0.0];
      CGAffineTransformMakeScale(&v31, 0.5, 0.5);
      *&v30.a = *&v31.a;
      *&v30.c = *&v31.c;
      v25 = *&v31.tx;
    }

    else
    {
      [v8 setDynamicHidingAlpha:1.0];
      v28 = *(MEMORY[0x277CBF2C0] + 16);
      *&v30.a = *MEMORY[0x277CBF2C0];
      *&v30.c = v28;
      v25 = *(MEMORY[0x277CBF2C0] + 32);
    }

    *&v30.tx = v25;
    [v8 setDynamicHidingTransform:&v30];
    CGAffineTransformMakeScale(&v29, a5, a5);
    v30 = v29;
    [v8 setDynamicScaleTransform:&v30];
  }
}

- (void)updateDisplayItem:(id)a3 toScale:(double)a4
{
  v6 = a3;
  if ([MEMORY[0x277D75D18] _isInAnimationBlockWithAnimationsEnabled] && self->_currentAnimationSettings && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = self->_currentAnimationSettings;
    [(BSAnimationSettings *)v7 damping];
    if (v8 >= 0.7)
    {
      CGAffineTransformMakeScale(&v24, a4, a4);
      v23 = v24;
      [v6 setDynamicScaleTransform:&v23];
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
      v26 = v6;
      v27 = a4;
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
    v21 = v6;
    v22 = a4;
    [v19 animateWithDuration:4 delay:v20 options:0 animations:0.25 completion:0.0];
    v7 = v21;
  }
}

- (void)avoidanceFrameUpdatedFromFrame:(CGRect)a3 withAnimationSettings:(id)a4 options:(unint64_t)a5
{
  v5 = a5;
  v7 = a4;
  v8 = _avoidanceFrameInLocalCoordinateSpace(self);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  [v15 avoidanceFrame];
  [(STUIStatusBarVisualProvider_Split *)self _updateExpandedConstraintsForAvoidanceFrame:?];
  v61 = 0.0;
  v62[0] = 0.0;
  v16 = [(STUIStatusBarVisualProvider_DynamicSplit *)&self->super.super.super.super.isa _needsUpdateOfConstraintsForAvoidanceFrame:v62 cutoutOffset:&v61 cutoutWidth:v8, v10, v12, v14];
  v17 = [v15 currentAggregatedData];
  v18 = [(STUIStatusBarVisualProvider_DynamicSplit *)&self->super.super.super.super.isa _updateSystemNavigationWithData:v17 avoidanceFrame:v8, v10, v12, v14];

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
  if (v7 || (v5 & 2) != 0)
  {
    v20 = v7;
  }

  currentAnimationSettings = self->_currentAnimationSettings;
  self->_currentAnimationSettings = v7;

  v22 = 0x280C1B000uLL;
  if (v5)
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
    v52 = v5;
    v59 = 0.0;
    v60 = 0.0;
    v58 = 0;
    v57 = 0;
    v24 = v61;
    v23 = v62[0];
    v25 = [v15 currentAggregatedData];
    v26 = [v25 sensorActivityEntry];
    [v26 isEnabled];
    [STUIStatusBarVisualProvider_DynamicSplit _calculateSquishyLayoutValuesForCutoutOffset:&v58 cutoutWidth:&v57 maxLeadingItems:&v60 maxTrailingItems:&v59 leadingScale:v23 trailingScale:v24 includingPrivacyIndicator:?];

    v27 = [v15 regionWithIdentifier:@"leading"];
    v28 = [v27 layout];
    v48 = [v28 horizontalLayout];
    if (_updateSquishyRegionForDynamicValues(v48, v58, v60))
    {
      [v27 setNeedsReLayout:{1, v48}];
      [v28 invalidate];
    }

    v50 = v28;
    v51 = v27;
    v29 = v18;
    v53 = v7;
    v30 = [v15 regionWithIdentifier:{@"trailing", v48}];
    v31 = [v30 layout];
    v32 = [v31 horizontalLayout];
    if (_updateSquishyRegionForDynamicValues(v32, v57, v59))
    {
      [v30 setNeedsReLayout:1];
      [v31 invalidate];
    }

    v33 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    v34 = [v33 regions];
    v35 = [v34 objectForKeyedSubscript:@"systemUpdates"];

    v36 = [(STUIStatusBarVisualProvider_DynamicSplit *)self _updateSystemUpdateRegionEnablement:v35 forTrailingNumberOfItems:v57]| v29;
    v37 = v62[0];
    if (v19)
    {
      v38 = 0;
      v5 = v52;
      v7 = v53;
      LOBYTE(v18) = v36;
      v22 = 0x280C1B000;
      goto LABEL_20;
    }

    v5 = v52;
    v7 = v53;
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

  if ((v5 & 2) != 0)
  {
    v45 = [(STUIStatusBarVisualProvider_Split *)self cutoutLayoutGuide];
    v46 = [v45 owningView];
    [v46 layoutSubviews];
  }

  else if (v7)
  {
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __105__STUIStatusBarVisualProvider_DynamicSplit_avoidanceFrameUpdatedFromFrame_withAnimationSettings_options___block_invoke;
    v56[3] = &unk_279D386A0;
    v56[4] = self;
    [MEMORY[0x277CF0B70] tryAnimatingWithSettings:v7 fromCurrentState:1 actions:v56 completion:0];
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

- (id)_updateSystemNavigationWithData:(CGFloat)a3 avoidanceFrame:(CGFloat)a4
{
  v11 = a2;
  if (a1)
  {
    v12 = [a1 statusBar];
    v13 = [v12 _shouldReverseLayoutDirection];

    v14 = [(STUIStatusBarVisualProvider_DynamicSplit *)a1 sensorAreaRect];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v41.origin.x = a3;
    v41.origin.y = a4;
    v41.size.width = a5;
    v41.size.height = a6;
    v45.origin.x = v14;
    v45.origin.y = v16;
    v45.size.width = v18;
    v45.size.height = v20;
    if (!CGRectIntersectsRect(v41, v45))
    {
      a6 = v20;
      a5 = v18;
      a4 = v16;
      a3 = v14;
    }

    if (v13)
    {
      v21 = [a1 mainRegionsLayoutGuide];
      [v21 layoutFrame];
      MaxX = CGRectGetMaxX(v42);
      v43.origin.x = a3;
      v43.origin.y = a4;
      v43.size.width = a5;
      v43.size.height = a6;
      MinX = MaxX - CGRectGetMaxX(v43);
    }

    else
    {
      v44.origin.x = a3;
      v44.origin.y = a4;
      v44.size.width = a5;
      v44.size.height = a6;
      MinX = CGRectGetMinX(v44);
    }

    [a1 bottomLeadingSpace];
    v25 = MinX + v24 * -2.0;
    v26 = [(STUIStatusBarVisualProvider_DynamicSplit *)a1 sensorAreaRect];
    [a1 bottomLeadingSpace];
    v28 = floor((v26 + v27 * -2.0) * 0.75);
    v29 = [v11 backNavigationEntry];

    if (v29 || v28 > v25)
    {
      v30 = [a1 statusBar];
      v31 = [v30 regions];
      v32 = [v31 objectForKeyedSubscript:@"bottomLeading"];

      v33 = [a1 statusBar];
      v34 = [v33 regions];
      v35 = [v34 objectForKeyedSubscript:@"leading"];
      v36 = [v35 action];

      v37 = [(STUIStatusBarVisualProvider_DynamicSplit *)a1 edgeInsets];
      v38 = [v11 backNavigationEntry];
      LODWORD(v34) = [v38 isEnabled];

      if (v34 && v28 <= v25)
      {
        [a1[44] setConstant:v37 + -7.66666667];
        [v36 setEnabled:0];
        v39 = [v32 enableWithToken:13];
      }

      else
      {
        [a1[44] setConstant:v37];
        [v36 setEnabled:1];
        v39 = [v32 disableWithToken:13];
      }

      a1 = v39;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (id)region:(id)a3 willSetDisplayItems:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 identifier];
  if ([v7 isEqual:@"trailing"])
  {
  }

  else
  {
    v8 = [v5 identifier];
    v9 = [v8 isEqual:@"leading"];

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
        v17 = [v16 view];
        v18 = [v17 layer];
        v19 = [v18 filters];
        v20 = [v19 count];

        if (!v20)
        {
          v21 = [MEMORY[0x277CD9EA0] filterWithType:v14];
          [v21 setValue:&unk_287D1B240 forKey:@"inputRadius"];
          [v21 setName:@"gaussianBlur"];
          v32 = v21;
          v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
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
  v21.receiver = self;
  v21.super_class = STUIStatusBarVisualProvider_DynamicSplit;
  v8 = [(STUIStatusBarVisualProvider_Split *)&v21 hasCustomAnimationForDisplayItemWithIdentifier:v6 removal:0];
  v9 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  v10 = [v9 displayItemWithIdentifier:v6];
  v11 = [v10 dynamicallyHidden];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    if ((v8 & 1) != 0 || (-[STUIStatusBarVisualProvider_iOS statusBar](self, "statusBar"), v13 = objc_claimAutoreleasedReturnValue(), -[STUIStatusBarVisualProvider_Split regionIdentifiersForPartWithIdentifier:](self, "regionIdentifiersForPartWithIdentifier:", @"normalPartIdentifier"), v14 = objc_claimAutoreleasedReturnValue(), [v14 allObjects], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "displayItemIdentifiersInRegionsWithIdentifiers:", v15), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "containsObject:", v6), v16, v15, v14, v13, !v17))
    {
      v20.receiver = self;
      v20.super_class = STUIStatusBarVisualProvider_DynamicSplit;
      v18 = [(STUIStatusBarVisualProvider_Split *)&v20 additionAnimationForDisplayItemWithIdentifier:v6 itemAnimation:v7];
    }

    else
    {
      v18 = STUIStatusBarDynamicSplitDefaultAnimation(self, v6);
    }

    v12 = v18;
  }

  return v12;
}

- (id)removalAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = STUIStatusBarVisualProvider_DynamicSplit;
  v8 = [(STUIStatusBarVisualProvider_Split *)&v21 hasCustomAnimationForDisplayItemWithIdentifier:v6 removal:1];
  v9 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  v10 = [v9 displayItemWithIdentifier:v6];
  v11 = [v10 dynamicallyHidden];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    if ((v8 & 1) != 0 || (-[STUIStatusBarVisualProvider_iOS statusBar](self, "statusBar"), v13 = objc_claimAutoreleasedReturnValue(), -[STUIStatusBarVisualProvider_Split regionIdentifiersForPartWithIdentifier:](self, "regionIdentifiersForPartWithIdentifier:", @"normalPartIdentifier"), v14 = objc_claimAutoreleasedReturnValue(), [v14 allObjects], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "displayItemIdentifiersInRegionsWithIdentifiers:", v15), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "containsObject:", v6), v16, v15, v14, v13, !v17))
    {
      v20.receiver = self;
      v20.super_class = STUIStatusBarVisualProvider_DynamicSplit;
      v18 = [(STUIStatusBarVisualProvider_Split *)&v20 removalAnimationForDisplayItemWithIdentifier:v6 itemAnimation:v7];
    }

    else
    {
      v18 = STUIStatusBarDynamicSplitDefaultAnimation(self, v6);
    }

    v12 = v18;
  }

  return v12;
}

- (void)_updateRingerDisplayItem:(int)a3 enabled:
{
  v5 = a2;
  if (a1)
  {
    v6 = v5;
    if (a3)
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

- (void)itemCreated:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = STUIStatusBarVisualProvider_DynamicSplit;
  [(STUIStatusBarVisualProvider_Split *)&v13 itemCreated:v4];
  v5 = +[STUIStatusBarSettingsDomain rootSettings];
  v6 = [v5 itemSettings];
  if ([v6 showRingerOffLockScreen])
  {
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorRingerSilenceItem];
      v9 = [v4 displayItemForIdentifier:v8];
      [(STUIStatusBarVisualProvider_DynamicSplit *)self _updateRingerDisplayItem:v9 enabled:[(STUIStatusBarVisualProvider_iOS *)self onLockScreen]];
LABEL_10:

      goto LABEL_11;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = +[(STUIStatusBarCellularItem *)STUIStatusBarCellularCondensedItem];
    v8 = [v4 displayItemForIdentifier:v10];

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
    v9 = [v4 displayItemForIdentifier:v12];

    [v9 setAdditionalDynamicPadding:v11];
    goto LABEL_10;
  }

LABEL_11:
}

- (void)orientationUpdatedFromOrientation:(int64_t)a3
{
  v4 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  [v4 avoidanceFrame];
  [(STUIStatusBarVisualProvider_Split *)self _updateExpandedConstraintsForAvoidanceFrame:?];

  v5 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  v6 = [v5 currentAggregatedData];
  v7 = [(STUIStatusBarVisualProvider_Split *)self _updateLowerRegionsWithData:v6];

  if (v7)
  {
    v8 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    [v8 updateWithAnimations:MEMORY[0x277CBEBF8]];
  }
}

- (void)dataUpdated:(id)a3
{
  v4 = a3;
  v5 = _avoidanceFrameInLocalCoordinateSpace(self);
  v9 = [(STUIStatusBarVisualProvider_DynamicSplit *)&self->super.super.super.super.isa _updateSystemNavigationWithData:v4 avoidanceFrame:v5, v6, v7, v8];
  v10 = [(STUIStatusBarVisualProvider_Split *)self _updateLowerRegionsWithData:v4];

  if ((v9 & 1) != 0 || v10)
  {
    v11 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    [v11 updateWithAnimations:MEMORY[0x277CBEBF8]];
  }
}

- (id)displayItemIdentifiersForPartWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[STUIStatusBarSettingsDomain rootSettings];
  v6 = [v5 itemSettings];
  if ([v6 showRingerOnAODLockScreen])
  {
    v7 = [v4 isEqual:@"aodPartIdentifier"];

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
  v10 = [(STUIStatusBarVisualProvider_Split *)&v12 displayItemIdentifiersForPartWithIdentifier:v4];
LABEL_6:

  return v10;
}

- (void)setOnLockScreen:(BOOL)a3
{
  v3 = a3;
  v5 = +[STUIStatusBarSettingsDomain rootSettings];
  v6 = [v5 itemSettings];
  if ([v6 showRingerOffLockScreen])
  {
    goto LABEL_4;
  }

  v7 = [(STUIStatusBarVisualProvider_iOS *)self onLockScreen];

  if (v7 != v3)
  {
    v5 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    v6 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorRingerSilenceItem];
    v8 = [v5 displayItemWithIdentifier:v6];
    [(STUIStatusBarVisualProvider_DynamicSplit *)self _updateRingerDisplayItem:v8 enabled:v3];

LABEL_4:
  }

  v9.receiver = self;
  v9.super_class = STUIStatusBarVisualProvider_DynamicSplit;
  [(STUIStatusBarVisualProvider_iOS *)&v9 setOnLockScreen:v3];
}

- (void)setOnAODLockScreen:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  v46 = *MEMORY[0x277D85DE8];
  if ([(STUIStatusBarVisualProvider_iOS *)self onAODLockScreen]!= a3)
  {
    v27 = v3;
    v5 = [MEMORY[0x277CBEB58] set];
    v6 = [(STUIStatusBarVisualProvider_Split *)v4 regionIdentifiersForPartWithIdentifier:@"normalPartIdentifier"];
    v7 = [(STUIStatusBarVisualProvider_DynamicSplit *)v4 displayItemIdentifiersForPartWithIdentifier:@"aodPartIdentifier"];
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

          v11 = v4;
          v12 = [(STUIStatusBarVisualProvider_Split *)v4 orderedDisplayItemPlacementsInRegionWithIdentifier:*(*(&v39 + 1) + 8 * i)];
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

                v17 = [*(*(&v35 + 1) + 8 * j) identifier];
                if (([v7 containsObject:v17] & 1) == 0)
                {
                  [v5 addObject:v17];
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v35 objects:v44 count:16];
            }

            while (v14);
          }

          v4 = v11;
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
    v20 = v18;
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
          v25 = [(STUIStatusBarVisualProvider_iOS *)v4 statusBar];
          v26 = [v25 displayItemWithIdentifier:v24];

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

      v20 = [(STUIStatusBarVisualProvider_iOS *)v4 statusBar];
      [v20 updateWithAnimations:MEMORY[0x277CBEBF8]];
    }

    v30.receiver = v4;
    v30.super_class = STUIStatusBarVisualProvider_DynamicSplit;
    [(STUIStatusBarVisualProvider_iOS *)&v30 setOnAODLockScreen:v27];
  }
}

@end