@interface STUIStatusBarVisualProvider_iOS
+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)a3;
+ (Class)visualProviderSubclassForScreen:(id)a3 visualProviderInfo:(id)a4;
- (BOOL)hasCustomAnimationForDisplayItemWithIdentifier:(id)a3 removal:(BOOL)a4;
- (STUIStatusBar)statusBar;
- (STUIStatusBarAnimation)animationForAirplaneMode;
- (STUIStatusBarAnimation)animationForProminentLocation;
- (STUIStatusBarVisualProvider_iOS)init;
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
- (void)backgroundLumaGroup:(id)a3 didTransitionToLevel:(unint64_t)a4 viewsWithDifferentLevels:(id)a5;
- (void)modeUpdatedFromMode:(int64_t)a3;
- (void)setExpanded:(BOOL)a3;
- (void)updateDataForService:(id)a3;
- (void)updateDataForSystemNavigation:(id)a3;
- (void)updateLumaTracking:(BOOL)a3;
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
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CBEB18] array];
  if ([(STUIStatusBarVisualProvider_iOS *)self wantsPillInExpandedTrailingPlacements])
  {
    v5 = +[(STUIStatusBarPillBackgroundActivityItem *)STUIStatusBarExpandedPillBackgroundActivityItem];
    v6 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v5 priority:300];
    expandedPillPlacement = self->_expandedPillPlacement;
    self->_expandedPillPlacement = v6;

    [(NSArray *)v4 addObject:self->_expandedPillPlacement];
  }

  v8 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorLocationItem];
  v9 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v8 priority:450];
  [(NSArray *)v4 addObject:v9];

  if ([(STUIStatusBarVisualProvider_iOS *)self wantsExpandedLeadingPlacements])
  {
    v10 = [MEMORY[0x277CBEB18] array];
    v11 = objc_opt_class();
    v12 = [STUIStatusBarDisplayItemPlacementNetworkGroup groupWithHighPriority:1500 lowPriority:1200 cellularItemClass:v11 wifiItemClass:objc_opt_class() includeCellularName:1];
    expandedNetworkGroup = self->_expandedNetworkGroup;
    self->_expandedNetworkGroup = v12;

    v14 = [(STUIStatusBarDisplayItemPlacementNetworkGroup *)self->_expandedNetworkGroup cellularGroup];
    v15 = [v14 placementsAffectedByAirplaneMode];
    [(NSArray *)v10 addObjectsFromArray:v15];

    v16 = objc_opt_class();
    v17 = [STUIStatusBarDisplayItemPlacementNetworkGroup secondaryGroupWithHighPriority:500 lowPriority:200 cellularItemClass:v16 wifiItemClass:objc_opt_class()];
    v18 = [(STUIStatusBarDisplayItemPlacementNetworkGroup *)self->_expandedNetworkGroup cellularGroup];
    v19 = [v18 sosPlacement];
    [(NSArray *)v3 addObject:v19];

    v20 = [v17 cellularGroup];
    v21 = [v20 placementsAffectedByAirplaneMode];
    [(NSArray *)v10 addObjectsFromArray:v21];

    v22 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAirplaneModeItem];
    v23 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v22 priority:4000];
    v24 = [v23 excludingPlacements:v10];
    [(NSArray *)v3 addObject:v24];

    v25 = [(STUIStatusBarDisplayItemPlacementGroup *)self->_expandedNetworkGroup placements];
    [(NSArray *)v3 addObjectsFromArray:v25];

    [(STUIStatusBarVisualProvider_iOS *)self regionSpacing];
    v27 = v26;
    [(STUIStatusBarVisualProvider_iOS *)self expandedItemSpacing];
    v29 = [STUIStatusBarDisplayItemPlacement spacerPlacementWithSize:[(STUIStatusBarDisplayItemPlacementGroup *)self->_expandedNetworkGroup minimumPriority]- 5 priority:v27 + v28 * -2.0, 0.0];
    v30 = [(STUIStatusBarDisplayItemPlacementNetworkGroup *)self->_expandedNetworkGroup cellularGroup];
    v31 = [v30 placements];
    v32 = [v29 requiringAnyPlacements:v31];
    [(NSArray *)v3 addObject:v32];

    v33 = [v17 placements];
    [(NSArray *)v3 addObjectsFromArray:v33];

    v34 = [v17 wifiGroup];
    secondaryWifiGroup = self->_secondaryWifiGroup;
    self->_secondaryWifiGroup = v34;

    expandedCellularPlacementsAffectedByAirplaneMode = self->_expandedCellularPlacementsAffectedByAirplaneMode;
    self->_expandedCellularPlacementsAffectedByAirplaneMode = v10;
  }

  else
  {
    v17 = [STUIStatusBarWifiItem groupWithPriority:500];
    v37 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAirplaneModeItem];
    v38 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v37 priority:4000];
    [(NSArray *)v4 addObject:v38];

    v39 = [v17 placements];
    [(NSArray *)v4 addObjectsFromArray:v39];

    expandedCellularPlacementsAffectedByAirplaneMode = +[(STUIStatusBarItem *)STUIStatusBarVPNItem];
    v40 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:expandedCellularPlacementsAffectedByAirplaneMode priority:54];
    [(NSArray *)v4 addObject:v40];
  }

  [(STUIStatusBarVisualProvider_iOS *)self bluetoothPaddingInset];
  v49 = [(STUIStatusBarDisplayItemPlacementIndicatorsGroup *)STUIStatusBarDisplayItemPlacementExpandedIndicatorsGroup groupWithHighPriority:400 lowPriority:100 bluetoothPaddingInset:?];
  v41 = +[STUIStatusBarDisplayItemPlacementBatteryGroup groupWithHighPriority:lowPriority:](STUIStatusBarDisplayItemPlacementBatteryGroup, "groupWithHighPriority:lowPriority:", [v49 maximumPriority] + 1, objc_msgSend(v49, "minimumPriority") - 5);
  v42 = [v49 placements];
  [(NSArray *)v4 addObjectsFromArray:v42];

  v43 = +[(STUIStatusBarItem *)STUIStatusBarBuildVersionItem];
  v44 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v43 priority:1];
  [(NSArray *)v4 addObject:v44];

  v45 = [v41 placements];
  [(NSArray *)v4 addObjectsFromArray:v45];

  expandedLeadingPlacements = self->_expandedLeadingPlacements;
  self->_expandedLeadingPlacements = v3;
  v47 = v3;

  expandedTrailingPlacements = self->_expandedTrailingPlacements;
  self->_expandedTrailingPlacements = v4;
}

