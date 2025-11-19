@interface STUIStatusBarVisualProvider_CarPlayVertical
+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)a3;
- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)a3;
- (id)setupInContainerView:(id)a3;
- (void)_updateTopAndBottomRegionConstraintsForAvoidanceFrame:(CGRect)a3;
- (void)avoidanceFrameUpdatedFromFrame:(CGRect)a3 withAnimationSettings:(id)a4 options:(unint64_t)a5;
- (void)itemCreated:(id)a3;
@end

@implementation STUIStatusBarVisualProvider_CarPlayVertical

+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)a3
{
  v3 = *MEMORY[0x277D77260];
  v4 = 45.0;
  result.height = v3;
  result.width = v4;
  return result;
}

- (void)itemCreated:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = STUIStatusBarVisualProvider_CarPlayVertical;
  [(STUIStatusBarVisualProvider_CarPlay *)&v6 itemCreated:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    [v5 setItemSpacing:3.0];
    [v5 setAdditionRemovalScale:0.25];
    [v5 setAdditionRemovalDuration:0.25];
  }
}

- (id)setupInContainerView:(id)a3
{
  v175[6] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = [v4 array];
  v7 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"time"];
  v8 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v9 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  v171 = v8;
  [(STUIStatusBarRegionAxesLayout *)v8 setHorizontalLayout:v9];

  v10 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  [(STUIStatusBarRegionAxesLayout *)v8 setVerticalLayout:v10];

  v172 = v7;
  [(STUIStatusBarRegion *)v7 setLayout:v8];
  [(STUIStatusBarVisualProvider_CarPlay *)self setTimeRegion:v7];
  v11 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"pill"];
  v12 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v13 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  v170 = v12;
  [(STUIStatusBarRegionAxesLayout *)v12 setHorizontalLayout:v13];

  v14 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  [(STUIStatusBarRegionAxesLayout *)v12 setVerticalLayout:v14];

  [(STUIStatusBarRegion *)v11 setLayout:v12];
  v173 = v11;
  [(STUIStatusBarRegion *)v11 setActionInsets:0.0, -3.0, -13.0, -3.0];
  v15 = [(STUIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
  [v15 setPillRegion:v11];

  v16 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"pillContent"];
  v17 = [(STUIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
  v18 = [v17 pillRegion];
  [(STUIStatusBarRegion *)v16 setEnabilityRegion:v18];

  v19 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v20 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  v169 = v19;
  [(STUIStatusBarRegionAxesLayout *)v19 setHorizontalLayout:v20];

  v21 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  [(STUIStatusBarRegionAxesLayout *)v19 setVerticalLayout:v21];

  [(STUIStatusBarRegion *)v16 setLayout:v19];
  v174 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"signal"];
  v167 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v168 = objc_alloc_init(STUIStatusBarRegionAxisCenteringLayout);
  [(STUIStatusBarRegionAxisCenteringLayout *)v168 setInterspace:3.0];
  [(STUIStatusBarRegionAxesLayout *)v167 setHorizontalLayout:v168];
  v22 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:1];
  [(STUIStatusBarRegionAxesLayout *)v167 setVerticalLayout:v22];

  [(STUIStatusBarRegion *)v174 setLayout:v167];
  v163 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"top"];
  v23 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v24 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:1];
  v166 = v23;
  [(STUIStatusBarRegionAxesLayout *)v23 setHorizontalLayout:v24];

  v25 = objc_alloc_init(STUIStatusBarRegionAxisStackingLayout);
  [(STUIStatusBarRegionAxisStackingLayout *)v25 setAlignment:3];
  [(STUIStatusBarRegionAxisStackingLayout *)v25 setInterspace:8.0];
  [(STUIStatusBarRegionAxesLayout *)v23 setVerticalLayout:v25];

  [(STUIStatusBarRegion *)v163 setLayout:v23];
  v26 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"bottom"];
  v27 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v28 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:1];
  v165 = v27;
  [(STUIStatusBarRegionAxesLayout *)v27 setHorizontalLayout:v28];

  v29 = objc_alloc_init(STUIStatusBarRegionAxisStackingLayout);
  [(STUIStatusBarRegionAxisStackingLayout *)v29 setAlignment:1];
  [(STUIStatusBarRegionAxisStackingLayout *)v29 setInterspace:8.0];
  [(STUIStatusBarRegionAxesLayout *)v27 setVerticalLayout:v29];

  v164 = v26;
  [(STUIStatusBarRegion *)v26 setLayout:v27];
  [(STUIStatusBarRegion *)v26 setActionInsets:0.0, -3.0, -10.0, -10.0];
  [(STUIStatusBarVisualProvider_CarPlay *)self setRadarRegion:v26];
  v30 = objc_alloc_init(MEMORY[0x277D756D0]);
  [v5 addLayoutGuide:v30];
  v31 = [v30 heightAnchor];
  v32 = [v31 constraintEqualToConstant:111.0];
  [(STUIStatusBarVisualProvider_CarPlayVertical *)self setDockGuideHeightConstraint:v32];

  v33 = [v30 centerYAnchor];
  v34 = [v5 centerYAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];
  [(STUIStatusBarVisualProvider_CarPlayVertical *)self setDockGuideCenterYConstraint:v35];

  v36 = [(STUIStatusBarVisualProvider_CarPlayVertical *)self dockGuideHeightConstraint];
  [v6 addObject:v36];

  v37 = [v30 leadingAnchor];
  v38 = [v5 leadingAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];
  [v6 addObject:v39];

  v40 = [v30 trailingAnchor];
  v41 = [v5 trailingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];
  [v6 addObject:v42];

  v43 = [(STUIStatusBarVisualProvider_CarPlayVertical *)self dockGuideCenterYConstraint];
  [v6 addObject:v43];

  v44 = [v30 topAnchor];
  v45 = [v5 topAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 constant:0.0];
  [(STUIStatusBarVisualProvider_CarPlayVertical *)self setDockGuideTopConstraint:v46];

  v47 = [v30 bottomAnchor];
  v48 = [v5 topAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:0.0];
  [(STUIStatusBarVisualProvider_CarPlayVertical *)self setDockGuideBottomConstraint:v49];

  v50 = [(STUIStatusBarRegion *)v172 layoutItem];
  v51 = [v50 topAnchor];
  v52 = [v5 safeAreaLayoutGuide];
  v53 = [v52 topAnchor];
  v54 = [v51 constraintEqualToAnchor:v53];
  [v6 addObject:v54];

  v55 = [(STUIStatusBarRegion *)v172 layoutItem];
  v56 = [v55 heightAnchor];
  v57 = [v56 constraintEqualToConstant:18.0];
  [v6 addObject:v57];

  v58 = [(STUIStatusBarRegion *)v172 layoutItem];
  v59 = [v58 widthAnchor];
  v60 = [v59 constraintEqualToConstant:39.0];
  [v6 addObject:v60];

  v61 = [(STUIStatusBarRegion *)v172 layoutItem];
  v62 = [v61 centerXAnchor];
  v63 = [v5 centerXAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];
  [v6 addObject:v64];

  v65 = [(STUIStatusBarRegion *)v172 layoutItem];
  [v5 _ui_addSubLayoutItem:v65];

  v66 = [(STUIStatusBarRegion *)v173 layoutItem];
  v67 = [v66 topAnchor];
  v68 = [(STUIStatusBarRegion *)v172 layoutItem];
  v69 = [v68 topAnchor];
  v70 = [v67 constraintEqualToAnchor:v69];
  [v6 addObject:v70];

  v71 = [(STUIStatusBarRegion *)v173 layoutItem];
  v72 = [v71 bottomAnchor];
  v73 = [(STUIStatusBarRegion *)v172 layoutItem];
  v74 = [v73 bottomAnchor];
  v75 = [v72 constraintEqualToAnchor:v74];
  [v6 addObject:v75];

  v76 = [(STUIStatusBarRegion *)v173 layoutItem];
  v77 = [v76 leadingAnchor];
  v78 = [(STUIStatusBarRegion *)v172 layoutItem];
  v79 = [v78 leadingAnchor];
  v80 = [v77 constraintEqualToAnchor:v79];
  [v6 addObject:v80];

  v81 = [(STUIStatusBarRegion *)v173 layoutItem];
  v82 = [v81 trailingAnchor];
  v83 = [(STUIStatusBarRegion *)v172 layoutItem];
  v84 = [v83 trailingAnchor];
  v85 = [v82 constraintEqualToAnchor:v84];
  [v6 addObject:v85];

  v86 = [(STUIStatusBarRegion *)v173 layoutItem];
  [v5 _ui_addSubLayoutItem:v86];

  v87 = [(STUIStatusBarRegion *)v16 layoutItem];
  v88 = [v87 topAnchor];
  v89 = [(STUIStatusBarRegion *)v173 layoutItem];
  v90 = [v89 topAnchor];
  v91 = [v88 constraintEqualToAnchor:v90];
  [v6 addObject:v91];

  v92 = [(STUIStatusBarRegion *)v16 layoutItem];
  v93 = [v92 bottomAnchor];
  v94 = [(STUIStatusBarRegion *)v173 layoutItem];
  v95 = [v94 bottomAnchor];
  v96 = [v93 constraintEqualToAnchor:v95];
  [v6 addObject:v96];

  v97 = [(STUIStatusBarRegion *)v16 layoutItem];
  v98 = [v97 leadingAnchor];
  v99 = [(STUIStatusBarRegion *)v173 layoutItem];
  v100 = [v99 leadingAnchor];
  v101 = [v98 constraintEqualToAnchor:v100];
  [v6 addObject:v101];

  v102 = [(STUIStatusBarRegion *)v16 layoutItem];
  v103 = [v102 trailingAnchor];
  v104 = [(STUIStatusBarRegion *)v173 layoutItem];
  v105 = [v104 trailingAnchor];
  v106 = [v103 constraintEqualToAnchor:v105];
  [v6 addObject:v106];

  v107 = [(STUIStatusBarRegion *)v16 layoutItem];
  [v5 _ui_addSubLayoutItem:v107];

  v108 = [(STUIStatusBarRegion *)v174 layoutItem];
  v109 = [v108 topAnchor];
  v110 = [(STUIStatusBarRegion *)v172 layoutItem];
  v111 = [v110 bottomAnchor];
  v112 = [v109 constraintEqualToAnchor:v111 constant:3.0];
  [v6 addObject:v112];

  v113 = [(STUIStatusBarRegion *)v174 layoutItem];
  v114 = [v113 heightAnchor];
  v115 = [v114 constraintEqualToConstant:10.0];
  [v6 addObject:v115];

  v116 = [(STUIStatusBarRegion *)v174 layoutItem];
  v117 = [v116 leadingAnchor];
  v118 = [v5 leadingAnchor];
  v119 = [v117 constraintEqualToAnchor:v118];
  [v6 addObject:v119];

  v120 = [(STUIStatusBarRegion *)v174 layoutItem];
  v121 = [v120 trailingAnchor];
  v122 = [v5 trailingAnchor];
  v123 = [v121 constraintEqualToAnchor:v122];
  [v6 addObject:v123];

  v124 = [(STUIStatusBarRegion *)v174 layoutItem];
  [v5 _ui_addSubLayoutItem:v124];

  v125 = [(STUIStatusBarRegion *)v163 layoutItem];
  v126 = [v125 topAnchor];
  v127 = [(STUIStatusBarRegion *)v174 layoutItem];
  v128 = [v127 bottomAnchor];
  v129 = [v126 constraintEqualToAnchor:v128 constant:8.0];
  [v6 addObject:v129];

  v130 = [(STUIStatusBarRegion *)v163 layoutItem];
  v131 = [v130 bottomAnchor];
  v132 = [v30 topAnchor];
  v133 = [v131 constraintEqualToAnchor:v132];
  [v6 addObject:v133];

  v134 = [(STUIStatusBarRegion *)v163 layoutItem];
  v135 = [v134 leadingAnchor];
  v136 = [v5 leadingAnchor];
  v137 = [v135 constraintEqualToAnchor:v136];
  [v6 addObject:v137];

  v138 = [(STUIStatusBarRegion *)v163 layoutItem];
  v139 = [v138 trailingAnchor];
  v140 = [v5 trailingAnchor];
  v141 = [v139 constraintEqualToAnchor:v140];
  [v6 addObject:v141];

  v142 = [(STUIStatusBarRegion *)v163 layoutItem];
  [v5 _ui_addSubLayoutItem:v142];

  v143 = [(STUIStatusBarRegion *)v164 layoutItem];
  v144 = [v143 topAnchor];
  v145 = [v30 bottomAnchor];
  v146 = [v144 constraintEqualToAnchor:v145];
  [v6 addObject:v146];

  v147 = [(STUIStatusBarRegion *)v164 layoutItem];
  v148 = [v147 bottomAnchor];
  v149 = [v5 safeAreaLayoutGuide];
  v150 = [v149 bottomAnchor];
  v151 = [v148 constraintEqualToAnchor:v150 constant:-5.0];
  [v6 addObject:v151];

  v152 = [(STUIStatusBarRegion *)v164 layoutItem];
  v153 = [v152 leadingAnchor];
  v154 = [v5 leadingAnchor];
  v155 = [v153 constraintEqualToAnchor:v154];
  [v6 addObject:v155];

  v156 = [(STUIStatusBarRegion *)v164 layoutItem];
  v157 = [v156 trailingAnchor];
  v158 = [v5 trailingAnchor];
  v159 = [v157 constraintEqualToAnchor:v158];
  [v6 addObject:v159];

  v160 = [(STUIStatusBarRegion *)v164 layoutItem];
  [v5 _ui_addSubLayoutItem:v160];

  [MEMORY[0x277CCAAD0] activateConstraints:v6];
  v175[0] = v16;
  v175[1] = v173;
  v175[2] = v172;
  v175[3] = v174;
  v175[4] = v163;
  v175[5] = v164;
  v161 = [MEMORY[0x277CBEA60] arrayWithObjects:v175 count:6];

  return v161;
}

- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)a3
{
  v95[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  orderedDisplayItemPlacements = self->_orderedDisplayItemPlacements;
  if (!orderedDisplayItemPlacements)
  {
    v6 = self;
    +[STUIStatusBarTimeItem shortTimeDisplayIdentifier];
    v7 = v67 = v4;
    v80 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v7 priority:500];

    v8 = +[(STUIStatusBarBackgroundActivityItem *)STUIStatusBarPillBackgroundActivityItem];
    v9 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v8 priority:600];
    v95[0] = v80;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:1];
    v79 = [v9 excludingPlacements:v10];

    v11 = +[STUIStatusBarTimeItem pillTimeDisplayIdentifier];
    v78 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v11 priority:550];

    v12 = +[(STUIStatusBarItem *)STUIStatusBarPillBackgroundActivityItem];
    v13 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v12 priority:575];
    v94 = v78;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v94 count:1];
    v15 = [v13 excludingPlacements:v14];

    v74 = v6;
    v16 = [(STUIStatusBarVisualProvider_CarPlay *)v6 pillRegionCoordinator];
    v77 = v15;
    [v16 setPillIconPlacement:v15];

    v17 = +[(STUIStatusBarBackgroundActivityItem *)STUIStatusBarPillBackgroundActivityItem];
    v18 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v17 priority:574];
    v93 = v15;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v93 count:1];
    v75 = [v18 requiringAllPlacements:v19];

    v20 = +[(STUIStatusBarItem *)STUIStatusBarSensorActivityItem];
    v76 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v20 priority:700];

    v21 = +[(STUIStatusBarItem *)STUIStatusBarSensorActivityItem];
    v66 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v21 priority:699];

    v22 = +[(STUIStatusBarCellularItem *)STUIStatusBarCellularCondensedItem];
    v23 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v22 priority:450];

    v24 = +[STUIStatusBarCellularCondensedItem dualSignalStrengthDisplayIdentifier];
    v25 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v24 priority:475];
    v92 = v23;
    v26 = v23;
    v73 = v23;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v92 count:1];
    v68 = [v25 excludingPlacements:v27];

    v28 = +[(STUIStatusBarCellularItem *)STUIStatusBarCellularCondensedItem];
    v29 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v28 priority:350];

    v30 = +[STUIStatusBarWifiItem signalStrengthDisplayIdentifier];
    v31 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v30 priority:400];
    v91 = v29;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v91 count:1];
    v33 = [v31 excludingPlacements:v32];

    v34 = +[STUIStatusBarWifiItem iconDisplayIdentifier];
    v35 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v34 priority:401];
    v90[0] = v33;
    v90[1] = v29;
    v72 = v33;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:2];
    v71 = [v35 excludingPlacements:v36];

    v37 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAirplaneModeItem];
    v38 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v37 priority:1200];
    v89[0] = v26;
    v89[1] = v68;
    v89[2] = v33;
    v89[3] = v71;
    v89[4] = v29;
    v63 = v29;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:5];
    v70 = [v38 excludingPlacements:v39];

    v40 = +[(STUIStatusBarItem *)STUIStatusBarVoiceControlPillItem];
    v64 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v40 priority:701];

    v41 = +[(STUIStatusBarItem *)STUIStatusBarVoiceControlPillItem];
    v65 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v41 priority:698];

    v42 = +[STUIStatusBarBatteryItem iconDisplayIdentifier];
    v59 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v42 priority:100];

    v43 = +[STUIStatusBarBatteryItem iconDisplayIdentifier];
    v69 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v43 priority:50];

    v44 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorQuietModeAnnounceItem];
    v58 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v44 priority:90];

    v45 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorQuietModeAnnounceItem];
    v57 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v45 priority:85];

    v46 = +[(STUIStatusBarItem *)STUIStatusBarRadarItem];
    v61 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v46 priority:155];

    v47 = +[(STUIStatusBarItem *)STUIStatusBarElectronicTollCollectionItem];
    v48 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v47 priority:150];

    v86 = v80;
    v87[0] = @"time";
    v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
    v88[0] = v62;
    v87[1] = @"pill";
    v85 = v79;
    v60 = [MEMORY[0x277CBEA60] arrayWithObjects:&v85 count:1];
    v88[1] = v60;
    v87[2] = @"pillContent";
    v84[0] = v77;
    v84[1] = v75;
    v84[2] = v78;
    v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:3];
    v88[2] = v49;
    v87[3] = @"signal";
    v83[0] = v73;
    v83[1] = v68;
    v83[2] = v29;
    v83[3] = v33;
    v83[4] = v71;
    v83[5] = v70;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:6];
    v88[3] = v50;
    v87[4] = @"top";
    v82[0] = v58;
    v82[1] = v59;
    v82[2] = v64;
    v82[3] = v76;
    v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:4];
    v88[4] = v51;
    v87[5] = @"bottom";
    v81[0] = v48;
    v81[1] = v57;
    v81[2] = v69;
    v81[3] = v65;
    v81[4] = v61;
    v81[5] = v66;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:6];
    v88[5] = v52;
    v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:6];
    v54 = v74->_orderedDisplayItemPlacements;
    v74->_orderedDisplayItemPlacements = v53;

    v4 = v67;
    orderedDisplayItemPlacements = v74->_orderedDisplayItemPlacements;
  }

  v55 = [(NSDictionary *)orderedDisplayItemPlacements objectForKeyedSubscript:v4, v57];

  return v55;
}

