@interface _UIStatusBarVisualProvider_LegacyPhone
+ (CGSize)intrinsicLockScreenContentSizeForOrientation:(int64_t)orientation;
+ (double)_heightExpanded:(BOOL)expanded;
- (CGRect)clockBoundsForLayoutItem:(id)item;
- (CGSize)pillSize;
- (CGSize)smallPillSize;
- (NSDirectionalEdgeInsets)edgeInsets;
- (double)baselineOffset;
- (double)effectiveHeight;
- (id)_animationForSingleLineDualCarrier;
- (id)_backgroundActivityDetailRemovalAnimation;
- (id)additionAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation;
- (id)condensedFontForCellularType:(int64_t)type defaultFont:(id)font baselineOffset:(double *)offset;
- (id)displayItemIdentifiersForPartWithIdentifier:(id)identifier;
- (id)expandedFont;
- (id)normalFont;
- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)identifier;
- (id)overriddenStyleAttributesForDisplayItemWithIdentifier:(id)identifier;
- (id)pillFont;
- (id)regionIdentifiersForPartWithIdentifier:(id)identifier;
- (id)removalAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation;
- (id)setupInContainerView:(id)view;
- (id)stringForCellularType:(int64_t)type condensed:(BOOL)condensed;
- (id)styleAttributesForStyle:(int64_t)style;
- (id)timeFont;
- (id)willUpdateWithData:(id)data;
- (void)_updateBackgroundHeight;
- (void)_updateExpandedTrailingRegion;
- (void)_updateLockScreenSizing;
- (void)_updateLowerRegionsWithData:(id)data;
- (void)actionable:(id)actionable highlighted:(BOOL)highlighted initialPress:(BOOL)press;
- (void)itemCreated:(id)created;
- (void)orientationUpdatedFromOrientation:(int64_t)orientation;
- (void)setExpanded:(BOOL)expanded;
- (void)setOnLockScreen:(BOOL)screen;
- (void)updateDataForService:(id)service;
@end

@implementation _UIStatusBarVisualProvider_LegacyPhone

+ (double)_heightExpanded:(BOOL)expanded
{
  result = 20.0;
  if (expanded)
  {
    return 24.0;
  }

  return result;
}

+ (CGSize)intrinsicLockScreenContentSizeForOrientation:(int64_t)orientation
{
  [self _heightExpanded:1];
  v4 = v3;
  v5 = -1.0;
  result.height = v4;
  result.width = v5;
  return result;
}

- (double)effectiveHeight
{
  v3 = objc_opt_class();
  onLockScreen = [(_UIStatusBarVisualProvider_iOS *)self expanded]|| [(_UIStatusBarVisualProvider_iOS *)self onLockScreen];

  [v3 _heightExpanded:onLockScreen];
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
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen scale];
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

