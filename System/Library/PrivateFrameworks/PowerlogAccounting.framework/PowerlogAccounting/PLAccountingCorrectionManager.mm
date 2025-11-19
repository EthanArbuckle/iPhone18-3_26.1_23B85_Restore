@interface PLAccountingCorrectionManager
+ (double)disableCorrection;
+ (double)freeTimerInterval;
- (NSMutableDictionary)parentEntryIDToChildEnergyEstimates;
- (PLAccountingCorrectionManagerDelegate)delegate;
- (id)dependencyIDsForOwner:(id)a3;
- (id)ownerIDsForDependency:(id)a3;
- (void)addEnergyMeasurement:(id)a3;
- (void)addRootEnergyEstimate:(id)a3 withNow:(id)a4;
- (void)correctChildEnergyEstimate:(id)a3 withParentEnergyEstimate:(id)a4 withNow:(id)a5;
- (void)didCorrectEnergyEstimate:(id)a3;
- (void)reloadDependenciesNewerThanDate:(id)a3;
@end

@implementation PLAccountingCorrectionManager

+ (double)disableCorrection
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__PLAccountingCorrectionManager_disableCorrection__block_invoke;
  v4[3] = &unk_279A55E58;
  v5 = @"PLAccountingCorrectionManager_disableCorrection";
  v6 = 0;
  if (disableCorrection_defaultOnce != -1)
  {
    dispatch_once(&disableCorrection_defaultOnce, v4);
  }

  LOBYTE(v2) = disableCorrection_objectForKey;

  return v2;
}

- (NSMutableDictionary)parentEntryIDToChildEnergyEstimates
{
  parentEntryIDToChildEnergyEstimates = self->_parentEntryIDToChildEnergyEstimates;
  if (!parentEntryIDToChildEnergyEstimates)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v5 = self->_parentEntryIDToChildEnergyEstimates;
    self->_parentEntryIDToChildEnergyEstimates = v4;

    parentEntryIDToChildEnergyEstimates = self->_parentEntryIDToChildEnergyEstimates;
  }

  return parentEntryIDToChildEnergyEstimates;
}

- (PLAccountingCorrectionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (double)freeTimerInterval
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__PLAccountingCorrectionManager_freeTimerInterval__block_invoke;
  v4[3] = &unk_279A55D20;
  v5 = @"PLAccountingCorrectionManager_freeTimerInterval";
  v6 = 0x409C200000000000;
  if (freeTimerInterval_defaultOnce_1 != -1)
  {
    dispatch_once(&freeTimerInterval_defaultOnce_1, v4);
  }

  v2 = *&freeTimerInterval_objectForKey_1;

  return v2;
}

- (void)addRootEnergyEstimate:(id)a3 withNow:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__PLAccountingCorrectionManager_addRootEnergyEstimate_withNow___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (addRootEnergyEstimate_withNow__defaultOnce != -1)
    {
      dispatch_once(&addRootEnergyEstimate_withNow__defaultOnce, block);
    }

    if (addRootEnergyEstimate_withNow__classDebugEnabled == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"rootEnergyEstimate=%@, now=%@", v6, v7];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Correction/PLAccountingCorrectionManager.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingCorrectionManager addRootEnergyEstimate:withNow:]"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:24];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (v6 && v7)
  {
    if ([MEMORY[0x277D3F258] gasGaugeEnabled])
    {
      [objc_opt_class() disableCorrection];
      v16 = v15 == 0.0;
    }

    else
    {
      v16 = 0;
    }

    v17 = [[PLAccountingCorrectionOwner alloc] initWithRootEnergyEstimate:v6];
    [v6 energy];
    v19 = v18;
    +[PLAccountingEngine minEnergy];
    if (v19 <= v20 || !v16)
    {
      if ([v6 writeToDB])
      {
        [v6 setCorrectionDate:v7];
        v22 = [(PLAccountingCorrectionManager *)self delegate];
        [v22 didCorrectEnergyEstimate:v6];
      }
    }

    else
    {
      [(PLAccountingOwnerDependencyManager *)self addOwner:v17];
    }

    if (v16)
    {
      [(PLAccountingCorrectionManager *)self addEnergyMeasurement:v6];
      [(PLAccountingOwnerDependencyManager *)self notifyDependenciesWithOwner:v17];
    }
  }
}

uint64_t __63__PLAccountingCorrectionManager_addRootEnergyEstimate_withNow___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addRootEnergyEstimate_withNow__classDebugEnabled = result;
  return result;
}

