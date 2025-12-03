@interface STUIStatusBarDisplayItemPlacementNetworkGroup
+ (STUIStatusBarDisplayItemPlacementNetworkGroup)groupWithHighPriority:(int64_t)priority lowPriority:(int64_t)lowPriority cellularItemClass:(Class)class wifiItemClass:(Class)itemClass cellularTypeClass:(Class)typeClass includeCellularName:(BOOL)name allowDualNetwork:(BOOL)network;
+ (id)_groupWithCellularGroup:(id)group wifiGroup:(id)wifiGroup includeCellularName:(BOOL)name;
+ (id)secondaryGroupWithHighPriority:(int64_t)priority lowPriority:(int64_t)lowPriority cellularItemClass:(Class)class wifiItemClass:(Class)itemClass;
@end

@implementation STUIStatusBarDisplayItemPlacementNetworkGroup

+ (id)_groupWithCellularGroup:(id)group wifiGroup:(id)wifiGroup includeCellularName:(BOOL)name
{
  nameCopy = name;
  v61[3] = *MEMORY[0x277D85DE8];
  groupCopy = group;
  wifiGroupCopy = wifiGroup;
  v9 = +[(STUIStatusBarItem *)STUIStatusBarVPNItem];
  v10 = +[STUIStatusBarDisplayItemPlacement placementWithIdentifier:priority:](STUIStatusBarDisplayItemPlacement, "placementWithIdentifier:priority:", v9, [groupCopy minimumPriority] + 10);

  typePlacement = [groupCopy typePlacement];
  v61[0] = typePlacement;
  signalStrengthPlacement = [wifiGroupCopy signalStrengthPlacement];
  v61[1] = signalStrengthPlacement;
  iconPlacement = [wifiGroupCopy iconPlacement];
  v61[2] = iconPlacement;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:3];
  v15 = [v10 requiringAnyPlacements:v14];

  dualNameAndTypePlacement = [groupCopy dualNameAndTypePlacement];

  if (dualNameAndTypePlacement)
  {
    dualNameAndTypePlacement2 = [groupCopy dualNameAndTypePlacement];
    v60 = dualNameAndTypePlacement2;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
    v19 = [v15 requiringAnyPlacements:v18];

    v15 = v19;
  }

  array = [MEMORY[0x277CBEB18] array];
  signalStrengthPlacement2 = [groupCopy signalStrengthPlacement];
  [array addObject:signalStrengthPlacement2];

  dualSignalStrengthPlacement = [groupCopy dualSignalStrengthPlacement];

  if (dualSignalStrengthPlacement)
  {
    dualSignalStrengthPlacement2 = [groupCopy dualSignalStrengthPlacement];
    [array addObject:dualSignalStrengthPlacement2];
  }

  warningPlacement = [groupCopy warningPlacement];
  v59[0] = warningPlacement;
  rawPlacement = [groupCopy rawPlacement];
  v59[1] = rawPlacement;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
  [array addObjectsFromArray:v26];

  if (nameCopy)
  {
    badgePlacement = [groupCopy badgePlacement];

    if (badgePlacement)
    {
      badgePlacement2 = [groupCopy badgePlacement];
      [array addObject:badgePlacement2];
    }

    namePlacement = [groupCopy namePlacement];
    [array addObject:namePlacement];

    dualNamePlacement = [groupCopy dualNamePlacement];

    if (dualNamePlacement)
    {
      dualNamePlacement2 = [groupCopy dualNamePlacement];
      [array addObject:dualNamePlacement2];
    }

    dualNameAndTypePlacement3 = [groupCopy dualNameAndTypePlacement];

    if (dualNameAndTypePlacement3)
    {
      dualNameAndTypePlacement4 = [groupCopy dualNameAndTypePlacement];
      signalStrengthPlacement3 = [wifiGroupCopy signalStrengthPlacement];
      v58 = dualNameAndTypePlacement4;
      v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
      v36 = [signalStrengthPlacement3 excludingPlacements:v35];
      [wifiGroupCopy setSignalStrengthPlacement:v36];

      iconPlacement2 = [wifiGroupCopy iconPlacement];
      v57 = dualNameAndTypePlacement4;
      v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
      v39 = [iconPlacement2 excludingPlacements:v38];
      [wifiGroupCopy setIconPlacement:v39];

      rawPlacement2 = [wifiGroupCopy rawPlacement];
      v56 = dualNameAndTypePlacement4;
      v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
      v42 = [rawPlacement2 excludingPlacements:v41];
      [wifiGroupCopy setRawPlacement:v42];

      [array addObject:dualNameAndTypePlacement4];
    }
  }

  typePlacement2 = [groupCopy typePlacement];
  v55[0] = typePlacement2;
  signalStrengthPlacement4 = [wifiGroupCopy signalStrengthPlacement];
  v55[1] = signalStrengthPlacement4;
  iconPlacement3 = [wifiGroupCopy iconPlacement];
  v55[2] = iconPlacement3;
  rawPlacement3 = [wifiGroupCopy rawPlacement];
  v55[3] = rawPlacement3;
  v55[4] = v15;
  callForwardingPlacement = [groupCopy callForwardingPlacement];
  v55[5] = callForwardingPlacement;
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:6];
  [array addObjectsFromArray:v48];

  v49 = [self groupWithPriority:0 placements:array];
  v50 = v49[4];
  v49[4] = groupCopy;
  v51 = groupCopy;

  v52 = v49[5];
  v49[5] = wifiGroupCopy;

  return v49;
}

