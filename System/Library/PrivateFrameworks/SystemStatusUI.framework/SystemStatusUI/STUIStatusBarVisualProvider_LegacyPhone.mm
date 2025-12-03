@interface STUIStatusBarVisualProvider_LegacyPhone
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
- (id)regionIdentifiersForBackgroundLumaView:(id)view;
- (id)regionIdentifiersForPartWithIdentifier:(id)identifier;
- (id)removalAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation;
- (id)setupInContainerView:(id)view;
- (id)stringForCellularType:(int64_t)type condensed:(BOOL)condensed;
- (id)styleAttributesForStyle:(int64_t)style;
- (id)timeFont;
- (id)willUpdateWithData:(id)data;
- (void)_updateBackgroundHeight;
- (void)_updateExpandedConstraintsForAvoidanceFrame:(CGRect)frame;
- (void)_updateExpandedTrailingRegion;
- (void)_updateLockScreenSizing;
- (void)_updateLowerRegionsWithData:(id)data;
- (void)actionable:(id)actionable highlighted:(BOOL)highlighted initialPress:(BOOL)press;
- (void)avoidanceFrameUpdatedFromFrame:(CGRect)frame withAnimationSettings:(id)settings options:(unint64_t)options;
- (void)itemCreated:(id)created;
- (void)orientationUpdatedFromOrientation:(int64_t)orientation;
- (void)setExpanded:(BOOL)expanded;
- (void)setOnLockScreen:(BOOL)screen;
- (void)updateDataForService:(id)service;
@end

@implementation STUIStatusBarVisualProvider_LegacyPhone

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
  v3 = *MEMORY[0x277D77260];
  [self _heightExpanded:1];
  v5 = v4;
  v6 = v3;
  result.height = v5;
  result.width = v6;
  return result;
}

- (double)effectiveHeight
{
  v3 = objc_opt_class();
  onLockScreen = [(STUIStatusBarVisualProvider_iOS *)self expanded]|| [(STUIStatusBarVisualProvider_iOS *)self onLockScreen];

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
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  UIRoundToScale();
  v4 = v3;

  return v4;
}

- (id)normalFont
{
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v3 = qword_2804A47A0;
  if (qword_2804A47A0)
  {
    v4 = _MergedGlobals_9 == IsBoldTextEnabled;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    _MergedGlobals_9 = IsBoldTextEnabled;
    v5 = [MEMORY[0x277D74300] systemFontOfSize:12.0 weight:*MEMORY[0x277D74418]];
    v6 = qword_2804A47A0;
    qword_2804A47A0 = v5;

    v3 = qword_2804A47A0;
  }

  return v3;
}

- (id)timeFont
{
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v3 = *algn_2804A47A8;
  if (*algn_2804A47A8)
  {
    v4 = byte_2804A4799 == IsBoldTextEnabled;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    byte_2804A4799 = IsBoldTextEnabled;
    v5 = [MEMORY[0x277D74300] systemFontOfSize:12.0 weight:*MEMORY[0x277D74420]];
    v6 = *algn_2804A47A8;
    *algn_2804A47A8 = v5;

    v3 = *algn_2804A47A8;
  }

  return v3;
}

- (id)expandedFont
{
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v3 = *&algn_2804A47A8[8];
  if (*&algn_2804A47A8[8])
  {
    v4 = byte_2804A479A == IsBoldTextEnabled;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    byte_2804A479A = IsBoldTextEnabled;
    v5 = [MEMORY[0x277D74300] systemFontOfSize:14.0 weight:*MEMORY[0x277D74418]];
    v6 = *&algn_2804A47A8[8];
    *&algn_2804A47A8[8] = v5;

    v3 = *&algn_2804A47A8[8];
  }

  return v3;
}

