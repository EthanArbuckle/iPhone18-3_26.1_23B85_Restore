@interface _UIStatusBarVisualProvider_LegacyPhone
+ (CGSize)intrinsicLockScreenContentSizeForOrientation:(int64_t)a3;
+ (double)_heightExpanded:(BOOL)a3;
- (CGRect)clockBoundsForLayoutItem:(id)a3;
- (CGSize)pillSize;
- (CGSize)smallPillSize;
- (NSDirectionalEdgeInsets)edgeInsets;
- (double)baselineOffset;
- (double)effectiveHeight;
- (id)_animationForSingleLineDualCarrier;
- (id)_backgroundActivityDetailRemovalAnimation;
- (id)additionAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4;
- (id)condensedFontForCellularType:(int64_t)a3 defaultFont:(id)a4 baselineOffset:(double *)a5;
- (id)displayItemIdentifiersForPartWithIdentifier:(id)a3;
- (id)expandedFont;
- (id)normalFont;
- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)a3;
- (id)overriddenStyleAttributesForDisplayItemWithIdentifier:(id)a3;
- (id)pillFont;
- (id)regionIdentifiersForPartWithIdentifier:(id)a3;
- (id)removalAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4;
- (id)setupInContainerView:(id)a3;
- (id)stringForCellularType:(int64_t)a3 condensed:(BOOL)a4;
- (id)styleAttributesForStyle:(int64_t)a3;
- (id)timeFont;
- (id)willUpdateWithData:(id)a3;
- (void)_updateBackgroundHeight;
- (void)_updateExpandedTrailingRegion;
- (void)_updateLockScreenSizing;
- (void)_updateLowerRegionsWithData:(id)a3;
- (void)actionable:(id)a3 highlighted:(BOOL)a4 initialPress:(BOOL)a5;
- (void)itemCreated:(id)a3;
- (void)orientationUpdatedFromOrientation:(int64_t)a3;
- (void)setExpanded:(BOOL)a3;
- (void)setOnLockScreen:(BOOL)a3;
- (void)updateDataForService:(id)a3;
@end

@implementation _UIStatusBarVisualProvider_LegacyPhone

+ (double)_heightExpanded:(BOOL)a3
{
  result = 20.0;
  if (a3)
  {
    return 24.0;
  }

  return result;
}

+ (CGSize)intrinsicLockScreenContentSizeForOrientation:(int64_t)a3
{
  [a1 _heightExpanded:1];
  v4 = v3;
  v5 = -1.0;
  result.height = v4;
  result.width = v5;
  return result;
}

- (double)effectiveHeight
{
  v3 = objc_opt_class();
  v4 = [(_UIStatusBarVisualProvider_iOS *)self expanded]|| [(_UIStatusBarVisualProvider_iOS *)self onLockScreen];

  [v3 _heightExpanded:v4];
  return result;
}

