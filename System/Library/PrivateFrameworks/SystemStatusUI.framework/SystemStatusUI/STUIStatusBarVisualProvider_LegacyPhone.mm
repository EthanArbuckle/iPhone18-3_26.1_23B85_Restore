@interface STUIStatusBarVisualProvider_LegacyPhone
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
- (id)regionIdentifiersForBackgroundLumaView:(id)a3;
- (id)regionIdentifiersForPartWithIdentifier:(id)a3;
- (id)removalAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4;
- (id)setupInContainerView:(id)a3;
- (id)stringForCellularType:(int64_t)a3 condensed:(BOOL)a4;
- (id)styleAttributesForStyle:(int64_t)a3;
- (id)timeFont;
- (id)willUpdateWithData:(id)a3;
- (void)_updateBackgroundHeight;
- (void)_updateExpandedConstraintsForAvoidanceFrame:(CGRect)a3;
- (void)_updateExpandedTrailingRegion;
- (void)_updateLockScreenSizing;
- (void)_updateLowerRegionsWithData:(id)a3;
- (void)actionable:(id)a3 highlighted:(BOOL)a4 initialPress:(BOOL)a5;
- (void)avoidanceFrameUpdatedFromFrame:(CGRect)a3 withAnimationSettings:(id)a4 options:(unint64_t)a5;
- (void)itemCreated:(id)a3;
- (void)orientationUpdatedFromOrientation:(int64_t)a3;
- (void)setExpanded:(BOOL)a3;
- (void)setOnLockScreen:(BOOL)a3;
- (void)updateDataForService:(id)a3;
@end

@implementation STUIStatusBarVisualProvider_LegacyPhone

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
  v3 = *MEMORY[0x277D77260];
  [a1 _heightExpanded:1];
  v5 = v4;
  v6 = v3;
  result.height = v5;
  result.width = v6;
  return result;
}

- (double)effectiveHeight
{
  v3 = objc_opt_class();
  v4 = [(STUIStatusBarVisualProvider_iOS *)self expanded]|| [(STUIStatusBarVisualProvider_iOS *)self onLockScreen];

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
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 scale];
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

