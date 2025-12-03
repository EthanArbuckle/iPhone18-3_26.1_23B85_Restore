@interface STUIStatusBarVisualProvider_iOS
+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)orientation;
+ (Class)visualProviderSubclassForScreen:(id)screen visualProviderInfo:(id)info;
- (BOOL)hasCustomAnimationForDisplayItemWithIdentifier:(id)identifier removal:(BOOL)removal;
- (STUIStatusBar)statusBar;
- (STUIStatusBarAnimation)animationForAirplaneMode;
- (STUIStatusBarAnimation)animationForProminentLocation;
- (STUIStatusBarVisualProvider_iOS)init;
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
- (void)backgroundLumaGroup:(id)group didTransitionToLevel:(unint64_t)level viewsWithDifferentLevels:(id)levels;
- (void)modeUpdatedFromMode:(int64_t)mode;
- (void)setExpanded:(BOOL)expanded;
- (void)updateDataForService:(id)service;
- (void)updateDataForSystemNavigation:(id)navigation;
- (void)updateLumaTracking:(BOOL)tracking;
@end

@implementation STUIStatusBarVisualProvider_iOS

- (STUIStatusBar)statusBar
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBar);

  return WeakRetained;
}

- (STUIStatusBarVisualProvider_iOS)init
{
  v4.receiver = self;
  v4.super_class = STUIStatusBarVisualProvider_iOS;
  v2 = [(STUIStatusBarVisualProvider_iOS *)&v4 init];
  [(STUIStatusBarVisualProvider_iOS *)v2 _createExpandedPlacements];
  return v2;
}