- (NSDirectionalEdgeInsets)edgeInsets
{
  v2 = 0.0;
  v3 = 6.5;
  v4 = 0.0;
  v5 = 5.5;
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (double)baselineOffset
{
  v2 = [objc_opt_self() mainScreen];
  [v2 scale];
  UIRoundToScale(14.5, v3);
  v5 = v4;

  return v5;
}

- (id)normalFont
{
  v2 = _AXSEnhanceTextLegibilityEnabled() != 0;
  v3 = qword_1ED49B110;
  if (qword_1ED49B110)
  {
    v4 = _MergedGlobals_21_3 == v2;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    _MergedGlobals_21_3 = v2;
    v5 = [off_1E70ECC18 systemFontOfSize:12.0 weight:*off_1E70ECD28];
    v6 = qword_1ED49B110;
    qword_1ED49B110 = v5;

    v3 = qword_1ED49B110;
  }

  return v3;
}

- (id)timeFont
{
  v2 = _AXSEnhanceTextLegibilityEnabled() != 0;
  v3 = unk_1ED49B118;
  if (unk_1ED49B118)
  {
    v4 = byte_1ED49B109 == v2;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    byte_1ED49B109 = v2;
    v5 = [off_1E70ECC18 systemFontOfSize:12.0 weight:*off_1E70ECD30];
    v6 = unk_1ED49B118;
    unk_1ED49B118 = v5;

    v3 = unk_1ED49B118;
  }

  return v3;
}

- (id)expandedFont
{
  v2 = _AXSEnhanceTextLegibilityEnabled() != 0;
  v3 = unk_1ED49B120;
  if (unk_1ED49B120)
  {
    v4 = byte_1ED49B10A == v2;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    byte_1ED49B10A = v2;
    v5 = [off_1E70ECC18 systemFontOfSize:14.0 weight:*off_1E70ECD28];
    v6 = unk_1ED49B120;
    unk_1ED49B120 = v5;

    v3 = unk_1ED49B120;
  }

  return v3;
}

- (id)pillFont
{
  v2 = _AXSEnhanceTextLegibilityEnabled() != 0;
  v3 = unk_1ED49B128;
  if (unk_1ED49B128)
  {
    v4 = byte_1ED49B10B == v2;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    byte_1ED49B10B = v2;
    v5 = [off_1E70ECC18 systemFontOfSize:12.0 weight:*off_1E70ECD30];
    v6 = unk_1ED49B128;
    unk_1ED49B128 = v5;

    v3 = unk_1ED49B128;
  }

  return v3;
}

- (CGSize)pillSize
{
  v2 = 44.0;
  v3 = 16.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)smallPillSize
{
  v2 = 16.0;
  v3 = 16.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)setupInContainerView:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = [v4 array];
  v185 = [MEMORY[0x1E695DF70] array];
  [(_UIStatusBarVisualProvider_LegacyPhone *)self baselineOffset];
  v8 = v7;
  [(_UIStatusBarVisualProvider_LegacyPhone *)self expandedBaselineOffset];
  v181 = v9;
  [(_UIStatusBarVisualProvider_LegacyPhone *)self edgeInsets];
  v11 = v10;
  v13 = v12;
  [(_UIStatusBarVisualProvider_iOS *)self itemSpacing];
  v15 = v14;
  [(_UIStatusBarVisualProvider_iOS *)self expandedItemSpacing];
  v17 = v16;
  [(_UIStatusBarVisualProvider_LegacyPhone *)self regionSpacing];
  v19 = v18;
  v20 = [(_UIStatusBarVisualProvider_LegacyPhone *)self normalFont];
  [v20 capHeight];
  v22 = v21 + 1.0;

  v23 = [(_UIStatusBarVisualProvider_LegacyPhone *)self expandedFont];
  [v23 capHeight];
  v25 = v24 + 1.0;

  v26 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"leading"];
  v27 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v28 = objc_alloc_init(_UIStatusBarRegionAxisStackingLayout);
  [(_UIStatusBarRegionAxisStackingLayout *)v28 setAlignment:3];
  [(_UIStatusBarRegionAxisStackingLayout *)v28 setInterspace:v15];
  leadingHorizontalLayout = self->_leadingHorizontalLayout;
  self->_leadingHorizontalLayout = v28;

  [(_UIStatusBarRegionAxesLayout *)v27 setHorizontalLayout:self->_leadingHorizontalLayout];
  v30 = [_UIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:6];
  [(_UIStatusBarRegionAxesLayout *)v27 setVerticalLayout:v30];

  [(_UIStatusBarRegion *)v26 setLayout:v27];
  [(_UIStatusBarRegion *)v26 setActionInsets:-20.0, -20.0, -20.0, -20.0];
  v31 = [(_UIStatusBarRegion *)v26 layoutItem];
  v32 = [v31 bottomAnchor];
  v33 = [v5 topAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:v8];
  leadingTopConstraint = self->_leadingTopConstraint;
  self->_leadingTopConstraint = v34;

  [v6 addObject:self->_leadingTopConstraint];
  v36 = [v31 leadingAnchor];
  v37 = [v5 leadingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:v11];
  [v6 addObject:v38];

  v184 = v31;
  v39 = [v31 heightAnchor];
  v40 = [v39 constraintEqualToConstant:v22];
  leadingHeightConstraint = self->_leadingHeightConstraint;
  self->_leadingHeightConstraint = v40;

  [v6 addObject:self->_leadingHeightConstraint];
  [v5 _ui_addSubLayoutItem:v31];

  [v185 addObject:v26];
  v42 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"trailing"];
  v43 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v44 = objc_alloc_init(_UIStatusBarRegionAxisStackingLayout);
  [(_UIStatusBarRegionAxisStackingLayout *)v44 setAlignment:4];
  [(_UIStatusBarRegionAxisStackingLayout *)v44 setInterspace:v15];
  trailingHorizontalLayout = self->_trailingHorizontalLayout;
  self->_trailingHorizontalLayout = v44;

  [(_UIStatusBarRegionAxesLayout *)v43 setHorizontalLayout:self->_trailingHorizontalLayout];
  v46 = [_UIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:6];
  [(_UIStatusBarRegionAxesLayout *)v43 setVerticalLayout:v46];

  [(_UIStatusBarRegion *)v42 setLayout:v43];
  [(_UIStatusBarRegion *)v42 setActionInsets:-20.0, -20.0, -20.0, -20.0];
  v47 = [(_UIStatusBarRegion *)v42 layoutItem];
  v48 = [v47 bottomAnchor];
  v49 = [v5 topAnchor];
  v50 = [v48 constraintEqualToAnchor:v49 constant:v8];
  trailingTopConstraint = self->_trailingTopConstraint;
  self->_trailingTopConstraint = v50;

  [v6 addObject:self->_trailingTopConstraint];
  v52 = [v47 trailingAnchor];
  v53 = [v5 trailingAnchor];
  v54 = -v13;
  v55 = [v52 constraintEqualToAnchor:v53 constant:v54];
  [v6 addObject:v55];

  v183 = v47;
  v56 = [v47 heightAnchor];
  v57 = [v56 constraintEqualToConstant:v22];
  trailingHeightConstraint = self->_trailingHeightConstraint;
  self->_trailingHeightConstraint = v57;

  [v6 addObject:self->_trailingHeightConstraint];
  [v5 _ui_addSubLayoutItem:v47];

  [v185 addObject:v42];
  v59 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"center"];
  v60 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v61 = objc_alloc_init(_UIStatusBarRegionAxisCenteringLayout);
  [(_UIStatusBarRegionAxisCenteringLayout *)v61 setInterspace:v15];
  centerHorizontalLayout = self->_centerHorizontalLayout;
  self->_centerHorizontalLayout = v61;

  [(_UIStatusBarRegionAxesLayout *)v60 setHorizontalLayout:self->_centerHorizontalLayout];
  v63 = [_UIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:6];
  [(_UIStatusBarRegionAxesLayout *)v60 setVerticalLayout:v63];

  [(_UIStatusBarRegion *)v59 setLayout:v60];
  v64 = [(_UIStatusBarRegion *)v59 layoutItem];
  v65 = [v64 centerXAnchor];
  v66 = [v5 centerXAnchor];
  v67 = [v65 constraintEqualToAnchor:v66];
  [v6 addObject:v67];

  v68 = [v64 widthAnchor];
  v69 = [v68 constraintEqualToConstant:0.0];
  LODWORD(v70) = 1132068864;
  v71 = [v69 _ui_constraintWithPriority:v70];
  [v6 addObject:v71];

  v72 = [v64 bottomAnchor];
  v73 = [v5 topAnchor];
  v74 = [v72 constraintEqualToAnchor:v73 constant:v8];
  centerTopConstraint = self->_centerTopConstraint;
  self->_centerTopConstraint = v74;

  [v6 addObject:self->_centerTopConstraint];
  v76 = [v64 heightAnchor];
  v77 = [v76 constraintEqualToConstant:v22];
  centerHeightConstraint = self->_centerHeightConstraint;
  self->_centerHeightConstraint = v77;

  [v6 addObject:self->_centerHeightConstraint];
  v79 = [v64 leadingAnchor];
  v80 = [v31 trailingAnchor];
  v81 = [v79 constraintEqualToAnchor:v80 constant:v19];
  [v6 addObject:v81];

  v82 = [v183 leadingAnchor];
  v83 = [v64 trailingAnchor];
  v84 = [v82 constraintEqualToAnchor:v83 constant:v19];
  [v6 addObject:v84];

  [v5 _ui_addSubLayoutItem:v64];
  [v185 addObject:v59];

  v85 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"background"];
  v86 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v87 = +[_UIStatusBarRegionAxisFillingLayout fillingLayout];
  [(_UIStatusBarRegionAxesLayout *)v86 setHorizontalLayout:v87];

  v88 = +[_UIStatusBarRegionAxisFillingLayout fillingLayout];
  [(_UIStatusBarRegionAxesLayout *)v86 setVerticalLayout:v88];

  [(_UIStatusBarRegion *)v85 setLayout:v86];
  v89 = [(_UIStatusBarRegion *)v85 layoutItem];
  v90 = [v89 leadingAnchor];
  v91 = [v5 leadingAnchor];
  v92 = [v90 constraintEqualToAnchor:v91];
  [v6 addObject:v92];

  v93 = [v89 trailingAnchor];
  v94 = [v5 trailingAnchor];
  v95 = [v93 constraintEqualToAnchor:v94];
  [v6 addObject:v95];

  v96 = [v89 topAnchor];
  v97 = [v5 topAnchor];
  v98 = [v96 constraintEqualToAnchor:v97];
  [v6 addObject:v98];

  v99 = [v89 heightAnchor];
  [objc_opt_class() height];
  v100 = [v99 constraintEqualToConstant:?];
  backgroundHeightConstraint = self->_backgroundHeightConstraint;
  self->_backgroundHeightConstraint = v100;

  [v6 addObject:self->_backgroundHeightConstraint];
  [v5 _ui_addSubLayoutItem:v89];

  [v185 addObject:v85];
  [(_UIStatusBarVisualProvider_LegacyPhone *)self lowerExpandedBaselineOffset];
  v103 = v102;
  v104 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"expandedLeading"];
  v105 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v106 = objc_alloc_init(_UIStatusBarRegionAxisStackingLayout);
  [(_UIStatusBarRegionAxisStackingLayout *)v106 setAlignment:3];
  [(_UIStatusBarRegionAxisStackingLayout *)v106 setInterspace:v17];
  [(_UIStatusBarRegionAxesLayout *)v105 setHorizontalLayout:v106];

  v107 = [_UIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:6];
  [(_UIStatusBarRegionAxesLayout *)v105 setVerticalLayout:v107];

  [(_UIStatusBarRegion *)v104 setLayout:v105];
  [(_UIStatusBarRegion *)v104 setActionInsets:-20.0, -20.0, -20.0, -20.0];
  [(_UIStatusBarRegion *)v104 disableWithToken:10];
  v108 = [(_UIStatusBarRegion *)v104 layoutItem];
  v109 = [v108 bottomAnchor];
  v110 = [v5 topAnchor];
  v111 = [v109 constraintEqualToAnchor:v110 constant:v181];
  expandedLeadingBottomConstraint = self->_expandedLeadingBottomConstraint;
  self->_expandedLeadingBottomConstraint = v111;

  [(NSLayoutConstraint *)self->_expandedLeadingBottomConstraint setIdentifier:@"UISB-expanded-leading-bottom"];
  [v6 addObject:self->_expandedLeadingBottomConstraint];
  v113 = [v108 leadingAnchor];
  v114 = [v5 leadingAnchor];
  v115 = [v113 constraintEqualToAnchor:v114 constant:v11];
  [v6 addObject:v115];

  v116 = [v108 heightAnchor];
  v117 = [v116 constraintEqualToConstant:v25];
  [v6 addObject:v117];

  [v5 _ui_addSubLayoutItem:v108];
  [v185 addObject:v104];

  v118 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"expandedTrailing"];
  v119 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v120 = objc_alloc_init(_UIStatusBarRegionAxisStackingLayout);
  [(_UIStatusBarRegionAxisStackingLayout *)v120 setAlignment:4];
  [(_UIStatusBarRegionAxisStackingLayout *)v120 setInterspace:v17];
  [(_UIStatusBarRegionAxesLayout *)v119 setHorizontalLayout:v120];

  v121 = [_UIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:6];
  [(_UIStatusBarRegionAxesLayout *)v119 setVerticalLayout:v121];

  [(_UIStatusBarRegion *)v118 setLayout:v119];
  [(_UIStatusBarRegion *)v118 setActionInsets:-20.0, -20.0, -20.0, -20.0];
  [(_UIStatusBarRegion *)v118 disableWithToken:10];
  v122 = [(_UIStatusBarRegion *)v118 layoutItem];
  v123 = [v122 bottomAnchor];
  v124 = [v5 topAnchor];
  v125 = [v123 constraintEqualToAnchor:v124 constant:v181];
  expandedTrailingBottomConstraint = self->_expandedTrailingBottomConstraint;
  self->_expandedTrailingBottomConstraint = v125;

  [(NSLayoutConstraint *)self->_expandedTrailingBottomConstraint setIdentifier:@"UISB-expanded-trailing-bottom"];
  [v6 addObject:self->_expandedTrailingBottomConstraint];
  v127 = [v122 trailingAnchor];
  v128 = [v5 trailingAnchor];
  v129 = [v127 constraintEqualToAnchor:v128 constant:v54];
  [v6 addObject:v129];

  v130 = [v122 heightAnchor];
  v131 = [v130 constraintEqualToConstant:v25];
  [v6 addObject:v131];

  v132 = [v122 leadingAnchor];
  v182 = v108;
  v133 = [v108 trailingAnchor];
  v134 = [v132 constraintEqualToAnchor:v133 constant:v17];
  [v6 addObject:v134];

  v135 = [v122 widthAnchor];
  v136 = [v108 widthAnchor];
  v137 = [v135 constraintEqualToAnchor:v136];
  LODWORD(v138) = 1131741184;
  v139 = [v137 _ui_constraintWithPriority:v138];
  [v6 addObject:v139];

  v180 = v122;
  [v5 _ui_addSubLayoutItem:v122];

  [v185 addObject:v118];
  v140 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"expandedLowerLeading"];
  v141 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v142 = objc_alloc_init(_UIStatusBarRegionAxisStackingLayout);
  [(_UIStatusBarRegionAxisStackingLayout *)v142 setAlignment:3];
  [(_UIStatusBarRegionAxisStackingLayout *)v142 setInterspace:v17];
  [(_UIStatusBarRegionAxesLayout *)v141 setHorizontalLayout:v142];

  v143 = [_UIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:6];
  [(_UIStatusBarRegionAxesLayout *)v141 setVerticalLayout:v143];

  [(_UIStatusBarRegion *)v140 setLayout:v141];
  [(_UIStatusBarRegion *)v140 disableWithToken:10];
  v144 = [(_UIStatusBarRegion *)v140 layoutItem];
  v145 = [v144 bottomAnchor];
  v146 = [v182 bottomAnchor];
  v147 = [v145 constraintEqualToAnchor:v146 constant:v103];
  [v6 addObject:v147];

  v148 = [v144 leadingAnchor];
  v149 = [v5 leadingAnchor];
  v150 = [v148 constraintEqualToAnchor:v149 constant:v11];
  [v6 addObject:v150];

  v151 = [v144 heightAnchor];
  v152 = [v151 constraintEqualToConstant:v25];
  [v6 addObject:v152];

  [v5 _ui_addSubLayoutItem:v144];
  [v185 addObject:v140];

  v153 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"expandedLowerTrailing"];
  v154 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v155 = objc_alloc_init(_UIStatusBarRegionAxisStackingLayout);
  [(_UIStatusBarRegionAxisStackingLayout *)v155 setAlignment:4];
  [(_UIStatusBarRegionAxisStackingLayout *)v155 setInterspace:v17];
  [(_UIStatusBarRegionAxesLayout *)v154 setHorizontalLayout:v155];

  v156 = [_UIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:6];
  [(_UIStatusBarRegionAxesLayout *)v154 setVerticalLayout:v156];

  [(_UIStatusBarRegion *)v153 setLayout:v154];
  [(_UIStatusBarRegion *)v153 disableWithToken:10];
  v157 = [(_UIStatusBarRegion *)v153 layoutItem];
  v158 = [v157 bottomAnchor];
  v159 = [v122 bottomAnchor];
  v160 = [v158 constraintEqualToAnchor:v159 constant:v103];
  [v6 addObject:v160];

  v161 = [(_UIStatusBarRegion *)v153 layoutItem];
  v162 = [v161 trailingAnchor];
  v163 = [v5 trailingAnchor];
  v164 = [v162 constraintEqualToAnchor:v163 constant:v54];
  [v6 addObject:v164];

  v165 = [(_UIStatusBarRegion *)v153 layoutItem];
  v166 = [v165 heightAnchor];
  v167 = [v166 constraintEqualToConstant:v25];
  [v6 addObject:v167];

  v168 = [(_UIStatusBarRegion *)v153 layoutItem];
  v169 = [v168 leadingAnchor];
  v170 = [v144 trailingAnchor];
  v171 = [v169 constraintEqualToAnchor:v170 constant:v17];
  [v6 addObject:v171];

  v172 = [(_UIStatusBarRegion *)v153 layoutItem];
  v173 = [v172 widthAnchor];
  v174 = [v144 widthAnchor];
  v175 = [v173 constraintEqualToAnchor:v174];
  LODWORD(v176) = 1131741184;
  v177 = [v175 _ui_constraintWithPriority:v176];
  [v6 addObject:v177];

  v178 = [(_UIStatusBarRegion *)v153 layoutItem];
  [v5 _ui_addSubLayoutItem:v178];

  [v185 addObject:v153];
  [MEMORY[0x1E69977A0] activateConstraints:v6];

  return v185;
}

- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)a3
{
  v186[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  orderedDisplayItemPlacements = self->_orderedDisplayItemPlacements;
  if (!orderedDisplayItemPlacements)
  {
    v161 = v4;
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    LOBYTE(v136) = 1;
    v9 = [_UIStatusBarDisplayItemPlacementNetworkGroup groupWithHighPriority:1300 lowPriority:1000 cellularItemClass:v7 wifiItemClass:v8 cellularTypeClass:objc_opt_class() includeCellularName:1 allowDualNetwork:v136];
    v10 = [v9 cellularGroup];
    v11 = [v10 namePlacement];

    v12 = [v9 cellularGroup];
    v13 = [v12 dualNamePlacement];

    v14 = [v9 cellularGroup];
    v15 = [v14 dualNameAndTypePlacement];

    v16 = +[(_UIStatusBarItem *)_UIStatusBarNavigationItem];
    v17 = +[_UIStatusBarDisplayItemPlacement placementWithIdentifier:priority:](_UIStatusBarDisplayItemPlacement, "placementWithIdentifier:priority:", v16, [v9 maximumPriority] + 1);
    v159 = v13;
    v160 = v11;
    v186[0] = v11;
    v186[1] = v13;
    v158 = v15;
    v186[2] = v15;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v186 count:3];
    v19 = [v17 excludingPlacements:v18];

    if ([(_UIStatusBarVisualProvider_iOS *)self hasCellularCapability])
    {
      v20 = v6;
      [v6 addObject:v19];
      v21 = 0;
      v22 = 1;
    }

    else
    {
      v23 = +[(_UIStatusBarItem *)_UIStatusBarDeviceNameItem];
      v21 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v23 priority:30];

      v185 = v21;
      v22 = 1;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v185 count:1];
      v25 = [v19 excludingPlacements:v24];

      [v6 addObject:v25];
      v20 = v6;
      if (v21)
      {
        [v6 addObject:v21];
        v22 = 0;
      }

      v19 = v25;
    }

    v157 = v19;
    v170 = self;
    v26 = [MEMORY[0x1E695DF70] array];
    v27 = [v9 cellularGroup];
    v28 = [v27 placementsAffectedByAirplaneMode];
    [v26 addObjectsFromArray:v28];

    if ((v22 & 1) == 0)
    {
      [v26 addObject:v21];
    }

    v156 = v21;
    v29 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorAirplaneModeItem];
    v30 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v29 priority:1400];
    v155 = v26;
    v31 = [v30 excludingPlacements:v26];
    v169 = v20;
    [v20 addObject:v31];

    v32 = [v9 minimumPriority];
    v33 = [_UIStatusBarDisplayItemPlacement spacerPlacementWithSize:v32 - 5 priority:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    v34 = [v9 cellularGroup];
    v35 = [v34 typePlacement];
    v184[0] = v35;
    v36 = [v9 cellularGroup];
    [v36 namePlacement];
    v37 = v9;
    v38 = v168 = v9;
    v184[1] = v38;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v184 count:2];
    v40 = [v33 requiringAllPlacements:v39];

    v171 = [v37 placements];
    v143 = [v171 arrayByAddingObject:v40];
    v166 = +[(_UIStatusBarCellularItem *)_UIStatusBarCellularCondensedItem];
    v183[0] = v166;
    v164 = +[_UIStatusBarCellularCondensedItem dualSignalStrengthDisplayIdentifier];
    v183[1] = v164;
    v162 = +[(_UIStatusBarCellularItem *)_UIStatusBarCellularCondensedItem];
    v183[2] = v162;
    v152 = +[(_UIStatusBarCellularItem *)_UIStatusBarCellularCondensedItem];
    v183[3] = v152;
    v149 = +[(_UIStatusBarCellularItem *)_UIStatusBarCellularCondensedItem];
    v183[4] = v149;
    v147 = +[_UIStatusBarCellularCondensedItem dualSingleLineNameDisplayIdentifier];
    v183[5] = v147;
    v145 = +[_UIStatusBarCellularCondensedItem dualSingleLineNameAndTypeDisplayIdentifier];
    v183[6] = v145;
    v154 = v40;
    v41 = [v40 identifier];
    v183[7] = v41;
    v42 = +[(_UIStatusBarCellularItem *)_UIStatusBarCellularCondensedItem];
    v183[8] = v42;
    v43 = +[_UIStatusBarWifiItem signalStrengthDisplayIdentifier];
    v183[9] = v43;
    v44 = +[_UIStatusBarWifiItem iconDisplayIdentifier];
    v183[10] = v44;
    v45 = +[_UIStatusBarWifiItem rawDisplayIdentifier];
    v183[11] = v45;
    v46 = +[(_UIStatusBarCellularItem *)_UIStatusBarCellularCondensedItem];
    v183[12] = v46;
    v47 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorVPNItem];
    v183[13] = v47;
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v183 count:14];
    v49 = _reorderedPlacementsFromGroupForLegacyLayout(v143, 0, v48);
    [v169 addObjectsFromArray:v49];

    v50 = +[(_UIStatusBarItem *)_UIStatusBarActivityItem];
    v51 = +[_UIStatusBarDisplayItemPlacement placementWithIdentifier:priority:](_UIStatusBarDisplayItemPlacement, "placementWithIdentifier:priority:", v50, [v168 minimumPriority] - 10);
    [v169 addObject:v51];

    v172 = [MEMORY[0x1E695DF70] array];
    v52 = +[(_UIStatusBarItem *)_UIStatusBarLockItem];
    v167 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v52 priority:3000];

    v53 = +[_UIStatusBarLockItem textDisplayIdentifier];
    v54 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v53 priority:2999];
    v55 = [v168 cellularGroup];
    v56 = [v55 dualNamePlacement];
    v182[0] = v56;
    v57 = [v168 cellularGroup];
    v58 = [v57 dualNameAndTypePlacement];
    v182[1] = v58;
    v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v182 count:2];
    v60 = [v54 excludingPlacements:v59];

    v61 = +[_UIStatusBarTimeItem timeDisplayIdentifier];
    v62 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v61 priority:3002];
    v181[0] = v60;
    v63 = [v168 cellularGroup];
    v64 = [v63 dualNamePlacement];
    v181[1] = v64;
    v65 = [v168 cellularGroup];
    v66 = [v65 dualNameAndTypePlacement];
    v181[2] = v66;
    v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v181 count:3];
    v165 = [v62 excludingPlacements:v67];

    v68 = v172;
    [v172 addObject:v167];
    v153 = v60;
    [v172 addObject:v60];
    if (_UIGetFullWidthBackgroundActivity())
    {
      v69 = +[(_UIStatusBarItem *)_UIStatusBarFullBackgroundActivityItem];
      v70 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v69 priority:1950];

      v71 = +[(_UIStatusBarBackgroundActivityItem *)_UIStatusBarFullBackgroundActivityItem];
      v72 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v71 priority:1949];
      v180 = v70;
      v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v180 count:1];
      v74 = [v72 requiringAllPlacements:v73];

      v75 = +[_UIStatusBarFullBackgroundActivityItem detailDisplayIdentifier];
      v76 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v75 priority:5000];
      v179[0] = @"leading";
      v179[1] = @"center";
      v179[2] = @"trailing";
      v179[3] = @"expandedLeading";
      v179[4] = @"expandedTrailing";
      v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:v179 count:5];
      v178[0] = v70;
      v178[1] = v74;
      v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:v178 count:2];
      v79 = [v76 excludingAllPlacementsInRegions:v77 exceptPlacements:v78];

      v68 = v172;
      v80 = [(_UIStatusBarVisualProvider_Phone *)v170 pillRegionCoordinator];
      [v80 setBackgroundActivityDetailPlacement:v79];

      [v172 addObject:v70];
      [v172 addObject:v74];
      [v172 addObject:v79];
    }

    [v68 addObject:v165];
    v81 = [MEMORY[0x1E695DF70] array];
    v82 = +[(_UIStatusBarItem *)_UIStatusBarSensorActivityItem];
    v83 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v82 priority:1960];
    [v81 addObject:v83];

    v84 = [_UIStatusBarIndicatorLocationItem groupWithPriority:1955];
    v85 = [v84 placements];
    [v81 addObjectsFromArray:v85];

    if ((_UIGetFullWidthBackgroundActivity() & 1) == 0)
    {
      v86 = +[_UIStatusBarPillBackgroundActivityItem pillCombinedDisplayIdentifier];
      v87 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v86 priority:1950];

      [v81 addObject:v87];
    }

    v88 = +[(_UIStatusBarItem *)_UIStatusBarVoiceControlPillItem];
    v89 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v88 priority:1940];
    [v81 addObject:v89];

    [(_UIStatusBarVisualProvider_iOS *)v170 bluetoothPaddingInset];
    v90 = [_UIStatusBarDisplayItemPlacementIndicatorsGroup groupWithHighPriority:800 lowPriority:500 bluetoothPaddingInset:?];
    v163 = +[_UIStatusBarDisplayItemPlacementBatteryGroup groupWithHighPriority:lowPriority:](_UIStatusBarDisplayItemPlacementBatteryGroup, "groupWithHighPriority:lowPriority:", [v90 maximumPriority] + 1, objc_msgSend(v90, "minimumPriority") - 5);
    v138 = [v90 placements];
    +[_UIStatusBarBluetoothItem batteryDisplayIdentifier];
    v150 = v148 = v90;
    v177[0] = v150;
    v146 = [v90 bluetoothInsetPaddingItem];
    v144 = [v146 identifier];
    v177[1] = v144;
    v142 = +[(_UIStatusBarItem *)_UIStatusBarBluetoothItem];
    v177[2] = v142;
    v141 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorAirPlayItem];
    v177[3] = v141;
    v140 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorTTYItem];
    v177[4] = v140;
    v139 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorAlarmItem];
    v177[5] = v139;
    v91 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorStudentItem];
    v177[6] = v91;
    v92 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorRotationLockItem];
    v177[7] = v92;
    v93 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorAssistantItem];
    v177[8] = v93;
    v94 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorQuietModeItem];
    v177[9] = v94;
    v95 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorCarPlayItem];
    v177[10] = v95;
    v96 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorSatelliteItem];
    v177[11] = v96;
    v97 = [MEMORY[0x1E695DEC8] arrayWithObjects:v177 count:12];
    v98 = _reorderedPlacementsFromGroupForLegacyLayout(v138, 1, v97);
    [v81 addObjectsFromArray:v98];

    v99 = +[(_UIStatusBarItem *)_UIStatusBarBuildVersionItem];
    v100 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v99 priority:2];
    v101 = v81;
    [v81 addObject:v100];

    v102 = [v163 placements];
    v103 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorLiquidDetectionItem];
    v176[0] = v103;
    v104 = +[_UIStatusBarBatteryItem staticIconDisplayIdentifier];
    v176[1] = v104;
    v105 = +[_UIStatusBarBatteryItem percentDisplayIdentifier];
    v176[2] = v105;
    v106 = [MEMORY[0x1E695DEC8] arrayWithObjects:v176 count:3];
    v107 = _reorderedPlacementsFromGroupForLegacyLayout(v102, 1, v106);
    v151 = v101;
    [v101 addObjectsFromArray:v107];

    v108 = [MEMORY[0x1E695DF70] array];
    v109 = objc_opt_class();
    v110 = objc_opt_class();
    LOBYTE(v137) = 0;
    v111 = [_UIStatusBarDisplayItemPlacementNetworkGroup groupWithHighPriority:2500 lowPriority:2200 cellularItemClass:v109 wifiItemClass:v110 cellularTypeClass:objc_opt_class() includeCellularName:1 allowDualNetwork:v137];
    v112 = [v111 wifiGroup];
    lowerWifiGroup = v170->_lowerWifiGroup;
    v170->_lowerWifiGroup = v112;

    v114 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorAirplaneModeItem];
    v115 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v114 priority:5000];
    v116 = [(_UIStatusBarVisualProvider_iOS *)v170 expandedCellularPlacementsAffectedByAirplaneMode];
    v117 = [v111 cellularGroup];
    v118 = [v117 placementsAffectedByAirplaneMode];
    v119 = [v116 arrayByAddingObjectsFromArray:v118];
    v120 = [v115 excludingPlacements:v119];
    [v108 addObject:v120];

    v121 = [v111 placements];
    [v108 addObjectsFromArray:v121];

    v122 = [MEMORY[0x1E695DF70] array];
    v123 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorLocationItem];
    v124 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v123 priority:1450];
    [v122 addObject:v124];

    [(_UIStatusBarVisualProvider_iOS *)v170 bluetoothPaddingInset];
    v125 = [_UIStatusBarDisplayItemPlacementIndicatorsGroup groupWithHighPriority:1400 lowPriority:1000 bluetoothPaddingInset:?];
    v126 = [v125 placements];
    [v122 addObjectsFromArray:v126];

    if (_UIGetFullWidthBackgroundActivity())
    {
      v127 = +[(_UIStatusBarBackgroundActivityItem *)_UIStatusBarFullBackgroundActivityItem];
      v128 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v127 priority:2000];
      v175 = v128;
      v129 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v175 count:1];
    }

    else
    {
      v129 = MEMORY[0x1E695E0F0];
    }

    v173[0] = @"leading";
    v173[1] = @"trailing";
    v174[0] = v169;
    v174[1] = v151;
    v173[2] = @"center";
    v173[3] = @"background";
    v174[2] = v172;
    v174[3] = v129;
    v173[4] = @"expandedLeading";
    v130 = [(_UIStatusBarVisualProvider_iOS *)v170 expandedLeadingPlacements];
    v174[4] = v130;
    v174[5] = v108;
    v173[5] = @"expandedLowerLeading";
    v173[6] = @"expandedTrailing";
    v131 = [(_UIStatusBarVisualProvider_iOS *)v170 expandedTrailingPlacements];
    v173[7] = @"expandedLowerTrailing";
    v174[6] = v131;
    v174[7] = v122;
    v132 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v174 forKeys:v173 count:8];
    v133 = v170->_orderedDisplayItemPlacements;
    v170->_orderedDisplayItemPlacements = v132;

    orderedDisplayItemPlacements = v170->_orderedDisplayItemPlacements;
    v4 = v161;
  }

  v134 = [(NSDictionary *)orderedDisplayItemPlacements objectForKeyedSubscript:v4];

  return v134;
}

