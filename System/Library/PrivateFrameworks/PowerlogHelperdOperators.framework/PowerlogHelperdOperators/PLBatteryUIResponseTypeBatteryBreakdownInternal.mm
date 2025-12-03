@interface PLBatteryUIResponseTypeBatteryBreakdownInternal
- (BOOL)showRootNodesInInternal;
- (void)filterEnergyEntries:(id)entries;
- (void)populateInternalRootNodeEnergyKeys:(id)keys;
@end

@implementation PLBatteryUIResponseTypeBatteryBreakdownInternal

- (void)populateInternalRootNodeEnergyKeys:(id)keys
{
  v63 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  array = [MEMORY[0x277CBEB18] array];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v39 = keysCopy;
  obj = [keysCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v43 = [obj countByEnumeratingWithState:&v55 objects:v62 count:16];
  if (v43)
  {
    v41 = *v56;
    v5 = 0x277D3F000uLL;
    selfCopy = self;
    do
    {
      v6 = 0;
      do
      {
        if (*v56 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v44 = v6;
        v7 = *(*(&v55 + 1) + 8 * v6);
        if ([*(v5 + 384) debugEnabled])
        {
          v8 = objc_opt_class();
          v54[0] = MEMORY[0x277D85DD0];
          v54[1] = 3221225472;
          v54[2] = __86__PLBatteryUIResponseTypeBatteryBreakdownInternal_populateInternalRootNodeEnergyKeys___block_invoke;
          v54[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v54[4] = v8;
          if (populateInternalRootNodeEnergyKeys__defaultOnce != -1)
          {
            dispatch_once(&populateInternalRootNodeEnergyKeys__defaultOnce, v54);
          }

          if (populateInternalRootNodeEnergyKeys__classDebugEnabled == 1)
          {
            v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"energyEntry=%@", v7];
            v10 = MEMORY[0x277D3F178];
            v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeBatteryBreakdownInternal.m"];
            lastPathComponent = [v11 lastPathComponent];
            v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIResponseTypeBatteryBreakdownInternal populateInternalRootNodeEnergyKeys:]"];
            [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:29];

            v14 = PLLogCommon();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v61 = v9;
              _os_log_debug_impl(&dword_25EE51000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            self = selfCopy;
          }
        }

        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        getRootNodeIDToRootNodeEnergyKeys = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getRootNodeIDToRootNodeEnergyKeys];
        v15 = [getRootNodeIDToRootNodeEnergyKeys countByEnumeratingWithState:&v50 objects:v59 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v51;
          v46 = *v51;
          do
          {
            v18 = 0;
            do
            {
              if (*v51 != v17)
              {
                objc_enumerationMutation(getRootNodeIDToRootNodeEnergyKeys);
              }

              v19 = *(*(&v50 + 1) + 8 * v18);
              if ([*(v5 + 384) debugEnabled])
              {
                v20 = objc_opt_class();
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __86__PLBatteryUIResponseTypeBatteryBreakdownInternal_populateInternalRootNodeEnergyKeys___block_invoke_20;
                block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                block[4] = v20;
                if (populateInternalRootNodeEnergyKeys__defaultOnce_18 != -1)
                {
                  dispatch_once(&populateInternalRootNodeEnergyKeys__defaultOnce_18, block);
                }

                if (populateInternalRootNodeEnergyKeys__classDebugEnabled_19 == 1)
                {
                  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"rootNodeName=%@", v19];
                  v22 = MEMORY[0x277D3F178];
                  v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeBatteryBreakdownInternal.m"];
                  lastPathComponent2 = [v23 lastPathComponent];
                  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIResponseTypeBatteryBreakdownInternal populateInternalRootNodeEnergyKeys:]"];
                  [v22 logMessage:v21 fromFile:lastPathComponent2 fromFunction:v25 fromLineNumber:32];

                  v26 = PLLogCommon();
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v61 = v21;
                    _os_log_debug_impl(&dword_25EE51000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }

                  v5 = 0x277D3F000uLL;
                  v17 = v46;
                }
              }

              getRootNodeIDToRootNodeEnergyKeys2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getRootNodeIDToRootNodeEnergyKeys];
              v28 = [getRootNodeIDToRootNodeEnergyKeys2 objectForKeyedSubscript:v19];

              if ([*(v5 + 384) debugEnabled])
              {
                v29 = objc_opt_class();
                v48[0] = MEMORY[0x277D85DD0];
                v48[1] = 3221225472;
                v48[2] = __86__PLBatteryUIResponseTypeBatteryBreakdownInternal_populateInternalRootNodeEnergyKeys___block_invoke_26;
                v48[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                v48[4] = v29;
                if (populateInternalRootNodeEnergyKeys__defaultOnce_24 != -1)
                {
                  dispatch_once(&populateInternalRootNodeEnergyKeys__defaultOnce_24, v48);
                }

                if (populateInternalRootNodeEnergyKeys__classDebugEnabled_25 == 1)
                {
                  v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"rootNodeEnergyKey=%@", v28];
                  v31 = MEMORY[0x277D3F178];
                  v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeBatteryBreakdownInternal.m"];
                  lastPathComponent3 = [v32 lastPathComponent];
                  v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIResponseTypeBatteryBreakdownInternal populateInternalRootNodeEnergyKeys:]"];
                  [v31 logMessage:v30 fromFile:lastPathComponent3 fromFunction:v34 fromLineNumber:35];

                  v35 = PLLogCommon();
                  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v61 = v30;
                    _os_log_debug_impl(&dword_25EE51000, v35, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }

                  self = selfCopy;
                  v5 = 0x277D3F000;
                  v17 = v46;
                }
              }

              v36 = [v7 objectForKeyedSubscript:v19];
              if (v36)
              {
                v37 = v36;
              }

              else
              {
                v37 = &unk_2871479B0;
              }

              [v7 setObject:v37 forKeyedSubscript:v28];

              ++v18;
            }

            while (v16 != v18);
            v16 = [getRootNodeIDToRootNodeEnergyKeys countByEnumeratingWithState:&v50 objects:v59 count:16];
          }

          while (v16);
        }

        [array addObject:v7];
        v6 = v44 + 1;
      }

      while (v44 + 1 != v43);
      v43 = [obj countByEnumeratingWithState:&v55 objects:v62 count:16];
    }

    while (v43);
  }

  [v39 setObject:array forKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v38 = *MEMORY[0x277D85DE8];
}

