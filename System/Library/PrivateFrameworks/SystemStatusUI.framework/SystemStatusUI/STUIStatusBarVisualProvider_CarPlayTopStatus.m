@interface STUIStatusBarVisualProvider_CarPlayTopStatus
+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)a3;
- (id)_regionWithIdentifier:(id)a3;
- (id)_regionWithIdentifier:(id)a3 interspace:(double)a4;
- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)a3;
- (id)setupInContainerView:(id)a3;
@end

@implementation STUIStatusBarVisualProvider_CarPlayTopStatus

+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)a3
{
  v3 = *MEMORY[0x277D77260];
  v4 = 35.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)setupInContainerView:(id)a3
{
  v145[12] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v141 = [MEMORY[0x277CBEB18] array];
  v5 = [(STUIStatusBarVisualProvider_CarPlayTopStatus *)self _regionWithIdentifier:@"time"];
  [(STUIStatusBarVisualProvider_CarPlay *)self setTimeRegion:v5];
  v6 = [(STUIStatusBarVisualProvider_CarPlayTopStatus *)self _regionWithIdentifier:@"pill"];
  [v6 setActionInsets:{-10.0, -10.0, -10.0, -10.0}];
  v7 = [(STUIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
  v139 = v6;
  [v7 setPillRegion:v6];

  v8 = [(STUIStatusBarVisualProvider_CarPlayTopStatus *)self _regionWithIdentifier:@"pillContent"];
  v9 = [(STUIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
  v10 = [v9 pillRegion];
  v138 = v8;
  [v8 setEnabilityRegion:v10];

  v11 = [(STUIStatusBarVisualProvider_CarPlayTopStatus *)self _regionWithIdentifier:@"sensorActivity"];
  v12 = [(STUIStatusBarVisualProvider_CarPlayTopStatus *)self _regionWithIdentifier:@"oppositeDriver" interspace:8.0];
  [v12 setActionInsets:{-10.0, -10.0, -10.0, -10.0}];
  v13 = [(STUIStatusBarVisualProvider_CarPlayTopStatus *)self _regionWithIdentifier:@"driver" interspace:12.0];
  [v13 setActionInsets:{-10.0, -10.0, -10.0, -10.0}];
  v14 = [(STUIStatusBarVisualProvider_CarPlay *)self statusBar];
  v15 = [v14 targetScreen];
  LODWORD(v10) = [v15 _isRightHandDrive];

  v16 = [v5 layoutItem];
  v136 = v11;
  v137 = v4;
  v140 = v5;
  v134 = v13;
  v135 = v12;
  v132 = v16;
  if (v10)
  {
    v17 = [v16 centerYAnchor];
    v128 = [v4 safeAreaLayoutGuide];
    [v128 centerYAnchor];
    v126 = v130 = v17;
    v124 = [v17 constraintEqualToAnchor:?];
    v145[0] = v124;
    v122 = [v5 layoutItem];
    v120 = [v122 heightAnchor];
    v118 = [v120 constraintEqualToConstant:18.0];
    v145[1] = v118;
    v116 = [v5 layoutItem];
    v114 = [v116 widthAnchor];
    v112 = [v114 constraintEqualToConstant:39.0];
    v145[2] = v112;
    v110 = [v5 layoutItem];
    v18 = [v110 rightAnchor];
    v106 = [v4 safeAreaLayoutGuide];
    [v106 rightAnchor];
    v104 = v108 = v18;
    v102 = [v18 constraintEqualToAnchor:-10.0 constant:?];
    v145[3] = v102;
    v100 = [v11 layoutItem];
    v19 = [v100 centerYAnchor];
    v96 = [v4 safeAreaLayoutGuide];
    [v96 centerYAnchor];
    v94 = v98 = v19;
    v92 = [v19 constraintEqualToAnchor:?];
    v145[4] = v92;
    v90 = [v11 layoutItem];
    v20 = [v90 rightAnchor];
    v86 = [v5 layoutItem];
    [v86 leftAnchor];
    v84 = v88 = v20;
    v82 = [v20 constraintEqualToAnchor:-12.0 constant:?];
    v145[5] = v82;
    v80 = [v12 layoutItem];
    v78 = [v80 heightAnchor];
    v76 = [v78 constraintEqualToConstant:10.0];
    v145[6] = v76;
    v74 = [v12 layoutItem];
    v21 = [v74 leftAnchor];
    v71 = [v4 safeAreaLayoutGuide];
    [v71 leftAnchor];
    v70 = v72 = v21;
    v69 = [v21 constraintEqualToAnchor:10.0 constant:?];
    v145[7] = v69;
    v68 = [v12 layoutItem];
    v22 = [v68 centerYAnchor];
    v66 = [v4 safeAreaLayoutGuide];
    [v66 centerYAnchor];
    v65 = v67 = v22;
    v64 = [v22 constraintEqualToAnchor:?];
    v145[8] = v64;
    v63 = [v13 layoutItem];
    v23 = [v63 centerYAnchor];
    v61 = [v4 safeAreaLayoutGuide];
    [v61 centerYAnchor];
    v60 = v62 = v23;
    v24 = [v23 constraintEqualToAnchor:?];
    v145[9] = v24;
    v25 = [v13 layoutItem];
    v26 = [v25 heightAnchor];
    v27 = [v26 constraintEqualToConstant:35.0];
    v145[10] = v27;
    v28 = [v5 layoutItem];
    v29 = [v28 leftAnchor];
    v30 = [v13 layoutItem];
    v31 = [v30 rightAnchor];
    v32 = [v29 constraintEqualToAnchor:v31 constant:10.0];
    v145[11] = v32;
    v33 = v145;
  }

  else
  {
    v34 = [v16 leftAnchor];
    v128 = [v4 safeAreaLayoutGuide];
    [v128 leftAnchor];
    v126 = v130 = v34;
    v124 = [v34 constraintEqualToAnchor:12.0 constant:?];
    v144[0] = v124;
    v122 = [v5 layoutItem];
    v120 = [v122 widthAnchor];
    v118 = [v120 constraintEqualToConstant:39.0];
    v144[1] = v118;
    v116 = [v5 layoutItem];
    v35 = [v116 centerYAnchor];
    v112 = [v4 safeAreaLayoutGuide];
    [v112 centerYAnchor];
    v110 = v114 = v35;
    v108 = [v35 constraintEqualToAnchor:?];
    v144[2] = v108;
    v106 = [v5 layoutItem];
    v104 = [v106 heightAnchor];
    v102 = [v104 constraintEqualToConstant:18.0];
    v144[3] = v102;
    v100 = [v13 layoutItem];
    v36 = [v100 leftAnchor];
    v96 = [v5 layoutItem];
    [v96 rightAnchor];
    v94 = v98 = v36;
    v92 = [v36 constraintEqualToAnchor:10.0 constant:?];
    v144[4] = v92;
    v90 = [v13 layoutItem];
    v37 = [v90 centerYAnchor];
    v86 = [v4 safeAreaLayoutGuide];
    [v86 centerYAnchor];
    v84 = v88 = v37;
    v82 = [v37 constraintEqualToAnchor:?];
    v144[5] = v82;
    v80 = [v13 layoutItem];
    v78 = [v80 heightAnchor];
    v76 = [v78 constraintEqualToConstant:35.0];
    v144[6] = v76;
    v74 = [v11 layoutItem];
    v38 = [v74 leftAnchor];
    v71 = [v13 layoutItem];
    [v71 rightAnchor];
    v70 = v72 = v38;
    v69 = [v38 constraintEqualToAnchor:12.0 constant:?];
    v144[7] = v69;
    v68 = [v11 layoutItem];
    v39 = [v68 centerYAnchor];
    v66 = [v4 safeAreaLayoutGuide];
    [v66 centerYAnchor];
    v65 = v67 = v39;
    v64 = [v39 constraintEqualToAnchor:?];
    v144[8] = v64;
    v63 = [v12 layoutItem];
    v40 = [v63 rightAnchor];
    v61 = [v4 safeAreaLayoutGuide];
    [v61 rightAnchor];
    v60 = v62 = v40;
    v24 = [v40 constraintEqualToAnchor:-12.0 constant:?];
    v144[9] = v24;
    v25 = [v12 layoutItem];
    v26 = [v25 centerYAnchor];
    v27 = [v4 safeAreaLayoutGuide];
    v28 = [v27 centerYAnchor];
    v29 = [v26 constraintEqualToAnchor:v28];
    v144[10] = v29;
    v30 = [v12 layoutItem];
    v31 = [v30 heightAnchor];
    v32 = [v31 constraintEqualToConstant:35.0];
    v144[11] = v32;
    v33 = v144;
  }

  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:12];
  [v141 addObjectsFromArray:v41];

  v133 = [v139 layoutItem];
  v129 = [v133 topAnchor];
  v131 = [v140 layoutItem];
  v127 = [v131 topAnchor];
  v125 = [v129 constraintEqualToAnchor:v127];
  v143[0] = v125;
  v123 = [v139 layoutItem];
  v119 = [v123 bottomAnchor];
  v121 = [v140 layoutItem];
  v117 = [v121 bottomAnchor];
  v115 = [v119 constraintEqualToAnchor:v117];
  v143[1] = v115;
  v113 = [v139 layoutItem];
  v109 = [v113 leadingAnchor];
  v111 = [v140 layoutItem];
  v107 = [v111 leadingAnchor];
  v105 = [v109 constraintEqualToAnchor:v107];
  v143[2] = v105;
  v103 = [v139 layoutItem];
  v99 = [v103 trailingAnchor];
  v101 = [v140 layoutItem];
  v97 = [v101 trailingAnchor];
  v95 = [v99 constraintEqualToAnchor:v97];
  v143[3] = v95;
  v93 = [v138 layoutItem];
  v89 = [v93 topAnchor];
  v91 = [v139 layoutItem];
  v87 = [v91 topAnchor];
  v85 = [v89 constraintEqualToAnchor:v87];
  v143[4] = v85;
  v83 = [v138 layoutItem];
  v79 = [v83 bottomAnchor];
  v81 = [v139 layoutItem];
  v77 = [v81 bottomAnchor];
  v75 = [v79 constraintEqualToAnchor:v77];
  v143[5] = v75;
  v73 = [v138 layoutItem];
  v42 = [v73 leadingAnchor];
  v43 = [v139 layoutItem];
  v44 = [v43 leadingAnchor];
  v45 = [v42 constraintEqualToAnchor:v44];
  v143[6] = v45;
  v46 = [v138 layoutItem];
  v47 = [v46 trailingAnchor];
  v48 = [v139 layoutItem];
  v49 = [v48 trailingAnchor];
  v50 = [v47 constraintEqualToAnchor:v49];
  v143[7] = v50;
  v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v143 count:8];
  [v141 addObjectsFromArray:v51];

  v52 = [v140 layoutItem];
  [v137 _ui_addSubLayoutItem:v52];

  v53 = [v136 layoutItem];
  [v137 _ui_addSubLayoutItem:v53];

  v54 = [v135 layoutItem];
  [v137 _ui_addSubLayoutItem:v54];

  v55 = [v134 layoutItem];
  [v137 _ui_addSubLayoutItem:v55];

  v56 = [v139 layoutItem];
  [v137 _ui_addSubLayoutItem:v56];

  v57 = [v138 layoutItem];
  [v137 _ui_addSubLayoutItem:v57];

  [MEMORY[0x277CCAAD0] activateConstraints:v141];
  v142[0] = v138;
  v142[1] = v139;
  v142[2] = v140;
  v142[3] = v136;
  v142[4] = v134;
  v142[5] = v135;
  v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v142 count:6];

  return v58;
}

- (id)_regionWithIdentifier:(id)a3 interspace:(double)a4
{
  v5 = a3;
  v6 = [[STUIStatusBarRegion alloc] initWithIdentifier:v5];

  v7 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v8 = objc_alloc_init(STUIStatusBarRegionAxisCenteringLayout);
  [(STUIStatusBarRegionAxisCenteringLayout *)v8 setInterspace:a4];
  [(STUIStatusBarRegionAxesLayout *)v7 setHorizontalLayout:v8];
  v9 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:1];
  [(STUIStatusBarRegionAxesLayout *)v7 setVerticalLayout:v9];

  [(STUIStatusBarRegion *)v6 setLayout:v7];

  return v6;
}

