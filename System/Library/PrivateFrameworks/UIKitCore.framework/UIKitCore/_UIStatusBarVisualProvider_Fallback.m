@interface _UIStatusBarVisualProvider_Fallback
+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)a3;
- (_UIStatusBar)statusBar;
- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)a3;
- (id)setupInContainerView:(id)a3;
- (id)styleAttributesForStyle:(int64_t)a3;
@end

@implementation _UIStatusBarVisualProvider_Fallback

+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)a3
{
  v3 = 40.0;
  v4 = -1.0;
  result.height = v3;
  result.width = v4;
  return result;
}

- (id)setupInContainerView:(id)a3
{
  v33[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = a3;
  v5 = [v3 array];
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
  v14 = [(_UIStatusBarRegion *)v6 layoutItem];
  v15 = [v14 topAnchor];
  v16 = [v4 topAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  [v5 addObject:v17];

  v18 = [(_UIStatusBarRegion *)v6 layoutItem];
  v19 = [v18 bottomAnchor];
  v20 = [v4 bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  [v5 addObject:v21];

  v22 = [(_UIStatusBarRegion *)v6 layoutItem];
  v23 = [v22 leadingAnchor];
  v24 = [v4 leadingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  [v5 addObject:v25];

  v26 = [(_UIStatusBarRegion *)v6 layoutItem];
  v27 = [v26 trailingAnchor];
  v28 = [v4 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];
  [v5 addObject:v29];

  v30 = [(_UIStatusBarRegion *)v6 layoutItem];
  [v4 _ui_addSubLayoutItem:v30];

  [MEMORY[0x1E69977A0] activateConstraints:v5];
  v33[0] = v6;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];

  return v31;
}

- (id)orderedDisplayItemPlacementsInRegionWithIdentifier:(id)a3
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

- (id)styleAttributesForStyle:(int64_t)a3
{
  v4 = [(_UIStatusBarVisualProvider_Fallback *)self statusBar];
  v5 = [_UIStatusBarStyleAttributes styleAttributesForStatusBar:v4 style:a3];

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