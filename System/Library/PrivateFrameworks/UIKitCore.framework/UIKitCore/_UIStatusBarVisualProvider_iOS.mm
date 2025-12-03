@interface _UIStatusBarVisualProvider_iOS
+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)orientation;
+ (Class)visualProviderSubclassForScreen:(id)screen visualProviderInfo:(id)info;
- (BOOL)hasCustomAnimationForDisplayItemWithIdentifier:(id)identifier removal:(BOOL)removal;
- (_UIStatusBar)statusBar;
- (_UIStatusBarAnimation)animationForAirplaneMode;
- (_UIStatusBarAnimation)animationForProminentLocation;
- (_UIStatusBarVisualProvider_iOS)init;
- (double)airplaneShouldFadeForAnimationType:(int64_t)type;
- (double)airplaneSpeedForAnimationType:(int64_t)type;
- (double)airplaneTravelOffsetInProposedPartWithIdentifier:(id *)identifier animationType:(int64_t)type;
- (id)additionAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation;
- (id)displayItemIdentifiersForPartWithIdentifier:(id)identifier;
- (id)removalAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation;
- (id)styleAttributesForStyle:(int64_t)style;
- (id)willUpdateWithData:(id)data;
- (void)_applyToAppearingRegions:(BOOL)regions block:(id)block;
- (void)_createExpandedPlacements;
- (void)actionable:(id)actionable highlighted:(BOOL)highlighted initialPress:(BOOL)press;
- (void)modeUpdatedFromMode:(int64_t)mode;
- (void)setExpanded:(BOOL)expanded;
- (void)updateDataForService:(id)service;
- (void)updateDataForSystemNavigation:(id)navigation;
@end

@implementation _UIStatusBarVisualProvider_iOS

