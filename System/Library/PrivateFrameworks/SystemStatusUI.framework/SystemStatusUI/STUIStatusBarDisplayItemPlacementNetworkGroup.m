@interface STUIStatusBarDisplayItemPlacementNetworkGroup
+ (STUIStatusBarDisplayItemPlacementNetworkGroup)groupWithHighPriority:(int64_t)a3 lowPriority:(int64_t)a4 cellularItemClass:(Class)a5 wifiItemClass:(Class)a6 cellularTypeClass:(Class)a7 includeCellularName:(BOOL)a8 allowDualNetwork:(BOOL)a9;
+ (id)_groupWithCellularGroup:(id)a3 wifiGroup:(id)a4 includeCellularName:(BOOL)a5;
+ (id)secondaryGroupWithHighPriority:(int64_t)a3 lowPriority:(int64_t)a4 cellularItemClass:(Class)a5 wifiItemClass:(Class)a6;
@end

@implementation STUIStatusBarDisplayItemPlacementNetworkGroup

+ (id)_groupWithCellularGroup:(id)a3 wifiGroup:(id)a4 includeCellularName:(BOOL)a5
{
  v5 = a5;
  v61[3] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = +[(STUIStatusBarItem *)STUIStatusBarVPNItem];
  v10 = +[STUIStatusBarDisplayItemPlacement placementWithIdentifier:priority:](STUIStatusBarDisplayItemPlacement, "placementWithIdentifier:priority:", v9, [v7 minimumPriority] + 10);

  v11 = [v7 typePlacement];
  v61[0] = v11;
  v12 = [v8 signalStrengthPlacement];
  v61[1] = v12;
  v13 = [v8 iconPlacement];
  v61[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:3];
  v15 = [v10 requiringAnyPlacements:v14];

  v16 = [v7 dualNameAndTypePlacement];

  if (v16)
  {
    v17 = [v7 dualNameAndTypePlacement];
    v60 = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
    v19 = [v15 requiringAnyPlacements:v18];

    v15 = v19;
  }

  v20 = [MEMORY[0x277CBEB18] array];
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
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
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
      v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
      v36 = [v34 excludingPlacements:v35];
      [v8 setSignalStrengthPlacement:v36];

      v37 = [v8 iconPlacement];
      v57 = v33;
      v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
      v39 = [v37 excludingPlacements:v38];
      [v8 setIconPlacement:v39];

      v40 = [v8 rawPlacement];
      v56 = v33;
      v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
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
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:6];
  [v20 addObjectsFromArray:v48];

  v49 = [a1 groupWithPriority:0 placements:v20];
  v50 = v49[4];
  v49[4] = v7;
  v51 = v7;

  v52 = v49[5];
  v49[5] = v8;

  return v49;
}

+ (STUIStatusBarDisplayItemPlacementNetworkGroup)groupWithHighPriority:(int64_t)a3 lowPriority:(int64_t)a4 cellularItemClass:(Class)a5 wifiItemClass:(Class)a6 cellularTypeClass:(Class)a7 includeCellularName:(BOOL)a8 allowDualNetwork:(BOOL)a9
{
  v9 = a8;
  v11 = a5;
  v26[1] = *MEMORY[0x277D85DE8];
  if (a7)
  {
    a5 = a7;
  }

  v13 = [(objc_class *)v11 groupWithHighPriority:a3 lowPriority:a4 typeClass:a5 allowDualNetwork:a9];
  v14 = -[objc_class groupWithPriority:](a6, "groupWithPriority:", [v13 maximumPriority] + 1);
  v15 = [v14 signalStrengthPlacement];
  v16 = [v13 typePlacement];
  v26[0] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v18 = [v15 excludingPlacements:v17];
  [v14 setSignalStrengthPlacement:v18];

  v19 = [v14 iconPlacement];
  v20 = [v13 typePlacement];
  v25 = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  v22 = [v19 excludingPlacements:v21];
  [v14 setIconPlacement:v22];

  v23 = [a1 _groupWithCellularGroup:v13 wifiGroup:v14 includeCellularName:v9];

  return v23;
}

+ (id)secondaryGroupWithHighPriority:(int64_t)a3 lowPriority:(int64_t)a4 cellularItemClass:(Class)a5 wifiItemClass:(Class)a6
{
  v29[1] = *MEMORY[0x277D85DE8];
  v7 = [(objc_class *)a5 groupWithHighPriority:a3 lowPriority:a4 typeClass:a5 allowDualNetwork:0];
  v8 = -[objc_class groupWithPriority:](a6, "groupWithPriority:", [v7 maximumPriority] + 1);
  v9 = [v7 signalStrengthPlacement];
  [v9 setPriority:{objc_msgSend(v9, "priority") + objc_msgSend(v8, "maximumPriority")}];

  v10 = [v7 warningPlacement];
  [v10 setPriority:{objc_msgSend(v10, "priority") + objc_msgSend(v8, "maximumPriority")}];

  v11 = [v8 signalStrengthPlacement];
  v12 = [v7 typePlacement];
  v29[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v14 = [v11 excludingPlacements:v13];
  v15 = [v7 signalStrengthPlacement];
  v28[0] = v15;
  v16 = [v7 warningPlacement];
  v28[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v18 = [v14 requiringAnyPlacements:v17];
  [v8 setSignalStrengthPlacement:v18];

  v19 = [v8 iconPlacement];
  v20 = [v7 signalStrengthPlacement];
  v27[0] = v20;
  v21 = [v7 warningPlacement];
  v27[1] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v23 = [v19 requiringAnyPlacements:v22];
  [v8 setIconPlacement:v23];

  v24 = [a1 _groupWithCellularGroup:v7 wifiGroup:v8 includeCellularName:1];

  return v24;
}

@end