- (void)addEnergyMeasurement:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __54__PLAccountingCorrectionManager_addEnergyMeasurement___block_invoke;
    v16 = &__block_descriptor_40_e5_v8__0lu32l8;
    v17 = v5;
    if (addEnergyMeasurement__defaultOnce != -1)
    {
      dispatch_once(&addEnergyMeasurement__defaultOnce, &block);
    }

    if (addEnergyMeasurement__classDebugEnabled == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"energyMeasurement=%@", v4, block, v14, v15, v16, v17];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Correction/PLAccountingCorrectionManager.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingCorrectionManager addEnergyMeasurement:]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:49];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v12 = [[PLAccountingCorrectionDependency alloc] initWithEnergyEvent:v4];
  [(PLAccountingOwnerDependencyManager *)self addDependency:v12];
  [(PLAccountingOwnerDependencyManager *)self notifyOwnersWithDependency:v12];
}

uint64_t __54__PLAccountingCorrectionManager_addEnergyMeasurement___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addEnergyMeasurement__classDebugEnabled = result;
  return result;
}

- (void)correctChildEnergyEstimate:(id)a3 withParentEnergyEstimate:(id)a4 withNow:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __93__PLAccountingCorrectionManager_correctChildEnergyEstimate_withParentEnergyEstimate_withNow___block_invoke;
    v71[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v71[4] = v11;
    if (correctChildEnergyEstimate_withParentEnergyEstimate_withNow__defaultOnce != -1)
    {
      dispatch_once(&correctChildEnergyEstimate_withParentEnergyEstimate_withNow__defaultOnce, v71);
    }

    if (correctChildEnergyEstimate_withParentEnergyEstimate_withNow__classDebugEnabled == 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"childEnergyEstimate=%@, parentEnergyEstimate=%@", v8, v9];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Correction/PLAccountingCorrectionManager.m"];
      v15 = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingCorrectionManager correctChildEnergyEstimate:withParentEnergyEstimate:withNow:]"];
      [v13 logMessage:v12 fromFile:v15 fromFunction:v16 fromLineNumber:59];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (v9 && [v8 writeToDB])
  {
    v18 = [v9 correctionDate];

    v19 = [MEMORY[0x277D3F180] debugEnabled];
    if (v18)
    {
      if (v19)
      {
        v20 = objc_opt_class();
        v70[0] = MEMORY[0x277D85DD0];
        v70[1] = 3221225472;
        v70[2] = __93__PLAccountingCorrectionManager_correctChildEnergyEstimate_withParentEnergyEstimate_withNow___block_invoke_26;
        v70[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v70[4] = v20;
        if (correctChildEnergyEstimate_withParentEnergyEstimate_withNow__defaultOnce_24 != -1)
        {
          dispatch_once(&correctChildEnergyEstimate_withParentEnergyEstimate_withNow__defaultOnce_24, v70);
        }

        if (correctChildEnergyEstimate_withParentEnergyEstimate_withNow__classDebugEnabled_25 == 1)
        {
          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"parent has already been corrected"];
          v22 = MEMORY[0x277D3F178];
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Correction/PLAccountingCorrectionManager.m"];
          v24 = [v23 lastPathComponent];
          v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingCorrectionManager correctChildEnergyEstimate:withParentEnergyEstimate:withNow:]"];
          [v22 logMessage:v21 fromFile:v24 fromFunction:v25 fromLineNumber:66];

          v26 = PLLogCommon();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            [PLAccountingDependency activate];
          }
        }
      }

      [v9 energy];
      v28 = v27;
      v29 = 0.0;
      if (v28 > 0.0)
      {
        [v8 energy];
        v31 = v30;
        [v9 correctionEnergy];
        v33 = v32;
        [v9 energy];
        v29 = v31 * (v33 / v34);
      }

      [v8 setCorrectionEnergy:v29];
      [v8 setCorrectionDate:v10];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v35 = objc_opt_class();
        v69[0] = MEMORY[0x277D85DD0];
        v69[1] = 3221225472;
        v69[2] = __93__PLAccountingCorrectionManager_correctChildEnergyEstimate_withParentEnergyEstimate_withNow___block_invoke_32;
        v69[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v69[4] = v35;
        if (correctChildEnergyEstimate_withParentEnergyEstimate_withNow__defaultOnce_30 != -1)
        {
          dispatch_once(&correctChildEnergyEstimate_withParentEnergyEstimate_withNow__defaultOnce_30, v69);
        }

        if (correctChildEnergyEstimate_withParentEnergyEstimate_withNow__classDebugEnabled_31 == 1)
        {
          v36 = MEMORY[0x277CCACA8];
          [v8 correctionEnergy];
          v38 = v37;
          v39 = [v8 correctionDate];
          v40 = [v36 stringWithFormat:@"childEnergyEstimate.correctionEnergy=%f, childEnergyEstimate.correctionDate=%@", v38, v39];

          v41 = MEMORY[0x277D3F178];
          v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Correction/PLAccountingCorrectionManager.m"];
          v43 = [v42 lastPathComponent];
          v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingCorrectionManager correctChildEnergyEstimate:withParentEnergyEstimate:withNow:]"];
          [v41 logMessage:v40 fromFile:v43 fromFunction:v44 fromLineNumber:69];

          v45 = PLLogCommon();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            [PLAccountingDependency activate];
          }
        }
      }

      v46 = [(PLAccountingCorrectionManager *)self delegate];
      [v46 didCorrectEnergyEstimate:v8];
    }

    else
    {
      if (v19)
      {
        v47 = objc_opt_class();
        v68[0] = MEMORY[0x277D85DD0];
        v68[1] = 3221225472;
        v68[2] = __93__PLAccountingCorrectionManager_correctChildEnergyEstimate_withParentEnergyEstimate_withNow___block_invoke_38;
        v68[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v68[4] = v47;
        if (correctChildEnergyEstimate_withParentEnergyEstimate_withNow__defaultOnce_36 != -1)
        {
          dispatch_once(&correctChildEnergyEstimate_withParentEnergyEstimate_withNow__defaultOnce_36, v68);
        }

        if (correctChildEnergyEstimate_withParentEnergyEstimate_withNow__classDebugEnabled_37 == 1)
        {
          v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"parent has not yet been corrected"];
          v49 = MEMORY[0x277D3F178];
          v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Correction/PLAccountingCorrectionManager.m"];
          v51 = [v50 lastPathComponent];
          v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingCorrectionManager correctChildEnergyEstimate:withParentEnergyEstimate:withNow:]"];
          [v49 logMessage:v48 fromFile:v51 fromFunction:v52 fromLineNumber:73];

          v53 = PLLogCommon();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
          {
            [PLAccountingDependency activate];
          }
        }
      }

      v54 = [(PLAccountingOwnerDependencyManager *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __93__PLAccountingCorrectionManager_correctChildEnergyEstimate_withParentEnergyEstimate_withNow___block_invoke_42;
      block[3] = &unk_279A55D98;
      block[4] = self;
      v66 = v9;
      v67 = v8;
      dispatch_async(v54, block);

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v55 = objc_opt_class();
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __93__PLAccountingCorrectionManager_correctChildEnergyEstimate_withParentEnergyEstimate_withNow___block_invoke_2;
        v64[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v64[4] = v55;
        if (correctChildEnergyEstimate_withParentEnergyEstimate_withNow__defaultOnce_45 != -1)
        {
          dispatch_once(&correctChildEnergyEstimate_withParentEnergyEstimate_withNow__defaultOnce_45, v64);
        }

        if (correctChildEnergyEstimate_withParentEnergyEstimate_withNow__classDebugEnabled_46 == 1)
        {
          v56 = MEMORY[0x277CCACA8];
          v57 = [(PLAccountingCorrectionManager *)self parentEntryIDToChildEnergyEstimates];
          v58 = [v56 stringWithFormat:@"parentEntryIDToChildEnergyEstimates=%@", v57];

          v59 = MEMORY[0x277D3F178];
          v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Correction/PLAccountingCorrectionManager.m"];
          v61 = [v60 lastPathComponent];
          v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingCorrectionManager correctChildEnergyEstimate:withParentEnergyEstimate:withNow:]"];
          [v59 logMessage:v58 fromFile:v61 fromFunction:v62 fromLineNumber:83];

          v63 = PLLogCommon();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
          {
            [PLAccountingDependency activate];
          }
        }
      }
    }
  }
}

