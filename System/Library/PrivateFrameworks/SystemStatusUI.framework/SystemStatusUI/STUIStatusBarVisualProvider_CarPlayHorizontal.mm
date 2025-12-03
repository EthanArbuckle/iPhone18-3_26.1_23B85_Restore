@interface STUIStatusBarVisualProvider_CarPlayHorizontal
+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)orientation;
- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)identifier;
- (id)setupInContainerView:(id)view;
- (void)_updateDockGuideConstraintsForAvoidanceFrame:(CGRect)frame;
- (void)avoidanceFrameUpdatedFromFrame:(CGRect)frame withAnimationSettings:(id)settings options:(unint64_t)options;
@end

@implementation STUIStatusBarVisualProvider_CarPlayHorizontal

+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)orientation
{
  v3 = *MEMORY[0x277D77260];
  v4 = 45.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)setupInContainerView:(id)view
{
  v204[14] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  array = [MEMORY[0x277CBEB18] array];
  v6 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"time"];
  v7 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v8 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  [(STUIStatusBarRegionAxesLayout *)v7 setHorizontalLayout:v8];

  v9 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  [(STUIStatusBarRegionAxesLayout *)v7 setVerticalLayout:v9];

  v195 = v7;
  [(STUIStatusBarRegion *)v6 setLayout:v7];
  [(STUIStatusBarVisualProvider_CarPlay *)self setTimeRegion:v6];
  v10 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"pill"];
  v11 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v12 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  [(STUIStatusBarRegionAxesLayout *)v11 setHorizontalLayout:v12];

  v13 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  [(STUIStatusBarRegionAxesLayout *)v11 setVerticalLayout:v13];

  v193 = v11;
  [(STUIStatusBarRegion *)v10 setLayout:v11];
  [(STUIStatusBarRegion *)v10 setActionInsets:-10.0, -10.0, -10.0, -10.0];
  pillRegionCoordinator = [(STUIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
  v194 = v10;
  [pillRegionCoordinator setPillRegion:v10];

  v15 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"pillContent"];
  pillRegionCoordinator2 = [(STUIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
  pillRegion = [pillRegionCoordinator2 pillRegion];
  [(STUIStatusBarRegion *)v15 setEnabilityRegion:pillRegion];

  v18 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v19 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  [(STUIStatusBarRegionAxesLayout *)v18 setHorizontalLayout:v19];

  v20 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  [(STUIStatusBarRegionAxesLayout *)v18 setVerticalLayout:v20];

  v191 = v18;
  v192 = v15;
  [(STUIStatusBarRegion *)v15 setLayout:v18];
  v21 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"sensorActivity"];
  v22 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v23 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  [(STUIStatusBarRegionAxesLayout *)v22 setHorizontalLayout:v23];

  v24 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  [(STUIStatusBarRegionAxesLayout *)v22 setVerticalLayout:v24];

  v201 = v21;
  v190 = v22;
  [(STUIStatusBarRegion *)v21 setLayout:v22];
  v25 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"oppositeDriver"];
  v26 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v27 = objc_alloc_init(STUIStatusBarRegionAxisCenteringLayout);
  [(STUIStatusBarRegionAxisCenteringLayout *)v27 setInterspace:4.0];
  v188 = v27;
  [(STUIStatusBarRegionAxesLayout *)v26 setHorizontalLayout:v27];
  v28 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:1];
  [(STUIStatusBarRegionAxesLayout *)v26 setVerticalLayout:v28];

  v189 = v26;
  [(STUIStatusBarRegion *)v25 setLayout:v26];
  [(STUIStatusBarRegion *)v25 setActionInsets:-10.0, -10.0, -10.0, -10.0];
  v200 = v25;
  [(STUIStatusBarVisualProvider_CarPlay *)self setRadarRegion:v25];
  v29 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"driver"];
  v30 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v31 = objc_alloc_init(STUIStatusBarRegionAxisStackingLayout);
  [(STUIStatusBarRegionAxisStackingLayout *)v31 setAlignment:1];
  [(STUIStatusBarRegionAxisStackingLayout *)v31 setInterspace:4.0];
  [(STUIStatusBarRegionAxesLayout *)v30 setHorizontalLayout:v31];

  v32 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:1];
  [(STUIStatusBarRegionAxesLayout *)v30 setVerticalLayout:v32];

  v187 = v30;
  [(STUIStatusBarRegion *)v29 setLayout:v30];
  v199 = v29;
  [(STUIStatusBarRegion *)v29 setActionInsets:-10.0, -10.0, -10.0, -10.0];
  v33 = objc_alloc_init(MEMORY[0x277D756D0]);
  [viewCopy addLayoutGuide:v33];
  widthAnchor = [v33 widthAnchor];
  v35 = [widthAnchor constraintEqualToConstant:111.0];
  [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self setDockGuideWidthConstraint:v35];

  centerXAnchor = [v33 centerXAnchor];
  centerXAnchor2 = [viewCopy centerXAnchor];
  v38 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self setDockGuideCenterXConstraint:v38];

  dockGuideWidthConstraint = [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self dockGuideWidthConstraint];
  [array addObject:dockGuideWidthConstraint];

  topAnchor = [v33 topAnchor];
  topAnchor2 = [viewCopy topAnchor];
  v42 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [array addObject:v42];

  bottomAnchor = [v33 bottomAnchor];
  bottomAnchor2 = [viewCopy bottomAnchor];
  v45 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [array addObject:v45];

  dockGuideCenterXConstraint = [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self dockGuideCenterXConstraint];
  v47 = array;
  [array addObject:dockGuideCenterXConstraint];

  leftAnchor = [v33 leftAnchor];
  leftAnchor2 = [viewCopy leftAnchor];
  v50 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:0.0];
  [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self setDockGuideLeftConstraint:v50];

  v198 = v33;
  rightAnchor = [v33 rightAnchor];
  leftAnchor3 = [viewCopy leftAnchor];
  v53 = [rightAnchor constraintEqualToAnchor:leftAnchor3 constant:0.0];
  [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self setDockGuideRightConstraint:v53];

  statusBar = [(STUIStatusBarVisualProvider_CarPlay *)self statusBar];
  targetScreen = [statusBar targetScreen];
  LODWORD(v53) = [targetScreen _isRightHandDrive];

  v196 = v6;
  v197 = viewCopy;
  if (v53)
  {
    layoutItem = [(STUIStatusBarRegion *)v6 layoutItem];
    leftAnchor4 = [layoutItem leftAnchor];
    layoutItem2 = [(STUIStatusBarRegion *)v199 layoutItem];
    rightAnchor2 = [layoutItem2 rightAnchor];
    v60 = [leftAnchor4 constraintEqualToAnchor:rightAnchor2 constant:0.0];
    [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self setDriverSideConstraint:v60];

    layoutItem3 = [(STUIStatusBarRegion *)v6 layoutItem];
    centerYAnchor = [layoutItem3 centerYAnchor];
    safeAreaLayoutGuide = [viewCopy safeAreaLayoutGuide];
    [safeAreaLayoutGuide centerYAnchor];
    v183 = v185 = centerYAnchor;
    v182 = [centerYAnchor constraintEqualToAnchor:?];
    v204[0] = v182;
    layoutItem4 = [(STUIStatusBarRegion *)v6 layoutItem];
    heightAnchor = [layoutItem4 heightAnchor];
    v179 = [heightAnchor constraintEqualToConstant:18.0];
    v204[1] = v179;
    layoutItem5 = [(STUIStatusBarRegion *)v6 layoutItem];
    widthAnchor2 = [layoutItem5 widthAnchor];
    v176 = [widthAnchor2 constraintEqualToConstant:39.0];
    v204[2] = v176;
    layoutItem6 = [(STUIStatusBarRegion *)v6 layoutItem];
    rightAnchor3 = [layoutItem6 rightAnchor];
    safeAreaLayoutGuide2 = [viewCopy safeAreaLayoutGuide];
    [safeAreaLayoutGuide2 rightAnchor];
    v172 = v174 = rightAnchor3;
    v171 = [rightAnchor3 constraintEqualToAnchor:-8.0 constant:?];
    v204[3] = v171;
    layoutItem7 = [(STUIStatusBarRegion *)v201 layoutItem];
    centerYAnchor2 = [layoutItem7 centerYAnchor];
    safeAreaLayoutGuide3 = [viewCopy safeAreaLayoutGuide];
    [safeAreaLayoutGuide3 centerYAnchor];
    v167 = v169 = centerYAnchor2;
    v166 = [centerYAnchor2 constraintEqualToAnchor:?];
    v204[4] = v166;
    layoutItem8 = [(STUIStatusBarRegion *)v201 layoutItem];
    rightAnchor4 = [layoutItem8 rightAnchor];
    layoutItem9 = [(STUIStatusBarRegion *)v6 layoutItem];
    [layoutItem9 leftAnchor];
    v162 = v164 = rightAnchor4;
    v161 = [rightAnchor4 constraintEqualToAnchor:-4.0 constant:?];
    v204[5] = v161;
    layoutItem10 = [(STUIStatusBarRegion *)v200 layoutItem];
    heightAnchor2 = [layoutItem10 heightAnchor];
    v158 = [heightAnchor2 constraintEqualToConstant:45.0];
    v204[6] = v158;
    layoutItem11 = [(STUIStatusBarRegion *)v200 layoutItem];
    leftAnchor5 = [layoutItem11 leftAnchor];
    safeAreaLayoutGuide4 = [viewCopy safeAreaLayoutGuide];
    [safeAreaLayoutGuide4 leftAnchor];
    v154 = v156 = leftAnchor5;
    layoutItem19 = [leftAnchor5 constraintEqualToAnchor:10.0 constant:?];
    v204[7] = layoutItem19;
    layoutItem12 = [(STUIStatusBarRegion *)v200 layoutItem];
    rightAnchor5 = [layoutItem12 rightAnchor];
    leftAnchor6 = [v198 leftAnchor];
    safeAreaLayoutGuide7 = rightAnchor5;
    v149 = [rightAnchor5 constraintLessThanOrEqualToAnchor:leftAnchor6];
    v204[8] = v149;
    layoutItem13 = [(STUIStatusBarRegion *)v200 layoutItem];
    centerYAnchor3 = [layoutItem13 centerYAnchor];
    safeAreaLayoutGuide5 = [viewCopy safeAreaLayoutGuide];
    [safeAreaLayoutGuide5 centerYAnchor];
    v145 = v147 = centerYAnchor3;
    v144 = [centerYAnchor3 constraintEqualToAnchor:?];
    v204[9] = v144;
    layoutItem14 = [(STUIStatusBarRegion *)v199 layoutItem];
    centerYAnchor4 = [layoutItem14 centerYAnchor];
    safeAreaLayoutGuide6 = [viewCopy safeAreaLayoutGuide];
    [safeAreaLayoutGuide6 centerYAnchor];
    v140 = layoutItem20 = centerYAnchor4;
    layoutItem21 = [centerYAnchor4 constraintEqualToAnchor:?];
    v204[10] = layoutItem21;
    layoutItem15 = [(STUIStatusBarRegion *)v199 layoutItem];
    heightAnchor3 = [layoutItem15 heightAnchor];
    centerYAnchor8 = [heightAnchor3 constraintEqualToConstant:45.0];
    v204[11] = centerYAnchor8;
    driverSideConstraint = [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self driverSideConstraint];
    v204[12] = driverSideConstraint;
    layoutItem16 = [(STUIStatusBarRegion *)v199 layoutItem];
    leftAnchor7 = [layoutItem16 leftAnchor];
    rightAnchor6 = [v198 rightAnchor];
    v76 = [leftAnchor7 constraintEqualToAnchor:rightAnchor6];
    v204[13] = v76;
    v77 = v204;
  }

  else
  {
    layoutItem17 = [(STUIStatusBarRegion *)v199 layoutItem];
    leftAnchor8 = [layoutItem17 leftAnchor];
    layoutItem18 = [(STUIStatusBarRegion *)v6 layoutItem];
    rightAnchor7 = [layoutItem18 rightAnchor];
    v82 = [leftAnchor8 constraintEqualToAnchor:rightAnchor7 constant:0.0];
    [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self setDriverSideConstraint:v82];

    layoutItem3 = [(STUIStatusBarRegion *)v6 layoutItem];
    centerYAnchor5 = [layoutItem3 centerYAnchor];
    safeAreaLayoutGuide = [viewCopy safeAreaLayoutGuide];
    [safeAreaLayoutGuide centerYAnchor];
    v183 = v185 = centerYAnchor5;
    v182 = [centerYAnchor5 constraintEqualToAnchor:?];
    v203[0] = v182;
    layoutItem4 = [(STUIStatusBarRegion *)v6 layoutItem];
    heightAnchor = [layoutItem4 heightAnchor];
    v179 = [heightAnchor constraintEqualToConstant:18.0];
    v203[1] = v179;
    layoutItem5 = [(STUIStatusBarRegion *)v6 layoutItem];
    widthAnchor2 = [layoutItem5 widthAnchor];
    v176 = [widthAnchor2 constraintEqualToConstant:39.0];
    v203[2] = v176;
    layoutItem6 = [(STUIStatusBarRegion *)v6 layoutItem];
    leftAnchor9 = [layoutItem6 leftAnchor];
    safeAreaLayoutGuide2 = [viewCopy safeAreaLayoutGuide];
    [safeAreaLayoutGuide2 leftAnchor];
    v172 = v174 = leftAnchor9;
    v171 = [leftAnchor9 constraintEqualToAnchor:8.0 constant:?];
    v203[3] = v171;
    layoutItem7 = [(STUIStatusBarRegion *)v201 layoutItem];
    centerYAnchor6 = [layoutItem7 centerYAnchor];
    safeAreaLayoutGuide3 = [viewCopy safeAreaLayoutGuide];
    [safeAreaLayoutGuide3 centerYAnchor];
    v167 = v169 = centerYAnchor6;
    v166 = [centerYAnchor6 constraintEqualToAnchor:?];
    v203[4] = v166;
    layoutItem8 = [(STUIStatusBarRegion *)v201 layoutItem];
    leftAnchor10 = [layoutItem8 leftAnchor];
    layoutItem9 = [(STUIStatusBarRegion *)v6 layoutItem];
    [layoutItem9 rightAnchor];
    v162 = v164 = leftAnchor10;
    v161 = [leftAnchor10 constraintEqualToAnchor:4.0 constant:?];
    v203[5] = v161;
    layoutItem10 = [(STUIStatusBarRegion *)v200 layoutItem];
    heightAnchor2 = [layoutItem10 heightAnchor];
    v158 = [heightAnchor2 constraintEqualToConstant:45.0];
    v203[6] = v158;
    layoutItem11 = [(STUIStatusBarRegion *)v200 layoutItem];
    leftAnchor11 = [layoutItem11 leftAnchor];
    safeAreaLayoutGuide4 = [v198 rightAnchor];
    v156 = leftAnchor11;
    v154 = [leftAnchor11 constraintGreaterThanOrEqualToAnchor:safeAreaLayoutGuide4];
    v203[7] = v154;
    layoutItem19 = [(STUIStatusBarRegion *)v200 layoutItem];
    rightAnchor8 = [layoutItem19 rightAnchor];
    safeAreaLayoutGuide7 = [viewCopy safeAreaLayoutGuide];
    [safeAreaLayoutGuide7 rightAnchor];
    leftAnchor6 = layoutItem12 = rightAnchor8;
    v149 = [rightAnchor8 constraintEqualToAnchor:-10.0 constant:?];
    v203[8] = v149;
    layoutItem13 = [(STUIStatusBarRegion *)v200 layoutItem];
    centerYAnchor7 = [layoutItem13 centerYAnchor];
    safeAreaLayoutGuide5 = [viewCopy safeAreaLayoutGuide];
    [safeAreaLayoutGuide5 centerYAnchor];
    v145 = v147 = centerYAnchor7;
    v144 = [centerYAnchor7 constraintEqualToAnchor:?];
    v203[9] = v144;
    layoutItem14 = [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self driverSideConstraint];
    v203[10] = layoutItem14;
    layoutItem20 = [(STUIStatusBarRegion *)v199 layoutItem];
    safeAreaLayoutGuide6 = [layoutItem20 heightAnchor];
    v140 = [safeAreaLayoutGuide6 constraintEqualToConstant:45.0];
    v203[11] = v140;
    layoutItem21 = [(STUIStatusBarRegion *)v199 layoutItem];
    layoutItem15 = [layoutItem21 centerYAnchor];
    heightAnchor3 = [viewCopy safeAreaLayoutGuide];
    centerYAnchor8 = [heightAnchor3 centerYAnchor];
    driverSideConstraint = [layoutItem15 constraintEqualToAnchor:centerYAnchor8];
    v203[12] = driverSideConstraint;
    layoutItem16 = [(STUIStatusBarRegion *)v199 layoutItem];
    leftAnchor7 = [layoutItem16 rightAnchor];
    rightAnchor6 = [v198 leftAnchor];
    v76 = [leftAnchor7 constraintEqualToAnchor:rightAnchor6];
    v203[13] = v76;
    v77 = v203;
  }

  v90 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:14];
  [v47 addObjectsFromArray:v90];

  layoutItem22 = [(STUIStatusBarRegion *)v194 layoutItem];
  topAnchor3 = [layoutItem22 topAnchor];
  layoutItem23 = [(STUIStatusBarRegion *)v196 layoutItem];
  topAnchor4 = [layoutItem23 topAnchor];
  v95 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v47 addObject:v95];

  layoutItem24 = [(STUIStatusBarRegion *)v194 layoutItem];
  bottomAnchor3 = [layoutItem24 bottomAnchor];
  layoutItem25 = [(STUIStatusBarRegion *)v196 layoutItem];
  bottomAnchor4 = [layoutItem25 bottomAnchor];
  v100 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  [v47 addObject:v100];

  layoutItem26 = [(STUIStatusBarRegion *)v194 layoutItem];
  leadingAnchor = [layoutItem26 leadingAnchor];
  layoutItem27 = [(STUIStatusBarRegion *)v196 layoutItem];
  leadingAnchor2 = [layoutItem27 leadingAnchor];
  v105 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v47 addObject:v105];

  layoutItem28 = [(STUIStatusBarRegion *)v194 layoutItem];
  trailingAnchor = [layoutItem28 trailingAnchor];
  layoutItem29 = [(STUIStatusBarRegion *)v196 layoutItem];
  trailingAnchor2 = [layoutItem29 trailingAnchor];
  v110 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v47 addObject:v110];

  layoutItem30 = [(STUIStatusBarRegion *)v192 layoutItem];
  topAnchor5 = [layoutItem30 topAnchor];
  layoutItem31 = [(STUIStatusBarRegion *)v194 layoutItem];
  topAnchor6 = [layoutItem31 topAnchor];
  v115 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  [v47 addObject:v115];

  layoutItem32 = [(STUIStatusBarRegion *)v192 layoutItem];
  bottomAnchor5 = [layoutItem32 bottomAnchor];
  layoutItem33 = [(STUIStatusBarRegion *)v194 layoutItem];
  bottomAnchor6 = [layoutItem33 bottomAnchor];
  v120 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  [v47 addObject:v120];

  layoutItem34 = [(STUIStatusBarRegion *)v192 layoutItem];
  leadingAnchor3 = [layoutItem34 leadingAnchor];
  layoutItem35 = [(STUIStatusBarRegion *)v194 layoutItem];
  leadingAnchor4 = [layoutItem35 leadingAnchor];
  v125 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v47 addObject:v125];

  layoutItem36 = [(STUIStatusBarRegion *)v192 layoutItem];
  trailingAnchor3 = [layoutItem36 trailingAnchor];
  layoutItem37 = [(STUIStatusBarRegion *)v194 layoutItem];
  trailingAnchor4 = [layoutItem37 trailingAnchor];
  v130 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v47 addObject:v130];

  layoutItem38 = [(STUIStatusBarRegion *)v196 layoutItem];
  [v197 _ui_addSubLayoutItem:layoutItem38];

  layoutItem39 = [(STUIStatusBarRegion *)v201 layoutItem];
  [v197 _ui_addSubLayoutItem:layoutItem39];

  layoutItem40 = [(STUIStatusBarRegion *)v200 layoutItem];
  [v197 _ui_addSubLayoutItem:layoutItem40];

  layoutItem41 = [(STUIStatusBarRegion *)v199 layoutItem];
  [v197 _ui_addSubLayoutItem:layoutItem41];

  layoutItem42 = [(STUIStatusBarRegion *)v194 layoutItem];
  [v197 _ui_addSubLayoutItem:layoutItem42];

  layoutItem43 = [(STUIStatusBarRegion *)v192 layoutItem];
  [v197 _ui_addSubLayoutItem:layoutItem43];

  [MEMORY[0x277CCAAD0] activateConstraints:v47];
  v202[0] = v192;
  v202[1] = v194;
  v202[2] = v196;
  v202[3] = v201;
  v202[4] = v199;
  v202[5] = v200;
  v137 = [MEMORY[0x277CBEA60] arrayWithObjects:v202 count:6];

  return v137;
}

- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)identifier
{
  v103[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  orderedDisplayItemPlacements = self->_orderedDisplayItemPlacements;
  if (!orderedDisplayItemPlacements)
  {
    v65 = identifierCopy;
    v6 = +[STUIStatusBarTimeItem shortTimeDisplayIdentifier];
    v7 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v6 priority:500];

    v8 = +[(STUIStatusBarBackgroundActivityItem *)STUIStatusBarPillBackgroundActivityItem];
    v9 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v8 priority:600];
    v80 = v7;
    v103[0] = v7;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:1];
    v79 = [v9 excludingPlacements:v10];

    v11 = +[STUIStatusBarTimeItem pillTimeDisplayIdentifier];
    v12 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v11 priority:550];

    v13 = +[(STUIStatusBarItem *)STUIStatusBarPillBackgroundActivityItem];
    v14 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v13 priority:575];
    v78 = v12;
    v102 = v12;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v102 count:1];
    v16 = [v14 excludingPlacements:v15];

    pillRegionCoordinator = [(STUIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
    [pillRegionCoordinator setPillIconPlacement:v16];

    v18 = +[(STUIStatusBarBackgroundActivityItem *)STUIStatusBarPillBackgroundActivityItem];
    v19 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v18 priority:574];
    v77 = v16;
    v101 = v16;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v101 count:1];
    v76 = [v19 requiringAllPlacements:v20];

    v21 = +[(STUIStatusBarItem *)STUIStatusBarSensorActivityItem];
    v75 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v21 priority:700];

    v22 = +[(STUIStatusBarCellularItem *)STUIStatusBarCellularCondensedItem];
    v23 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v22 priority:450];

    v24 = +[STUIStatusBarCellularCondensedItem dualSignalStrengthDisplayIdentifier];
    v25 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v24 priority:475];
    v100 = v23;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v100 count:1];
    v27 = [v25 excludingPlacements:v26];

    v28 = +[(STUIStatusBarCellularItem *)STUIStatusBarCellularCondensedItem];
    [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v28 priority:350];
    v29 = v64 = self;

    v30 = +[STUIStatusBarWifiItem signalStrengthDisplayIdentifier];
    v31 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v30 priority:400];
    v99 = v29;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v99 count:1];
    v33 = [v31 excludingPlacements:v32];

    v34 = +[STUIStatusBarWifiItem iconDisplayIdentifier];
    v35 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v34 priority:401];
    v98[0] = v33;
    v98[1] = v29;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v98 count:2];
    v72 = [v35 excludingPlacements:v36];

    v37 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAirplaneModeItem];
    v38 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v37 priority:1200];
    v73 = v27;
    v74 = v23;
    v97[0] = v23;
    v97[1] = v27;
    v97[2] = v33;
    v97[3] = v29;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:4];
    v71 = [v38 excludingPlacements:v39];

    v40 = +[(STUIStatusBarItem *)STUIStatusBarVoiceControlPillItem];
    v70 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v40 priority:650];

    v41 = +[STUIStatusBarBatteryItem iconDisplayIdentifier];
    v69 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v41 priority:100];

    v42 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAnnounceNotificationsItem];
    v68 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v42 priority:85];

    v43 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorQuietModeItem];
    v67 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v43 priority:90];

    v44 = +[(STUIStatusBarItem *)STUIStatusBarRadarItem];
    v66 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v44 priority:155];

    v45 = +[(STUIStatusBarItem *)STUIStatusBarElectronicTollCollectionItem];
    v46 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v45 priority:150];

    v47 = v64;
    statusBar = [(STUIStatusBarVisualProvider_CarPlay *)v64 statusBar];
    targetScreen = [statusBar targetScreen];
    _isRightHandDrive = [targetScreen _isRightHandDrive];

    if (_isRightHandDrive)
    {
      v95[0] = @"time";
      v94 = v80;
      v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v94 count:1];
      v96[0] = v51;
      v95[1] = @"pill";
      v93 = v79;
      v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v93 count:1];
      v96[1] = v52;
      v95[2] = @"pillContent";
      v92[0] = v77;
      v92[1] = v76;
      v92[2] = v78;
      v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:3];
      v96[2] = v53;
      v95[3] = @"sensorActivity";
      v91 = v75;
      v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v91 count:1];
      v96[3] = v54;
      v95[4] = @"driver";
      v90 = v46;
      v55 = [MEMORY[0x277CBEA60] arrayWithObjects:&v90 count:1];
      v96[4] = v55;
      v95[5] = @"oppositeDriver";
      v89[0] = v70;
      v89[1] = v69;
      v89[2] = v73;
      v89[3] = v74;
      v89[4] = v29;
      v89[5] = v33;
      v89[6] = v72;
      v89[7] = v71;
      v89[8] = v67;
      v89[9] = v68;
      v89[10] = v66;
      v56 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:11];
      v96[5] = v56;
      v57 = MEMORY[0x277CBEAC0];
      v58 = v96;
      v59 = v95;
    }

    else
    {
      v87[0] = @"time";
      v86 = v80;
      v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
      v88[0] = v51;
      v87[1] = @"pill";
      v85 = v79;
      v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v85 count:1];
      v88[1] = v52;
      v87[2] = @"pillContent";
      v84[0] = v77;
      v84[1] = v76;
      v84[2] = v78;
      v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:3];
      v88[2] = v53;
      v87[3] = @"sensorActivity";
      v83 = v75;
      v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v83 count:1];
      v88[3] = v54;
      v87[4] = @"driver";
      v82 = v46;
      v55 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
      v88[4] = v55;
      v87[5] = @"oppositeDriver";
      v81[0] = v67;
      v81[1] = v68;
      v81[2] = v73;
      v81[3] = v74;
      v81[4] = v29;
      v81[5] = v33;
      v81[6] = v72;
      v81[7] = v71;
      v81[8] = v70;
      v81[9] = v69;
      v81[10] = v66;
      v56 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:11];
      v88[5] = v56;
      v57 = MEMORY[0x277CBEAC0];
      v58 = v88;
      v59 = v87;
    }

    v60 = [v57 dictionaryWithObjects:v58 forKeys:v59 count:{6, v64}];
    v61 = v47->_orderedDisplayItemPlacements;
    v47->_orderedDisplayItemPlacements = v60;

    orderedDisplayItemPlacements = v47->_orderedDisplayItemPlacements;
    identifierCopy = v65;
  }

  v62 = [(NSDictionary *)orderedDisplayItemPlacements objectForKeyedSubscript:identifierCopy];

  return v62;
}