- (id)setupInContainerView:(id)a3
{
  v214[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = [v4 array];
  v213 = [MEMORY[0x277CBEB18] array];
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
  v20 = [(STUIStatusBarVisualProvider_LegacyPhone *)self normalFont];
  [v20 capHeight];
  v22 = v21 + 1.0;

  v23 = [(STUIStatusBarVisualProvider_LegacyPhone *)self expandedFont];
  [v23 capHeight];
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
  v32 = [(STUIStatusBarRegion *)v27 layoutItem];
  v33 = [v32 bottomAnchor];
  v34 = v5;
  v35 = [v5 topAnchor];
  v36 = [v33 constraintEqualToAnchor:v35 constant:v8];
  leadingTopConstraint = self->_leadingTopConstraint;
  self->_leadingTopConstraint = v36;

  v38 = v6;
  [v6 addObject:self->_leadingTopConstraint];
  v39 = [v32 leadingAnchor];
  v40 = [v34 leadingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:v11];
  [v38 addObject:v41];

  v212 = v32;
  v42 = [v32 heightAnchor];
  v43 = [v42 constraintEqualToConstant:v22];
  leadingHeightConstraint = self->_leadingHeightConstraint;
  self->_leadingHeightConstraint = v43;

  [v38 addObject:self->_leadingHeightConstraint];
  [v34 _ui_addSubLayoutItem:v32];

  [v213 addObject:v27];
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
  v50 = [(STUIStatusBarRegion *)v45 layoutItem];
  v51 = [v50 bottomAnchor];
  v52 = [v34 topAnchor];
  v53 = [v51 constraintEqualToAnchor:v52 constant:v8];
  trailingTopConstraint = self->_trailingTopConstraint;
  self->_trailingTopConstraint = v53;

  [v38 addObject:self->_trailingTopConstraint];
  v55 = [v50 trailingAnchor];
  v56 = [v34 trailingAnchor];
  v57 = -v13;
  v58 = [v55 constraintEqualToAnchor:v56 constant:v57];
  v203 = v38;
  [v38 addObject:v58];

  v211 = v50;
  v59 = [v50 heightAnchor];
  v60 = [v59 constraintEqualToConstant:v22];
  trailingHeightConstraint = self->_trailingHeightConstraint;
  self->_trailingHeightConstraint = v60;

  [v38 addObject:self->_trailingHeightConstraint];
  [v34 _ui_addSubLayoutItem:v50];

  [v213 addObject:v45];
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
  v67 = [(STUIStatusBarRegion *)v62 layoutItem];
  v68 = [v67 centerXAnchor];
  v69 = [v34 centerXAnchor];
  v70 = [v68 constraintEqualToAnchor:v69];
  [v38 addObject:v70];

  v71 = [v67 widthAnchor];
  v72 = [v71 constraintEqualToConstant:0.0];
  LODWORD(v73) = 1132068864;
  v74 = [v72 _ui_constraintWithPriority:v73];
  [v38 addObject:v74];

  v75 = [v67 bottomAnchor];
  v76 = [v34 topAnchor];
  v77 = [v75 constraintEqualToAnchor:v76 constant:v8];
  centerTopConstraint = self->_centerTopConstraint;
  self->_centerTopConstraint = v77;

  [v38 addObject:self->_centerTopConstraint];
  v79 = [v67 heightAnchor];
  v80 = [v79 constraintEqualToConstant:v22];
  centerHeightConstraint = self->_centerHeightConstraint;
  self->_centerHeightConstraint = v80;

  [v38 addObject:self->_centerHeightConstraint];
  v82 = [v67 leadingAnchor];
  v83 = [v212 trailingAnchor];
  v84 = [v82 constraintEqualToAnchor:v83 constant:v19];
  [v38 addObject:v84];

  v85 = [v211 leadingAnchor];
  v206 = v67;
  v86 = [v67 trailingAnchor];
  v87 = [v85 constraintEqualToAnchor:v86 constant:v19];
  [v38 addObject:v87];

  [v34 _ui_addSubLayoutItem:v67];
  [v213 addObject:v209];

  v88 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"background"];
  v89 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v90 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  [(STUIStatusBarRegionAxesLayout *)v89 setHorizontalLayout:v90];

  v91 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  [(STUIStatusBarRegionAxesLayout *)v89 setVerticalLayout:v91];

  [(STUIStatusBarRegion *)v88 setLayout:v89];
  v92 = [(STUIStatusBarRegion *)v88 layoutItem];
  v93 = [v92 leadingAnchor];
  v94 = [v34 leadingAnchor];
  v95 = [v93 constraintEqualToAnchor:v94];
  [v203 addObject:v95];

  v96 = [v92 trailingAnchor];
  v97 = [v34 trailingAnchor];
  v98 = [v96 constraintEqualToAnchor:v97];
  [v203 addObject:v98];

  v99 = [v92 topAnchor];
  v100 = [v34 topAnchor];
  v101 = [v99 constraintEqualToAnchor:v100];
  [v203 addObject:v101];

  v102 = [v92 heightAnchor];
  [objc_opt_class() height];
  v103 = [v102 constraintEqualToConstant:?];
  backgroundHeightConstraint = self->_backgroundHeightConstraint;
  self->_backgroundHeightConstraint = v103;

  [v203 addObject:self->_backgroundHeightConstraint];
  [v34 _ui_addSubLayoutItem:v92];

  [v213 addObject:v88];
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
  v111 = [(STUIStatusBarRegion *)v107 layoutItem];
  v112 = [v111 trailingAnchor];
  v113 = [v34 centerXAnchor];
  v114 = [v112 constraintEqualToAnchor:v113 constant:0.0];
  expandedLeadingBannerConstraint = self->_expandedLeadingBannerConstraint;
  self->_expandedLeadingBannerConstraint = v114;

  v116 = [v111 bottomAnchor];
  v117 = [v34 topAnchor];
  v118 = [v116 constraintEqualToAnchor:v117 constant:v204];
  expandedLeadingBottomConstraint = self->_expandedLeadingBottomConstraint;
  self->_expandedLeadingBottomConstraint = v118;

  [(NSLayoutConstraint *)self->_expandedLeadingBottomConstraint setIdentifier:@"UISB-expanded-leading-bottom"];
  [v203 addObject:self->_expandedLeadingBottomConstraint];
  v120 = [v111 leadingAnchor];
  v121 = [v34 leadingAnchor];
  v122 = [v120 constraintEqualToAnchor:v121 constant:v11];
  [v203 addObject:v122];

  v123 = [v111 heightAnchor];
  v124 = [v123 constraintEqualToConstant:v25];
  [v203 addObject:v124];

  v208 = v111;
  [v34 _ui_addSubLayoutItem:v111];

  [v213 addObject:v107];
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
  v129 = [(STUIStatusBarRegion *)v125 layoutItem];
  v130 = [v129 leadingAnchor];
  v131 = [v111 trailingAnchor];
  v132 = [v130 constraintEqualToAnchor:v131 constant:v17];
  expandedTopMiddleConstraint = self->_expandedTopMiddleConstraint;
  self->_expandedTopMiddleConstraint = v132;

  v134 = [v129 leadingAnchor];
  v135 = [v34 centerXAnchor];
  v136 = [v134 constraintEqualToAnchor:v135 constant:0.0];
  expandedTrailingBannerConstraint = self->_expandedTrailingBannerConstraint;
  self->_expandedTrailingBannerConstraint = v136;

  v138 = [v129 bottomAnchor];
  v139 = [v34 topAnchor];
  v140 = [v138 constraintEqualToAnchor:v139 constant:v204];
  expandedTrailingBottomConstraint = self->_expandedTrailingBottomConstraint;
  self->_expandedTrailingBottomConstraint = v140;

  [(NSLayoutConstraint *)self->_expandedTrailingBottomConstraint setIdentifier:@"UISB-expanded-trailing-bottom"];
  [v203 addObject:self->_expandedTrailingBottomConstraint];
  v142 = [v129 trailingAnchor];
  v143 = [v34 trailingAnchor];
  v144 = [v142 constraintEqualToAnchor:v143 constant:v57];
  [v203 addObject:v144];

  v145 = v129;
  v146 = [v129 heightAnchor];
  v147 = [v146 constraintEqualToConstant:v25];
  [v203 addObject:v147];

  [v203 addObject:self->_expandedTopMiddleConstraint];
  v210 = v129;
  v148 = [v129 widthAnchor];
  v149 = v111;
  v150 = [v111 widthAnchor];
  v151 = [v148 constraintEqualToAnchor:v150];
  LODWORD(v152) = 1131741184;
  v153 = [v151 _ui_constraintWithPriority:v152];
  [v203 addObject:v153];

  [v34 _ui_addSubLayoutItem:v145];
  [v213 addObject:v125];

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
  v158 = [(STUIStatusBarRegion *)v154 layoutItem];
  v159 = [v158 bottomAnchor];
  v160 = [v149 bottomAnchor];
  v161 = [v159 constraintEqualToAnchor:v160 constant:v106];
  [v203 addObject:v161];

  v162 = [v158 leadingAnchor];
  v163 = [v34 leadingAnchor];
  v164 = [v162 constraintEqualToAnchor:v163 constant:v11];
  [v203 addObject:v164];

  v165 = [v158 heightAnchor];
  v166 = [v165 constraintEqualToConstant:v25];
  [v203 addObject:v166];

  [v34 _ui_addSubLayoutItem:v158];
  [v213 addObject:v154];

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
  v171 = [(STUIStatusBarRegion *)v167 layoutItem];
  v172 = [v171 bottomAnchor];
  v173 = [v210 bottomAnchor];
  v174 = [v172 constraintEqualToAnchor:v173 constant:v106];
  [v203 addObject:v174];

  v175 = [(STUIStatusBarRegion *)v167 layoutItem];
  v176 = [v175 trailingAnchor];
  v177 = [v34 trailingAnchor];
  v178 = [v176 constraintEqualToAnchor:v177 constant:v57];
  [v203 addObject:v178];

  v179 = [(STUIStatusBarRegion *)v167 layoutItem];
  v180 = [v179 heightAnchor];
  v181 = [v180 constraintEqualToConstant:v25];
  [v203 addObject:v181];

  v182 = [(STUIStatusBarRegion *)v167 layoutItem];
  v183 = [v182 leadingAnchor];
  v205 = v158;
  v184 = [v158 trailingAnchor];
  v185 = [v183 constraintEqualToAnchor:v184 constant:v17];
  [v203 addObject:v185];

  v186 = [(STUIStatusBarRegion *)v167 layoutItem];
  v187 = [v186 widthAnchor];
  v188 = [v158 widthAnchor];
  v189 = [v187 constraintEqualToAnchor:v188];
  LODWORD(v190) = 1131741184;
  v191 = [v189 _ui_constraintWithPriority:v190];
  [v203 addObject:v191];

  v192 = [(STUIStatusBarRegion *)v167 layoutItem];
  [v34 _ui_addSubLayoutItem:v192];

  [v213 addObject:v167];
  v193 = STUIStatusBarAddLumaView(v34, v203, v212, 1, v207);
  [(STUIStatusBarVisualProvider_LegacyPhone *)self setLeadingBackgroundLumaView:v193];

  v194 = STUIStatusBarAddLumaView(v34, v203, v206, 0, v207);
  [(STUIStatusBarVisualProvider_LegacyPhone *)self setCenterBackgroundLumaView:v194];

  v195 = STUIStatusBarAddLumaView(v34, v203, v211, 2, v207);

  [(STUIStatusBarVisualProvider_LegacyPhone *)self setTrailingBackgroundLumaView:v195];
  v196 = objc_alloc(MEMORY[0x277D760C8]);
  v197 = [(STUIStatusBarVisualProvider_LegacyPhone *)self leadingBackgroundLumaView];
  v214[0] = v197;
  v198 = [(STUIStatusBarVisualProvider_LegacyPhone *)self centerBackgroundLumaView];
  v214[1] = v198;
  v199 = [(STUIStatusBarVisualProvider_LegacyPhone *)self trailingBackgroundLumaView];
  v214[2] = v199;
  v200 = [MEMORY[0x277CBEA60] arrayWithObjects:v214 count:3];
  v201 = [v196 initWithTransitionBoundaries:self minimumDifference:v200 delegate:0.4 views:{0.7, 0.5}];
  [(STUIStatusBarVisualProvider_iOS *)self setLumaTrackingGroup:v201];

  [MEMORY[0x277CCAAD0] activateConstraints:v203];

  return v213;
}

- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)a3
{
  v192[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  orderedDisplayItemPlacements = self->_orderedDisplayItemPlacements;
  if (!orderedDisplayItemPlacements)
  {
    v167 = v4;
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    LOBYTE(v142) = 1;
    v9 = [STUIStatusBarDisplayItemPlacementNetworkGroup groupWithHighPriority:1300 lowPriority:1000 cellularItemClass:v7 wifiItemClass:v8 cellularTypeClass:objc_opt_class() includeCellularName:1 allowDualNetwork:v142];
    v10 = [v9 cellularGroup];
    v11 = [v10 namePlacement];

    v12 = [v9 cellularGroup];
    v13 = [v12 dualNamePlacement];

    v14 = [v9 cellularGroup];
    v15 = [v14 dualNameAndTypePlacement];

    v16 = +[(STUIStatusBarItem *)STUIStatusBarNavigationItem];
    v17 = +[STUIStatusBarDisplayItemPlacement placementWithIdentifier:priority:](STUIStatusBarDisplayItemPlacement, "placementWithIdentifier:priority:", v16, [v9 maximumPriority] + 1);
    v165 = v13;
    v166 = v11;
    v192[0] = v11;
    v192[1] = v13;
    v164 = v15;
    v192[2] = v15;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v192 count:3];
    v19 = [v17 excludingPlacements:v18];

    if ([(STUIStatusBarVisualProvider_iOS *)self hasCellularCapability])
    {
      [v6 addObject:v19];
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

      [v6 addObject:v24];
      if (v20)
      {
        [v6 addObject:v20];
        v21 = 0;
      }

      v19 = v24;
    }

    v163 = v19;
    v175 = self;
    v25 = [MEMORY[0x277CBEB18] array];
    v26 = [v9 cellularGroup];
    v27 = [v26 placementsAffectedByAirplaneMode];
    [v25 addObjectsFromArray:v27];

    if ((v21 & 1) == 0)
    {
      [v25 addObject:v20];
    }

    v162 = v20;
    v28 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAirplaneModeItem];
    v29 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v28 priority:1400];
    v161 = v25;
    v30 = [v29 excludingPlacements:v25];
    v178 = v6;
    [v6 addObject:v30];

    v31 = [v9 minimumPriority];
    v32 = [STUIStatusBarDisplayItemPlacement spacerPlacementWithSize:v31 - 5 priority:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    v33 = [v9 cellularGroup];
    v34 = [v33 typePlacement];
    v190[0] = v34;
    v35 = [v9 cellularGroup];
    [v35 namePlacement];
    v36 = v9;
    v37 = v174 = v9;
    v190[1] = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v190 count:2];
    v39 = [v32 requiringAllPlacements:v38];

    v176 = [v36 placements];
    v147 = [v176 arrayByAddingObject:v39];
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
    v149 = [v39 identifier];
    v189[7] = v149;
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

    v177 = [MEMORY[0x277CBEB18] array];
    v50 = +[(STUIStatusBarItem *)STUIStatusBarLockItem];
    v173 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v50 priority:3000];

    v51 = +[STUIStatusBarLockItem textDisplayIdentifier];
    v52 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v51 priority:2999];
    v53 = [v174 cellularGroup];
    v54 = [v53 dualNamePlacement];
    v188[0] = v54;
    v55 = [v174 cellularGroup];
    v56 = [v55 dualNameAndTypePlacement];
    v188[1] = v56;
    v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v188 count:2];
    v58 = [v52 excludingPlacements:v57];

    v59 = +[STUIStatusBarTimeItem timeDisplayIdentifier];
    v60 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v59 priority:3002];
    v187[0] = v58;
    v61 = [v174 cellularGroup];
    v62 = [v61 dualNamePlacement];
    v187[1] = v62;
    v63 = [v174 cellularGroup];
    v64 = [v63 dualNameAndTypePlacement];
    v187[2] = v64;
    v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v187 count:3];
    v171 = [v60 excludingPlacements:v65];

    v66 = v177;
    [v177 addObject:v173];
    v159 = v58;
    [v177 addObject:v58];
    v67 = +[STUIStatusBarSettingsDomain rootSettings];
    v68 = [v67 visualProviderSettings];
    LODWORD(v61) = [v68 fullWidthBackgroundActivity];

    if (v61)
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

      v66 = v177;
      v80 = [(STUIStatusBarVisualProvider_Phone *)v175 pillRegionCoordinator];
      [v80 setBackgroundActivityDetailPlacement:v79];

      [v177 addObject:v70];
      [v177 addObject:v74];
      [v177 addObject:v79];
    }

    [v66 addObject:v171];
    v81 = [MEMORY[0x277CBEB18] array];
    v82 = +[(STUIStatusBarItem *)STUIStatusBarSensorActivityItem];
    v83 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v82 priority:1960];
    [v81 addObject:v83];

    v84 = [STUIStatusBarIndicatorLocationItem groupWithPriority:1955];
    v85 = [v84 placements];
    [v81 addObjectsFromArray:v85];

    v86 = +[STUIStatusBarSettingsDomain rootSettings];
    v87 = [v86 visualProviderSettings];
    v88 = [v87 fullWidthBackgroundActivity];

    if ((v88 & 1) == 0)
    {
      v89 = +[STUIStatusBarPillBackgroundActivityItem pillCombinedDisplayIdentifier];
      v90 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v89 priority:1950];

      [v81 addObject:v90];
    }

    v91 = +[(STUIStatusBarItem *)STUIStatusBarVoiceControlPillItem];
    v92 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v91 priority:1940];
    [v81 addObject:v92];

    [(STUIStatusBarVisualProvider_iOS *)v175 bluetoothPaddingInset];
    v93 = [STUIStatusBarDisplayItemPlacementIndicatorsGroup groupWithHighPriority:800 lowPriority:500 bluetoothPaddingInset:?];
    v169 = +[STUIStatusBarDisplayItemPlacementBatteryGroup groupWithHighPriority:lowPriority:](STUIStatusBarDisplayItemPlacementBatteryGroup, "groupWithHighPriority:lowPriority:", [v93 maximumPriority] + 1, objc_msgSend(v93, "minimumPriority") - 5);
    v94 = [v93 placements];
    v154 = +[STUIStatusBarBluetoothItem batteryDisplayIdentifier];
    v157 = v93;
    v183[0] = v154;
    v152 = [v93 bluetoothInsetPaddingItem];
    v150 = [v152 identifier];
    v183[1] = v150;
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
    _reorderedPlacementsFromGroupForLegacyLayout(v94, 1, v101);
    v103 = v102 = v81;
    [v102 addObjectsFromArray:v103];

    v104 = +[(STUIStatusBarItem *)STUIStatusBarBuildVersionItem];
    v105 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v104 priority:2];
    [v102 addObject:v105];

    v106 = [v169 placements];
    v107 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorLiquidDetectionItem];
    v182[0] = v107;
    v108 = +[STUIStatusBarBatteryItem staticIconDisplayIdentifier];
    v182[1] = v108;
    v109 = +[STUIStatusBarBatteryItem percentDisplayIdentifier];
    v182[2] = v109;
    v110 = [MEMORY[0x277CBEA60] arrayWithObjects:v182 count:3];
    v111 = _reorderedPlacementsFromGroupForLegacyLayout(v106, 1, v110);
    v155 = v102;
    [v102 addObjectsFromArray:v111];

    v112 = [MEMORY[0x277CBEB18] array];
    v113 = objc_opt_class();
    v114 = objc_opt_class();
    LOBYTE(v143) = 0;
    v115 = [STUIStatusBarDisplayItemPlacementNetworkGroup groupWithHighPriority:2500 lowPriority:2200 cellularItemClass:v113 wifiItemClass:v114 cellularTypeClass:objc_opt_class() includeCellularName:1 allowDualNetwork:v143];
    v116 = [v115 wifiGroup];
    lowerWifiGroup = v175->_lowerWifiGroup;
    v175->_lowerWifiGroup = v116;

    v118 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAirplaneModeItem];
    v119 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v118 priority:5000];
    v120 = [(STUIStatusBarVisualProvider_iOS *)v175 expandedCellularPlacementsAffectedByAirplaneMode];
    v121 = [v115 cellularGroup];
    v122 = [v121 placementsAffectedByAirplaneMode];
    v123 = [v120 arrayByAddingObjectsFromArray:v122];
    v124 = [v119 excludingPlacements:v123];
    [v112 addObject:v124];

    v125 = [v115 placements];
    [v112 addObjectsFromArray:v125];

    v126 = [MEMORY[0x277CBEB18] array];
    v127 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorLocationItem];
    v128 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v127 priority:1450];
    [v126 addObject:v128];

    [(STUIStatusBarVisualProvider_iOS *)v175 bluetoothPaddingInset];
    v129 = [STUIStatusBarDisplayItemPlacementIndicatorsGroup groupWithHighPriority:1400 lowPriority:1000 bluetoothPaddingInset:?];
    v130 = [v129 placements];
    [v126 addObjectsFromArray:v130];

    v131 = +[STUIStatusBarSettingsDomain rootSettings];
    v132 = [v131 visualProviderSettings];
    LODWORD(v121) = [v132 fullWidthBackgroundActivity];

    if (v121)
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
    v180[2] = v177;
    v180[3] = v135;
    v179[4] = @"expandedLeading";
    v136 = [(STUIStatusBarVisualProvider_iOS *)v175 expandedLeadingPlacements];
    v180[4] = v136;
    v180[5] = v112;
    v179[5] = @"expandedLowerLeading";
    v179[6] = @"expandedTrailing";
    v137 = [(STUIStatusBarVisualProvider_iOS *)v175 expandedTrailingPlacements];
    v179[7] = @"expandedLowerTrailing";
    v180[6] = v137;
    v180[7] = v126;
    v138 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v180 forKeys:v179 count:8];
    v139 = v175->_orderedDisplayItemPlacements;
    v175->_orderedDisplayItemPlacements = v138;

    orderedDisplayItemPlacements = v175->_orderedDisplayItemPlacements;
    v4 = v167;
  }

  v140 = [(NSDictionary *)orderedDisplayItemPlacements objectForKeyedSubscript:v4];

  return v140;
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
      [v5 setMarqueeServiceName:{-[STUIStatusBarVisualProvider_iOS onLockScreen](self, "onLockScreen")}];
      objc_storeStrong(&self->_condensedCellularItem, a3);
    }

    [v5 setTypeStringProvider:self];
  }

  else
  {
    v6 = [v11 identifier];
    v7 = +[(STUIStatusBarItem *)STUIStatusBarVoiceControlPillItem];

    if (v6 == v7)
    {
      v10 = v11;
      [(STUIStatusBarVisualProvider_LegacyPhone *)self smallPillSize];
      [v10 setPillSize:?];
    }

    else
    {
      v8 = [v11 identifier];
      v9 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorLiquidDetectionItem];

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
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"GPRS" value:&stru_287D04F38 table:0];
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
  if (a3 <= 0xF)
  {
    if (((1 << a3) & 0xF8C0) != 0)
    {
      v9 = [v6 fontDescriptor];
      v10 = [v9 fontDescriptorWithSymbolicTraits:64];

      v11 = MEMORY[0x277D74300];
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
      v17 = MEMORY[0x277D74300];
      v10 = [v7 fontDescriptor];
      v11 = v17;
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
  v24[1] = *MEMORY[0x277D85DE8];
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
    v21.receiver = self;
    v21.super_class = STUIStatusBarVisualProvider_LegacyPhone;
    [(STUIStatusBarVisualProvider_Phone *)&v21 actionable:v8 highlighted:v6 initialPress:v5];
    goto LABEL_8;
  }

  v11 = [v9 identifier];
  v12 = +[STUIStatusBarPillBackgroundActivityItem pillCombinedDisplayIdentifier];
  v13 = v12;
  if (v11 != v12)
  {
    v14 = [v10 identifier];
    v15 = +[(STUIStatusBarBackgroundActivityItem *)STUIStatusBarFullBackgroundActivityItem];

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
    v16 = objc_alloc_init(STUIStatusBarRoundedCornerView);
    [(STUIStatusBarRoundedCornerView *)v16 setAutoresizingMask:18];
    v17 = [v10 identifier];
    v18 = +[(STUIStatusBarBackgroundActivityItem *)STUIStatusBarFullBackgroundActivityItem];

    if (v17 == v18)
    {
      [(STUIStatusBarRoundedCornerView *)v16 setCornerRadius:0.0];
    }

    [v10 setHighlightView:v16];
  }

  v19 = MEMORY[0x277D75220];
  v24[0] = v16;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __79__STUIStatusBarVisualProvider_LegacyPhone_actionable_highlighted_initialPress___block_invoke;
  v22[3] = &__block_descriptor_33_e16_v16__0__UIView_8l;
  v23 = v6;
  [v19 _setVisuallyHighlighted:v6 forViews:v20 initialPress:v5 highlightBlock:v22];

LABEL_8:
}

