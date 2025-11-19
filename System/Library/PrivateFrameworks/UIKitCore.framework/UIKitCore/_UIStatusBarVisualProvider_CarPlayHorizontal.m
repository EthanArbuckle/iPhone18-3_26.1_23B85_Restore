@interface _UIStatusBarVisualProvider_CarPlayHorizontal
+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)a3;
- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)a3;
- (id)setupInContainerView:(id)a3;
@end

@implementation _UIStatusBarVisualProvider_CarPlayHorizontal

+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)a3
{
  v3 = 45.0;
  v4 = -1.0;
  result.height = v3;
  result.width = v4;
  return result;
}

- (id)setupInContainerView:(id)a3
{
  v203[18] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v197 = [MEMORY[0x1E695DF70] array];
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
  v13 = [(_UIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
  v195 = v9;
  [v13 setPillRegion:v9];

  v14 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"pillContent"];
  v15 = [(_UIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
  v16 = [v15 pillRegion];
  [(_UIStatusBarRegion *)v14 setEnabilityRegion:v16];

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
  v32 = v4;
  v199 = objc_alloc_init(UILayoutGuide);
  [v4 addLayoutGuide:?];
  v33 = self;
  v34 = [(_UIStatusBarVisualProvider_CarPlay *)self statusBar];
  v35 = [v34 targetScreen];
  LODWORD(v29) = [v35 _isRightHandDrive];

  v198 = v32;
  v190 = v24;
  v187 = v28;
  if (v29)
  {
    v36 = [(_UIStatusBarRegion *)v5 layoutItem];
    v37 = [v36 leftAnchor];
    v38 = [(_UIStatusBarRegion *)v28 layoutItem];
    v39 = [v38 rightAnchor];
    [v37 constraintEqualToAnchor:v39 constant:0.0];
    v41 = v40 = v28;
    [(_UIStatusBarVisualProvider_CarPlayHorizontal *)v33 setDriverSideConstraint:v41];

    v185 = [(UILayoutGuide *)v199 widthAnchor];
    v184 = [v185 constraintEqualToConstant:103.0];
    v203[0] = v184;
    v42 = [(UILayoutGuide *)v199 topAnchor];
    v182 = [v32 topAnchor];
    v183 = v42;
    v181 = [v42 constraintEqualToAnchor:v182];
    v203[1] = v181;
    v43 = [(UILayoutGuide *)v199 bottomAnchor];
    v179 = [v32 bottomAnchor];
    v180 = v43;
    v178 = [v43 constraintEqualToAnchor:v179];
    v203[2] = v178;
    v44 = [(UILayoutGuide *)v199 centerXAnchor];
    v176 = [v32 centerXAnchor];
    v177 = v44;
    v175 = [v44 constraintEqualToAnchor:v176];
    v203[3] = v175;
    v174 = [(_UIStatusBarRegion *)v5 layoutItem];
    v45 = [v174 centerYAnchor];
    v172 = [v32 safeAreaLayoutGuide];
    [v172 centerYAnchor];
    v171 = v173 = v45;
    v170 = [v45 constraintEqualToAnchor:?];
    v203[4] = v170;
    v169 = [(_UIStatusBarRegion *)v5 layoutItem];
    v168 = [v169 heightAnchor];
    v167 = [v168 constraintEqualToConstant:18.0];
    v203[5] = v167;
    v166 = [(_UIStatusBarRegion *)v5 layoutItem];
    v165 = [v166 widthAnchor];
    v164 = [v165 constraintEqualToConstant:39.0];
    v203[6] = v164;
    v163 = [(_UIStatusBarRegion *)v5 layoutItem];
    v46 = [v163 rightAnchor];
    v161 = [v32 safeAreaLayoutGuide];
    [v161 rightAnchor];
    v160 = v162 = v46;
    v159 = [v46 constraintEqualToAnchor:-8.0 constant:?];
    v203[7] = v159;
    v158 = [(_UIStatusBarRegion *)v200 layoutItem];
    v47 = [v158 centerYAnchor];
    v156 = [v32 safeAreaLayoutGuide];
    [v156 centerYAnchor];
    v155 = v157 = v47;
    v154 = [v47 constraintEqualToAnchor:?];
    v203[8] = v154;
    v153 = [(_UIStatusBarRegion *)v200 layoutItem];
    v48 = [v153 rightAnchor];
    v151 = [(_UIStatusBarRegion *)v5 layoutItem];
    [v151 leftAnchor];
    v150 = v152 = v48;
    v149 = [v48 constraintEqualToAnchor:-4.0 constant:?];
    v203[9] = v149;
    v148 = [(_UIStatusBarRegion *)v24 layoutItem];
    v147 = [v148 heightAnchor];
    v146 = [v147 constraintEqualToConstant:10.0];
    v203[10] = v146;
    v145 = [(_UIStatusBarRegion *)v24 layoutItem];
    v49 = [v145 leftAnchor];
    v143 = [v32 safeAreaLayoutGuide];
    [v143 leftAnchor];
    v142 = v144 = v49;
    v141 = [v49 constraintEqualToAnchor:10.0 constant:?];
    v203[11] = v141;
    v140 = [(_UIStatusBarRegion *)v24 layoutItem];
    v50 = [v140 rightAnchor];
    v138 = [(UILayoutGuide *)v199 leftAnchor];
    v139 = v50;
    v137 = [v50 constraintLessThanOrEqualToAnchor:v138];
    v203[12] = v137;
    v136 = [(_UIStatusBarRegion *)v24 layoutItem];
    v51 = [v136 centerYAnchor];
    v134 = [v32 safeAreaLayoutGuide];
    [v134 centerYAnchor];
    v133 = v135 = v51;
    v132 = [v51 constraintEqualToAnchor:?];
    v203[13] = v132;
    v131 = [(_UIStatusBarRegion *)v40 layoutItem];
    v52 = [v131 centerYAnchor];
    v129 = [v32 safeAreaLayoutGuide];
    [v129 centerYAnchor];
    v128 = v130 = v52;
    v127 = [v52 constraintEqualToAnchor:?];
    v203[14] = v127;
    v53 = [(_UIStatusBarRegion *)v40 layoutItem];
    v54 = [v53 heightAnchor];
    v55 = [v54 constraintEqualToConstant:45.0];
    v203[15] = v55;
    v56 = [(_UIStatusBarVisualProvider_CarPlayHorizontal *)v33 driverSideConstraint];
    v203[16] = v56;
    v57 = [(_UIStatusBarRegion *)v40 layoutItem];
    v58 = [v57 leftAnchor];
    v59 = [(UILayoutGuide *)v199 rightAnchor];
    v60 = [v58 constraintEqualToAnchor:v59 constant:7.0];
    v203[17] = v60;
    v61 = v203;
  }

  else
  {
    v62 = [(_UIStatusBarRegion *)v28 layoutItem];
    v63 = [v62 leftAnchor];
    v64 = [(_UIStatusBarRegion *)v5 layoutItem];
    v65 = [v64 rightAnchor];
    [v63 constraintEqualToAnchor:v65 constant:0.0];
    v67 = v66 = v28;
    [(_UIStatusBarVisualProvider_CarPlayHorizontal *)v33 setDriverSideConstraint:v67];

    v185 = [(UILayoutGuide *)v199 widthAnchor];
    v184 = [v185 constraintEqualToConstant:103.0];
    v202[0] = v184;
    v68 = [(UILayoutGuide *)v199 topAnchor];
    v182 = [v32 topAnchor];
    v183 = v68;
    v181 = [v68 constraintEqualToAnchor:v182];
    v202[1] = v181;
    v69 = [(UILayoutGuide *)v199 bottomAnchor];
    v179 = [v32 bottomAnchor];
    v180 = v69;
    v178 = [v69 constraintEqualToAnchor:v179];
    v202[2] = v178;
    v70 = [(UILayoutGuide *)v199 centerXAnchor];
    v176 = [v32 centerXAnchor];
    v177 = v70;
    v175 = [v70 constraintEqualToAnchor:v176];
    v202[3] = v175;
    v174 = [(_UIStatusBarRegion *)v5 layoutItem];
    v71 = [v174 centerYAnchor];
    v172 = [v32 safeAreaLayoutGuide];
    [v172 centerYAnchor];
    v171 = v173 = v71;
    v170 = [v71 constraintEqualToAnchor:?];
    v202[4] = v170;
    v169 = [(_UIStatusBarRegion *)v5 layoutItem];
    v168 = [v169 heightAnchor];
    v167 = [v168 constraintEqualToConstant:18.0];
    v202[5] = v167;
    v166 = [(_UIStatusBarRegion *)v5 layoutItem];
    v165 = [v166 widthAnchor];
    v164 = [v165 constraintEqualToConstant:39.0];
    v202[6] = v164;
    v163 = [(_UIStatusBarRegion *)v5 layoutItem];
    v72 = [v163 leftAnchor];
    v161 = [v32 safeAreaLayoutGuide];
    [v161 leftAnchor];
    v160 = v162 = v72;
    v159 = [v72 constraintEqualToAnchor:8.0 constant:?];
    v202[7] = v159;
    v158 = [(_UIStatusBarRegion *)v200 layoutItem];
    v73 = [v158 centerYAnchor];
    v156 = [v32 safeAreaLayoutGuide];
    [v156 centerYAnchor];
    v155 = v157 = v73;
    v154 = [v73 constraintEqualToAnchor:?];
    v202[8] = v154;
    v153 = [(_UIStatusBarRegion *)v200 layoutItem];
    v74 = [v153 leftAnchor];
    v151 = [(_UIStatusBarRegion *)v5 layoutItem];
    [v151 rightAnchor];
    v150 = v152 = v74;
    v149 = [v74 constraintEqualToAnchor:4.0 constant:?];
    v202[9] = v149;
    v148 = [(_UIStatusBarRegion *)v24 layoutItem];
    v147 = [v148 heightAnchor];
    v146 = [v147 constraintEqualToConstant:45.0];
    v202[10] = v146;
    v145 = [(_UIStatusBarRegion *)v24 layoutItem];
    v75 = [v145 leftAnchor];
    v143 = [(UILayoutGuide *)v199 rightAnchor];
    v144 = v75;
    v142 = [v75 constraintGreaterThanOrEqualToAnchor:v143];
    v202[11] = v142;
    v141 = [(_UIStatusBarRegion *)v24 layoutItem];
    v76 = [v141 rightAnchor];
    v139 = [v32 safeAreaLayoutGuide];
    [v139 rightAnchor];
    v138 = v140 = v76;
    v137 = [v76 constraintEqualToAnchor:-10.0 constant:?];
    v202[12] = v137;
    v136 = [(_UIStatusBarRegion *)v24 layoutItem];
    v77 = [v136 centerYAnchor];
    v134 = [v32 safeAreaLayoutGuide];
    [v134 centerYAnchor];
    v133 = v135 = v77;
    v132 = [v77 constraintEqualToAnchor:?];
    v202[13] = v132;
    v131 = [(_UIStatusBarVisualProvider_CarPlayHorizontal *)v33 driverSideConstraint];
    v202[14] = v131;
    v130 = [(_UIStatusBarRegion *)v66 layoutItem];
    v129 = [v130 heightAnchor];
    v128 = [v129 constraintEqualToConstant:45.0];
    v202[15] = v128;
    v127 = [(_UIStatusBarRegion *)v66 layoutItem];
    v53 = [v127 centerYAnchor];
    v54 = [v32 safeAreaLayoutGuide];
    v55 = [v54 centerYAnchor];
    v56 = [v53 constraintEqualToAnchor:v55];
    v202[16] = v56;
    v57 = [(_UIStatusBarRegion *)v66 layoutItem];
    v58 = [v57 rightAnchor];
    v59 = [(UILayoutGuide *)v199 leftAnchor];
    v60 = [v58 constraintEqualToAnchor:v59 constant:-7.0];
    v202[17] = v60;
    v61 = v202;
  }

  v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:18];
  [v197 addObjectsFromArray:v78];

  v79 = [(_UIStatusBarRegion *)v195 layoutItem];
  v80 = [v79 topAnchor];
  v81 = [(_UIStatusBarRegion *)v5 layoutItem];
  v82 = [v81 topAnchor];
  v83 = [v80 constraintEqualToAnchor:v82];
  [v197 addObject:v83];

  v84 = [(_UIStatusBarRegion *)v195 layoutItem];
  v85 = [v84 bottomAnchor];
  v86 = [(_UIStatusBarRegion *)v5 layoutItem];
  v87 = [v86 bottomAnchor];
  v88 = [v85 constraintEqualToAnchor:v87];
  [v197 addObject:v88];

  v89 = [(_UIStatusBarRegion *)v195 layoutItem];
  v90 = [v89 leadingAnchor];
  v91 = [(_UIStatusBarRegion *)v5 layoutItem];
  v92 = [v91 leadingAnchor];
  v93 = [v90 constraintEqualToAnchor:v92];
  [v197 addObject:v93];

  v94 = [(_UIStatusBarRegion *)v195 layoutItem];
  v95 = [v94 trailingAnchor];
  v96 = [(_UIStatusBarRegion *)v5 layoutItem];
  v97 = [v96 trailingAnchor];
  v98 = [v95 constraintEqualToAnchor:v97];
  [v197 addObject:v98];

  v99 = [(_UIStatusBarRegion *)v193 layoutItem];
  v100 = [v99 topAnchor];
  v101 = [(_UIStatusBarRegion *)v195 layoutItem];
  v102 = [v101 topAnchor];
  v103 = [v100 constraintEqualToAnchor:v102];
  [v197 addObject:v103];

  v104 = [(_UIStatusBarRegion *)v193 layoutItem];
  v105 = [v104 bottomAnchor];
  v106 = [(_UIStatusBarRegion *)v195 layoutItem];
  v107 = [v106 bottomAnchor];
  v108 = [v105 constraintEqualToAnchor:v107];
  [v197 addObject:v108];

  v109 = [(_UIStatusBarRegion *)v193 layoutItem];
  v110 = [v109 leadingAnchor];
  v111 = [(_UIStatusBarRegion *)v195 layoutItem];
  v112 = [v111 leadingAnchor];
  v113 = [v110 constraintEqualToAnchor:v112];
  [v197 addObject:v113];

  v114 = [(_UIStatusBarRegion *)v193 layoutItem];
  v115 = [v114 trailingAnchor];
  v116 = [(_UIStatusBarRegion *)v195 layoutItem];
  v117 = [v116 trailingAnchor];
  v118 = [v115 constraintEqualToAnchor:v117];
  [v197 addObject:v118];

  v119 = [(_UIStatusBarRegion *)v5 layoutItem];
  [v198 _ui_addSubLayoutItem:v119];

  v120 = [(_UIStatusBarRegion *)v200 layoutItem];
  [v198 _ui_addSubLayoutItem:v120];

  v121 = [(_UIStatusBarRegion *)v190 layoutItem];
  [v198 _ui_addSubLayoutItem:v121];

  v122 = [(_UIStatusBarRegion *)v187 layoutItem];
  [v198 _ui_addSubLayoutItem:v122];

  v123 = [(_UIStatusBarRegion *)v195 layoutItem];
  [v198 _ui_addSubLayoutItem:v123];

  v124 = [(_UIStatusBarRegion *)v193 layoutItem];
  [v198 _ui_addSubLayoutItem:v124];

  [MEMORY[0x1E69977A0] activateConstraints:v197];
  v201[0] = v193;
  v201[1] = v195;
  v201[2] = v5;
  v201[3] = v200;
  v201[4] = v187;
  v201[5] = v190;
  v125 = [MEMORY[0x1E695DEC8] arrayWithObjects:v201 count:6];

  return v125;
}

- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)a3
{
  v100[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  orderedDisplayItemPlacements = self->_orderedDisplayItemPlacements;
  if (!orderedDisplayItemPlacements)
  {
    v63 = v4;
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

    v17 = [(_UIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
    [v17 setPillIconPlacement:v16];

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

    v46 = [(_UIStatusBarVisualProvider_CarPlay *)v62 statusBar];
    v47 = [v46 targetScreen];
    v48 = [v47 _isRightHandDrive];

    if (v48)
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
    v4 = v63;
  }

  v60 = [(NSDictionary *)orderedDisplayItemPlacements objectForKeyedSubscript:v4];

  return v60;
}

@end