+ (STUIStatusBarDisplayItemPlacementNetworkGroup)groupWithHighPriority:(int64_t)priority lowPriority:(int64_t)lowPriority cellularItemClass:(Class)class wifiItemClass:(Class)itemClass cellularTypeClass:(Class)typeClass includeCellularName:(BOOL)name allowDualNetwork:(BOOL)network
{
  nameCopy = name;
  classCopy = class;
  v26[1] = *MEMORY[0x277D85DE8];
  if (typeClass)
  {
    class = typeClass;
  }

  v13 = [(objc_class *)classCopy groupWithHighPriority:priority lowPriority:lowPriority typeClass:class allowDualNetwork:network];
  v14 = -[objc_class groupWithPriority:](itemClass, "groupWithPriority:", [v13 maximumPriority] + 1);
  signalStrengthPlacement = [v14 signalStrengthPlacement];
  typePlacement = [v13 typePlacement];
  v26[0] = typePlacement;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v18 = [signalStrengthPlacement excludingPlacements:v17];
  [v14 setSignalStrengthPlacement:v18];

  iconPlacement = [v14 iconPlacement];
  typePlacement2 = [v13 typePlacement];
  v25 = typePlacement2;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  v22 = [iconPlacement excludingPlacements:v21];
  [v14 setIconPlacement:v22];

  v23 = [self _groupWithCellularGroup:v13 wifiGroup:v14 includeCellularName:nameCopy];

  return v23;
}

+ (id)secondaryGroupWithHighPriority:(int64_t)priority lowPriority:(int64_t)lowPriority cellularItemClass:(Class)class wifiItemClass:(Class)itemClass
{
  v29[1] = *MEMORY[0x277D85DE8];
  v7 = [(objc_class *)class groupWithHighPriority:priority lowPriority:lowPriority typeClass:class allowDualNetwork:0];
  v8 = -[objc_class groupWithPriority:](itemClass, "groupWithPriority:", [v7 maximumPriority] + 1);
  signalStrengthPlacement = [v7 signalStrengthPlacement];
  [signalStrengthPlacement setPriority:{objc_msgSend(signalStrengthPlacement, "priority") + objc_msgSend(v8, "maximumPriority")}];

  warningPlacement = [v7 warningPlacement];
  [warningPlacement setPriority:{objc_msgSend(warningPlacement, "priority") + objc_msgSend(v8, "maximumPriority")}];

  signalStrengthPlacement2 = [v8 signalStrengthPlacement];
  typePlacement = [v7 typePlacement];
  v29[0] = typePlacement;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v14 = [signalStrengthPlacement2 excludingPlacements:v13];
  signalStrengthPlacement3 = [v7 signalStrengthPlacement];
  v28[0] = signalStrengthPlacement3;
  warningPlacement2 = [v7 warningPlacement];
  v28[1] = warningPlacement2;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v18 = [v14 requiringAnyPlacements:v17];
  [v8 setSignalStrengthPlacement:v18];

  iconPlacement = [v8 iconPlacement];
  signalStrengthPlacement4 = [v7 signalStrengthPlacement];
  v27[0] = signalStrengthPlacement4;
  warningPlacement3 = [v7 warningPlacement];
  v27[1] = warningPlacement3;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v23 = [iconPlacement requiringAnyPlacements:v22];
  [v8 setIconPlacement:v23];

  v24 = [self _groupWithCellularGroup:v7 wifiGroup:v8 includeCellularName:1];

  return v24;
}

@end