- (id)willUpdateWithData:(id)a3
{
  v15.receiver = self;
  v15.super_class = STUIStatusBarVisualProvider_LegacyPhone;
  v4 = a3;
  v5 = [(STUIStatusBarVisualProvider_Phone *)&v15 willUpdateWithData:v4];
  v6 = [v4 backgroundActivityEntry];

  if (v6)
  {
    v7 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    v8 = [v7 currentAggregatedData];
    v9 = [v8 backgroundActivityEntry];

    LODWORD(v7) = [v6 isEnabled];
    if (v7 != [v9 isEnabled])
    {
      if ([v6 isEnabled])
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

      v11 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
      v12 = [v11 regions];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __62__STUIStatusBarVisualProvider_LegacyPhone_willUpdateWithData___block_invoke;
      v14[3] = &__block_descriptor_40_e46_v32__0__NSString_8__STUIStatusBarRegion_16_B24l;
      v14[4] = v10;
      [v12 enumerateKeysAndObjectsUsingBlock:v14];
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

- (id)additionAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[STUIStatusBarFullBackgroundActivityItem detailDisplayIdentifier];

  if (v8 == v6)
  {
    v13 = +[STUIStatusBarAnimationFactory noAnimation];
    v14 = +[STUIStatusBarTimeItem timeDisplayIdentifier];
    [v7 addSubAnimation:v13 forDisplayItemWithIdentifier:v14];

    v15 = +[STUIStatusBarAnimationFactory noAnimation];
    v16 = +[(STUIStatusBarItem *)STUIStatusBarFullBackgroundActivityItem];
    [v7 addSubAnimation:v15 forDisplayItemWithIdentifier:v16];

    v17 = +[STUIStatusBarAnimationFactory noAnimation];
    v18 = +[(STUIStatusBarBackgroundActivityItem *)STUIStatusBarFullBackgroundActivityItem];
    [v7 addSubAnimation:v17 forDisplayItemWithIdentifier:v18];

    v12 = v7;
  }

  else
  {
    v9 = +[STUIStatusBarCellularCondensedItem dualSingleLineNameDisplayIdentifier];
    v10 = v9;
    if (v9 == v6)
    {
    }

    else
    {
      v11 = +[STUIStatusBarCellularCondensedItem dualSingleLineNameAndTypeDisplayIdentifier];

      if (v11 != v6)
      {
        v21.receiver = self;
        v21.super_class = STUIStatusBarVisualProvider_LegacyPhone;
        v12 = [(STUIStatusBarVisualProvider_Phone *)&v21 additionAnimationForDisplayItemWithIdentifier:v6 itemAnimation:v7];
        goto LABEL_8;
      }
    }

    v12 = [(STUIStatusBarVisualProvider_LegacyPhone *)self _animationForSingleLineDualCarrier];
  }

LABEL_8:
  v19 = v12;

  return v19;
}

- (id)removalAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[STUIStatusBarFullBackgroundActivityItem detailDisplayIdentifier];

  if (v8 == v6)
  {
    v12 = [(STUIStatusBarVisualProvider_LegacyPhone *)self _backgroundActivityDetailRemovalAnimation];
  }

  else
  {
    v9 = +[STUIStatusBarCellularCondensedItem dualSingleLineNameDisplayIdentifier];
    v10 = v9;
    if (v9 == v6)
    {
    }

    else
    {
      v11 = +[STUIStatusBarCellularCondensedItem dualSingleLineNameAndTypeDisplayIdentifier];

      if (v11 != v6)
      {
        v15.receiver = self;
        v15.super_class = STUIStatusBarVisualProvider_LegacyPhone;
        v12 = [(STUIStatusBarVisualProvider_Phone *)&v15 removalAnimationForDisplayItemWithIdentifier:v6 itemAnimation:v7];
        goto LABEL_8;
      }
    }

    v12 = [(STUIStatusBarVisualProvider_LegacyPhone *)self _animationForSingleLineDualCarrier];
  }

LABEL_8:
  v13 = v12;

  return v13;
}

- (id)overriddenStyleAttributesForDisplayItemWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[(STUIStatusBarItem *)STUIStatusBarFullBackgroundActivityItem];
  v5 = v4;
  if (v4 == v3)
  {
  }

  else
  {
    v6 = +[(STUIStatusBarBackgroundActivityItem *)STUIStatusBarFullBackgroundActivityItem];

    if (v6 != v3)
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

- (id)regionIdentifiersForPartWithIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:@"leadingPartIdentifier"])
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

  if ([v4 isEqual:@"trailingPartIdentifier"])
  {
    [MEMORY[0x277CBEB98] setWithObjects:{@"trailing", @"expandedTrailing", @"expandedLowerTrailing", 0, v21}];
    goto LABEL_15;
  }

  if ([v4 isEqual:@"centerPartIdentifier"])
  {
    [MEMORY[0x277CBEB98] setWithObjects:{@"center", @"background", 0, v19, v21}];
    goto LABEL_15;
  }

  if ([v4 isEqual:@"normalPartIdentifier"])
  {
    v5 = MEMORY[0x277CBEB98];
    v20 = @"trailing";
    v21 = 0;
    v6 = @"background";
    v7 = @"center";
    goto LABEL_3;
  }

  if ([v4 isEqual:@"expandedPartIdentifier"])
  {
    goto LABEL_11;
  }

  if ([v4 isEqual:@"expandedPartTopIdentifier"])
  {
LABEL_13:
    v8 = MEMORY[0x277CBEB98];
    v17 = @"expandedTrailing";
    v18 = 0;
    goto LABEL_14;
  }

  if ([v4 isEqual:@"expandedBottomPartIdentifier"])
  {
    [MEMORY[0x277CBEB98] setWithObjects:{@"expandedLowerLeading", @"expandedLowerTrailing", 0, v19, v21}];
    goto LABEL_15;
  }

  if ([v4 isEqual:@"visibleExpandedPartIdentifier"])
  {
    v12 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    v13 = [v12 currentData];
    v14 = [v13 secondaryCellularEntry];
    if ([v14 isEnabled])
    {
      v15 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
      v16 = [v15 orientation] - 1;

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

- (id)styleAttributesForStyle:(int64_t)a3
{
  v19.receiver = self;
  v19.super_class = STUIStatusBarVisualProvider_LegacyPhone;
  v4 = [(STUIStatusBarVisualProvider_iOS *)&v19 styleAttributesForStyle:a3];
  v5 = [v4 mode];
  if (v5 <= 5)
  {
    if (((1 << v5) & 0xE) != 0)
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

      v9 = [(STUIStatusBarVisualProvider_LegacyPhone *)self expandedFont];
      [v4 setFont:v9];

      v10 = [v4 font];
      [v4 setSmallFont:v10];

      v11 = [(STUIStatusBarVisualProvider_LegacyPhone *)self expandedFont];
    }

    else
    {
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

      v15 = [(STUIStatusBarVisualProvider_LegacyPhone *)self normalFont];
      [v4 setFont:v15];

      v16 = [v4 font];
      [v4 setSmallFont:v16];

      v11 = [(STUIStatusBarVisualProvider_LegacyPhone *)self timeFont];
    }

    v17 = v11;
    [v4 setEmphasizedFont:v11];
  }

  [v4 setImageNamePrefixes:&unk_287D1AE40];

  return v4;
}

- (id)displayItemIdentifiersForPartWithIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:@"clockPartIdentifier"])
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = +[STUIStatusBarTimeItem timeDisplayIdentifier];
    v7 = [v5 setWithObject:v6];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = STUIStatusBarVisualProvider_LegacyPhone;
    v7 = [(STUIStatusBarVisualProvider_iOS *)&v9 displayItemIdentifiersForPartWithIdentifier:v4];
  }

  return v7;
}

