@interface STUIStatusBarVisualProvider_CarPlayVertical
+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)orientation;
- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)identifier;
- (id)setupInContainerView:(id)view;
- (void)_updateTopAndBottomRegionConstraintsForAvoidanceFrame:(CGRect)frame;
- (void)avoidanceFrameUpdatedFromFrame:(CGRect)frame withAnimationSettings:(id)settings options:(unint64_t)options;
- (void)itemCreated:(id)created;
@end

@implementation STUIStatusBarVisualProvider_CarPlayVertical

+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)orientation
{
  v3 = *MEMORY[0x277D77260];
  v4 = 45.0;
  result.height = v3;
  result.width = v4;
  return result;
}

- (void)itemCreated:(id)created
{
  createdCopy = created;
  v6.receiver = self;
  v6.super_class = STUIStatusBarVisualProvider_CarPlayVertical;
  [(STUIStatusBarVisualProvider_CarPlay *)&v6 itemCreated:createdCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = createdCopy;
    [v5 setItemSpacing:3.0];
    [v5 setAdditionRemovalScale:0.25];
    [v5 setAdditionRemovalDuration:0.25];
  }
}

- (id)setupInContainerView:(id)view
{
  v175[6] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB18];
  viewCopy = view;
  array = [v4 array];
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
  pillRegionCoordinator = [(STUIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
  [pillRegionCoordinator setPillRegion:v11];

  v16 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"pillContent"];
  pillRegionCoordinator2 = [(STUIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
  pillRegion = [pillRegionCoordinator2 pillRegion];
  [(STUIStatusBarRegion *)v16 setEnabilityRegion:pillRegion];

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
  [viewCopy addLayoutGuide:v30];
  heightAnchor = [v30 heightAnchor];
  v32 = [heightAnchor constraintEqualToConstant:111.0];
  [(STUIStatusBarVisualProvider_CarPlayVertical *)self setDockGuideHeightConstraint:v32];

  centerYAnchor = [v30 centerYAnchor];
  centerYAnchor2 = [viewCopy centerYAnchor];
  v35 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [(STUIStatusBarVisualProvider_CarPlayVertical *)self setDockGuideCenterYConstraint:v35];

  dockGuideHeightConstraint = [(STUIStatusBarVisualProvider_CarPlayVertical *)self dockGuideHeightConstraint];
  [array addObject:dockGuideHeightConstraint];

  leadingAnchor = [v30 leadingAnchor];
  leadingAnchor2 = [viewCopy leadingAnchor];
  v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v39];

  trailingAnchor = [v30 trailingAnchor];
  trailingAnchor2 = [viewCopy trailingAnchor];
  v42 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [array addObject:v42];

  dockGuideCenterYConstraint = [(STUIStatusBarVisualProvider_CarPlayVertical *)self dockGuideCenterYConstraint];
  [array addObject:dockGuideCenterYConstraint];

  topAnchor = [v30 topAnchor];
  topAnchor2 = [viewCopy topAnchor];
  v46 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
  [(STUIStatusBarVisualProvider_CarPlayVertical *)self setDockGuideTopConstraint:v46];

  bottomAnchor = [v30 bottomAnchor];
  topAnchor3 = [viewCopy topAnchor];
  v49 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:0.0];
  [(STUIStatusBarVisualProvider_CarPlayVertical *)self setDockGuideBottomConstraint:v49];

  layoutItem = [(STUIStatusBarRegion *)v172 layoutItem];
  topAnchor4 = [layoutItem topAnchor];
  safeAreaLayoutGuide = [viewCopy safeAreaLayoutGuide];
  topAnchor5 = [safeAreaLayoutGuide topAnchor];
  v54 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  [array addObject:v54];

  layoutItem2 = [(STUIStatusBarRegion *)v172 layoutItem];
  heightAnchor2 = [layoutItem2 heightAnchor];
  v57 = [heightAnchor2 constraintEqualToConstant:18.0];
  [array addObject:v57];

  layoutItem3 = [(STUIStatusBarRegion *)v172 layoutItem];
  widthAnchor = [layoutItem3 widthAnchor];
  v60 = [widthAnchor constraintEqualToConstant:39.0];
  [array addObject:v60];

  layoutItem4 = [(STUIStatusBarRegion *)v172 layoutItem];
  centerXAnchor = [layoutItem4 centerXAnchor];
  centerXAnchor2 = [viewCopy centerXAnchor];
  v64 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [array addObject:v64];

  layoutItem5 = [(STUIStatusBarRegion *)v172 layoutItem];
  [viewCopy _ui_addSubLayoutItem:layoutItem5];

  layoutItem6 = [(STUIStatusBarRegion *)v173 layoutItem];
  topAnchor6 = [layoutItem6 topAnchor];
  layoutItem7 = [(STUIStatusBarRegion *)v172 layoutItem];
  topAnchor7 = [layoutItem7 topAnchor];
  v70 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
  [array addObject:v70];

  layoutItem8 = [(STUIStatusBarRegion *)v173 layoutItem];
  bottomAnchor2 = [layoutItem8 bottomAnchor];
  layoutItem9 = [(STUIStatusBarRegion *)v172 layoutItem];
  bottomAnchor3 = [layoutItem9 bottomAnchor];
  v75 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  [array addObject:v75];

  layoutItem10 = [(STUIStatusBarRegion *)v173 layoutItem];
  leadingAnchor3 = [layoutItem10 leadingAnchor];
  layoutItem11 = [(STUIStatusBarRegion *)v172 layoutItem];
  leadingAnchor4 = [layoutItem11 leadingAnchor];
  v80 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [array addObject:v80];

  layoutItem12 = [(STUIStatusBarRegion *)v173 layoutItem];
  trailingAnchor3 = [layoutItem12 trailingAnchor];
  layoutItem13 = [(STUIStatusBarRegion *)v172 layoutItem];
  trailingAnchor4 = [layoutItem13 trailingAnchor];
  v85 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [array addObject:v85];

  layoutItem14 = [(STUIStatusBarRegion *)v173 layoutItem];
  [viewCopy _ui_addSubLayoutItem:layoutItem14];

  layoutItem15 = [(STUIStatusBarRegion *)v16 layoutItem];
  topAnchor8 = [layoutItem15 topAnchor];
  layoutItem16 = [(STUIStatusBarRegion *)v173 layoutItem];
  topAnchor9 = [layoutItem16 topAnchor];
  v91 = [topAnchor8 constraintEqualToAnchor:topAnchor9];
  [array addObject:v91];

  layoutItem17 = [(STUIStatusBarRegion *)v16 layoutItem];
  bottomAnchor4 = [layoutItem17 bottomAnchor];
  layoutItem18 = [(STUIStatusBarRegion *)v173 layoutItem];
  bottomAnchor5 = [layoutItem18 bottomAnchor];
  v96 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  [array addObject:v96];

  layoutItem19 = [(STUIStatusBarRegion *)v16 layoutItem];
  leadingAnchor5 = [layoutItem19 leadingAnchor];
  layoutItem20 = [(STUIStatusBarRegion *)v173 layoutItem];
  leadingAnchor6 = [layoutItem20 leadingAnchor];
  v101 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  [array addObject:v101];

  layoutItem21 = [(STUIStatusBarRegion *)v16 layoutItem];
  trailingAnchor5 = [layoutItem21 trailingAnchor];
  layoutItem22 = [(STUIStatusBarRegion *)v173 layoutItem];
  trailingAnchor6 = [layoutItem22 trailingAnchor];
  v106 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  [array addObject:v106];

  layoutItem23 = [(STUIStatusBarRegion *)v16 layoutItem];
  [viewCopy _ui_addSubLayoutItem:layoutItem23];

  layoutItem24 = [(STUIStatusBarRegion *)v174 layoutItem];
  topAnchor10 = [layoutItem24 topAnchor];
  layoutItem25 = [(STUIStatusBarRegion *)v172 layoutItem];
  bottomAnchor6 = [layoutItem25 bottomAnchor];
  v112 = [topAnchor10 constraintEqualToAnchor:bottomAnchor6 constant:3.0];
  [array addObject:v112];

  layoutItem26 = [(STUIStatusBarRegion *)v174 layoutItem];
  heightAnchor3 = [layoutItem26 heightAnchor];
  v115 = [heightAnchor3 constraintEqualToConstant:10.0];
  [array addObject:v115];

  layoutItem27 = [(STUIStatusBarRegion *)v174 layoutItem];
  leadingAnchor7 = [layoutItem27 leadingAnchor];
  leadingAnchor8 = [viewCopy leadingAnchor];
  v119 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  [array addObject:v119];

  layoutItem28 = [(STUIStatusBarRegion *)v174 layoutItem];
  trailingAnchor7 = [layoutItem28 trailingAnchor];
  trailingAnchor8 = [viewCopy trailingAnchor];
  v123 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  [array addObject:v123];

  layoutItem29 = [(STUIStatusBarRegion *)v174 layoutItem];
  [viewCopy _ui_addSubLayoutItem:layoutItem29];

  layoutItem30 = [(STUIStatusBarRegion *)v163 layoutItem];
  topAnchor11 = [layoutItem30 topAnchor];
  layoutItem31 = [(STUIStatusBarRegion *)v174 layoutItem];
  bottomAnchor7 = [layoutItem31 bottomAnchor];
  v129 = [topAnchor11 constraintEqualToAnchor:bottomAnchor7 constant:8.0];
  [array addObject:v129];

  layoutItem32 = [(STUIStatusBarRegion *)v163 layoutItem];
  bottomAnchor8 = [layoutItem32 bottomAnchor];
  topAnchor12 = [v30 topAnchor];
  v133 = [bottomAnchor8 constraintEqualToAnchor:topAnchor12];
  [array addObject:v133];

  layoutItem33 = [(STUIStatusBarRegion *)v163 layoutItem];
  leadingAnchor9 = [layoutItem33 leadingAnchor];
  leadingAnchor10 = [viewCopy leadingAnchor];
  v137 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  [array addObject:v137];

  layoutItem34 = [(STUIStatusBarRegion *)v163 layoutItem];
  trailingAnchor9 = [layoutItem34 trailingAnchor];
  trailingAnchor10 = [viewCopy trailingAnchor];
  v141 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  [array addObject:v141];

  layoutItem35 = [(STUIStatusBarRegion *)v163 layoutItem];
  [viewCopy _ui_addSubLayoutItem:layoutItem35];

  layoutItem36 = [(STUIStatusBarRegion *)v164 layoutItem];
  topAnchor13 = [layoutItem36 topAnchor];
  bottomAnchor9 = [v30 bottomAnchor];
  v146 = [topAnchor13 constraintEqualToAnchor:bottomAnchor9];
  [array addObject:v146];

  layoutItem37 = [(STUIStatusBarRegion *)v164 layoutItem];
  bottomAnchor10 = [layoutItem37 bottomAnchor];
  safeAreaLayoutGuide2 = [viewCopy safeAreaLayoutGuide];
  bottomAnchor11 = [safeAreaLayoutGuide2 bottomAnchor];
  v151 = [bottomAnchor10 constraintEqualToAnchor:bottomAnchor11 constant:-5.0];
  [array addObject:v151];

  layoutItem38 = [(STUIStatusBarRegion *)v164 layoutItem];
  leadingAnchor11 = [layoutItem38 leadingAnchor];
  leadingAnchor12 = [viewCopy leadingAnchor];
  v155 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
  [array addObject:v155];

  layoutItem39 = [(STUIStatusBarRegion *)v164 layoutItem];
  trailingAnchor11 = [layoutItem39 trailingAnchor];
  trailingAnchor12 = [viewCopy trailingAnchor];
  v159 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
  [array addObject:v159];

  layoutItem40 = [(STUIStatusBarRegion *)v164 layoutItem];
  [viewCopy _ui_addSubLayoutItem:layoutItem40];

  [MEMORY[0x277CCAAD0] activateConstraints:array];
  v175[0] = v16;
  v175[1] = v173;
  v175[2] = v172;
  v175[3] = v174;
  v175[4] = v163;
  v175[5] = v164;
  v161 = [MEMORY[0x277CBEA60] arrayWithObjects:v175 count:6];

  return v161;
}

- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)identifier
{
  v95[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  orderedDisplayItemPlacements = self->_orderedDisplayItemPlacements;
  if (!orderedDisplayItemPlacements)
  {
    selfCopy = self;
    +[STUIStatusBarTimeItem shortTimeDisplayIdentifier];
    v7 = v67 = identifierCopy;
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

    v74 = selfCopy;
    pillRegionCoordinator = [(STUIStatusBarVisualProvider_CarPlay *)selfCopy pillRegionCoordinator];
    v77 = v15;
    [pillRegionCoordinator setPillIconPlacement:v15];

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

    identifierCopy = v67;
    orderedDisplayItemPlacements = v74->_orderedDisplayItemPlacements;
  }

  v55 = [(NSDictionary *)orderedDisplayItemPlacements objectForKeyedSubscript:identifierCopy, v57];

  return v55;
}

- (void)avoidanceFrameUpdatedFromFrame:(CGRect)frame withAnimationSettings:(id)settings options:(unint64_t)options
{
  v6 = [(STUIStatusBarVisualProvider_CarPlay *)self statusBar:settings];
  [v6 avoidanceFrame];
  [(STUIStatusBarVisualProvider_CarPlayVertical *)self _updateTopAndBottomRegionConstraintsForAvoidanceFrame:?];
}

- (void)_updateTopAndBottomRegionConstraintsForAvoidanceFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (CGRectEqualToRect(frame, *MEMORY[0x277CBF3A0]))
  {
    dockGuideTopConstraint = [(STUIStatusBarVisualProvider_CarPlayVertical *)self dockGuideTopConstraint];
    [dockGuideTopConstraint setActive:0];

    dockGuideBottomConstraint = [(STUIStatusBarVisualProvider_CarPlayVertical *)self dockGuideBottomConstraint];
    [dockGuideBottomConstraint setActive:0];

    dockGuideHeightConstraint = [(STUIStatusBarVisualProvider_CarPlayVertical *)self dockGuideHeightConstraint];
    [dockGuideHeightConstraint setActive:1];

    [(STUIStatusBarVisualProvider_CarPlayVertical *)self dockGuideCenterYConstraint];
  }

  else
  {
    dockGuideHeightConstraint2 = [(STUIStatusBarVisualProvider_CarPlayVertical *)self dockGuideHeightConstraint];
    [dockGuideHeightConstraint2 setActive:0];

    dockGuideCenterYConstraint = [(STUIStatusBarVisualProvider_CarPlayVertical *)self dockGuideCenterYConstraint];
    [dockGuideCenterYConstraint setActive:0];

    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    MinY = CGRectGetMinY(v20);
    dockGuideTopConstraint2 = [(STUIStatusBarVisualProvider_CarPlayVertical *)self dockGuideTopConstraint];
    [dockGuideTopConstraint2 setConstant:MinY];

    dockGuideTopConstraint3 = [(STUIStatusBarVisualProvider_CarPlayVertical *)self dockGuideTopConstraint];
    [dockGuideTopConstraint3 setActive:1];

    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    MaxY = CGRectGetMaxY(v21);
    dockGuideBottomConstraint2 = [(STUIStatusBarVisualProvider_CarPlayVertical *)self dockGuideBottomConstraint];
    [dockGuideBottomConstraint2 setConstant:MaxY];

    [(STUIStatusBarVisualProvider_CarPlayVertical *)self dockGuideBottomConstraint];
  }
  v18 = ;
  [v18 setActive:1];
}

@end