- (id)pillFont
{
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v3 = *&algn_2804A47A8[16];
  if (*&algn_2804A47A8[16])
  {
    v4 = byte_2804A479B == IsBoldTextEnabled;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    byte_2804A479B = IsBoldTextEnabled;
    v5 = [MEMORY[0x277D74300] systemFontOfSize:12.0 weight:*MEMORY[0x277D74420]];
    v6 = *&algn_2804A47A8[16];
    *&algn_2804A47A8[16] = v5;

    v3 = *&algn_2804A47A8[16];
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
  v214[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB18];
  viewCopy = view;
  array = [v4 array];
  array2 = [MEMORY[0x277CBEB18] array];
  [(STUIStatusBarVisualProvider_LegacyPhone *)self baselineOffset];
  v8 = v7;
  [(STUIStatusBarVisualProvider_LegacyPhone *)self expandedBaselineOffset];
  v204 = v9;
  [(STUIStatusBarVisualProvider_LegacyPhone *)self edgeInsets];
  v11 = v10;
  v13 = v12;
  [(STUIStatusBarVisualProvider_iOS *)self itemSpacing];
  v15 = v14;
  [(STUIStatusBarVisualProvider_iOS *)self expandedItemSpacing];
  v17 = v16;
  [(STUIStatusBarVisualProvider_LegacyPhone *)self regionSpacing];
  v19 = v18;
  normalFont = [(STUIStatusBarVisualProvider_LegacyPhone *)self normalFont];
  [normalFont capHeight];
  v22 = v21 + 1.0;

  expandedFont = [(STUIStatusBarVisualProvider_LegacyPhone *)self expandedFont];
  [expandedFont capHeight];
  v25 = v24 + 1.0;

  [(STUIStatusBarVisualProvider_LegacyPhone *)self pillSize];
  v207 = v26;
  v27 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"leading"];
  v28 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v29 = objc_alloc_init(STUIStatusBarRegionAxisStackingLayout);
  [(STUIStatusBarRegionAxisStackingLayout *)v29 setAlignment:3];
  [(STUIStatusBarRegionAxisStackingLayout *)v29 setInterspace:v15];
  leadingHorizontalLayout = self->_leadingHorizontalLayout;
  self->_leadingHorizontalLayout = v29;

  [(STUIStatusBarRegionAxesLayout *)v28 setHorizontalLayout:self->_leadingHorizontalLayout];
  v31 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:6];
  [(STUIStatusBarRegionAxesLayout *)v28 setVerticalLayout:v31];

  [(STUIStatusBarRegion *)v27 setLayout:v28];
  [(STUIStatusBarRegion *)v27 setActionInsets:-20.0, -20.0, -20.0, -20.0];
  layoutItem = [(STUIStatusBarRegion *)v27 layoutItem];
  bottomAnchor = [layoutItem bottomAnchor];
  v34 = viewCopy;
  topAnchor = [viewCopy topAnchor];
  v36 = [bottomAnchor constraintEqualToAnchor:topAnchor constant:v8];
  leadingTopConstraint = self->_leadingTopConstraint;
  self->_leadingTopConstraint = v36;

  v38 = array;
  [array addObject:self->_leadingTopConstraint];
  leadingAnchor = [layoutItem leadingAnchor];
  leadingAnchor2 = [v34 leadingAnchor];
  v41 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v11];
  [v38 addObject:v41];

  v212 = layoutItem;
  heightAnchor = [layoutItem heightAnchor];
  v43 = [heightAnchor constraintEqualToConstant:v22];
  leadingHeightConstraint = self->_leadingHeightConstraint;
  self->_leadingHeightConstraint = v43;

  [v38 addObject:self->_leadingHeightConstraint];
  [v34 _ui_addSubLayoutItem:layoutItem];

  [array2 addObject:v27];
  v45 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"trailing"];
  v46 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v47 = objc_alloc_init(STUIStatusBarRegionAxisStackingLayout);
  [(STUIStatusBarRegionAxisStackingLayout *)v47 setAlignment:4];
  [(STUIStatusBarRegionAxisStackingLayout *)v47 setInterspace:v15];
  trailingHorizontalLayout = self->_trailingHorizontalLayout;
  self->_trailingHorizontalLayout = v47;

  [(STUIStatusBarRegionAxesLayout *)v46 setHorizontalLayout:self->_trailingHorizontalLayout];
  v49 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:6];
  [(STUIStatusBarRegionAxesLayout *)v46 setVerticalLayout:v49];

  [(STUIStatusBarRegion *)v45 setLayout:v46];
  [(STUIStatusBarRegion *)v45 setActionInsets:-20.0, -20.0, -20.0, -20.0];
  layoutItem2 = [(STUIStatusBarRegion *)v45 layoutItem];
  bottomAnchor2 = [layoutItem2 bottomAnchor];
  topAnchor2 = [v34 topAnchor];
  v53 = [bottomAnchor2 constraintEqualToAnchor:topAnchor2 constant:v8];
  trailingTopConstraint = self->_trailingTopConstraint;
  self->_trailingTopConstraint = v53;

  [v38 addObject:self->_trailingTopConstraint];
  trailingAnchor = [layoutItem2 trailingAnchor];
  trailingAnchor2 = [v34 trailingAnchor];
  v57 = -v13;
  v58 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v57];
  v203 = v38;
  [v38 addObject:v58];

  v211 = layoutItem2;
  heightAnchor2 = [layoutItem2 heightAnchor];
  v60 = [heightAnchor2 constraintEqualToConstant:v22];
  trailingHeightConstraint = self->_trailingHeightConstraint;
  self->_trailingHeightConstraint = v60;

  [v38 addObject:self->_trailingHeightConstraint];
  [v34 _ui_addSubLayoutItem:layoutItem2];

  [array2 addObject:v45];
  v62 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"center"];
  v63 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v64 = objc_alloc_init(STUIStatusBarRegionAxisCenteringLayout);
  [(STUIStatusBarRegionAxisCenteringLayout *)v64 setInterspace:v15];
  centerHorizontalLayout = self->_centerHorizontalLayout;
  self->_centerHorizontalLayout = v64;

  [(STUIStatusBarRegionAxesLayout *)v63 setHorizontalLayout:self->_centerHorizontalLayout];
  v66 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:6];
  [(STUIStatusBarRegionAxesLayout *)v63 setVerticalLayout:v66];

  v209 = v62;
  [(STUIStatusBarRegion *)v62 setLayout:v63];
  layoutItem3 = [(STUIStatusBarRegion *)v62 layoutItem];
  centerXAnchor = [layoutItem3 centerXAnchor];
  centerXAnchor2 = [v34 centerXAnchor];
  v70 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v38 addObject:v70];

  widthAnchor = [layoutItem3 widthAnchor];
  v72 = [widthAnchor constraintEqualToConstant:0.0];
  LODWORD(v73) = 1132068864;
  v74 = [v72 _ui_constraintWithPriority:v73];
  [v38 addObject:v74];

  bottomAnchor3 = [layoutItem3 bottomAnchor];
  topAnchor3 = [v34 topAnchor];
  v77 = [bottomAnchor3 constraintEqualToAnchor:topAnchor3 constant:v8];
  centerTopConstraint = self->_centerTopConstraint;
  self->_centerTopConstraint = v77;

  [v38 addObject:self->_centerTopConstraint];
  heightAnchor3 = [layoutItem3 heightAnchor];
  v80 = [heightAnchor3 constraintEqualToConstant:v22];
  centerHeightConstraint = self->_centerHeightConstraint;
  self->_centerHeightConstraint = v80;

  [v38 addObject:self->_centerHeightConstraint];
  leadingAnchor3 = [layoutItem3 leadingAnchor];
  trailingAnchor3 = [v212 trailingAnchor];
  v84 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor3 constant:v19];
  [v38 addObject:v84];

  leadingAnchor4 = [v211 leadingAnchor];
  v206 = layoutItem3;
  trailingAnchor4 = [layoutItem3 trailingAnchor];
  v87 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor4 constant:v19];
  [v38 addObject:v87];

  [v34 _ui_addSubLayoutItem:layoutItem3];
  [array2 addObject:v209];

  v88 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"background"];
  v89 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v90 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  [(STUIStatusBarRegionAxesLayout *)v89 setHorizontalLayout:v90];

  v91 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  [(STUIStatusBarRegionAxesLayout *)v89 setVerticalLayout:v91];

  [(STUIStatusBarRegion *)v88 setLayout:v89];
  layoutItem4 = [(STUIStatusBarRegion *)v88 layoutItem];
  leadingAnchor5 = [layoutItem4 leadingAnchor];
  leadingAnchor6 = [v34 leadingAnchor];
  v95 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  [v203 addObject:v95];

  trailingAnchor5 = [layoutItem4 trailingAnchor];
  trailingAnchor6 = [v34 trailingAnchor];
  v98 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  [v203 addObject:v98];

  topAnchor4 = [layoutItem4 topAnchor];
  topAnchor5 = [v34 topAnchor];
  v101 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  [v203 addObject:v101];

  heightAnchor4 = [layoutItem4 heightAnchor];
  [objc_opt_class() height];
  v103 = [heightAnchor4 constraintEqualToConstant:?];
  backgroundHeightConstraint = self->_backgroundHeightConstraint;
  self->_backgroundHeightConstraint = v103;

  [v203 addObject:self->_backgroundHeightConstraint];
  [v34 _ui_addSubLayoutItem:layoutItem4];

  [array2 addObject:v88];
  [(STUIStatusBarVisualProvider_LegacyPhone *)self lowerExpandedBaselineOffset];
  v106 = v105;
  v107 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"expandedLeading"];
  v108 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v109 = objc_alloc_init(STUIStatusBarRegionAxisStackingLayout);
  [(STUIStatusBarRegionAxisStackingLayout *)v109 setAlignment:3];
  [(STUIStatusBarRegionAxisStackingLayout *)v109 setInterspace:v17];
  [(STUIStatusBarRegionAxesLayout *)v108 setHorizontalLayout:v109];

  v110 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:6];
  [(STUIStatusBarRegionAxesLayout *)v108 setVerticalLayout:v110];

  [(STUIStatusBarRegion *)v107 setLayout:v108];
  [(STUIStatusBarRegion *)v107 setActionInsets:-20.0, -20.0, -20.0, -20.0];
  [(STUIStatusBarRegion *)v107 disableWithToken:10];
  layoutItem5 = [(STUIStatusBarRegion *)v107 layoutItem];
  trailingAnchor7 = [layoutItem5 trailingAnchor];
  centerXAnchor3 = [v34 centerXAnchor];
  v114 = [trailingAnchor7 constraintEqualToAnchor:centerXAnchor3 constant:0.0];
  expandedLeadingBannerConstraint = self->_expandedLeadingBannerConstraint;
  self->_expandedLeadingBannerConstraint = v114;

  bottomAnchor4 = [layoutItem5 bottomAnchor];
  topAnchor6 = [v34 topAnchor];
  v118 = [bottomAnchor4 constraintEqualToAnchor:topAnchor6 constant:v204];
  expandedLeadingBottomConstraint = self->_expandedLeadingBottomConstraint;
  self->_expandedLeadingBottomConstraint = v118;

  [(NSLayoutConstraint *)self->_expandedLeadingBottomConstraint setIdentifier:@"UISB-expanded-leading-bottom"];
  [v203 addObject:self->_expandedLeadingBottomConstraint];
  leadingAnchor7 = [layoutItem5 leadingAnchor];
  leadingAnchor8 = [v34 leadingAnchor];
  v122 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:v11];
  [v203 addObject:v122];

  heightAnchor5 = [layoutItem5 heightAnchor];
  v124 = [heightAnchor5 constraintEqualToConstant:v25];
  [v203 addObject:v124];

  v208 = layoutItem5;
  [v34 _ui_addSubLayoutItem:layoutItem5];

  [array2 addObject:v107];
  v125 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"expandedTrailing"];
  v126 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v127 = objc_alloc_init(STUIStatusBarRegionAxisStackingLayout);
  [(STUIStatusBarRegionAxisStackingLayout *)v127 setAlignment:4];
  [(STUIStatusBarRegionAxisStackingLayout *)v127 setInterspace:v17];
  [(STUIStatusBarRegionAxesLayout *)v126 setHorizontalLayout:v127];

  v128 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:6];
  [(STUIStatusBarRegionAxesLayout *)v126 setVerticalLayout:v128];

  [(STUIStatusBarRegion *)v125 setLayout:v126];
  [(STUIStatusBarRegion *)v125 setActionInsets:-20.0, -20.0, -20.0, -20.0];
  [(STUIStatusBarRegion *)v125 disableWithToken:10];
  layoutItem6 = [(STUIStatusBarRegion *)v125 layoutItem];
  leadingAnchor9 = [layoutItem6 leadingAnchor];
  trailingAnchor8 = [layoutItem5 trailingAnchor];
  v132 = [leadingAnchor9 constraintEqualToAnchor:trailingAnchor8 constant:v17];
  expandedTopMiddleConstraint = self->_expandedTopMiddleConstraint;
  self->_expandedTopMiddleConstraint = v132;

  leadingAnchor10 = [layoutItem6 leadingAnchor];
  centerXAnchor4 = [v34 centerXAnchor];
  v136 = [leadingAnchor10 constraintEqualToAnchor:centerXAnchor4 constant:0.0];
  expandedTrailingBannerConstraint = self->_expandedTrailingBannerConstraint;
  self->_expandedTrailingBannerConstraint = v136;

  bottomAnchor5 = [layoutItem6 bottomAnchor];
  topAnchor7 = [v34 topAnchor];
  v140 = [bottomAnchor5 constraintEqualToAnchor:topAnchor7 constant:v204];
  expandedTrailingBottomConstraint = self->_expandedTrailingBottomConstraint;
  self->_expandedTrailingBottomConstraint = v140;

  [(NSLayoutConstraint *)self->_expandedTrailingBottomConstraint setIdentifier:@"UISB-expanded-trailing-bottom"];
  [v203 addObject:self->_expandedTrailingBottomConstraint];
  trailingAnchor9 = [layoutItem6 trailingAnchor];
  trailingAnchor10 = [v34 trailingAnchor];
  v144 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10 constant:v57];
  [v203 addObject:v144];

  v145 = layoutItem6;
  heightAnchor6 = [layoutItem6 heightAnchor];
  v147 = [heightAnchor6 constraintEqualToConstant:v25];
  [v203 addObject:v147];

  [v203 addObject:self->_expandedTopMiddleConstraint];
  v210 = layoutItem6;
  widthAnchor2 = [layoutItem6 widthAnchor];
  v149 = layoutItem5;
  widthAnchor3 = [layoutItem5 widthAnchor];
  v151 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];
  LODWORD(v152) = 1131741184;
  v153 = [v151 _ui_constraintWithPriority:v152];
  [v203 addObject:v153];

  [v34 _ui_addSubLayoutItem:v145];
  [array2 addObject:v125];

  v154 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"expandedLowerLeading"];
  v155 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v156 = objc_alloc_init(STUIStatusBarRegionAxisStackingLayout);
  [(STUIStatusBarRegionAxisStackingLayout *)v156 setAlignment:3];
  [(STUIStatusBarRegionAxisStackingLayout *)v156 setInterspace:v17];
  [(STUIStatusBarRegionAxesLayout *)v155 setHorizontalLayout:v156];

  v157 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:6];
  [(STUIStatusBarRegionAxesLayout *)v155 setVerticalLayout:v157];

  [(STUIStatusBarRegion *)v154 setLayout:v155];
  [(STUIStatusBarRegion *)v154 disableWithToken:10];
  layoutItem7 = [(STUIStatusBarRegion *)v154 layoutItem];
  bottomAnchor6 = [layoutItem7 bottomAnchor];
  bottomAnchor7 = [v149 bottomAnchor];
  v161 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7 constant:v106];
  [v203 addObject:v161];

  leadingAnchor11 = [layoutItem7 leadingAnchor];
  leadingAnchor12 = [v34 leadingAnchor];
  v164 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12 constant:v11];
  [v203 addObject:v164];

  heightAnchor7 = [layoutItem7 heightAnchor];
  v166 = [heightAnchor7 constraintEqualToConstant:v25];
  [v203 addObject:v166];

  [v34 _ui_addSubLayoutItem:layoutItem7];
  [array2 addObject:v154];

  v167 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"expandedLowerTrailing"];
  v168 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v169 = objc_alloc_init(STUIStatusBarRegionAxisStackingLayout);
  [(STUIStatusBarRegionAxisStackingLayout *)v169 setAlignment:4];
  [(STUIStatusBarRegionAxisStackingLayout *)v169 setInterspace:v17];
  [(STUIStatusBarRegionAxesLayout *)v168 setHorizontalLayout:v169];

  v170 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:6];
  [(STUIStatusBarRegionAxesLayout *)v168 setVerticalLayout:v170];

  [(STUIStatusBarRegion *)v167 setLayout:v168];
  [(STUIStatusBarRegion *)v167 disableWithToken:10];
  layoutItem8 = [(STUIStatusBarRegion *)v167 layoutItem];
  bottomAnchor8 = [layoutItem8 bottomAnchor];
  bottomAnchor9 = [v210 bottomAnchor];
  v174 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9 constant:v106];
  [v203 addObject:v174];

  layoutItem9 = [(STUIStatusBarRegion *)v167 layoutItem];
  trailingAnchor11 = [layoutItem9 trailingAnchor];
  trailingAnchor12 = [v34 trailingAnchor];
  v178 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12 constant:v57];
  [v203 addObject:v178];

  layoutItem10 = [(STUIStatusBarRegion *)v167 layoutItem];
  heightAnchor8 = [layoutItem10 heightAnchor];
  v181 = [heightAnchor8 constraintEqualToConstant:v25];
  [v203 addObject:v181];

  layoutItem11 = [(STUIStatusBarRegion *)v167 layoutItem];
  leadingAnchor13 = [layoutItem11 leadingAnchor];
  v205 = layoutItem7;
  trailingAnchor13 = [layoutItem7 trailingAnchor];
  v185 = [leadingAnchor13 constraintEqualToAnchor:trailingAnchor13 constant:v17];
  [v203 addObject:v185];

  layoutItem12 = [(STUIStatusBarRegion *)v167 layoutItem];
  widthAnchor4 = [layoutItem12 widthAnchor];
  widthAnchor5 = [layoutItem7 widthAnchor];
  v189 = [widthAnchor4 constraintEqualToAnchor:widthAnchor5];
  LODWORD(v190) = 1131741184;
  v191 = [v189 _ui_constraintWithPriority:v190];
  [v203 addObject:v191];

  layoutItem13 = [(STUIStatusBarRegion *)v167 layoutItem];
  [v34 _ui_addSubLayoutItem:layoutItem13];

  [array2 addObject:v167];
  v193 = STUIStatusBarAddLumaView(v34, v203, v212, 1, v207);
  [(STUIStatusBarVisualProvider_LegacyPhone *)self setLeadingBackgroundLumaView:v193];

  v194 = STUIStatusBarAddLumaView(v34, v203, v206, 0, v207);
  [(STUIStatusBarVisualProvider_LegacyPhone *)self setCenterBackgroundLumaView:v194];

  v195 = STUIStatusBarAddLumaView(v34, v203, v211, 2, v207);

  [(STUIStatusBarVisualProvider_LegacyPhone *)self setTrailingBackgroundLumaView:v195];
  v196 = objc_alloc(MEMORY[0x277D760C8]);
  leadingBackgroundLumaView = [(STUIStatusBarVisualProvider_LegacyPhone *)self leadingBackgroundLumaView];
  v214[0] = leadingBackgroundLumaView;
  centerBackgroundLumaView = [(STUIStatusBarVisualProvider_LegacyPhone *)self centerBackgroundLumaView];
  v214[1] = centerBackgroundLumaView;
  trailingBackgroundLumaView = [(STUIStatusBarVisualProvider_LegacyPhone *)self trailingBackgroundLumaView];
  v214[2] = trailingBackgroundLumaView;
  v200 = [MEMORY[0x277CBEA60] arrayWithObjects:v214 count:3];
  v201 = [v196 initWithTransitionBoundaries:self minimumDifference:v200 delegate:0.4 views:{0.7, 0.5}];
  [(STUIStatusBarVisualProvider_iOS *)self setLumaTrackingGroup:v201];

  [MEMORY[0x277CCAAD0] activateConstraints:v203];

  return array2;
}

- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)identifier
{
  v192[3] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  orderedDisplayItemPlacements = self->_orderedDisplayItemPlacements;
  if (!orderedDisplayItemPlacements)
  {
    v167 = identifierCopy;
    array = [MEMORY[0x277CBEB18] array];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    LOBYTE(v142) = 1;
    v9 = [STUIStatusBarDisplayItemPlacementNetworkGroup groupWithHighPriority:1300 lowPriority:1000 cellularItemClass:v7 wifiItemClass:v8 cellularTypeClass:objc_opt_class() includeCellularName:1 allowDualNetwork:v142];
    cellularGroup = [v9 cellularGroup];
    namePlacement = [cellularGroup namePlacement];

    cellularGroup2 = [v9 cellularGroup];
    dualNamePlacement = [cellularGroup2 dualNamePlacement];

    cellularGroup3 = [v9 cellularGroup];
    dualNameAndTypePlacement = [cellularGroup3 dualNameAndTypePlacement];

    v16 = +[(STUIStatusBarItem *)STUIStatusBarNavigationItem];
    v17 = +[STUIStatusBarDisplayItemPlacement placementWithIdentifier:priority:](STUIStatusBarDisplayItemPlacement, "placementWithIdentifier:priority:", v16, [v9 maximumPriority] + 1);
    v165 = dualNamePlacement;
    v166 = namePlacement;
    v192[0] = namePlacement;
    v192[1] = dualNamePlacement;
    v164 = dualNameAndTypePlacement;
    v192[2] = dualNameAndTypePlacement;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v192 count:3];
    v19 = [v17 excludingPlacements:v18];

    if ([(STUIStatusBarVisualProvider_iOS *)self hasCellularCapability])
    {
      [array addObject:v19];
      v20 = 0;
      v21 = 1;
    }

    else
    {
      v22 = +[(STUIStatusBarItem *)STUIStatusBarDeviceNameItem];
      v20 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v22 priority:30];

      v191 = v20;
      v21 = 1;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v191 count:1];
      v24 = [v19 excludingPlacements:v23];

      [array addObject:v24];
      if (v20)
      {
        [array addObject:v20];
        v21 = 0;
      }

      v19 = v24;
    }

    v163 = v19;
    selfCopy = self;
    array2 = [MEMORY[0x277CBEB18] array];
    cellularGroup4 = [v9 cellularGroup];
    placementsAffectedByAirplaneMode = [cellularGroup4 placementsAffectedByAirplaneMode];
    [array2 addObjectsFromArray:placementsAffectedByAirplaneMode];

    if ((v21 & 1) == 0)
    {
      [array2 addObject:v20];
    }

    v162 = v20;
    v28 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAirplaneModeItem];
    v29 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v28 priority:1400];
    v161 = array2;
    v30 = [v29 excludingPlacements:array2];
    v178 = array;
    [array addObject:v30];

    minimumPriority = [v9 minimumPriority];
    v32 = [STUIStatusBarDisplayItemPlacement spacerPlacementWithSize:minimumPriority - 5 priority:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    cellularGroup5 = [v9 cellularGroup];
    typePlacement = [cellularGroup5 typePlacement];
    v190[0] = typePlacement;
    cellularGroup6 = [v9 cellularGroup];
    [cellularGroup6 namePlacement];
    v36 = v9;
    v37 = v174 = v9;
    v190[1] = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v190 count:2];
    v39 = [v32 requiringAllPlacements:v38];

    placements = [v36 placements];
    v147 = [placements arrayByAddingObject:v39];
    v172 = +[(STUIStatusBarCellularItem *)STUIStatusBarCellularCondensedItem];
    v189[0] = v172;
    v170 = +[STUIStatusBarCellularCondensedItem dualSignalStrengthDisplayIdentifier];
    v189[1] = v170;
    v168 = +[(STUIStatusBarCellularItem *)STUIStatusBarCellularCondensedItem];
    v189[2] = v168;
    v158 = +[(STUIStatusBarCellularItem *)STUIStatusBarCellularCondensedItem];
    v189[3] = v158;
    v156 = +[(STUIStatusBarCellularItem *)STUIStatusBarCellularCondensedItem];
    v189[4] = v156;
    v153 = +[STUIStatusBarCellularCondensedItem dualSingleLineNameDisplayIdentifier];
    v189[5] = v153;
    v151 = +[STUIStatusBarCellularCondensedItem dualSingleLineNameAndTypeDisplayIdentifier];
    v189[6] = v151;
    v160 = v39;
    identifier = [v39 identifier];
    v189[7] = identifier;
    v40 = +[(STUIStatusBarCellularItem *)STUIStatusBarCellularCondensedItem];
    v189[8] = v40;
    v41 = +[STUIStatusBarWifiItem signalStrengthDisplayIdentifier];
    v189[9] = v41;
    v42 = +[STUIStatusBarWifiItem iconDisplayIdentifier];
    v189[10] = v42;
    v43 = +[STUIStatusBarWifiItem rawDisplayIdentifier];
    v189[11] = v43;
    v44 = +[(STUIStatusBarCellularItem *)STUIStatusBarCellularCondensedItem];
    v189[12] = v44;
    v45 = +[(STUIStatusBarItem *)STUIStatusBarVPNItem];
    v189[13] = v45;
    v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v189 count:14];
    v47 = _reorderedPlacementsFromGroupForLegacyLayout(v147, 0, v46);
    [v178 addObjectsFromArray:v47];

    v48 = +[(STUIStatusBarItem *)STUIStatusBarActivityItem_SyncOnly];
    v49 = +[STUIStatusBarDisplayItemPlacement placementWithIdentifier:priority:](STUIStatusBarDisplayItemPlacement, "placementWithIdentifier:priority:", v48, [v174 minimumPriority] - 10);
    [v178 addObject:v49];

    array3 = [MEMORY[0x277CBEB18] array];
    v50 = +[(STUIStatusBarItem *)STUIStatusBarLockItem];
    v173 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v50 priority:3000];

    v51 = +[STUIStatusBarLockItem textDisplayIdentifier];
    v52 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v51 priority:2999];
    cellularGroup7 = [v174 cellularGroup];
    dualNamePlacement2 = [cellularGroup7 dualNamePlacement];
    v188[0] = dualNamePlacement2;
    cellularGroup8 = [v174 cellularGroup];
    dualNameAndTypePlacement2 = [cellularGroup8 dualNameAndTypePlacement];
    v188[1] = dualNameAndTypePlacement2;
    v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v188 count:2];
    v58 = [v52 excludingPlacements:v57];

    v59 = +[STUIStatusBarTimeItem timeDisplayIdentifier];
    v60 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v59 priority:3002];
    v187[0] = v58;
    cellularGroup9 = [v174 cellularGroup];
    dualNamePlacement3 = [cellularGroup9 dualNamePlacement];
    v187[1] = dualNamePlacement3;
    cellularGroup10 = [v174 cellularGroup];
    dualNameAndTypePlacement3 = [cellularGroup10 dualNameAndTypePlacement];
    v187[2] = dualNameAndTypePlacement3;
    v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v187 count:3];
    v171 = [v60 excludingPlacements:v65];

    v66 = array3;
    [array3 addObject:v173];
    v159 = v58;
    [array3 addObject:v58];
    v67 = +[STUIStatusBarSettingsDomain rootSettings];
    visualProviderSettings = [v67 visualProviderSettings];
    LODWORD(cellularGroup9) = [visualProviderSettings fullWidthBackgroundActivity];

    if (cellularGroup9)
    {
      v69 = +[(STUIStatusBarItem *)STUIStatusBarFullBackgroundActivityItem];
      v70 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v69 priority:1950];

      v71 = +[(STUIStatusBarBackgroundActivityItem *)STUIStatusBarFullBackgroundActivityItem];
      v72 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v71 priority:1949];
      v186 = v70;
      v73 = [MEMORY[0x277CBEA60] arrayWithObjects:&v186 count:1];
      v74 = [v72 requiringAllPlacements:v73];

      v75 = +[STUIStatusBarFullBackgroundActivityItem detailDisplayIdentifier];
      v76 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v75 priority:5000];
      v185[0] = @"leading";
      v185[1] = @"center";
      v185[2] = @"trailing";
      v185[3] = @"expandedLeading";
      v185[4] = @"expandedTrailing";
      v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v185 count:5];
      v184[0] = v70;
      v184[1] = v74;
      v78 = [MEMORY[0x277CBEA60] arrayWithObjects:v184 count:2];
      v79 = [v76 excludingAllPlacementsInRegions:v77 exceptPlacements:v78];

      v66 = array3;
      pillRegionCoordinator = [(STUIStatusBarVisualProvider_Phone *)selfCopy pillRegionCoordinator];
      [pillRegionCoordinator setBackgroundActivityDetailPlacement:v79];

      [array3 addObject:v70];
      [array3 addObject:v74];
      [array3 addObject:v79];
    }

    [v66 addObject:v171];
    array4 = [MEMORY[0x277CBEB18] array];
    v82 = +[(STUIStatusBarItem *)STUIStatusBarSensorActivityItem];
    v83 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v82 priority:1960];
    [array4 addObject:v83];

    v84 = [STUIStatusBarIndicatorLocationItem groupWithPriority:1955];
    placements2 = [v84 placements];
    [array4 addObjectsFromArray:placements2];

    v86 = +[STUIStatusBarSettingsDomain rootSettings];
    visualProviderSettings2 = [v86 visualProviderSettings];
    fullWidthBackgroundActivity = [visualProviderSettings2 fullWidthBackgroundActivity];

    if ((fullWidthBackgroundActivity & 1) == 0)
    {
      v89 = +[STUIStatusBarPillBackgroundActivityItem pillCombinedDisplayIdentifier];
      v90 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v89 priority:1950];

      [array4 addObject:v90];
    }

    v91 = +[(STUIStatusBarItem *)STUIStatusBarVoiceControlPillItem];
    v92 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v91 priority:1940];
    [array4 addObject:v92];

    [(STUIStatusBarVisualProvider_iOS *)selfCopy bluetoothPaddingInset];
    v93 = [STUIStatusBarDisplayItemPlacementIndicatorsGroup groupWithHighPriority:800 lowPriority:500 bluetoothPaddingInset:?];
    v169 = +[STUIStatusBarDisplayItemPlacementBatteryGroup groupWithHighPriority:lowPriority:](STUIStatusBarDisplayItemPlacementBatteryGroup, "groupWithHighPriority:lowPriority:", [v93 maximumPriority] + 1, objc_msgSend(v93, "minimumPriority") - 5);
    placements3 = [v93 placements];
    v154 = +[STUIStatusBarBluetoothItem batteryDisplayIdentifier];
    v157 = v93;
    v183[0] = v154;
    bluetoothInsetPaddingItem = [v93 bluetoothInsetPaddingItem];
    identifier2 = [bluetoothInsetPaddingItem identifier];
    v183[1] = identifier2;
    v148 = +[(STUIStatusBarItem *)STUIStatusBarBluetoothItem];
    v183[2] = v148;
    v146 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAirPlayItem];
    v183[3] = v146;
    v145 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorTTYItem];
    v183[4] = v145;
    v144 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAlarmItem];
    v183[5] = v144;
    v95 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorStudentItem];
    v183[6] = v95;
    v96 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorRotationLockItem];
    v183[7] = v96;
    v97 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAssistantItem];
    v183[8] = v97;
    v98 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorQuietModeItem];
    v183[9] = v98;
    v99 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorCarPlayItem];
    v183[10] = v99;
    v100 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorSatelliteItem];
    v183[11] = v100;
    v101 = [MEMORY[0x277CBEA60] arrayWithObjects:v183 count:12];
    _reorderedPlacementsFromGroupForLegacyLayout(placements3, 1, v101);
    v103 = v102 = array4;
    [v102 addObjectsFromArray:v103];

    v104 = +[(STUIStatusBarItem *)STUIStatusBarBuildVersionItem];
    v105 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v104 priority:2];
    [v102 addObject:v105];

    placements4 = [v169 placements];
    v107 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorLiquidDetectionItem];
    v182[0] = v107;
    v108 = +[STUIStatusBarBatteryItem staticIconDisplayIdentifier];
    v182[1] = v108;
    v109 = +[STUIStatusBarBatteryItem percentDisplayIdentifier];
    v182[2] = v109;
    v110 = [MEMORY[0x277CBEA60] arrayWithObjects:v182 count:3];
    v111 = _reorderedPlacementsFromGroupForLegacyLayout(placements4, 1, v110);
    v155 = v102;
    [v102 addObjectsFromArray:v111];

    array5 = [MEMORY[0x277CBEB18] array];
    v113 = objc_opt_class();
    v114 = objc_opt_class();
    LOBYTE(v143) = 0;
    v115 = [STUIStatusBarDisplayItemPlacementNetworkGroup groupWithHighPriority:2500 lowPriority:2200 cellularItemClass:v113 wifiItemClass:v114 cellularTypeClass:objc_opt_class() includeCellularName:1 allowDualNetwork:v143];
    wifiGroup = [v115 wifiGroup];
    lowerWifiGroup = selfCopy->_lowerWifiGroup;
    selfCopy->_lowerWifiGroup = wifiGroup;

    v118 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAirplaneModeItem];
    v119 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v118 priority:5000];
    expandedCellularPlacementsAffectedByAirplaneMode = [(STUIStatusBarVisualProvider_iOS *)selfCopy expandedCellularPlacementsAffectedByAirplaneMode];
    cellularGroup11 = [v115 cellularGroup];
    placementsAffectedByAirplaneMode2 = [cellularGroup11 placementsAffectedByAirplaneMode];
    v123 = [expandedCellularPlacementsAffectedByAirplaneMode arrayByAddingObjectsFromArray:placementsAffectedByAirplaneMode2];
    v124 = [v119 excludingPlacements:v123];
    [array5 addObject:v124];

    placements5 = [v115 placements];
    [array5 addObjectsFromArray:placements5];

    array6 = [MEMORY[0x277CBEB18] array];
    v127 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorLocationItem];
    v128 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v127 priority:1450];
    [array6 addObject:v128];

    [(STUIStatusBarVisualProvider_iOS *)selfCopy bluetoothPaddingInset];
    v129 = [STUIStatusBarDisplayItemPlacementIndicatorsGroup groupWithHighPriority:1400 lowPriority:1000 bluetoothPaddingInset:?];
    placements6 = [v129 placements];
    [array6 addObjectsFromArray:placements6];

    v131 = +[STUIStatusBarSettingsDomain rootSettings];
    visualProviderSettings3 = [v131 visualProviderSettings];
    LODWORD(cellularGroup11) = [visualProviderSettings3 fullWidthBackgroundActivity];

    if (cellularGroup11)
    {
      v133 = +[(STUIStatusBarBackgroundActivityItem *)STUIStatusBarFullBackgroundActivityItem];
      v134 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v133 priority:2000];
      v181 = v134;
      v135 = [MEMORY[0x277CBEA60] arrayWithObjects:&v181 count:1];
    }

    else
    {
      v135 = MEMORY[0x277CBEBF8];
    }

    v179[0] = @"leading";
    v179[1] = @"trailing";
    v180[0] = v178;
    v180[1] = v155;
    v179[2] = @"center";
    v179[3] = @"background";
    v180[2] = array3;
    v180[3] = v135;
    v179[4] = @"expandedLeading";
    expandedLeadingPlacements = [(STUIStatusBarVisualProvider_iOS *)selfCopy expandedLeadingPlacements];
    v180[4] = expandedLeadingPlacements;
    v180[5] = array5;
    v179[5] = @"expandedLowerLeading";
    v179[6] = @"expandedTrailing";
    expandedTrailingPlacements = [(STUIStatusBarVisualProvider_iOS *)selfCopy expandedTrailingPlacements];
    v179[7] = @"expandedLowerTrailing";
    v180[6] = expandedTrailingPlacements;
    v180[7] = array6;
    v138 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v180 forKeys:v179 count:8];
    v139 = selfCopy->_orderedDisplayItemPlacements;
    selfCopy->_orderedDisplayItemPlacements = v138;

    orderedDisplayItemPlacements = selfCopy->_orderedDisplayItemPlacements;
    identifierCopy = v167;
  }

  v140 = [(NSDictionary *)orderedDisplayItemPlacements objectForKeyedSubscript:identifierCopy];

  return v140;
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
      [v5 setMarqueeServiceName:{-[STUIStatusBarVisualProvider_iOS onLockScreen](self, "onLockScreen")}];
      objc_storeStrong(&self->_condensedCellularItem, created);
    }

    [v5 setTypeStringProvider:self];
  }

  else
  {
    identifier = [createdCopy identifier];
    v7 = +[(STUIStatusBarItem *)STUIStatusBarVoiceControlPillItem];

    if (identifier == v7)
    {
      v10 = createdCopy;
      [(STUIStatusBarVisualProvider_LegacyPhone *)self smallPillSize];
      [v10 setPillSize:?];
    }

    else
    {
      identifier2 = [createdCopy identifier];
      v9 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorLiquidDetectionItem];

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
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"GPRS" value:&stru_287D04F38 table:0];
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
  if (type <= 0xF)
  {
    if (((1 << type) & 0xF8C0) != 0)
    {
      fontDescriptor = [fontCopy fontDescriptor];
      fontDescriptor2 = [fontDescriptor fontDescriptorWithSymbolicTraits:64];

      v11 = MEMORY[0x277D74300];
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
      v17 = MEMORY[0x277D74300];
      fontDescriptor2 = [v7 fontDescriptor];
      v11 = v17;
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
  v24[1] = *MEMORY[0x277D85DE8];
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
    v21.receiver = self;
    v21.super_class = STUIStatusBarVisualProvider_LegacyPhone;
    [(STUIStatusBarVisualProvider_Phone *)&v21 actionable:actionableCopy highlighted:highlightedCopy initialPress:pressCopy];
    goto LABEL_8;
  }

  identifier = [v9 identifier];
  v12 = +[STUIStatusBarPillBackgroundActivityItem pillCombinedDisplayIdentifier];
  v13 = v12;
  if (identifier != v12)
  {
    identifier2 = [v10 identifier];
    v15 = +[(STUIStatusBarBackgroundActivityItem *)STUIStatusBarFullBackgroundActivityItem];

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
    highlightView = objc_alloc_init(STUIStatusBarRoundedCornerView);
    [(STUIStatusBarRoundedCornerView *)highlightView setAutoresizingMask:18];
    identifier3 = [v10 identifier];
    v18 = +[(STUIStatusBarBackgroundActivityItem *)STUIStatusBarFullBackgroundActivityItem];

    if (identifier3 == v18)
    {
      [(STUIStatusBarRoundedCornerView *)highlightView setCornerRadius:0.0];
    }

    [v10 setHighlightView:highlightView];
  }

  v19 = MEMORY[0x277D75220];
  v24[0] = highlightView;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __79__STUIStatusBarVisualProvider_LegacyPhone_actionable_highlighted_initialPress___block_invoke;
  v22[3] = &__block_descriptor_33_e16_v16__0__UIView_8l;
  v23 = highlightedCopy;
  [v19 _setVisuallyHighlighted:highlightedCopy forViews:v20 initialPress:pressCopy highlightBlock:v22];

LABEL_8:
}