- (void)avoidanceFrameUpdatedFromFrame:(CGRect)frame withAnimationSettings:(id)settings options:(unint64_t)options
{
  v6 = [(STUIStatusBarVisualProvider_CarPlay *)self statusBar:settings];
  [v6 avoidanceFrame];
  [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self _updateDockGuideConstraintsForAvoidanceFrame:?];
}

- (void)_updateDockGuideConstraintsForAvoidanceFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (CGRectEqualToRect(frame, *MEMORY[0x277CBF3A0]))
  {
    dockGuideLeftConstraint = [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self dockGuideLeftConstraint];
    [dockGuideLeftConstraint setActive:0];

    dockGuideRightConstraint = [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self dockGuideRightConstraint];
    [dockGuideRightConstraint setActive:0];

    dockGuideWidthConstraint = [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self dockGuideWidthConstraint];
    [dockGuideWidthConstraint setActive:1];

    [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self dockGuideCenterXConstraint];
  }

  else
  {
    dockGuideWidthConstraint2 = [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self dockGuideWidthConstraint];
    [dockGuideWidthConstraint2 setActive:0];

    dockGuideCenterXConstraint = [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self dockGuideCenterXConstraint];
    [dockGuideCenterXConstraint setActive:0];

    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    MinX = CGRectGetMinX(v20);
    dockGuideLeftConstraint2 = [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self dockGuideLeftConstraint];
    [dockGuideLeftConstraint2 setConstant:MinX];

    dockGuideLeftConstraint3 = [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self dockGuideLeftConstraint];
    [dockGuideLeftConstraint3 setActive:1];

    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    MaxX = CGRectGetMaxX(v21);
    dockGuideRightConstraint2 = [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self dockGuideRightConstraint];
    [dockGuideRightConstraint2 setConstant:MaxX];

    [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self dockGuideRightConstraint];
  }
  v18 = ;
  [v18 setActive:1];
}

@end