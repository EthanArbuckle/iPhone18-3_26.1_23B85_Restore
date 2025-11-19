@interface _UIStatusBarVisualProvider_iOS
+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)a3;
+ (Class)visualProviderSubclassForScreen:(id)a3 visualProviderInfo:(id)a4;
- (BOOL)hasCustomAnimationForDisplayItemWithIdentifier:(id)a3 removal:(BOOL)a4;
- (_UIStatusBar)statusBar;
- (_UIStatusBarAnimation)animationForAirplaneMode;
- (_UIStatusBarAnimation)animationForProminentLocation;
- (_UIStatusBarVisualProvider_iOS)init;
- (double)airplaneShouldFadeForAnimationType:(int64_t)a3;
- (double)airplaneSpeedForAnimationType:(int64_t)a3;
- (double)airplaneTravelOffsetInProposedPartWithIdentifier:(id *)a3 animationType:(int64_t)a4;
- (id)additionAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4;
- (id)displayItemIdentifiersForPartWithIdentifier:(id)a3;
- (id)removalAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4;
- (id)styleAttributesForStyle:(int64_t)a3;
- (id)willUpdateWithData:(id)a3;
- (void)_applyToAppearingRegions:(BOOL)a3 block:(id)a4;
- (void)_createExpandedPlacements;
- (void)actionable:(id)a3 highlighted:(BOOL)a4 initialPress:(BOOL)a5;
- (void)modeUpdatedFromMode:(int64_t)a3;
- (void)setExpanded:(BOOL)a3;
- (void)updateDataForService:(id)a3;
- (void)updateDataForSystemNavigation:(id)a3;
@end

@implementation _UIStatusBarVisualProvider_iOS

+ (Class)visualProviderSubclassForScreen:(id)a3 visualProviderInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 traitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (!v8 || v8 == 3 || v8 == 1)
  {
    v9 = objc_opt_class();
    v10 = _UIStatusBarGetVisualProviderSubclassForScreenWithVisualProviderInfo(v9, v5, v6);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (_UIStatusBarVisualProvider_iOS)init
{
  v4.receiver = self;
  v4.super_class = _UIStatusBarVisualProvider_iOS;
  v2 = [(_UIStatusBarVisualProvider_iOS *)&v4 init];
  [(_UIStatusBarVisualProvider_iOS *)v2 _createExpandedPlacements];
  return v2;
}

- (id)styleAttributesForStyle:(int64_t)a3
{
  v4 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  v5 = [_UIStatusBarStyleAttributes styleAttributesForStatusBar:v4 style:a3];

  v6 = [v5 textColor];

  if (a3 == 1)
  {
    if (!v6)
    {
      v7 = +[UIColor whiteColor];
      [v5 setTextColor:v7];
    }

    v8 = [v5 imageTintColor];

    if (!v8)
    {
      v9 = +[UIColor whiteColor];
LABEL_10:
      v12 = v9;
      [v5 setImageTintColor:v9];
    }
  }

  else
  {
    if (!v6)
    {
      v10 = +[UIColor blackColor];
      [v5 setTextColor:v10];
    }

    v11 = [v5 imageTintColor];

    if (!v11)
    {
      v9 = +[UIColor blackColor];
      goto LABEL_10;
    }
  }

  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v13 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar >= 1)
  {
    v17 = _UIInternalPreference_StatusBarRedInSpringBoard;
    if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_StatusBarRedInSpringBoard)
    {
      while (v13 >= v17)
      {
        _UIInternalPreferenceSync(v13, &_UIInternalPreference_StatusBarRedInSpringBoard, @"StatusBarRedInSpringBoard", _UIInternalPreferenceUpdateBool);
        v17 = _UIInternalPreference_StatusBarRedInSpringBoard;
        if (v13 == _UIInternalPreference_StatusBarRedInSpringBoard)
        {
          goto LABEL_14;
        }
      }

      if (byte_1EA95E6CC && [UIApp _isSpringBoard])
      {
        v18 = +[UIColor redColor];
        [v5 setTextColor:v18];

        v19 = +[UIColor redColor];
        [v5 setImageTintColor:v19];
      }
    }
  }

LABEL_14:
  v14 = [v5 imageTintColor];
  v15 = [v14 colorWithAlphaComponent:0.2];
  [v5 setImageDimmedTintColor:v15];

  [v5 setSymbolScale:1];

  return v5;
}

