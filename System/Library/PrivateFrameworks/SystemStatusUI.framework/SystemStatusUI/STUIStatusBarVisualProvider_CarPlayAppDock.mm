@interface STUIStatusBarVisualProvider_CarPlayAppDock
+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)orientation;
- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)identifier;
- (id)setupInContainerView:(id)view;
- (void)_updateDockGuideConstraintsForAvoidanceFrame:(CGRect)frame;
- (void)avoidanceFrameUpdatedFromFrame:(CGRect)frame withAnimationSettings:(id)settings options:(unint64_t)options;
@end

@implementation STUIStatusBarVisualProvider_CarPlayAppDock

+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)orientation
{
  v3 = *MEMORY[0x277D77260];
  v4 = 45.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)setupInContainerView:(id)view
{
  v95[7] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  array = [MEMORY[0x277CBEB18] array];
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
  [viewCopy addLayoutGuide:v14];
  widthAnchor = [v14 widthAnchor];
  v16 = [widthAnchor constraintEqualToConstant:111.0];
  [(STUIStatusBarVisualProvider_CarPlayAppDock *)self setDockGuideWidthConstraint:v16];

  centerXAnchor = [v14 centerXAnchor];
  centerXAnchor2 = [viewCopy centerXAnchor];
  v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [(STUIStatusBarVisualProvider_CarPlayAppDock *)self setDockGuideCenterXConstraint:v19];

  dockGuideWidthConstraint = [(STUIStatusBarVisualProvider_CarPlayAppDock *)self dockGuideWidthConstraint];
  [array addObject:dockGuideWidthConstraint];

  topAnchor = [v14 topAnchor];
  topAnchor2 = [viewCopy topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [array addObject:v23];

  bottomAnchor = [v14 bottomAnchor];
  bottomAnchor2 = [viewCopy bottomAnchor];
  v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [array addObject:v26];

  dockGuideCenterXConstraint = [(STUIStatusBarVisualProvider_CarPlayAppDock *)self dockGuideCenterXConstraint];
  v92 = array;
  [array addObject:dockGuideCenterXConstraint];

  leftAnchor = [v14 leftAnchor];
  leftAnchor2 = [viewCopy leftAnchor];
  v30 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:0.0];
  [(STUIStatusBarVisualProvider_CarPlayAppDock *)self setDockGuideLeftConstraint:v30];

  rightAnchor = [v14 rightAnchor];
  leftAnchor3 = [viewCopy leftAnchor];
  v33 = [rightAnchor constraintEqualToAnchor:leftAnchor3 constant:0.0];
  [(STUIStatusBarVisualProvider_CarPlayAppDock *)self setDockGuideRightConstraint:v33];

  statusBar = [(STUIStatusBarVisualProvider_CarPlay *)self statusBar];
  targetScreen = [statusBar targetScreen];
  LODWORD(self) = [targetScreen _isRightHandDrive];

  v89 = v10;
  v87 = v14;
  if (self)
  {
    layoutItem = [(STUIStatusBarRegion *)v6 layoutItem];
    heightAnchor = [layoutItem heightAnchor];
    safeAreaLayoutGuide4 = [heightAnchor constraintEqualToConstant:10.0];
    v95[0] = safeAreaLayoutGuide4;
    layoutItem2 = [(STUIStatusBarRegion *)v6 layoutItem];
    leftAnchor4 = [layoutItem2 leftAnchor];
    safeAreaLayoutGuide = [viewCopy safeAreaLayoutGuide];
    [safeAreaLayoutGuide leftAnchor];
    v82 = v84 = leftAnchor4;
    leftAnchor8 = [leftAnchor4 constraintEqualToAnchor:10.0 constant:?];
    v95[1] = leftAnchor8;
    layoutItem3 = [(STUIStatusBarRegion *)v6 layoutItem];
    rightAnchor2 = [layoutItem3 rightAnchor];
    leftAnchor5 = [v14 leftAnchor];
    layoutItem9 = rightAnchor2;
    v77 = [rightAnchor2 constraintLessThanOrEqualToAnchor:leftAnchor5];
    v95[2] = v77;
    layoutItem4 = [(STUIStatusBarRegion *)v6 layoutItem];
    centerYAnchor = [layoutItem4 centerYAnchor];
    safeAreaLayoutGuide2 = [viewCopy safeAreaLayoutGuide];
    [safeAreaLayoutGuide2 centerYAnchor];
    v73 = v75 = centerYAnchor;
    v72 = [centerYAnchor constraintEqualToAnchor:?];
    v95[3] = v72;
    layoutItem5 = [(STUIStatusBarRegion *)v10 layoutItem];
    centerYAnchor2 = [layoutItem5 centerYAnchor];
    safeAreaLayoutGuide3 = [viewCopy safeAreaLayoutGuide];
    [safeAreaLayoutGuide3 centerYAnchor];
    v68 = v70 = centerYAnchor2;
    layoutItem10 = [centerYAnchor2 constraintEqualToAnchor:?];
    v95[4] = layoutItem10;
    layoutItem6 = [(STUIStatusBarRegion *)v10 layoutItem];
    heightAnchor2 = [layoutItem6 heightAnchor];
    v64 = [heightAnchor2 constraintEqualToConstant:45.0];
    v95[5] = v64;
    layoutItem7 = [(STUIStatusBarRegion *)v10 layoutItem];
    leftAnchor6 = [layoutItem7 leftAnchor];
    rightAnchor3 = [v14 rightAnchor];
    v45 = [leftAnchor6 constraintEqualToAnchor:rightAnchor3];
    v95[6] = v45;
    layoutItem11 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:7];
    [v92 addObjectsFromArray:layoutItem11];
  }

  else
  {
    layoutItem8 = [(STUIStatusBarRegion *)v10 layoutItem];
    leftAnchor7 = [layoutItem8 leftAnchor];
    safeAreaLayoutGuide4 = [viewCopy safeAreaLayoutGuide];
    layoutItem2 = [safeAreaLayoutGuide4 leftAnchor];
    v84 = [leftAnchor7 constraintEqualToAnchor:?];
    v94[0] = v84;
    safeAreaLayoutGuide = [(STUIStatusBarRegion *)v10 layoutItem];
    rightAnchor4 = [safeAreaLayoutGuide rightAnchor];
    leftAnchor8 = [v14 leftAnchor];
    v82 = rightAnchor4;
    layoutItem3 = [rightAnchor4 constraintEqualToAnchor:leftAnchor8];
    v94[1] = layoutItem3;
    layoutItem9 = [(STUIStatusBarRegion *)v10 layoutItem];
    leftAnchor5 = [layoutItem9 heightAnchor];
    v77 = [leftAnchor5 constraintEqualToConstant:45.0];
    v94[2] = v77;
    layoutItem4 = [(STUIStatusBarRegion *)v10 layoutItem];
    centerYAnchor3 = [layoutItem4 centerYAnchor];
    safeAreaLayoutGuide2 = [viewCopy safeAreaLayoutGuide];
    [safeAreaLayoutGuide2 centerYAnchor];
    v73 = v75 = centerYAnchor3;
    v72 = [centerYAnchor3 constraintEqualToAnchor:?];
    v94[3] = v72;
    layoutItem5 = [(STUIStatusBarRegion *)v6 layoutItem];
    leftAnchor9 = [layoutItem5 leftAnchor];
    safeAreaLayoutGuide3 = [v14 rightAnchor];
    v70 = leftAnchor9;
    v68 = [leftAnchor9 constraintGreaterThanOrEqualToAnchor:safeAreaLayoutGuide3];
    v94[4] = v68;
    layoutItem10 = [(STUIStatusBarRegion *)v6 layoutItem];
    rightAnchor5 = [layoutItem10 rightAnchor];
    heightAnchor2 = [viewCopy safeAreaLayoutGuide];
    [heightAnchor2 rightAnchor];
    v64 = layoutItem6 = rightAnchor5;
    layoutItem7 = [rightAnchor5 constraintEqualToAnchor:-10.0 constant:?];
    v94[5] = layoutItem7;
    leftAnchor6 = [(STUIStatusBarRegion *)v6 layoutItem];
    rightAnchor3 = [leftAnchor6 heightAnchor];
    v45 = [rightAnchor3 constraintEqualToConstant:45.0];
    v94[6] = v45;
    layoutItem11 = [(STUIStatusBarRegion *)v6 layoutItem];
    centerYAnchor4 = [layoutItem11 centerYAnchor];
    [viewCopy safeAreaLayoutGuide];
    v62 = v6;
    v52 = v60 = viewCopy;
    centerYAnchor5 = [v52 centerYAnchor];
    v54 = [centerYAnchor4 constraintEqualToAnchor:centerYAnchor5];
    v94[7] = v54;
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:8];
    [v92 addObjectsFromArray:v55];

    layoutItem = layoutItem8;
    viewCopy = v60;
    v6 = v62;

    heightAnchor = leftAnchor7;
  }

  layoutItem12 = [(STUIStatusBarRegion *)v6 layoutItem];
  [viewCopy _ui_addSubLayoutItem:layoutItem12];

  layoutItem13 = [(STUIStatusBarRegion *)v89 layoutItem];
  [viewCopy _ui_addSubLayoutItem:layoutItem13];

  [MEMORY[0x277CCAAD0] activateConstraints:v92];
  v93[0] = v89;
  v93[1] = v6;
  v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:2];

  return v58;
}

- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)identifier
{
  v24[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  orderedDisplayItemPlacements = self->_orderedDisplayItemPlacements;
  if (!orderedDisplayItemPlacements)
  {
    v6 = +[(STUIStatusBarItem *)STUIStatusBarRadarItem];
    v7 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v6 priority:155];

    statusBar = [(STUIStatusBarVisualProvider_CarPlay *)self statusBar];
    targetScreen = [statusBar targetScreen];
    _isRightHandDrive = [targetScreen _isRightHandDrive];

    if (_isRightHandDrive)
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

  v17 = [(NSDictionary *)orderedDisplayItemPlacements objectForKeyedSubscript:identifierCopy];

  return v17;
}

- (void)avoidanceFrameUpdatedFromFrame:(CGRect)frame withAnimationSettings:(id)settings options:(unint64_t)options
{
  v6 = [(STUIStatusBarVisualProvider_CarPlay *)self statusBar:settings];
  [v6 avoidanceFrame];
  [(STUIStatusBarVisualProvider_CarPlayAppDock *)self _updateDockGuideConstraintsForAvoidanceFrame:?];
}

- (void)_updateDockGuideConstraintsForAvoidanceFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (CGRectEqualToRect(frame, *MEMORY[0x277CBF3A0]))
  {
    dockGuideLeftConstraint = [(STUIStatusBarVisualProvider_CarPlayAppDock *)self dockGuideLeftConstraint];
    [dockGuideLeftConstraint setActive:0];

    dockGuideRightConstraint = [(STUIStatusBarVisualProvider_CarPlayAppDock *)self dockGuideRightConstraint];
    [dockGuideRightConstraint setActive:0];

    dockGuideWidthConstraint = [(STUIStatusBarVisualProvider_CarPlayAppDock *)self dockGuideWidthConstraint];
    [dockGuideWidthConstraint setActive:1];

    [(STUIStatusBarVisualProvider_CarPlayAppDock *)self dockGuideCenterXConstraint];
  }

  else
  {
    dockGuideWidthConstraint2 = [(STUIStatusBarVisualProvider_CarPlayAppDock *)self dockGuideWidthConstraint];
    [dockGuideWidthConstraint2 setActive:0];

    dockGuideCenterXConstraint = [(STUIStatusBarVisualProvider_CarPlayAppDock *)self dockGuideCenterXConstraint];
    [dockGuideCenterXConstraint setActive:0];

    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    MinX = CGRectGetMinX(v20);
    dockGuideLeftConstraint2 = [(STUIStatusBarVisualProvider_CarPlayAppDock *)self dockGuideLeftConstraint];
    [dockGuideLeftConstraint2 setConstant:MinX];

    dockGuideLeftConstraint3 = [(STUIStatusBarVisualProvider_CarPlayAppDock *)self dockGuideLeftConstraint];
    [dockGuideLeftConstraint3 setActive:1];

    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    MaxX = CGRectGetMaxX(v21);
    dockGuideRightConstraint2 = [(STUIStatusBarVisualProvider_CarPlayAppDock *)self dockGuideRightConstraint];
    [dockGuideRightConstraint2 setConstant:MaxX];

    [(STUIStatusBarVisualProvider_CarPlayAppDock *)self dockGuideRightConstraint];
  }
  v18 = ;
  [v18 setActive:1];
}

@end