- (id)willUpdateWithData:(id)data
{
  v15.receiver = self;
  v15.super_class = STUIStatusBarVisualProvider_LegacyPhone;
  dataCopy = data;
  v5 = [(STUIStatusBarVisualProvider_Phone *)&v15 willUpdateWithData:dataCopy];
  backgroundActivityEntry = [dataCopy backgroundActivityEntry];

  if (backgroundActivityEntry)
  {
    statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    currentAggregatedData = [statusBar currentAggregatedData];
    backgroundActivityEntry2 = [currentAggregatedData backgroundActivityEntry];

    LODWORD(statusBar) = [backgroundActivityEntry isEnabled];
    if (statusBar != [backgroundActivityEntry2 isEnabled])
    {
      if ([backgroundActivityEntry isEnabled])
      {
        if ([(STUIStatusBarVisualProvider_iOS *)self expanded])
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

      statusBar2 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
      regions = [statusBar2 regions];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __62__STUIStatusBarVisualProvider_LegacyPhone_willUpdateWithData___block_invoke;
      v14[3] = &__block_descriptor_40_e46_v32__0__NSString_8__STUIStatusBarRegion_16_B24l;
      v14[4] = v10;
      [regions enumerateKeysAndObjectsUsingBlock:v14];
    }
  }

  return v5;
}

- (id)_animationForSingleLineDualCarrier
{
  v2 = [STUIStatusBarAnimationFactory fadeAnimationWithDuration:0.2];
  v3 = [STUIStatusBarAnimationFactory fadeAnimationWithDuration:0.2];
  [v3 setPriority:10];
  v4 = +[STUIStatusBarWifiItem iconDisplayIdentifier];
  [v2 addSubAnimation:v3 forDisplayItemWithIdentifier:v4];

  v5 = +[STUIStatusBarWifiItem rawDisplayIdentifier];
  [v2 addSubAnimation:v3 forDisplayItemWithIdentifier:v5];

  v6 = +[STUIStatusBarWifiItem signalStrengthDisplayIdentifier];
  [v2 addSubAnimation:v3 forDisplayItemWithIdentifier:v6];

  v7 = +[(STUIStatusBarItem *)STUIStatusBarVPNItem];
  [v2 addSubAnimation:v3 forDisplayItemWithIdentifier:v7];

  v8 = +[(STUIStatusBarItem *)STUIStatusBarActivityItem_SyncOnly];
  [v2 addSubAnimation:v3 forDisplayItemWithIdentifier:v8];

  return v2;
}

- (id)additionAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation
{
  identifierCopy = identifier;
  animationCopy = animation;
  v8 = +[STUIStatusBarFullBackgroundActivityItem detailDisplayIdentifier];

  if (v8 == identifierCopy)
  {
    v13 = +[STUIStatusBarAnimationFactory noAnimation];
    v14 = +[STUIStatusBarTimeItem timeDisplayIdentifier];
    [animationCopy addSubAnimation:v13 forDisplayItemWithIdentifier:v14];

    v15 = +[STUIStatusBarAnimationFactory noAnimation];
    v16 = +[(STUIStatusBarItem *)STUIStatusBarFullBackgroundActivityItem];
    [animationCopy addSubAnimation:v15 forDisplayItemWithIdentifier:v16];

    v17 = +[STUIStatusBarAnimationFactory noAnimation];
    v18 = +[(STUIStatusBarBackgroundActivityItem *)STUIStatusBarFullBackgroundActivityItem];
    [animationCopy addSubAnimation:v17 forDisplayItemWithIdentifier:v18];

    _animationForSingleLineDualCarrier = animationCopy;
  }

  else
  {
    v9 = +[STUIStatusBarCellularCondensedItem dualSingleLineNameDisplayIdentifier];
    v10 = v9;
    if (v9 == identifierCopy)
    {
    }

    else
    {
      v11 = +[STUIStatusBarCellularCondensedItem dualSingleLineNameAndTypeDisplayIdentifier];

      if (v11 != identifierCopy)
      {
        v21.receiver = self;
        v21.super_class = STUIStatusBarVisualProvider_LegacyPhone;
        _animationForSingleLineDualCarrier = [(STUIStatusBarVisualProvider_Phone *)&v21 additionAnimationForDisplayItemWithIdentifier:identifierCopy itemAnimation:animationCopy];
        goto LABEL_8;
      }
    }

    _animationForSingleLineDualCarrier = [(STUIStatusBarVisualProvider_LegacyPhone *)self _animationForSingleLineDualCarrier];
  }

LABEL_8:
  v19 = _animationForSingleLineDualCarrier;

  return v19;
}

- (id)removalAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation
{
  identifierCopy = identifier;
  animationCopy = animation;
  v8 = +[STUIStatusBarFullBackgroundActivityItem detailDisplayIdentifier];

  if (v8 == identifierCopy)
  {
    _backgroundActivityDetailRemovalAnimation = [(STUIStatusBarVisualProvider_LegacyPhone *)self _backgroundActivityDetailRemovalAnimation];
  }

  else
  {
    v9 = +[STUIStatusBarCellularCondensedItem dualSingleLineNameDisplayIdentifier];
    v10 = v9;
    if (v9 == identifierCopy)
    {
    }

    else
    {
      v11 = +[STUIStatusBarCellularCondensedItem dualSingleLineNameAndTypeDisplayIdentifier];

      if (v11 != identifierCopy)
      {
        v15.receiver = self;
        v15.super_class = STUIStatusBarVisualProvider_LegacyPhone;
        _backgroundActivityDetailRemovalAnimation = [(STUIStatusBarVisualProvider_Phone *)&v15 removalAnimationForDisplayItemWithIdentifier:identifierCopy itemAnimation:animationCopy];
        goto LABEL_8;
      }
    }

    _backgroundActivityDetailRemovalAnimation = [(STUIStatusBarVisualProvider_LegacyPhone *)self _animationForSingleLineDualCarrier];
  }

LABEL_8:
  v13 = _backgroundActivityDetailRemovalAnimation;

  return v13;
}

- (id)overriddenStyleAttributesForDisplayItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[(STUIStatusBarItem *)STUIStatusBarFullBackgroundActivityItem];
  v5 = v4;
  if (v4 == identifierCopy)
  {
  }

  else
  {
    v6 = +[(STUIStatusBarBackgroundActivityItem *)STUIStatusBarFullBackgroundActivityItem];

    if (v6 != identifierCopy)
    {
      v7 = 0;
      goto LABEL_6;
    }
  }

  v7 = +[STUIStatusBarStyleAttributes overriddenStyleAttributes];
  [v7 setIconScale:0.75];
LABEL_6:

  return v7;
}