uint64_t __86__PLBatteryUIResponseTypeBatteryBreakdownInternal_populateInternalRootNodeEnergyKeys___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  populateInternalRootNodeEnergyKeys__classDebugEnabled = result;
  return result;
}

uint64_t __86__PLBatteryUIResponseTypeBatteryBreakdownInternal_populateInternalRootNodeEnergyKeys___block_invoke_20(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  populateInternalRootNodeEnergyKeys__classDebugEnabled_19 = result;
  return result;
}

uint64_t __86__PLBatteryUIResponseTypeBatteryBreakdownInternal_populateInternalRootNodeEnergyKeys___block_invoke_26(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  populateInternalRootNodeEnergyKeys__classDebugEnabled_25 = result;
  return result;
}

- (BOOL)showRootNodesInInternal
{
  if (showRootNodesInInternal_onceToken_0 != -1)
  {
    [PLBatteryUIResponseTypeBatteryBreakdownInternal showRootNodesInInternal];
  }

  v3 = showRootNodesInInternal_val_0;
  if (showRootNodesInInternal_val_0)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

uint64_t __74__PLBatteryUIResponseTypeBatteryBreakdownInternal_showRootNodesInInternal__block_invoke()
{
  v0 = *MEMORY[0x277CBF040];
  v1 = *MEMORY[0x277CBF030];
  +[PLUtilities containerPath];
  v2 = _CFPreferencesCopyValueWithContainer();
  showRootNodesInInternal_val_0 = v2;

  return MEMORY[0x2821F96F8](v2);
}

- (void)filterEnergyEntries:(id)entries
{
  v24 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  if (![(PLBatteryUIResponseTypeBatteryBreakdownInternal *)self showRootNodesInInternal])
  {
    v17 = entriesCopy;
    v18 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = [entriesCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          v11 = [v10 objectForKeyedSubscript:@"PLBatteryUIAppTypeKey"];
          intValue = [v11 intValue];

          if (intValue != 5)
          {
            v13 = [v10 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            getIntermediateRootNodes = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getIntermediateRootNodes];
            v15 = [getIntermediateRootNodes containsObject:v13];

            if ((v15 & 1) == 0 && [v13 rangeOfString:@"AssertionPID"] == 0x7FFFFFFFFFFFFFFFLL)
            {
              [v18 addObject:v10];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    entriesCopy = v17;
    [v17 setObject:v18 forKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end