- (id)_regionWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[STUIStatusBarRegion alloc] initWithIdentifier:v3];

  v5 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v6 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  [(STUIStatusBarRegionAxesLayout *)v5 setHorizontalLayout:v6];

  v7 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  [(STUIStatusBarRegionAxesLayout *)v5 setVerticalLayout:v7];

  [(STUIStatusBarRegion *)v4 setLayout:v5];

  return v4;
}

- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)a3
{
  v172[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  orderedDisplayItemPlacements = self->_orderedDisplayItemPlacements;
  if (!orderedDisplayItemPlacements)
  {
    v104 = v4;
    v6 = +[STUIStatusBarTimeItem shortTimeDisplayIdentifier];
    v7 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v6 priority:500];

    v8 = +[(STUIStatusBarBackgroundActivityItem *)STUIStatusBarPillBackgroundActivityItem];
    v9 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v8 priority:600];
    v141 = v7;
    v172[0] = v7;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v172 count:1];
    v140 = [v9 excludingPlacements:v10];

    v11 = +[STUIStatusBarTimeItem pillTimeDisplayIdentifier];
    v12 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v11 priority:550];

    v13 = +[(STUIStatusBarItem *)STUIStatusBarPillBackgroundActivityItem];
    v14 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v13 priority:575];
    v139 = v12;
    v171 = v12;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v171 count:1];
    v16 = [v14 excludingPlacements:v15];

    v17 = [(STUIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
    [v17 setPillIconPlacement:v16];

    v18 = +[(STUIStatusBarBackgroundActivityItem *)STUIStatusBarPillBackgroundActivityItem];
    v19 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v18 priority:574];
    v138 = v16;
    v170 = v16;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v170 count:1];
    v137 = [v19 requiringAllPlacements:v20];

    v21 = +[(STUIStatusBarItem *)STUIStatusBarSensorActivityItem];
    v136 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v21 priority:700];

    v22 = +[(STUIStatusBarCellularItem *)STUIStatusBarCellularCondensedItem];
    v23 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v22 priority:450];

    v24 = +[STUIStatusBarCellularCondensedItem dualSignalStrengthDisplayIdentifier];
    v25 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v24 priority:475];
    v169 = v23;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v169 count:1];
    v27 = [v25 excludingPlacements:v26];

    v28 = +[(STUIStatusBarCellularItem *)STUIStatusBarCellularCondensedItem];
    v29 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v28 priority:350];

    v30 = [STUIStatusBarDisplayItemPlacement spacerPlacementWithSize:340 priority:-12.0, 0.0];
    v168[0] = v29;
    v168[1] = v23;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v168 count:2];
    v132 = [v30 requiringAllPlacements:v31];

    v32 = +[STUIStatusBarWifiItem signalStrengthDisplayIdentifier];
    v33 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v32 priority:400];
    v167 = v29;
    v142 = self;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v167 count:1];
    v35 = [v33 excludingPlacements:v34];

    v36 = +[STUIStatusBarWifiItem iconDisplayIdentifier];
    v37 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v36 priority:401];
    v166[0] = v35;
    v166[1] = v29;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v166 count:2];
    v130 = [v37 excludingPlacements:v38];

    v39 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAirplaneModeItem];
    v40 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v39 priority:1200];
    v134 = v27;
    v135 = v23;
    v165[0] = v23;
    v165[1] = v27;
    v131 = v35;
    v165[2] = v35;
    v165[3] = v29;
    v133 = v29;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v165 count:4];
    v42 = [v40 excludingPlacements:v41];

    v43 = +[(STUIStatusBarItem *)STUIStatusBarVoiceControlPillItem];
    v44 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v43 priority:650];

    v45 = +[STUIStatusBarBatteryItem iconDisplayIdentifier];
    v46 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v45 priority:100];

    v47 = [STUIStatusBarDisplayItemPlacement spacerPlacementWithSize:99 priority:-4.0, 0.0];
    v129 = v46;
    v164 = v46;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v164 count:1];
    v128 = [v47 requiringAnyPlacements:v48];

    v49 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAnnounceNotificationsItem];
    v127 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v49 priority:85];

    v50 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorQuietModeItem];
    v126 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v50 priority:90];

    v51 = +[(STUIStatusBarItem *)STUIStatusBarElectronicTollCollectionItem];
    v125 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v51 priority:150];

    v52 = +[(STUIStatusBarItem *)STUIStatusBarWeatherItem];
    v124 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v52 priority:488];

    v53 = +[STUIStatusBarWeatherItem temperatureDisplayIdentifier];
    v123 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v53 priority:489];

    v54 = +[STUIStatusBarWeatherItem aqiDisplayIdentifier];
    v122 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v54 priority:490];

    v55 = +[(STUIStatusBarCellularItem *)STUIStatusBarExternalCellularCondensedItem];
    v56 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v55 priority:449];

    v57 = +[(STUIStatusBarCellularItem *)STUIStatusBarExternalCellularCondensedItem];
    v58 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v57 priority:349];

    v59 = +[(STUIStatusBarCellularItem *)STUIStatusBarExternalCellularCondensedItem];
    v60 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v59 priority:348];

    v61 = [STUIStatusBarDisplayItemPlacement spacerPlacementWithSize:339 priority:-12.0, 0.0];
    v163[0] = v58;
    v163[1] = v56;
    v121 = v56;
    v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v163 count:2];
    v118 = [v61 requiringAllPlacements:v62];

    v63 = [STUIStatusBarDisplayItemPlacement spacerPlacementWithSize:338 priority:-12.0, 0.0];
    v119 = v60;
    v120 = v58;
    v162[0] = v58;
    v162[1] = v60;
    v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v162 count:2];
    v117 = [v63 requiringAllPlacements:v64];

    v65 = +[(STUIStatusBarWifiItem *)STUIStatusBarExternalWifiItem];
    v116 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v65 priority:399];

    v66 = +[(STUIStatusBarWifiItem *)STUIStatusBarExternalWifiItem];
    v115 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v66 priority:398];

    v67 = +[(STUIStatusBarItem *)STUIStatusBarExternalBluetoothItem];
    v114 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v67 priority:40];

    v68 = +[STUIStatusBarPrivacyItem externalCameraDisplayIdentifier];
    v113 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v68 priority:705];

    v69 = +[STUIStatusBarPrivacyItem externalMicrophoneDisplayIdentifier];
    v112 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v69 priority:704];

    v70 = +[STUIStatusBarPrivacyItem externalLocationDisplayIdentifier];
    v111 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v70 priority:703];

    v71 = +[(STUIStatusBarItem *)STUIStatusBarPersonNameItem];
    v72 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v71 priority:30];

    v73 = +[STUIStatusBarPersonNameItem avatarDisplayIdentifier];
    v74 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v73 priority:480];

    v75 = [STUIStatusBarDisplayItemPlacement spacerPlacementWithSize:29 priority:-12.0, 0.0];
    v109 = v74;
    v110 = v72;
    v161[0] = v72;
    v161[1] = v74;
    v76 = [MEMORY[0x277CBEA60] arrayWithObjects:v161 count:2];
    v108 = [v75 requiringAllPlacements:v76];

    v77 = [(STUIStatusBarVisualProvider_CarPlay *)self statusBar];
    v78 = [v77 additionalDataDelegate];
    v79 = [v78 additionalEntriesByRelativePriority];

    v102 = v79;
    v107 = [STUIStatusBarDisplayItemPlacementAdditionalEntriesGroup groupWithHighPriority:299 lowPriority:200 inAsscendingPriority:1 identifiersByPriority:v79];
    v80 = [STUIStatusBarDisplayItemPlacement separatorPlacementWithLineHeight:19 lineWidth:12.0 priority:1.0];
    v81 = [STUIStatusBarDisplayItemPlacement spacerPlacementWithSize:18 priority:-4.0, 0.0];
    v160 = v80;
    v82 = [MEMORY[0x277CBEA60] arrayWithObjects:&v160 count:1];
    v106 = [v81 requiringAnyPlacements:v82];

    v83 = [STUIStatusBarDisplayItemPlacement spacerPlacementWithSize:17 priority:-4.0, 0.0];
    v159 = v80;
    v84 = [MEMORY[0x277CBEA60] arrayWithObjects:&v159 count:1];
    v105 = [v83 requiringAnyPlacements:v84];

    v85 = [(STUIStatusBarVisualProvider_CarPlay *)self statusBar];
    v86 = [v85 targetScreen];
    LODWORD(v79) = [v86 _isRightHandDrive];

    v103 = v42;
    if (v79)
    {
      v157[0] = @"time";
      v156 = v141;
      v101 = [MEMORY[0x277CBEA60] arrayWithObjects:&v156 count:1];
      v158[0] = v101;
      v157[1] = @"pill";
      v155 = v140;
      v87 = [MEMORY[0x277CBEA60] arrayWithObjects:&v155 count:1];
      v158[1] = v87;
      v157[2] = @"pillContent";
      v154[0] = v138;
      v154[1] = v137;
      v154[2] = v139;
      v88 = [MEMORY[0x277CBEA60] arrayWithObjects:v154 count:3];
      v158[2] = v88;
      v157[3] = @"sensorActivity";
      v153 = v136;
      v89 = [MEMORY[0x277CBEA60] arrayWithObjects:&v153 count:1];
      v158[3] = v89;
      v157[4] = @"driver";
      v152[0] = v124;
      v152[1] = v123;
      v152[2] = v122;
      v152[3] = v125;
      v90 = [MEMORY[0x277CBEA60] arrayWithObjects:v152 count:4];
      v157[5] = @"oppositeDriver";
      v158[4] = v90;
      v151[0] = v129;
      v151[1] = v128;
      v151[2] = v44;
      v151[3] = v134;
      v151[4] = v135;
      v151[5] = v132;
      v151[6] = v133;
      v151[7] = v131;
      v151[8] = v130;
      v151[9] = v42;
      v151[10] = v127;
      v151[11] = v126;
      v151[12] = v106;
      v151[13] = v80;
      v151[14] = v105;
      v151[15] = v121;
      v151[16] = v118;
      v151[17] = v117;
      v151[18] = v120;
      v151[19] = v119;
      v151[20] = v116;
      v151[21] = v115;
      v151[22] = v114;
      v151[23] = v111;
      v151[24] = v113;
      v151[25] = v112;
      v151[26] = v109;
      v151[27] = v108;
      v151[28] = v110;
      v91 = [MEMORY[0x277CBEA60] arrayWithObjects:v151 count:29];
      v92 = [v107 placements];
      v93 = [v91 arrayByAddingObjectsFromArray:v92];
      v158[5] = v93;
      v94 = MEMORY[0x277CBEAC0];
      v95 = v158;
      v96 = v157;
    }

    else
    {
      v149[0] = @"time";
      v148 = v141;
      v101 = [MEMORY[0x277CBEA60] arrayWithObjects:&v148 count:1];
      v150[0] = v101;
      v149[1] = @"pill";
      v147 = v140;
      v87 = [MEMORY[0x277CBEA60] arrayWithObjects:&v147 count:1];
      v150[1] = v87;
      v149[2] = @"pillContent";
      v146[0] = v138;
      v146[1] = v137;
      v146[2] = v139;
      v88 = [MEMORY[0x277CBEA60] arrayWithObjects:v146 count:3];
      v150[2] = v88;
      v149[3] = @"sensorActivity";
      v145 = v136;
      v89 = [MEMORY[0x277CBEA60] arrayWithObjects:&v145 count:1];
      v150[3] = v89;
      v149[4] = @"driver";
      v144[0] = v124;
      v144[1] = v123;
      v144[2] = v122;
      v90 = [MEMORY[0x277CBEA60] arrayWithObjects:v144 count:3];
      v150[4] = v90;
      v149[5] = @"oppositeDriver";
      v91 = [v107 placements];
      v143[0] = v109;
      v143[1] = v108;
      v143[2] = v110;
      v143[3] = v125;
      v143[4] = v111;
      v143[5] = v113;
      v143[6] = v112;
      v143[7] = v114;
      v143[8] = v116;
      v143[9] = v115;
      v143[10] = v119;
      v143[11] = v121;
      v143[12] = v118;
      v143[13] = v117;
      v143[14] = v120;
      v143[15] = v106;
      v143[16] = v80;
      v143[17] = v105;
      v143[18] = v127;
      v143[19] = v126;
      v143[20] = v134;
      v143[21] = v135;
      v143[22] = v132;
      v143[23] = v133;
      v143[24] = v131;
      v143[25] = v130;
      v143[26] = v42;
      v143[27] = v44;
      v143[28] = v128;
      v143[29] = v129;
      v92 = [MEMORY[0x277CBEA60] arrayWithObjects:v143 count:30];
      v93 = [v91 arrayByAddingObjectsFromArray:v92];
      v150[5] = v93;
      v94 = MEMORY[0x277CBEAC0];
      v95 = v150;
      v96 = v149;
    }

    v97 = [v94 dictionaryWithObjects:v95 forKeys:v96 count:6];
    v98 = v142->_orderedDisplayItemPlacements;
    v142->_orderedDisplayItemPlacements = v97;

    orderedDisplayItemPlacements = v142->_orderedDisplayItemPlacements;
    v4 = v104;
  }

  v99 = [(NSDictionary *)orderedDisplayItemPlacements objectForKeyedSubscript:v4];

  return v99;
}

@end