- (CGRect)clockBoundsForLayoutItem:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = +[STUIStatusBarTimeItem timeDisplayIdentifier];

  v7 = [v4 view];

  if (v5 == v6)
  {
    v16 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    v17 = [v16 currentAggregatedData];
    v18 = [v17 shortTimeEntry];
    v19 = [v18 stringValue];

    _StatusBar_UITimeSizeForLabel();
    v13 = v20;
    v15 = v21;
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

- (void)orientationUpdatedFromOrientation:(int64_t)a3
{
  v4 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  [v4 avoidanceFrame];
  [(STUIStatusBarVisualProvider_LegacyPhone *)self _updateExpandedConstraintsForAvoidanceFrame:?];

  v6 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  v5 = [v6 currentAggregatedData];
  [(STUIStatusBarVisualProvider_LegacyPhone *)self _updateLowerRegionsWithData:v5];
}

- (void)avoidanceFrameUpdatedFromFrame:(CGRect)a3 withAnimationSettings:(id)a4 options:(unint64_t)a5
{
  v6 = [(STUIStatusBarVisualProvider_iOS *)self statusBar:a4];
  [v6 avoidanceFrame];
  [(STUIStatusBarVisualProvider_LegacyPhone *)self _updateExpandedConstraintsForAvoidanceFrame:?];
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
      v7 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
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
      v10 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
      [v10 updateWithAnimations:MEMORY[0x277CBEBF8]];
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

- (void)updateDataForService:(id)a3
{
  v6.receiver = self;
  v6.super_class = STUIStatusBarVisualProvider_LegacyPhone;
  v4 = a3;
  [(STUIStatusBarVisualProvider_iOS *)&v6 updateDataForService:v4];
  v5 = [v4 secondaryCellularEntry];

  if (v5)
  {
    -[STUIStatusBarDisplayItemPlacementGroup setEnabled:](self->_lowerWifiGroup, "setEnabled:", [v5 type] != 0);
  }
}

- (void)_updateBackgroundHeight
{
  [(STUIStatusBarVisualProvider_LegacyPhone *)self effectiveHeight];
  backgroundHeightConstraint = self->_backgroundHeightConstraint;

  [(NSLayoutConstraint *)backgroundHeightConstraint setConstant:?];
}

- (void)setExpanded:(BOOL)a3
{
  v3 = a3;
  if ([(STUIStatusBarVisualProvider_iOS *)self expanded]!= a3)
  {
    v5 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
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

      v10 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
      v11 = [v10 regions];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __55__STUIStatusBarVisualProvider_LegacyPhone_setExpanded___block_invoke;
      v13[3] = &__block_descriptor_40_e46_v32__0__NSString_8__STUIStatusBarRegion_16_B24l;
      v13[4] = v9;
      [v11 enumerateKeysAndObjectsUsingBlock:v13];
    }

    v12.receiver = self;
    v12.super_class = STUIStatusBarVisualProvider_LegacyPhone;
    [(STUIStatusBarVisualProvider_iOS *)&v12 setExpanded:v3];
    [(STUIStatusBarVisualProvider_LegacyPhone *)self _updateBackgroundHeight];
  }
}

- (void)_updateExpandedConstraintsForAvoidanceFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (-[STUIStatusBarVisualProvider_iOS expanded](self, "expanded") && (-[STUIStatusBarVisualProvider_iOS statusBar](self, "statusBar"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 orientation] - 3, v8, v9 <= 1))
  {
    v27 = 0.0;
    v28 = 0.0;
    v10 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    [v10 frame];
    MidX = CGRectGetMidX(v30);
    v12 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    STUIStatusBarGetLeadingAndTrailingParts([v12 _shouldReverseLayoutDirection], &v28, &v27, x, y, width, height, MidX);

    v13 = fmax(v28, v27);
    v14 = v13 > 0.0;
    if (v13 > 0.0)
    {
      [(STUIStatusBarVisualProvider_iOS *)self expandedItemSpacing];
      v28 = v15 + v28;
      [(STUIStatusBarVisualProvider_iOS *)self expandedItemSpacing];
      v27 = v16 + v27;
    }

    v17 = [(STUIStatusBarVisualProvider_LegacyPhone *)self expandedTopMiddleConstraint];
    [v17 setActive:v14 ^ 1];

    v18 = [(STUIStatusBarVisualProvider_LegacyPhone *)self expandedLeadingBannerConstraint];
    [v18 setActive:v14];

    v19 = -v28;
    v20 = [(STUIStatusBarVisualProvider_LegacyPhone *)self expandedLeadingBannerConstraint];
    [v20 setConstant:v19];

    v21 = [(STUIStatusBarVisualProvider_LegacyPhone *)self expandedTrailingBannerConstraint];
    [v21 setActive:v14];

    v22 = v27;
    v23 = [(STUIStatusBarVisualProvider_LegacyPhone *)self expandedTrailingBannerConstraint];
    [v23 setConstant:v22];
  }

  else
  {
    v24 = [(STUIStatusBarVisualProvider_LegacyPhone *)self expandedTopMiddleConstraint];
    [v24 setActive:1];

    v25 = [(STUIStatusBarVisualProvider_LegacyPhone *)self expandedLeadingBannerConstraint];
    [v25 setActive:0];

    v26 = [(STUIStatusBarVisualProvider_LegacyPhone *)self expandedTrailingBannerConstraint];
    [v26 setActive:0];
  }
}

