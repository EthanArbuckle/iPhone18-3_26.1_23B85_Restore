@interface _UIStatusBarVisualProvider_CarPlayHorizontal
+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)orientation;
- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)identifier;
- (id)setupInContainerView:(id)view;
@end

@implementation _UIStatusBarVisualProvider_CarPlayHorizontal

+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)orientation
{
  v3 = 45.0;
  v4 = -1.0;
  result.height = v3;
  result.width = v4;
  return result;
}

- (id)setupInContainerView:(id)view
{
  v203[18] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  array = [MEMORY[0x1E695DF70] array];
  v5 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"time"];
  v6 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v7 = +[_UIStatusBarRegionAxisFillingLayout fillingLayout];
  [(_UIStatusBarRegionAxesLayout *)v6 setHorizontalLayout:v7];

  v8 = +[_UIStatusBarRegionAxisFillingLayout fillingLayout];
  [(_UIStatusBarRegionAxesLayout *)v6 setVerticalLayout:v8];

  v196 = v6;
  [(_UIStatusBarRegion *)v5 setLayout:v6];
  [(_UIStatusBarVisualProvider_CarPlay *)self setTimeRegion:v5];
  v9 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"pill"];
  v10 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v11 = +[_UIStatusBarRegionAxisFillingLayout fillingLayout];
  [(_UIStatusBarRegionAxesLayout *)v10 setHorizontalLayout:v11];

  v12 = +[_UIStatusBarRegionAxisFillingLayout fillingLayout];
  [(_UIStatusBarRegionAxesLayout *)v10 setVerticalLayout:v12];

  v194 = v10;
  [(_UIStatusBarRegion *)v9 setLayout:v10];
  [(_UIStatusBarRegion *)v9 setActionInsets:-10.0, -10.0, -10.0, -10.0];
  pillRegionCoordinator = [(_UIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
  v195 = v9;
  [pillRegionCoordinator setPillRegion:v9];

  v14 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"pillContent"];
  pillRegionCoordinator2 = [(_UIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
  pillRegion = [pillRegionCoordinator2 pillRegion];
  [(_UIStatusBarRegion *)v14 setEnabilityRegion:pillRegion];

  v17 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v18 = +[_UIStatusBarRegionAxisFillingLayout fillingLayout];
  [(_UIStatusBarRegionAxesLayout *)v17 setHorizontalLayout:v18];

  v19 = +[_UIStatusBarRegionAxisFillingLayout fillingLayout];
  [(_UIStatusBarRegionAxesLayout *)v17 setVerticalLayout:v19];

  v193 = v14;
  v192 = v17;
  [(_UIStatusBarRegion *)v14 setLayout:v17];
  v20 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"sensorActivity"];
  v21 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v22 = +[_UIStatusBarRegionAxisFillingLayout fillingLayout];
  [(_UIStatusBarRegionAxesLayout *)v21 setHorizontalLayout:v22];

  v23 = +[_UIStatusBarRegionAxisFillingLayout fillingLayout];
  [(_UIStatusBarRegionAxesLayout *)v21 setVerticalLayout:v23];

  v200 = v20;
  v191 = v21;
  [(_UIStatusBarRegion *)v20 setLayout:v21];
  v24 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"oppositeDriver"];
  v25 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v26 = objc_alloc_init(_UIStatusBarRegionAxisCenteringLayout);
  [(_UIStatusBarRegionAxisCenteringLayout *)v26 setInterspace:4.0];
  v188 = v26;
  [(_UIStatusBarRegionAxesLayout *)v25 setHorizontalLayout:v26];
  v27 = [_UIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:1];
  [(_UIStatusBarRegionAxesLayout *)v25 setVerticalLayout:v27];

  v189 = v25;
  [(_UIStatusBarRegion *)v24 setLayout:v25];
  [(_UIStatusBarRegion *)v24 setActionInsets:-10.0, -10.0, -10.0, -10.0];
  [(_UIStatusBarVisualProvider_CarPlay *)self setRadarRegion:v24];
  v28 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"driver"];
  v29 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v30 = objc_alloc_init(_UIStatusBarRegionAxisStackingLayout);
  [(_UIStatusBarRegionAxisStackingLayout *)v30 setAlignment:1];
  [(_UIStatusBarRegionAxisStackingLayout *)v30 setInterspace:4.0];
  [(_UIStatusBarRegionAxesLayout *)v29 setHorizontalLayout:v30];

  v31 = [_UIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:1];
  [(_UIStatusBarRegionAxesLayout *)v29 setVerticalLayout:v31];

  v186 = v29;
  [(_UIStatusBarRegion *)v28 setLayout:v29];
  [(_UIStatusBarRegion *)v28 setActionInsets:-10.0, -10.0, -10.0, -10.0];
  v32 = viewCopy;
  v199 = objc_alloc_init(UILayoutGuide);
  [viewCopy addLayoutGuide:?];
  selfCopy = self;
  statusBar = [(_UIStatusBarVisualProvider_CarPlay *)self statusBar];
  targetScreen = [statusBar targetScreen];
  LODWORD(v29) = [targetScreen _isRightHandDrive];

  v198 = v32;
  v190 = v24;
  v187 = v28;
  if (v29)
  {
    layoutItem = [(_UIStatusBarRegion *)v5 layoutItem];
    leftAnchor = [layoutItem leftAnchor];
    layoutItem2 = [(_UIStatusBarRegion *)v28 layoutItem];
    rightAnchor = [layoutItem2 rightAnchor];
    [leftAnchor constraintEqualToAnchor:rightAnchor constant:0.0];
    v41 = v40 = v28;
    [(_UIStatusBarVisualProvider_CarPlayHorizontal *)selfCopy setDriverSideConstraint:v41];

    widthAnchor = [(UILayoutGuide *)v199 widthAnchor];
    v184 = [widthAnchor constraintEqualToConstant:103.0];
    v203[0] = v184;
    topAnchor = [(UILayoutGuide *)v199 topAnchor];
    topAnchor2 = [v32 topAnchor];
    v183 = topAnchor;
    v181 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v203[1] = v181;
    bottomAnchor = [(UILayoutGuide *)v199 bottomAnchor];
    bottomAnchor2 = [v32 bottomAnchor];
    v180 = bottomAnchor;
    v178 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v203[2] = v178;
    centerXAnchor = [(UILayoutGuide *)v199 centerXAnchor];
    centerXAnchor2 = [v32 centerXAnchor];
    v177 = centerXAnchor;
    v175 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v203[3] = v175;
    layoutItem3 = [(_UIStatusBarRegion *)v5 layoutItem];
    centerYAnchor = [layoutItem3 centerYAnchor];
    safeAreaLayoutGuide = [v32 safeAreaLayoutGuide];
    [safeAreaLayoutGuide centerYAnchor];
    v171 = v173 = centerYAnchor;
    v170 = [centerYAnchor constraintEqualToAnchor:?];
    v203[4] = v170;
    layoutItem4 = [(_UIStatusBarRegion *)v5 layoutItem];
    heightAnchor = [layoutItem4 heightAnchor];
    v167 = [heightAnchor constraintEqualToConstant:18.0];
    v203[5] = v167;
    layoutItem5 = [(_UIStatusBarRegion *)v5 layoutItem];
    widthAnchor2 = [layoutItem5 widthAnchor];
    v164 = [widthAnchor2 constraintEqualToConstant:39.0];
    v203[6] = v164;
    layoutItem6 = [(_UIStatusBarRegion *)v5 layoutItem];
    rightAnchor2 = [layoutItem6 rightAnchor];
    safeAreaLayoutGuide2 = [v32 safeAreaLayoutGuide];
    [safeAreaLayoutGuide2 rightAnchor];
    v160 = v162 = rightAnchor2;
    v159 = [rightAnchor2 constraintEqualToAnchor:-8.0 constant:?];
    v203[7] = v159;
    layoutItem7 = [(_UIStatusBarRegion *)v200 layoutItem];
    centerYAnchor2 = [layoutItem7 centerYAnchor];
    safeAreaLayoutGuide3 = [v32 safeAreaLayoutGuide];
    [safeAreaLayoutGuide3 centerYAnchor];
    v155 = v157 = centerYAnchor2;
    v154 = [centerYAnchor2 constraintEqualToAnchor:?];
    v203[8] = v154;
    layoutItem8 = [(_UIStatusBarRegion *)v200 layoutItem];
    rightAnchor3 = [layoutItem8 rightAnchor];
    layoutItem9 = [(_UIStatusBarRegion *)v5 layoutItem];
    [layoutItem9 leftAnchor];
    v150 = v152 = rightAnchor3;
    v149 = [rightAnchor3 constraintEqualToAnchor:-4.0 constant:?];
    v203[9] = v149;
    layoutItem10 = [(_UIStatusBarRegion *)v24 layoutItem];
    heightAnchor2 = [layoutItem10 heightAnchor];
    v146 = [heightAnchor2 constraintEqualToConstant:10.0];
    v203[10] = v146;
    layoutItem11 = [(_UIStatusBarRegion *)v24 layoutItem];
    leftAnchor2 = [layoutItem11 leftAnchor];
    safeAreaLayoutGuide4 = [v32 safeAreaLayoutGuide];
    [safeAreaLayoutGuide4 leftAnchor];
    v142 = v144 = leftAnchor2;
    layoutItem19 = [leftAnchor2 constraintEqualToAnchor:10.0 constant:?];
    v203[11] = layoutItem19;
    layoutItem12 = [(_UIStatusBarRegion *)v24 layoutItem];
    rightAnchor4 = [layoutItem12 rightAnchor];
    leftAnchor3 = [(UILayoutGuide *)v199 leftAnchor];
    safeAreaLayoutGuide7 = rightAnchor4;
    v137 = [rightAnchor4 constraintLessThanOrEqualToAnchor:leftAnchor3];
    v203[12] = v137;
    layoutItem13 = [(_UIStatusBarRegion *)v24 layoutItem];
    centerYAnchor3 = [layoutItem13 centerYAnchor];
    safeAreaLayoutGuide5 = [v32 safeAreaLayoutGuide];
    [safeAreaLayoutGuide5 centerYAnchor];
    v133 = v135 = centerYAnchor3;
    v132 = [centerYAnchor3 constraintEqualToAnchor:?];
    v203[13] = v132;
    layoutItem14 = [(_UIStatusBarRegion *)v40 layoutItem];
    centerYAnchor4 = [layoutItem14 centerYAnchor];
    safeAreaLayoutGuide6 = [v32 safeAreaLayoutGuide];
    [safeAreaLayoutGuide6 centerYAnchor];
    v128 = layoutItem20 = centerYAnchor4;
    layoutItem21 = [centerYAnchor4 constraintEqualToAnchor:?];
    v203[14] = layoutItem21;
    layoutItem15 = [(_UIStatusBarRegion *)v40 layoutItem];
    heightAnchor3 = [layoutItem15 heightAnchor];
    centerYAnchor8 = [heightAnchor3 constraintEqualToConstant:45.0];
    v203[15] = centerYAnchor8;
    driverSideConstraint = [(_UIStatusBarVisualProvider_CarPlayHorizontal *)selfCopy driverSideConstraint];
    v203[16] = driverSideConstraint;
    layoutItem16 = [(_UIStatusBarRegion *)v40 layoutItem];
    leftAnchor4 = [layoutItem16 leftAnchor];
    rightAnchor5 = [(UILayoutGuide *)v199 rightAnchor];
    v60 = [leftAnchor4 constraintEqualToAnchor:rightAnchor5 constant:7.0];
    v203[17] = v60;
    v61 = v203;
  }

  else
  {
    layoutItem17 = [(_UIStatusBarRegion *)v28 layoutItem];
    leftAnchor5 = [layoutItem17 leftAnchor];
    layoutItem18 = [(_UIStatusBarRegion *)v5 layoutItem];
    rightAnchor6 = [layoutItem18 rightAnchor];
    [leftAnchor5 constraintEqualToAnchor:rightAnchor6 constant:0.0];
    v67 = v66 = v28;
    [(_UIStatusBarVisualProvider_CarPlayHorizontal *)selfCopy setDriverSideConstraint:v67];

    widthAnchor = [(UILayoutGuide *)v199 widthAnchor];
    v184 = [widthAnchor constraintEqualToConstant:103.0];
    v202[0] = v184;
    topAnchor3 = [(UILayoutGuide *)v199 topAnchor];
    topAnchor2 = [v32 topAnchor];
    v183 = topAnchor3;
    v181 = [topAnchor3 constraintEqualToAnchor:topAnchor2];
    v202[1] = v181;
    bottomAnchor3 = [(UILayoutGuide *)v199 bottomAnchor];
    bottomAnchor2 = [v32 bottomAnchor];
    v180 = bottomAnchor3;
    v178 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor2];
    v202[2] = v178;
    centerXAnchor3 = [(UILayoutGuide *)v199 centerXAnchor];
    centerXAnchor2 = [v32 centerXAnchor];
    v177 = centerXAnchor3;
    v175 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor2];
    v202[3] = v175;
    layoutItem3 = [(_UIStatusBarRegion *)v5 layoutItem];
    centerYAnchor5 = [layoutItem3 centerYAnchor];
    safeAreaLayoutGuide = [v32 safeAreaLayoutGuide];
    [safeAreaLayoutGuide centerYAnchor];
    v171 = v173 = centerYAnchor5;
    v170 = [centerYAnchor5 constraintEqualToAnchor:?];
    v202[4] = v170;
    layoutItem4 = [(_UIStatusBarRegion *)v5 layoutItem];
    heightAnchor = [layoutItem4 heightAnchor];
    v167 = [heightAnchor constraintEqualToConstant:18.0];
    v202[5] = v167;
    layoutItem5 = [(_UIStatusBarRegion *)v5 layoutItem];
    widthAnchor2 = [layoutItem5 widthAnchor];
    v164 = [widthAnchor2 constraintEqualToConstant:39.0];
    v202[6] = v164;
    layoutItem6 = [(_UIStatusBarRegion *)v5 layoutItem];
    leftAnchor6 = [layoutItem6 leftAnchor];
    safeAreaLayoutGuide2 = [v32 safeAreaLayoutGuide];
    [safeAreaLayoutGuide2 leftAnchor];
    v160 = v162 = leftAnchor6;
    v159 = [leftAnchor6 constraintEqualToAnchor:8.0 constant:?];
    v202[7] = v159;
    layoutItem7 = [(_UIStatusBarRegion *)v200 layoutItem];
    centerYAnchor6 = [layoutItem7 centerYAnchor];
    safeAreaLayoutGuide3 = [v32 safeAreaLayoutGuide];
    [safeAreaLayoutGuide3 centerYAnchor];
    v155 = v157 = centerYAnchor6;
    v154 = [centerYAnchor6 constraintEqualToAnchor:?];
    v202[8] = v154;
    layoutItem8 = [(_UIStatusBarRegion *)v200 layoutItem];
    leftAnchor7 = [layoutItem8 leftAnchor];
    layoutItem9 = [(_UIStatusBarRegion *)v5 layoutItem];
    [layoutItem9 rightAnchor];
    v150 = v152 = leftAnchor7;
    v149 = [leftAnchor7 constraintEqualToAnchor:4.0 constant:?];
    v202[9] = v149;
    layoutItem10 = [(_UIStatusBarRegion *)v24 layoutItem];
    heightAnchor2 = [layoutItem10 heightAnchor];
    v146 = [heightAnchor2 constraintEqualToConstant:45.0];
    v202[10] = v146;
    layoutItem11 = [(_UIStatusBarRegion *)v24 layoutItem];
    leftAnchor8 = [layoutItem11 leftAnchor];
    safeAreaLayoutGuide4 = [(UILayoutGuide *)v199 rightAnchor];
    v144 = leftAnchor8;
    v142 = [leftAnchor8 constraintGreaterThanOrEqualToAnchor:safeAreaLayoutGuide4];
    v202[11] = v142;
    layoutItem19 = [(_UIStatusBarRegion *)v24 layoutItem];
    rightAnchor7 = [layoutItem19 rightAnchor];
    safeAreaLayoutGuide7 = [v32 safeAreaLayoutGuide];
    [safeAreaLayoutGuide7 rightAnchor];
    leftAnchor3 = layoutItem12 = rightAnchor7;
    v137 = [rightAnchor7 constraintEqualToAnchor:-10.0 constant:?];
    v202[12] = v137;
    layoutItem13 = [(_UIStatusBarRegion *)v24 layoutItem];
    centerYAnchor7 = [layoutItem13 centerYAnchor];
    safeAreaLayoutGuide5 = [v32 safeAreaLayoutGuide];
    [safeAreaLayoutGuide5 centerYAnchor];
    v133 = v135 = centerYAnchor7;
    v132 = [centerYAnchor7 constraintEqualToAnchor:?];
    v202[13] = v132;
    layoutItem14 = [(_UIStatusBarVisualProvider_CarPlayHorizontal *)selfCopy driverSideConstraint];
    v202[14] = layoutItem14;
    layoutItem20 = [(_UIStatusBarRegion *)v66 layoutItem];
    safeAreaLayoutGuide6 = [layoutItem20 heightAnchor];
    v128 = [safeAreaLayoutGuide6 constraintEqualToConstant:45.0];
    v202[15] = v128;
    layoutItem21 = [(_UIStatusBarRegion *)v66 layoutItem];
    layoutItem15 = [layoutItem21 centerYAnchor];
    heightAnchor3 = [v32 safeAreaLayoutGuide];
    centerYAnchor8 = [heightAnchor3 centerYAnchor];
    driverSideConstraint = [layoutItem15 constraintEqualToAnchor:centerYAnchor8];
    v202[16] = driverSideConstraint;
    layoutItem16 = [(_UIStatusBarRegion *)v66 layoutItem];
    leftAnchor4 = [layoutItem16 rightAnchor];
    rightAnchor5 = [(UILayoutGuide *)v199 leftAnchor];
    v60 = [leftAnchor4 constraintEqualToAnchor:rightAnchor5 constant:-7.0];
    v202[17] = v60;
    v61 = v202;
  }

  v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:18];
  [array addObjectsFromArray:v78];

  layoutItem22 = [(_UIStatusBarRegion *)v195 layoutItem];
  topAnchor4 = [layoutItem22 topAnchor];
  layoutItem23 = [(_UIStatusBarRegion *)v5 layoutItem];
  topAnchor5 = [layoutItem23 topAnchor];
  v83 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  [array addObject:v83];

  layoutItem24 = [(_UIStatusBarRegion *)v195 layoutItem];
  bottomAnchor4 = [layoutItem24 bottomAnchor];
  layoutItem25 = [(_UIStatusBarRegion *)v5 layoutItem];
  bottomAnchor5 = [layoutItem25 bottomAnchor];
  v88 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  [array addObject:v88];

  layoutItem26 = [(_UIStatusBarRegion *)v195 layoutItem];
  leadingAnchor = [layoutItem26 leadingAnchor];
  layoutItem27 = [(_UIStatusBarRegion *)v5 layoutItem];
  leadingAnchor2 = [layoutItem27 leadingAnchor];
  v93 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v93];

  layoutItem28 = [(_UIStatusBarRegion *)v195 layoutItem];
  trailingAnchor = [layoutItem28 trailingAnchor];
  layoutItem29 = [(_UIStatusBarRegion *)v5 layoutItem];
  trailingAnchor2 = [layoutItem29 trailingAnchor];
  v98 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [array addObject:v98];

  layoutItem30 = [(_UIStatusBarRegion *)v193 layoutItem];
  topAnchor6 = [layoutItem30 topAnchor];
  layoutItem31 = [(_UIStatusBarRegion *)v195 layoutItem];
  topAnchor7 = [layoutItem31 topAnchor];
  v103 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
  [array addObject:v103];

  layoutItem32 = [(_UIStatusBarRegion *)v193 layoutItem];
  bottomAnchor6 = [layoutItem32 bottomAnchor];
  layoutItem33 = [(_UIStatusBarRegion *)v195 layoutItem];
  bottomAnchor7 = [layoutItem33 bottomAnchor];
  v108 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
  [array addObject:v108];

  layoutItem34 = [(_UIStatusBarRegion *)v193 layoutItem];
  leadingAnchor3 = [layoutItem34 leadingAnchor];
  layoutItem35 = [(_UIStatusBarRegion *)v195 layoutItem];
  leadingAnchor4 = [layoutItem35 leadingAnchor];
  v113 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [array addObject:v113];

  layoutItem36 = [(_UIStatusBarRegion *)v193 layoutItem];
  trailingAnchor3 = [layoutItem36 trailingAnchor];
  layoutItem37 = [(_UIStatusBarRegion *)v195 layoutItem];
  trailingAnchor4 = [layoutItem37 trailingAnchor];
  v118 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [array addObject:v118];

  layoutItem38 = [(_UIStatusBarRegion *)v5 layoutItem];
  [v198 _ui_addSubLayoutItem:layoutItem38];

  layoutItem39 = [(_UIStatusBarRegion *)v200 layoutItem];
  [v198 _ui_addSubLayoutItem:layoutItem39];

  layoutItem40 = [(_UIStatusBarRegion *)v190 layoutItem];
  [v198 _ui_addSubLayoutItem:layoutItem40];

  layoutItem41 = [(_UIStatusBarRegion *)v187 layoutItem];
  [v198 _ui_addSubLayoutItem:layoutItem41];

  layoutItem42 = [(_UIStatusBarRegion *)v195 layoutItem];
  [v198 _ui_addSubLayoutItem:layoutItem42];

  layoutItem43 = [(_UIStatusBarRegion *)v193 layoutItem];
  [v198 _ui_addSubLayoutItem:layoutItem43];

  [MEMORY[0x1E69977A0] activateConstraints:array];
  v201[0] = v193;
  v201[1] = v195;
  v201[2] = v5;
  v201[3] = v200;
  v201[4] = v187;
  v201[5] = v190;
  v125 = [MEMORY[0x1E695DEC8] arrayWithObjects:v201 count:6];

  return v125;
}

- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)identifier
{
  v100[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  orderedDisplayItemPlacements = self->_orderedDisplayItemPlacements;
  if (!orderedDisplayItemPlacements)
  {
    v63 = identifierCopy;
    v6 = +[_UIStatusBarTimeItem shortTimeDisplayIdentifier];
    v7 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v6 priority:400];

    v8 = +[(_UIStatusBarBackgroundActivityItem *)_UIStatusBarPillBackgroundActivityItem];
    v9 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v8 priority:500];
    v77 = v7;
    v100[0] = v7;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:1];
    v76 = [v9 excludingPlacements:v10];

    v11 = +[_UIStatusBarTimeItem pillTimeDisplayIdentifier];
    v12 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v11 priority:450];

    v13 = +[(_UIStatusBarItem *)_UIStatusBarPillBackgroundActivityItem];
    v14 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v13 priority:475];
    v75 = v12;
    v99 = v12;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v99 count:1];
    v16 = [v14 excludingPlacements:v15];

    pillRegionCoordinator = [(_UIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
    [pillRegionCoordinator setPillIconPlacement:v16];

    v18 = +[(_UIStatusBarBackgroundActivityItem *)_UIStatusBarPillBackgroundActivityItem];
    v19 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v18 priority:474];
    v74 = v16;
    v98 = v16;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v98 count:1];
    v73 = [v19 requiringAllPlacements:v20];

    v21 = +[(_UIStatusBarItem *)_UIStatusBarSensorActivityItem];
    v72 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v21 priority:600];

    v22 = +[(_UIStatusBarCellularItem *)_UIStatusBarCellularCondensedItem];
    v23 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v22 priority:350];

    v24 = +[_UIStatusBarCellularCondensedItem dualSignalStrengthDisplayIdentifier];
    v25 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v24 priority:375];
    v97 = v23;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v97 count:1];
    v27 = [v25 excludingPlacements:v26];

    v28 = +[(_UIStatusBarCellularItem *)_UIStatusBarCellularCondensedItem];
    [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v28 priority:250];
    v29 = v62 = self;

    v30 = +[_UIStatusBarWifiItem signalStrengthDisplayIdentifier];
    v31 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v30 priority:300];
    v96 = v29;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v96 count:1];
    v33 = [v31 excludingPlacements:v32];

    v34 = +[_UIStatusBarWifiItem iconDisplayIdentifier];
    v35 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v34 priority:301];
    v95[0] = v33;
    v95[1] = v29;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:2];
    v69 = [v35 excludingPlacements:v36];

    v37 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorAirplaneModeItem];
    v38 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v37 priority:1200];
    v70 = v27;
    v71 = v23;
    v94[0] = v23;
    v94[1] = v27;
    v94[2] = v33;
    v94[3] = v29;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:4];
    v68 = [v38 excludingPlacements:v39];

    v40 = +[_UIStatusBarBatteryItem iconDisplayIdentifier];
    v67 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v40 priority:100];

    v41 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorAnnounceNotificationsItem];
    v66 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v41 priority:85];

    v42 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorQuietModeItem];
    v65 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v42 priority:90];

    v43 = +[(_UIStatusBarItem *)_UIStatusBarRadarItem];
    v64 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v43 priority:155];

    v44 = +[(_UIStatusBarItem *)_UIStatusBarElectronicTollCollectionItem];
    v45 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v44 priority:150];

    statusBar = [(_UIStatusBarVisualProvider_CarPlay *)v62 statusBar];
    targetScreen = [statusBar targetScreen];
    _isRightHandDrive = [targetScreen _isRightHandDrive];

    if (_isRightHandDrive)
    {
      v92[0] = @"time";
      v91 = v77;
      v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v91 count:1];
      v93[0] = v49;
      v92[1] = @"pill";
      v90 = v76;
      v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v90 count:1];
      v93[1] = v50;
      v92[2] = @"pillContent";
      v89[0] = v74;
      v89[1] = v73;
      v89[2] = v75;
      v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:3];
      v93[2] = v51;
      v92[3] = @"sensorActivity";
      v88 = v72;
      v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v88 count:1];
      v93[3] = v52;
      v92[4] = @"driver";
      v87 = v45;
      v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v87 count:1];
      v93[4] = v53;
      v92[5] = @"oppositeDriver";
      v86[0] = v67;
      v86[1] = v70;
      v86[2] = v71;
      v86[3] = v29;
      v86[4] = v33;
      v86[5] = v69;
      v86[6] = v68;
      v86[7] = v65;
      v86[8] = v66;
      v86[9] = v64;
      v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:10];
      v93[5] = v54;
      v55 = MEMORY[0x1E695DF20];
      v56 = v93;
      v57 = v92;
    }

    else
    {
      v84[0] = @"time";
      v83 = v77;
      v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1];
      v85[0] = v49;
      v84[1] = @"pill";
      v82 = v76;
      v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1];
      v85[1] = v50;
      v84[2] = @"pillContent";
      v81[0] = v74;
      v81[1] = v73;
      v81[2] = v75;
      v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:3];
      v85[2] = v51;
      v84[3] = @"sensorActivity";
      v80 = v72;
      v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
      v85[3] = v52;
      v84[4] = @"driver";
      v79 = v45;
      v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v79 count:1];
      v85[4] = v53;
      v84[5] = @"oppositeDriver";
      v78[0] = v65;
      v78[1] = v66;
      v78[2] = v70;
      v78[3] = v71;
      v78[4] = v29;
      v78[5] = v33;
      v78[6] = v69;
      v78[7] = v68;
      v78[8] = v67;
      v78[9] = v64;
      v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:10];
      v85[5] = v54;
      v55 = MEMORY[0x1E695DF20];
      v56 = v85;
      v57 = v84;
    }

    v58 = [v55 dictionaryWithObjects:v56 forKeys:v57 count:6];
    v59 = v62->_orderedDisplayItemPlacements;
    v62->_orderedDisplayItemPlacements = v58;

    orderedDisplayItemPlacements = v62->_orderedDisplayItemPlacements;
    identifierCopy = v63;
  }

  v60 = [(NSDictionary *)orderedDisplayItemPlacements objectForKeyedSubscript:identifierCopy];

  return v60;
}

@end