- (void)itemCreated:(id)a3
{
  v11 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v11;
    objc_opt_class();
    [v5 setMarqueeServiceName:objc_opt_isKindOfClass() & 1];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 setMarqueeServiceName:1];
    }

    else if ([v5 isMemberOfClass:objc_opt_class()])
    {
      [v5 setShowsDisabledSignalBars:0];
      [v5 setMarqueeServiceName:{-[_UIStatusBarVisualProvider_iOS onLockScreen](self, "onLockScreen")}];
      objc_storeStrong(&self->_condensedCellularItem, a3);
    }

    [v5 setTypeStringProvider:self];
  }

  else
  {
    v6 = [v11 identifier];
    v7 = +[(_UIStatusBarItem *)_UIStatusBarVoiceControlPillItem];

    if (v6 == v7)
    {
      v10 = v11;
      [(_UIStatusBarVisualProvider_LegacyPhone *)self smallPillSize];
      [v10 setPillSize:?];
    }

    else
    {
      v8 = [v11 identifier];
      v9 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorLiquidDetectionItem];

      if (v8 == v9)
      {
        [v11 setUseFullColorIndicator:1];
      }
    }
  }
}

- (id)stringForCellularType:(int64_t)a3 condensed:(BOOL)a4
{
  if (a3 == 2)
  {
    v5 = _UINSLocalizedStringWithDefaultValue(@"GPRS", @"GPRS");
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)condensedFontForCellularType:(int64_t)a3 defaultFont:(id)a4 baselineOffset:(double *)a5
{
  v6 = a4;
  v7 = v6;
  v8 = v6;
  if (a3 <= 0xD)
  {
    if (((1 << a3) & 0x38C0) != 0)
    {
      v9 = [v6 fontDescriptor];
      v10 = [v9 fontDescriptorWithSymbolicTraits:64];

      v11 = off_1E70ECC18;
      v12 = 0.0;
      v13 = v10;
LABEL_4:
      v8 = [v11 fontWithDescriptor:v13 size:v12];

      goto LABEL_5;
    }

    v8 = v6;
    if (a3 == 2)
    {
      [v6 pointSize];
      v16 = v15 * 0.7;
      v10 = [v7 fontDescriptor];
      v11 = off_1E70ECC18;
      v13 = v10;
      v12 = v16;
      goto LABEL_4;
    }
  }

LABEL_5:

  return v8;
}

- (void)actionable:(id)a3 highlighted:(BOOL)a4 initialPress:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v23[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 0;
    goto LABEL_7;
  }

  v9 = v8;
  v10 = v9;
  if (!v9)
  {
LABEL_7:
    v20.receiver = self;
    v20.super_class = _UIStatusBarVisualProvider_LegacyPhone;
    [(_UIStatusBarVisualProvider_Phone *)&v20 actionable:v8 highlighted:v6 initialPress:v5];
    goto LABEL_8;
  }

  v11 = [v9 identifier];
  v12 = +[_UIStatusBarPillBackgroundActivityItem pillCombinedDisplayIdentifier];
  v13 = v12;
  if (v11 != v12)
  {
    v14 = [v10 identifier];
    v15 = +[(_UIStatusBarBackgroundActivityItem *)_UIStatusBarFullBackgroundActivityItem];

    if (v14 == v15)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

LABEL_10:
  v16 = [v10 highlightView];
  if (!v16)
  {
    v16 = objc_alloc_init(_UIStatusBarRoundedCornerView);
    [(UIView *)v16 setAutoresizingMask:18];
    v17 = [v10 identifier];
    v18 = +[(_UIStatusBarBackgroundActivityItem *)_UIStatusBarFullBackgroundActivityItem];

    if (v17 == v18)
    {
      [(_UIStatusBarRoundedCornerView *)v16 setCornerRadius:0.0];
    }

    [v10 setHighlightView:v16];
  }

  v23[0] = v16;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __78___UIStatusBarVisualProvider_LegacyPhone_actionable_highlighted_initialPress___block_invoke;
  v21[3] = &__block_descriptor_33_e16_v16__0__UIView_8l;
  v22 = v6;
  [UIButton _setVisuallyHighlighted:v6 forViews:v19 initialPress:v5 highlightBlock:v21];

LABEL_8:
}

- (id)willUpdateWithData:(id)a3
{
  v15.receiver = self;
  v15.super_class = _UIStatusBarVisualProvider_LegacyPhone;
  v4 = a3;
  v5 = [(_UIStatusBarVisualProvider_Phone *)&v15 willUpdateWithData:v4];
  v6 = [v4 backgroundActivityEntry];

  if (v6)
  {
    v7 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    v8 = [v7 currentAggregatedData];
    v9 = [v8 backgroundActivityEntry];

    LODWORD(v7) = [v6 isEnabled];
    if (v7 != [v9 isEnabled])
    {
      if ([v6 isEnabled])
      {
        if ([(_UIStatusBarVisualProvider_iOS *)self expanded])
        {
          v10 = 4;
        }

        else
        {
          v10 = 1;
        }
      }

      else
      {
        v10 = 4;
      }

      v11 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
      v12 = [v11 regions];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __61___UIStatusBarVisualProvider_LegacyPhone_willUpdateWithData___block_invoke;
      v14[3] = &__block_descriptor_40_e45_v32__0__NSString_8___UIStatusBarRegion_16_B24l;
      v14[4] = v10;
      [v12 enumerateKeysAndObjectsUsingBlock:v14];
    }
  }

  return v5;
}

- (id)_animationForSingleLineDualCarrier
{
  v2 = [_UIStatusBarAnimationFactory fadeAnimationWithDuration:0.2];
  v3 = [_UIStatusBarAnimationFactory fadeAnimationWithDuration:0.2];
  [v3 setPriority:10];
  v4 = +[_UIStatusBarWifiItem iconDisplayIdentifier];
  [v2 addSubAnimation:v3 forDisplayItemWithIdentifier:v4];

  v5 = +[_UIStatusBarWifiItem rawDisplayIdentifier];
  [v2 addSubAnimation:v3 forDisplayItemWithIdentifier:v5];

  v6 = +[_UIStatusBarWifiItem signalStrengthDisplayIdentifier];
  [v2 addSubAnimation:v3 forDisplayItemWithIdentifier:v6];

  v7 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorVPNItem];
  [v2 addSubAnimation:v3 forDisplayItemWithIdentifier:v7];

  v8 = +[(_UIStatusBarItem *)_UIStatusBarActivityItem];
  [v2 addSubAnimation:v3 forDisplayItemWithIdentifier:v8];

  return v2;
}

