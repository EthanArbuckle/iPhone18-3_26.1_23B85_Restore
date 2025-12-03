@interface STUIStatusBarVisualProvider_CarPlayTopStatus
+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)orientation;
- (id)_regionWithIdentifier:(id)identifier;
- (id)_regionWithIdentifier:(id)identifier interspace:(double)interspace;
- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)identifier;
- (id)setupInContainerView:(id)view;
@end

@implementation STUIStatusBarVisualProvider_CarPlayTopStatus

+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)orientation
{
  v3 = *MEMORY[0x277D77260];
  v4 = 35.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)setupInContainerView:(id)view
{
  v145[12] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  array = [MEMORY[0x277CBEB18] array];
  v5 = [(STUIStatusBarVisualProvider_CarPlayTopStatus *)self _regionWithIdentifier:@"time"];
  [(STUIStatusBarVisualProvider_CarPlay *)self setTimeRegion:v5];
  v6 = [(STUIStatusBarVisualProvider_CarPlayTopStatus *)self _regionWithIdentifier:@"pill"];
  [v6 setActionInsets:{-10.0, -10.0, -10.0, -10.0}];
  pillRegionCoordinator = [(STUIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
  v139 = v6;
  [pillRegionCoordinator setPillRegion:v6];

  v8 = [(STUIStatusBarVisualProvider_CarPlayTopStatus *)self _regionWithIdentifier:@"pillContent"];
  pillRegionCoordinator2 = [(STUIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
  pillRegion = [pillRegionCoordinator2 pillRegion];
  v138 = v8;
  [v8 setEnabilityRegion:pillRegion];

  v11 = [(STUIStatusBarVisualProvider_CarPlayTopStatus *)self _regionWithIdentifier:@"sensorActivity"];
  v12 = [(STUIStatusBarVisualProvider_CarPlayTopStatus *)self _regionWithIdentifier:@"oppositeDriver" interspace:8.0];
  [v12 setActionInsets:{-10.0, -10.0, -10.0, -10.0}];
  v13 = [(STUIStatusBarVisualProvider_CarPlayTopStatus *)self _regionWithIdentifier:@"driver" interspace:12.0];
  [v13 setActionInsets:{-10.0, -10.0, -10.0, -10.0}];
  statusBar = [(STUIStatusBarVisualProvider_CarPlay *)self statusBar];
  targetScreen = [statusBar targetScreen];
  LODWORD(pillRegion) = [targetScreen _isRightHandDrive];

  layoutItem = [v5 layoutItem];
  v136 = v11;
  v137 = viewCopy;
  v140 = v5;
  v134 = v13;
  v135 = v12;
  v132 = layoutItem;
  if (pillRegion)
  {
    centerYAnchor = [layoutItem centerYAnchor];
    safeAreaLayoutGuide = [viewCopy safeAreaLayoutGuide];
    [safeAreaLayoutGuide centerYAnchor];
    v126 = v130 = centerYAnchor;
    v124 = [centerYAnchor constraintEqualToAnchor:?];
    v145[0] = v124;
    layoutItem2 = [v5 layoutItem];
    heightAnchor = [layoutItem2 heightAnchor];
    v118 = [heightAnchor constraintEqualToConstant:18.0];
    v145[1] = v118;
    layoutItem3 = [v5 layoutItem];
    widthAnchor = [layoutItem3 widthAnchor];
    safeAreaLayoutGuide7 = [widthAnchor constraintEqualToConstant:39.0];
    v145[2] = safeAreaLayoutGuide7;
    layoutItem4 = [v5 layoutItem];
    rightAnchor = [layoutItem4 rightAnchor];
    safeAreaLayoutGuide2 = [viewCopy safeAreaLayoutGuide];
    [safeAreaLayoutGuide2 rightAnchor];
    heightAnchor4 = v108 = rightAnchor;
    v102 = [rightAnchor constraintEqualToAnchor:-10.0 constant:?];
    v145[3] = v102;
    layoutItem5 = [v11 layoutItem];
    centerYAnchor2 = [layoutItem5 centerYAnchor];
    safeAreaLayoutGuide3 = [viewCopy safeAreaLayoutGuide];
    [safeAreaLayoutGuide3 centerYAnchor];
    v94 = v98 = centerYAnchor2;
    v92 = [centerYAnchor2 constraintEqualToAnchor:?];
    v145[4] = v92;
    layoutItem6 = [v11 layoutItem];
    rightAnchor2 = [layoutItem6 rightAnchor];
    layoutItem7 = [v5 layoutItem];
    [layoutItem7 leftAnchor];
    v84 = v88 = rightAnchor2;
    v82 = [rightAnchor2 constraintEqualToAnchor:-12.0 constant:?];
    v145[5] = v82;
    layoutItem8 = [v12 layoutItem];
    heightAnchor2 = [layoutItem8 heightAnchor];
    v76 = [heightAnchor2 constraintEqualToConstant:10.0];
    v145[6] = v76;
    layoutItem9 = [v12 layoutItem];
    leftAnchor = [layoutItem9 leftAnchor];
    safeAreaLayoutGuide4 = [viewCopy safeAreaLayoutGuide];
    [safeAreaLayoutGuide4 leftAnchor];
    v70 = v72 = leftAnchor;
    v69 = [leftAnchor constraintEqualToAnchor:10.0 constant:?];
    v145[7] = v69;
    layoutItem10 = [v12 layoutItem];
    centerYAnchor3 = [layoutItem10 centerYAnchor];
    safeAreaLayoutGuide5 = [viewCopy safeAreaLayoutGuide];
    [safeAreaLayoutGuide5 centerYAnchor];
    v65 = v67 = centerYAnchor3;
    v64 = [centerYAnchor3 constraintEqualToAnchor:?];
    v145[8] = v64;
    layoutItem11 = [v13 layoutItem];
    centerYAnchor4 = [layoutItem11 centerYAnchor];
    safeAreaLayoutGuide6 = [viewCopy safeAreaLayoutGuide];
    [safeAreaLayoutGuide6 centerYAnchor];
    v60 = v62 = centerYAnchor4;
    v24 = [centerYAnchor4 constraintEqualToAnchor:?];
    v145[9] = v24;
    layoutItem12 = [v13 layoutItem];
    heightAnchor3 = [layoutItem12 heightAnchor];
    safeAreaLayoutGuide8 = [heightAnchor3 constraintEqualToConstant:35.0];
    v145[10] = safeAreaLayoutGuide8;
    layoutItem13 = [v5 layoutItem];
    leftAnchor2 = [layoutItem13 leftAnchor];
    layoutItem14 = [v13 layoutItem];
    rightAnchor3 = [layoutItem14 rightAnchor];
    v32 = [leftAnchor2 constraintEqualToAnchor:rightAnchor3 constant:10.0];
    v145[11] = v32;
    v33 = v145;
  }

  else
  {
    leftAnchor3 = [layoutItem leftAnchor];
    safeAreaLayoutGuide = [viewCopy safeAreaLayoutGuide];
    [safeAreaLayoutGuide leftAnchor];
    v126 = v130 = leftAnchor3;
    v124 = [leftAnchor3 constraintEqualToAnchor:12.0 constant:?];
    v144[0] = v124;
    layoutItem2 = [v5 layoutItem];
    heightAnchor = [layoutItem2 widthAnchor];
    v118 = [heightAnchor constraintEqualToConstant:39.0];
    v144[1] = v118;
    layoutItem3 = [v5 layoutItem];
    centerYAnchor5 = [layoutItem3 centerYAnchor];
    safeAreaLayoutGuide7 = [viewCopy safeAreaLayoutGuide];
    [safeAreaLayoutGuide7 centerYAnchor];
    layoutItem4 = widthAnchor = centerYAnchor5;
    v108 = [centerYAnchor5 constraintEqualToAnchor:?];
    v144[2] = v108;
    safeAreaLayoutGuide2 = [v5 layoutItem];
    heightAnchor4 = [safeAreaLayoutGuide2 heightAnchor];
    v102 = [heightAnchor4 constraintEqualToConstant:18.0];
    v144[3] = v102;
    layoutItem5 = [v13 layoutItem];
    leftAnchor4 = [layoutItem5 leftAnchor];
    safeAreaLayoutGuide3 = [v5 layoutItem];
    [safeAreaLayoutGuide3 rightAnchor];
    v94 = v98 = leftAnchor4;
    v92 = [leftAnchor4 constraintEqualToAnchor:10.0 constant:?];
    v144[4] = v92;
    layoutItem6 = [v13 layoutItem];
    centerYAnchor6 = [layoutItem6 centerYAnchor];
    layoutItem7 = [viewCopy safeAreaLayoutGuide];
    [layoutItem7 centerYAnchor];
    v84 = v88 = centerYAnchor6;
    v82 = [centerYAnchor6 constraintEqualToAnchor:?];
    v144[5] = v82;
    layoutItem8 = [v13 layoutItem];
    heightAnchor2 = [layoutItem8 heightAnchor];
    v76 = [heightAnchor2 constraintEqualToConstant:35.0];
    v144[6] = v76;
    layoutItem9 = [v11 layoutItem];
    leftAnchor5 = [layoutItem9 leftAnchor];
    safeAreaLayoutGuide4 = [v13 layoutItem];
    [safeAreaLayoutGuide4 rightAnchor];
    v70 = v72 = leftAnchor5;
    v69 = [leftAnchor5 constraintEqualToAnchor:12.0 constant:?];
    v144[7] = v69;
    layoutItem10 = [v11 layoutItem];
    centerYAnchor7 = [layoutItem10 centerYAnchor];
    safeAreaLayoutGuide5 = [viewCopy safeAreaLayoutGuide];
    [safeAreaLayoutGuide5 centerYAnchor];
    v65 = v67 = centerYAnchor7;
    v64 = [centerYAnchor7 constraintEqualToAnchor:?];
    v144[8] = v64;
    layoutItem11 = [v12 layoutItem];
    rightAnchor4 = [layoutItem11 rightAnchor];
    safeAreaLayoutGuide6 = [viewCopy safeAreaLayoutGuide];
    [safeAreaLayoutGuide6 rightAnchor];
    v60 = v62 = rightAnchor4;
    v24 = [rightAnchor4 constraintEqualToAnchor:-12.0 constant:?];
    v144[9] = v24;
    layoutItem12 = [v12 layoutItem];
    heightAnchor3 = [layoutItem12 centerYAnchor];
    safeAreaLayoutGuide8 = [viewCopy safeAreaLayoutGuide];
    layoutItem13 = [safeAreaLayoutGuide8 centerYAnchor];
    leftAnchor2 = [heightAnchor3 constraintEqualToAnchor:layoutItem13];
    v144[10] = leftAnchor2;
    layoutItem14 = [v12 layoutItem];
    rightAnchor3 = [layoutItem14 heightAnchor];
    v32 = [rightAnchor3 constraintEqualToConstant:35.0];
    v144[11] = v32;
    v33 = v144;
  }

  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:12];
  [array addObjectsFromArray:v41];

  layoutItem15 = [v139 layoutItem];
  topAnchor = [layoutItem15 topAnchor];
  layoutItem16 = [v140 layoutItem];
  topAnchor2 = [layoutItem16 topAnchor];
  v125 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v143[0] = v125;
  layoutItem17 = [v139 layoutItem];
  bottomAnchor = [layoutItem17 bottomAnchor];
  layoutItem18 = [v140 layoutItem];
  bottomAnchor2 = [layoutItem18 bottomAnchor];
  v115 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v143[1] = v115;
  layoutItem19 = [v139 layoutItem];
  leadingAnchor = [layoutItem19 leadingAnchor];
  layoutItem20 = [v140 layoutItem];
  leadingAnchor2 = [layoutItem20 leadingAnchor];
  v105 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v143[2] = v105;
  layoutItem21 = [v139 layoutItem];
  trailingAnchor = [layoutItem21 trailingAnchor];
  layoutItem22 = [v140 layoutItem];
  trailingAnchor2 = [layoutItem22 trailingAnchor];
  v95 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v143[3] = v95;
  layoutItem23 = [v138 layoutItem];
  topAnchor3 = [layoutItem23 topAnchor];
  layoutItem24 = [v139 layoutItem];
  topAnchor4 = [layoutItem24 topAnchor];
  v85 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v143[4] = v85;
  layoutItem25 = [v138 layoutItem];
  bottomAnchor3 = [layoutItem25 bottomAnchor];
  layoutItem26 = [v139 layoutItem];
  bottomAnchor4 = [layoutItem26 bottomAnchor];
  v75 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v143[5] = v75;
  layoutItem27 = [v138 layoutItem];
  leadingAnchor3 = [layoutItem27 leadingAnchor];
  layoutItem28 = [v139 layoutItem];
  leadingAnchor4 = [layoutItem28 leadingAnchor];
  v45 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v143[6] = v45;
  layoutItem29 = [v138 layoutItem];
  trailingAnchor3 = [layoutItem29 trailingAnchor];
  layoutItem30 = [v139 layoutItem];
  trailingAnchor4 = [layoutItem30 trailingAnchor];
  v50 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v143[7] = v50;
  v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v143 count:8];
  [array addObjectsFromArray:v51];

  layoutItem31 = [v140 layoutItem];
  [v137 _ui_addSubLayoutItem:layoutItem31];

  layoutItem32 = [v136 layoutItem];
  [v137 _ui_addSubLayoutItem:layoutItem32];

  layoutItem33 = [v135 layoutItem];
  [v137 _ui_addSubLayoutItem:layoutItem33];

  layoutItem34 = [v134 layoutItem];
  [v137 _ui_addSubLayoutItem:layoutItem34];

  layoutItem35 = [v139 layoutItem];
  [v137 _ui_addSubLayoutItem:layoutItem35];

  layoutItem36 = [v138 layoutItem];
  [v137 _ui_addSubLayoutItem:layoutItem36];

  [MEMORY[0x277CCAAD0] activateConstraints:array];
  v142[0] = v138;
  v142[1] = v139;
  v142[2] = v140;
  v142[3] = v136;
  v142[4] = v134;
  v142[5] = v135;
  v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v142 count:6];

  return v58;
}

- (id)_regionWithIdentifier:(id)identifier interspace:(double)interspace
{
  identifierCopy = identifier;
  v6 = [[STUIStatusBarRegion alloc] initWithIdentifier:identifierCopy];

  v7 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v8 = objc_alloc_init(STUIStatusBarRegionAxisCenteringLayout);
  [(STUIStatusBarRegionAxisCenteringLayout *)v8 setInterspace:interspace];
  [(STUIStatusBarRegionAxesLayout *)v7 setHorizontalLayout:v8];
  v9 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:1];
  [(STUIStatusBarRegionAxesLayout *)v7 setVerticalLayout:v9];

  [(STUIStatusBarRegion *)v6 setLayout:v7];

  return v6;
}

