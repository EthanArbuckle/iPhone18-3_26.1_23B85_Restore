@interface STUIStatusBarVisualProvider_Test
+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)a3;
- (STUIStatusBar)statusBar;
- (STUIStatusBarVisualProvider_Test)init;
- (id)setupInContainerView:(id)a3;
- (id)styleAttributesForStyle:(int64_t)a3;
- (void)setOrderedDisplayItemPlacements:(id)a3 inRegionWithIdentifier:(id)a4;
- (void)setOverriddenStyleAttributes:(id)a3 forDisplayItemWithIdentifier:(id)a4;
@end

@implementation STUIStatusBarVisualProvider_Test

- (STUIStatusBarVisualProvider_Test)init
{
  v10[5] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = STUIStatusBarVisualProvider_Test;
  v2 = [(STUIStatusBarVisualProvider_Test *)&v9 init];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [(STUIStatusBarVisualProvider_Test *)v2 setOrderedDisplayItemPlacements:v3];

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

- (id)setupInContainerView:(id)a3
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a3;
  v5 = [v3 array];
  v118 = [MEMORY[0x277CBEB18] array];
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

  v11 = [(STUIStatusBarRegion *)v6 layoutItem];
  v12 = [v11 topAnchor];
  v13 = [v4 topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  [v5 addObject:v14];

  v15 = [v11 leftAnchor];
  v16 = [v4 leftAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:10.0];
  [v5 addObject:v17];

  v18 = [v11 heightAnchor];
  v19 = [v18 constraintEqualToConstant:100.0];
  [v5 addObject:v19];

  [v4 _ui_addSubLayoutItem:v11];
  [v118 addObject:v6];

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

  v25 = [(STUIStatusBarRegion *)v20 layoutItem];
  v26 = [v25 topAnchor];
  v27 = [v4 topAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  [v5 addObject:v28];

  v29 = [v25 rightAnchor];
  v30 = [v4 rightAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:-10.0];
  [v5 addObject:v31];

  v119 = v25;
  v32 = [v25 heightAnchor];
  v33 = [v32 constraintEqualToConstant:100.0];
  [v5 addObject:v33];

  [v4 _ui_addSubLayoutItem:v25];
  [v118 addObject:v20];

  v34 = [[STUIStatusBarRegion alloc] initWithIdentifier:@"top-center"];
  v35 = objc_alloc_init(STUIStatusBarRegionAxesLayout);
  v36 = objc_alloc_init(STUIStatusBarRegionAxisCenteringLayout);
  [(STUIStatusBarRegionAxesLayout *)v35 setHorizontalLayout:v36];

  v37 = [STUIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:4];
  [(STUIStatusBarRegionAxesLayout *)v35 setVerticalLayout:v37];

  [(STUIStatusBarRegion *)v34 setLayout:v35];
  v38 = [MEMORY[0x277CBEB98] setWithObjects:{@"top-left", @"top-right", 0}];
  [(STUIStatusBarRegion *)v34 setDependentRegionIdentifiers:v38];

  v39 = [(STUIStatusBarRegion *)v34 layoutItem];
  v40 = [v39 topAnchor];
  v41 = [v4 topAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];
  [v5 addObject:v42];

  v43 = [(STUIStatusBarRegion *)v34 layoutItem];
  v44 = [v43 centerXAnchor];
  v45 = [v4 centerXAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];
  [v5 addObject:v46];

  v47 = [(STUIStatusBarRegion *)v34 layoutItem];
  v48 = [v47 leftAnchor];
  v49 = [v11 rightAnchor];
  v50 = [v48 constraintGreaterThanOrEqualToAnchor:v49 constant:10.0];
  [v5 addObject:v50];

  v51 = [(STUIStatusBarRegion *)v34 layoutItem];
  v52 = [v51 rightAnchor];
  v53 = [v25 leftAnchor];
  v54 = [v52 constraintLessThanOrEqualToAnchor:v53 constant:-10.0];
  [v5 addObject:v54];

  v55 = [(STUIStatusBarRegion *)v34 layoutItem];
  v56 = [v55 heightAnchor];
  v57 = [v56 constraintEqualToConstant:100.0];
  [v5 addObject:v57];

  v58 = [(STUIStatusBarRegion *)v34 layoutItem];
  v59 = [v58 leftAnchor];
  v60 = [v11 rightAnchor];
  v61 = [v59 constraintEqualToAnchor:v60 constant:10.0];

  LODWORD(v62) = 1132068864;
  [v61 setPriority:v62];
  [v5 addObject:v61];

  v63 = [(STUIStatusBarRegion *)v34 layoutItem];
  v64 = [v63 rightAnchor];
  v65 = [v25 leftAnchor];
  v66 = [v64 constraintEqualToAnchor:v65 constant:-10.0];

  LODWORD(v67) = 1132068864;
  [v66 setPriority:v67];
  [v5 addObject:v66];

  v68 = [(STUIStatusBarRegion *)v34 layoutItem];
  v69 = [v68 widthAnchor];
  v70 = [v69 constraintEqualToConstant:50.0];

  LODWORD(v71) = 1132068864;
  [v70 setPriority:v71];
  [v5 addObject:v70];

  v72 = [(STUIStatusBarRegion *)v34 layoutItem];
  [v4 _ui_addSubLayoutItem:v72];

  [v118 addObject:v34];
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

  v78 = [(STUIStatusBarRegion *)v73 layoutItem];
  v79 = [v78 topAnchor];
  v80 = [v11 bottomAnchor];
  v81 = [v79 constraintEqualToAnchor:v80];
  [v5 addObject:v81];

  v82 = [(STUIStatusBarRegion *)v73 layoutItem];
  v83 = [v82 leftAnchor];
  v84 = [v4 leftAnchor];
  v85 = [v83 constraintEqualToAnchor:v84 constant:10.0];
  [v5 addObject:v85];

  v86 = [(STUIStatusBarRegion *)v73 layoutItem];
  v87 = [v86 heightAnchor];
  v88 = [v87 constraintEqualToConstant:100.0];
  [v5 addObject:v88];

  v89 = [(STUIStatusBarRegion *)v73 layoutItem];
  [v4 _ui_addSubLayoutItem:v89];

  v90 = [(STUIStatusBarRegion *)v73 layoutItem];

  [v118 addObject:v73];
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

  v96 = [(STUIStatusBarRegion *)v91 layoutItem];
  v97 = [v96 topAnchor];
  v98 = [v90 topAnchor];
  v99 = [v97 constraintEqualToAnchor:v98];
  [v5 addObject:v99];

  v100 = [(STUIStatusBarRegion *)v91 layoutItem];
  v101 = [v100 rightAnchor];
  v102 = [v4 rightAnchor];
  v103 = [v101 constraintEqualToAnchor:v102 constant:-10.0];
  [v5 addObject:v103];

  v104 = [(STUIStatusBarRegion *)v91 layoutItem];
  v105 = [v104 heightAnchor];
  v106 = [v105 constraintEqualToConstant:100.0];
  [v5 addObject:v106];

  v107 = [(STUIStatusBarRegion *)v91 layoutItem];
  v108 = [v107 leftAnchor];
  v109 = [v90 rightAnchor];
  v110 = [v108 constraintEqualToAnchor:v109 constant:10.0];
  [v5 addObject:v110];

  v111 = [(STUIStatusBarRegion *)v91 layoutItem];
  v112 = [v111 widthAnchor];
  v113 = [v90 widthAnchor];
  v114 = [v112 constraintEqualToAnchor:v113];

  LODWORD(v115) = 1132068864;
  [v114 setPriority:v115];
  [v5 addObject:v114];

  v116 = [(STUIStatusBarRegion *)v91 layoutItem];
  [v4 _ui_addSubLayoutItem:v116];

  [v118 addObject:v91];
  [MEMORY[0x277CCAAD0] activateConstraints:v5];

  return v118;
}

- (void)setOrderedDisplayItemPlacements:(id)a3 inRegionWithIdentifier:(id)a4
{
  [(NSMutableDictionary *)self->_orderedDisplayItemPlacements setObject:a3 forKeyedSubscript:a4];
  WeakRetained = objc_loadWeakRetained(&self->_statusBar);
  [WeakRetained resetVisualProvider];
}

- (id)styleAttributesForStyle:(int64_t)a3
{
  v4 = [(STUIStatusBarVisualProvider_Test *)self statusBar];
  v5 = [STUIStatusBarStyleAttributes styleAttributesForStatusBar:v4 style:a3];

  v6 = [MEMORY[0x277D74300] boldSystemFontOfSize:16.0];
  [v5 setFont:v6];

  if ([v5 style] == 1)
  {
    v7 = [MEMORY[0x277D75348] whiteColor];
    [v5 setTextColor:v7];

    [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    v8 = [MEMORY[0x277D75348] blackColor];
    [v5 setTextColor:v8];

    [MEMORY[0x277D75348] blackColor];
  }
  v9 = ;
  [v5 setImageTintColor:v9];

  return v5;
}

- (void)setOverriddenStyleAttributes:(id)a3 forDisplayItemWithIdentifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  overriddenStyleAttributes = self->_overriddenStyleAttributes;
  if (!overriddenStyleAttributes)
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    v9 = self->_overriddenStyleAttributes;
    self->_overriddenStyleAttributes = v8;

    overriddenStyleAttributes = self->_overriddenStyleAttributes;
  }

  [(NSMutableDictionary *)overriddenStyleAttributes setObject:v10 forKeyedSubscript:v6];
}

+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)a3
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