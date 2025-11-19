@interface STUIStatusBarVisualProvider_CarPlayHorizontal
+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)a3;
- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)a3;
- (id)setupInContainerView:(id)a3;
- (void)_updateDockGuideConstraintsForAvoidanceFrame:(CGRect)a3;
- (void)avoidanceFrameUpdatedFromFrame:(CGRect)a3 withAnimationSettings:(id)a4 options:(unint64_t)a5;
@end

@implementation STUIStatusBarVisualProvider_CarPlayHorizontal

+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)a3
{
  v3 = *MEMORY[0x277D77260];
  v4 = 45.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)setupInContainerView:(id)a3
{
  v204[14] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
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
  v14 = [(STUIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
  v194 = v10;
  [v14 setPillRegion:v10];

  v15 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"pillContent"];
  v16 = [(STUIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
  v17 = [v16 pillRegion];
  [(STUIStatusBarRegion *)v15 setEnabilityRegion:v17];

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
  [v4 addLayoutGuide:v33];
  v34 = [v33 widthAnchor];
  v35 = [v34 constraintEqualToConstant:111.0];
  [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self setDockGuideWidthConstraint:v35];

  v36 = [v33 centerXAnchor];
  v37 = [v4 centerXAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];
  [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self setDockGuideCenterXConstraint:v38];

  v39 = [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self dockGuideWidthConstraint];
  [v5 addObject:v39];

  v40 = [v33 topAnchor];
  v41 = [v4 topAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];
  [v5 addObject:v42];

  v43 = [v33 bottomAnchor];
  v44 = [v4 bottomAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];
  [v5 addObject:v45];

  v46 = [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self dockGuideCenterXConstraint];
  v47 = v5;
  [v5 addObject:v46];

  v48 = [v33 leftAnchor];
  v49 = [v4 leftAnchor];
  v50 = [v48 constraintEqualToAnchor:v49 constant:0.0];
  [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self setDockGuideLeftConstraint:v50];

  v198 = v33;
  v51 = [v33 rightAnchor];
  v52 = [v4 leftAnchor];
  v53 = [v51 constraintEqualToAnchor:v52 constant:0.0];
  [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self setDockGuideRightConstraint:v53];

  v54 = [(STUIStatusBarVisualProvider_CarPlay *)self statusBar];
  v55 = [v54 targetScreen];
  LODWORD(v53) = [v55 _isRightHandDrive];

  v196 = v6;
  v197 = v4;
  if (v53)
  {
    v56 = [(STUIStatusBarRegion *)v6 layoutItem];
    v57 = [v56 leftAnchor];
    v58 = [(STUIStatusBarRegion *)v199 layoutItem];
    v59 = [v58 rightAnchor];
    v60 = [v57 constraintEqualToAnchor:v59 constant:0.0];
    [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self setDriverSideConstraint:v60];

    v186 = [(STUIStatusBarRegion *)v6 layoutItem];
    v61 = [v186 centerYAnchor];
    v184 = [v4 safeAreaLayoutGuide];
    [v184 centerYAnchor];
    v183 = v185 = v61;
    v182 = [v61 constraintEqualToAnchor:?];
    v204[0] = v182;
    v181 = [(STUIStatusBarRegion *)v6 layoutItem];
    v180 = [v181 heightAnchor];
    v179 = [v180 constraintEqualToConstant:18.0];
    v204[1] = v179;
    v178 = [(STUIStatusBarRegion *)v6 layoutItem];
    v177 = [v178 widthAnchor];
    v176 = [v177 constraintEqualToConstant:39.0];
    v204[2] = v176;
    v175 = [(STUIStatusBarRegion *)v6 layoutItem];
    v62 = [v175 rightAnchor];
    v173 = [v4 safeAreaLayoutGuide];
    [v173 rightAnchor];
    v172 = v174 = v62;
    v171 = [v62 constraintEqualToAnchor:-8.0 constant:?];
    v204[3] = v171;
    v170 = [(STUIStatusBarRegion *)v201 layoutItem];
    v63 = [v170 centerYAnchor];
    v168 = [v4 safeAreaLayoutGuide];
    [v168 centerYAnchor];
    v167 = v169 = v63;
    v166 = [v63 constraintEqualToAnchor:?];
    v204[4] = v166;
    v165 = [(STUIStatusBarRegion *)v201 layoutItem];
    v64 = [v165 rightAnchor];
    v163 = [(STUIStatusBarRegion *)v6 layoutItem];
    [v163 leftAnchor];
    v162 = v164 = v64;
    v161 = [v64 constraintEqualToAnchor:-4.0 constant:?];
    v204[5] = v161;
    v160 = [(STUIStatusBarRegion *)v200 layoutItem];
    v159 = [v160 heightAnchor];
    v158 = [v159 constraintEqualToConstant:45.0];
    v204[6] = v158;
    v157 = [(STUIStatusBarRegion *)v200 layoutItem];
    v65 = [v157 leftAnchor];
    v155 = [v4 safeAreaLayoutGuide];
    [v155 leftAnchor];
    v154 = v156 = v65;
    v153 = [v65 constraintEqualToAnchor:10.0 constant:?];
    v204[7] = v153;
    v152 = [(STUIStatusBarRegion *)v200 layoutItem];
    v66 = [v152 rightAnchor];
    v150 = [v198 leftAnchor];
    v151 = v66;
    v149 = [v66 constraintLessThanOrEqualToAnchor:v150];
    v204[8] = v149;
    v148 = [(STUIStatusBarRegion *)v200 layoutItem];
    v67 = [v148 centerYAnchor];
    v146 = [v4 safeAreaLayoutGuide];
    [v146 centerYAnchor];
    v145 = v147 = v67;
    v144 = [v67 constraintEqualToAnchor:?];
    v204[9] = v144;
    v143 = [(STUIStatusBarRegion *)v199 layoutItem];
    v68 = [v143 centerYAnchor];
    v141 = [v4 safeAreaLayoutGuide];
    [v141 centerYAnchor];
    v140 = v142 = v68;
    v139 = [v68 constraintEqualToAnchor:?];
    v204[10] = v139;
    v69 = [(STUIStatusBarRegion *)v199 layoutItem];
    v70 = [v69 heightAnchor];
    v71 = [v70 constraintEqualToConstant:45.0];
    v204[11] = v71;
    v72 = [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self driverSideConstraint];
    v204[12] = v72;
    v73 = [(STUIStatusBarRegion *)v199 layoutItem];
    v74 = [v73 leftAnchor];
    v75 = [v198 rightAnchor];
    v76 = [v74 constraintEqualToAnchor:v75];
    v204[13] = v76;
    v77 = v204;
  }

  else
  {
    v78 = [(STUIStatusBarRegion *)v199 layoutItem];
    v79 = [v78 leftAnchor];
    v80 = [(STUIStatusBarRegion *)v6 layoutItem];
    v81 = [v80 rightAnchor];
    v82 = [v79 constraintEqualToAnchor:v81 constant:0.0];
    [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self setDriverSideConstraint:v82];

    v186 = [(STUIStatusBarRegion *)v6 layoutItem];
    v83 = [v186 centerYAnchor];
    v184 = [v4 safeAreaLayoutGuide];
    [v184 centerYAnchor];
    v183 = v185 = v83;
    v182 = [v83 constraintEqualToAnchor:?];
    v203[0] = v182;
    v181 = [(STUIStatusBarRegion *)v6 layoutItem];
    v180 = [v181 heightAnchor];
    v179 = [v180 constraintEqualToConstant:18.0];
    v203[1] = v179;
    v178 = [(STUIStatusBarRegion *)v6 layoutItem];
    v177 = [v178 widthAnchor];
    v176 = [v177 constraintEqualToConstant:39.0];
    v203[2] = v176;
    v175 = [(STUIStatusBarRegion *)v6 layoutItem];
    v84 = [v175 leftAnchor];
    v173 = [v4 safeAreaLayoutGuide];
    [v173 leftAnchor];
    v172 = v174 = v84;
    v171 = [v84 constraintEqualToAnchor:8.0 constant:?];
    v203[3] = v171;
    v170 = [(STUIStatusBarRegion *)v201 layoutItem];
    v85 = [v170 centerYAnchor];
    v168 = [v4 safeAreaLayoutGuide];
    [v168 centerYAnchor];
    v167 = v169 = v85;
    v166 = [v85 constraintEqualToAnchor:?];
    v203[4] = v166;
    v165 = [(STUIStatusBarRegion *)v201 layoutItem];
    v86 = [v165 leftAnchor];
    v163 = [(STUIStatusBarRegion *)v6 layoutItem];
    [v163 rightAnchor];
    v162 = v164 = v86;
    v161 = [v86 constraintEqualToAnchor:4.0 constant:?];
    v203[5] = v161;
    v160 = [(STUIStatusBarRegion *)v200 layoutItem];
    v159 = [v160 heightAnchor];
    v158 = [v159 constraintEqualToConstant:45.0];
    v203[6] = v158;
    v157 = [(STUIStatusBarRegion *)v200 layoutItem];
    v87 = [v157 leftAnchor];
    v155 = [v198 rightAnchor];
    v156 = v87;
    v154 = [v87 constraintGreaterThanOrEqualToAnchor:v155];
    v203[7] = v154;
    v153 = [(STUIStatusBarRegion *)v200 layoutItem];
    v88 = [v153 rightAnchor];
    v151 = [v4 safeAreaLayoutGuide];
    [v151 rightAnchor];
    v150 = v152 = v88;
    v149 = [v88 constraintEqualToAnchor:-10.0 constant:?];
    v203[8] = v149;
    v148 = [(STUIStatusBarRegion *)v200 layoutItem];
    v89 = [v148 centerYAnchor];
    v146 = [v4 safeAreaLayoutGuide];
    [v146 centerYAnchor];
    v145 = v147 = v89;
    v144 = [v89 constraintEqualToAnchor:?];
    v203[9] = v144;
    v143 = [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self driverSideConstraint];
    v203[10] = v143;
    v142 = [(STUIStatusBarRegion *)v199 layoutItem];
    v141 = [v142 heightAnchor];
    v140 = [v141 constraintEqualToConstant:45.0];
    v203[11] = v140;
    v139 = [(STUIStatusBarRegion *)v199 layoutItem];
    v69 = [v139 centerYAnchor];
    v70 = [v4 safeAreaLayoutGuide];
    v71 = [v70 centerYAnchor];
    v72 = [v69 constraintEqualToAnchor:v71];
    v203[12] = v72;
    v73 = [(STUIStatusBarRegion *)v199 layoutItem];
    v74 = [v73 rightAnchor];
    v75 = [v198 leftAnchor];
    v76 = [v74 constraintEqualToAnchor:v75];
    v203[13] = v76;
    v77 = v203;
  }

  v90 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:14];
  [v47 addObjectsFromArray:v90];

  v91 = [(STUIStatusBarRegion *)v194 layoutItem];
  v92 = [v91 topAnchor];
  v93 = [(STUIStatusBarRegion *)v196 layoutItem];
  v94 = [v93 topAnchor];
  v95 = [v92 constraintEqualToAnchor:v94];
  [v47 addObject:v95];

  v96 = [(STUIStatusBarRegion *)v194 layoutItem];
  v97 = [v96 bottomAnchor];
  v98 = [(STUIStatusBarRegion *)v196 layoutItem];
  v99 = [v98 bottomAnchor];
  v100 = [v97 constraintEqualToAnchor:v99];
  [v47 addObject:v100];

  v101 = [(STUIStatusBarRegion *)v194 layoutItem];
  v102 = [v101 leadingAnchor];
  v103 = [(STUIStatusBarRegion *)v196 layoutItem];
  v104 = [v103 leadingAnchor];
  v105 = [v102 constraintEqualToAnchor:v104];
  [v47 addObject:v105];

  v106 = [(STUIStatusBarRegion *)v194 layoutItem];
  v107 = [v106 trailingAnchor];
  v108 = [(STUIStatusBarRegion *)v196 layoutItem];
  v109 = [v108 trailingAnchor];
  v110 = [v107 constraintEqualToAnchor:v109];
  [v47 addObject:v110];

  v111 = [(STUIStatusBarRegion *)v192 layoutItem];
  v112 = [v111 topAnchor];
  v113 = [(STUIStatusBarRegion *)v194 layoutItem];
  v114 = [v113 topAnchor];
  v115 = [v112 constraintEqualToAnchor:v114];
  [v47 addObject:v115];

  v116 = [(STUIStatusBarRegion *)v192 layoutItem];
  v117 = [v116 bottomAnchor];
  v118 = [(STUIStatusBarRegion *)v194 layoutItem];
  v119 = [v118 bottomAnchor];
  v120 = [v117 constraintEqualToAnchor:v119];
  [v47 addObject:v120];

  v121 = [(STUIStatusBarRegion *)v192 layoutItem];
  v122 = [v121 leadingAnchor];
  v123 = [(STUIStatusBarRegion *)v194 layoutItem];
  v124 = [v123 leadingAnchor];
  v125 = [v122 constraintEqualToAnchor:v124];
  [v47 addObject:v125];

  v126 = [(STUIStatusBarRegion *)v192 layoutItem];
  v127 = [v126 trailingAnchor];
  v128 = [(STUIStatusBarRegion *)v194 layoutItem];
  v129 = [v128 trailingAnchor];
  v130 = [v127 constraintEqualToAnchor:v129];
  [v47 addObject:v130];

  v131 = [(STUIStatusBarRegion *)v196 layoutItem];
  [v197 _ui_addSubLayoutItem:v131];

  v132 = [(STUIStatusBarRegion *)v201 layoutItem];
  [v197 _ui_addSubLayoutItem:v132];

  v133 = [(STUIStatusBarRegion *)v200 layoutItem];
  [v197 _ui_addSubLayoutItem:v133];

  v134 = [(STUIStatusBarRegion *)v199 layoutItem];
  [v197 _ui_addSubLayoutItem:v134];

  v135 = [(STUIStatusBarRegion *)v194 layoutItem];
  [v197 _ui_addSubLayoutItem:v135];

  v136 = [(STUIStatusBarRegion *)v192 layoutItem];
  [v197 _ui_addSubLayoutItem:v136];

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

- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)a3
{
  v103[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  orderedDisplayItemPlacements = self->_orderedDisplayItemPlacements;
  if (!orderedDisplayItemPlacements)
  {
    v65 = v4;
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

    v17 = [(STUIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
    [v17 setPillIconPlacement:v16];

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
    v48 = [(STUIStatusBarVisualProvider_CarPlay *)v64 statusBar];
    v49 = [v48 targetScreen];
    v50 = [v49 _isRightHandDrive];

    if (v50)
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
    v4 = v65;
  }

  v62 = [(NSDictionary *)orderedDisplayItemPlacements objectForKeyedSubscript:v4];

  return v62;
}

- (void)avoidanceFrameUpdatedFromFrame:(CGRect)a3 withAnimationSettings:(id)a4 options:(unint64_t)a5
{
  v6 = [(STUIStatusBarVisualProvider_CarPlay *)self statusBar:a4];
  [v6 avoidanceFrame];
  [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self _updateDockGuideConstraintsForAvoidanceFrame:?];
}

- (void)_updateDockGuideConstraintsForAvoidanceFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectEqualToRect(a3, *MEMORY[0x277CBF3A0]))
  {
    v8 = [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self dockGuideLeftConstraint];
    [v8 setActive:0];

    v9 = [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self dockGuideRightConstraint];
    [v9 setActive:0];

    v10 = [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self dockGuideWidthConstraint];
    [v10 setActive:1];

    [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self dockGuideCenterXConstraint];
  }

  else
  {
    v11 = [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self dockGuideWidthConstraint];
    [v11 setActive:0];

    v12 = [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self dockGuideCenterXConstraint];
    [v12 setActive:0];

    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    MinX = CGRectGetMinX(v20);
    v14 = [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self dockGuideLeftConstraint];
    [v14 setConstant:MinX];

    v15 = [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self dockGuideLeftConstraint];
    [v15 setActive:1];

    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    MaxX = CGRectGetMaxX(v21);
    v17 = [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self dockGuideRightConstraint];
    [v17 setConstant:MaxX];

    [(STUIStatusBarVisualProvider_CarPlayHorizontal *)self dockGuideRightConstraint];
  }
  v18 = ;
  [v18 setActive:1];
}

@end