- (id)_regionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[STUIStatusBarRegion alloc] initWithIdentifier:identifierCopy];

  v5 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v6 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  [(STUIStatusBarRegionAxesLayout *)v5 setHorizontalLayout:v6];

  v7 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  [(STUIStatusBarRegionAxesLayout *)v5 setVerticalLayout:v7];

  [(STUIStatusBarRegion *)v4 setLayout:v5];

  return v4;
}

- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)identifier
{
  v172[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  orderedDisplayItemPlacements = self->_orderedDisplayItemPlacements;
  if (!orderedDisplayItemPlacements)
  {
    v104 = identifierCopy;
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

    pillRegionCoordinator = [(STUIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
    [pillRegionCoordinator setPillIconPlacement:v16];

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
    selfCopy = self;
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

    statusBar = [(STUIStatusBarVisualProvider_CarPlay *)self statusBar];
    additionalDataDelegate = [statusBar additionalDataDelegate];
    additionalEntriesByRelativePriority = [additionalDataDelegate additionalEntriesByRelativePriority];

    v102 = additionalEntriesByRelativePriority;
    v107 = [STUIStatusBarDisplayItemPlacementAdditionalEntriesGroup groupWithHighPriority:299 lowPriority:200 inAsscendingPriority:1 identifiersByPriority:additionalEntriesByRelativePriority];
    v80 = [STUIStatusBarDisplayItemPlacement separatorPlacementWithLineHeight:19 lineWidth:12.0 priority:1.0];
    v81 = [STUIStatusBarDisplayItemPlacement spacerPlacementWithSize:18 priority:-4.0, 0.0];
    v160 = v80;
    v82 = [MEMORY[0x277CBEA60] arrayWithObjects:&v160 count:1];
    v106 = [v81 requiringAnyPlacements:v82];

    v83 = [STUIStatusBarDisplayItemPlacement spacerPlacementWithSize:17 priority:-4.0, 0.0];
    v159 = v80;
    v84 = [MEMORY[0x277CBEA60] arrayWithObjects:&v159 count:1];
    v105 = [v83 requiringAnyPlacements:v84];

    statusBar2 = [(STUIStatusBarVisualProvider_CarPlay *)self statusBar];
    targetScreen = [statusBar2 targetScreen];
    LODWORD(additionalEntriesByRelativePriority) = [targetScreen _isRightHandDrive];

    v103 = v42;
    if (additionalEntriesByRelativePriority)
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
      placements2 = [MEMORY[0x277CBEA60] arrayWithObjects:v151 count:29];
      placements = [v107 placements];
      v93 = [placements2 arrayByAddingObjectsFromArray:placements];
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
      placements2 = [v107 placements];
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
      placements = [MEMORY[0x277CBEA60] arrayWithObjects:v143 count:30];
      v93 = [placements2 arrayByAddingObjectsFromArray:placements];
      v150[5] = v93;
      v94 = MEMORY[0x277CBEAC0];
      v95 = v150;
      v96 = v149;
    }

    v97 = [v94 dictionaryWithObjects:v95 forKeys:v96 count:6];
    v98 = selfCopy->_orderedDisplayItemPlacements;
    selfCopy->_orderedDisplayItemPlacements = v97;

    orderedDisplayItemPlacements = selfCopy->_orderedDisplayItemPlacements;
    identifierCopy = v104;
  }

  v99 = [(NSDictionary *)orderedDisplayItemPlacements objectForKeyedSubscript:identifierCopy];

  return v99;
}

@end