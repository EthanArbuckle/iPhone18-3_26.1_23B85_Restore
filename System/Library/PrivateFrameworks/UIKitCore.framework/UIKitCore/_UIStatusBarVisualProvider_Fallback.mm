@interface _UIStatusBarVisualProvider_Fallback
+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)orientation;
- (_UIStatusBar)statusBar;
- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)identifier;
- (id)setupInContainerView:(id)view;
- (id)styleAttributesForStyle:(int64_t)style;
@end

@implementation _UIStatusBarVisualProvider_Fallback

+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)orientation
{
  v3 = 40.0;
  v4 = -1.0;
  result.height = v3;
  result.width = v4;
  return result;
}

- (id)setupInContainerView:(id)view
{
  v33[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  viewCopy = view;
  array = [v3 array];
  v6 = [[_UIStatusBarRegion alloc] initWithIdentifier:@"main"];
  v7 = objc_alloc_init(_UIStatusBarRegionAxesLayout);
  v8 = objc_alloc_init(_UIStatusBarRegionAxisStackingLayout);
  [(_UIStatusBarRegionAxisStackingLayout *)v8 setAlignment:3];
  [(_UIStatusBarRegionAxisStackingLayout *)v8 setInterspace:6.0];
  [(_UIStatusBarRegionAxesLayout *)v7 setHorizontalLayout:v8];

  v9 = [_UIStatusBarRegionAxisAligningLayout aligningLayoutWithAlignment:1];
  [(_UIStatusBarRegionAxesLayout *)v7 setVerticalLayout:v9];

  [(_UIStatusBarRegion *)v6 setLayout:v7];
  v10 = [UIView alloc];
  v11 = [(UIView *)v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v12 = +[UIColor systemRedColor];
  v13 = [v12 colorWithAlphaComponent:0.75];
  [(UIView *)v11 setBackgroundColor:v13];

  [(_UIStatusBarRegion *)v6 setContentView:v11];
  layoutItem = [(_UIStatusBarRegion *)v6 layoutItem];
  topAnchor = [layoutItem topAnchor];
  topAnchor2 = [viewCopy topAnchor];
  v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [array addObject:v17];

  layoutItem2 = [(_UIStatusBarRegion *)v6 layoutItem];
  bottomAnchor = [layoutItem2 bottomAnchor];
  bottomAnchor2 = [viewCopy bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [array addObject:v21];

  layoutItem3 = [(_UIStatusBarRegion *)v6 layoutItem];
  leadingAnchor = [layoutItem3 leadingAnchor];
  leadingAnchor2 = [viewCopy leadingAnchor];
  v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v25];

  layoutItem4 = [(_UIStatusBarRegion *)v6 layoutItem];
  trailingAnchor = [layoutItem4 trailingAnchor];
  trailingAnchor2 = [viewCopy trailingAnchor];
  v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [array addObject:v29];

  layoutItem5 = [(_UIStatusBarRegion *)v6 layoutItem];
  [viewCopy _ui_addSubLayoutItem:layoutItem5];

  [MEMORY[0x1E69977A0] activateConstraints:array];
  v33[0] = v6;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];

  return v31;
}

- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)identifier
{
  v11[2] = *MEMORY[0x1E69E9840];
  placements = self->_placements;
  if (!placements)
  {
    v5 = [_UIStatusBarDisplayItemPlacement spacerPlacementWithSize:99 priority:3.0, 0.0];
    v11[0] = v5;
    v6 = +[(_UIStatusBarItem *)_UIStatusBarFallbackItem];
    v7 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v6 priority:100];
    v11[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    v9 = self->_placements;
    self->_placements = v8;

    placements = self->_placements;
  }

  return placements;
}

- (id)styleAttributesForStyle:(int64_t)style
{
  statusBar = [(_UIStatusBarVisualProvider_Fallback *)self statusBar];
  v5 = [_UIStatusBarStyleAttributes styleAttributesForStatusBar:statusBar style:style];

  v6 = [off_1E70ECC18 systemFontOfSize:8.0];
  [v5 setFont:v6];

  v7 = +[UIColor whiteColor];
  [v5 setTextColor:v7];

  return v5;
}

- (_UIStatusBar)statusBar
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBar);

  return WeakRetained;
}

@end