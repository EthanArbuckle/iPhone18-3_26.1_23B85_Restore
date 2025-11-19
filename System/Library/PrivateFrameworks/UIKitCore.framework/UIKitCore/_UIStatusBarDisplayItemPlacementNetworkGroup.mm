@interface _UIStatusBarDisplayItemPlacementNetworkGroup
+ (_UIStatusBarDisplayItemPlacementNetworkGroup)groupWithHighPriority:(int64_t)a3 lowPriority:(int64_t)a4 cellularItemClass:(Class)a5 wifiItemClass:(Class)a6 cellularTypeClass:(Class)a7 includeCellularName:(BOOL)a8 allowDualNetwork:(BOOL)a9;
+ (id)_groupWithCellularGroup:(id)a3 wifiGroup:(id)a4 includeCellularName:(BOOL)a5;
+ (id)secondaryGroupWithHighPriority:(int64_t)a3 lowPriority:(int64_t)a4 cellularItemClass:(Class)a5 wifiItemClass:(Class)a6;
@end

@implementation _UIStatusBarDisplayItemPlacementNetworkGroup

+ (id)_groupWithCellularGroup:(id)a3 wifiGroup:(id)a4 includeCellularName:(BOOL)a5
{
  v5 = a5;
  v61[3] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorVPNItem];
  v10 = +[_UIStatusBarDisplayItemPlacement placementWithIdentifier:priority:](_UIStatusBarDisplayItemPlacement, "placementWithIdentifier:priority:", v9, [v7 minimumPriority] + 10);

  v11 = [v7 typePlacement];
  v61[0] = v11;
  v12 = [v8 signalStrengthPlacement];
  v61[1] = v12;
  v13 = [v8 iconPlacement];
  v61[2] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:3];
  v15 = [v10 requiringAnyPlacements:v14];

  v16 = [v7 dualNameAndTypePlacement];

  if (v16)
  {
    v17 = [v7 dualNameAndTypePlacement];
    v60 = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
    v19 = [v15 requiringAnyPlacements:v18];

    v15 = v19;
  }

  v20 = [MEMORY[0x1E695DF70] array];
  v21 = [v7 signalStrengthPlacement];
  [v20 addObject:v21];

  v22 = [v7 dualSignalStrengthPlacement];

  if (v22)
  {
    v23 = [v7 dualSignalStrengthPlacement];
    [v20 addObject:v23];
  }

  v24 = [v7 warningPlacement];
  v59[0] = v24;
  v25 = [v7 rawPlacement];
  v59[1] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:2];
  [v20 addObjectsFromArray:v26];

  if (v5)
  {
    v27 = [v7 badgePlacement];

    if (v27)
    {
      v28 = [v7 badgePlacement];
      [v20 addObject:v28];
    }

    v29 = [v7 namePlacement];
    [v20 addObject:v29];

    v30 = [v7 dualNamePlacement];

    if (v30)
    {
      v31 = [v7 dualNamePlacement];
      [v20 addObject:v31];
    }

    v32 = [v7 dualNameAndTypePlacement];

    if (v32)
    {
      v33 = [v7 dualNameAndTypePlacement];
      v34 = [v8 signalStrengthPlacement];
      v58 = v33;
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
      v36 = [v34 excludingPlacements:v35];
      [v8 setSignalStrengthPlacement:v36];

      v37 = [v8 iconPlacement];
      v57 = v33;
      v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
      v39 = [v37 excludingPlacements:v38];
      [v8 setIconPlacement:v39];

      v40 = [v8 rawPlacement];
      v56 = v33;
      v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
      v42 = [v40 excludingPlacements:v41];
      [v8 setRawPlacement:v42];

      [v20 addObject:v33];
    }
  }

  v43 = [v7 typePlacement];
  v55[0] = v43;
  v44 = [v8 signalStrengthPlacement];
  v55[1] = v44;
  v45 = [v8 iconPlacement];
  v55[2] = v45;
  v46 = [v8 rawPlacement];
  v55[3] = v46;
  v55[4] = v15;
  v47 = [v7 callForwardingPlacement];
  v55[5] = v47;
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:6];
  [v20 addObjectsFromArray:v48];

  v49 = [a1 groupWithPriority:0 placements:v20];
  v50 = v49[4];
  v49[4] = v7;
  v51 = v7;

  v52 = v49[5];
  v49[5] = v8;

  return v49;
}

