@interface _UIStatusBarDisplayItemPlacementNetworkGroup
+ (_UIStatusBarDisplayItemPlacementNetworkGroup)groupWithHighPriority:(int64_t)priority lowPriority:(int64_t)lowPriority cellularItemClass:(Class)class wifiItemClass:(Class)itemClass cellularTypeClass:(Class)typeClass includeCellularName:(BOOL)name allowDualNetwork:(BOOL)network;
+ (id)_groupWithCellularGroup:(id)group wifiGroup:(id)wifiGroup includeCellularName:(BOOL)name;
+ (id)secondaryGroupWithHighPriority:(int64_t)priority lowPriority:(int64_t)lowPriority cellularItemClass:(Class)class wifiItemClass:(Class)itemClass;
@end

@implementation _UIStatusBarDisplayItemPlacementNetworkGroup

+ (id)_groupWithCellularGroup:(id)group wifiGroup:(id)wifiGroup includeCellularName:(BOOL)name
{
  nameCopy = name;
  v61[3] = *MEMORY[0x1E69E9840];
  groupCopy = group;
  wifiGroupCopy = wifiGroup;
  v9 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorVPNItem];
  v10 = +[_UIStatusBarDisplayItemPlacement placementWithIdentifier:priority:](_UIStatusBarDisplayItemPlacement, "placementWithIdentifier:priority:", v9, [groupCopy minimumPriority] + 10);

  typePlacement = [groupCopy typePlacement];
  v61[0] = typePlacement;
  signalStrengthPlacement = [wifiGroupCopy signalStrengthPlacement];
  v61[1] = signalStrengthPlacement;
  iconPlacement = [wifiGroupCopy iconPlacement];
  v61[2] = iconPlacement;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:3];
  v15 = [v10 requiringAnyPlacements:v14];

  dualNameAndTypePlacement = [groupCopy dualNameAndTypePlacement];

  if (dualNameAndTypePlacement)
  {
    dualNameAndTypePlacement2 = [groupCopy dualNameAndTypePlacement];
    v60 = dualNameAndTypePlacement2;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
    v19 = [v15 requiringAnyPlacements:v18];

    v15 = v19;
  }

  array = [MEMORY[0x1E695DF70] array];
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
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:2];
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
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
      v36 = [signalStrengthPlacement3 excludingPlacements:v35];
      [wifiGroupCopy setSignalStrengthPlacement:v36];

      iconPlacement2 = [wifiGroupCopy iconPlacement];
      v57 = dualNameAndTypePlacement4;
      v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
      v39 = [iconPlacement2 excludingPlacements:v38];
      [wifiGroupCopy setIconPlacement:v39];

      rawPlacement2 = [wifiGroupCopy rawPlacement];
      v56 = dualNameAndTypePlacement4;
      v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
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
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:6];
  [array addObjectsFromArray:v48];

  v49 = [self groupWithPriority:0 placements:array];
  v50 = v49[4];
  v49[4] = groupCopy;
  v51 = groupCopy;

  v52 = v49[5];
  v49[5] = wifiGroupCopy;

  return v49;
}

+ (_UIStatusBarDisplayItemPlacementNetworkGroup)groupWithHighPriority:(int64_t)priority lowPriority:(int64_t)lowPriority cellularItemClass:(Class)class wifiItemClass:(Class)itemClass cellularTypeClass:(Class)typeClass includeCellularName:(BOOL)name allowDualNetwork:(BOOL)network
{
  nameCopy = name;
  v32[1] = *MEMORY[0x1E69E9840];
  if (lowPriority >= priority)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIStatusBarDisplayItemPlacementNetworkGroup.m" lineNumber:85 description:@"The lowPriority should be smaller than the highPriority"];
  }

  if (typeClass)
  {
    classCopy = typeClass;
  }

  else
  {
    classCopy = class;
  }

  v17 = [(objc_class *)class groupWithHighPriority:priority lowPriority:lowPriority typeClass:classCopy allowDualNetwork:network];
  v18 = -[objc_class groupWithPriority:](itemClass, "groupWithPriority:", [v17 maximumPriority] + 1);
  signalStrengthPlacement = [v18 signalStrengthPlacement];
  typePlacement = [v17 typePlacement];
  v32[0] = typePlacement;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  v22 = [signalStrengthPlacement excludingPlacements:v21];
  [v18 setSignalStrengthPlacement:v22];

  iconPlacement = [v18 iconPlacement];
  typePlacement2 = [v17 typePlacement];
  v31 = typePlacement2;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  v26 = [iconPlacement excludingPlacements:v25];
  [v18 setIconPlacement:v26];

  v27 = [self _groupWithCellularGroup:v17 wifiGroup:v18 includeCellularName:nameCopy];

  return v27;
}

+ (id)secondaryGroupWithHighPriority:(int64_t)priority lowPriority:(int64_t)lowPriority cellularItemClass:(Class)class wifiItemClass:(Class)itemClass
{
  v35[1] = *MEMORY[0x1E69E9840];
  if (lowPriority >= priority)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIStatusBarDisplayItemPlacementNetworkGroup.m" lineNumber:99 description:@"The lowPriority should be smaller than the highPriority"];
  }

  v11 = [(objc_class *)class groupWithHighPriority:priority lowPriority:lowPriority typeClass:class allowDualNetwork:0];
  v12 = -[objc_class groupWithPriority:](itemClass, "groupWithPriority:", [v11 maximumPriority] + 1);
  signalStrengthPlacement = [v11 signalStrengthPlacement];
  [signalStrengthPlacement setPriority:{objc_msgSend(signalStrengthPlacement, "priority") + objc_msgSend(v12, "maximumPriority")}];

  warningPlacement = [v11 warningPlacement];
  [warningPlacement setPriority:{objc_msgSend(warningPlacement, "priority") + objc_msgSend(v12, "maximumPriority")}];

  signalStrengthPlacement2 = [v12 signalStrengthPlacement];
  typePlacement = [v11 typePlacement];
  v35[0] = typePlacement;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
  v18 = [signalStrengthPlacement2 excludingPlacements:v17];
  signalStrengthPlacement3 = [v11 signalStrengthPlacement];
  v34[0] = signalStrengthPlacement3;
  warningPlacement2 = [v11 warningPlacement];
  v34[1] = warningPlacement2;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  [v18 requiringAnyPlacements:v21];
  v22 = v32 = self;
  [v12 setSignalStrengthPlacement:v22];

  iconPlacement = [v12 iconPlacement];
  signalStrengthPlacement4 = [v11 signalStrengthPlacement];
  v33[0] = signalStrengthPlacement4;
  warningPlacement3 = [v11 warningPlacement];
  v33[1] = warningPlacement3;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v27 = [iconPlacement requiringAnyPlacements:v26];
  [v12 setIconPlacement:v27];

  v28 = [v32 _groupWithCellularGroup:v11 wifiGroup:v12 includeCellularName:1];

  return v28;
}

@end