+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)a3
{
  [a1 height];
  v4 = v3;
  v5 = -1.0;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)modeUpdatedFromMode:(int64_t)a3
{
  v4 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  v5 = [v4 mode];

  if (v5 == 2)
  {
    [(_UIStatusBarVisualProvider_iOS *)self setExpanded:0];

    [(_UIStatusBarVisualProvider_iOS *)self setOnLockScreen:1];
  }

  else
  {
    if (v5 == 1)
    {
      [(_UIStatusBarVisualProvider_iOS *)self setOnLockScreen:0];
      v6 = self;
      v7 = 1;
    }

    else
    {
      if (v5)
      {
        return;
      }

      [(_UIStatusBarVisualProvider_iOS *)self setOnLockScreen:0];
      v6 = self;
      v7 = 0;
    }

    [(_UIStatusBarVisualProvider_iOS *)v6 setExpanded:v7];
  }
}

- (void)actionable:(id)a3 highlighted:(BOOL)a4 initialPress:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v10[1] = *MEMORY[0x1E69E9840];
  v7 = [a3 layoutItem];
  v8 = [v7 _ui_view];

  if (v8)
  {
    v10[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [UIButton _setVisuallyHighlighted:v6 forViews:v9 initialPress:v5];
  }
}

- (void)_createExpandedPlacements
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E695DF70] array];
  if ([(_UIStatusBarVisualProvider_iOS *)self wantsPillInExpandedTrailingPlacements])
  {
    v5 = +[(_UIStatusBarPillBackgroundActivityItem *)_UIStatusBarExpandedPillBackgroundActivityItem];
    v6 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v5 priority:300];
    expandedPillPlacement = self->_expandedPillPlacement;
    self->_expandedPillPlacement = v6;

    [(NSArray *)v4 addObject:self->_expandedPillPlacement];
  }

  v8 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorLocationItem];
  v9 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v8 priority:450];
  [(NSArray *)v4 addObject:v9];

  if ([(_UIStatusBarVisualProvider_iOS *)self wantsExpandedLeadingPlacements])
  {
    v10 = [MEMORY[0x1E695DF70] array];
    v11 = objc_opt_class();
    v12 = [_UIStatusBarDisplayItemPlacementNetworkGroup groupWithHighPriority:1500 lowPriority:1200 cellularItemClass:v11 wifiItemClass:objc_opt_class() includeCellularName:1];
    expandedNetworkGroup = self->_expandedNetworkGroup;
    self->_expandedNetworkGroup = v12;

    v14 = [(_UIStatusBarDisplayItemPlacementNetworkGroup *)self->_expandedNetworkGroup cellularGroup];
    v15 = [v14 placementsAffectedByAirplaneMode];
    [(NSArray *)v10 addObjectsFromArray:v15];

    v16 = objc_opt_class();
    v17 = [_UIStatusBarDisplayItemPlacementNetworkGroup secondaryGroupWithHighPriority:500 lowPriority:200 cellularItemClass:v16 wifiItemClass:objc_opt_class()];
    v18 = [v17 cellularGroup];
    v19 = [v18 placementsAffectedByAirplaneMode];
    [(NSArray *)v10 addObjectsFromArray:v19];

    v20 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorAirplaneModeItem];
    v21 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v20 priority:4000];
    v22 = [v21 excludingPlacements:v10];
    [(NSArray *)v3 addObject:v22];

    v23 = [(_UIStatusBarDisplayItemPlacementGroup *)self->_expandedNetworkGroup placements];
    [(NSArray *)v3 addObjectsFromArray:v23];

    [(_UIStatusBarVisualProvider_iOS *)self regionSpacing];
    v25 = v24;
    [(_UIStatusBarVisualProvider_iOS *)self expandedItemSpacing];
    v27 = [_UIStatusBarDisplayItemPlacement spacerPlacementWithSize:[(_UIStatusBarDisplayItemPlacementGroup *)self->_expandedNetworkGroup minimumPriority]- 5 priority:v25 - (v26 + v26), 0.0];
    v28 = [(_UIStatusBarDisplayItemPlacementNetworkGroup *)self->_expandedNetworkGroup cellularGroup];
    v29 = [v28 placements];
    v30 = [v27 requiringAnyPlacements:v29];
    [(NSArray *)v3 addObject:v30];

    v31 = [v17 placements];
    [(NSArray *)v3 addObjectsFromArray:v31];

    v32 = [v17 wifiGroup];
    secondaryWifiGroup = self->_secondaryWifiGroup;
    self->_secondaryWifiGroup = v32;

    expandedCellularPlacementsAffectedByAirplaneMode = self->_expandedCellularPlacementsAffectedByAirplaneMode;
    self->_expandedCellularPlacementsAffectedByAirplaneMode = v10;
  }

  else
  {
    v17 = [_UIStatusBarWifiItem groupWithPriority:500];
    v35 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorAirplaneModeItem];
    v36 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v35 priority:4000];
    [(NSArray *)v4 addObject:v36];

    v37 = [v17 placements];
    [(NSArray *)v4 addObjectsFromArray:v37];

    expandedCellularPlacementsAffectedByAirplaneMode = +[(_UIStatusBarItem *)_UIStatusBarIndicatorVPNItem];
    v38 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:expandedCellularPlacementsAffectedByAirplaneMode priority:54];
    [(NSArray *)v4 addObject:v38];
  }

  [(_UIStatusBarVisualProvider_iOS *)self bluetoothPaddingInset];
  v47 = [(_UIStatusBarDisplayItemPlacementIndicatorsGroup *)_UIStatusBarDisplayItemPlacementExpandedIndicatorsGroup groupWithHighPriority:400 lowPriority:100 bluetoothPaddingInset:?];
  v39 = +[_UIStatusBarDisplayItemPlacementBatteryGroup groupWithHighPriority:lowPriority:](_UIStatusBarDisplayItemPlacementBatteryGroup, "groupWithHighPriority:lowPriority:", [v47 maximumPriority] + 1, objc_msgSend(v47, "minimumPriority") - 5);
  v40 = [v47 placements];
  [(NSArray *)v4 addObjectsFromArray:v40];

  v41 = +[(_UIStatusBarItem *)_UIStatusBarBuildVersionItem];
  v42 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v41 priority:1];
  [(NSArray *)v4 addObject:v42];

  v43 = [v39 placements];
  [(NSArray *)v4 addObjectsFromArray:v43];

  expandedLeadingPlacements = self->_expandedLeadingPlacements;
  self->_expandedLeadingPlacements = v3;
  v45 = v3;

  expandedTrailingPlacements = self->_expandedTrailingPlacements;
  self->_expandedTrailingPlacements = v4;
}

