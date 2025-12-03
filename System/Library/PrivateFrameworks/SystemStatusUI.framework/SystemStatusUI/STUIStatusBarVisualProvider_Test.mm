@interface STUIStatusBarVisualProvider_Test
+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)orientation;
- (STUIStatusBar)statusBar;
- (STUIStatusBarVisualProvider_Test)init;
- (id)setupInContainerView:(id)view;
- (id)styleAttributesForStyle:(int64_t)style;
- (void)setOrderedDisplayItemPlacements:(id)placements inRegionWithIdentifier:(id)identifier;
- (void)setOverriddenStyleAttributes:(id)attributes forDisplayItemWithIdentifier:(id)identifier;
@end

@implementation STUIStatusBarVisualProvider_Test

- (STUIStatusBarVisualProvider_Test)init
{
  v10[5] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = STUIStatusBarVisualProvider_Test;
  v2 = [(STUIStatusBarVisualProvider_Test *)&v9 init];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(STUIStatusBarVisualProvider_Test *)v2 setOrderedDisplayItemPlacements:dictionary];

  v4 = MEMORY[0x277CBEB98];
  v10[0] = @"top-left";
  v10[1] = @"top-right";
  v10[2] = @"top-center";
  v10[3] = @"bottom-left";
  v10[4] = @"bottom-right";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:5];
  v6 = [v4 setWithArray:v5];
  allRegionIdentifiers = v2->_allRegionIdentifiers;
  v2->_allRegionIdentifiers = v6;

  return v2;
}