+ (Class)visualProviderSubclassForScreen:(id)screen visualProviderInfo:(id)info
{
  screenCopy = screen;
  infoCopy = info;
  traitCollection = [screenCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (!userInterfaceIdiom || userInterfaceIdiom == 3 || userInterfaceIdiom == 1)
  {
    v9 = objc_opt_class();
    v10 = _UIStatusBarGetVisualProviderSubclassForScreenWithVisualProviderInfo(v9, screenCopy, infoCopy);
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

- (id)styleAttributesForStyle:(int64_t)style
{
  statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  v5 = [_UIStatusBarStyleAttributes styleAttributesForStatusBar:statusBar style:style];

  textColor = [v5 textColor];

  if (style == 1)
  {
    if (!textColor)
    {
      v7 = +[UIColor whiteColor];
      [v5 setTextColor:v7];
    }

    imageTintColor = [v5 imageTintColor];

    if (!imageTintColor)
    {
      v9 = +[UIColor whiteColor];
LABEL_10:
      v12 = v9;
      [v5 setImageTintColor:v9];
    }
  }

  else
  {
    if (!textColor)
    {
      v10 = +[UIColor blackColor];
      [v5 setTextColor:v10];
    }

    imageTintColor2 = [v5 imageTintColor];

    if (!imageTintColor2)
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
  imageTintColor3 = [v5 imageTintColor];
  v15 = [imageTintColor3 colorWithAlphaComponent:0.2];
  [v5 setImageDimmedTintColor:v15];

  [v5 setSymbolScale:1];

  return v5;
}

+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)orientation
{
  [self height];
  v4 = v3;
  v5 = -1.0;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)modeUpdatedFromMode:(int64_t)mode
{
  statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  mode = [statusBar mode];

  if (mode == 2)
  {
    [(_UIStatusBarVisualProvider_iOS *)self setExpanded:0];

    [(_UIStatusBarVisualProvider_iOS *)self setOnLockScreen:1];
  }

  else
  {
    if (mode == 1)
    {
      [(_UIStatusBarVisualProvider_iOS *)self setOnLockScreen:0];
      selfCopy2 = self;
      v7 = 1;
    }

    else
    {
      if (mode)
      {
        return;
      }

      [(_UIStatusBarVisualProvider_iOS *)self setOnLockScreen:0];
      selfCopy2 = self;
      v7 = 0;
    }

    [(_UIStatusBarVisualProvider_iOS *)selfCopy2 setExpanded:v7];
  }
}

- (void)actionable:(id)actionable highlighted:(BOOL)highlighted initialPress:(BOOL)press
{
  pressCopy = press;
  highlightedCopy = highlighted;
  v10[1] = *MEMORY[0x1E69E9840];
  layoutItem = [actionable layoutItem];
  _ui_view = [layoutItem _ui_view];

  if (_ui_view)
  {
    v10[0] = _ui_view;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [UIButton _setVisuallyHighlighted:highlightedCopy forViews:v9 initialPress:pressCopy];
  }
}

- (void)_createExpandedPlacements
{
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  if ([(_UIStatusBarVisualProvider_iOS *)self wantsPillInExpandedTrailingPlacements])
  {
    v5 = +[(_UIStatusBarPillBackgroundActivityItem *)_UIStatusBarExpandedPillBackgroundActivityItem];
    v6 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v5 priority:300];
    expandedPillPlacement = self->_expandedPillPlacement;
    self->_expandedPillPlacement = v6;

    [(NSArray *)array2 addObject:self->_expandedPillPlacement];
  }

  v8 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorLocationItem];
  v9 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v8 priority:450];
  [(NSArray *)array2 addObject:v9];

  if ([(_UIStatusBarVisualProvider_iOS *)self wantsExpandedLeadingPlacements])
  {
    array3 = [MEMORY[0x1E695DF70] array];
    v11 = objc_opt_class();
    v12 = [_UIStatusBarDisplayItemPlacementNetworkGroup groupWithHighPriority:1500 lowPriority:1200 cellularItemClass:v11 wifiItemClass:objc_opt_class() includeCellularName:1];
    expandedNetworkGroup = self->_expandedNetworkGroup;
    self->_expandedNetworkGroup = v12;

    cellularGroup = [(_UIStatusBarDisplayItemPlacementNetworkGroup *)self->_expandedNetworkGroup cellularGroup];
    placementsAffectedByAirplaneMode = [cellularGroup placementsAffectedByAirplaneMode];
    [(NSArray *)array3 addObjectsFromArray:placementsAffectedByAirplaneMode];

    v16 = objc_opt_class();
    v17 = [_UIStatusBarDisplayItemPlacementNetworkGroup secondaryGroupWithHighPriority:500 lowPriority:200 cellularItemClass:v16 wifiItemClass:objc_opt_class()];
    cellularGroup2 = [v17 cellularGroup];
    placementsAffectedByAirplaneMode2 = [cellularGroup2 placementsAffectedByAirplaneMode];
    [(NSArray *)array3 addObjectsFromArray:placementsAffectedByAirplaneMode2];

    v20 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorAirplaneModeItem];
    v21 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v20 priority:4000];
    v22 = [v21 excludingPlacements:array3];
    [(NSArray *)array addObject:v22];

    placements = [(_UIStatusBarDisplayItemPlacementGroup *)self->_expandedNetworkGroup placements];
    [(NSArray *)array addObjectsFromArray:placements];

    [(_UIStatusBarVisualProvider_iOS *)self regionSpacing];
    v25 = v24;
    [(_UIStatusBarVisualProvider_iOS *)self expandedItemSpacing];
    v27 = [_UIStatusBarDisplayItemPlacement spacerPlacementWithSize:[(_UIStatusBarDisplayItemPlacementGroup *)self->_expandedNetworkGroup minimumPriority]- 5 priority:v25 - (v26 + v26), 0.0];
    cellularGroup3 = [(_UIStatusBarDisplayItemPlacementNetworkGroup *)self->_expandedNetworkGroup cellularGroup];
    placements2 = [cellularGroup3 placements];
    v30 = [v27 requiringAnyPlacements:placements2];
    [(NSArray *)array addObject:v30];

    placements3 = [v17 placements];
    [(NSArray *)array addObjectsFromArray:placements3];

    wifiGroup = [v17 wifiGroup];
    secondaryWifiGroup = self->_secondaryWifiGroup;
    self->_secondaryWifiGroup = wifiGroup;

    expandedCellularPlacementsAffectedByAirplaneMode = self->_expandedCellularPlacementsAffectedByAirplaneMode;
    self->_expandedCellularPlacementsAffectedByAirplaneMode = array3;
  }

  else
  {
    v17 = [_UIStatusBarWifiItem groupWithPriority:500];
    v35 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorAirplaneModeItem];
    v36 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v35 priority:4000];
    [(NSArray *)array2 addObject:v36];

    placements4 = [v17 placements];
    [(NSArray *)array2 addObjectsFromArray:placements4];

    expandedCellularPlacementsAffectedByAirplaneMode = +[(_UIStatusBarItem *)_UIStatusBarIndicatorVPNItem];
    v38 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:expandedCellularPlacementsAffectedByAirplaneMode priority:54];
    [(NSArray *)array2 addObject:v38];
  }

  [(_UIStatusBarVisualProvider_iOS *)self bluetoothPaddingInset];
  v47 = [(_UIStatusBarDisplayItemPlacementIndicatorsGroup *)_UIStatusBarDisplayItemPlacementExpandedIndicatorsGroup groupWithHighPriority:400 lowPriority:100 bluetoothPaddingInset:?];
  v39 = +[_UIStatusBarDisplayItemPlacementBatteryGroup groupWithHighPriority:lowPriority:](_UIStatusBarDisplayItemPlacementBatteryGroup, "groupWithHighPriority:lowPriority:", [v47 maximumPriority] + 1, objc_msgSend(v47, "minimumPriority") - 5);
  placements5 = [v47 placements];
  [(NSArray *)array2 addObjectsFromArray:placements5];

  v41 = +[(_UIStatusBarItem *)_UIStatusBarBuildVersionItem];
  v42 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v41 priority:1];
  [(NSArray *)array2 addObject:v42];

  placements6 = [v39 placements];
  [(NSArray *)array2 addObjectsFromArray:placements6];

  expandedLeadingPlacements = self->_expandedLeadingPlacements;
  self->_expandedLeadingPlacements = array;
  v45 = array;

  expandedTrailingPlacements = self->_expandedTrailingPlacements;
  self->_expandedTrailingPlacements = array2;
}