+ (Class)visualProviderSubclassForScreen:(id)a3 visualProviderInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 traitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (!v8 || v8 == 3 || v8 == 1)
  {
    v9 = objc_opt_class();
    v10 = STUIStatusBarGetVisualProviderSubclassForScreenWithVisualProviderInfo(v9, v5, v6);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)styleAttributesForStyle:(int64_t)a3
{
  v4 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  v5 = [STUIStatusBarStyleAttributes styleAttributesForStatusBar:v4 style:a3];

  v6 = [v5 textColor];

  if (a3 == 1)
  {
    if (!v6)
    {
      v7 = [MEMORY[0x277D75348] whiteColor];
      [v5 setTextColor:v7];
    }

    v8 = [v5 imageTintColor];

    if (!v8)
    {
      v9 = [MEMORY[0x277D75348] whiteColor];
LABEL_10:
      v12 = v9;
      [v5 setImageTintColor:v9];
    }
  }

  else
  {
    if (!v6)
    {
      v10 = [MEMORY[0x277D75348] blackColor];
      [v5 setTextColor:v10];
    }

    v11 = [v5 imageTintColor];

    if (!v11)
    {
      v9 = [MEMORY[0x277D75348] blackColor];
      goto LABEL_10;
    }
  }

  v13 = +[STUIStatusBarSettingsDomain rootSettings];
  v14 = [v13 visualProviderSettings];
  v15 = [v14 redInSpringBoard];

  if (v15)
  {
    v16 = [MEMORY[0x277D75348] redColor];
    [v5 setTextColor:v16];

    v17 = [MEMORY[0x277D75348] redColor];
    [v5 setImageTintColor:v17];
  }

  v18 = [v5 imageTintColor];
  v19 = [v18 colorWithAlphaComponent:0.2];
  [v5 setImageDimmedTintColor:v19];

  [v5 setSymbolScale:1];

  return v5;
}

+ (CGSize)intrinsicContentSizeForOrientation:(int64_t)a3
{
  v3 = *MEMORY[0x277D77260];
  [a1 height];
  v5 = v4;
  v6 = v3;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)modeUpdatedFromMode:(int64_t)a3
{
  v4 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  v5 = [v4 mode];

  if (v5 <= 2)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        if (v5 != 2)
        {
          return;
        }

        [(STUIStatusBarVisualProvider_iOS *)self setExpanded:0];
        [(STUIStatusBarVisualProvider_iOS *)self setOnLockScreen:1];
        goto LABEL_13;
      }

      [(STUIStatusBarVisualProvider_iOS *)self setOnLockScreen:0];
      v6 = self;
      v7 = 1;