- (void)_createExpandedPlacements
{
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  if ([(STUIStatusBarVisualProvider_iOS *)self wantsPillInExpandedTrailingPlacements])
  {
    v5 = +[(STUIStatusBarPillBackgroundActivityItem *)STUIStatusBarExpandedPillBackgroundActivityItem];
    v6 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v5 priority:300];
    expandedPillPlacement = self->_expandedPillPlacement;
    self->_expandedPillPlacement = v6;

    [(NSArray *)array2 addObject:self->_expandedPillPlacement];
  }

  v8 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorLocationItem];
  v9 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v8 priority:450];
  [(NSArray *)array2 addObject:v9];

  if ([(STUIStatusBarVisualProvider_iOS *)self wantsExpandedLeadingPlacements])
  {
    array3 = [MEMORY[0x277CBEB18] array];
    v11 = objc_opt_class();
    v12 = [STUIStatusBarDisplayItemPlacementNetworkGroup groupWithHighPriority:1500 lowPriority:1200 cellularItemClass:v11 wifiItemClass:objc_opt_class() includeCellularName:1];
    expandedNetworkGroup = self->_expandedNetworkGroup;
    self->_expandedNetworkGroup = v12;

    cellularGroup = [(STUIStatusBarDisplayItemPlacementNetworkGroup *)self->_expandedNetworkGroup cellularGroup];
    placementsAffectedByAirplaneMode = [cellularGroup placementsAffectedByAirplaneMode];
    [(NSArray *)array3 addObjectsFromArray:placementsAffectedByAirplaneMode];

    v16 = objc_opt_class();
    v17 = [STUIStatusBarDisplayItemPlacementNetworkGroup secondaryGroupWithHighPriority:500 lowPriority:200 cellularItemClass:v16 wifiItemClass:objc_opt_class()];
    cellularGroup2 = [(STUIStatusBarDisplayItemPlacementNetworkGroup *)self->_expandedNetworkGroup cellularGroup];
    sosPlacement = [cellularGroup2 sosPlacement];
    [(NSArray *)array addObject:sosPlacement];

    cellularGroup3 = [v17 cellularGroup];
    placementsAffectedByAirplaneMode2 = [cellularGroup3 placementsAffectedByAirplaneMode];
    [(NSArray *)array3 addObjectsFromArray:placementsAffectedByAirplaneMode2];

    v22 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAirplaneModeItem];
    v23 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v22 priority:4000];
    v24 = [v23 excludingPlacements:array3];
    [(NSArray *)array addObject:v24];

    placements = [(STUIStatusBarDisplayItemPlacementGroup *)self->_expandedNetworkGroup placements];
    [(NSArray *)array addObjectsFromArray:placements];

    [(STUIStatusBarVisualProvider_iOS *)self regionSpacing];
    v27 = v26;
    [(STUIStatusBarVisualProvider_iOS *)self expandedItemSpacing];
    v29 = [STUIStatusBarDisplayItemPlacement spacerPlacementWithSize:[(STUIStatusBarDisplayItemPlacementGroup *)self->_expandedNetworkGroup minimumPriority]- 5 priority:v27 + v28 * -2.0, 0.0];
    cellularGroup4 = [(STUIStatusBarDisplayItemPlacementNetworkGroup *)self->_expandedNetworkGroup cellularGroup];
    placements2 = [cellularGroup4 placements];
    v32 = [v29 requiringAnyPlacements:placements2];
    [(NSArray *)array addObject:v32];

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
    v17 = [STUIStatusBarWifiItem groupWithPriority:500];
    v37 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAirplaneModeItem];
    v38 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v37 priority:4000];
    [(NSArray *)array2 addObject:v38];

    placements4 = [v17 placements];
    [(NSArray *)array2 addObjectsFromArray:placements4];

    expandedCellularPlacementsAffectedByAirplaneMode = +[(STUIStatusBarItem *)STUIStatusBarVPNItem];
    v40 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:expandedCellularPlacementsAffectedByAirplaneMode priority:54];
    [(NSArray *)array2 addObject:v40];
  }

  [(STUIStatusBarVisualProvider_iOS *)self bluetoothPaddingInset];
  v49 = [(STUIStatusBarDisplayItemPlacementIndicatorsGroup *)STUIStatusBarDisplayItemPlacementExpandedIndicatorsGroup groupWithHighPriority:400 lowPriority:100 bluetoothPaddingInset:?];
  v41 = +[STUIStatusBarDisplayItemPlacementBatteryGroup groupWithHighPriority:lowPriority:](STUIStatusBarDisplayItemPlacementBatteryGroup, "groupWithHighPriority:lowPriority:", [v49 maximumPriority] + 1, objc_msgSend(v49, "minimumPriority") - 5);
  placements5 = [v49 placements];
  [(NSArray *)array2 addObjectsFromArray:placements5];

  v43 = +[(STUIStatusBarItem *)STUIStatusBarBuildVersionItem];
  v44 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v43 priority:1];
  [(NSArray *)array2 addObject:v44];

  placements6 = [v41 placements];
  [(NSArray *)array2 addObjectsFromArray:placements6];

  expandedLeadingPlacements = self->_expandedLeadingPlacements;
  self->_expandedLeadingPlacements = array;
  v47 = array;

  expandedTrailingPlacements = self->_expandedTrailingPlacements;
  self->_expandedTrailingPlacements = array2;
}