- (id)willUpdateWithData:(id)data
{
  dataCopy = data;
  [(_UIStatusBarVisualProvider_iOS *)self updateDataForService:dataCopy];
  [(_UIStatusBarVisualProvider_iOS *)self updateDataForSystemNavigation:dataCopy];

  return MEMORY[0x1E695E0F0];
}

- (void)updateDataForService:(id)service
{
  secondaryCellularEntry = [service secondaryCellularEntry];
  if (secondaryCellularEntry)
  {
    v5 = secondaryCellularEntry;
    -[_UIStatusBarDisplayItemPlacementGroup setEnabled:](self->_secondaryWifiGroup, "setEnabled:", [secondaryCellularEntry type] != 0);
    secondaryCellularEntry = v5;
  }
}

- (id)displayItemIdentifiersForPartWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqual:@"batteryPartIdentifier"])
  {
    v4 = MEMORY[0x1E695DFD8];
    v5 = +[_UIStatusBarBatteryItem staticIconDisplayIdentifier];
LABEL_7:
    v6 = v5;
    v7 = [v4 setWithObject:v5];
LABEL_8:

    goto LABEL_9;
  }

  if ([identifierCopy isEqual:@"backNavigationPartIdentifier"])
  {
    v4 = MEMORY[0x1E695DFD8];
    v5 = +[(_UIStatusBarItem *)_UIStatusBarNavigationItem];
    goto LABEL_7;
  }

  if ([identifierCopy isEqual:@"clockPartIdentifier"])
  {
    v4 = MEMORY[0x1E695DFD8];
    v5 = +[_UIStatusBarTimeItem shortTimeDisplayIdentifier];
    goto LABEL_7;
  }

  if ([identifierCopy isEqual:@"dateAndTimePartIdentifier"])
  {
    v9 = MEMORY[0x1E695DFD8];
    v6 = +[_UIStatusBarTimeItem shortTimeDisplayIdentifier];
    v10 = +[_UIStatusBarTimeItem timeDisplayIdentifier];
    v11 = +[_UIStatusBarTimeItem dateDisplayIdentifier];
    v7 = [v9 setWithObjects:{v6, v10, v11, 0}];

LABEL_16:
    goto LABEL_8;
  }

  v12 = [identifierCopy isEqual:@"lockPartIdentifier"];
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

- (void)setExpanded:(BOOL)expanded
{
  if (self->_expanded != expanded)
  {
    self->_expanded = expanded;
    [(_UIStatusBarVisualProvider_iOS *)self _applyToAppearingRegions:0 block:&__block_literal_global_527];
    [(_UIStatusBarVisualProvider_iOS *)self _applyToAppearingRegions:1 block:&__block_literal_global_33_7];
    statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    [statusBar updateWithAnimations:MEMORY[0x1E695E0F0]];
  }
}

