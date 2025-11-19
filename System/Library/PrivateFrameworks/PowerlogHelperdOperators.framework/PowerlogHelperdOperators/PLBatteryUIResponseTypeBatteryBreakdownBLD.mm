@interface PLBatteryUIResponseTypeBatteryBreakdownBLD
- (void)populateBLDKeysWithEnergyEntries:(id)a3;
@end

@implementation PLBatteryUIResponseTypeBatteryBreakdownBLD

- (void)populateBLDKeysWithEnergyEntries:(id)a3
{
  v78 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v64 = [MEMORY[0x277CBEB18] array];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v61 = v3;
  obj = [v3 objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v65 = [obj countByEnumeratingWithState:&v73 objects:v77 count:16];
  if (v65)
  {
    v63 = *v74;
    do
    {
      for (i = 0; i != v65; ++i)
      {
        if (*v74 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v73 + 1) + 8 * i);
        v6 = [&unk_28714D4F0 objectAtIndexedSubscript:15];
        v7 = [v5 objectForKeyedSubscript:v6];

        if (v7)
        {
          v8 = v7;
        }

        else
        {
          v8 = &unk_287146A08;
        }

        [v5 setObject:v8 forKeyedSubscript:@"BLDEnergyAudio"];
        v9 = [&unk_28714D508 objectAtIndexedSubscript:50];
        v10 = [v5 objectForKeyedSubscript:v9];

        v72 = v10;
        if (v10)
        {
          v11 = v10;
        }

        else
        {
          v11 = &unk_287146A08;
        }

        [v5 setObject:v11 forKeyedSubscript:@"BLDEnergyBluetooth"];
        v12 = [&unk_28714D520 objectAtIndexedSubscript:37];
        v13 = [v5 objectForKeyedSubscript:v12];

        v71 = v13;
        if (v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = &unk_287146A08;
        }

        [v5 setObject:v14 forKeyedSubscript:@"BLDEnergyCellData"];
        v15 = [&unk_28714D538 objectAtIndexedSubscript:10];
        v16 = [v5 objectForKeyedSubscript:v15];

        v70 = v16;
        if (v16)
        {
          v17 = v16;
        }

        else
        {
          v17 = &unk_287146A08;
        }

        [v5 setObject:v17 forKeyedSubscript:@"BLDEnergyDisplay"];
        v18 = [&unk_28714D550 objectAtIndexedSubscript:38];
        v19 = [v5 objectForKeyedSubscript:v18];

        v69 = v19;
        if (v19)
        {
          v20 = v19;
        }

        else
        {
          v20 = &unk_287146A08;
        }

        [v5 setObject:v20 forKeyedSubscript:@"BLDEnergyVoice"];
        v21 = [&unk_28714D568 objectAtIndexedSubscript:11];
        v22 = [v5 objectForKeyedSubscript:v21];

        v68 = v22;
        if (v22)
        {
          v23 = v22;
        }

        else
        {
          v23 = &unk_287146A08;
        }

        [v5 setObject:v23 forKeyedSubscript:@"BLDEnergyWiFi"];
        v24 = [&unk_28714D580 objectAtIndexedSubscript:1];
        v25 = [v5 objectForKeyedSubscript:v24];

        v67 = v25;
        if (v25)
        {
          v26 = v25;
        }

        else
        {
          v26 = &unk_287146A08;
        }

        [v5 setObject:v26 forKeyedSubscript:@"BBCondition"];
        v27 = objc_opt_class();
        v28 = [&unk_28714D598 objectAtIndexedSubscript:2];
        v29 = [&unk_28714D5B0 objectAtIndexedSubscript:2];
        v66 = [v27 rootNodeQualificationNameWithQualificationName:v28 withRootNodeName:v29];

        v30 = [v5 objectForKeyedSubscript:v66];
        v31 = v30;
        if (v30)
        {
          v32 = v30;
        }

        else
        {
          v32 = &unk_287146A08;
        }

        [v5 setObject:v32 forKeyedSubscript:@"BLDEnergyFGCPU"];
        v33 = [&unk_28714D5C8 objectAtIndexedSubscript:2];
        v34 = [v5 objectForKeyedSubscript:v33];

        if (v34)
        {
          v35 = v34;
        }

        else
        {
          v35 = &unk_287146A08;
        }

        v36 = v35;

        v37 = MEMORY[0x277CCABB0];
        [v36 doubleValue];
        v39 = v38;
        [v31 doubleValue];
        v41 = v39 - v40;
        if (v41 < 0.0)
        {
          v41 = 0.0;
        }

        v42 = [v37 numberWithDouble:v41];
        [v5 setObject:v42 forKeyedSubscript:@"BLDEnergyBGCPU"];
        v43 = objc_opt_class();
        v44 = [&unk_28714D5E0 objectAtIndexedSubscript:2];
        v45 = [&unk_28714D5F8 objectAtIndexedSubscript:48];
        v46 = [v43 rootNodeQualificationNameWithQualificationName:v44 withRootNodeName:v45];

        v47 = [v5 objectForKeyedSubscript:v46];
        v48 = v47;
        if (v47)
        {
          v49 = v47;
        }

        else
        {
          v49 = &unk_287146A08;
        }

        [v5 setObject:v49 forKeyedSubscript:@"BLDEnergyFGLocation"];
        v50 = [&unk_28714D610 objectAtIndexedSubscript:48];
        v51 = [v5 objectForKeyedSubscript:v50];

        if (v51)
        {
          v52 = v51;
        }

        else
        {
          v52 = &unk_287146A08;
        }

        v53 = v52;

        v54 = MEMORY[0x277CCABB0];
        [v53 doubleValue];
        v56 = v55;

        [v48 doubleValue];
        v58 = v56 - v57;
        if (v58 < 0.0)
        {
          v58 = 0.0;
        }

        v59 = [v54 numberWithDouble:v58];
        [v5 setObject:v59 forKeyedSubscript:@"BLDEnergyBGLocation"];
        [v64 addObject:v5];
      }

      v65 = [obj countByEnumeratingWithState:&v73 objects:v77 count:16];
    }

    while (v65);
  }

  [v61 setObject:v64 forKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v60 = *MEMORY[0x277D85DE8];
}

@end