uint64_t __93__PLAccountingCorrectionManager_correctChildEnergyEstimate_withParentEnergyEstimate_withNow___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  correctChildEnergyEstimate_withParentEnergyEstimate_withNow__classDebugEnabled = result;
  return result;
}

uint64_t __93__PLAccountingCorrectionManager_correctChildEnergyEstimate_withParentEnergyEstimate_withNow___block_invoke_26(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  correctChildEnergyEstimate_withParentEnergyEstimate_withNow__classDebugEnabled_25 = result;
  return result;
}

uint64_t __93__PLAccountingCorrectionManager_correctChildEnergyEstimate_withParentEnergyEstimate_withNow___block_invoke_32(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  correctChildEnergyEstimate_withParentEnergyEstimate_withNow__classDebugEnabled_31 = result;
  return result;
}

uint64_t __93__PLAccountingCorrectionManager_correctChildEnergyEstimate_withParentEnergyEstimate_withNow___block_invoke_38(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  correctChildEnergyEstimate_withParentEnergyEstimate_withNow__classDebugEnabled_37 = result;
  return result;
}

void __93__PLAccountingCorrectionManager_correctChildEnergyEstimate_withParentEnergyEstimate_withNow___block_invoke_42(uint64_t a1)
{
  v2 = [*(a1 + 32) parentEntryIDToChildEnergyEstimates];
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(a1 + 40), "entryID")}];
  v6 = [v2 objectForKeyedSubscript:v3];

  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v4 = [*(a1 + 32) parentEntryIDToChildEnergyEstimates];
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(a1 + 40), "entryID")}];
    [v4 setObject:v6 forKeyedSubscript:v5];
  }

  [v6 addObject:*(a1 + 48)];
}

