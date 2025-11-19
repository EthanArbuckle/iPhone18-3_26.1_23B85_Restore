@interface STUIStatusBarVisualProvider_CarPlayAppDock
+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)a3;
- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)a3;
- (id)setupInContainerView:(id)a3;
- (void)_updateDockGuideConstraintsForAvoidanceFrame:(CGRect)a3;
- (void)avoidanceFrameUpdatedFromFrame:(CGRect)a3 withAnimationSettings:(id)a4 options:(unint64_t)a5;
@end

@implementation STUIStatusBarVisualProvider_CarPlayAppDock

+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)a3
{
  v3 = *MEMORY[0x277D77260];
  v4 = 45.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)setupInContainerView:(id)a3
{
  v95[7] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"oppositeDriver"];
  v7 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v8 = objc_alloc_init(STUIStatusBarRegionAxisCenteringLayout);
  [(STUIStatusBarRegionAxisCenteringLayout *)v8 setInterspace:4.0];
  v90 = v8;
  [(STUIStatusBarRegionAxesLayout *)v7 setHorizontalLayout:v8];
  v9 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:1];
  [(STUIStatusBarRegionAxesLayout *)v7 setVerticalLayout:v9];

  v91 = v7;
  [(STUIStatusBarRegion *)v6 setLayout:v7];
  [(STUIStatusBarRegion *)v6 setActionInsets:-10.0, -10.0, -10.0, -10.0];
  [(STUIStatusBarVisualProvider_CarPlay *)self setRadarRegion:v6];
  v10 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"driver"];
  v11 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v12 = objc_alloc_init(STUIStatusBarRegionAxisStackingLayout);
  [(STUIStatusBarRegionAxisStackingLayout *)v12 setAlignment:1];
  [(STUIStatusBarRegionAxisStackingLayout *)v12 setInterspace:4.0];
  [(STUIStatusBarRegionAxesLayout *)v11 setHorizontalLayout:v12];

  v13 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:1];
  [(STUIStatusBarRegionAxesLayout *)v11 setVerticalLayout:v13];

  v88 = v11;
  [(STUIStatusBarRegion *)v10 setLayout:v11];
  [(STUIStatusBarRegion *)v10 setActionInsets:-10.0, -10.0, -10.0, -10.0];
  v14 = objc_alloc_init(MEMORY[0x277D756D0]);
  [v4 addLayoutGuide:v14];
  v15 = [v14 widthAnchor];
  v16 = [v15 constraintEqualToConstant:111.0];
  [(STUIStatusBarVisualProvider_CarPlayAppDock *)self setDockGuideWidthConstraint:v16];

  v17 = [v14 centerXAnchor];
  v18 = [v4 centerXAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  [(STUIStatusBarVisualProvider_CarPlayAppDock *)self setDockGuideCenterXConstraint:v19];

  v20 = [(STUIStatusBarVisualProvider_CarPlayAppDock *)self dockGuideWidthConstraint];
  [v5 addObject:v20];

  v21 = [v14 topAnchor];
  v22 = [v4 topAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
  [v5 addObject:v23];

  v24 = [v14 bottomAnchor];
  v25 = [v4 bottomAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];
  [v5 addObject:v26];

  v27 = [(STUIStatusBarVisualProvider_CarPlayAppDock *)self dockGuideCenterXConstraint];
  v92 = v5;
  [v5 addObject:v27];

  v28 = [v14 leftAnchor];
  v29 = [v4 leftAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:0.0];
  [(STUIStatusBarVisualProvider_CarPlayAppDock *)self setDockGuideLeftConstraint:v30];

  v31 = [v14 rightAnchor];
  v32 = [v4 leftAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:0.0];
  [(STUIStatusBarVisualProvider_CarPlayAppDock *)self setDockGuideRightConstraint:v33];

  v34 = [(STUIStatusBarVisualProvider_CarPlay *)self statusBar];
  v35 = [v34 targetScreen];
  LODWORD(self) = [v35 _isRightHandDrive];

  v89 = v10;
  v87 = v14;
  if (self)
  {
    v36 = [(STUIStatusBarRegion *)v6 layoutItem];
    v37 = [v36 heightAnchor];
    v86 = [v37 constraintEqualToConstant:10.0];
    v95[0] = v86;
    v85 = [(STUIStatusBarRegion *)v6 layoutItem];
    v38 = [v85 leftAnchor];
    v83 = [v4 safeAreaLayoutGuide];
    [v83 leftAnchor];
    v82 = v84 = v38;
    v81 = [v38 constraintEqualToAnchor:10.0 constant:?];
    v95[1] = v81;
    v80 = [(STUIStatusBarRegion *)v6 layoutItem];
    v39 = [v80 rightAnchor];
    v78 = [v14 leftAnchor];
    v79 = v39;
    v77 = [v39 constraintLessThanOrEqualToAnchor:v78];
    v95[2] = v77;
    v76 = [(STUIStatusBarRegion *)v6 layoutItem];
    v40 = [v76 centerYAnchor];
    v74 = [v4 safeAreaLayoutGuide];
    [v74 centerYAnchor];
    v73 = v75 = v40;
    v72 = [v40 constraintEqualToAnchor:?];
    v95[3] = v72;
    v71 = [(STUIStatusBarRegion *)v10 layoutItem];
    v41 = [v71 centerYAnchor];
    v69 = [v4 safeAreaLayoutGuide];
    [v69 centerYAnchor];
    v68 = v70 = v41;
    v67 = [v41 constraintEqualToAnchor:?];
    v95[4] = v67;
    v66 = [(STUIStatusBarRegion *)v10 layoutItem];
    v65 = [v66 heightAnchor];
    v64 = [v65 constraintEqualToConstant:45.0];
    v95[5] = v64;
    v42 = [(STUIStatusBarRegion *)v10 layoutItem];
    v43 = [v42 leftAnchor];
    v44 = [v14 rightAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];
    v95[6] = v45;
    v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:7];
    [v92 addObjectsFromArray:v46];
  }

  else
  {
    v63 = [(STUIStatusBarRegion *)v10 layoutItem];
    v61 = [v63 leftAnchor];
    v86 = [v4 safeAreaLayoutGuide];
    v85 = [v86 leftAnchor];
    v84 = [v61 constraintEqualToAnchor:?];
    v94[0] = v84;
    v83 = [(STUIStatusBarRegion *)v10 layoutItem];
    v47 = [v83 rightAnchor];
    v81 = [v14 leftAnchor];
    v82 = v47;
    v80 = [v47 constraintEqualToAnchor:v81];
    v94[1] = v80;
    v79 = [(STUIStatusBarRegion *)v10 layoutItem];
    v78 = [v79 heightAnchor];
    v77 = [v78 constraintEqualToConstant:45.0];
    v94[2] = v77;
    v76 = [(STUIStatusBarRegion *)v10 layoutItem];
    v48 = [v76 centerYAnchor];
    v74 = [v4 safeAreaLayoutGuide];
    [v74 centerYAnchor];
    v73 = v75 = v48;
    v72 = [v48 constraintEqualToAnchor:?];
    v94[3] = v72;
    v71 = [(STUIStatusBarRegion *)v6 layoutItem];
    v49 = [v71 leftAnchor];
    v69 = [v14 rightAnchor];
    v70 = v49;
    v68 = [v49 constraintGreaterThanOrEqualToAnchor:v69];
    v94[4] = v68;
    v67 = [(STUIStatusBarRegion *)v6 layoutItem];
    v50 = [v67 rightAnchor];
    v65 = [v4 safeAreaLayoutGuide];
    [v65 rightAnchor];
    v64 = v66 = v50;
    v42 = [v50 constraintEqualToAnchor:-10.0 constant:?];
    v94[5] = v42;
    v43 = [(STUIStatusBarRegion *)v6 layoutItem];
    v44 = [v43 heightAnchor];
    v45 = [v44 constraintEqualToConstant:45.0];
    v94[6] = v45;
    v46 = [(STUIStatusBarRegion *)v6 layoutItem];
    v51 = [v46 centerYAnchor];
    [v4 safeAreaLayoutGuide];
    v62 = v6;
    v52 = v60 = v4;
    v53 = [v52 centerYAnchor];
    v54 = [v51 constraintEqualToAnchor:v53];
    v94[7] = v54;
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:8];
    [v92 addObjectsFromArray:v55];

    v36 = v63;
    v4 = v60;
    v6 = v62;

    v37 = v61;
  }

  v56 = [(STUIStatusBarRegion *)v6 layoutItem];
  [v4 _ui_addSubLayoutItem:v56];

  v57 = [(STUIStatusBarRegion *)v89 layoutItem];
  [v4 _ui_addSubLayoutItem:v57];

  [MEMORY[0x277CCAAD0] activateConstraints:v92];
  v93[0] = v89;
  v93[1] = v6;
  v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:2];

  return v58;
}

- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  orderedDisplayItemPlacements = self->_orderedDisplayItemPlacements;
  if (!orderedDisplayItemPlacements)
  {
    v6 = +[(STUIStatusBarItem *)STUIStatusBarRadarItem];
    v7 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v6 priority:155];

    v8 = [(STUIStatusBarVisualProvider_CarPlay *)self statusBar];
    v9 = [v8 targetScreen];
    v10 = [v9 _isRightHandDrive];

    if (v10)
    {
      v22 = v7;
      v23 = @"oppositeDriver";
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
      v24[0] = v11;
      v12 = MEMORY[0x277CBEAC0];
      v13 = v24;
      v14 = &v23;
    }

    else
    {
      v19 = v7;
      v20 = @"oppositeDriver";
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
      v21 = v11;
      v12 = MEMORY[0x277CBEAC0];
      v13 = &v21;
      v14 = &v20;
    }

    v15 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:1];
    v16 = self->_orderedDisplayItemPlacements;
    self->_orderedDisplayItemPlacements = v15;

    orderedDisplayItemPlacements = self->_orderedDisplayItemPlacements;
  }

  v17 = [(NSDictionary *)orderedDisplayItemPlacements objectForKeyedSubscript:v4];

  return v17;
}

- (void)avoidanceFrameUpdatedFromFrame:(CGRect)a3 withAnimationSettings:(id)a4 options:(unint64_t)a5
{
  v6 = [(STUIStatusBarVisualProvider_CarPlay *)self statusBar:a4];
  [v6 avoidanceFrame];
  [(STUIStatusBarVisualProvider_CarPlayAppDock *)self _updateDockGuideConstraintsForAvoidanceFrame:?];
}