- (id)willUpdateWithData:(id)a3
{
  v4 = a3;
  [(_UIStatusBarVisualProvider_iOS *)self updateDataForService:v4];
  [(_UIStatusBarVisualProvider_iOS *)self updateDataForSystemNavigation:v4];

  return MEMORY[0x1E695E0F0];
}

- (void)updateDataForService:(id)a3
{
  v4 = [a3 secondaryCellularEntry];
  if (v4)
  {
    v5 = v4;
    -[_UIStatusBarDisplayItemPlacementGroup setEnabled:](self->_secondaryWifiGroup, "setEnabled:", [v4 type] != 0);
    v4 = v5;
  }
}

- (id)displayItemIdentifiersForPartWithIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqual:@"batteryPartIdentifier"])
  {
    v4 = MEMORY[0x1E695DFD8];
    v5 = +[_UIStatusBarBatteryItem staticIconDisplayIdentifier];
LABEL_7:
    v6 = v5;
    v7 = [v4 setWithObject:v5];
LABEL_8:

    goto LABEL_9;
  }

  if ([v3 isEqual:@"backNavigationPartIdentifier"])
  {
    v4 = MEMORY[0x1E695DFD8];
    v5 = +[(_UIStatusBarItem *)_UIStatusBarNavigationItem];
    goto LABEL_7;
  }

  if ([v3 isEqual:@"clockPartIdentifier"])
  {
    v4 = MEMORY[0x1E695DFD8];
    v5 = +[_UIStatusBarTimeItem shortTimeDisplayIdentifier];
    goto LABEL_7;
  }

  if ([v3 isEqual:@"dateAndTimePartIdentifier"])
  {
    v9 = MEMORY[0x1E695DFD8];
    v6 = +[_UIStatusBarTimeItem shortTimeDisplayIdentifier];
    v10 = +[_UIStatusBarTimeItem timeDisplayIdentifier];
    v11 = +[_UIStatusBarTimeItem dateDisplayIdentifier];
    v7 = [v9 setWithObjects:{v6, v10, v11, 0}];

LABEL_16:
    goto LABEL_8;
  }

  v12 = [v3 isEqual:@"lockPartIdentifier"];
  v13 = MEMORY[0x1E695DFD8];
  if (v12)
  {
    v6 = +[(_UIStatusBarItem *)_UIStatusBarLockItem];
    v10 = +[_UIStatusBarLockItem textDisplayIdentifier];
    v7 = [v13 setWithObjects:{v6, v10, 0}];
    goto LABEL_16;
  }

  v7 = [MEMORY[0x1E695DFD8] set];