- (id)regionIdentifiersForPartWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqual:@"leadingPartIdentifier"])
  {
    v5 = MEMORY[0x277CBEB98];
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
    [MEMORY[0x277CBEB98] setWithObjects:{@"trailing", @"expandedTrailing", @"expandedLowerTrailing", 0, v21}];
    goto LABEL_15;
  }

  if ([identifierCopy isEqual:@"centerPartIdentifier"])
  {
    [MEMORY[0x277CBEB98] setWithObjects:{@"center", @"background", 0, v19, v21}];
    goto LABEL_15;
  }

  if ([identifierCopy isEqual:@"normalPartIdentifier"])
  {
    v5 = MEMORY[0x277CBEB98];
    v20 = @"trailing";
    v21 = 0;
    v6 = @"background";
    v7 = @"center";
    goto LABEL_3;
  }

  if ([identifierCopy isEqual:@"expandedPartIdentifier"])
  {
    goto LABEL_11;
  }

  if ([identifierCopy isEqual:@"expandedPartTopIdentifier"])
  {
LABEL_13:
    v8 = MEMORY[0x277CBEB98];
    v17 = @"expandedTrailing";
    v18 = 0;
    goto LABEL_14;
  }

  if ([identifierCopy isEqual:@"expandedBottomPartIdentifier"])
  {
    [MEMORY[0x277CBEB98] setWithObjects:{@"expandedLowerLeading", @"expandedLowerTrailing", 0, v19, v21}];
    goto LABEL_15;
  }

  if ([identifierCopy isEqual:@"visibleExpandedPartIdentifier"])
  {
    statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    currentData = [statusBar currentData];
    secondaryCellularEntry = [currentData secondaryCellularEntry];
    if ([secondaryCellularEntry isEnabled])
    {
      statusBar2 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
      v16 = [statusBar2 orientation] - 1;

      if (v16 <= 1)
      {
LABEL_11:
        v8 = MEMORY[0x277CBEB98];
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

  v9 = [MEMORY[0x277CBEB98] set];
LABEL_16:
  v10 = v9;

  return v10;
}

- (id)styleAttributesForStyle:(int64_t)style
{
  v19.receiver = self;
  v19.super_class = STUIStatusBarVisualProvider_LegacyPhone;
  v4 = [(STUIStatusBarVisualProvider_iOS *)&v19 styleAttributesForStyle:style];
  mode = [v4 mode];
  if (mode <= 5)
  {
    if (((1 << mode) & 0xE) != 0)
    {
      [v4 setIconScale:1.07];
      traitCollection = [v4 traitCollection];
      [traitCollection displayScale];
      if (v7 <= 2.5)
      {
        v8 = 5;
      }

      else
      {
        v8 = 2;
      }

      [v4 setIconSize:v8];

      expandedFont = [(STUIStatusBarVisualProvider_LegacyPhone *)self expandedFont];
      [v4 setFont:expandedFont];

      font = [v4 font];
      [v4 setSmallFont:font];

      expandedFont2 = [(STUIStatusBarVisualProvider_LegacyPhone *)self expandedFont];
    }

    else
    {
      [v4 setIconScale:1.0];
      traitCollection2 = [v4 traitCollection];
      [traitCollection2 displayScale];
      if (v13 <= 2.5)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      [v4 setIconSize:v14];

      normalFont = [(STUIStatusBarVisualProvider_LegacyPhone *)self normalFont];
      [v4 setFont:normalFont];

      font2 = [v4 font];
      [v4 setSmallFont:font2];

      expandedFont2 = [(STUIStatusBarVisualProvider_LegacyPhone *)self timeFont];
    }

    v17 = expandedFont2;
    [v4 setEmphasizedFont:expandedFont2];
  }

  [v4 setImageNamePrefixes:&unk_287D1AE40];

  return v4;
}

- (id)displayItemIdentifiersForPartWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqual:@"clockPartIdentifier"])
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = +[STUIStatusBarTimeItem timeDisplayIdentifier];
    v7 = [v5 setWithObject:v6];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = STUIStatusBarVisualProvider_LegacyPhone;
    v7 = [(STUIStatusBarVisualProvider_iOS *)&v9 displayItemIdentifiersForPartWithIdentifier:identifierCopy];
  }

  return v7;
}

