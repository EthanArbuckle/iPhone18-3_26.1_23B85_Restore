@interface STUIStatusBarVisualProvider_CarPlayDualPassenger
+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)a3;
- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)a3;
- (id)setupInContainerView:(id)a3;
- (void)itemCreated:(id)a3;
@end

@implementation STUIStatusBarVisualProvider_CarPlayDualPassenger

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
  v6.super_class = STUIStatusBarVisualProvider_CarPlayDualPassenger;
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
  v118[5] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v4 = a3;
  v5 = [v3 array];
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
  v21 = [(STUIStatusBarRegion *)v117 layoutItem];
  v22 = [v21 topAnchor];
  v23 = [v4 topAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:13.0];
  [v5 addObject:v24];

  v25 = [(STUIStatusBarRegion *)v117 layoutItem];
  v26 = [v25 heightAnchor];
  v27 = [v26 constraintEqualToConstant:14.0];
  [v5 addObject:v27];

  v28 = [(STUIStatusBarRegion *)v117 layoutItem];
  v29 = [v28 leadingAnchor];
  v30 = [v4 leadingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];
  [v5 addObject:v31];

  v32 = [(STUIStatusBarRegion *)v117 layoutItem];
  v33 = [v32 trailingAnchor];
  v34 = [v4 trailingAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];
  [v5 addObject:v35];

  v36 = [(STUIStatusBarRegion *)v117 layoutItem];
  [v4 _ui_addSubLayoutItem:v36];

  v37 = [(STUIStatusBarRegion *)v7 layoutItem];
  v38 = [v37 topAnchor];
  v39 = [v4 topAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:68.0];
  [v5 addObject:v40];

  v41 = [(STUIStatusBarRegion *)v7 layoutItem];
  v42 = [v41 leadingAnchor];
  v43 = [v4 leadingAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];
  [v5 addObject:v44];

  v45 = [(STUIStatusBarRegion *)v7 layoutItem];
  v46 = [v45 trailingAnchor];
  v47 = [v4 trailingAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];
  [v5 addObject:v48];

  v49 = [(STUIStatusBarRegion *)v7 layoutItem];
  v50 = [v49 heightAnchor];
  v51 = [v50 constraintEqualToConstant:14.0];
  [v5 addObject:v51];

  v52 = [(STUIStatusBarRegion *)v7 layoutItem];
  [v4 _ui_addSubLayoutItem:v52];

  v53 = [(STUIStatusBarRegion *)v17 layoutItem];
  v54 = [v53 topAnchor];
  v55 = [(STUIStatusBarRegion *)v7 layoutItem];
  v56 = [v55 bottomAnchor];
  v57 = [v54 constraintEqualToAnchor:v56];
  [v5 addObject:v57];

  v58 = [(STUIStatusBarRegion *)v17 layoutItem];
  v59 = [v58 leadingAnchor];
  v60 = [v4 leadingAnchor];
  v61 = [v59 constraintEqualToAnchor:v60];
  [v5 addObject:v61];

  v62 = [(STUIStatusBarRegion *)v17 layoutItem];
  v63 = [v62 trailingAnchor];
  v64 = [v4 trailingAnchor];
  v65 = [v63 constraintEqualToAnchor:v64];
  [v5 addObject:v65];

  v66 = [(STUIStatusBarRegion *)v17 layoutItem];
  v67 = [v66 bottomAnchor];
  v68 = [(STUIStatusBarRegion *)v109 layoutItem];
  v69 = [v68 topAnchor];
  v70 = [v67 constraintEqualToAnchor:v69];
  [v5 addObject:v70];

  v71 = [(STUIStatusBarRegion *)v17 layoutItem];
  [v4 _ui_addSubLayoutItem:v71];

  v72 = [(STUIStatusBarRegion *)v109 layoutItem];
  v73 = [v72 topAnchor];
  v74 = [(STUIStatusBarRegion *)v7 layoutItem];
  v75 = [v74 bottomAnchor];
  v76 = [v73 constraintGreaterThanOrEqualToAnchor:v75];
  [v5 addObject:v76];

  v77 = [(STUIStatusBarRegion *)v109 layoutItem];
  v78 = [v77 bottomAnchor];
  v79 = [(STUIStatusBarRegion *)v110 layoutItem];
  v80 = [v79 topAnchor];
  v81 = [v78 constraintEqualToAnchor:v80 constant:-4.0];
  [v5 addObject:v81];

  v82 = [(STUIStatusBarRegion *)v109 layoutItem];
  v83 = [v82 leadingAnchor];
  v84 = [v4 leadingAnchor];
  v85 = [v83 constraintEqualToAnchor:v84];
  [v5 addObject:v85];

  v86 = [(STUIStatusBarRegion *)v109 layoutItem];
  v87 = [v86 trailingAnchor];
  v88 = [v4 trailingAnchor];
  v89 = [v87 constraintEqualToAnchor:v88];
  [v5 addObject:v89];

  v90 = [(STUIStatusBarRegion *)v109 layoutItem];
  [v4 _ui_addSubLayoutItem:v90];

  v91 = [(STUIStatusBarRegion *)v110 layoutItem];
  v92 = [v91 bottomAnchor];
  v93 = [v4 bottomAnchor];
  v94 = [v92 constraintEqualToAnchor:v93 constant:-19.0];
  [v5 addObject:v94];

  v95 = [(STUIStatusBarRegion *)v110 layoutItem];
  v96 = [v95 leadingAnchor];
  v97 = [v4 leadingAnchor];
  v98 = [v96 constraintEqualToAnchor:v97];
  [v5 addObject:v98];

  v99 = [(STUIStatusBarRegion *)v110 layoutItem];
  v100 = [v99 trailingAnchor];
  v101 = [v4 trailingAnchor];
  v102 = [v100 constraintEqualToAnchor:v101];
  [v5 addObject:v102];

  v103 = [(STUIStatusBarRegion *)v110 layoutItem];
  v104 = [v103 heightAnchor];
  v105 = [v104 constraintEqualToConstant:14.0];
  [v5 addObject:v105];

  v106 = [(STUIStatusBarRegion *)v110 layoutItem];
  [v4 _ui_addSubLayoutItem:v106];

  [MEMORY[0x277CCAAD0] activateConstraints:v5];
  v118[0] = v117;
  v118[1] = v7;
  v118[2] = v17;
  v118[3] = v109;
  v118[4] = v110;
  v107 = [MEMORY[0x277CBEA60] arrayWithObjects:v118 count:5];

  return v107;
}

- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)a3
{
  v106[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v92 = self;
  orderedDisplayItemPlacements = self->_orderedDisplayItemPlacements;
  if (!orderedDisplayItemPlacements)
  {
    +[(STUIStatusBarCellularItem *)STUIStatusBarCellularCondensedItem];
    v6 = v73 = v4;
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

    v51 = [(STUIStatusBarVisualProvider_CarPlay *)v92 statusBar];
    v52 = [v51 additionalDataDelegate];
    v68 = [v52 additionalEntriesByRelativePriority];

    v64 = [STUIStatusBarDisplayItemPlacementAdditionalEntriesGroup groupWithHighPriority:299 lowPriority:200 inAsscendingPriority:1 identifiersByPriority:v68];
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
    v56 = [v64 placements];
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
    v58 = [v56 arrayByAddingObjectsFromArray:v57];
    v99[3] = v58;
    v98[4] = @"battery";
    v93 = v72;
    v59 = [MEMORY[0x277CBEA60] arrayWithObjects:&v93 count:1];
    v99[4] = v59;
    v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:v98 count:5];
    v61 = v92->_orderedDisplayItemPlacements;
    v92->_orderedDisplayItemPlacements = v60;

    v4 = v73;
    orderedDisplayItemPlacements = v92->_orderedDisplayItemPlacements;
  }

  v62 = [(NSDictionary *)orderedDisplayItemPlacements objectForKeyedSubscript:v4];

  return v62;
}

@end