- (void)_applyToAppearingRegions:(BOOL)regions block:(id)block
{
  regionsCopy = regions;
  v23 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  expanded = [(_UIStatusBarVisualProvider_iOS *)self expanded];
  v8 = &_UIStatusBarPartIdentifierNormal;
  if (expanded == regionsCopy)
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
        statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
        regions = [statusBar regions];
        v17 = [regions objectForKeyedSubscript:v14];
        blockCopy[2](blockCopy, v17);

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }
}

- (BOOL)hasCustomAnimationForDisplayItemWithIdentifier:(id)identifier removal:(BOOL)removal
{
  removalCopy = removal;
  identifierCopy = identifier;
  v7 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorAirplaneModeItem];
  v8 = v7;
  isEnabled = v7 == identifierCopy || removalCopy;
  if (removalCopy && v7 != identifierCopy)
  {
    v10 = +[_UIStatusBarIndicatorLocationItem prominentDisplayIdentifier];
    if (v10 == identifierCopy)
    {
      statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
      currentAggregatedData = [statusBar currentAggregatedData];
      locationEntry = [currentAggregatedData locationEntry];
      isEnabled = [locationEntry isEnabled];
    }

    else
    {
      isEnabled = 0;
    }
  }

  return isEnabled;
}

- (id)additionAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation
{
  identifierCopy = identifier;
  animationCopy = animation;
  v8 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorAirplaneModeItem];

  if (v8 == identifierCopy)
  {
    animationForAirplaneMode = [(_UIStatusBarVisualProvider_iOS *)self animationForAirplaneMode];
  }

  else if (animationCopy)
  {
    animationForAirplaneMode = animationCopy;
  }

  else
  {
    animationForAirplaneMode = [(_UIStatusBarVisualProvider_iOS *)self defaultAnimationForDisplayItemWithIdentifier:identifierCopy];
  }

  v10 = animationForAirplaneMode;

  return v10;
}

- (id)removalAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation
{
  identifierCopy = identifier;
  animationCopy = animation;
  v8 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorAirplaneModeItem];

  if (v8 == identifierCopy)
  {
    animationForAirplaneMode = [(_UIStatusBarVisualProvider_iOS *)self animationForAirplaneMode];
    goto LABEL_10;
  }

  v9 = +[_UIStatusBarIndicatorLocationItem prominentDisplayIdentifier];
  v10 = v9;
  if (v9 == identifierCopy)
  {
    statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
    currentAggregatedData = [statusBar currentAggregatedData];
    locationEntry = [currentAggregatedData locationEntry];
    isEnabled = [locationEntry isEnabled];

    if (isEnabled)
    {
      animationForAirplaneMode = [(_UIStatusBarVisualProvider_iOS *)self animationForProminentLocation];
      goto LABEL_10;
    }
  }

  else
  {
  }

  if (animationCopy)
  {
    animationForAirplaneMode = animationCopy;
  }

  else
  {
    animationForAirplaneMode = [(_UIStatusBarVisualProvider_iOS *)self defaultAnimationForDisplayItemWithIdentifier:identifierCopy];
  }

LABEL_10:
  v16 = animationForAirplaneMode;

  return v16;
}

- (void)updateDataForSystemNavigation:(id)navigation
{
  navigationCopy = navigation;
}

- (double)airplaneTravelOffsetInProposedPartWithIdentifier:(id *)identifier animationType:(int64_t)type
{
  result = 0.0;
  if (type == 2)
  {
    v6 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorAirplaneModeItem];
    *identifier = [v6 stringRepresentation];

    return 100.0;
  }

  return result;
}

- (double)airplaneSpeedForAnimationType:(int64_t)type
{
  result = 40.0;
  if (type == 2)
  {
    return 160.0;
  }

  return result;
}

- (double)airplaneShouldFadeForAnimationType:(int64_t)type
{
  result = 0.0;
  if (type == 2)
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
  statusBar = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
  styleAttributes = [statusBar styleAttributes];
  v5 = [styleAttributes effectiveLayoutDirection] == 1;

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
  potentialPlacementRegionIdentifiers = [v9 potentialPlacementRegionIdentifiers];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = potentialPlacementRegionIdentifiers;
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
        regions = [v14 regions];
        v16 = [regions objectForKeyedSubscript:v13];

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
        statusBar2 = [(_UIStatusBarVisualProvider_iOS *)self statusBar];
        v48 = v13;
        v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
        v21 = [statusBar2 displayItemIdentifiersInRegionsWithIdentifiers:v20];
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