LABEL_12:
      [(STUIStatusBarVisualProvider_iOS *)v6 setExpanded:v7];
LABEL_13:
      v8 = 0;
      goto LABEL_14;
    }

LABEL_7:
    [(STUIStatusBarVisualProvider_iOS *)self setOnLockScreen:0];
    v6 = self;
    v7 = 0;
    goto LABEL_12;
  }

  if ((v5 - 4) < 2)
  {
    goto LABEL_7;
  }

  if (v5 != 3)
  {
    return;
  }

  [(STUIStatusBarVisualProvider_iOS *)self setExpanded:0];
  v8 = 1;
  [(STUIStatusBarVisualProvider_iOS *)self setOnLockScreen:1];
LABEL_14:

  [(STUIStatusBarVisualProvider_iOS *)self setOnAODLockScreen:v8];
}

- (void)actionable:(id)a3 highlighted:(BOOL)a4 initialPress:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v11[1] = *MEMORY[0x277D85DE8];
  v7 = [a3 layoutItem];
  v8 = [v7 _ui_view];

  if (v8)
  {
    v9 = MEMORY[0x277D75220];
    v11[0] = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [v9 _setVisuallyHighlighted:v6 forViews:v10 initialPress:v5];
  }
}

- (id)willUpdateWithData:(id)a3
{
  v4 = a3;
  [(STUIStatusBarVisualProvider_iOS *)self updateDataForService:v4];
  [(STUIStatusBarVisualProvider_iOS *)self updateDataForSystemNavigation:v4];

  return MEMORY[0x277CBEBF8];
}

- (void)updateDataForService:(id)a3
{
  v4 = [a3 secondaryCellularEntry];
  if (v4)
  {
    v5 = v4;
    -[STUIStatusBarDisplayItemPlacementGroup setEnabled:](self->_secondaryWifiGroup, "setEnabled:", [v4 type] != 0);
    v4 = v5;
  }
}

- (id)displayItemIdentifiersForPartWithIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqual:@"batteryPartIdentifier"])
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = +[STUIStatusBarBatteryItem staticIconDisplayIdentifier];
LABEL_7:
    v6 = v5;
    v7 = [v4 setWithObject:v5];
LABEL_8:

    goto LABEL_9;
  }

  if ([v3 isEqual:@"backNavigationPartIdentifier"])
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = +[(STUIStatusBarItem *)STUIStatusBarNavigationItem];
    goto LABEL_7;
  }

  if ([v3 isEqual:@"clockPartIdentifier"])
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = +[STUIStatusBarTimeItem shortTimeDisplayIdentifier];
    goto LABEL_7;
  }

  if ([v3 isEqual:@"dateAndTimePartIdentifier"])
  {
    v9 = MEMORY[0x277CBEB98];
    v6 = +[STUIStatusBarTimeItem shortTimeDisplayIdentifier];
    v10 = +[STUIStatusBarTimeItem timeDisplayIdentifier];
    v11 = +[STUIStatusBarTimeItem dateDisplayIdentifier];
    v7 = [v9 setWithObjects:{v6, v10, v11, 0}];

LABEL_16:
    goto LABEL_8;
  }

  v12 = [v3 isEqual:@"lockPartIdentifier"];
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

- (void)setExpanded:(BOOL)a3
{
  if (self->_expanded != a3)
  {
    self->_expanded = a3;
    [(STUIStatusBarVisualProvider_iOS *)self _applyToAppearingRegions:0 block:&__block_literal_global_2];
    [(STUIStatusBarVisualProvider_iOS *)self _applyToAppearingRegions:1 block:&__block_literal_global_28];
    v5 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    [v5 updateWithAnimations:MEMORY[0x277CBEBF8]];
  }
}

- (void)_applyToAppearingRegions:(BOOL)a3 block:(id)a4
{
  v4 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(STUIStatusBarVisualProvider_iOS *)self expanded];
  v8 = STUIStatusBarPartIdentifierNormal;
  if (v7 == v4)
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
        v15 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
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
  v7 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAirplaneModeItem];
  v8 = v7;
  v9 = v7 == v6 || v4;
  if (v4 && v7 != v6)
  {
    v10 = +[STUIStatusBarIndicatorLocationItem prominentDisplayIdentifier];
    if (v10 == v6)
    {
      v11 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
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
  v8 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAirplaneModeItem];

  if (v8 == v6)
  {
    v9 = [(STUIStatusBarVisualProvider_iOS *)self animationForAirplaneMode];
  }

  else if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [(STUIStatusBarVisualProvider_iOS *)self defaultAnimationForDisplayItemWithIdentifier:v6];
  }

  v10 = v9;

  return v10;
}