+ (Class)visualProviderSubclassForScreen:(id)screen visualProviderInfo:(id)info
{
  screenCopy = screen;
  infoCopy = info;
  traitCollection = [screenCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (!userInterfaceIdiom || userInterfaceIdiom == 3 || userInterfaceIdiom == 1)
  {
    v9 = objc_opt_class();
    v10 = STUIStatusBarGetVisualProviderSubclassForScreenWithVisualProviderInfo(v9, screenCopy, infoCopy);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)styleAttributesForStyle:(int64_t)style
{
  statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  v5 = [STUIStatusBarStyleAttributes styleAttributesForStatusBar:statusBar style:style];

  textColor = [v5 textColor];

  if (style == 1)
  {
    if (!textColor)
    {
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      [v5 setTextColor:whiteColor];
    }

    imageTintColor = [v5 imageTintColor];

    if (!imageTintColor)
    {
      whiteColor2 = [MEMORY[0x277D75348] whiteColor];
LABEL_10:
      v12 = whiteColor2;
      [v5 setImageTintColor:whiteColor2];
    }
  }

  else
  {
    if (!textColor)
    {
      blackColor = [MEMORY[0x277D75348] blackColor];
      [v5 setTextColor:blackColor];
    }

    imageTintColor2 = [v5 imageTintColor];

    if (!imageTintColor2)
    {
      whiteColor2 = [MEMORY[0x277D75348] blackColor];
      goto LABEL_10;
    }
  }

  v13 = +[STUIStatusBarSettingsDomain rootSettings];
  visualProviderSettings = [v13 visualProviderSettings];
  redInSpringBoard = [visualProviderSettings redInSpringBoard];

  if (redInSpringBoard)
  {
    redColor = [MEMORY[0x277D75348] redColor];
    [v5 setTextColor:redColor];

    redColor2 = [MEMORY[0x277D75348] redColor];
    [v5 setImageTintColor:redColor2];
  }

  imageTintColor3 = [v5 imageTintColor];
  v19 = [imageTintColor3 colorWithAlphaComponent:0.2];
  [v5 setImageDimmedTintColor:v19];

  [v5 setSymbolScale:1];

  return v5;
}

+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)orientation
{
  v3 = *MEMORY[0x277D77260];
  [self height];
  v5 = v4;
  v6 = v3;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)modeUpdatedFromMode:(int64_t)mode
{
  statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  mode = [statusBar mode];

  if (mode <= 2)
  {
    if (mode)
    {
      if (mode != 1)
      {
        if (mode != 2)
        {
          return;
        }

        [(STUIStatusBarVisualProvider_iOS *)self setExpanded:0];
        [(STUIStatusBarVisualProvider_iOS *)self setOnLockScreen:1];
        goto LABEL_13;
      }

      [(STUIStatusBarVisualProvider_iOS *)self setOnLockScreen:0];
      selfCopy2 = self;
      v7 = 1;
LABEL_12:
      [(STUIStatusBarVisualProvider_iOS *)selfCopy2 setExpanded:v7];
LABEL_13:
      v8 = 0;
      goto LABEL_14;
    }

LABEL_7:
    [(STUIStatusBarVisualProvider_iOS *)self setOnLockScreen:0];
    selfCopy2 = self;
    v7 = 0;
    goto LABEL_12;
  }

  if ((mode - 4) < 2)
  {
    goto LABEL_7;
  }

  if (mode != 3)
  {
    return;
  }

  [(STUIStatusBarVisualProvider_iOS *)self setExpanded:0];
  v8 = 1;
  [(STUIStatusBarVisualProvider_iOS *)self setOnLockScreen:1];
LABEL_14:

  [(STUIStatusBarVisualProvider_iOS *)self setOnAODLockScreen:v8];
}

- (void)actionable:(id)actionable highlighted:(BOOL)highlighted initialPress:(BOOL)press
{
  pressCopy = press;
  highlightedCopy = highlighted;
  v11[1] = *MEMORY[0x277D85DE8];
  layoutItem = [actionable layoutItem];
  _ui_view = [layoutItem _ui_view];

  if (_ui_view)
  {
    v9 = MEMORY[0x277D75220];
    v11[0] = _ui_view;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [v9 _setVisuallyHighlighted:highlightedCopy forViews:v10 initialPress:pressCopy];
  }
}

- (id)willUpdateWithData:(id)data
{
  dataCopy = data;
  [(STUIStatusBarVisualProvider_iOS *)self updateDataForService:dataCopy];
  [(STUIStatusBarVisualProvider_iOS *)self updateDataForSystemNavigation:dataCopy];

  return MEMORY[0x277CBEBF8];
}

- (void)updateDataForService:(id)service
{
  secondaryCellularEntry = [service secondaryCellularEntry];
  if (secondaryCellularEntry)
  {
    v5 = secondaryCellularEntry;
    -[STUIStatusBarDisplayItemPlacementGroup setEnabled:](self->_secondaryWifiGroup, "setEnabled:", [secondaryCellularEntry type] != 0);
    secondaryCellularEntry = v5;
  }
}

- (id)displayItemIdentifiersForPartWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqual:@"batteryPartIdentifier"])
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = +[STUIStatusBarBatteryItem staticIconDisplayIdentifier];
LABEL_7:
    v6 = v5;
    v7 = [v4 setWithObject:v5];