- (void)avoidanceFrameUpdatedFromFrame:(CGRect)a3 withAnimationSettings:(id)a4 options:(unint64_t)a5
{
  v6 = [(STUIStatusBarVisualProvider_CarPlay *)self statusBar:a4];
  [v6 avoidanceFrame];
  [(STUIStatusBarVisualProvider_CarPlayVertical *)self _updateTopAndBottomRegionConstraintsForAvoidanceFrame:?];
}

- (void)_updateTopAndBottomRegionConstraintsForAvoidanceFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectEqualToRect(a3, *MEMORY[0x277CBF3A0]))
  {
    v8 = [(STUIStatusBarVisualProvider_CarPlayVertical *)self dockGuideTopConstraint];
    [v8 setActive:0];

    v9 = [(STUIStatusBarVisualProvider_CarPlayVertical *)self dockGuideBottomConstraint];
    [v9 setActive:0];

    v10 = [(STUIStatusBarVisualProvider_CarPlayVertical *)self dockGuideHeightConstraint];
    [v10 setActive:1];

    [(STUIStatusBarVisualProvider_CarPlayVertical *)self dockGuideCenterYConstraint];
  }

  else
  {
    v11 = [(STUIStatusBarVisualProvider_CarPlayVertical *)self dockGuideHeightConstraint];
    [v11 setActive:0];

    v12 = [(STUIStatusBarVisualProvider_CarPlayVertical *)self dockGuideCenterYConstraint];
    [v12 setActive:0];

    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    MinY = CGRectGetMinY(v20);
    v14 = [(STUIStatusBarVisualProvider_CarPlayVertical *)self dockGuideTopConstraint];
    [v14 setConstant:MinY];

    v15 = [(STUIStatusBarVisualProvider_CarPlayVertical *)self dockGuideTopConstraint];
    [v15 setActive:1];

    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    MaxY = CGRectGetMaxY(v21);
    v17 = [(STUIStatusBarVisualProvider_CarPlayVertical *)self dockGuideBottomConstraint];
    [v17 setConstant:MaxY];

    [(STUIStatusBarVisualProvider_CarPlayVertical *)self dockGuideBottomConstraint];
  }
  v18 = ;
  [v18 setActive:1];
}

@end