LABEL_9:

  return v7;
}

- (void)setExpanded:(BOOL)a3
{
  if (self->_expanded != a3)
  {
    self->_expanded = a3;
    [(_UIStatusBarVisualProvider_iOS *)self _applyToAppearingRegions:0 block:&__block_literal_global_527];
    [(_UIStatusBarVisualProvider_iOS *)self _applyToAppearingRegions:1 block:&__block_literal_global_33_7];
    v5 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    [v5 updateWithAnimations:MEMORY[0x1E695E0F0]];
  }
}

- (void)_applyToAppearingRegions:(BOOL)a3 block:(id)a4
{
  v4 = a3;
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(_UIStatusBarVisualProvider_iOS *)self expanded];
  v8 = &_UIStatusBarPartIdentifierNormal;
  if (v7 == v4)
  {
    v8 = &_UIStatusBarPartIdentifierExpanded;
  }

  [(_UIStatusBarVisualProvider_iOS *)self regionIdentifiersForPartWithIdentifier:*v8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v21 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        v15 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
        v16 = [v15 regions];
        v17 = [v16 objectForKeyedSubscript:v14];
        v6[2](v6, v17);

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }
}

- (BOOL)hasCustomAnimationForDisplayItemWithIdentifier:(id)a3 removal:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorAirplaneModeItem];
  v8 = v7;
  v9 = v7 == v6 || v4;
  if (v4 && v7 != v6)
  {
    v10 = +[_UIStatusBarIndicatorLocationItem prominentDisplayIdentifier];
    if (v10 == v6)
    {
      v11 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
      v12 = [v11 currentAggregatedData];
      v13 = [v12 locationEntry];
      v9 = [v13 isEnabled];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)additionAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorAirplaneModeItem];

  if (v8 == v6)
  {
    v9 = [(_UIStatusBarVisualProvider_iOS *)self animationForAirplaneMode];
  }

  else if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [(_UIStatusBarVisualProvider_iOS *)self defaultAnimationForDisplayItemWithIdentifier:v6];
  }

  v10 = v9;

  return v10;
}

- (id)removalAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorAirplaneModeItem];

  if (v8 == v6)
  {
    v11 = [(_UIStatusBarVisualProvider_iOS *)self animationForAirplaneMode];
    goto LABEL_10;
  }

  v9 = +[_UIStatusBarIndicatorLocationItem prominentDisplayIdentifier];
  v10 = v9;
  if (v9 == v6)
  {
    v12 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    v13 = [v12 currentAggregatedData];
    v14 = [v13 locationEntry];
    v15 = [v14 isEnabled];

    if (v15)
    {
      v11 = [(_UIStatusBarVisualProvider_iOS *)self animationForProminentLocation];
      goto LABEL_10;
    }
  }

  else
  {
  }

  if (v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = [(_UIStatusBarVisualProvider_iOS *)self defaultAnimationForDisplayItemWithIdentifier:v6];
  }

LABEL_10:
  v16 = v11;

  return v16;
}

- (void)updateDataForSystemNavigation:(id)a3
{
  v3 = a3;
}

- (double)airplaneTravelOffsetInProposedPartWithIdentifier:(id *)a3 animationType:(int64_t)a4
{
  result = 0.0;
  if (a4 == 2)
  {
    v6 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorAirplaneModeItem];
    *a3 = [v6 stringRepresentation];

    return 100.0;
  }

  return result;
}

- (double)airplaneSpeedForAnimationType:(int64_t)a3
{
  result = 40.0;
  if (a3 == 2)
  {
    return 160.0;
  }

  return result;
}

