@interface PLAccountingCorrectionOwner
- (PLAccountingCorrectionOwner)initWithRootEnergyEstimate:(id)a3;
- (id)ID;
- (id)activationDate;
- (id)range;
- (void)correct;
- (void)setRunDate:(id)a3;
@end

@implementation PLAccountingCorrectionOwner

- (id)ID
{
  v2 = [(PLAccountingCorrectionOwner *)self rootEnergyEstimate];
  v3 = [v2 nodeID];

  return v3;
}

- (id)range
{
  v2 = [(PLAccountingCorrectionOwner *)self rootEnergyEstimate];
  v3 = [v2 range];

  return v3;
}

- (id)activationDate
{
  v2 = [(PLAccountingCorrectionOwner *)self rootEnergyEstimate];
  v3 = [v2 entryDate];

  return v3;
}

- (void)correct
{
  v159 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    v152[0] = MEMORY[0x277D85DD0];
    v152[1] = 3221225472;
    v152[2] = __38__PLAccountingCorrectionOwner_correct__block_invoke;
    v152[3] = &unk_279A55D70;
    v154 = v3;
    v153 = @"correct";
    if (correct_defaultOnce != -1)
    {
      dispatch_once(&correct_defaultOnce, v152);
    }

    v4 = correct_classDebugEnabled;

    if (v4 == 1)
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = [(PLAccountingCorrectionOwner *)self rootEnergyEstimate];
      v7 = [v5 stringWithFormat:@"self.rootEnergyEstimate=%@", v6];

      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Correction/PLAccountingCorrectionOwner.m"];
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingCorrectionOwner correct]"];
      [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:49];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDistributionEventEntry initWithDistributionID:v7 withChildNodeIDToWeight:v12 withRange:?];
      }
    }
  }

  v13 = [(PLAccountingCorrectionOwner *)self rootEnergyEstimate];
  [v13 energy];
  v15 = v14;

  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v16 = [(PLAccountingOwner *)self dependencyIDToDependenciesInRange];
  v17 = [v16 allKeys];

  obj = v17;
  v119 = self;
  v116 = [v17 countByEnumeratingWithState:&v148 objects:v158 count:16];
  if (v116)
  {
    v115 = *v149;
    v18 = 0.0;
    do
    {
      v19 = 0;
      do
      {
        if (*v149 != v115)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v148 + 1) + 8 * v19);
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v21 = objc_opt_class();
          v145[0] = MEMORY[0x277D85DD0];
          v145[1] = 3221225472;
          v145[2] = __38__PLAccountingCorrectionOwner_correct__block_invoke_19;
          v145[3] = &unk_279A55D70;
          v147 = v21;
          v146 = @"correct";
          if (correct_defaultOnce_17 != -1)
          {
            dispatch_once(&correct_defaultOnce_17, v145);
          }

          v22 = correct_classDebugEnabled_18;

          if (v22 == 1)
          {
            v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"rootNodeID=%@", v20];
            v24 = MEMORY[0x277D3F178];
            v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Correction/PLAccountingCorrectionOwner.m"];
            v26 = [v25 lastPathComponent];
            v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingCorrectionOwner correct]"];
            [v24 logMessage:v23 fromFile:v26 fromFunction:v27 fromLineNumber:53];

            v28 = PLLogCommon();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v157 = v23;
              _os_log_debug_impl(&dword_25EDCD000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            self = v119;
          }
        }

        v29 = [(PLAccountingOwner *)self dependencyIDToDependenciesInRange];
        v30 = [v29 objectForKeyedSubscript:v20];

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v31 = objc_opt_class();
          v142[0] = MEMORY[0x277D85DD0];
          v142[1] = 3221225472;
          v142[2] = __38__PLAccountingCorrectionOwner_correct__block_invoke_25;
          v142[3] = &unk_279A55D70;
          v144 = v31;
          v143 = @"correct";
          if (correct_defaultOnce_23 != -1)
          {
            dispatch_once(&correct_defaultOnce_23, v142);
          }

          v32 = correct_classDebugEnabled_24;

          if (v32 == 1)
          {
            v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"dependenciesInRange=%@", v30];
            v34 = MEMORY[0x277D3F178];
            v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Correction/PLAccountingCorrectionOwner.m"];
            v36 = [v35 lastPathComponent];
            v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingCorrectionOwner correct]"];
            [v34 logMessage:v33 fromFile:v36 fromFunction:v37 fromLineNumber:56];

            v38 = PLLogCommon();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v157 = v33;
              _os_log_debug_impl(&dword_25EDCD000, v38, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            self = v119;
          }
        }

        v117 = v20;
        v118 = v19;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v39 = v30;
        v40 = [v39 countByEnumeratingWithState:&v138 objects:v155 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v139;
          v43 = 0.0;
          do
          {
            v44 = 0;
            do
            {
              if (*v139 != v42)
              {
                objc_enumerationMutation(v39);
              }

              v45 = [*(*(&v138 + 1) + 8 * v44) energyEvent];
              if ([MEMORY[0x277D3F180] debugEnabled])
              {
                v46 = objc_opt_class();
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __38__PLAccountingCorrectionOwner_correct__block_invoke_31;
                block[3] = &unk_279A55D70;
                v136 = @"correct";
                v137 = v46;
                if (correct_defaultOnce_29 != -1)
                {
                  dispatch_once(&correct_defaultOnce_29, block);
                }

                v47 = correct_classDebugEnabled_30;

                if (v47 == 1)
                {
                  v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"energyEvent=%@", v45];
                  v49 = MEMORY[0x277D3F178];
                  v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Correction/PLAccountingCorrectionOwner.m"];
                  v51 = [v50 lastPathComponent];
                  v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingCorrectionOwner correct]"];
                  [v49 logMessage:v48 fromFile:v51 fromFunction:v52 fromLineNumber:62];

                  v53 = PLLogCommon();
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v157 = v48;
                    _os_log_debug_impl(&dword_25EDCD000, v53, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }

                  self = v119;
                }
              }

              [v45 energy];
              if (v54 != 0.0)
              {
                v55 = [v45 range];
                v56 = [(PLAccountingCorrectionOwner *)self range];
                v57 = [v55 intersect:v56];
                [v57 length];
                v59 = v58;
                v60 = [v45 range];
                [v60 length];
                v62 = v59 / v61;
                [v45 energy];
                v43 = v43 + v62 * v63;

                if ([MEMORY[0x277D3F180] debugEnabled])
                {
                  v64 = objc_opt_class();
                  v132[0] = MEMORY[0x277D85DD0];
                  v132[1] = 3221225472;
                  v132[2] = __38__PLAccountingCorrectionOwner_correct__block_invoke_37;
                  v132[3] = &unk_279A55D70;
                  v133 = @"correct";
                  v134 = v64;
                  if (correct_defaultOnce_35 != -1)
                  {
                    dispatch_once(&correct_defaultOnce_35, v132);
                  }

                  v65 = correct_classDebugEnabled_36;

                  if (v65 == 1)
                  {
                    v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"totalEstimatedForNode=%f", *&v43];
                    v67 = MEMORY[0x277D3F178];
                    v68 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Correction/PLAccountingCorrectionOwner.m"];
                    v69 = [v68 lastPathComponent];
                    v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingCorrectionOwner correct]"];
                    [v67 logMessage:v66 fromFile:v69 fromFunction:v70 fromLineNumber:67];

                    v71 = PLLogCommon();
                    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v157 = v66;
                      _os_log_debug_impl(&dword_25EDCD000, v71, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                    }

                    self = v119;
                  }
                }
              }

              ++v44;
            }

            while (v41 != v44);
            v41 = [v39 countByEnumeratingWithState:&v138 objects:v155 count:16];
          }

          while (v41);
        }

        else
        {
          v43 = 0.0;
        }

        if ([v117 intValue] == 1)
        {
          v18 = v18 + v43;
        }

        else
        {
          v15 = v15 + v43;
        }

        v19 = v118 + 1;
      }

      while (v118 + 1 != v116);
      v116 = [obj countByEnumeratingWithState:&v148 objects:v158 count:16];
    }

    while (v116);
  }

  else
  {
    v18 = 0.0;
  }

  if (v15 <= 0.0)
  {
    v72 = 0.0;
  }

  else
  {
    v72 = v18 / v15;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v73 = objc_opt_class();
    v129[0] = MEMORY[0x277D85DD0];
    v129[1] = 3221225472;
    v129[2] = __38__PLAccountingCorrectionOwner_correct__block_invoke_43;
    v129[3] = &unk_279A55D70;
    v130 = @"correct";
    v131 = v73;
    if (correct_defaultOnce_41 != -1)
    {
      dispatch_once(&correct_defaultOnce_41, v129);
    }

    v74 = correct_classDebugEnabled_42;

    if (v74 == 1)
    {
      v75 = [MEMORY[0x277CCACA8] stringWithFormat:@"totalMeasured=%f, totalEstimated=%f, multiplier=%f", *&v18, *&v15, *&v72];
      v76 = MEMORY[0x277D3F178];
      v77 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Correction/PLAccountingCorrectionOwner.m"];
      v78 = [v77 lastPathComponent];
      v79 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingCorrectionOwner correct]"];
      [v76 logMessage:v75 fromFile:v78 fromFunction:v79 fromLineNumber:80];

      v80 = PLLogCommon();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDistributionEventEntry initWithDistributionID:v75 withChildNodeIDToWeight:v80 withRange:?];
      }
    }
  }

  v81 = [MEMORY[0x277CBEB18] array];
  v82 = [(PLAccountingCorrectionOwner *)self rootEnergyEstimate];
  [v81 addObject:v82];

  do
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v83 = objc_opt_class();
      v126[0] = MEMORY[0x277D85DD0];
      v126[1] = 3221225472;
      v126[2] = __38__PLAccountingCorrectionOwner_correct__block_invoke_50;
      v126[3] = &unk_279A55D70;
      v127 = @"correct";
      v128 = v83;
      if (correct_defaultOnce_48 != -1)
      {
        dispatch_once(&correct_defaultOnce_48, v126);
      }

      v84 = correct_classDebugEnabled_49;

      if (v84 == 1)
      {
        v85 = [MEMORY[0x277CCACA8] stringWithFormat:@"energyEstimatesToCorrect=%@", v81];
        v86 = MEMORY[0x277D3F178];
        v87 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Correction/PLAccountingCorrectionOwner.m"];
        v88 = [v87 lastPathComponent];
        v89 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingCorrectionOwner correct]"];
        [v86 logMessage:v85 fromFile:v88 fromFunction:v89 fromLineNumber:86];

        v90 = PLLogCommon();
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v157 = v85;
          _os_log_debug_impl(&dword_25EDCD000, v90, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        self = v119;
      }
    }

    v91 = [v81 firstObject];
    [v81 removeObjectAtIndex:0];
    [v91 energy];
    [v91 setCorrectionEnergy:(v72 + -1.0) * v92];
    v93 = [(PLAccountingOwner *)self runDate];
    [v91 setCorrectionDate:v93];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v94 = objc_opt_class();
      v123[0] = MEMORY[0x277D85DD0];
      v123[1] = 3221225472;
      v123[2] = __38__PLAccountingCorrectionOwner_correct__block_invoke_56;
      v123[3] = &unk_279A55D70;
      v124 = @"correct";
      v125 = v94;
      if (correct_defaultOnce_54 != -1)
      {
        dispatch_once(&correct_defaultOnce_54, v123);
      }

      v95 = correct_classDebugEnabled_55;

      if (v95 == 1)
      {
        v96 = [MEMORY[0x277CCACA8] stringWithFormat:@"energyEstimateToCorrect=%@", v91];
        v97 = MEMORY[0x277D3F178];
        v98 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Correction/PLAccountingCorrectionOwner.m"];
        v99 = [v98 lastPathComponent];
        v100 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingCorrectionOwner correct]"];
        [v97 logMessage:v96 fromFile:v99 fromFunction:v100 fromLineNumber:94];

        v101 = PLLogCommon();
        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v157 = v96;
          _os_log_debug_impl(&dword_25EDCD000, v101, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        self = v119;
      }
    }

    v102 = [(PLAccountingOwner *)self manager];
    v103 = [v102 childEnergyEstimatesForParentEntryID:{objc_msgSend(v91, "entryID")}];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v104 = objc_opt_class();
      v120[0] = MEMORY[0x277D85DD0];
      v120[1] = 3221225472;
      v120[2] = __38__PLAccountingCorrectionOwner_correct__block_invoke_62;
      v120[3] = &unk_279A55D70;
      v121 = @"correct";
      v122 = v104;
      if (correct_defaultOnce_60 != -1)
      {
        dispatch_once(&correct_defaultOnce_60, v120);
      }

      v105 = correct_classDebugEnabled_61;

      if (v105 == 1)
      {
        v106 = [MEMORY[0x277CCACA8] stringWithFormat:@"childEnergyEstimatesToCorrect=%@", v103];
        v107 = MEMORY[0x277D3F178];
        v108 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Correction/PLAccountingCorrectionOwner.m"];
        v109 = [v108 lastPathComponent];
        v110 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingCorrectionOwner correct]"];
        [v107 logMessage:v106 fromFile:v109 fromFunction:v110 fromLineNumber:98];

        v111 = PLLogCommon();
        if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v157 = v106;
          _os_log_debug_impl(&dword_25EDCD000, v111, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        self = v119;
      }
    }

    if (v103)
    {
      [v81 addObjectsFromArray:v103];
    }

    v112 = [(PLAccountingOwner *)self manager];
    [v112 didCorrectEnergyEstimate:v91];
  }

  while ([v81 count]);

  v113 = *MEMORY[0x277D85DE8];
}