- (id)setupInContainerView:(id)view
{
  v4 = MEMORY[0x1E695DF70];
  viewCopy = view;
  array = [v4 array];
  array2 = [MEMORY[0x1E695DF70] array];
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
  normalFont = [(_UIStatusBarVisualProvider_LegacyPhone *)self normalFont];
  [normalFont capHeight];
  v22 = v21 + 1.0;

  expandedFont = [(_UIStatusBarVisualProvider_LegacyPhone *)self expandedFont];
  [expandedFont capHeight];
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
  layoutItem = [(_UIStatusBarRegion *)v26 layoutItem];
  bottomAnchor = [layoutItem bottomAnchor];
  topAnchor = [viewCopy topAnchor];
  v34 = [bottomAnchor constraintEqualToAnchor:topAnchor constant:v8];
  leadingTopConstraint = self->_leadingTopConstraint;
  self->_leadingTopConstraint = v34;

  [array addObject:self->_leadingTopConstraint];
  leadingAnchor = [layoutItem leadingAnchor];
  leadingAnchor2 = [viewCopy leadingAnchor];
  v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v11];
  [array addObject:v38];

  v184 = layoutItem;
  heightAnchor = [layoutItem heightAnchor];
  v40 = [heightAnchor constraintEqualToConstant:v22];
  leadingHeightConstraint = self->_leadingHeightConstraint;
  self->_leadingHeightConstraint = v40;

  [array addObject:self->_leadingHeightConstraint];
  [viewCopy _ui_addSubLayoutItem:layoutItem];

  [array2 addObject:v26];
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
  layoutItem2 = [(_UIStatusBarRegion *)v42 layoutItem];
  bottomAnchor2 = [layoutItem2 bottomAnchor];
  topAnchor2 = [viewCopy topAnchor];
  v50 = [bottomAnchor2 constraintEqualToAnchor:topAnchor2 constant:v8];
  trailingTopConstraint = self->_trailingTopConstraint;
  self->_trailingTopConstraint = v50;

  [array addObject:self->_trailingTopConstraint];
  trailingAnchor = [layoutItem2 trailingAnchor];
  trailingAnchor2 = [viewCopy trailingAnchor];
  v54 = -v13;
  v55 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v54];
  [array addObject:v55];

  v183 = layoutItem2;
  heightAnchor2 = [layoutItem2 heightAnchor];
  v57 = [heightAnchor2 constraintEqualToConstant:v22];
  trailingHeightConstraint = self->_trailingHeightConstraint;
  self->_trailingHeightConstraint = v57;

  [array addObject:self->_trailingHeightConstraint];
  [viewCopy _ui_addSubLayoutItem:layoutItem2];

  [array2 addObject:v42];
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
  layoutItem3 = [(_UIStatusBarRegion *)v59 layoutItem];
  centerXAnchor = [layoutItem3 centerXAnchor];
  centerXAnchor2 = [viewCopy centerXAnchor];
  v67 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [array addObject:v67];

  widthAnchor = [layoutItem3 widthAnchor];
  v69 = [widthAnchor constraintEqualToConstant:0.0];
  LODWORD(v70) = 1132068864;
  v71 = [v69 _ui_constraintWithPriority:v70];
  [array addObject:v71];

  bottomAnchor3 = [layoutItem3 bottomAnchor];
  topAnchor3 = [viewCopy topAnchor];
  v74 = [bottomAnchor3 constraintEqualToAnchor:topAnchor3 constant:v8];
  centerTopConstraint = self->_centerTopConstraint;
  self->_centerTopConstraint = v74;

  [array addObject:self->_centerTopConstraint];
  heightAnchor3 = [layoutItem3 heightAnchor];
  v77 = [heightAnchor3 constraintEqualToConstant:v22];
  centerHeightConstraint = self->_centerHeightConstraint;
  self->_centerHeightConstraint = v77;

  [array addObject:self->_centerHeightConstraint];
  leadingAnchor3 = [layoutItem3 leadingAnchor];
  trailingAnchor3 = [layoutItem trailingAnchor];
  v81 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor3 constant:v19];
  [array addObject:v81];

  leadingAnchor4 = [v183 leadingAnchor];
  trailingAnchor4 = [layoutItem3 trailingAnchor];
  v84 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor4 constant:v19];
  [array addObject:v84];

  [viewCopy _ui_addSubLayoutItem:layoutItem3];
  [array2 addObject:v59];

  v85 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"background"];
  v86 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v87 = +[_UIStatusBarRegionAxisFillingLayout fillingLayout];
  [(_UIStatusBarRegionAxesLayout *)v86 setHorizontalLayout:v87];

  v88 = +[_UIStatusBarRegionAxisFillingLayout fillingLayout];
  [(_UIStatusBarRegionAxesLayout *)v86 setVerticalLayout:v88];

  [(_UIStatusBarRegion *)v85 setLayout:v86];
  layoutItem4 = [(_UIStatusBarRegion *)v85 layoutItem];
  leadingAnchor5 = [layoutItem4 leadingAnchor];
  leadingAnchor6 = [viewCopy leadingAnchor];
  v92 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  [array addObject:v92];

  trailingAnchor5 = [layoutItem4 trailingAnchor];
  trailingAnchor6 = [viewCopy trailingAnchor];
  v95 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  [array addObject:v95];

  topAnchor4 = [layoutItem4 topAnchor];
  topAnchor5 = [viewCopy topAnchor];
  v98 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  [array addObject:v98];

  heightAnchor4 = [layoutItem4 heightAnchor];
  [objc_opt_class() height];
  v100 = [heightAnchor4 constraintEqualToConstant:?];
  backgroundHeightConstraint = self->_backgroundHeightConstraint;
  self->_backgroundHeightConstraint = v100;

  [array addObject:self->_backgroundHeightConstraint];
  [viewCopy _ui_addSubLayoutItem:layoutItem4];

  [array2 addObject:v85];
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
  layoutItem5 = [(_UIStatusBarRegion *)v104 layoutItem];
  bottomAnchor4 = [layoutItem5 bottomAnchor];
  topAnchor6 = [viewCopy topAnchor];
  v111 = [bottomAnchor4 constraintEqualToAnchor:topAnchor6 constant:v181];
  expandedLeadingBottomConstraint = self->_expandedLeadingBottomConstraint;
  self->_expandedLeadingBottomConstraint = v111;

  [(NSLayoutConstraint *)self->_expandedLeadingBottomConstraint setIdentifier:@"UISB-expanded-leading-bottom"];
  [array addObject:self->_expandedLeadingBottomConstraint];
  leadingAnchor7 = [layoutItem5 leadingAnchor];
  leadingAnchor8 = [viewCopy leadingAnchor];
  v115 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:v11];
  [array addObject:v115];

  heightAnchor5 = [layoutItem5 heightAnchor];
  v117 = [heightAnchor5 constraintEqualToConstant:v25];
  [array addObject:v117];

  [viewCopy _ui_addSubLayoutItem:layoutItem5];
  [array2 addObject:v104];

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
  layoutItem6 = [(_UIStatusBarRegion *)v118 layoutItem];
  bottomAnchor5 = [layoutItem6 bottomAnchor];
  topAnchor7 = [viewCopy topAnchor];
  v125 = [bottomAnchor5 constraintEqualToAnchor:topAnchor7 constant:v181];
  expandedTrailingBottomConstraint = self->_expandedTrailingBottomConstraint;
  self->_expandedTrailingBottomConstraint = v125;

  [(NSLayoutConstraint *)self->_expandedTrailingBottomConstraint setIdentifier:@"UISB-expanded-trailing-bottom"];
  [array addObject:self->_expandedTrailingBottomConstraint];
  trailingAnchor7 = [layoutItem6 trailingAnchor];
  trailingAnchor8 = [viewCopy trailingAnchor];
  v129 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:v54];
  [array addObject:v129];

  heightAnchor6 = [layoutItem6 heightAnchor];
  v131 = [heightAnchor6 constraintEqualToConstant:v25];
  [array addObject:v131];

  leadingAnchor9 = [layoutItem6 leadingAnchor];
  v182 = layoutItem5;
  trailingAnchor9 = [layoutItem5 trailingAnchor];
  v134 = [leadingAnchor9 constraintEqualToAnchor:trailingAnchor9 constant:v17];
  [array addObject:v134];

  widthAnchor2 = [layoutItem6 widthAnchor];
  widthAnchor3 = [layoutItem5 widthAnchor];
  v137 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];
  LODWORD(v138) = 1131741184;
  v139 = [v137 _ui_constraintWithPriority:v138];
  [array addObject:v139];

  v180 = layoutItem6;
  [viewCopy _ui_addSubLayoutItem:layoutItem6];

  [array2 addObject:v118];
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
  layoutItem7 = [(_UIStatusBarRegion *)v140 layoutItem];
  bottomAnchor6 = [layoutItem7 bottomAnchor];
  bottomAnchor7 = [v182 bottomAnchor];
  v147 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7 constant:v103];
  [array addObject:v147];

  leadingAnchor10 = [layoutItem7 leadingAnchor];
  leadingAnchor11 = [viewCopy leadingAnchor];
  v150 = [leadingAnchor10 constraintEqualToAnchor:leadingAnchor11 constant:v11];
  [array addObject:v150];

  heightAnchor7 = [layoutItem7 heightAnchor];
  v152 = [heightAnchor7 constraintEqualToConstant:v25];
  [array addObject:v152];

  [viewCopy _ui_addSubLayoutItem:layoutItem7];
  [array2 addObject:v140];

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
  layoutItem8 = [(_UIStatusBarRegion *)v153 layoutItem];
  bottomAnchor8 = [layoutItem8 bottomAnchor];
  bottomAnchor9 = [layoutItem6 bottomAnchor];
  v160 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9 constant:v103];
  [array addObject:v160];

  layoutItem9 = [(_UIStatusBarRegion *)v153 layoutItem];
  trailingAnchor10 = [layoutItem9 trailingAnchor];
  trailingAnchor11 = [viewCopy trailingAnchor];
  v164 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11 constant:v54];
  [array addObject:v164];

  layoutItem10 = [(_UIStatusBarRegion *)v153 layoutItem];
  heightAnchor8 = [layoutItem10 heightAnchor];
  v167 = [heightAnchor8 constraintEqualToConstant:v25];
  [array addObject:v167];

  layoutItem11 = [(_UIStatusBarRegion *)v153 layoutItem];
  leadingAnchor12 = [layoutItem11 leadingAnchor];
  trailingAnchor12 = [layoutItem7 trailingAnchor];
  v171 = [leadingAnchor12 constraintEqualToAnchor:trailingAnchor12 constant:v17];
  [array addObject:v171];

  layoutItem12 = [(_UIStatusBarRegion *)v153 layoutItem];
  widthAnchor4 = [layoutItem12 widthAnchor];
  widthAnchor5 = [layoutItem7 widthAnchor];
  v175 = [widthAnchor4 constraintEqualToAnchor:widthAnchor5];
  LODWORD(v176) = 1131741184;
  v177 = [v175 _ui_constraintWithPriority:v176];
  [array addObject:v177];

  layoutItem13 = [(_UIStatusBarRegion *)v153 layoutItem];
  [viewCopy _ui_addSubLayoutItem:layoutItem13];

  [array2 addObject:v153];
  [MEMORY[0x1E69977A0] activateConstraints:array];

  return array2;
}

- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)identifier
{
  v186[3] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  orderedDisplayItemPlacements = self->_orderedDisplayItemPlacements;
  if (!orderedDisplayItemPlacements)
  {
    v161 = identifierCopy;
    array = [MEMORY[0x1E695DF70] array];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    LOBYTE(v136) = 1;
    v9 = [_UIStatusBarDisplayItemPlacementNetworkGroup groupWithHighPriority:1300 lowPriority:1000 cellularItemClass:v7 wifiItemClass:v8 cellularTypeClass:objc_opt_class() includeCellularName:1 allowDualNetwork:v136];
    cellularGroup = [v9 cellularGroup];
    namePlacement = [cellularGroup namePlacement];

    cellularGroup2 = [v9 cellularGroup];
    dualNamePlacement = [cellularGroup2 dualNamePlacement];

    cellularGroup3 = [v9 cellularGroup];
    dualNameAndTypePlacement = [cellularGroup3 dualNameAndTypePlacement];

    v16 = +[(_UIStatusBarItem *)_UIStatusBarNavigationItem];
    v17 = +[_UIStatusBarDisplayItemPlacement placementWithIdentifier:priority:](_UIStatusBarDisplayItemPlacement, "placementWithIdentifier:priority:", v16, [v9 maximumPriority] + 1);
    v159 = dualNamePlacement;
    v160 = namePlacement;
    v186[0] = namePlacement;
    v186[1] = dualNamePlacement;
    v158 = dualNameAndTypePlacement;
    v186[2] = dualNameAndTypePlacement;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v186 count:3];
    v19 = [v17 excludingPlacements:v18];

    if ([(_UIStatusBarVisualProvider_iOS *)self hasCellularCapability])
    {
      v20 = array;
      [array addObject:v19];
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

      [array addObject:v25];
      v20 = array;
      if (v21)
      {
        [array addObject:v21];
        v22 = 0;
      }

      v19 = v25;
    }

    v157 = v19;
    selfCopy = self;
    array2 = [MEMORY[0x1E695DF70] array];
    cellularGroup4 = [v9 cellularGroup];
    placementsAffectedByAirplaneMode = [cellularGroup4 placementsAffectedByAirplaneMode];
    [array2 addObjectsFromArray:placementsAffectedByAirplaneMode];

    if ((v22 & 1) == 0)
    {
      [array2 addObject:v21];
    }

    v156 = v21;
    v29 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorAirplaneModeItem];
    v30 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v29 priority:1400];
    v155 = array2;
    v31 = [v30 excludingPlacements:array2];
    v169 = v20;
    [v20 addObject:v31];

    minimumPriority = [v9 minimumPriority];
    v33 = [_UIStatusBarDisplayItemPlacement spacerPlacementWithSize:minimumPriority - 5 priority:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    cellularGroup5 = [v9 cellularGroup];
    typePlacement = [cellularGroup5 typePlacement];
    v184[0] = typePlacement;
    cellularGroup6 = [v9 cellularGroup];
    [cellularGroup6 namePlacement];
    v37 = v9;
    v38 = v168 = v9;
    v184[1] = v38;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v184 count:2];
    v40 = [v33 requiringAllPlacements:v39];

    placements = [v37 placements];
    v143 = [placements arrayByAddingObject:v40];
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
    identifier = [v40 identifier];
    v183[7] = identifier;
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

    array3 = [MEMORY[0x1E695DF70] array];
    v52 = +[(_UIStatusBarItem *)_UIStatusBarLockItem];
    v167 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v52 priority:3000];

    v53 = +[_UIStatusBarLockItem textDisplayIdentifier];
    v54 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v53 priority:2999];
    cellularGroup7 = [v168 cellularGroup];
    dualNamePlacement2 = [cellularGroup7 dualNamePlacement];
    v182[0] = dualNamePlacement2;
    cellularGroup8 = [v168 cellularGroup];
    dualNameAndTypePlacement2 = [cellularGroup8 dualNameAndTypePlacement];
    v182[1] = dualNameAndTypePlacement2;
    v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v182 count:2];
    v60 = [v54 excludingPlacements:v59];

    v61 = +[_UIStatusBarTimeItem timeDisplayIdentifier];
    v62 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v61 priority:3002];
    v181[0] = v60;
    cellularGroup9 = [v168 cellularGroup];
    dualNamePlacement3 = [cellularGroup9 dualNamePlacement];
    v181[1] = dualNamePlacement3;
    cellularGroup10 = [v168 cellularGroup];
    dualNameAndTypePlacement3 = [cellularGroup10 dualNameAndTypePlacement];
    v181[2] = dualNameAndTypePlacement3;
    v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v181 count:3];
    v165 = [v62 excludingPlacements:v67];

    v68 = array3;
    [array3 addObject:v167];
    v153 = v60;
    [array3 addObject:v60];
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

      v68 = array3;
      pillRegionCoordinator = [(_UIStatusBarVisualProvider_Phone *)selfCopy pillRegionCoordinator];
      [pillRegionCoordinator setBackgroundActivityDetailPlacement:v79];

      [array3 addObject:v70];
      [array3 addObject:v74];
      [array3 addObject:v79];
    }

    [v68 addObject:v165];
    array4 = [MEMORY[0x1E695DF70] array];
    v82 = +[(_UIStatusBarItem *)_UIStatusBarSensorActivityItem];
    v83 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v82 priority:1960];
    [array4 addObject:v83];

    v84 = [_UIStatusBarIndicatorLocationItem groupWithPriority:1955];
    placements2 = [v84 placements];
    [array4 addObjectsFromArray:placements2];

    if ((_UIGetFullWidthBackgroundActivity() & 1) == 0)
    {
      v86 = +[_UIStatusBarPillBackgroundActivityItem pillCombinedDisplayIdentifier];
      v87 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v86 priority:1950];

      [array4 addObject:v87];
    }

    v88 = +[(_UIStatusBarItem *)_UIStatusBarVoiceControlPillItem];
    v89 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v88 priority:1940];
    [array4 addObject:v89];

    [(_UIStatusBarVisualProvider_iOS *)selfCopy bluetoothPaddingInset];
    v90 = [_UIStatusBarDisplayItemPlacementIndicatorsGroup groupWithHighPriority:800 lowPriority:500 bluetoothPaddingInset:?];
    v163 = +[_UIStatusBarDisplayItemPlacementBatteryGroup groupWithHighPriority:lowPriority:](_UIStatusBarDisplayItemPlacementBatteryGroup, "groupWithHighPriority:lowPriority:", [v90 maximumPriority] + 1, objc_msgSend(v90, "minimumPriority") - 5);
    placements3 = [v90 placements];
    +[_UIStatusBarBluetoothItem batteryDisplayIdentifier];
    v150 = v148 = v90;
    v177[0] = v150;
    bluetoothInsetPaddingItem = [v90 bluetoothInsetPaddingItem];
    identifier2 = [bluetoothInsetPaddingItem identifier];
    v177[1] = identifier2;
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
    v98 = _reorderedPlacementsFromGroupForLegacyLayout(placements3, 1, v97);
    [array4 addObjectsFromArray:v98];

    v99 = +[(_UIStatusBarItem *)_UIStatusBarBuildVersionItem];
    v100 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v99 priority:2];
    v101 = array4;
    [array4 addObject:v100];

    placements4 = [v163 placements];
    v103 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorLiquidDetectionItem];
    v176[0] = v103;
    v104 = +[_UIStatusBarBatteryItem staticIconDisplayIdentifier];
    v176[1] = v104;
    v105 = +[_UIStatusBarBatteryItem percentDisplayIdentifier];
    v176[2] = v105;
    v106 = [MEMORY[0x1E695DEC8] arrayWithObjects:v176 count:3];
    v107 = _reorderedPlacementsFromGroupForLegacyLayout(placements4, 1, v106);
    v151 = v101;
    [v101 addObjectsFromArray:v107];

    array5 = [MEMORY[0x1E695DF70] array];
    v109 = objc_opt_class();
    v110 = objc_opt_class();
    LOBYTE(v137) = 0;
    v111 = [_UIStatusBarDisplayItemPlacementNetworkGroup groupWithHighPriority:2500 lowPriority:2200 cellularItemClass:v109 wifiItemClass:v110 cellularTypeClass:objc_opt_class() includeCellularName:1 allowDualNetwork:v137];
    wifiGroup = [v111 wifiGroup];
    lowerWifiGroup = selfCopy->_lowerWifiGroup;
    selfCopy->_lowerWifiGroup = wifiGroup;

    v114 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorAirplaneModeItem];
    v115 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v114 priority:5000];
    expandedCellularPlacementsAffectedByAirplaneMode = [(_UIStatusBarVisualProvider_iOS *)selfCopy expandedCellularPlacementsAffectedByAirplaneMode];
    cellularGroup11 = [v111 cellularGroup];
    placementsAffectedByAirplaneMode2 = [cellularGroup11 placementsAffectedByAirplaneMode];
    v119 = [expandedCellularPlacementsAffectedByAirplaneMode arrayByAddingObjectsFromArray:placementsAffectedByAirplaneMode2];
    v120 = [v115 excludingPlacements:v119];
    [array5 addObject:v120];

    placements5 = [v111 placements];
    [array5 addObjectsFromArray:placements5];

    array6 = [MEMORY[0x1E695DF70] array];
    v123 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorLocationItem];
    v124 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v123 priority:1450];
    [array6 addObject:v124];

    [(_UIStatusBarVisualProvider_iOS *)selfCopy bluetoothPaddingInset];
    v125 = [_UIStatusBarDisplayItemPlacementIndicatorsGroup groupWithHighPriority:1400 lowPriority:1000 bluetoothPaddingInset:?];
    placements6 = [v125 placements];
    [array6 addObjectsFromArray:placements6];

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
    v174[2] = array3;
    v174[3] = v129;
    v173[4] = @"expandedLeading";
    expandedLeadingPlacements = [(_UIStatusBarVisualProvider_iOS *)selfCopy expandedLeadingPlacements];
    v174[4] = expandedLeadingPlacements;
    v174[5] = array5;
    v173[5] = @"expandedLowerLeading";
    v173[6] = @"expandedTrailing";
    expandedTrailingPlacements = [(_UIStatusBarVisualProvider_iOS *)selfCopy expandedTrailingPlacements];
    v173[7] = @"expandedLowerTrailing";
    v174[6] = expandedTrailingPlacements;
    v174[7] = array6;
    v132 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v174 forKeys:v173 count:8];
    v133 = selfCopy->_orderedDisplayItemPlacements;
    selfCopy->_orderedDisplayItemPlacements = v132;

    orderedDisplayItemPlacements = selfCopy->_orderedDisplayItemPlacements;
    identifierCopy = v161;
  }

  v134 = [(NSDictionary *)orderedDisplayItemPlacements objectForKeyedSubscript:identifierCopy];

  return v134;
}

