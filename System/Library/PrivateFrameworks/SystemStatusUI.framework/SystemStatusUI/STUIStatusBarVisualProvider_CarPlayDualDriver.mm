@interface STUIStatusBarVisualProvider_CarPlayDualDriver
+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)orientation;
- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)identifier;
- (id)setupInContainerView:(id)view;
- (void)_updateTopAndBottomRegionConstraintsForAvoidanceFrame:(CGRect)frame;
- (void)avoidanceFrameUpdatedFromFrame:(CGRect)frame withAnimationSettings:(id)settings options:(unint64_t)options;
- (void)itemCreated:(id)created;
@end

@implementation STUIStatusBarVisualProvider_CarPlayDualDriver

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
  v6.super_class = STUIStatusBarVisualProvider_CarPlayDualDriver;
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
  v129[4] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB18];
  viewCopy = view;
  array = [v4 array];
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
  pillRegionCoordinator = [(STUIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
  [pillRegionCoordinator setPillRegion:v11];

  v16 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"pillContent"];
  pillRegionCoordinator2 = [(STUIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
  pillRegion = [pillRegionCoordinator2 pillRegion];
  [(STUIStatusBarRegion *)v16 setEnabilityRegion:pillRegion];

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
  [viewCopy addLayoutGuide:v26];
  heightAnchor = [v26 heightAnchor];
  v28 = [heightAnchor constraintEqualToConstant:111.0];
  [(STUIStatusBarVisualProvider_CarPlayDualDriver *)self setDockGuideHeightConstraint:v28];

  centerYAnchor = [v26 centerYAnchor];
  centerYAnchor2 = [viewCopy centerYAnchor];
  v31 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [(STUIStatusBarVisualProvider_CarPlayDualDriver *)self setDockGuideCenterYConstraint:v31];

  dockGuideHeightConstraint = [(STUIStatusBarVisualProvider_CarPlayDualDriver *)self dockGuideHeightConstraint];
  [array addObject:dockGuideHeightConstraint];

  leadingAnchor = [v26 leadingAnchor];
  leadingAnchor2 = [viewCopy leadingAnchor];
  v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v35];

  trailingAnchor = [v26 trailingAnchor];
  trailingAnchor2 = [viewCopy trailingAnchor];
  v38 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [array addObject:v38];

  dockGuideCenterYConstraint = [(STUIStatusBarVisualProvider_CarPlayDualDriver *)self dockGuideCenterYConstraint];
  [array addObject:dockGuideCenterYConstraint];

  topAnchor = [v26 topAnchor];
  topAnchor2 = [viewCopy topAnchor];
  v42 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
  [(STUIStatusBarVisualProvider_CarPlayDualDriver *)self setDockGuideTopConstraint:v42];

  bottomAnchor = [v26 bottomAnchor];
  topAnchor3 = [viewCopy topAnchor];
  v45 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:0.0];
  [(STUIStatusBarVisualProvider_CarPlayDualDriver *)self setDockGuideBottomConstraint:v45];

  layoutItem = [(STUIStatusBarRegion *)v128 layoutItem];
  topAnchor4 = [layoutItem topAnchor];
  topAnchor5 = [viewCopy topAnchor];
  v49 = [topAnchor4 constraintEqualToAnchor:topAnchor5 constant:8.0];
  [array addObject:v49];

  layoutItem2 = [(STUIStatusBarRegion *)v128 layoutItem];
  heightAnchor2 = [layoutItem2 heightAnchor];
  v52 = [heightAnchor2 constraintEqualToConstant:18.0];
  [array addObject:v52];

  layoutItem3 = [(STUIStatusBarRegion *)v128 layoutItem];
  widthAnchor = [layoutItem3 widthAnchor];
  v55 = [widthAnchor constraintEqualToConstant:39.0];
  [array addObject:v55];

  layoutItem4 = [(STUIStatusBarRegion *)v128 layoutItem];
  centerXAnchor = [layoutItem4 centerXAnchor];
  centerXAnchor2 = [viewCopy centerXAnchor];
  v59 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [array addObject:v59];

  layoutItem5 = [(STUIStatusBarRegion *)v128 layoutItem];
  [viewCopy _ui_addSubLayoutItem:layoutItem5];

  layoutItem6 = [(STUIStatusBarRegion *)v127 layoutItem];
  topAnchor6 = [layoutItem6 topAnchor];
  layoutItem7 = [(STUIStatusBarRegion *)v128 layoutItem];
  topAnchor7 = [layoutItem7 topAnchor];
  v65 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
  [array addObject:v65];

  layoutItem8 = [(STUIStatusBarRegion *)v127 layoutItem];
  bottomAnchor2 = [layoutItem8 bottomAnchor];
  layoutItem9 = [(STUIStatusBarRegion *)v128 layoutItem];
  bottomAnchor3 = [layoutItem9 bottomAnchor];
  v70 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  [array addObject:v70];

  layoutItem10 = [(STUIStatusBarRegion *)v127 layoutItem];
  leadingAnchor3 = [layoutItem10 leadingAnchor];
  layoutItem11 = [(STUIStatusBarRegion *)v128 layoutItem];
  leadingAnchor4 = [layoutItem11 leadingAnchor];
  v75 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [array addObject:v75];

  layoutItem12 = [(STUIStatusBarRegion *)v127 layoutItem];
  trailingAnchor3 = [layoutItem12 trailingAnchor];
  layoutItem13 = [(STUIStatusBarRegion *)v128 layoutItem];
  trailingAnchor4 = [layoutItem13 trailingAnchor];
  v80 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [array addObject:v80];

  layoutItem14 = [(STUIStatusBarRegion *)v127 layoutItem];
  [viewCopy _ui_addSubLayoutItem:layoutItem14];

  layoutItem15 = [(STUIStatusBarRegion *)v16 layoutItem];
  topAnchor8 = [layoutItem15 topAnchor];
  layoutItem16 = [(STUIStatusBarRegion *)v127 layoutItem];
  topAnchor9 = [layoutItem16 topAnchor];
  v86 = [topAnchor8 constraintEqualToAnchor:topAnchor9];
  [array addObject:v86];

  layoutItem17 = [(STUIStatusBarRegion *)v16 layoutItem];
  bottomAnchor4 = [layoutItem17 bottomAnchor];
  layoutItem18 = [(STUIStatusBarRegion *)v127 layoutItem];
  bottomAnchor5 = [layoutItem18 bottomAnchor];
  v91 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  [array addObject:v91];

  layoutItem19 = [(STUIStatusBarRegion *)v16 layoutItem];
  leadingAnchor5 = [layoutItem19 leadingAnchor];
  layoutItem20 = [(STUIStatusBarRegion *)v127 layoutItem];
  leadingAnchor6 = [layoutItem20 leadingAnchor];
  v96 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  [array addObject:v96];

  layoutItem21 = [(STUIStatusBarRegion *)v16 layoutItem];
  trailingAnchor5 = [layoutItem21 trailingAnchor];
  layoutItem22 = [(STUIStatusBarRegion *)v127 layoutItem];
  trailingAnchor6 = [layoutItem22 trailingAnchor];
  v101 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  [array addObject:v101];

  layoutItem23 = [(STUIStatusBarRegion *)v16 layoutItem];
  [viewCopy _ui_addSubLayoutItem:layoutItem23];

  layoutItem24 = [(STUIStatusBarRegion *)v123 layoutItem];
  topAnchor10 = [layoutItem24 topAnchor];
  bottomAnchor6 = [v26 bottomAnchor];
  v106 = [topAnchor10 constraintEqualToAnchor:bottomAnchor6];
  [array addObject:v106];

  layoutItem25 = [(STUIStatusBarRegion *)v123 layoutItem];
  bottomAnchor7 = [layoutItem25 bottomAnchor];
  safeAreaLayoutGuide = [viewCopy safeAreaLayoutGuide];
  bottomAnchor8 = [safeAreaLayoutGuide bottomAnchor];
  v111 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8 constant:-34.0];
  [array addObject:v111];

  layoutItem26 = [(STUIStatusBarRegion *)v123 layoutItem];
  leadingAnchor7 = [layoutItem26 leadingAnchor];
  leadingAnchor8 = [viewCopy leadingAnchor];
  v115 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  [array addObject:v115];

  layoutItem27 = [(STUIStatusBarRegion *)v123 layoutItem];
  trailingAnchor7 = [layoutItem27 trailingAnchor];
  trailingAnchor8 = [viewCopy trailingAnchor];
  v119 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  [array addObject:v119];

  layoutItem28 = [(STUIStatusBarRegion *)v123 layoutItem];
  [viewCopy _ui_addSubLayoutItem:layoutItem28];

  [MEMORY[0x277CCAAD0] activateConstraints:array];
  v129[0] = v16;
  v129[1] = v127;
  v129[2] = v128;
  v129[3] = v123;
  v121 = [MEMORY[0x277CBEA60] arrayWithObjects:v129 count:4];

  return v121;
}

- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)identifier
{
  v43[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  orderedDisplayItemPlacements = self->_orderedDisplayItemPlacements;
  if (!orderedDisplayItemPlacements)
  {
    v34 = identifierCopy;
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

    pillRegionCoordinator = [(STUIStatusBarVisualProvider_CarPlay *)self pillRegionCoordinator];
    [pillRegionCoordinator setPillIconPlacement:v15];

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

    identifierCopy = v34;
    orderedDisplayItemPlacements = self->_orderedDisplayItemPlacements;
  }

  v28 = [(NSDictionary *)orderedDisplayItemPlacements objectForKeyedSubscript:identifierCopy, v30];

  return v28;
}

- (void)avoidanceFrameUpdatedFromFrame:(CGRect)frame withAnimationSettings:(id)settings options:(unint64_t)options
{
  v6 = [(STUIStatusBarVisualProvider_CarPlay *)self statusBar:settings];
  [v6 avoidanceFrame];
  [(STUIStatusBarVisualProvider_CarPlayDualDriver *)self _updateTopAndBottomRegionConstraintsForAvoidanceFrame:?];
}

- (void)_updateTopAndBottomRegionConstraintsForAvoidanceFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (CGRectEqualToRect(frame, *MEMORY[0x277CBF3A0]))
  {
    dockGuideTopConstraint = [(STUIStatusBarVisualProvider_CarPlayDualDriver *)self dockGuideTopConstraint];
    [dockGuideTopConstraint setActive:0];

    dockGuideBottomConstraint = [(STUIStatusBarVisualProvider_CarPlayDualDriver *)self dockGuideBottomConstraint];
    [dockGuideBottomConstraint setActive:0];

    dockGuideHeightConstraint = [(STUIStatusBarVisualProvider_CarPlayDualDriver *)self dockGuideHeightConstraint];
    [dockGuideHeightConstraint setActive:1];

    [(STUIStatusBarVisualProvider_CarPlayDualDriver *)self dockGuideCenterYConstraint];
  }

  else
  {
    dockGuideHeightConstraint2 = [(STUIStatusBarVisualProvider_CarPlayDualDriver *)self dockGuideHeightConstraint];
    [dockGuideHeightConstraint2 setActive:0];

    dockGuideCenterYConstraint = [(STUIStatusBarVisualProvider_CarPlayDualDriver *)self dockGuideCenterYConstraint];
    [dockGuideCenterYConstraint setActive:0];

    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    MinY = CGRectGetMinY(v20);
    dockGuideTopConstraint2 = [(STUIStatusBarVisualProvider_CarPlayDualDriver *)self dockGuideTopConstraint];
    [dockGuideTopConstraint2 setConstant:MinY];

    dockGuideTopConstraint3 = [(STUIStatusBarVisualProvider_CarPlayDualDriver *)self dockGuideTopConstraint];
    [dockGuideTopConstraint3 setActive:1];

    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    MaxY = CGRectGetMaxY(v21);
    dockGuideBottomConstraint2 = [(STUIStatusBarVisualProvider_CarPlayDualDriver *)self dockGuideBottomConstraint];
    [dockGuideBottomConstraint2 setConstant:MaxY];

    [(STUIStatusBarVisualProvider_CarPlayDualDriver *)self dockGuideBottomConstraint];
  }
  v18 = ;
  [v18 setActive:1];
}

@end