LABEL_8:

    goto LABEL_9;
  }

  if ([identifierCopy isEqual:@"backNavigationPartIdentifier"])
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = +[(STUIStatusBarItem *)STUIStatusBarNavigationItem];
    goto LABEL_7;
  }

  if ([identifierCopy isEqual:@"clockPartIdentifier"])
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = +[STUIStatusBarTimeItem shortTimeDisplayIdentifier];
    goto LABEL_7;
  }

  if ([identifierCopy isEqual:@"dateAndTimePartIdentifier"])
  {
    v9 = MEMORY[0x277CBEB98];
    v6 = +[STUIStatusBarTimeItem shortTimeDisplayIdentifier];
    v10 = +[STUIStatusBarTimeItem timeDisplayIdentifier];
    v11 = +[STUIStatusBarTimeItem dateDisplayIdentifier];
    v7 = [v9 setWithObjects:{v6, v10, v11, 0}];

LABEL_16:
    goto LABEL_8;
  }

  v12 = [identifierCopy isEqual:@"lockPartIdentifier"];
  v13 = MEMORY[0x277CBEB98];
  if (v12)
  {
    v6 = +[(STUIStatusBarItem *)STUIStatusBarLockItem];
    v10 = +[STUIStatusBarLockItem textDisplayIdentifier];
    v7 = [v13 setWithObjects:{v6, v10, 0}];
    goto LABEL_16;
  }

  v7 = [MEMORY[0x277CBEB98] set];
LABEL_9:

  return v7;
}

- (void)setExpanded:(BOOL)expanded
{
  if (self->_expanded != expanded)
  {
    self->_expanded = expanded;
    [(STUIStatusBarVisualProvider_iOS *)self _applyToAppearingRegions:0 block:&__block_literal_global_2];
    [(STUIStatusBarVisualProvider_iOS *)self _applyToAppearingRegions:1 block:&__block_literal_global_28];
    statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    [statusBar updateWithAnimations:MEMORY[0x277CBEBF8]];
  }
}

- (void)_applyToAppearingRegions:(BOOL)regions block:(id)block
{
  regionsCopy = regions;
  v23 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  expanded = [(STUIStatusBarVisualProvider_iOS *)self expanded];
  v8 = STUIStatusBarPartIdentifierNormal;
  if (expanded == regionsCopy)
  {
    v8 = STUIStatusBarPartIdentifierExpanded;
  }

  [(STUIStatusBarVisualProvider_iOS *)self regionIdentifiersForPartWithIdentifier:*v8];
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
        statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
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
  v7 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAirplaneModeItem];
  v8 = v7;
  isEnabled = v7 == identifierCopy || removalCopy;
  if (removalCopy && v7 != identifierCopy)
  {
    v10 = +[STUIStatusBarIndicatorLocationItem prominentDisplayIdentifier];
    if (v10 == identifierCopy)
    {
      statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
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
  v8 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAirplaneModeItem];

  if (v8 == identifierCopy)
  {
    animationForAirplaneMode = [(STUIStatusBarVisualProvider_iOS *)self animationForAirplaneMode];
  }

  else if (animationCopy)
  {
    animationForAirplaneMode = animationCopy;
  }

  else
  {
    animationForAirplaneMode = [(STUIStatusBarVisualProvider_iOS *)self defaultAnimationForDisplayItemWithIdentifier:identifierCopy];
  }

  v10 = animationForAirplaneMode;

  return v10;
}