- (id)additionAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[_UIStatusBarFullBackgroundActivityItem detailDisplayIdentifier];

  if (v8 == v6)
  {
    v13 = +[_UIStatusBarAnimationFactory noAnimation];
    v14 = +[_UIStatusBarTimeItem timeDisplayIdentifier];
    [v7 addSubAnimation:v13 forDisplayItemWithIdentifier:v14];

    v15 = +[_UIStatusBarAnimationFactory noAnimation];
    v16 = +[(_UIStatusBarItem *)_UIStatusBarFullBackgroundActivityItem];
    [v7 addSubAnimation:v15 forDisplayItemWithIdentifier:v16];

    v17 = +[_UIStatusBarAnimationFactory noAnimation];
    v18 = +[(_UIStatusBarBackgroundActivityItem *)_UIStatusBarFullBackgroundActivityItem];
    [v7 addSubAnimation:v17 forDisplayItemWithIdentifier:v18];

    v12 = v7;
  }

  else
  {
    v9 = +[_UIStatusBarCellularCondensedItem dualSingleLineNameDisplayIdentifier];
    v10 = v9;
    if (v9 == v6)
    {
    }

    else
    {
      v11 = +[_UIStatusBarCellularCondensedItem dualSingleLineNameAndTypeDisplayIdentifier];

      if (v11 != v6)
      {
        v21.receiver = self;
        v21.super_class = _UIStatusBarVisualProvider_LegacyPhone;
        v12 = [(_UIStatusBarVisualProvider_Phone *)&v21 additionAnimationForDisplayItemWithIdentifier:v6 itemAnimation:v7];
        goto LABEL_8;
      }
    }

    v12 = [(_UIStatusBarVisualProvider_LegacyPhone *)self _animationForSingleLineDualCarrier];
  }