uint64_t __93__PLAccountingCorrectionManager_correctChildEnergyEstimate_withParentEnergyEstimate_withNow___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  correctChildEnergyEstimate_withParentEnergyEstimate_withNow__classDebugEnabled_46 = result;
  return result;
}

uint64_t __50__PLAccountingCorrectionManager_disableCorrection__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] BOOLForKey:*(a1 + 32) ifNotSet:*(a1 + 40)];
  disableCorrection_objectForKey = result;
  return result;
}

uint64_t __50__PLAccountingCorrectionManager_freeTimerInterval__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] doubleForKey:*(a1 + 32) ifNotSet:*(a1 + 40)];
  freeTimerInterval_objectForKey_1 = v2;
  return result;
}

- (void)reloadDependenciesNewerThanDate:(id)a3
{
  v67[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = 0x277D3F000uLL;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __65__PLAccountingCorrectionManager_reloadDependenciesNewerThanDate___block_invoke;
    v63[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v63[4] = v6;
    if (reloadDependenciesNewerThanDate__defaultOnce_1 != -1)
    {
      dispatch_once(&reloadDependenciesNewerThanDate__defaultOnce_1, v63);
    }

    if (reloadDependenciesNewerThanDate__classDebugEnabled_1 == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"date=%@", v4];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Correction/PLAccountingCorrectionManager.m"];
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingCorrectionManager reloadDependenciesNewerThanDate:]"];
      [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:97];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (v4)
  {
    v13 = [MEMORY[0x277CBEAA8] distantFuture];
    v14 = [v4 isEqualToDate:v13];

    if ((v14 & 1) == 0)
    {
      v15 = objc_alloc(MEMORY[0x277D3F260]);
      v16 = MEMORY[0x277CCABB0];
      v54 = v4;
      [v4 timeIntervalSince1970];
      v17 = [v16 numberWithDouble:?];
      v18 = [v15 initWithKey:@"timestampEnd" withValue:v17 withComparisonOperation:3];

      v19 = [MEMORY[0x277D3F2A0] sharedCore];
      v20 = [v19 storage];
      v53 = v18;
      v67[0] = v18;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:1];
      v22 = [v20 entriesForKey:@"PLBatteryAgent_EventInterval_GasGauge" withComparisons:v21];

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v23 = objc_opt_class();
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __65__PLAccountingCorrectionManager_reloadDependenciesNewerThanDate___block_invoke_71;
        v62[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v62[4] = v23;
        if (reloadDependenciesNewerThanDate__defaultOnce_69 != -1)
        {
          dispatch_once(&reloadDependenciesNewerThanDate__defaultOnce_69, v62);
        }

        if (reloadDependenciesNewerThanDate__classDebugEnabled_70 == 1)
        {
          v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"gasGaugeEntries=%@", v22];
          v25 = MEMORY[0x277D3F178];
          v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Correction/PLAccountingCorrectionManager.m"];
          v27 = [v26 lastPathComponent];
          v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingCorrectionManager reloadDependenciesNewerThanDate:]"];
          [v25 logMessage:v24 fromFile:v27 fromFunction:v28 fromLineNumber:105];

          v29 = PLLogCommon();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            [PLAccountingDependency activate];
          }
        }
      }

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v30 = v22;
      v55 = [v30 countByEnumeratingWithState:&v58 objects:v66 count:16];
      if (v55)
      {
        v56 = *v59;
        do
        {
          v31 = 0;
          v32 = v55;
          do
          {
            if (*v59 != v56)
            {
              objc_enumerationMutation(v30);
            }

            v33 = *(*(&v58 + 1) + 8 * v31);
            if ([*(v5 + 384) debugEnabled])
            {
              v34 = objc_opt_class();
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __65__PLAccountingCorrectionManager_reloadDependenciesNewerThanDate___block_invoke_77;
              block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              block[4] = v34;
              if (reloadDependenciesNewerThanDate__defaultOnce_75 != -1)
              {
                dispatch_once(&reloadDependenciesNewerThanDate__defaultOnce_75, block);
              }

              if (reloadDependenciesNewerThanDate__classDebugEnabled_76 == 1)
              {
                v35 = v30;
                v36 = self;
                v37 = v5;
                v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"gasGaugeEntry=%@", v33];
                v39 = MEMORY[0x277D3F178];
                v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Correction/PLAccountingCorrectionManager.m"];
                v41 = [v40 lastPathComponent];
                v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingCorrectionManager reloadDependenciesNewerThanDate:]"];
                [v39 logMessage:v38 fromFile:v41 fromFunction:v42 fromLineNumber:108];

                v43 = PLLogCommon();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v65 = v38;
                  _os_log_debug_impl(&dword_25EDCD000, v43, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v5 = v37;
                self = v36;
                v30 = v35;
                v32 = v55;
              }
            }

            v44 = [v33 objectForKeyedSubscript:@"Readings"];
            v45 = [v44 intValue];

            if (v45 < 1)
            {
              v48 = 0.0;
            }

            else
            {
              v46 = [v33 objectForKeyedSubscript:@"TotalPower"];
              [v46 doubleValue];
              v48 = v47 / v45;
            }

            v49 = [(PLAccountingCorrectionManager *)self delegate];
            v50 = [v33 entryDate];
            v51 = [v33 objectForKeyedSubscript:@"timestampEnd"];
            [v49 addPowerMeasurementEventIntervalWithPower:v50 withStartDate:v51 withEndDate:v48];

            ++v31;
          }

          while (v32 != v31);
          v55 = [v30 countByEnumeratingWithState:&v58 objects:v66 count:16];
        }

        while (v55);
      }

      v4 = v54;
    }
  }

  v52 = *MEMORY[0x277D85DE8];
}