- (id)removalAnimationForDisplayItemWithIdentifier:(id)identifier itemAnimation:(id)animation
{
  identifierCopy = identifier;
  animationCopy = animation;
  v8 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAirplaneModeItem];

  if (v8 == identifierCopy)
  {
    animationForAirplaneMode = [(STUIStatusBarVisualProvider_iOS *)self animationForAirplaneMode];
    goto LABEL_10;
  }

  v9 = +[STUIStatusBarIndicatorLocationItem prominentDisplayIdentifier];
  v10 = v9;
  if (v9 == identifierCopy)
  {
    statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    currentAggregatedData = [statusBar currentAggregatedData];
    locationEntry = [currentAggregatedData locationEntry];
    isEnabled = [locationEntry isEnabled];

    if (isEnabled)
    {
      animationForAirplaneMode = [(STUIStatusBarVisualProvider_iOS *)self animationForProminentLocation];
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
    animationForAirplaneMode = [(STUIStatusBarVisualProvider_iOS *)self defaultAnimationForDisplayItemWithIdentifier:identifierCopy];
  }

LABEL_10:
  v16 = animationForAirplaneMode;

  return v16;
}

- (void)updateDataForSystemNavigation:(id)navigation
{
  navigationCopy = navigation;
  v4 = _UIStatusBarHostedInSpringBoard();
  v5 = navigationCopy;
  if ((v4 & 1) == 0)
  {
    backNavigationEntry = [navigationCopy backNavigationEntry];
    statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    currentAggregatedData = [statusBar currentAggregatedData];
    backNavigationEntry2 = [currentAggregatedData backNavigationEntry];

    if (backNavigationEntry)
    {
      disabledEntry = 0;
    }

    else
    {
      _systemNavigationAction = [*MEMORY[0x277D76620] _systemNavigationAction];
      destinations = [_systemNavigationAction destinations];
      v13 = [destinations containsObject:&unk_287D1B128];

      v14 = MEMORY[0x277D6BAF0];
      if (v13)
      {
        v15 = [_systemNavigationAction titleForDestination:0];
        disabledEntry = [v14 entryWithStringValue:v15];
      }

      else
      {
        disabledEntry = [MEMORY[0x277D6BAF0] disabledEntry];
      }

      if (disabledEntry && ([disabledEntry isEqual:backNavigationEntry2] & 1) == 0)
      {
        [navigationCopy setBackNavigationEntry:disabledEntry];
      }
    }

    v5 = navigationCopy;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (double)airplaneTravelOffsetInProposedPartWithIdentifier:(id *)identifier animationType:(int64_t)type
{
  result = 0.0;
  if (type == 2)
  {
    v6 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAirplaneModeItem];
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

- (STUIStatusBarAnimation)animationForAirplaneMode
{
  v50 = *MEMORY[0x277D85DE8];
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
  v44[3] = __Block_byref_object_copy__1;
  v44[4] = __Block_byref_object_dispose__1;
  v45 = 0;
  statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  styleAttributes = [statusBar styleAttributes];
  v5 = [styleAttributes effectiveLayoutDirection] == 1;

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __59__STUIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke;
  v42[3] = &unk_279D38478;
  v42[4] = self;
  v42[5] = v44;
  v43 = v5;
  v42[6] = v46;
  v42[7] = v47;
  v6 = [STUIStatusBarAnimation animationWithBlock:v42];
  [v6 setPriority:100];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __59__STUIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_3;
  v41[3] = &unk_279D38588;
  v41[4] = v46;
  [v6 setPrepareBlock:v41];
  v26 = [MEMORY[0x277CBEB58] set];
  WeakRetained = objc_loadWeakRetained(&self->_statusBar);
  v8 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAirplaneModeItem];
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
        v35[3] = __Block_byref_object_copy__1;
        v35[4] = __Block_byref_object_dispose__1;
        v36 = 0;
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __59__STUIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_4;
        v34[3] = &unk_279D384C8;
        v34[6] = v46;
        v34[7] = v47;
        v34[8] = v35;
        v34[4] = self;
        v34[5] = v44;
        v17 = [STUIStatusBarAnimation animationWithBlock:v34];
        [v17 setPriority:100];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __59__STUIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_15;
        v31[3] = &unk_279D384F0;
        v33 = v35;
        v18 = v16;
        v32 = v18;
        [v17 setPrepareBlock:v31];
        statusBar2 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
        v48 = v13;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
        v21 = [statusBar2 displayItemIdentifiersInRegionsWithIdentifiers:v20];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __59__STUIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_16;
        v27[3] = &unk_279D38518;
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

- (STUIStatusBarAnimation)animationForProminentLocation
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3010000000;
  v8[3] = &unk_26C58BD13;
  v9 = *MEMORY[0x277CBF348];
  v2 = [STUIStatusBarAnimation animationWithBlock:&__block_literal_global_40];
  [v2 setPriority:100];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__STUIStatusBarVisualProvider_iOS_animationForProminentLocation__block_invoke_3;
  v7[3] = &unk_279D38560;
  v7[4] = v8;
  v3 = [STUIStatusBarAnimation animationWithBlock:v7];
  [v3 setPriority:100];
  v4 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorLocationItem];
  [v2 addSubAnimation:v3 forDisplayItemWithIdentifier:v4];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__STUIStatusBarVisualProvider_iOS_animationForProminentLocation__block_invoke_5;
  v6[3] = &unk_279D38588;
  v6[4] = v8;
  [v2 setPrepareBlock:v6];
  [v2 setDelaysAnimatingItems:1];

  _Block_object_dispose(v8, 8);

  return v2;
}

- (void)updateLumaTracking:(BOOL)tracking
{
  trackingCopy = tracking;
  lumaTrackingGroup = [(STUIStatusBarVisualProvider_iOS *)self lumaTrackingGroup];
  lumaTrackingGroup3 = lumaTrackingGroup;
  if (trackingCopy)
  {
    isPaused = [lumaTrackingGroup isPaused];

    if ((isPaused & 1) == 0)
    {
      lumaTrackingGroup2 = [(STUIStatusBarVisualProvider_iOS *)self lumaTrackingGroup];
      [lumaTrackingGroup2 setPaused:1];
    }

    lumaTrackingGroup3 = [(STUIStatusBarVisualProvider_iOS *)self lumaTrackingGroup];
    statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    v9 = [statusBar style] >> 6;
    if (v9 == 2)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2 * (v9 == 1);
    }

    [lumaTrackingGroup3 unpauseAfterSeedingWithLumaLevel:v10];
  }

  else
  {
    [lumaTrackingGroup setPaused:1];
  }
}