- (void)itemCreated:(id)created
{
  createdCopy = created;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = createdCopy;
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
      objc_storeStrong(&self->_condensedCellularItem, created);
    }

    [v5 setTypeStringProvider:self];
  }

  else
  {
    identifier = [createdCopy identifier];
    v7 = +[(_UIStatusBarItem *)_UIStatusBarVoiceControlPillItem];

    if (identifier == v7)
    {
      v10 = createdCopy;
      [(_UIStatusBarVisualProvider_LegacyPhone *)self smallPillSize];
      [v10 setPillSize:?];
    }

    else
    {
      identifier2 = [createdCopy identifier];
      v9 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorLiquidDetectionItem];

      if (identifier2 == v9)
      {
        [createdCopy setUseFullColorIndicator:1];
      }
    }
  }
}

- (id)stringForCellularType:(int64_t)type condensed:(BOOL)condensed
{
  if (type == 2)
  {
    v5 = _UINSLocalizedStringWithDefaultValue(@"GPRS", @"GPRS");
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)condensedFontForCellularType:(int64_t)type defaultFont:(id)font baselineOffset:(double *)offset
{
  fontCopy = font;
  v7 = fontCopy;
  v8 = fontCopy;
  if (type <= 0xD)
  {
    if (((1 << type) & 0x38C0) != 0)
    {
      fontDescriptor = [fontCopy fontDescriptor];
      fontDescriptor2 = [fontDescriptor fontDescriptorWithSymbolicTraits:64];

      v11 = off_1E70ECC18;
      v12 = 0.0;
      v13 = fontDescriptor2;
LABEL_4:
      v8 = [v11 fontWithDescriptor:v13 size:v12];

      goto LABEL_5;
    }

    v8 = fontCopy;
    if (type == 2)
    {
      [fontCopy pointSize];
      v16 = v15 * 0.7;
      fontDescriptor2 = [v7 fontDescriptor];
      v11 = off_1E70ECC18;
      v13 = fontDescriptor2;
      v12 = v16;
      goto LABEL_4;
    }
  }

LABEL_5:

  return v8;
}

- (void)actionable:(id)actionable highlighted:(BOOL)highlighted initialPress:(BOOL)press
{
  pressCopy = press;
  highlightedCopy = highlighted;
  v23[1] = *MEMORY[0x1E69E9840];
  actionableCopy = actionable;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 0;
    goto LABEL_7;
  }

  v9 = actionableCopy;
  v10 = v9;
  if (!v9)
  {
LABEL_7:
    v20.receiver = self;
    v20.super_class = _UIStatusBarVisualProvider_LegacyPhone;
    [(_UIStatusBarVisualProvider_Phone *)&v20 actionable:actionableCopy highlighted:highlightedCopy initialPress:pressCopy];
    goto LABEL_8;
  }

  identifier = [v9 identifier];
  v12 = +[_UIStatusBarPillBackgroundActivityItem pillCombinedDisplayIdentifier];
  v13 = v12;
  if (identifier != v12)
  {
    identifier2 = [v10 identifier];
    v15 = +[(_UIStatusBarBackgroundActivityItem *)_UIStatusBarFullBackgroundActivityItem];

    if (identifier2 == v15)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

LABEL_10:
  highlightView = [v10 highlightView];
  if (!highlightView)
  {
    highlightView = objc_alloc_init(_UIStatusBarRoundedCornerView);
    [(UIView *)highlightView setAutoresizingMask:18];
    identifier3 = [v10 identifier];
    v18 = +[(_UIStatusBarBackgroundActivityItem *)_UIStatusBarFullBackgroundActivityItem];

    if (identifier3 == v18)
    {
      [(_UIStatusBarRoundedCornerView *)highlightView setCornerRadius:0.0];
    }

    [v10 setHighlightView:highlightView];
  }

  v23[0] = highlightView;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __78___UIStatusBarVisualProvider_LegacyPhone_actionable_highlighted_initialPress___block_invoke;
  v21[3] = &__block_descriptor_33_e16_v16__0__UIView_8l;
  v22 = highlightedCopy;
  [UIButton _setVisuallyHighlighted:highlightedCopy forViews:v19 initialPress:pressCopy highlightBlock:v21];

LABEL_8:
}

- (id)willUpdateWithData:(id)data
{
  v15.receiver = self;
  v15.super_class = _UIStatusBarVisualProvider_LegacyPhone;
  dataCopy = data;
  v5 = [(_UIStatusBarVisualProvider_Phone *)&v15 willUpdateWithData:dataCopy];
  backgroundActivityEntry = [dataCopy backgroundActivityEntry];

  if (backgroundActivityEntry)
  {
    statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    currentAggregatedData = [statusBar currentAggregatedData];
    backgroundActivityEntry2 = [currentAggregatedData backgroundActivityEntry];

    LODWORD(statusBar) = [backgroundActivityEntry isEnabled];
    if (statusBar != [backgroundActivityEntry2 isEnabled])
    {
      if ([backgroundActivityEntry isEnabled])
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

      statusBar2 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
      regions = [statusBar2 regions];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __61___UIStatusBarVisualProvider_LegacyPhone_willUpdateWithData___block_invoke;
      v14[3] = &__block_descriptor_40_e45_v32__0__NSString_8___UIStatusBarRegion_16_B24l;
      v14[4] = v10;
      [regions enumerateKeysAndObjectsUsingBlock:v14];
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

- (id)additionAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation
{
  identifierCopy = identifier;
  animationCopy = animation;
  v8 = +[_UIStatusBarFullBackgroundActivityItem detailDisplayIdentifier];

  if (v8 == identifierCopy)
  {
    v13 = +[_UIStatusBarAnimationFactory noAnimation];
    v14 = +[_UIStatusBarTimeItem timeDisplayIdentifier];
    [animationCopy addSubAnimation:v13 forDisplayItemWithIdentifier:v14];

    v15 = +[_UIStatusBarAnimationFactory noAnimation];
    v16 = +[(_UIStatusBarItem *)_UIStatusBarFullBackgroundActivityItem];
    [animationCopy addSubAnimation:v15 forDisplayItemWithIdentifier:v16];

    v17 = +[_UIStatusBarAnimationFactory noAnimation];
    v18 = +[(_UIStatusBarBackgroundActivityItem *)_UIStatusBarFullBackgroundActivityItem];
    [animationCopy addSubAnimation:v17 forDisplayItemWithIdentifier:v18];

    _animationForSingleLineDualCarrier = animationCopy;
  }

  else
  {
    v9 = +[_UIStatusBarCellularCondensedItem dualSingleLineNameDisplayIdentifier];
    v10 = v9;
    if (v9 == identifierCopy)
    {
    }

    else
    {
      v11 = +[_UIStatusBarCellularCondensedItem dualSingleLineNameAndTypeDisplayIdentifier];

      if (v11 != identifierCopy)
      {
        v21.receiver = self;
        v21.super_class = _UIStatusBarVisualProvider_LegacyPhone;
        _animationForSingleLineDualCarrier = [(_UIStatusBarVisualProvider_Phone *)&v21 additionAnimationForDisplayItemWithIdentifier:identifierCopy itemAnimation:animationCopy];
        goto LABEL_8;
      }
    }

    _animationForSingleLineDualCarrier = [(_UIStatusBarVisualProvider_LegacyPhone *)self _animationForSingleLineDualCarrier];
  }

LABEL_8:
  v19 = _animationForSingleLineDualCarrier;

  return v19;
}

- (id)removalAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation
{
  identifierCopy = identifier;
  animationCopy = animation;
  v8 = +[_UIStatusBarFullBackgroundActivityItem detailDisplayIdentifier];

  if (v8 == identifierCopy)
  {
    _backgroundActivityDetailRemovalAnimation = [(_UIStatusBarVisualProvider_LegacyPhone *)self _backgroundActivityDetailRemovalAnimation];
  }

  else
  {
    v9 = +[_UIStatusBarCellularCondensedItem dualSingleLineNameDisplayIdentifier];
    v10 = v9;
    if (v9 == identifierCopy)
    {
    }

    else
    {
      v11 = +[_UIStatusBarCellularCondensedItem dualSingleLineNameAndTypeDisplayIdentifier];

      if (v11 != identifierCopy)
      {
        v15.receiver = self;
        v15.super_class = _UIStatusBarVisualProvider_LegacyPhone;
        _backgroundActivityDetailRemovalAnimation = [(_UIStatusBarVisualProvider_Phone *)&v15 removalAnimationForDisplayItemWithIdentifier:identifierCopy itemAnimation:animationCopy];
        goto LABEL_8;
      }
    }

    _backgroundActivityDetailRemovalAnimation = [(_UIStatusBarVisualProvider_LegacyPhone *)self _animationForSingleLineDualCarrier];
  }

LABEL_8:
  v13 = _backgroundActivityDetailRemovalAnimation;

  return v13;
}

- (id)overriddenStyleAttributesForDisplayItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[(_UIStatusBarItem *)_UIStatusBarFullBackgroundActivityItem];
  v5 = v4;
  if (v4 == identifierCopy)
  {
  }

  else
  {
    v6 = +[(_UIStatusBarBackgroundActivityItem *)_UIStatusBarFullBackgroundActivityItem];

    if (v6 != identifierCopy)
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

- (id)regionIdentifiersForPartWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqual:@"leadingPartIdentifier"])
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

  if ([identifierCopy isEqual:@"trailingPartIdentifier"])
  {
    [MEMORY[0x1E695DFD8] setWithObjects:{@"trailing", @"expandedTrailing", @"expandedLowerTrailing", 0, v21}];
    goto LABEL_15;
  }

  if ([identifierCopy isEqual:@"centerPartIdentifier"])
  {
    [MEMORY[0x1E695DFD8] setWithObjects:{@"center", @"background", 0, v19, v21}];
    goto LABEL_15;
  }

  if ([identifierCopy isEqual:0x1EFB9C3D0])
  {
    v5 = MEMORY[0x1E695DFD8];
    v20 = @"trailing";
    v21 = 0;
    v6 = @"background";
    v7 = @"center";
    goto LABEL_3;
  }

  if ([identifierCopy isEqual:0x1EFB9C3F0])
  {
    goto LABEL_11;
  }

  if ([identifierCopy isEqual:0x1EFB9C410])
  {
LABEL_13:
    v8 = MEMORY[0x1E695DFD8];
    v17 = @"expandedTrailing";
    v18 = 0;
    goto LABEL_14;
  }

  if ([identifierCopy isEqual:0x1EFB9C430])
  {
    [MEMORY[0x1E695DFD8] setWithObjects:{@"expandedLowerLeading", @"expandedLowerTrailing", 0, v19, v21}];
    goto LABEL_15;
  }

  if ([identifierCopy isEqual:@"visibleExpandedPartIdentifier"])
  {
    statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    currentData = [statusBar currentData];
    secondaryCellularEntry = [currentData secondaryCellularEntry];
    if ([secondaryCellularEntry isEnabled])
    {
      statusBar2 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
      v16 = [statusBar2 orientation] - 1;

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

- (id)styleAttributesForStyle:(int64_t)style
{
  v19.receiver = self;
  v19.super_class = _UIStatusBarVisualProvider_LegacyPhone;
  v4 = [(_UIStatusBarVisualProvider_iOS *)&v19 styleAttributesForStyle:style];
  mode = [v4 mode];
  if ((mode - 1) >= 2)
  {
    if (mode)
    {
      goto LABEL_12;
    }

    [v4 setIconScale:1.0];
    traitCollection = [v4 traitCollection];
    [traitCollection displayScale];
    if (v13 <= 2.5)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    [v4 setIconSize:v14];

    normalFont = [(_UIStatusBarVisualProvider_LegacyPhone *)self normalFont];
    [v4 setFont:normalFont];

    font = [v4 font];
    [v4 setSmallFont:font];

    timeFont = [(_UIStatusBarVisualProvider_LegacyPhone *)self timeFont];
  }

  else
  {
    [v4 setIconScale:1.07];
    traitCollection2 = [v4 traitCollection];
    [traitCollection2 displayScale];
    if (v7 <= 2.5)
    {
      v8 = 5;
    }

    else
    {
      v8 = 2;
    }

    [v4 setIconSize:v8];

    expandedFont = [(_UIStatusBarVisualProvider_LegacyPhone *)self expandedFont];
    [v4 setFont:expandedFont];

    font2 = [v4 font];
    [v4 setSmallFont:font2];

    timeFont = [(_UIStatusBarVisualProvider_LegacyPhone *)self expandedFont];
  }

  v17 = timeFont;
  [v4 setEmphasizedFont:timeFont];

LABEL_12:
  [v4 setImageNamePrefixes:&unk_1EFE2D6F0];

  return v4;
}

- (id)displayItemIdentifiersForPartWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqual:@"clockPartIdentifier"])
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = +[_UIStatusBarTimeItem timeDisplayIdentifier];
    v7 = [v5 setWithObject:v6];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _UIStatusBarVisualProvider_LegacyPhone;
    v7 = [(_UIStatusBarVisualProvider_iOS *)&v9 displayItemIdentifiersForPartWithIdentifier:identifierCopy];
  }

  return v7;
}

- (CGRect)clockBoundsForLayoutItem:(id)item
{
  itemCopy = item;
  identifier = [itemCopy identifier];
  v6 = +[_UIStatusBarTimeItem timeDisplayIdentifier];

  view = [itemCopy view];

  if (identifier == v6)
  {
    statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    currentAggregatedData = [statusBar currentAggregatedData];
    shortTimeEntry = [currentAggregatedData shortTimeEntry];
    stringValue = [shortTimeEntry stringValue];

    [view bounds];
    v13 = _UIComputedSizeForLabel(view, stringValue, 0, 1uLL, 0, 0, 0, v20, v21);
    v15 = v22;
    v9 = 0.0;

    v11 = 0.0;
  }

  else
  {
    [view bounds];
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

- (void)orientationUpdatedFromOrientation:(int64_t)orientation
{
  statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  currentAggregatedData = [statusBar currentAggregatedData];
  [(_UIStatusBarVisualProvider_LegacyPhone *)self _updateLowerRegionsWithData:currentAggregatedData];
}

- (void)_updateLowerRegionsWithData:(id)data
{
  dataCopy = data;
  secondaryCellularEntry = [dataCopy secondaryCellularEntry];
  v6 = secondaryCellularEntry;
  if (secondaryCellularEntry)
  {
    if ([secondaryCellularEntry isEnabled])
    {
      statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
      v8 = ([statusBar orientation] - 1) < 2;
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
      statusBar2 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
      [statusBar2 updateWithAnimations:MEMORY[0x1E695E0F0]];
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

- (void)updateDataForService:(id)service
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarVisualProvider_LegacyPhone;
  serviceCopy = service;
  [(_UIStatusBarVisualProvider_iOS *)&v6 updateDataForService:serviceCopy];
  secondaryCellularEntry = [serviceCopy secondaryCellularEntry];

  if (secondaryCellularEntry)
  {
    -[_UIStatusBarDisplayItemPlacementGroup setEnabled:](self->_lowerWifiGroup, "setEnabled:", [secondaryCellularEntry type] != 0);
  }
}

- (void)_updateBackgroundHeight
{
  [(_UIStatusBarVisualProvider_LegacyPhone *)self effectiveHeight];
  backgroundHeightConstraint = self->_backgroundHeightConstraint;

  [(NSLayoutConstraint *)backgroundHeightConstraint setConstant:?];
}

- (void)setExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  if ([(_UIStatusBarVisualProvider_iOS *)self expanded]!= expanded)
  {
    statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    currentAggregatedData = [statusBar currentAggregatedData];
    backgroundActivityEntry = [currentAggregatedData backgroundActivityEntry];
    isEnabled = [backgroundActivityEntry isEnabled];

    if (isEnabled)
    {
      if (expandedCopy)
      {
        v9 = 4;
      }

      else
      {
        v9 = 1;
      }

      statusBar2 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
      regions = [statusBar2 regions];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __54___UIStatusBarVisualProvider_LegacyPhone_setExpanded___block_invoke;
      v13[3] = &__block_descriptor_40_e45_v32__0__NSString_8___UIStatusBarRegion_16_B24l;
      v13[4] = v9;
      [regions enumerateKeysAndObjectsUsingBlock:v13];
    }

    v12.receiver = self;
    v12.super_class = _UIStatusBarVisualProvider_LegacyPhone;
    [(_UIStatusBarVisualProvider_iOS *)&v12 setExpanded:expandedCopy];
    [(_UIStatusBarVisualProvider_LegacyPhone *)self _updateBackgroundHeight];
  }
}

- (void)_updateLockScreenSizing
{
  onLockScreen = [(_UIStatusBarVisualProvider_iOS *)self onLockScreen];
  if (onLockScreen)
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
  [(_UIStatusBarCellularItem *)self->_condensedCellularItem setMarqueeServiceName:onLockScreen];
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

- (void)setOnLockScreen:(BOOL)screen
{
  screenCopy = screen;
  if ([(_UIStatusBarVisualProvider_iOS *)self onLockScreen]!= screen)
  {
    v5.receiver = self;
    v5.super_class = _UIStatusBarVisualProvider_LegacyPhone;
    [(_UIStatusBarVisualProvider_iOS *)&v5 setOnLockScreen:screenCopy];
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
  statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  [statusBar bounds];
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