- (id)removalAnimationForDisplayItemWithIdentifier:(id)a3 itemAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAirplaneModeItem];

  if (v8 == v6)
  {
    v11 = [(STUIStatusBarVisualProvider_iOS *)self animationForAirplaneMode];
    goto LABEL_10;
  }

  v9 = +[STUIStatusBarIndicatorLocationItem prominentDisplayIdentifier];
  v10 = v9;
  if (v9 == v6)
  {
    v12 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    v13 = [v12 currentAggregatedData];
    v14 = [v13 locationEntry];
    v15 = [v14 isEnabled];

    if (v15)
    {
      v11 = [(STUIStatusBarVisualProvider_iOS *)self animationForProminentLocation];
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
    v11 = [(STUIStatusBarVisualProvider_iOS *)self defaultAnimationForDisplayItemWithIdentifier:v6];
  }

LABEL_10:
  v16 = v11;

  return v16;
}

- (void)updateDataForSystemNavigation:(id)a3
{
  v16 = a3;
  v4 = _UIStatusBarHostedInSpringBoard();
  v5 = v16;
  if ((v4 & 1) == 0)
  {
    v6 = [v16 backNavigationEntry];
    v7 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    v8 = [v7 currentAggregatedData];
    v9 = [v8 backNavigationEntry];

    if (v6)
    {
      v10 = 0;
    }

    else
    {
      v11 = [*MEMORY[0x277D76620] _systemNavigationAction];
      v12 = [v11 destinations];
      v13 = [v12 containsObject:&unk_287D1B128];

      v14 = MEMORY[0x277D6BAF0];
      if (v13)
      {
        v15 = [v11 titleForDestination:0];
        v10 = [v14 entryWithStringValue:v15];
      }

      else
      {
        v10 = [MEMORY[0x277D6BAF0] disabledEntry];
      }

      if (v10 && ([v10 isEqual:v9] & 1) == 0)
      {
        [v16 setBackNavigationEntry:v10];
      }
    }

    v5 = v16;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (double)airplaneTravelOffsetInProposedPartWithIdentifier:(id *)a3 animationType:(int64_t)a4
{
  result = 0.0;
  if (a4 == 2)
  {
    v6 = +[(STUIStatusBarItem *)STUIStatusBarIndicatorAirplaneModeItem];
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
  v3 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  v4 = [v3 styleAttributes];
  v5 = [v4 effectiveLayoutDirection] == 1;

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
        v19 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
        v48 = v13;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
        v21 = [v19 displayItemIdentifiersInRegionsWithIdentifiers:v20];
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

- (void)updateLumaTracking:(BOOL)a3
{
  v3 = a3;
  v5 = [(STUIStatusBarVisualProvider_iOS *)self lumaTrackingGroup];
  v11 = v5;
  if (v3)
  {
    v6 = [v5 isPaused];

    if ((v6 & 1) == 0)
    {
      v7 = [(STUIStatusBarVisualProvider_iOS *)self lumaTrackingGroup];
      [v7 setPaused:1];
    }

    v11 = [(STUIStatusBarVisualProvider_iOS *)self lumaTrackingGroup];
    v8 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
    v9 = [v8 style] >> 6;
    if (v9 == 2)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2 * (v9 == 1);
    }

    [v11 unpauseAfterSeedingWithLumaLevel:v10];
  }

  else
  {
    [v5 setPaused:1];
  }
}

- (void)backgroundLumaGroup:(id)a3 didTransitionToLevel:(unint64_t)a4 viewsWithDifferentLevels:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a5;
  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v5;
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
        v10 = [v9 integerValue];
        v11 = 4;
        if (v10 == 2)
        {
          v11 = 1;
        }

        if (v10 == 1)
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
  if (a4 == 2)
  {
    v20 = 1;
  }

  if (a4 == 1)
  {
    v21 = 2;
  }

  else
  {
    v21 = v20;
  }

  v22 = [(STUIStatusBarVisualProvider_iOS *)self statusBar];
  [v22 _setAutomaticStyle:v21 additionalStylesForRegionIdentifiers:v6];
}

@end