- (void)backgroundLumaGroup:(id)group didTransitionToLevel:(unint64_t)level viewsWithDifferentLevels:(id)levels
{
  v38 = *MEMORY[0x277D85DE8];
  levelsCopy = levels;
  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(levelsCopy, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = levelsCopy;
  v26 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v26)
  {
    v24 = *v33;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v32 + 1) + 8 * i);
        v9 = [obj objectForKey:v8];
        integerValue = [v9 integerValue];
        v11 = 4;
        if (integerValue == 2)
        {
          v11 = 1;
        }

        if (integerValue == 1)
        {
          v12 = 2;
        }

        else
        {
          v12 = v11;
        }

        v13 = [(STUIStatusBarVisualProvider_iOS *)self regionIdentifiersForBackgroundLumaView:v8];
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v14 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v29;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v29 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v28 + 1) + 8 * j);
              v19 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
              [v6 setObject:v19 forKeyedSubscript:v18];
            }

            v15 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v15);
        }
      }

      v26 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v26);
  }

  v20 = 4;
  if (level == 2)
  {
    v20 = 1;
  }

  if (level == 1)
  {
    v21 = 2;
  }

  else
  {
    v21 = v20;
  }

  statusBar = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  [statusBar _setAutomaticStyle:v21 additionalStylesForRegionIdentifiers:v6];
}

@end