- (CGRect)clockBoundsForLayoutItem:(id)item
{
  itemCopy = item;
  identifier = [itemCopy identifier];
  v6 = +[STUIStatusBarTimeItem timeDisplayIdentifier];

  view = [itemCopy view];

  if (identifier == v6)
  {
    statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    currentAggregatedData = [statusBar currentAggregatedData];
    shortTimeEntry = [currentAggregatedData shortTimeEntry];
    stringValue = [shortTimeEntry stringValue];

    _StatusBar_UITimeSizeForLabel();
    v13 = v20;
    v15 = v21;
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

  v22 = v9;
  v23 = v11;
  v24 = v13;
  v25 = v15;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (void)orientationUpdatedFromOrientation:(int64_t)orientation
{
  statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  [statusBar avoidanceFrame];
  [(STUIStatusBarVisualProvider_LegacyPhone *)self _updateExpandedConstraintsForAvoidanceFrame:?];

  statusBar2 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  currentAggregatedData = [statusBar2 currentAggregatedData];
  [(STUIStatusBarVisualProvider_LegacyPhone *)self _updateLowerRegionsWithData:currentAggregatedData];
}

- (void)avoidanceFrameUpdatedFromFrame:(CGRect)frame withAnimationSettings:(id)settings options:(unint64_t)options
{
  v6 = [(STUIStatusBarVisualProvider_iOS *)self statusBar:settings];
  [v6 avoidanceFrame];
  [(STUIStatusBarVisualProvider_LegacyPhone *)self _updateExpandedConstraintsForAvoidanceFrame:?];
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
      statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
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
    v9 = [(STUIStatusBarVisualProvider_LegacyPhone *)self regionIdentifiersForPartWithIdentifier:@"expandedBottomPartIdentifier"];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __71__STUIStatusBarVisualProvider_LegacyPhone__updateLowerRegionsWithData___block_invoke;
    v11[3] = &unk_279D37F48;
    v12 = v8;
    v11[4] = self;
    v11[5] = &v13;
    [v9 enumerateObjectsUsingBlock:v11];

    [(STUIStatusBarVisualProvider_LegacyPhone *)self _updateBackgroundHeight];
    if (v8)
    {
      [(STUIStatusBarVisualProvider_LegacyPhone *)self dualLineExpandedBaselineOffset];
    }

    else
    {
      [(STUIStatusBarVisualProvider_LegacyPhone *)self expandedBaselineOffset];
    }

    [(NSLayoutConstraint *)self->_expandedLeadingBottomConstraint setConstant:?];
    if (*(v14 + 24) == 1)
    {
      statusBar2 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
      [statusBar2 updateWithAnimations:MEMORY[0x277CBEBF8]];
    }

    _Block_object_dispose(&v13, 8);
  }
}

- (void)_updateExpandedTrailingRegion
{
  if ([(STUIStatusBarVisualProvider_iOS *)self expanded])
  {
    v3 = *MEMORY[0x277D76620];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __72__STUIStatusBarVisualProvider_LegacyPhone__updateExpandedTrailingRegion__block_invoke;
    v4[3] = &unk_279D37F00;
    v4[4] = self;
    [v3 _performBlockAfterCATransactionCommits:v4];
  }
}

- (void)updateDataForService:(id)service
{
  v6.receiver = self;
  v6.super_class = STUIStatusBarVisualProvider_LegacyPhone;
  serviceCopy = service;
  [(STUIStatusBarVisualProvider_iOS *)&v6 updateDataForService:serviceCopy];
  secondaryCellularEntry = [serviceCopy secondaryCellularEntry];

  if (secondaryCellularEntry)
  {
    -[STUIStatusBarDisplayItemPlacementGroup setEnabled:](self->_lowerWifiGroup, "setEnabled:", [secondaryCellularEntry type] != 0);
  }
}

- (void)_updateBackgroundHeight
{
  [(STUIStatusBarVisualProvider_LegacyPhone *)self effectiveHeight];
  backgroundHeightConstraint = self->_backgroundHeightConstraint;

  [(NSLayoutConstraint *)backgroundHeightConstraint setConstant:?];
}

- (void)setExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  if ([(STUIStatusBarVisualProvider_iOS *)self expanded]!= expanded)
  {
    statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
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

      statusBar2 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
      regions = [statusBar2 regions];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __55__STUIStatusBarVisualProvider_LegacyPhone_setExpanded___block_invoke;
      v13[3] = &__block_descriptor_40_e46_v32__0__NSString_8__STUIStatusBarRegion_16_B24l;
      v13[4] = v9;
      [regions enumerateKeysAndObjectsUsingBlock:v13];
    }

    v12.receiver = self;
    v12.super_class = STUIStatusBarVisualProvider_LegacyPhone;
    [(STUIStatusBarVisualProvider_iOS *)&v12 setExpanded:expandedCopy];
    [(STUIStatusBarVisualProvider_LegacyPhone *)self _updateBackgroundHeight];
  }
}

