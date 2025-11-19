@interface PLAccountingEnergyEstimateEventEntry
+ (id)entryKey;
+ (void)load;
- (PLAccountingEnergyEstimateEventEntry)initWithNodeID:(id)a3 withRootNodeID:(id)a4 withParentEntryID:(int)a5 withNumAncestors:(int)a6 withEnergy:(double)a7 withRange:(id)a8 withEntryDate:(id)a9;
- (double)correctionEnergy;
- (double)terminationRatio;
- (int)numAncestors;
- (int)parentEntryID;
- (void)setCorrectionEnergy:(double)a3;
- (void)setTerminationRatio:(double)a3;
@end

@implementation PLAccountingEnergyEstimateEventEntry

+ (id)entryKey
{
  if (entryKey_onceToken_1 != -1)
  {
    +[PLAccountingEnergyEstimateEventEntry entryKey];
  }

  v3 = entryKey_entryKey_1;

  return v3;
}

- (int)numAncestors
{
  v2 = [(PLEntry *)self objectForKeyedSubscript:*MEMORY[0x277D3F378]];
  v3 = [v2 intValue];

  return v3;
}

- (double)terminationRatio
{
  v2 = [(PLEntry *)self objectForKeyedSubscript:*MEMORY[0x277D3F3A8]];
  [v2 doubleValue];
  v4 = v3 / 100.0;

  return v4;
}

- (double)correctionEnergy
{
  v2 = [(PLEntry *)self objectForKeyedSubscript:*MEMORY[0x277D3F348]];
  [v2 doubleValue];
  v4 = v3 / 1000.0;

  return v4;
}

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLAccountingEnergyEstimateEventEntry;
  objc_msgSendSuper2(&v2, sel_load);
}

uint64_t __48__PLAccountingEnergyEstimateEventEntry_entryKey__block_invoke()
{
  entryKey_entryKey_1 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5D8] andName:*MEMORY[0x277D3F338]];

  return MEMORY[0x2821F96F8]();
}

- (PLAccountingEnergyEstimateEventEntry)initWithNodeID:(id)a3 withRootNodeID:(id)a4 withParentEntryID:(int)a5 withNumAncestors:(int)a6 withEnergy:(double)a7 withRange:(id)a8 withEntryDate:(id)a9
{
  v78 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a8;
  v19 = a9;
  v20 = [v17 intValue];
  v21 = 0;
  if ((a5 & 0x80000000) == 0 && v20 >= 1)
  {
    v74.receiver = self;
    v74.super_class = PLAccountingEnergyEstimateEventEntry;
    v22 = [(PLAccountingEnergyEventEntry *)&v74 initWithNodeID:v16 withEnergy:v18 withRange:v19 withEntryDate:a7];
    if (v22)
    {
      v23 = +[PLAccountingDistributionRuleManager sharedInstance];
      v24 = [v23 distributionRuleForRootNodeID:v17 andNodeID:v16];

      if (v24)
      {
        v62 = [v24 entryID];
      }

      else
      {
        v62 = 0;
      }

      v25 = +[PLAccountingQualificationRuleManager sharedInstance];
      v26 = [v25 qualificationRulesForRootNodeID:v17];

      v64 = a5;
      v65 = a6;
      v63 = v26;
      if (v26 && [v26 count])
      {
        v57 = v24;
        v58 = v19;
        v59 = v18;
        v60 = v17;
        v61 = v16;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v27 = v26;
        v28 = [v27 countByEnumeratingWithState:&v70 objects:v77 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = 0;
          v31 = *v71;
          v32 = 0x277D3F000uLL;
          v66 = *v71;
          do
          {
            v33 = 0;
            v67 = v29;
            do
            {
              if (*v71 != v31)
              {
                objc_enumerationMutation(v27);
              }

              v34 = *(*(&v70 + 1) + 8 * v33);
              if ([*(v32 + 384) debugEnabled])
              {
                v35 = objc_opt_class();
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __140__PLAccountingEnergyEstimateEventEntry_initWithNodeID_withRootNodeID_withParentEntryID_withNumAncestors_withEnergy_withRange_withEntryDate___block_invoke;
                block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                block[4] = v35;
                if (initWithNodeID_withRootNodeID_withParentEntryID_withNumAncestors_withEnergy_withRange_withEntryDate__defaultOnce != -1)
                {
                  dispatch_once(&initWithNodeID_withRootNodeID_withParentEntryID_withNumAncestors_withEnergy_withRange_withEntryDate__defaultOnce, block);
                }

                if (initWithNodeID_withRootNodeID_withParentEntryID_withNumAncestors_withEnergy_withRange_withEntryDate__classDebugEnabled == 1)
                {
                  v36 = v27;
                  v37 = v22;
                  v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"qualificationRule=%@", v34];
                  v39 = MEMORY[0x277D3F178];
                  v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Entries/Energy/PLAccountingEnergyEstimateEventEntry.m"];
                  v41 = [v40 lastPathComponent];
                  v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEnergyEstimateEventEntry initWithNodeID:withRootNodeID:withParentEntryID:withNumAncestors:withEnergy:withRange:withEntryDate:]"];
                  [v39 logMessage:v38 fromFile:v41 fromFunction:v42 fromLineNumber:60];

                  v43 = PLLogCommon();
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v76 = v38;
                    _os_log_debug_impl(&dword_25EDCD000, v43, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }

                  v22 = v37;
                  v27 = v36;
                  v29 = v67;
                  v31 = v66;
                  v32 = 0x277D3F000uLL;
                }
              }

              v30 += 1 << ([v34 entryID] - 1);
              if ([*(v32 + 384) debugEnabled])
              {
                v44 = objc_opt_class();
                v68[0] = MEMORY[0x277D85DD0];
                v68[1] = 3221225472;
                v68[2] = __140__PLAccountingEnergyEstimateEventEntry_initWithNodeID_withRootNodeID_withParentEntryID_withNumAncestors_withEnergy_withRange_withEntryDate___block_invoke_22;
                v68[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                v68[4] = v44;
                if (initWithNodeID_withRootNodeID_withParentEntryID_withNumAncestors_withEnergy_withRange_withEntryDate__defaultOnce_20 != -1)
                {
                  dispatch_once(&initWithNodeID_withRootNodeID_withParentEntryID_withNumAncestors_withEnergy_withRange_withEntryDate__defaultOnce_20, v68);
                }

                if (initWithNodeID_withRootNodeID_withParentEntryID_withNumAncestors_withEnergy_withRange_withEntryDate__classDebugEnabled_21 == 1)
                {
                  v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"qualificationRuleIDSum=%llu", v30];
                  v46 = MEMORY[0x277D3F178];
                  v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Entries/Energy/PLAccountingEnergyEstimateEventEntry.m"];
                  v48 = [v47 lastPathComponent];
                  v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEnergyEstimateEventEntry initWithNodeID:withRootNodeID:withParentEntryID:withNumAncestors:withEnergy:withRange:withEntryDate:]"];
                  [v46 logMessage:v45 fromFile:v48 fromFunction:v49 fromLineNumber:64];

                  v50 = PLLogCommon();
                  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v76 = v45;
                    _os_log_debug_impl(&dword_25EDCD000, v50, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }

                  v29 = v67;
                  v31 = v66;
                  v32 = 0x277D3F000;
                }
              }

              ++v33;
            }

            while (v29 != v33);
            v29 = [v27 countByEnumeratingWithState:&v70 objects:v77 count:16];
          }

          while (v29);
        }

        else
        {
          v30 = 0;
        }

        v17 = v60;
        v16 = v61;
        v19 = v58;
        v18 = v59;
        v24 = v57;
      }

      else
      {
        v30 = 0;
      }

      [(PLEntry *)v22 setObject:v17 forKeyedSubscript:*MEMORY[0x277D3F398]];
      v51 = [MEMORY[0x277CCABB0] numberWithInt:v64];
      [(PLEntry *)v22 setObject:v51 forKeyedSubscript:*MEMORY[0x277D3F380]];

      v52 = [MEMORY[0x277CCABB0] numberWithInt:v65];
      [(PLEntry *)v22 setObject:v52 forKeyedSubscript:*MEMORY[0x277D3F378]];

      v53 = [MEMORY[0x277CCABB0] numberWithInt:v62];
      [(PLEntry *)v22 setObject:v53 forKeyedSubscript:*MEMORY[0x277D3F358]];

      v54 = [MEMORY[0x277CCABB0] numberWithLongLong:v30];
      [(PLEntry *)v22 setObject:v54 forKeyedSubscript:*MEMORY[0x277D3F390]];

      [(PLEntry *)v22 setObject:&unk_2870F8618 forKeyedSubscript:*MEMORY[0x277D3F348]];
      [(PLEntry *)v22 setObject:&unk_2870F8630 forKeyedSubscript:*MEMORY[0x277D3F3A8]];
      v22->_isRootNodeEnergyAggregated = 0;
    }

    self = v22;
    v21 = self;
  }

  v55 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t __140__PLAccountingEnergyEstimateEventEntry_initWithNodeID_withRootNodeID_withParentEntryID_withNumAncestors_withEnergy_withRange_withEntryDate___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  initWithNodeID_withRootNodeID_withParentEntryID_withNumAncestors_withEnergy_withRange_withEntryDate__classDebugEnabled = result;
  return result;
}