- (id)setupInContainerView:(id)view
{
  v3 = MEMORY[0x277CBEB18];
  viewCopy = view;
  array = [v3 array];
  array2 = [MEMORY[0x277CBEB18] array];
  v6 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"top-left"];
  v7 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v8 = objc_alloc_init(STUIStatusBarRegionAxisStackingLayout);
  [(STUIStatusBarRegionAxisStackingLayout *)v8 setAlignment:5];
  [(STUIStatusBarRegionAxisStackingLayout *)v8 setInterspace:6.0];
  [(STUIStatusBarRegionAxesLayout *)v7 setHorizontalLayout:v8];

  v9 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:4];
  [(STUIStatusBarRegionAxesLayout *)v7 setVerticalLayout:v9];

  [(STUIStatusBarRegion *)v6 setLayout:v7];
  v10 = [MEMORY[0x277CBEB98] setWithObject:@"top-center"];
  [(STUIStatusBarRegion *)v6 setDependentRegionIdentifiers:v10];

  layoutItem = [(STUIStatusBarRegion *)v6 layoutItem];
  topAnchor = [layoutItem topAnchor];
  topAnchor2 = [viewCopy topAnchor];
  v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [array addObject:v14];

  leftAnchor = [layoutItem leftAnchor];
  leftAnchor2 = [viewCopy leftAnchor];
  v17 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:10.0];
  [array addObject:v17];

  heightAnchor = [layoutItem heightAnchor];
  v19 = [heightAnchor constraintEqualToConstant:100.0];
  [array addObject:v19];

  [viewCopy _ui_addSubLayoutItem:layoutItem];
  [array2 addObject:v6];

  v20 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"top-right"];
  v21 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v22 = objc_alloc_init(STUIStatusBarRegionAxisStackingLayout);
  [(STUIStatusBarRegionAxisStackingLayout *)v22 setAlignment:6];
  [(STUIStatusBarRegionAxisStackingLayout *)v22 setInterspace:6.0];
  [(STUIStatusBarRegionAxesLayout *)v21 setHorizontalLayout:v22];

  v23 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:4];
  [(STUIStatusBarRegionAxesLayout *)v21 setVerticalLayout:v23];

  [(STUIStatusBarRegion *)v20 setLayout:v21];
  v24 = [MEMORY[0x277CBEB98] setWithObject:@"top-center"];
  [(STUIStatusBarRegion *)v20 setDependentRegionIdentifiers:v24];

  layoutItem2 = [(STUIStatusBarRegion *)v20 layoutItem];
  topAnchor3 = [layoutItem2 topAnchor];
  topAnchor4 = [viewCopy topAnchor];
  v28 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [array addObject:v28];

  rightAnchor = [layoutItem2 rightAnchor];
  rightAnchor2 = [viewCopy rightAnchor];
  v31 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-10.0];
  [array addObject:v31];

  v119 = layoutItem2;
  heightAnchor2 = [layoutItem2 heightAnchor];
  v33 = [heightAnchor2 constraintEqualToConstant:100.0];
  [array addObject:v33];

  [viewCopy _ui_addSubLayoutItem:layoutItem2];
  [array2 addObject:v20];

  v34 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"top-center"];
  v35 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v36 = objc_alloc_init(STUIStatusBarRegionAxisCenteringLayout);
  [(STUIStatusBarRegionAxesLayout *)v35 setHorizontalLayout:v36];

  v37 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:4];
  [(STUIStatusBarRegionAxesLayout *)v35 setVerticalLayout:v37];

  [(STUIStatusBarRegion *)v34 setLayout:v35];
  v38 = [MEMORY[0x277CBEB98] setWithObjects:{@"top-left", @"top-right", 0}];
  [(STUIStatusBarRegion *)v34 setDependentRegionIdentifiers:v38];

  layoutItem3 = [(STUIStatusBarRegion *)v34 layoutItem];
  topAnchor5 = [layoutItem3 topAnchor];
  topAnchor6 = [viewCopy topAnchor];
  v42 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  [array addObject:v42];

  layoutItem4 = [(STUIStatusBarRegion *)v34 layoutItem];
  centerXAnchor = [layoutItem4 centerXAnchor];
  centerXAnchor2 = [viewCopy centerXAnchor];
  v46 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [array addObject:v46];

  layoutItem5 = [(STUIStatusBarRegion *)v34 layoutItem];
  leftAnchor3 = [layoutItem5 leftAnchor];
  rightAnchor3 = [layoutItem rightAnchor];
  v50 = [leftAnchor3 constraintGreaterThanOrEqualToAnchor:rightAnchor3 constant:10.0];
  [array addObject:v50];

  layoutItem6 = [(STUIStatusBarRegion *)v34 layoutItem];
  rightAnchor4 = [layoutItem6 rightAnchor];
  leftAnchor4 = [layoutItem2 leftAnchor];
  v54 = [rightAnchor4 constraintLessThanOrEqualToAnchor:leftAnchor4 constant:-10.0];
  [array addObject:v54];

  layoutItem7 = [(STUIStatusBarRegion *)v34 layoutItem];
  heightAnchor3 = [layoutItem7 heightAnchor];
  v57 = [heightAnchor3 constraintEqualToConstant:100.0];
  [array addObject:v57];

  layoutItem8 = [(STUIStatusBarRegion *)v34 layoutItem];
  leftAnchor5 = [layoutItem8 leftAnchor];
  rightAnchor5 = [layoutItem rightAnchor];
  v61 = [leftAnchor5 constraintEqualToAnchor:rightAnchor5 constant:10.0];

  LODWORD(v62) = 1132068864;
  [v61 setPriority:v62];
  [array addObject:v61];

  layoutItem9 = [(STUIStatusBarRegion *)v34 layoutItem];
  rightAnchor6 = [layoutItem9 rightAnchor];
  leftAnchor6 = [layoutItem2 leftAnchor];
  v66 = [rightAnchor6 constraintEqualToAnchor:leftAnchor6 constant:-10.0];

  LODWORD(v67) = 1132068864;
  [v66 setPriority:v67];
  [array addObject:v66];

  layoutItem10 = [(STUIStatusBarRegion *)v34 layoutItem];
  widthAnchor = [layoutItem10 widthAnchor];
  v70 = [widthAnchor constraintEqualToConstant:50.0];

  LODWORD(v71) = 1132068864;
  [v70 setPriority:v71];
  [array addObject:v70];

  layoutItem11 = [(STUIStatusBarRegion *)v34 layoutItem];
  [viewCopy _ui_addSubLayoutItem:layoutItem11];

  [array2 addObject:v34];
  v73 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"bottom-left"];
  v74 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v75 = objc_alloc_init(STUIStatusBarRegionAxisStackingLayout);
  [(STUIStatusBarRegionAxisStackingLayout *)v75 setAlignment:5];
  [(STUIStatusBarRegionAxisStackingLayout *)v75 setInterspace:6.0];
  [(STUIStatusBarRegionAxesLayout *)v74 setHorizontalLayout:v75];

  v76 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:4];
  [(STUIStatusBarRegionAxesLayout *)v74 setVerticalLayout:v76];

  [(STUIStatusBarRegion *)v73 setLayout:v74];
  v77 = [MEMORY[0x277CBEB98] setWithObject:@"bottom-right"];
  [(STUIStatusBarRegion *)v73 setDependentRegionIdentifiers:v77];

  layoutItem12 = [(STUIStatusBarRegion *)v73 layoutItem];
  topAnchor7 = [layoutItem12 topAnchor];
  bottomAnchor = [layoutItem bottomAnchor];
  v81 = [topAnchor7 constraintEqualToAnchor:bottomAnchor];
  [array addObject:v81];

  layoutItem13 = [(STUIStatusBarRegion *)v73 layoutItem];
  leftAnchor7 = [layoutItem13 leftAnchor];
  leftAnchor8 = [viewCopy leftAnchor];
  v85 = [leftAnchor7 constraintEqualToAnchor:leftAnchor8 constant:10.0];
  [array addObject:v85];

  layoutItem14 = [(STUIStatusBarRegion *)v73 layoutItem];
  heightAnchor4 = [layoutItem14 heightAnchor];
  v88 = [heightAnchor4 constraintEqualToConstant:100.0];
  [array addObject:v88];

  layoutItem15 = [(STUIStatusBarRegion *)v73 layoutItem];
  [viewCopy _ui_addSubLayoutItem:layoutItem15];

  layoutItem16 = [(STUIStatusBarRegion *)v73 layoutItem];

  [array2 addObject:v73];
  v91 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"bottom-right"];
  v92 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v93 = objc_alloc_init(STUIStatusBarRegionAxisStackingLayout);
  [(STUIStatusBarRegionAxisStackingLayout *)v93 setAlignment:6];
  [(STUIStatusBarRegionAxisStackingLayout *)v93 setInterspace:6.0];
  [(STUIStatusBarRegionAxesLayout *)v92 setHorizontalLayout:v93];

  v94 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:4];
  [(STUIStatusBarRegionAxesLayout *)v92 setVerticalLayout:v94];

  [(STUIStatusBarRegion *)v91 setLayout:v92];
  v95 = [MEMORY[0x277CBEB98] setWithObject:@"bottom-left"];
  [(STUIStatusBarRegion *)v91 setDependentRegionIdentifiers:v95];

  layoutItem17 = [(STUIStatusBarRegion *)v91 layoutItem];
  topAnchor8 = [layoutItem17 topAnchor];
  topAnchor9 = [layoutItem16 topAnchor];
  v99 = [topAnchor8 constraintEqualToAnchor:topAnchor9];
  [array addObject:v99];

  layoutItem18 = [(STUIStatusBarRegion *)v91 layoutItem];
  rightAnchor7 = [layoutItem18 rightAnchor];
  rightAnchor8 = [viewCopy rightAnchor];
  v103 = [rightAnchor7 constraintEqualToAnchor:rightAnchor8 constant:-10.0];
  [array addObject:v103];

  layoutItem19 = [(STUIStatusBarRegion *)v91 layoutItem];
  heightAnchor5 = [layoutItem19 heightAnchor];
  v106 = [heightAnchor5 constraintEqualToConstant:100.0];
  [array addObject:v106];

  layoutItem20 = [(STUIStatusBarRegion *)v91 layoutItem];
  leftAnchor9 = [layoutItem20 leftAnchor];
  rightAnchor9 = [layoutItem16 rightAnchor];
  v110 = [leftAnchor9 constraintEqualToAnchor:rightAnchor9 constant:10.0];
  [array addObject:v110];

  layoutItem21 = [(STUIStatusBarRegion *)v91 layoutItem];
  widthAnchor2 = [layoutItem21 widthAnchor];
  widthAnchor3 = [layoutItem16 widthAnchor];
  v114 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];

  LODWORD(v115) = 1132068864;
  [v114 setPriority:v115];
  [array addObject:v114];

  layoutItem22 = [(STUIStatusBarRegion *)v91 layoutItem];
  [viewCopy _ui_addSubLayoutItem:layoutItem22];

  [array2 addObject:v91];
  [MEMORY[0x277CCAAD0] activateConstraints:array];

  return array2;
}