- (PLAccountingCorrectionOwner)initWithRootEnergyEstimate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PLAccountingCorrectionOwner;
  v6 = [(PLAccountingCorrectionOwner *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rootEnergyEstimate, a3);
  }

  return v7;
}

- (void)setRunDate:(id)a3
{
  v4 = a3;
  v5 = [(PLAccountingCorrectionOwner *)self rootEnergyEstimate];
  [v5 setCorrectionDate:v4];
}

uint64_t __38__PLAccountingCorrectionOwner_correct__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  correct_classDebugEnabled = result;
  return result;
}

uint64_t __38__PLAccountingCorrectionOwner_correct__block_invoke_19(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  correct_classDebugEnabled_18 = result;
  return result;
}

uint64_t __38__PLAccountingCorrectionOwner_correct__block_invoke_25(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  correct_classDebugEnabled_24 = result;
  return result;
}

uint64_t __38__PLAccountingCorrectionOwner_correct__block_invoke_31(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  correct_classDebugEnabled_30 = result;
  return result;
}

uint64_t __38__PLAccountingCorrectionOwner_correct__block_invoke_37(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  correct_classDebugEnabled_36 = result;
  return result;
}

uint64_t __38__PLAccountingCorrectionOwner_correct__block_invoke_43(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  correct_classDebugEnabled_42 = result;
  return result;
}

uint64_t __38__PLAccountingCorrectionOwner_correct__block_invoke_50(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  correct_classDebugEnabled_49 = result;
  return result;
}

uint64_t __38__PLAccountingCorrectionOwner_correct__block_invoke_56(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  correct_classDebugEnabled_55 = result;
  return result;
}

uint64_t __38__PLAccountingCorrectionOwner_correct__block_invoke_62(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  correct_classDebugEnabled_61 = result;
  return result;
}

@end