LABEL_8:
  v19 = v12;

  return v19;
}

- (id)removalAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[_UIStatusBarFullBackgroundActivityItem detailDisplayIdentifier];

  if (v8 == v6)
  {
    v12 = [(_UIStatusBarVisualProvider_LegacyPhone *)self _backgroundActivityDetailRemovalAnimation];
  }

  else
  {
    v9 = +[_UIStatusBarCellularCondensedItem dualSingleLineNameDisplayIdentifier];
    v10 = v9;
    if (v9 == v6)
    {
    }

    else
    {
      v11 = +[_UIStatusBarCellularCondensedItem dualSingleLineNameAndTypeDisplayIdentifier];

      if (v11 != v6)
      {
        v15.receiver = self;
        v15.super_class = _UIStatusBarVisualProvider_LegacyPhone;
        v12 = [(_UIStatusBarVisualProvider_Phone *)&v15 removalAnimationForDisplayItemWithIdentifier:v6 itemAnimation:v7];
        goto LABEL_8;
      }
    }

    v12 = [(_UIStatusBarVisualProvider_LegacyPhone *)self _animationForSingleLineDualCarrier];
  }

LABEL_8:
  v13 = v12;

  return v13;
}

- (id)overriddenStyleAttributesForDisplayItemWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[(_UIStatusBarItem *)_UIStatusBarFullBackgroundActivityItem];
  v5 = v4;
  if (v4 == v3)
  {
  }

  else
  {
    v6 = +[(_UIStatusBarBackgroundActivityItem *)_UIStatusBarFullBackgroundActivityItem];

    if (v6 != v3)
    {
      v7 = 0;
      goto LABEL_6;
    }
  }

  v7 = +[_UIStatusBarStyleAttributes overriddenStyleAttributes];
  [v7 setIconScale:0.75];