- (void)_updateExpandedConstraintsForAvoidanceFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (-[STUIStatusBarVisualProvider_iOS expanded](self, "expanded") && (-[STUIStatusBarVisualProvider_iOS statusBar](self, "statusBar"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 orientation] - 3, v8, v9 <= 1))
  {
    v27 = 0.0;
    v28 = 0.0;
    statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    [statusBar frame];
    MidX = CGRectGetMidX(v30);
    statusBar2 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    STUIStatusBarGetLeadingAndTrailingParts([statusBar2 _shouldReverseLayoutDirection], &v28, &v27, x, y, width, height, MidX);

    v13 = fmax(v28, v27);
    v14 = v13 > 0.0;
    if (v13 > 0.0)
    {
      [(STUIStatusBarVisualProvider_iOS *)self expandedItemSpacing];
      v28 = v15 + v28;
      [(STUIStatusBarVisualProvider_iOS *)self expandedItemSpacing];
      v27 = v16 + v27;
    }

    expandedTopMiddleConstraint = [(STUIStatusBarVisualProvider_LegacyPhone *)self expandedTopMiddleConstraint];
    [expandedTopMiddleConstraint setActive:v14 ^ 1];

    expandedLeadingBannerConstraint = [(STUIStatusBarVisualProvider_LegacyPhone *)self expandedLeadingBannerConstraint];
    [expandedLeadingBannerConstraint setActive:v14];

    v19 = -v28;
    expandedLeadingBannerConstraint2 = [(STUIStatusBarVisualProvider_LegacyPhone *)self expandedLeadingBannerConstraint];
    [expandedLeadingBannerConstraint2 setConstant:v19];

    expandedTrailingBannerConstraint = [(STUIStatusBarVisualProvider_LegacyPhone *)self expandedTrailingBannerConstraint];
    [expandedTrailingBannerConstraint setActive:v14];

    v22 = v27;
    expandedTrailingBannerConstraint2 = [(STUIStatusBarVisualProvider_LegacyPhone *)self expandedTrailingBannerConstraint];
    [expandedTrailingBannerConstraint2 setConstant:v22];
  }

  else
  {
    expandedTopMiddleConstraint2 = [(STUIStatusBarVisualProvider_LegacyPhone *)self expandedTopMiddleConstraint];
    [expandedTopMiddleConstraint2 setActive:1];

    expandedLeadingBannerConstraint3 = [(STUIStatusBarVisualProvider_LegacyPhone *)self expandedLeadingBannerConstraint];
    [expandedLeadingBannerConstraint3 setActive:0];

    expandedTrailingBannerConstraint3 = [(STUIStatusBarVisualProvider_LegacyPhone *)self expandedTrailingBannerConstraint];
    [expandedTrailingBannerConstraint3 setActive:0];
  }
}

