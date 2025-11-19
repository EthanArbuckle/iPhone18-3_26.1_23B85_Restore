@interface _UIStatusBarVisualProvider_CarPlayVertical
+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)a3;
- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)a3;
- (id)setupInContainerView:(id)a3;
- (void)itemCreated:(id)a3;
@end

@implementation _UIStatusBarVisualProvider_CarPlayVertical

+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)a3
{
  v3 = 45.0;
  v4 = -1.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)itemCreated:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v4;
    [v3 setItemSpacing:3.0];
    [v3 setAdditionRemovalScale:0.25];
    [v3 setAdditionRemovalDuration:0.25];
  }
}

- (id)setupInContainerView:(id)a3
{
  v167[6] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = [v4 array];
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
  v15 = [(_UIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
  [v15 setPillRegion:v11];

  v16 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"pillContent"];
  v17 = [(_UIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
  v18 = [v17 pillRegion];
  v165 = v16;
  [(_UIStatusBarRegion *)v16 setEnabilityRegion:v18];

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
  [v5 addLayoutGuide:v30];
  v31 = [(UILayoutGuide *)v30 heightAnchor];
  v32 = [v31 constraintEqualToConstant:103.0];
  [v6 addObject:v32];

  v33 = [(UILayoutGuide *)v30 leadingAnchor];
  v34 = [v5 leadingAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];
  [v6 addObject:v35];

  v36 = [(UILayoutGuide *)v30 trailingAnchor];
  v37 = [v5 trailingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];
  [v6 addObject:v38];

  v39 = [(UILayoutGuide *)v30 centerYAnchor];
  v40 = [v5 centerYAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];
  [v6 addObject:v41];

  v42 = [(_UIStatusBarRegion *)v163 layoutItem];
  v43 = [v42 topAnchor];
  v44 = [v5 safeAreaLayoutGuide];
  v45 = [v44 topAnchor];
  v46 = [v43 constraintEqualToAnchor:v45];
  [v6 addObject:v46];

  v47 = [(_UIStatusBarRegion *)v163 layoutItem];
  v48 = [v47 heightAnchor];
  v49 = [v48 constraintEqualToConstant:18.0];
  [v6 addObject:v49];

  v50 = [(_UIStatusBarRegion *)v163 layoutItem];
  v51 = [v50 widthAnchor];
  v52 = [v51 constraintEqualToConstant:39.0];
  [v6 addObject:v52];

  v53 = [(_UIStatusBarRegion *)v163 layoutItem];
  v54 = [v53 centerXAnchor];
  v55 = [v5 centerXAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];
  [v6 addObject:v56];

  v57 = [(_UIStatusBarRegion *)v163 layoutItem];
  [v5 _ui_addSubLayoutItem:v57];

  v58 = [(_UIStatusBarRegion *)v164 layoutItem];
  v59 = [v58 topAnchor];
  v60 = [(_UIStatusBarRegion *)v163 layoutItem];
  v61 = [v60 topAnchor];
  v62 = [v59 constraintEqualToAnchor:v61];
  [v6 addObject:v62];

  v63 = [(_UIStatusBarRegion *)v164 layoutItem];
  v64 = [v63 bottomAnchor];
  v65 = [(_UIStatusBarRegion *)v163 layoutItem];
  v66 = [v65 bottomAnchor];
  v67 = [v64 constraintEqualToAnchor:v66];
  [v6 addObject:v67];

  v68 = [(_UIStatusBarRegion *)v164 layoutItem];
  v69 = [v68 leadingAnchor];
  v70 = [(_UIStatusBarRegion *)v163 layoutItem];
  v71 = [v70 leadingAnchor];
  v72 = [v69 constraintEqualToAnchor:v71];
  [v6 addObject:v72];

  v73 = [(_UIStatusBarRegion *)v164 layoutItem];
  v74 = [v73 trailingAnchor];
  v75 = [(_UIStatusBarRegion *)v163 layoutItem];
  v76 = [v75 trailingAnchor];
  v77 = [v74 constraintEqualToAnchor:v76];
  [v6 addObject:v77];

  v78 = [(_UIStatusBarRegion *)v164 layoutItem];
  [v5 _ui_addSubLayoutItem:v78];

  v79 = [(_UIStatusBarRegion *)v165 layoutItem];
  v80 = [v79 topAnchor];
  v81 = [(_UIStatusBarRegion *)v164 layoutItem];
  v82 = [v81 topAnchor];
  v83 = [v80 constraintEqualToAnchor:v82];
  [v6 addObject:v83];

  v84 = [(_UIStatusBarRegion *)v165 layoutItem];
  v85 = [v84 bottomAnchor];
  v86 = [(_UIStatusBarRegion *)v164 layoutItem];
  v87 = [v86 bottomAnchor];
  v88 = [v85 constraintEqualToAnchor:v87];
  [v6 addObject:v88];

  v89 = [(_UIStatusBarRegion *)v165 layoutItem];
  v90 = [v89 leadingAnchor];
  v91 = [(_UIStatusBarRegion *)v164 layoutItem];
  v92 = [v91 leadingAnchor];
  v93 = [v90 constraintEqualToAnchor:v92];
  [v6 addObject:v93];

  v94 = [(_UIStatusBarRegion *)v165 layoutItem];
  v95 = [v94 trailingAnchor];
  v96 = [(_UIStatusBarRegion *)v164 layoutItem];
  v97 = [v96 trailingAnchor];
  v98 = [v95 constraintEqualToAnchor:v97];
  [v6 addObject:v98];

  v99 = [(_UIStatusBarRegion *)v165 layoutItem];
  [v5 _ui_addSubLayoutItem:v99];

  v100 = [(_UIStatusBarRegion *)v166 layoutItem];
  v101 = [v100 topAnchor];
  v102 = [(_UIStatusBarRegion *)v163 layoutItem];
  v103 = [v102 bottomAnchor];
  v104 = [v101 constraintEqualToAnchor:v103 constant:3.0];
  [v6 addObject:v104];

  v105 = [(_UIStatusBarRegion *)v166 layoutItem];
  v106 = [v105 heightAnchor];
  v107 = [v106 constraintEqualToConstant:10.0];
  [v6 addObject:v107];

  v108 = [(_UIStatusBarRegion *)v166 layoutItem];
  v109 = [v108 leadingAnchor];
  v110 = [v5 leadingAnchor];
  v111 = [v109 constraintEqualToAnchor:v110];
  [v6 addObject:v111];

  v112 = [(_UIStatusBarRegion *)v166 layoutItem];
  v113 = [v112 trailingAnchor];
  v114 = [v5 trailingAnchor];
  v115 = [v113 constraintEqualToAnchor:v114];
  [v6 addObject:v115];

  v116 = [(_UIStatusBarRegion *)v166 layoutItem];
  [v5 _ui_addSubLayoutItem:v116];

  v117 = [(_UIStatusBarRegion *)v155 layoutItem];
  v118 = [v117 topAnchor];
  v119 = [(_UIStatusBarRegion *)v166 layoutItem];
  v120 = [v119 bottomAnchor];
  v121 = [v118 constraintEqualToAnchor:v120 constant:8.0];
  [v6 addObject:v121];

  v122 = [(_UIStatusBarRegion *)v155 layoutItem];
  v123 = [v122 bottomAnchor];
  v124 = [(UILayoutGuide *)v30 topAnchor];
  v125 = [v123 constraintEqualToAnchor:v124 constant:-5.0];
  [v6 addObject:v125];

  v126 = [(_UIStatusBarRegion *)v155 layoutItem];
  v127 = [v126 leadingAnchor];
  v128 = [v5 leadingAnchor];
  v129 = [v127 constraintEqualToAnchor:v128];
  [v6 addObject:v129];

  v130 = [(_UIStatusBarRegion *)v155 layoutItem];
  v131 = [v130 trailingAnchor];
  v132 = [v5 trailingAnchor];
  v133 = [v131 constraintEqualToAnchor:v132];
  [v6 addObject:v133];

  v134 = [(_UIStatusBarRegion *)v155 layoutItem];
  [v5 _ui_addSubLayoutItem:v134];

  v135 = [(_UIStatusBarRegion *)v26 layoutItem];
  v136 = [v135 topAnchor];
  v137 = [(UILayoutGuide *)v30 bottomAnchor];
  v138 = [v136 constraintEqualToAnchor:v137 constant:5.0];
  [v6 addObject:v138];

  v139 = [(_UIStatusBarRegion *)v26 layoutItem];
  v140 = [v139 bottomAnchor];
  v141 = [v5 safeAreaLayoutGuide];
  v142 = [v141 bottomAnchor];
  v143 = [v140 constraintEqualToAnchor:v142 constant:-5.0];
  [v6 addObject:v143];

  v144 = [(_UIStatusBarRegion *)v26 layoutItem];
  v145 = [v144 leadingAnchor];
  v146 = [v5 leadingAnchor];
  v147 = [v145 constraintEqualToAnchor:v146];
  [v6 addObject:v147];

  v148 = [(_UIStatusBarRegion *)v26 layoutItem];
  v149 = [v148 trailingAnchor];
  v150 = [v5 trailingAnchor];
  v151 = [v149 constraintEqualToAnchor:v150];
  [v6 addObject:v151];

  v152 = [(_UIStatusBarRegion *)v26 layoutItem];
  [v5 _ui_addSubLayoutItem:v152];

  [MEMORY[0x1E69977A0] activateConstraints:v6];
  v167[0] = v165;
  v167[1] = v164;
  v167[2] = v163;
  v167[3] = v166;
  v167[4] = v155;
  v167[5] = v26;
  v153 = [MEMORY[0x1E695DEC8] arrayWithObjects:v167 count:6];

  return v153;
}

- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)a3
{
  v89[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  orderedDisplayItemPlacements = self->_orderedDisplayItemPlacements;
  if (!orderedDisplayItemPlacements)
  {
    +[_UIStatusBarTimeItem shortTimeDisplayIdentifier];
    v6 = v62 = v4;
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

    v15 = [(_UIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
    v71 = v14;
    [v15 setPillIconPlacement:v14];

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

    v4 = v62;
    orderedDisplayItemPlacements = v67->_orderedDisplayItemPlacements;
  }

  v54 = [(NSDictionary *)orderedDisplayItemPlacements objectForKeyedSubscript:v4];

  return v54;
}

@end