- (void)_updateDockGuideConstraintsForAvoidanceFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectEqualToRect(a3, *MEMORY[0x277CBF3A0]))
  {
    v8 = [(STUIStatusBarVisualProvider_CarPlayAppDock *)self dockGuideLeftConstraint];
    [v8 setActive:0];

    v9 = [(STUIStatusBarVisualProvider_CarPlayAppDock *)self dockGuideRightConstraint];
    [v9 setActive:0];

    v10 = [(STUIStatusBarVisualProvider_CarPlayAppDock *)self dockGuideWidthConstraint];
    [v10 setActive:1];

    [(STUIStatusBarVisualProvider_CarPlayAppDock *)self dockGuideCenterXConstraint];
  }

  else
  {
    v11 = [(STUIStatusBarVisualProvider_CarPlayAppDock *)self dockGuideWidthConstraint];
    [v11 setActive:0];

    v12 = [(STUIStatusBarVisualProvider_CarPlayAppDock *)self dockGuideCenterXConstraint];
    [v12 setActive:0];

    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    MinX = CGRectGetMinX(v20);
    v14 = [(STUIStatusBarVisualProvider_CarPlayAppDock *)self dockGuideLeftConstraint];
    [v14 setConstant:MinX];

    v15 = [(STUIStatusBarVisualProvider_CarPlayAppDock *)self dockGuideLeftConstraint];
    [v15 setActive:1];

    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    MaxX = CGRectGetMaxX(v21);
    v17 = [(STUIStatusBarVisualProvider_CarPlayAppDock *)self dockGuideRightConstraint];
    [v17 setConstant:MaxX];

    [(STUIStatusBarVisualProvider_CarPlayAppDock *)self dockGuideRightConstraint];
  }
  v18 = ;
  [v18 setActive:1];
}

@end