- (void)_updateLockScreenSizing
{
  onLockScreen = [(STUIStatusBarVisualProvider_iOS *)self onLockScreen];
  if (onLockScreen)
  {
    [(STUIStatusBarVisualProvider_LegacyPhone *)self expandedBaselineOffset];
    v5 = v4;
    [(STUIStatusBarVisualProvider_iOS *)self expandedItemSpacing];
    v7 = v6;
    [(STUIStatusBarVisualProvider_LegacyPhone *)self expandedFont];
  }

  else
  {
    [(STUIStatusBarVisualProvider_LegacyPhone *)self baselineOffset];
    v5 = v8;
    [(STUIStatusBarVisualProvider_iOS *)self itemSpacing];
    v7 = v9;
    [(STUIStatusBarVisualProvider_LegacyPhone *)self normalFont];
  }
  v10 = ;
  [v10 capHeight];
  v12 = v11;

  v13 = v12 + 1.0;
  [(STUIStatusBarCellularItem *)self->_condensedCellularItem setMarqueeServiceName:onLockScreen];
  [(STUIStatusBarRegionAxisStackingLayout *)self->_leadingHorizontalLayout setInterspace:v7];
  [(STUIStatusBarRegionAxisCenteringLayout *)self->_centerHorizontalLayout setInterspace:v7];
  [(STUIStatusBarRegionAxisStackingLayout *)self->_trailingHorizontalLayout setInterspace:v7];
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
  if ([(STUIStatusBarVisualProvider_iOS *)self onLockScreen]!= screen)
  {
    v5.receiver = self;
    v5.super_class = STUIStatusBarVisualProvider_LegacyPhone;
    [(STUIStatusBarVisualProvider_iOS *)&v5 setOnLockScreen:screenCopy];
    [(STUIStatusBarVisualProvider_LegacyPhone *)self _updateLockScreenSizing];
    [(STUIStatusBarVisualProvider_LegacyPhone *)self _updateBackgroundHeight];
  }
}

- (id)_backgroundActivityDetailRemovalAnimation
{
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x4010000000;
  v33[3] = &unk_26C58BD13;
  v2 = *(MEMORY[0x277CBF398] + 16);
  v34 = *MEMORY[0x277CBF398];
  v35 = v2;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x4010000000;
  v30[3] = &unk_26C58BD13;
  v31 = v34;
  v32 = v2;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x4010000000;
  v27[3] = &unk_26C58BD13;
  v28 = v34;
  v29 = v2;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x4010000000;
  v24[3] = &unk_26C58BD13;
  v25 = v34;
  v26 = v2;
  statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  [statusBar bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __84__STUIStatusBarVisualProvider_LegacyPhone__backgroundActivityDetailRemovalAnimation__block_invoke;
  v23[3] = &unk_279D37F70;
  v23[4] = v33;
  v23[5] = v24;
  v12 = [STUIStatusBarAnimation animationWithBlock:v23];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __84__STUIStatusBarVisualProvider_LegacyPhone__backgroundActivityDetailRemovalAnimation__block_invoke_4;
  v22[3] = &unk_279D37F98;
  v22[5] = v5;
  v22[6] = v7;
  v22[7] = v9;
  v22[8] = v11;
  v22[4] = v33;
  [v12 setPrepareBlock:v22];
  [v12 setPriority:100];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __84__STUIStatusBarVisualProvider_LegacyPhone__backgroundActivityDetailRemovalAnimation__block_invoke_5;
  v21[3] = &unk_279D37F70;
  v21[4] = v24;
  v21[5] = v33;
  v13 = [STUIStatusBarAnimation animationWithBlock:v21];
  [v13 setPriority:200];
  v14 = +[STUIStatusBarTimeItem timeDisplayIdentifier];
  [v12 addSubAnimation:v13 forDisplayItemWithIdentifier:v14];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __84__STUIStatusBarVisualProvider_LegacyPhone__backgroundActivityDetailRemovalAnimation__block_invoke_9;
  v20[3] = &unk_279D37F70;
  v20[4] = v27;
  v20[5] = v30;
  v15 = [STUIStatusBarAnimation animationWithBlock:v20];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __84__STUIStatusBarVisualProvider_LegacyPhone__backgroundActivityDetailRemovalAnimation__block_invoke_12;
  v19[3] = &unk_279D37FE8;
  v19[6] = v5;
  v19[7] = v7;
  v19[8] = v9;
  v19[9] = v11;
  v19[4] = v27;
  v19[5] = v30;
  [v15 setPrepareBlock:v19];
  [v15 setPriority:50];
  v16 = +[(STUIStatusBarItem *)STUIStatusBarFullBackgroundActivityItem];
  [v12 addSubAnimation:v15 forDisplayItemWithIdentifier:v16];

  v17 = +[(STUIStatusBarBackgroundActivityItem *)STUIStatusBarFullBackgroundActivityItem];
  [v12 addSubAnimation:v15 forDisplayItemWithIdentifier:v17];

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v33, 8);

  return v12;
}

- (id)regionIdentifiersForBackgroundLumaView:(id)view
{
  viewCopy = view;
  leadingBackgroundLumaView = [(STUIStatusBarVisualProvider_LegacyPhone *)self leadingBackgroundLumaView];

  if (leadingBackgroundLumaView == viewCopy)
  {
    [MEMORY[0x277CBEB98] setWithObjects:{@"leading", 0}];
  }

  else
  {
    trailingBackgroundLumaView = [(STUIStatusBarVisualProvider_LegacyPhone *)self trailingBackgroundLumaView];

    if (trailingBackgroundLumaView == viewCopy)
    {
      [MEMORY[0x277CBEB98] setWithObjects:{@"trailing", 0}];
    }

    else
    {
      centerBackgroundLumaView = [(STUIStatusBarVisualProvider_LegacyPhone *)self centerBackgroundLumaView];

      if (centerBackgroundLumaView != viewCopy)
      {
        v8 = [MEMORY[0x277CBEB98] set];
        goto LABEL_9;
      }

      [MEMORY[0x277CBEB98] setWithObjects:{@"center", 0}];
    }
  }
  v8 = ;
LABEL_9:
  v9 = v8;

  return v9;
}

@end