+ (_UIStatusBarDisplayItemPlacementNetworkGroup)groupWithHighPriority:(int64_t)a3 lowPriority:(int64_t)a4 cellularItemClass:(Class)a5 wifiItemClass:(Class)a6 cellularTypeClass:(Class)a7 includeCellularName:(BOOL)a8 allowDualNetwork:(BOOL)a9
{
  v9 = a8;
  v32[1] = *MEMORY[0x1E69E9840];
  if (a4 >= a3)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:a1 file:@"_UIStatusBarDisplayItemPlacementNetworkGroup.m" lineNumber:85 description:@"The lowPriority should be smaller than the highPriority"];
  }

  if (a7)
  {
    v16 = a7;
  }

  else
  {
    v16 = a5;
  }

  v17 = [(objc_class *)a5 groupWithHighPriority:a3 lowPriority:a4 typeClass:v16 allowDualNetwork:a9];
  v18 = -[objc_class groupWithPriority:](a6, "groupWithPriority:", [v17 maximumPriority] + 1);
  v19 = [v18 signalStrengthPlacement];
  v20 = [v17 typePlacement];
  v32[0] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  v22 = [v19 excludingPlacements:v21];
  [v18 setSignalStrengthPlacement:v22];

  v23 = [v18 iconPlacement];
  v24 = [v17 typePlacement];
  v31 = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  v26 = [v23 excludingPlacements:v25];
  [v18 setIconPlacement:v26];

  v27 = [a1 _groupWithCellularGroup:v17 wifiGroup:v18 includeCellularName:v9];

  return v27;
}

+ (id)secondaryGroupWithHighPriority:(int64_t)a3 lowPriority:(int64_t)a4 cellularItemClass:(Class)a5 wifiItemClass:(Class)a6
{
  v35[1] = *MEMORY[0x1E69E9840];
  if (a4 >= a3)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:a1 file:@"_UIStatusBarDisplayItemPlacementNetworkGroup.m" lineNumber:99 description:@"The lowPriority should be smaller than the highPriority"];
  }

  v11 = [(objc_class *)a5 groupWithHighPriority:a3 lowPriority:a4 typeClass:a5 allowDualNetwork:0];
  v12 = -[objc_class groupWithPriority:](a6, "groupWithPriority:", [v11 maximumPriority] + 1);
  v13 = [v11 signalStrengthPlacement];
  [v13 setPriority:{objc_msgSend(v13, "priority") + objc_msgSend(v12, "maximumPriority")}];

  v14 = [v11 warningPlacement];
  [v14 setPriority:{objc_msgSend(v14, "priority") + objc_msgSend(v12, "maximumPriority")}];

  v15 = [v12 signalStrengthPlacement];
  v16 = [v11 typePlacement];
  v35[0] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
  v18 = [v15 excludingPlacements:v17];
  v19 = [v11 signalStrengthPlacement];
  v34[0] = v19;
  v20 = [v11 warningPlacement];
  v34[1] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  [v18 requiringAnyPlacements:v21];
  v22 = v32 = a1;
  [v12 setSignalStrengthPlacement:v22];

  v23 = [v12 iconPlacement];
  v24 = [v11 signalStrengthPlacement];
  v33[0] = v24;
  v25 = [v11 warningPlacement];
  v33[1] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v27 = [v23 requiringAnyPlacements:v26];
  [v12 setIconPlacement:v27];

  v28 = [v32 _groupWithCellularGroup:v11 wifiGroup:v12 includeCellularName:1];

  return v28;
}

@end