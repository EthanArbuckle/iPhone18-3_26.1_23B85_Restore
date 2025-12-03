@interface STUIStatusBarVisualProvider_CarPlayDualPassenger
+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)orientation;
- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)identifier;
- (id)setupInContainerView:(id)view;
- (void)itemCreated:(id)created;
@end

@implementation STUIStatusBarVisualProvider_CarPlayDualPassenger

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
  v6.super_class = STUIStatusBarVisualProvider_CarPlayDualPassenger;
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
  v118[5] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  viewCopy = view;
  array = [v3 array];
  v117 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"signal"];
  v115 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v116 = objc_alloc_init(STUIStatusBarRegionAxisCenteringLayout);
  [(STUIStatusBarRegionAxisCenteringLayout *)v116 setInterspace:3.0];
  [(STUIStatusBarRegionAxesLayout *)v115 setHorizontalLayout:v116];
  v6 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:1];
  [(STUIStatusBarRegionAxesLayout *)v115 setVerticalLayout:v6];

  [(STUIStatusBarRegion *)v117 setLayout:v115];
  v7 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"etc"];
  v8 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v9 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:1];
  v114 = v8;
  [(STUIStatusBarRegionAxesLayout *)v8 setHorizontalLayout:v9];

  v10 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:1];
  [(STUIStatusBarRegionAxesLayout *)v8 setVerticalLayout:v10];

  [(STUIStatusBarRegion *)v7 setLayout:v8];
  v109 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"bottom"];
  v11 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v12 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:1];
  v113 = v11;
  [(STUIStatusBarRegionAxesLayout *)v11 setHorizontalLayout:v12];

  v13 = objc_alloc_init(STUIStatusBarRegionAxisStackingLayout);
  [(STUIStatusBarRegionAxisStackingLayout *)v13 setAlignment:4];
  [(STUIStatusBarRegionAxisStackingLayout *)v13 setInterspace:4.0];
  [(STUIStatusBarRegionAxesLayout *)v11 setVerticalLayout:v13];

  [(STUIStatusBarRegion *)v109 setLayout:v11];
  v110 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"battery"];
  v14 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v15 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:1];
  v112 = v14;
  [(STUIStatusBarRegionAxesLayout *)v14 setHorizontalLayout:v15];

  v16 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:1];
  [(STUIStatusBarRegionAxesLayout *)v14 setVerticalLayout:v16];

  [(STUIStatusBarRegion *)v110 setLayout:v14];
  v17 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"oppositeDriver"];
  v18 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v19 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:1];
  v111 = v18;
  [(STUIStatusBarRegionAxesLayout *)v18 setHorizontalLayout:v19];

  v20 = objc_alloc_init(STUIStatusBarRegionAxisStackingLayout);
  [(STUIStatusBarRegionAxisStackingLayout *)v20 setHugging:1];
  [(STUIStatusBarRegionAxisStackingLayout *)v20 setAlignment:3];
  [(STUIStatusBarRegionAxisStackingLayout *)v20 setInterspace:4.0];
  [(STUIStatusBarRegionAxesLayout *)v18 setVerticalLayout:v20];

  [(STUIStatusBarRegion *)v17 setLayout:v18];
  layoutItem = [(STUIStatusBarRegion *)v117 layoutItem];
  topAnchor = [layoutItem topAnchor];
  topAnchor2 = [viewCopy topAnchor];
  v24 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:13.0];
  [array addObject:v24];

  layoutItem2 = [(STUIStatusBarRegion *)v117 layoutItem];
  heightAnchor = [layoutItem2 heightAnchor];
  v27 = [heightAnchor constraintEqualToConstant:14.0];
  [array addObject:v27];

  layoutItem3 = [(STUIStatusBarRegion *)v117 layoutItem];
  leadingAnchor = [layoutItem3 leadingAnchor];
  leadingAnchor2 = [viewCopy leadingAnchor];
  v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v31];

  layoutItem4 = [(STUIStatusBarRegion *)v117 layoutItem];
  trailingAnchor = [layoutItem4 trailingAnchor];
  trailingAnchor2 = [viewCopy trailingAnchor];
  v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [array addObject:v35];

  layoutItem5 = [(STUIStatusBarRegion *)v117 layoutItem];
  [viewCopy _ui_addSubLayoutItem:layoutItem5];

  layoutItem6 = [(STUIStatusBarRegion *)v7 layoutItem];
  topAnchor3 = [layoutItem6 topAnchor];
  topAnchor4 = [viewCopy topAnchor];
  v40 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:68.0];
  [array addObject:v40];

  layoutItem7 = [(STUIStatusBarRegion *)v7 layoutItem];
  leadingAnchor3 = [layoutItem7 leadingAnchor];
  leadingAnchor4 = [viewCopy leadingAnchor];
  v44 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [array addObject:v44];

  layoutItem8 = [(STUIStatusBarRegion *)v7 layoutItem];
  trailingAnchor3 = [layoutItem8 trailingAnchor];
  trailingAnchor4 = [viewCopy trailingAnchor];
  v48 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [array addObject:v48];

  layoutItem9 = [(STUIStatusBarRegion *)v7 layoutItem];
  heightAnchor2 = [layoutItem9 heightAnchor];
  v51 = [heightAnchor2 constraintEqualToConstant:14.0];
  [array addObject:v51];

  layoutItem10 = [(STUIStatusBarRegion *)v7 layoutItem];
  [viewCopy _ui_addSubLayoutItem:layoutItem10];

  layoutItem11 = [(STUIStatusBarRegion *)v17 layoutItem];
  topAnchor5 = [layoutItem11 topAnchor];
  layoutItem12 = [(STUIStatusBarRegion *)v7 layoutItem];
  bottomAnchor = [layoutItem12 bottomAnchor];
  v57 = [topAnchor5 constraintEqualToAnchor:bottomAnchor];
  [array addObject:v57];

  layoutItem13 = [(STUIStatusBarRegion *)v17 layoutItem];
  leadingAnchor5 = [layoutItem13 leadingAnchor];
  leadingAnchor6 = [viewCopy leadingAnchor];
  v61 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  [array addObject:v61];

  layoutItem14 = [(STUIStatusBarRegion *)v17 layoutItem];
  trailingAnchor5 = [layoutItem14 trailingAnchor];
  trailingAnchor6 = [viewCopy trailingAnchor];
  v65 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  [array addObject:v65];

  layoutItem15 = [(STUIStatusBarRegion *)v17 layoutItem];
  bottomAnchor2 = [layoutItem15 bottomAnchor];
  layoutItem16 = [(STUIStatusBarRegion *)v109 layoutItem];
  topAnchor6 = [layoutItem16 topAnchor];
  v70 = [bottomAnchor2 constraintEqualToAnchor:topAnchor6];
  [array addObject:v70];

  layoutItem17 = [(STUIStatusBarRegion *)v17 layoutItem];
  [viewCopy _ui_addSubLayoutItem:layoutItem17];

  layoutItem18 = [(STUIStatusBarRegion *)v109 layoutItem];
  topAnchor7 = [layoutItem18 topAnchor];
  layoutItem19 = [(STUIStatusBarRegion *)v7 layoutItem];
  bottomAnchor3 = [layoutItem19 bottomAnchor];
  v76 = [topAnchor7 constraintGreaterThanOrEqualToAnchor:bottomAnchor3];
  [array addObject:v76];

  layoutItem20 = [(STUIStatusBarRegion *)v109 layoutItem];
  bottomAnchor4 = [layoutItem20 bottomAnchor];
  layoutItem21 = [(STUIStatusBarRegion *)v110 layoutItem];
  topAnchor8 = [layoutItem21 topAnchor];
  v81 = [bottomAnchor4 constraintEqualToAnchor:topAnchor8 constant:-4.0];
  [array addObject:v81];

  layoutItem22 = [(STUIStatusBarRegion *)v109 layoutItem];
  leadingAnchor7 = [layoutItem22 leadingAnchor];
  leadingAnchor8 = [viewCopy leadingAnchor];
  v85 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  [array addObject:v85];

  layoutItem23 = [(STUIStatusBarRegion *)v109 layoutItem];
  trailingAnchor7 = [layoutItem23 trailingAnchor];
  trailingAnchor8 = [viewCopy trailingAnchor];
  v89 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  [array addObject:v89];

  layoutItem24 = [(STUIStatusBarRegion *)v109 layoutItem];
  [viewCopy _ui_addSubLayoutItem:layoutItem24];

  layoutItem25 = [(STUIStatusBarRegion *)v110 layoutItem];
  bottomAnchor5 = [layoutItem25 bottomAnchor];
  bottomAnchor6 = [viewCopy bottomAnchor];
  v94 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-19.0];
  [array addObject:v94];

  layoutItem26 = [(STUIStatusBarRegion *)v110 layoutItem];
  leadingAnchor9 = [layoutItem26 leadingAnchor];
  leadingAnchor10 = [viewCopy leadingAnchor];
  v98 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  [array addObject:v98];

  layoutItem27 = [(STUIStatusBarRegion *)v110 layoutItem];
  trailingAnchor9 = [layoutItem27 trailingAnchor];
  trailingAnchor10 = [viewCopy trailingAnchor];
  v102 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  [array addObject:v102];

  layoutItem28 = [(STUIStatusBarRegion *)v110 layoutItem];
  heightAnchor3 = [layoutItem28 heightAnchor];
  v105 = [heightAnchor3 constraintEqualToConstant:14.0];
  [array addObject:v105];

  layoutItem29 = [(STUIStatusBarRegion *)v110 layoutItem];
  [viewCopy _ui_addSubLayoutItem:layoutItem29];

  [MEMORY[0x277CCAAD0] activateConstraints:array];
  v118[0] = v117;
  v118[1] = v7;
  v118[2] = v17;
  v118[3] = v109;
  v118[4] = v110;
  v107 = [MEMORY[0x277CBEA60] arrayWithObjects:v118 count:5];

  return v107;
}

- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)identifier
{
  v106[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  selfCopy = self;
  orderedDisplayItemPlacements = self->_orderedDisplayItemPlacements;
  if (!orderedDisplayItemPlacements)
  {
    +[(STUIStatusBarCellularItem *)STUIStatusBarCellularCondensedItem];
    v6 = v73 = identifierCopy;
    v7 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v6 priority:450];

    v8 = +[STUIStatusBarCellularCondensedItem dualSignalStrengthDisplayIdentifier];
    v9 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v8 priority:475];
    v106[0] = v7;
    v10 = v7;
    v91 = v7;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v106 count:1];
    v88 = [v9 excludingPlacements:v11];

    v12 = +[(STUIStatusBarCellularItem *)STUIStatusBarCellularCondensedItem];
    v13 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v12 priority:350];

    v14 = +[STUIStatusBarWifiItem signalStrengthDisplayIdentifier];
    v15 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v14 priority:400];
    v105 = v13;
    v16 = v13;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v105 count:1];
    v18 = [v15 excludingPlacements:v17];

    v19 = +[STUIStatusBarWifiItem iconDisplayIdentifier];
    v20 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v19 priority:401];
    v104[0] = v18;
    v104[1] = v16;
    v89 = v18;
    v87 = v16;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v104 count:2];
    v90 = [v20 excludingPlacements:v21];

    v22 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAirplaneModeItem];
    v23 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v22 priority:1200];
    v103[0] = v10;
    v103[1] = v88;
    v103[2] = v18;
    v103[3] = v90;
    v103[4] = v16;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:5];
    v86 = [v23 excludingPlacements:v24];

    v25 = +[(STUIStatusBarItem *)STUIStatusBarElectronicTollCollectionItem];
    v84 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v25 priority:150];

    v26 = +[(STUIStatusBarItem *)STUIStatusBarSensorActivityItem];
    v85 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v26 priority:700];

    v27 = +[(STUIStatusBarItem *)STUIStatusBarVoiceControlPillItem];
    v83 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v27 priority:650];

    v28 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorQuietModeItem];
    v82 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v28 priority:85];

    v29 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAnnounceNotificationsItem];
    v69 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v29 priority:84];

    v30 = +[STUIStatusBarBatteryItem iconDisplayIdentifier];
    v72 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v30 priority:100];

    v31 = +[(STUIStatusBarCellularItem *)STUIStatusBarExternalCellularCondensedItem];
    v81 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v31 priority:449];

    v32 = +[(STUIStatusBarCellularItem *)STUIStatusBarExternalCellularCondensedItem];
    v33 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v32 priority:349];

    v34 = +[(STUIStatusBarCellularItem *)STUIStatusBarExternalCellularCondensedItem];
    v79 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v34 priority:348];

    v35 = [STUIStatusBarDisplayItemPlacement spacerPlacementWithSize:339 priority:0.0, 4.0];
    v102[0] = v33;
    v102[1] = v81;
    v80 = v33;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v102 count:2];
    v71 = [v35 requiringAllPlacements:v36];

    v37 = [STUIStatusBarDisplayItemPlacement spacerPlacementWithSize:338 priority:0.0, 4.0];
    v101[0] = v33;
    v101[1] = v79;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v101 count:2];
    v70 = [v37 requiringAllPlacements:v38];

    v39 = +[(STUIStatusBarWifiItem *)STUIStatusBarExternalWifiItem];
    v78 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v39 priority:399];

    v40 = +[(STUIStatusBarWifiItem *)STUIStatusBarExternalWifiItem];
    v77 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v40 priority:398];

    v41 = +[(STUIStatusBarItem *)STUIStatusBarExternalBluetoothItem];
    v76 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v41 priority:40];

    v42 = +[STUIStatusBarPrivacyItem externalCameraDisplayIdentifier];
    v75 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v42 priority:705];

    v43 = +[STUIStatusBarPrivacyItem externalMicrophoneDisplayIdentifier];
    v74 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v43 priority:704];

    v44 = +[STUIStatusBarPrivacyItem externalLocationDisplayIdentifier];
    v67 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v44 priority:703];

    v45 = +[(STUIStatusBarItem *)STUIStatusBarPersonNameItem];
    v46 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v45 priority:30];

    v47 = +[STUIStatusBarPersonNameItem avatarDisplayIdentifier];
    v48 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v47 priority:480];

    v49 = [STUIStatusBarDisplayItemPlacement spacerPlacementWithSize:29 priority:0.0, 4.0];
    v100[0] = v46;
    v100[1] = v48;
    v66 = v48;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:2];
    v65 = [v49 requiringAllPlacements:v50];

    statusBar = [(STUIStatusBarVisualProvider_CarPlay *)selfCopy statusBar];
    additionalDataDelegate = [statusBar additionalDataDelegate];
    additionalEntriesByRelativePriority = [additionalDataDelegate additionalEntriesByRelativePriority];

    v64 = [STUIStatusBarDisplayItemPlacementAdditionalEntriesGroup groupWithHighPriority:299 lowPriority:200 inAsscendingPriority:1 identifiersByPriority:additionalEntriesByRelativePriority];
    v97[0] = v91;
    v97[1] = v88;
    v97[2] = v16;
    v97[3] = v18;
    v97[4] = v90;
    v97[5] = v86;
    v98[0] = @"signal";
    v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:6];
    v99[0] = v53;
    v98[1] = @"etc";
    v96 = v84;
    v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v96 count:1];
    v99[1] = v54;
    v98[2] = @"bottom";
    v95[0] = v85;
    v95[1] = v83;
    v95[2] = v69;
    v95[3] = v82;
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:4];
    v99[2] = v55;
    v98[3] = @"oppositeDriver";
    placements = [v64 placements];
    v94[0] = v48;
    v94[1] = v65;
    v94[2] = v46;
    v94[3] = v67;
    v94[4] = v75;
    v94[5] = v74;
    v94[6] = v76;
    v94[7] = v78;
    v94[8] = v77;
    v94[9] = v79;
    v94[10] = v81;
    v94[11] = v71;
    v94[12] = v70;
    v94[13] = v80;
    v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:14];
    v58 = [placements arrayByAddingObjectsFromArray:v57];
    v99[3] = v58;
    v98[4] = @"battery";
    v93 = v72;
    v59 = [MEMORY[0x277CBEA60] arrayWithObjects:&v93 count:1];
    v99[4] = v59;
    v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:v98 count:5];
    v61 = selfCopy->_orderedDisplayItemPlacements;
    selfCopy->_orderedDisplayItemPlacements = v60;

    identifierCopy = v73;
    orderedDisplayItemPlacements = selfCopy->_orderedDisplayItemPlacements;
  }

  v62 = [(NSDictionary *)orderedDisplayItemPlacements objectForKeyedSubscript:identifierCopy];

  return v62;
}

@end