- (double)airplaneShouldFadeForAnimationType:(int64_t)a3
{
  result = 0.0;
  if (a3 == 2)
  {
    return 1.0;
  }

  return result;
}

- (_UIStatusBarAnimation)animationForAirplaneMode
{
  v50 = *MEMORY[0x1E69E9840];
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v47[3] = 0;
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v46[3] = 0;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3032000000;
  v44[3] = __Block_byref_object_copy__182;
  v44[4] = __Block_byref_object_dispose__182;
  v45 = 0;
  v3 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  v4 = [v3 styleAttributes];
  v5 = [v4 effectiveLayoutDirection] == 1;

  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __58___UIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke;
  v42[3] = &unk_1E7120FC8;
  v42[4] = self;
  v42[5] = v44;
  v43 = v5;
  v42[6] = v46;
  v42[7] = v47;
  v6 = [_UIStatusBarAnimation animationWithBlock:v42];
  [v6 setPriority:100];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __58___UIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_3;
  v41[3] = &unk_1E711CD00;
  v41[4] = v46;
  [v6 setPrepareBlock:v41];
  v26 = [MEMORY[0x1E695DFA8] set];
  WeakRetained = objc_loadWeakRetained(&self->_statusBar);
  v8 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorAirplaneModeItem];
  v9 = [WeakRetained stateForDisplayItemWithIdentifier:v8];
  v10 = [v9 potentialPlacementRegionIdentifiers];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (v11)
  {
    v25 = *v38;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v38 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v37 + 1) + 8 * i);
        v14 = objc_loadWeakRetained(&self->_statusBar);
        v15 = [v14 regions];
        v16 = [v15 objectForKeyedSubscript:v13];

        v35[0] = 0;
        v35[1] = v35;
        v35[2] = 0x3032000000;
        v35[3] = __Block_byref_object_copy__182;
        v35[4] = __Block_byref_object_dispose__182;
        v36 = 0;
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __58___UIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_4;
        v34[3] = &unk_1E7121018;
        v34[6] = v46;
        v34[7] = v47;
        v34[8] = v35;
        v34[4] = self;
        v34[5] = v44;
        v17 = [_UIStatusBarAnimation animationWithBlock:v34];
        [v17 setPriority:100];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __58___UIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_15;
        v31[3] = &unk_1E7121040;
        v33 = v35;
        v18 = v16;
        v32 = v18;
        [v17 setPrepareBlock:v31];
        v19 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
        v48 = v13;
        v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
        v21 = [v19 displayItemIdentifiersInRegionsWithIdentifiers:v20];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __58___UIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_16;
        v27[3] = &unk_1E7121068;
        v28 = v26;
        v29 = v6;
        v22 = v17;
        v30 = v22;
        [v21 enumerateObjectsUsingBlock:v27];

        _Block_object_dispose(v35, 8);
      }

      v11 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
    }

    while (v11);
  }

  [v6 setDelaysDependentItems:1];
  _Block_object_dispose(v44, 8);

  _Block_object_dispose(v46, 8);
  _Block_object_dispose(v47, 8);

  return v6;
}

- (_UIStatusBarAnimation)animationForProminentLocation
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3010000000;
  v8[3] = "";
  v9 = *MEMORY[0x1E695EFF8];
  v2 = [_UIStatusBarAnimation animationWithBlock:&__block_literal_global_45_4];
  [v2 setPriority:100];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63___UIStatusBarVisualProvider_iOS_animationForProminentLocation__block_invoke_3;
  v7[3] = &unk_1E7120F58;
  v7[4] = v8;
  v3 = [_UIStatusBarAnimation animationWithBlock:v7];
  [v3 setPriority:100];
  v4 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorLocationItem];
  [v2 addSubAnimation:v3 forDisplayItemWithIdentifier:v4];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63___UIStatusBarVisualProvider_iOS_animationForProminentLocation__block_invoke_5;
  v6[3] = &unk_1E711CD00;
  v6[4] = v8;
  [v2 setPrepareBlock:v6];
  [v2 setDelaysAnimatingItems:1];

  _Block_object_dispose(v8, 8);

  return v2;
}

- (_UIStatusBar)statusBar
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBar);

  return WeakRetained;
}

@end