uint64_t __65__PLAccountingCorrectionManager_reloadDependenciesNewerThanDate___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reloadDependenciesNewerThanDate__classDebugEnabled_1 = result;
  return result;
}

uint64_t __65__PLAccountingCorrectionManager_reloadDependenciesNewerThanDate___block_invoke_71(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reloadDependenciesNewerThanDate__classDebugEnabled_70 = result;
  return result;
}

uint64_t __65__PLAccountingCorrectionManager_reloadDependenciesNewerThanDate___block_invoke_77(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reloadDependenciesNewerThanDate__classDebugEnabled_76 = result;
  return result;
}

uint64_t __70__PLAccountingCorrectionManager_childEnergyEstimatesForParentEntryID___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  childEnergyEstimatesForParentEntryID__classDebugEnabled = result;
  return result;
}

uint64_t __70__PLAccountingCorrectionManager_childEnergyEstimatesForParentEntryID___block_invoke_92(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  childEnergyEstimatesForParentEntryID__classDebugEnabled_91 = result;
  return result;
}

uint64_t __70__PLAccountingCorrectionManager_childEnergyEstimatesForParentEntryID___block_invoke_98(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  childEnergyEstimatesForParentEntryID__classDebugEnabled_97 = result;
  return result;
}

- (void)didCorrectEnergyEstimate:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __58__PLAccountingCorrectionManager_didCorrectEnergyEstimate___block_invoke;
    v17[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v17[4] = v5;
    if (didCorrectEnergyEstimate__defaultOnce_0 != -1)
    {
      dispatch_once(&didCorrectEnergyEstimate__defaultOnce_0, v17);
    }

    if (didCorrectEnergyEstimate__classDebugEnabled_0 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"energyEstimate=%@", v4];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Correction/PLAccountingCorrectionManager.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingCorrectionManager didCorrectEnergyEstimate:]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:136];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v12 = [(PLAccountingCorrectionManager *)self delegate];
  v13 = [v12 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__PLAccountingCorrectionManager_didCorrectEnergyEstimate___block_invoke_102;
  block[3] = &unk_279A55DC0;
  block[4] = self;
  v16 = v4;
  v14 = v4;
  dispatch_async(v13, block);
}

