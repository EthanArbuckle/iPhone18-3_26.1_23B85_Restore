@interface STUIStatusBarVisualProvider_CarPlayDualDriver
+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)a3;
- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)a3;
- (id)setupInContainerView:(id)a3;
- (void)_updateTopAndBottomRegionConstraintsForAvoidanceFrame:(CGRect)a3;
- (void)avoidanceFrameUpdatedFromFrame:(CGRect)a3 withAnimationSettings:(id)a4 options:(unint64_t)a5;
- (void)itemCreated:(id)a3;
@end

@implementation STUIStatusBarVisualProvider_CarPlayDualDriver

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
  v6.super_class = STUIStatusBarVisualProvider_CarPlayDualDriver;
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
  v129[4] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = [v4 array];
  v7 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"time"];
  v8 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v9 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  [(STUIStatusBarRegionAxesLayout *)v8 setHorizontalLayout:v9];

  v10 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  [(STUIStatusBarRegionAxesLayout *)v8 setVerticalLayout:v10];

  v128 = v7;
  [(STUIStatusBarRegion *)v7 setLayout:v8];
  [(STUIStatusBarVisualProvider_CarPlay *)self setTimeRegion:v7];
  v11 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"pill"];
  v12 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v13 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  v126 = v12;
  [(STUIStatusBarRegionAxesLayout *)v12 setHorizontalLayout:v13];

  v14 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  [(STUIStatusBarRegionAxesLayout *)v12 setVerticalLayout:v14];

  [(STUIStatusBarRegion *)v11 setLayout:v12];
  v127 = v11;
  [(STUIStatusBarRegion *)v11 setActionInsets:0.0, -3.0, -13.0, -3.0];
  v15 = [(STUIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
  [v15 setPillRegion:v11];

  v16 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"pillContent"];
  v17 = [(STUIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
  v18 = [v17 pillRegion];
  [(STUIStatusBarRegion *)v16 setEnabilityRegion:v18];

  v19 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v20 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  v125 = v19;
  [(STUIStatusBarRegionAxesLayout *)v19 setHorizontalLayout:v20];

  v21 = +[STUIStatusBarRegionAxisFillingLayout fillingLayout];
  [(STUIStatusBarRegionAxesLayout *)v19 setVerticalLayout:v21];

  [(STUIStatusBarRegion *)v16 setLayout:v19];
  v22 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"bottom"];
  v23 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v24 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:1];
  v124 = v23;
  [(STUIStatusBarRegionAxesLayout *)v23 setHorizontalLayout:v24];

  v25 = objc_alloc_init(STUIStatusBarRegionAxisStackingLayout);
  [(STUIStatusBarRegionAxisStackingLayout *)v25 setAlignment:1];
  [(STUIStatusBarRegionAxesLayout *)v23 setVerticalLayout:v25];

  v123 = v22;
  [(STUIStatusBarRegion *)v22 setLayout:v23];
  [(STUIStatusBarRegion *)v22 setActionInsets:0.0, -3.0, -10.0, -10.0];
  [(STUIStatusBarVisualProvider_CarPlay *)self setRadarRegion:v22];
  v26 = objc_alloc_init(MEMORY[0x277D756D0]);
  [v5 addLayoutGuide:v26];
  v27 = [v26 heightAnchor];
  v28 = [v27 constraintEqualToConstant:111.0];
  [(STUIStatusBarVisualProvider_CarPlayDualDriver *)self setDockGuideHeightConstraint:v28];

  v29 = [v26 centerYAnchor];
  v30 = [v5 centerYAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];
  [(STUIStatusBarVisualProvider_CarPlayDualDriver *)self setDockGuideCenterYConstraint:v31];

  v32 = [(STUIStatusBarVisualProvider_CarPlayDualDriver *)self dockGuideHeightConstraint];
  [v6 addObject:v32];

  v33 = [v26 leadingAnchor];
  v34 = [v5 leadingAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];
  [v6 addObject:v35];

  v36 = [v26 trailingAnchor];
  v37 = [v5 trailingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];
  [v6 addObject:v38];

  v39 = [(STUIStatusBarVisualProvider_CarPlayDualDriver *)self dockGuideCenterYConstraint];
  [v6 addObject:v39];

  v40 = [v26 topAnchor];
  v41 = [v5 topAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:0.0];
  [(STUIStatusBarVisualProvider_CarPlayDualDriver *)self setDockGuideTopConstraint:v42];

  v43 = [v26 bottomAnchor];
  v44 = [v5 topAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:0.0];
  [(STUIStatusBarVisualProvider_CarPlayDualDriver *)self setDockGuideBottomConstraint:v45];

  v46 = [(STUIStatusBarRegion *)v128 layoutItem];
  v47 = [v46 topAnchor];
  v48 = [v5 topAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:8.0];
  [v6 addObject:v49];

  v50 = [(STUIStatusBarRegion *)v128 layoutItem];
  v51 = [v50 heightAnchor];
  v52 = [v51 constraintEqualToConstant:18.0];
  [v6 addObject:v52];

  v53 = [(STUIStatusBarRegion *)v128 layoutItem];
  v54 = [v53 widthAnchor];
  v55 = [v54 constraintEqualToConstant:39.0];
  [v6 addObject:v55];

  v56 = [(STUIStatusBarRegion *)v128 layoutItem];
  v57 = [v56 centerXAnchor];
  v58 = [v5 centerXAnchor];
  v59 = [v57 constraintEqualToAnchor:v58];
  [v6 addObject:v59];

  v60 = [(STUIStatusBarRegion *)v128 layoutItem];
  [v5 _ui_addSubLayoutItem:v60];

  v61 = [(STUIStatusBarRegion *)v127 layoutItem];
  v62 = [v61 topAnchor];
  v63 = [(STUIStatusBarRegion *)v128 layoutItem];
  v64 = [v63 topAnchor];
  v65 = [v62 constraintEqualToAnchor:v64];
  [v6 addObject:v65];

  v66 = [(STUIStatusBarRegion *)v127 layoutItem];
  v67 = [v66 bottomAnchor];
  v68 = [(STUIStatusBarRegion *)v128 layoutItem];
  v69 = [v68 bottomAnchor];
  v70 = [v67 constraintEqualToAnchor:v69];
  [v6 addObject:v70];

  v71 = [(STUIStatusBarRegion *)v127 layoutItem];
  v72 = [v71 leadingAnchor];
  v73 = [(STUIStatusBarRegion *)v128 layoutItem];
  v74 = [v73 leadingAnchor];
  v75 = [v72 constraintEqualToAnchor:v74];
  [v6 addObject:v75];

  v76 = [(STUIStatusBarRegion *)v127 layoutItem];
  v77 = [v76 trailingAnchor];
  v78 = [(STUIStatusBarRegion *)v128 layoutItem];
  v79 = [v78 trailingAnchor];
  v80 = [v77 constraintEqualToAnchor:v79];
  [v6 addObject:v80];

  v81 = [(STUIStatusBarRegion *)v127 layoutItem];
  [v5 _ui_addSubLayoutItem:v81];

  v82 = [(STUIStatusBarRegion *)v16 layoutItem];
  v83 = [v82 topAnchor];
  v84 = [(STUIStatusBarRegion *)v127 layoutItem];
  v85 = [v84 topAnchor];
  v86 = [v83 constraintEqualToAnchor:v85];
  [v6 addObject:v86];

  v87 = [(STUIStatusBarRegion *)v16 layoutItem];
  v88 = [v87 bottomAnchor];
  v89 = [(STUIStatusBarRegion *)v127 layoutItem];
  v90 = [v89 bottomAnchor];
  v91 = [v88 constraintEqualToAnchor:v90];
  [v6 addObject:v91];

  v92 = [(STUIStatusBarRegion *)v16 layoutItem];
  v93 = [v92 leadingAnchor];
  v94 = [(STUIStatusBarRegion *)v127 layoutItem];
  v95 = [v94 leadingAnchor];
  v96 = [v93 constraintEqualToAnchor:v95];
  [v6 addObject:v96];

  v97 = [(STUIStatusBarRegion *)v16 layoutItem];
  v98 = [v97 trailingAnchor];
  v99 = [(STUIStatusBarRegion *)v127 layoutItem];
  v100 = [v99 trailingAnchor];
  v101 = [v98 constraintEqualToAnchor:v100];
  [v6 addObject:v101];

  v102 = [(STUIStatusBarRegion *)v16 layoutItem];
  [v5 _ui_addSubLayoutItem:v102];

  v103 = [(STUIStatusBarRegion *)v123 layoutItem];
  v104 = [v103 topAnchor];
  v105 = [v26 bottomAnchor];
  v106 = [v104 constraintEqualToAnchor:v105];
  [v6 addObject:v106];

  v107 = [(STUIStatusBarRegion *)v123 layoutItem];
  v108 = [v107 bottomAnchor];
  v109 = [v5 safeAreaLayoutGuide];
  v110 = [v109 bottomAnchor];
  v111 = [v108 constraintEqualToAnchor:v110 constant:-34.0];
  [v6 addObject:v111];

  v112 = [(STUIStatusBarRegion *)v123 layoutItem];
  v113 = [v112 leadingAnchor];
  v114 = [v5 leadingAnchor];
  v115 = [v113 constraintEqualToAnchor:v114];
  [v6 addObject:v115];

  v116 = [(STUIStatusBarRegion *)v123 layoutItem];
  v117 = [v116 trailingAnchor];
  v118 = [v5 trailingAnchor];
  v119 = [v117 constraintEqualToAnchor:v118];
  [v6 addObject:v119];

  v120 = [(STUIStatusBarRegion *)v123 layoutItem];
  [v5 _ui_addSubLayoutItem:v120];

  [MEMORY[0x277CCAAD0] activateConstraints:v6];
  v129[0] = v16;
  v129[1] = v127;
  v129[2] = v128;
  v129[3] = v123;
  v121 = [MEMORY[0x277CBEA60] arrayWithObjects:v129 count:4];

  return v121;
}

- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)a3
{
  v43[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  orderedDisplayItemPlacements = self->_orderedDisplayItemPlacements;
  if (!orderedDisplayItemPlacements)
  {
    v34 = v4;
    v6 = +[STUIStatusBarTimeItem shortTimeDisplayIdentifier];
    v7 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v6 priority:500];

    v8 = +[(STUIStatusBarBackgroundActivityItem *)STUIStatusBarPillBackgroundActivityItem];
    v9 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v8 priority:600];
    v43[0] = v7;
    v31 = v7;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
    v33 = [v9 excludingPlacements:v10];

    v11 = +[STUIStatusBarTimeItem pillTimeDisplayIdentifier];
    v32 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v11 priority:550];

    v12 = +[(STUIStatusBarItem *)STUIStatusBarPillBackgroundActivityItem];
    v13 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v12 priority:575];
    v42 = v32;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
    v15 = [v13 excludingPlacements:v14];

    v16 = [(STUIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
    [v16 setPillIconPlacement:v15];

    v17 = +[(STUIStatusBarBackgroundActivityItem *)STUIStatusBarPillBackgroundActivityItem];
    v18 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v17 priority:574];
    v41 = v15;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
    v30 = [v18 requiringAllPlacements:v19];

    v20 = +[(STUIStatusBarItem *)STUIStatusBarRadarItem];
    v21 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v20 priority:155];

    v38 = v7;
    v39[0] = @"time";
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
    v40[0] = v22;
    v39[1] = @"pill";
    v37 = v33;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
    v40[1] = v23;
    v39[2] = @"pillContent";
    v36[0] = v15;
    v36[1] = v30;
    v36[2] = v32;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:3];
    v40[2] = v24;
    v39[3] = @"bottom";
    v35 = v21;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
    v40[3] = v25;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:4];
    v27 = self->_orderedDisplayItemPlacements;
    self->_orderedDisplayItemPlacements = v26;

    v4 = v34;
    orderedDisplayItemPlacements = self->_orderedDisplayItemPlacements;
  }

  v28 = [(NSDictionary *)orderedDisplayItemPlacements objectForKeyedSubscript:v4, v30];

  return v28;
}