- (void)_updateLockScreenSizing
{
  v3 = [(STUIStatusBarVisualProvider_iOS *)self onLockScreen];
  if (v3)
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
  [(STUIStatusBarCellularItem *)self->_condensedCellularItem setMarqueeServiceName:v3];
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

- (void)setOnLockScreen:(BOOL)a3
{
  v3 = a3;
  if ([(STUIStatusBarVisualProvider_iOS *)self onLockScreen]!= a3)
  {
    v5.receiver = self;
    v5.super_class = STUIStatusBarVisualProvider_LegacyPhone;
    [(STUIStatusBarVisualProvider_iOS *)&v5 setOnLockScreen:v3];
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
  v3 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  [v3 bounds];
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

- (id)regionIdentifiersForBackgroundLumaView:(id)a3
{
  v4 = a3;
  v5 = [(STUIStatusBarVisualProvider_LegacyPhone *)self leadingBackgroundLumaView];

  if (v5 == v4)
  {
    [MEMORY[0x277CBEB98] setWithObjects:{@"leading", 0}];
  }

  else
  {
    v6 = [(STUIStatusBarVisualProvider_LegacyPhone *)self trailingBackgroundLumaView];

    if (v6 == v4)
    {
      [MEMORY[0x277CBEB98] setWithObjects:{@"trailing", 0}];
    }

    else
    {
      v7 = [(STUIStatusBarVisualProvider_LegacyPhone *)self centerBackgroundLumaView];

      if (v7 != v4)
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