LABEL_6:

  return v7;
}

- (id)regionIdentifiersForPartWithIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:@"leadingPartIdentifier"])
  {
    v5 = MEMORY[0x1E695DFD8];
    v20 = 0;
    v6 = @"expandedLowerLeading";
    v7 = @"expandedLeading";
LABEL_3:
    [v5 setWithObjects:{@"leading", v7, v6, v20, v21}];
    v9 = LABEL_15:;
    goto LABEL_16;
  }

  if ([v4 isEqual:@"trailingPartIdentifier"])
  {
    [MEMORY[0x1E695DFD8] setWithObjects:{@"trailing", @"expandedTrailing", @"expandedLowerTrailing", 0, v21}];
    goto LABEL_15;
  }

  if ([v4 isEqual:@"centerPartIdentifier"])
  {
    [MEMORY[0x1E695DFD8] setWithObjects:{@"center", @"background", 0, v19, v21}];
    goto LABEL_15;
  }

  if ([v4 isEqual:0x1EFB9C3D0])
  {
    v5 = MEMORY[0x1E695DFD8];
    v20 = @"trailing";
    v21 = 0;
    v6 = @"background";
    v7 = @"center";
    goto LABEL_3;
  }

  if ([v4 isEqual:0x1EFB9C3F0])
  {
    goto LABEL_11;
  }

  if ([v4 isEqual:0x1EFB9C410])
  {
LABEL_13:
    v8 = MEMORY[0x1E695DFD8];
    v17 = @"expandedTrailing";
    v18 = 0;
    goto LABEL_14;
  }

  if ([v4 isEqual:0x1EFB9C430])
  {
    [MEMORY[0x1E695DFD8] setWithObjects:{@"expandedLowerLeading", @"expandedLowerTrailing", 0, v19, v21}];
    goto LABEL_15;
  }

  if ([v4 isEqual:@"visibleExpandedPartIdentifier"])
  {
    v12 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    v13 = [v12 currentData];
    v14 = [v13 secondaryCellularEntry];
    if ([v14 isEnabled])
    {
      v15 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
      v16 = [v15 orientation] - 1;

      if (v16 <= 1)
      {
LABEL_11:
        v8 = MEMORY[0x1E695DFD8];
        v19 = @"expandedLowerTrailing";
        v21 = 0;
        v17 = @"expandedLowerLeading";
        v18 = @"expandedTrailing";
LABEL_14:
        [v8 setWithObjects:{@"expandedLeading", v17, v18, v19, v21}];
        goto LABEL_15;
      }
    }

    else
    {
    }

    goto LABEL_13;
  }

  v9 = [MEMORY[0x1E695DFD8] set];
LABEL_16:
  v10 = v9;

  return v10;
}

- (id)styleAttributesForStyle:(int64_t)a3
{
  v19.receiver = self;
  v19.super_class = _UIStatusBarVisualProvider_LegacyPhone;
  v4 = [(_UIStatusBarVisualProvider_iOS *)&v19 styleAttributesForStyle:a3];
  v5 = [v4 mode];
  if ((v5 - 1) >= 2)
  {
    if (v5)
    {
      goto LABEL_12;
    }

    [v4 setIconScale:1.0];
    v12 = [v4 traitCollection];
    [v12 displayScale];
    if (v13 <= 2.5)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    [v4 setIconSize:v14];

    v15 = [(_UIStatusBarVisualProvider_LegacyPhone *)self normalFont];
    [v4 setFont:v15];

    v16 = [v4 font];
    [v4 setSmallFont:v16];

    v11 = [(_UIStatusBarVisualProvider_LegacyPhone *)self timeFont];
  }

  else
  {
    [v4 setIconScale:1.07];
    v6 = [v4 traitCollection];
    [v6 displayScale];
    if (v7 <= 2.5)
    {
      v8 = 5;
    }

    else
    {
      v8 = 2;
    }

    [v4 setIconSize:v8];

    v9 = [(_UIStatusBarVisualProvider_LegacyPhone *)self expandedFont];
    [v4 setFont:v9];

    v10 = [v4 font];
    [v4 setSmallFont:v10];

    v11 = [(_UIStatusBarVisualProvider_LegacyPhone *)self expandedFont];
  }

  v17 = v11;
  [v4 setEmphasizedFont:v11];

LABEL_12:
  [v4 setImageNamePrefixes:&unk_1EFE2D6F0];

  return v4;
}

- (id)displayItemIdentifiersForPartWithIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:@"clockPartIdentifier"])
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = +[_UIStatusBarTimeItem timeDisplayIdentifier];
    v7 = [v5 setWithObject:v6];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _UIStatusBarVisualProvider_LegacyPhone;
    v7 = [(_UIStatusBarVisualProvider_iOS *)&v9 displayItemIdentifiersForPartWithIdentifier:v4];
  }

  return v7;
}

- (CGRect)clockBoundsForLayoutItem:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = +[_UIStatusBarTimeItem timeDisplayIdentifier];

  v7 = [v4 view];

  if (v5 == v6)
  {
    v16 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    v17 = [v16 currentAggregatedData];
    v18 = [v17 shortTimeEntry];
    v19 = [v18 stringValue];

    [v7 bounds];
    v13 = _UIComputedSizeForLabel(v7, v19, 0, 1uLL, 0, 0, 0, v20, v21);
    v15 = v22;
    v9 = 0.0;

    v11 = 0.0;
  }

  else
  {
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  v23 = v9;
  v24 = v11;
  v25 = v13;
  v26 = v15;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (void)orientationUpdatedFromOrientation:(int64_t)a3
{
  v5 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  v4 = [v5 currentAggregatedData];
  [(_UIStatusBarVisualProvider_LegacyPhone *)self _updateLowerRegionsWithData:v4];
}

- (void)_updateLowerRegionsWithData:(id)a3
{
  v4 = a3;
  v5 = [v4 secondaryCellularEntry];
  v6 = v5;
  if (v5)
  {
    if ([v5 isEnabled])
    {
      v7 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
      v8 = ([v7 orientation] - 1) < 2;
    }

    else
    {
      v8 = 0;
    }

    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v9 = [(_UIStatusBarVisualProvider_LegacyPhone *)self regionIdentifiersForPartWithIdentifier:0x1EFB9C430];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __70___UIStatusBarVisualProvider_LegacyPhone__updateLowerRegionsWithData___block_invoke;
    v11[3] = &unk_1E7120AE8;
    v12 = v8;
    v11[4] = self;
    v11[5] = &v13;
    [v9 enumerateObjectsUsingBlock:v11];

    [(_UIStatusBarVisualProvider_LegacyPhone *)self _updateBackgroundHeight];
    if (v8)
    {
      [(_UIStatusBarVisualProvider_LegacyPhone *)self dualLineExpandedBaselineOffset];
    }

    else
    {
      [(_UIStatusBarVisualProvider_LegacyPhone *)self expandedBaselineOffset];
    }

    [(NSLayoutConstraint *)self->_expandedLeadingBottomConstraint setConstant:?];
    if (*(v14 + 24) == 1)
    {
      v10 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
      [v10 updateWithAnimations:MEMORY[0x1E695E0F0]];
    }

    _Block_object_dispose(&v13, 8);
  }
}

- (void)_updateExpandedTrailingRegion
{
  if ([(_UIStatusBarVisualProvider_iOS *)self expanded])
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __71___UIStatusBarVisualProvider_LegacyPhone__updateExpandedTrailingRegion__block_invoke;
    v3[3] = &unk_1E70F3590;
    v3[4] = self;
    [UIApp _performBlockAfterCATransactionCommits:v3];
  }
}