- (void)avoidanceFrameUpdatedFromFrame:(CGRect)a3 withAnimationSettings:(id)a4 options:(unint64_t)a5
{
  v6 = [(STUIStatusBarVisualProvider_CarPlay *)self statusBar:a4];
  [v6 avoidanceFrame];
  [(STUIStatusBarVisualProvider_CarPlayDualDriver *)self _updateTopAndBottomRegionConstraintsForAvoidanceFrame:?];
}

- (void)_updateTopAndBottomRegionConstraintsForAvoidanceFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectEqualToRect(a3, *MEMORY[0x277CBF3A0]))
  {
    v8 = [(STUIStatusBarVisualProvider_CarPlayDualDriver *)self dockGuideTopConstraint];
    [v8 setActive:0];

    v9 = [(STUIStatusBarVisualProvider_CarPlayDualDriver *)self dockGuideBottomConstraint];
    [v9 setActive:0];

    v10 = [(STUIStatusBarVisualProvider_CarPlayDualDriver *)self dockGuideHeightConstraint];
    [v10 setActive:1];

    [(STUIStatusBarVisualProvider_CarPlayDualDriver *)self dockGuideCenterYConstraint];
  }

  else
  {
    v11 = [(STUIStatusBarVisualProvider_CarPlayDualDriver *)self dockGuideHeightConstraint];
    [v11 setActive:0];

    v12 = [(STUIStatusBarVisualProvider_CarPlayDualDriver *)self dockGuideCenterYConstraint];
    [v12 setActive:0];

    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    MinY = CGRectGetMinY(v20);
    v14 = [(STUIStatusBarVisualProvider_CarPlayDualDriver *)self dockGuideTopConstraint];
    [v14 setConstant:MinY];

    v15 = [(STUIStatusBarVisualProvider_CarPlayDualDriver *)self dockGuideTopConstraint];
    [v15 setActive:1];

    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    MaxY = CGRectGetMaxY(v21);
    v17 = [(STUIStatusBarVisualProvider_CarPlayDualDriver *)self dockGuideBottomConstraint];
    [v17 setConstant:MaxY];

    [(STUIStatusBarVisualProvider_CarPlayDualDriver *)self dockGuideBottomConstraint];
  }
  v18 = ;
  [v18 setActive:1];
}

@end