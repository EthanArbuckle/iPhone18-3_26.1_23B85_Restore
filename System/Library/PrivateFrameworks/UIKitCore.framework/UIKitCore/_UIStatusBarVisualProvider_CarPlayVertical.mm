@interface _UIStatusBarVisualProvider_CarPlayVertical
+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)orientation;
- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)identifier;
- (id)setupInContainerView:(id)view;
- (void)itemCreated:(id)created;
@end

@implementation _UIStatusBarVisualProvider_CarPlayVertical

+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)orientation
{
  v3 = 45.0;
  v4 = -1.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)itemCreated:(id)created
{
  createdCopy = created;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = createdCopy;
    [v3 setItemSpacing:3.0];
    [v3 setAdditionRemovalScale:0.25];
    [v3 setAdditionRemovalDuration:0.25];
  }
}

- (id)setupInContainerView:(id)view
{
  v167[6] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF70];
  viewCopy = view;
  array = [v4 array];
  v7 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"time"];
  v8 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v9 = +[_UIStatusBarRegionAxisFillingLayout fillingLayout];
  v162 = v8;
  [(_UIStatusBarRegionAxesLayout *)v8 setHorizontalLayout:v9];

  v10 = +[_UIStatusBarRegionAxisFillingLayout fillingLayout];
  [(_UIStatusBarRegionAxesLayout *)v8 setVerticalLayout:v10];

  v163 = v7;
  [(_UIStatusBarRegion *)v7 setLayout:v8];
  [(_UIStatusBarVisualProvider_CarPlay *)self setTimeRegion:v7];
  v11 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"pill"];
  v12 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v13 = +[_UIStatusBarRegionAxisFillingLayout fillingLayout];
  v161 = v12;
  [(_UIStatusBarRegionAxesLayout *)v12 setHorizontalLayout:v13];

  v14 = +[_UIStatusBarRegionAxisFillingLayout fillingLayout];
  [(_UIStatusBarRegionAxesLayout *)v12 setVerticalLayout:v14];

  [(_UIStatusBarRegion *)v11 setLayout:v12];
  v164 = v11;
  [(_UIStatusBarRegion *)v11 setActionInsets:0.0, -3.0, -13.0, -3.0];
  pillRegionCoordinator = [(_UIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
  [pillRegionCoordinator setPillRegion:v11];

  v16 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"pillContent"];
  pillRegionCoordinator2 = [(_UIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
  pillRegion = [pillRegionCoordinator2 pillRegion];
  v165 = v16;
  [(_UIStatusBarRegion *)v16 setEnabilityRegion:pillRegion];

  v19 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v20 = +[_UIStatusBarRegionAxisFillingLayout fillingLayout];
  v160 = v19;
  [(_UIStatusBarRegionAxesLayout *)v19 setHorizontalLayout:v20];

  v21 = +[_UIStatusBarRegionAxisFillingLayout fillingLayout];
  [(_UIStatusBarRegionAxesLayout *)v19 setVerticalLayout:v21];

  [(_UIStatusBarRegion *)v16 setLayout:v19];
  v166 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"signal"];
  v158 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v159 = objc_alloc_init(_UIStatusBarRegionAxisCenteringLayout);
  [(_UIStatusBarRegionAxisCenteringLayout *)v159 setInterspace:3.0];
  [(_UIStatusBarRegionAxesLayout *)v158 setHorizontalLayout:v159];
  v22 = [_UIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:1];
  [(_UIStatusBarRegionAxesLayout *)v158 setVerticalLayout:v22];

  [(_UIStatusBarRegion *)v166 setLayout:v158];
  v155 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"top"];
  v23 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v24 = [_UIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:1];
  v157 = v23;
  [(_UIStatusBarRegionAxesLayout *)v23 setHorizontalLayout:v24];

  v25 = objc_alloc_init(_UIStatusBarRegionAxisStackingLayout);
  [(_UIStatusBarRegionAxisStackingLayout *)v25 setAlignment:3];
  [(_UIStatusBarRegionAxisStackingLayout *)v25 setInterspace:8.0];
  [(_UIStatusBarRegionAxesLayout *)v23 setVerticalLayout:v25];

  [(_UIStatusBarRegion *)v155 setLayout:v23];
  v26 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"bottom"];
  v27 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v28 = [_UIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:1];
  v156 = v27;
  [(_UIStatusBarRegionAxesLayout *)v27 setHorizontalLayout:v28];

  v29 = objc_alloc_init(_UIStatusBarRegionAxisStackingLayout);
  [(_UIStatusBarRegionAxisStackingLayout *)v29 setAlignment:1];
  [(_UIStatusBarRegionAxisStackingLayout *)v29 setInterspace:8.0];
  [(_UIStatusBarRegionAxesLayout *)v27 setVerticalLayout:v29];

  [(_UIStatusBarRegion *)v26 setLayout:v27];
  [(_UIStatusBarRegion *)v26 setActionInsets:0.0, -3.0, -10.0, -10.0];
  [(_UIStatusBarVisualProvider_CarPlay *)self setRadarRegion:v26];
  v30 = objc_alloc_init(UILayoutGuide);
  [viewCopy addLayoutGuide:v30];
  heightAnchor = [(UILayoutGuide *)v30 heightAnchor];
  v32 = [heightAnchor constraintEqualToConstant:103.0];
  [array addObject:v32];

  leadingAnchor = [(UILayoutGuide *)v30 leadingAnchor];
  leadingAnchor2 = [viewCopy leadingAnchor];
  v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v35];

  trailingAnchor = [(UILayoutGuide *)v30 trailingAnchor];
  trailingAnchor2 = [viewCopy trailingAnchor];
  v38 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [array addObject:v38];

  centerYAnchor = [(UILayoutGuide *)v30 centerYAnchor];
  centerYAnchor2 = [viewCopy centerYAnchor];
  v41 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [array addObject:v41];

  layoutItem = [(_UIStatusBarRegion *)v163 layoutItem];
  topAnchor = [layoutItem topAnchor];
  safeAreaLayoutGuide = [viewCopy safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v46 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [array addObject:v46];

  layoutItem2 = [(_UIStatusBarRegion *)v163 layoutItem];
  heightAnchor2 = [layoutItem2 heightAnchor];
  v49 = [heightAnchor2 constraintEqualToConstant:18.0];
  [array addObject:v49];

  layoutItem3 = [(_UIStatusBarRegion *)v163 layoutItem];
  widthAnchor = [layoutItem3 widthAnchor];
  v52 = [widthAnchor constraintEqualToConstant:39.0];
  [array addObject:v52];

  layoutItem4 = [(_UIStatusBarRegion *)v163 layoutItem];
  centerXAnchor = [layoutItem4 centerXAnchor];
  centerXAnchor2 = [viewCopy centerXAnchor];
  v56 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [array addObject:v56];

  layoutItem5 = [(_UIStatusBarRegion *)v163 layoutItem];
  [viewCopy _ui_addSubLayoutItem:layoutItem5];

  layoutItem6 = [(_UIStatusBarRegion *)v164 layoutItem];
  topAnchor3 = [layoutItem6 topAnchor];
  layoutItem7 = [(_UIStatusBarRegion *)v163 layoutItem];
  topAnchor4 = [layoutItem7 topAnchor];
  v62 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [array addObject:v62];

  layoutItem8 = [(_UIStatusBarRegion *)v164 layoutItem];
  bottomAnchor = [layoutItem8 bottomAnchor];
  layoutItem9 = [(_UIStatusBarRegion *)v163 layoutItem];
  bottomAnchor2 = [layoutItem9 bottomAnchor];
  v67 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [array addObject:v67];

  layoutItem10 = [(_UIStatusBarRegion *)v164 layoutItem];
  leadingAnchor3 = [layoutItem10 leadingAnchor];
  layoutItem11 = [(_UIStatusBarRegion *)v163 layoutItem];
  leadingAnchor4 = [layoutItem11 leadingAnchor];
  v72 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [array addObject:v72];

  layoutItem12 = [(_UIStatusBarRegion *)v164 layoutItem];
  trailingAnchor3 = [layoutItem12 trailingAnchor];
  layoutItem13 = [(_UIStatusBarRegion *)v163 layoutItem];
  trailingAnchor4 = [layoutItem13 trailingAnchor];
  v77 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [array addObject:v77];

  layoutItem14 = [(_UIStatusBarRegion *)v164 layoutItem];
  [viewCopy _ui_addSubLayoutItem:layoutItem14];

  layoutItem15 = [(_UIStatusBarRegion *)v165 layoutItem];
  topAnchor5 = [layoutItem15 topAnchor];
  layoutItem16 = [(_UIStatusBarRegion *)v164 layoutItem];
  topAnchor6 = [layoutItem16 topAnchor];
  v83 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  [array addObject:v83];

  layoutItem17 = [(_UIStatusBarRegion *)v165 layoutItem];
  bottomAnchor3 = [layoutItem17 bottomAnchor];
  layoutItem18 = [(_UIStatusBarRegion *)v164 layoutItem];
  bottomAnchor4 = [layoutItem18 bottomAnchor];
  v88 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  [array addObject:v88];

  layoutItem19 = [(_UIStatusBarRegion *)v165 layoutItem];
  leadingAnchor5 = [layoutItem19 leadingAnchor];
  layoutItem20 = [(_UIStatusBarRegion *)v164 layoutItem];
  leadingAnchor6 = [layoutItem20 leadingAnchor];
  v93 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  [array addObject:v93];

  layoutItem21 = [(_UIStatusBarRegion *)v165 layoutItem];
  trailingAnchor5 = [layoutItem21 trailingAnchor];
  layoutItem22 = [(_UIStatusBarRegion *)v164 layoutItem];
  trailingAnchor6 = [layoutItem22 trailingAnchor];
  v98 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  [array addObject:v98];

  layoutItem23 = [(_UIStatusBarRegion *)v165 layoutItem];
  [viewCopy _ui_addSubLayoutItem:layoutItem23];

  layoutItem24 = [(_UIStatusBarRegion *)v166 layoutItem];
  topAnchor7 = [layoutItem24 topAnchor];
  layoutItem25 = [(_UIStatusBarRegion *)v163 layoutItem];
  bottomAnchor5 = [layoutItem25 bottomAnchor];
  v104 = [topAnchor7 constraintEqualToAnchor:bottomAnchor5 constant:3.0];
  [array addObject:v104];

  layoutItem26 = [(_UIStatusBarRegion *)v166 layoutItem];
  heightAnchor3 = [layoutItem26 heightAnchor];
  v107 = [heightAnchor3 constraintEqualToConstant:10.0];
  [array addObject:v107];

  layoutItem27 = [(_UIStatusBarRegion *)v166 layoutItem];
  leadingAnchor7 = [layoutItem27 leadingAnchor];
  leadingAnchor8 = [viewCopy leadingAnchor];
  v111 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  [array addObject:v111];

  layoutItem28 = [(_UIStatusBarRegion *)v166 layoutItem];
  trailingAnchor7 = [layoutItem28 trailingAnchor];
  trailingAnchor8 = [viewCopy trailingAnchor];
  v115 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  [array addObject:v115];

  layoutItem29 = [(_UIStatusBarRegion *)v166 layoutItem];
  [viewCopy _ui_addSubLayoutItem:layoutItem29];

  layoutItem30 = [(_UIStatusBarRegion *)v155 layoutItem];
  topAnchor8 = [layoutItem30 topAnchor];
  layoutItem31 = [(_UIStatusBarRegion *)v166 layoutItem];
  bottomAnchor6 = [layoutItem31 bottomAnchor];
  v121 = [topAnchor8 constraintEqualToAnchor:bottomAnchor6 constant:8.0];
  [array addObject:v121];

  layoutItem32 = [(_UIStatusBarRegion *)v155 layoutItem];
  bottomAnchor7 = [layoutItem32 bottomAnchor];
  topAnchor9 = [(UILayoutGuide *)v30 topAnchor];
  v125 = [bottomAnchor7 constraintEqualToAnchor:topAnchor9 constant:-5.0];
  [array addObject:v125];

  layoutItem33 = [(_UIStatusBarRegion *)v155 layoutItem];
  leadingAnchor9 = [layoutItem33 leadingAnchor];
  leadingAnchor10 = [viewCopy leadingAnchor];
  v129 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  [array addObject:v129];

  layoutItem34 = [(_UIStatusBarRegion *)v155 layoutItem];
  trailingAnchor9 = [layoutItem34 trailingAnchor];
  trailingAnchor10 = [viewCopy trailingAnchor];
  v133 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  [array addObject:v133];

  layoutItem35 = [(_UIStatusBarRegion *)v155 layoutItem];
  [viewCopy _ui_addSubLayoutItem:layoutItem35];

  layoutItem36 = [(_UIStatusBarRegion *)v26 layoutItem];
  topAnchor10 = [layoutItem36 topAnchor];
  bottomAnchor8 = [(UILayoutGuide *)v30 bottomAnchor];
  v138 = [topAnchor10 constraintEqualToAnchor:bottomAnchor8 constant:5.0];
  [array addObject:v138];

  layoutItem37 = [(_UIStatusBarRegion *)v26 layoutItem];
  bottomAnchor9 = [layoutItem37 bottomAnchor];
  safeAreaLayoutGuide2 = [viewCopy safeAreaLayoutGuide];
  bottomAnchor10 = [safeAreaLayoutGuide2 bottomAnchor];
  v143 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10 constant:-5.0];
  [array addObject:v143];

  layoutItem38 = [(_UIStatusBarRegion *)v26 layoutItem];
  leadingAnchor11 = [layoutItem38 leadingAnchor];
  leadingAnchor12 = [viewCopy leadingAnchor];
  v147 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
  [array addObject:v147];

  layoutItem39 = [(_UIStatusBarRegion *)v26 layoutItem];
  trailingAnchor11 = [layoutItem39 trailingAnchor];
  trailingAnchor12 = [viewCopy trailingAnchor];
  v151 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
  [array addObject:v151];

  layoutItem40 = [(_UIStatusBarRegion *)v26 layoutItem];
  [viewCopy _ui_addSubLayoutItem:layoutItem40];

  [MEMORY[0x1E69977A0] activateConstraints:array];
  v167[0] = v165;
  v167[1] = v164;
  v167[2] = v163;
  v167[3] = v166;
  v167[4] = v155;
  v167[5] = v26;
  v153 = [MEMORY[0x1E695DEC8] arrayWithObjects:v167 count:6];

  return v153;
}

- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)identifier
{
  v89[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  orderedDisplayItemPlacements = self->_orderedDisplayItemPlacements;
  if (!orderedDisplayItemPlacements)
  {
    +[_UIStatusBarTimeItem shortTimeDisplayIdentifier];
    v6 = v62 = identifierCopy;
    v73 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v6 priority:400];

    v7 = +[(_UIStatusBarBackgroundActivityItem *)_UIStatusBarPillBackgroundActivityItem];
    v8 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v7 priority:500];
    v89[0] = v73;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:1];
    v74 = [v8 excludingPlacements:v9];

    v10 = +[_UIStatusBarTimeItem pillTimeDisplayIdentifier];
    v72 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v10 priority:450];

    v11 = +[(_UIStatusBarItem *)_UIStatusBarPillBackgroundActivityItem];
    v12 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v11 priority:475];
    v88 = v72;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v88 count:1];
    v14 = [v12 excludingPlacements:v13];

    pillRegionCoordinator = [(_UIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
    v71 = v14;
    [pillRegionCoordinator setPillIconPlacement:v14];

    v16 = +[(_UIStatusBarBackgroundActivityItem *)_UIStatusBarPillBackgroundActivityItem];
    v17 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v16 priority:474];
    v87 = v14;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v87 count:1];
    v68 = [v17 requiringAllPlacements:v18];

    v19 = +[(_UIStatusBarItem *)_UIStatusBarSensorActivityItem];
    v70 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v19 priority:600];

    v20 = +[(_UIStatusBarItem *)_UIStatusBarSensorActivityItem];
    v69 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v20 priority:599];

    v21 = +[(_UIStatusBarCellularItem *)_UIStatusBarCellularCondensedItem];
    v22 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v21 priority:350];

    v23 = +[_UIStatusBarCellularCondensedItem dualSignalStrengthDisplayIdentifier];
    v24 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v23 priority:375];
    v86 = v22;
    v25 = v22;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v86 count:1];
    v63 = [v24 excludingPlacements:v26];

    v27 = +[(_UIStatusBarCellularItem *)_UIStatusBarCellularCondensedItem];
    [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v27 priority:250];
    v28 = v67 = self;

    v29 = +[_UIStatusBarWifiItem signalStrengthDisplayIdentifier];
    v30 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v29 priority:300];
    v85 = v28;
    v31 = v28;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v85 count:1];
    v33 = [v30 excludingPlacements:v32];

    v34 = +[_UIStatusBarWifiItem iconDisplayIdentifier];
    v35 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v34 priority:301];
    v84[0] = v33;
    v84[1] = v31;
    v66 = v33;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:2];
    v65 = [v35 excludingPlacements:v36];

    v37 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorAirplaneModeItem];
    v38 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v37 priority:1200];
    v83[0] = v25;
    v83[1] = v63;
    v83[2] = v33;
    v83[3] = v65;
    v83[4] = v31;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:5];
    v64 = [v38 excludingPlacements:v39];

    v40 = +[_UIStatusBarBatteryItem iconDisplayIdentifier];
    v61 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v40 priority:100];

    v41 = +[_UIStatusBarBatteryItem iconDisplayIdentifier];
    v60 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v41 priority:50];

    v42 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorQuietModeAnnounceItem];
    v56 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v42 priority:90];

    v43 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorQuietModeAnnounceItem];
    v59 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v43 priority:85];

    v44 = +[(_UIStatusBarItem *)_UIStatusBarRadarItem];
    v45 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v44 priority:155];

    v46 = +[(_UIStatusBarItem *)_UIStatusBarElectronicTollCollectionItem];
    v47 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v46 priority:150];

    v80 = v73;
    v81[0] = @"time";
    v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
    v82[0] = v58;
    v81[1] = @"pill";
    v79 = v74;
    v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v79 count:1];
    v82[1] = v57;
    v81[2] = @"pillContent";
    v78[0] = v71;
    v78[1] = v68;
    v78[2] = v72;
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:3];
    v82[2] = v48;
    v81[3] = @"signal";
    v77[0] = v25;
    v77[1] = v63;
    v77[2] = v31;
    v77[3] = v66;
    v77[4] = v65;
    v77[5] = v64;
    v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:6];
    v82[3] = v49;
    v81[4] = @"top";
    v76[0] = v56;
    v76[1] = v61;
    v76[2] = v70;
    v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:3];
    v82[4] = v50;
    v81[5] = @"bottom";
    v75[0] = v47;
    v75[1] = v59;
    v75[2] = v60;
    v75[3] = v45;
    v75[4] = v69;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:5];
    v82[5] = v51;
    v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:v81 count:6];
    v53 = v67->_orderedDisplayItemPlacements;
    v67->_orderedDisplayItemPlacements = v52;

    identifierCopy = v62;
    orderedDisplayItemPlacements = v67->_orderedDisplayItemPlacements;
  }

  v54 = [(NSDictionary *)orderedDisplayItemPlacements objectForKeyedSubscript:identifierCopy];

  return v54;
}

@end