uint64_t __58__PLAccountingCorrectionManager_didCorrectEnergyEstimate___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didCorrectEnergyEstimate__classDebugEnabled_0 = result;
  return result;
}

void __58__PLAccountingCorrectionManager_didCorrectEnergyEstimate___block_invoke_102(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 didCorrectEnergyEstimate:*(a1 + 40)];
}

- (id)dependencyIDsForOwner:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__PLAccountingCorrectionManager_dependencyIDsForOwner___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (dependencyIDsForOwner__defaultOnce_1 != -1)
    {
      dispatch_once(&dependencyIDsForOwner__defaultOnce_1, block);
    }

    if (dependencyIDsForOwner__classDebugEnabled_1 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"owner=%@", v3];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Correction/PLAccountingCorrectionManager.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingCorrectionManager dependencyIDsForOwner:]"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:144];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (v3)
  {
    v11 = +[PLAccountingEngine deviceRootNodeIDs];
    v12 = [v11 mutableCopy];

    v13 = [v3 ID];
    [v12 removeObject:v13];

    [v12 addObject:&unk_2870F8660];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v14 = objc_opt_class();
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __55__PLAccountingCorrectionManager_dependencyIDsForOwner___block_invoke_109;
      v22[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v22[4] = v14;
      if (dependencyIDsForOwner__defaultOnce_107 != -1)
      {
        dispatch_once(&dependencyIDsForOwner__defaultOnce_107, v22);
      }

      if (dependencyIDsForOwner__classDebugEnabled_108 == 1)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"deviceRootNodeIDs=%@", v12];
        v16 = MEMORY[0x277D3F178];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Correction/PLAccountingCorrectionManager.m"];
        v18 = [v17 lastPathComponent];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingCorrectionManager dependencyIDsForOwner:]"];
        [v16 logMessage:v15 fromFile:v18 fromFunction:v19 fromLineNumber:150];

        v20 = PLLogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t __55__PLAccountingCorrectionManager_dependencyIDsForOwner___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  dependencyIDsForOwner__classDebugEnabled_1 = result;
  return result;
}

uint64_t __55__PLAccountingCorrectionManager_dependencyIDsForOwner___block_invoke_109(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  dependencyIDsForOwner__classDebugEnabled_108 = result;
  return result;
}

- (id)ownerIDsForDependency:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__PLAccountingCorrectionManager_ownerIDsForDependency___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (ownerIDsForDependency__defaultOnce_1 != -1)
    {
      dispatch_once(&ownerIDsForDependency__defaultOnce_1, block);
    }

    if (ownerIDsForDependency__classDebugEnabled_1 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"dependency=%@", v3];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Correction/PLAccountingCorrectionManager.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingCorrectionManager ownerIDsForDependency:]"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:156];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (v3)
  {
    v11 = +[PLAccountingEngine deviceRootNodeIDs];
    v12 = [v11 mutableCopy];

    v13 = [v3 ID];
    [v12 removeObject:v13];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v14 = objc_opt_class();
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __55__PLAccountingCorrectionManager_ownerIDsForDependency___block_invoke_118;
      v22[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v22[4] = v14;
      if (ownerIDsForDependency__defaultOnce_116 != -1)
      {
        dispatch_once(&ownerIDsForDependency__defaultOnce_116, v22);
      }

      if (ownerIDsForDependency__classDebugEnabled_117 == 1)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"deviceRootNodeIDs=%@", v12];
        v16 = MEMORY[0x277D3F178];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Correction/PLAccountingCorrectionManager.m"];
        v18 = [v17 lastPathComponent];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingCorrectionManager ownerIDsForDependency:]"];
        [v16 logMessage:v15 fromFile:v18 fromFunction:v19 fromLineNumber:162];

        v20 = PLLogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t __55__PLAccountingCorrectionManager_ownerIDsForDependency___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  ownerIDsForDependency__classDebugEnabled_1 = result;
  return result;
}

uint64_t __55__PLAccountingCorrectionManager_ownerIDsForDependency___block_invoke_118(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  ownerIDsForDependency__classDebugEnabled_117 = result;
  return result;
}

@end