- (void)updateDataForService:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarVisualProvider_LegacyPhone;
  v4 = a3;
  [(_UIStatusBarVisualProvider_iOS *)&v6 updateDataForService:v4];
  v5 = [v4 secondaryCellularEntry];

  if (v5)
  {
    -[_UIStatusBarDisplayItemPlacementGroup setEnabled:](self->_lowerWifiGroup, "setEnabled:", [v5 type] != 0);
  }
}

- (void)_updateBackgroundHeight
{
  [(_UIStatusBarVisualProvider_LegacyPhone *)self effectiveHeight];
  backgroundHeightConstraint = self->_backgroundHeightConstraint;

  [(NSLayoutConstraint *)backgroundHeightConstraint setConstant:?];
}

- (void)setExpanded:(BOOL)a3
{
  v3 = a3;
  if ([(_UIStatusBarVisualProvider_iOS *)self expanded]!= a3)
  {
    v5 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    v6 = [v5 currentAggregatedData];
    v7 = [v6 backgroundActivityEntry];
    v8 = [v7 isEnabled];

    if (v8)
    {
      if (v3)
      {
        v9 = 4;
      }

      else
      {
        v9 = 1;
      }

      v10 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
      v11 = [v10 regions];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __54___UIStatusBarVisualProvider_LegacyPhone_setExpanded___block_invoke;
      v13[3] = &__block_descriptor_40_e45_v32__0__NSString_8___UIStatusBarRegion_16_B24l;
      v13[4] = v9;
      [v11 enumerateKeysAndObjectsUsingBlock:v13];
    }

    v12.receiver = self;
    v12.super_class = _UIStatusBarVisualProvider_LegacyPhone;
    [(_UIStatusBarVisualProvider_iOS *)&v12 setExpanded:v3];
    [(_UIStatusBarVisualProvider_LegacyPhone *)self _updateBackgroundHeight];
  }
}

- (void)_updateLockScreenSizing
{
  v3 = [(_UIStatusBarVisualProvider_iOS *)self onLockScreen];
  if (v3)
  {
    [(_UIStatusBarVisualProvider_LegacyPhone *)self expandedBaselineOffset];
    v5 = v4;
    [(_UIStatusBarVisualProvider_iOS *)self expandedItemSpacing];
    v7 = v6;
    [(_UIStatusBarVisualProvider_LegacyPhone *)self expandedFont];
  }

  else
  {
    [(_UIStatusBarVisualProvider_LegacyPhone *)self baselineOffset];
    v5 = v8;
    [(_UIStatusBarVisualProvider_iOS *)self itemSpacing];
    v7 = v9;
    [(_UIStatusBarVisualProvider_LegacyPhone *)self normalFont];
  }
  v10 = ;
  [v10 capHeight];
  v12 = v11;

  v13 = v12 + 1.0;
  [(_UIStatusBarCellularItem *)self->_condensedCellularItem setMarqueeServiceName:v3];
  [(_UIStatusBarRegionAxisStackingLayout *)self->_leadingHorizontalLayout setInterspace:v7];
  [(_UIStatusBarRegionAxisCenteringLayout *)self->_centerHorizontalLayout setInterspace:v7];
  [(_UIStatusBarRegionAxisStackingLayout *)self->_trailingHorizontalLayout setInterspace:v7];
  [(NSLayoutConstraint *)self->_leadingTopConstraint setConstant:v5];
  [(NSLayoutConstraint *)self->_centerTopConstraint setConstant:v5];
  [(NSLayoutConstraint *)self->_trailingTopConstraint setConstant:v5];
  [(NSLayoutConstraint *)self->_leadingHeightConstraint setConstant:v13];
  [(NSLayoutConstraint *)self->_centerHeightConstraint setConstant:v13];
  trailingHeightConstraint = self->_trailingHeightConstraint;

  [(NSLayoutConstraint *)trailingHeightConstraint setConstant:v13];
}

- (void)setOnLockScreen:(BOOL)a3
{
  v3 = a3;
  if ([(_UIStatusBarVisualProvider_iOS *)self onLockScreen]!= a3)
  {
    v5.receiver = self;
    v5.super_class = _UIStatusBarVisualProvider_LegacyPhone;
    [(_UIStatusBarVisualProvider_iOS *)&v5 setOnLockScreen:v3];
    [(_UIStatusBarVisualProvider_LegacyPhone *)self _updateLockScreenSizing];
    [(_UIStatusBarVisualProvider_LegacyPhone *)self _updateBackgroundHeight];
  }
}

- (id)_backgroundActivityDetailRemovalAnimation
{
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x4010000000;
  v33[3] = "";
  v2 = *(MEMORY[0x1E695F050] + 16);
  v34 = *MEMORY[0x1E695F050];
  v35 = v2;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x4010000000;
  v30[3] = "";
  v31 = v34;
  v32 = v2;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x4010000000;
  v27[3] = "";
  v28 = v34;
  v29 = v2;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x4010000000;
  v24[3] = "";
  v25 = v34;
  v26 = v2;
  v3 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __83___UIStatusBarVisualProvider_LegacyPhone__backgroundActivityDetailRemovalAnimation__block_invoke;
  v23[3] = &unk_1E711CCD8;
  v23[4] = v33;
  v23[5] = v24;
  v12 = [_UIStatusBarAnimation animationWithBlock:v23];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __83___UIStatusBarVisualProvider_LegacyPhone__backgroundActivityDetailRemovalAnimation__block_invoke_4;
  v22[3] = &unk_1E7120B10;
  v22[5] = v5;
  v22[6] = v7;
  v22[7] = v9;
  v22[8] = v11;
  v22[4] = v33;
  [v12 setPrepareBlock:v22];
  [v12 setPriority:100];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __83___UIStatusBarVisualProvider_LegacyPhone__backgroundActivityDetailRemovalAnimation__block_invoke_5;
  v21[3] = &unk_1E711CCD8;
  v21[4] = v24;
  v21[5] = v33;
  v13 = [_UIStatusBarAnimation animationWithBlock:v21];
  [v13 setPriority:200];
  v14 = +[_UIStatusBarTimeItem timeDisplayIdentifier];
  [v12 addSubAnimation:v13 forDisplayItemWithIdentifier:v14];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __83___UIStatusBarVisualProvider_LegacyPhone__backgroundActivityDetailRemovalAnimation__block_invoke_9;
  v20[3] = &unk_1E711CCD8;
  v20[4] = v27;
  v20[5] = v30;
  v15 = [_UIStatusBarAnimation animationWithBlock:v20];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __83___UIStatusBarVisualProvider_LegacyPhone__backgroundActivityDetailRemovalAnimation__block_invoke_12;
  v19[3] = &unk_1E7120B38;
  v19[6] = v5;
  v19[7] = v7;
  v19[8] = v9;
  v19[9] = v11;
  v19[4] = v27;
  v19[5] = v30;
  [v15 setPrepareBlock:v19];
  [v15 setPriority:50];
  v16 = +[(_UIStatusBarItem *)_UIStatusBarFullBackgroundActivityItem];
  [v12 addSubAnimation:v15 forDisplayItemWithIdentifier:v16];

  v17 = +[(_UIStatusBarBackgroundActivityItem *)_UIStatusBarFullBackgroundActivityItem];
  [v12 addSubAnimation:v15 forDisplayItemWithIdentifier:v17];

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v33, 8);

  return v12;
}

@end