uint64_t __140__PLAccountingEnergyEstimateEventEntry_initWithNodeID_withRootNodeID_withParentEntryID_withNumAncestors_withEnergy_withRange_withEntryDate___block_invoke_22(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  initWithNodeID_withRootNodeID_withParentEntryID_withNumAncestors_withEnergy_withRange_withEntryDate__classDebugEnabled_21 = result;
  return result;
}

- (int)parentEntryID
{
  v2 = [(PLEntry *)self objectForKeyedSubscript:*MEMORY[0x277D3F380]];
  v3 = [v2 intValue];

  return v3;
}

- (void)setCorrectionEnergy:(double)a3
{
  v5 = [MEMORY[0x277D3F2A0] sharedCore];
  v6 = [v5 storage];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__PLAccountingEnergyEstimateEventEntry_setCorrectionEnergy___block_invoke;
  v7[3] = &unk_279A55D20;
  v7[4] = self;
  *&v7[5] = a3;
  [v6 blockingUpdateEntry:self withBlock:v7];
}

void __60__PLAccountingEnergyEstimateEventEntry_setCorrectionEnergy___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithLong:llround(*(a1 + 40) * 1000.0)];
  [*(a1 + 32) setObject:v2 forKeyedSubscript:*MEMORY[0x277D3F348]];
}

- (void)setTerminationRatio:(double)a3
{
  v5 = [MEMORY[0x277D3F2A0] sharedCore];
  v6 = [v5 storage];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__PLAccountingEnergyEstimateEventEntry_setTerminationRatio___block_invoke;
  v7[3] = &unk_279A55D20;
  v7[4] = self;
  *&v7[5] = a3;
  [v6 blockingUpdateEntry:self withBlock:v7];
}

void __60__PLAccountingEnergyEstimateEventEntry_setTerminationRatio___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithLong:llround(*(a1 + 40) * 100.0)];
  [*(a1 + 32) setObject:v2 forKeyedSubscript:*MEMORY[0x277D3F3A8]];
}

@end