- (void)setOrderedDisplayItemPlacements:(id)placements inRegionWithIdentifier:(id)identifier
{
  [(NSMutableDictionary *)self->_orderedDisplayItemPlacements setObject:placements forKeyedSubscript:identifier];
  WeakRetained = objc_loadWeakRetained(&self->_statusBar);
  [WeakRetained resetVisualProvider];
}

- (id)styleAttributesForStyle:(int64_t)style
{
  statusBar = [(STUIStatusBarVisualProvider_Test *)self statusBar];
  v5 = [STUIStatusBarStyleAttributes styleAttributesForStatusBar:statusBar style:style];

  v6 = [MEMORY[0x277D74300] boldSystemFontOfSize:16.0];
  [v5 setFont:v6];

  if ([v5 style] == 1)
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [v5 setTextColor:whiteColor];

    [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
    [v5 setTextColor:blackColor];

    [MEMORY[0x277D75348] blackColor];
  }
  v9 = ;
  [v5 setImageTintColor:v9];

  return v5;
}

- (void)setOverriddenStyleAttributes:(id)attributes forDisplayItemWithIdentifier:(id)identifier
{
  attributesCopy = attributes;
  identifierCopy = identifier;
  overriddenStyleAttributes = self->_overriddenStyleAttributes;
  if (!overriddenStyleAttributes)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v9 = self->_overriddenStyleAttributes;
    self->_overriddenStyleAttributes = dictionary;

    overriddenStyleAttributes = self->_overriddenStyleAttributes;
  }

  [(NSMutableDictionary *)overriddenStyleAttributes setObject:attributesCopy forKeyedSubscript:identifierCopy];
}

+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)orientation
{
  v3 = *MEMORY[0x277D77260];
  v4 = 200.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (STUIStatusBar)statusBar
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBar);

  return WeakRetained;
}

@end