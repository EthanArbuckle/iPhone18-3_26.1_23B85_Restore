@interface STUIStatusBarVisualProvider_Fallback
+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)orientation;
- (STUIStatusBar)statusBar;
- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)identifier;
- (id)setupInContainerView:(id)view;
- (id)styleAttributesForStyle:(int64_t)style;
@end

@implementation STUIStatusBarVisualProvider_Fallback

+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)orientation
{
  v3 = *MEMORY[0x277D77260];
  v4 = 40.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)setupInContainerView:(id)view
{
  v33[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  viewCopy = view;
  array = [v3 array];
  v6 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"main"];
  v7 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v8 = objc_alloc_init(STUIStatusBarRegionAxisStackingLayout);
  [(STUIStatusBarRegionAxisStackingLayout *)v8 setAlignment:3];
  [(STUIStatusBarRegionAxisStackingLayout *)v8 setInterspace:6.0];
  [(STUIStatusBarRegionAxesLayout *)v7 setHorizontalLayout:v8];

  v9 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:1];
  [(STUIStatusBarRegionAxesLayout *)v7 setVerticalLayout:v9];

  [(STUIStatusBarRegion *)v6 setLayout:v7];
  v10 = objc_alloc(MEMORY[0x277D75D18]);
  v11 = [v10 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  systemRedColor = [MEMORY[0x277D75348] systemRedColor];
  v13 = [systemRedColor colorWithAlphaComponent:0.75];
  [v11 setBackgroundColor:v13];

  [(STUIStatusBarRegion *)v6 setContentView:v11];
  layoutItem = [(STUIStatusBarRegion *)v6 layoutItem];
  topAnchor = [layoutItem topAnchor];
  topAnchor2 = [viewCopy topAnchor];
  v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [array addObject:v17];

  layoutItem2 = [(STUIStatusBarRegion *)v6 layoutItem];
  bottomAnchor = [layoutItem2 bottomAnchor];
  bottomAnchor2 = [viewCopy bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [array addObject:v21];

  layoutItem3 = [(STUIStatusBarRegion *)v6 layoutItem];
  leadingAnchor = [layoutItem3 leadingAnchor];
  leadingAnchor2 = [viewCopy leadingAnchor];
  v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v25];

  layoutItem4 = [(STUIStatusBarRegion *)v6 layoutItem];
  trailingAnchor = [layoutItem4 trailingAnchor];
  trailingAnchor2 = [viewCopy trailingAnchor];
  v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [array addObject:v29];

  layoutItem5 = [(STUIStatusBarRegion *)v6 layoutItem];
  [viewCopy _ui_addSubLayoutItem:layoutItem5];

  [MEMORY[0x277CCAAD0] activateConstraints:array];
  v33[0] = v6;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];

  return v31;
}

- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)identifier
{
  v11[2] = *MEMORY[0x277D85DE8];
  placements = self->_placements;
  if (!placements)
  {
    v5 = [STUIStatusBarDisplayItemPlacement spacerPlacementWithSize:99 priority:3.0, 0.0];
    v11[0] = v5;
    v6 = +[(STUIStatusBarItem *)STUIStatusBarFallbackItem];
    v7 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v6 priority:100];
    v11[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    v9 = self->_placements;
    self->_placements = v8;

    placements = self->_placements;
  }

  return placements;
}

- (id)styleAttributesForStyle:(int64_t)style
{
  statusBar = [(STUIStatusBarVisualProvider_Fallback *)self statusBar];
  v5 = [STUIStatusBarStyleAttributes styleAttributesForStatusBar:statusBar style:style];

  v6 = [MEMORY[0x277D74300] systemFontOfSize:8.0];
  [v5 setFont:v6];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v5 setTextColor:whiteColor];

  return v5;
}

- (STUIStatusBar)statusBar
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBar);

  return WeakRetained;
}

@end