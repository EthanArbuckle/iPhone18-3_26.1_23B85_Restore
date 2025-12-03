@interface PLAccountingDistributionOwner
- (PLAccountingDistributionOwner)initWithEnergyEstimate:(id)estimate;
- (id)ID;
- (id)activationDate;
- (id)range;
- (void)distribute;
- (void)setRunDate:(id)date;
@end

@implementation PLAccountingDistributionOwner

- (id)range
{
  energyEstimate = [(PLAccountingDistributionOwner *)self energyEstimate];
  range = [energyEstimate range];

  return range;
}

- (void)distribute
{
  v275 = *MEMORY[0x277D85DE8];
  v2 = &unk_279A55D70;
  v3 = @"distribute";
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    v263[0] = MEMORY[0x277D85DD0];
    v263[1] = 3221225472;
    v263[2] = __43__PLAccountingDistributionOwner_distribute__block_invoke;
    v263[3] = &unk_279A55D70;
    v265 = v4;
    v264 = @"distribute";
    if (distribute_defaultOnce != -1)
    {
      dispatch_once(&distribute_defaultOnce, v263);
    }

    v5 = distribute_classDebugEnabled;

    if (v5 == 1)
    {
      v6 = MEMORY[0x277CCACA8];
      energyEstimate = [(PLAccountingDistributionOwner *)self energyEstimate];
      v8 = [v6 stringWithFormat:@"self.energyEstimate=%@", energyEstimate];

      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Distribution/PLAccountingDistributionOwner.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionOwner distribute]"];
      [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:52];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  dependencyIDToDependenciesInRange = [(PLAccountingOwner *)self dependencyIDToDependenciesInRange];
  allValues = [dependencyIDToDependenciesInRange allValues];
  firstObject = [allValues firstObject];

  v17 = 0x277D3F000uLL;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v18 = objc_opt_class();
    v260[0] = MEMORY[0x277D85DD0];
    v260[1] = 3221225472;
    v260[2] = __43__PLAccountingDistributionOwner_distribute__block_invoke_19;
    v260[3] = &unk_279A55D70;
    v262 = v18;
    v261 = @"distribute";
    if (distribute_defaultOnce_17 != -1)
    {
      dispatch_once(&distribute_defaultOnce_17, v260);
    }

    v19 = distribute_classDebugEnabled_18;

    if (v19 == 1)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"distributionDependenciesInRange=%@", firstObject];
      v21 = MEMORY[0x277D3F178];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Distribution/PLAccountingDistributionOwner.m"];
      lastPathComponent2 = [v22 lastPathComponent];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionOwner distribute]"];
      [v21 logMessage:v20 fromFile:lastPathComponent2 fromFunction:v24 fromLineNumber:56];

      v25 = PLLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }

      v3 = @"distribute";
      v17 = 0x277D3F000uLL;
    }
  }

  v258 = 0u;
  v259 = 0u;
  v256 = 0u;
  v257 = 0u;
  obj = firstObject;
  v203 = [obj countByEnumeratingWithState:&v256 objects:v274 count:16];
  if (v203)
  {
    v201 = v253;
    v202 = *v257;
    v197 = v245;
    v198 = v237;
    v199 = v249;
    v200 = v233;
    v26 = 0.0;
    while (1)
    {
      v27 = 0;
      do
      {
        if (*v257 != v202)
        {
          v28 = v27;
          objc_enumerationMutation(obj);
          v27 = v28;
        }

        v205 = v27;
        distributionEvent = [*(*(&v256 + 1) + 8 * v27) distributionEvent];
        [distributionEvent setUsed:1];
        v208 = distributionEvent;
        if ([*(v17 + 384) debugEnabled])
        {
          v30 = objc_opt_class();
          v252[0] = MEMORY[0x277D85DD0];
          v252[1] = 3221225472;
          v253[0] = __43__PLAccountingDistributionOwner_distribute__block_invoke_25;
          v253[1] = v2;
          v255 = v30;
          v254 = v3;
          if (distribute_defaultOnce_23 != -1)
          {
            dispatch_once(&distribute_defaultOnce_23, v252);
          }

          v31 = distribute_classDebugEnabled_24;

          v32 = v31 == 1;
          distributionEvent = v208;
          if (v32)
          {
            v208 = [MEMORY[0x277CCACA8] stringWithFormat:@"distributionEvent=%@", v208];
            v34 = MEMORY[0x277D3F178];
            v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Distribution/PLAccountingDistributionOwner.m"];
            lastPathComponent3 = [v35 lastPathComponent];
            v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionOwner distribute]"];
            [v34 logMessage:v208 fromFile:lastPathComponent3 fromFunction:v37 fromLineNumber:62];

            v38 = PLLogCommon();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v267 = *&v208;
              _os_log_debug_impl(&dword_25EDCD000, v38, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v3 = @"distribute";
            v17 = 0x277D3F000uLL;
            distributionEvent = v208;
          }
        }

        if ([distributionEvent instanceDirectionality] == 4)
        {
          if ([*(v17 + 384) debugEnabled])
          {
            v39 = objc_opt_class();
            v248[0] = MEMORY[0x277D85DD0];
            v248[1] = 3221225472;
            v249[0] = __43__PLAccountingDistributionOwner_distribute__block_invoke_31;
            v249[1] = v2;
            v251 = v39;
            v250 = v3;
            if (distribute_defaultOnce_29 != -1)
            {
              dispatch_once(&distribute_defaultOnce_29, v248);
            }

            v40 = distribute_classDebugEnabled_30;

            v32 = v40 == 1;
            distributionEvent = v208;
            if (v32)
            {
              v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"EventPoint"];
              v42 = MEMORY[0x277D3F178];
              v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Distribution/PLAccountingDistributionOwner.m"];
              lastPathComponent4 = [v43 lastPathComponent];
              v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionOwner distribute]"];
              [v42 logMessage:v41 fromFile:lastPathComponent4 fromFunction:v45 fromLineNumber:69];

              v46 = PLLogCommon();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v267 = *&v41;
                _os_log_debug_impl(&dword_25EDCD000, v46, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v3 = @"distribute";
              distributionEvent = v208;
            }
          }

          energyEstimate2 = [(PLAccountingDistributionOwner *)self energyEstimate];
          range = [energyEstimate2 range];

          v17 = 0x277D3F000;
          v48 = 1.0 / [obj count];
        }

        else
        {
          distributeRangeWeightedTotal = [distributionEvent distributeRangeWeightedTotal];
          debugEnabled = [*(v17 + 384) debugEnabled];
          if (!distributeRangeWeightedTotal)
          {
            if (debugEnabled)
            {
              v74 = objc_opt_class();
              v236[0] = MEMORY[0x277D85DD0];
              v236[1] = 3221225472;
              v237[0] = __43__PLAccountingDistributionOwner_distribute__block_invoke_43;
              v237[1] = v2;
              v239 = v74;
              v238 = v3;
              if (distribute_defaultOnce_41 != -1)
              {
                dispatch_once(&distribute_defaultOnce_41, v236);
              }

              v75 = distribute_classDebugEnabled_42;

              v32 = v75 == 1;
              distributionEvent = v208;
              if (v32)
              {
                v76 = [MEMORY[0x277CCACA8] stringWithFormat:@"EventInterval"];
                v77 = MEMORY[0x277D3F178];
                v78 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Distribution/PLAccountingDistributionOwner.m"];
                lastPathComponent5 = [v78 lastPathComponent];
                v80 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionOwner distribute]"];
                [v77 logMessage:v76 fromFile:lastPathComponent5 fromFunction:v80 fromLineNumber:86];

                v81 = PLLogCommon();
                if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v267 = *&v76;
                  _os_log_debug_impl(&dword_25EDCD000, v81, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v3 = @"distribute";
                distributionEvent = v208;
              }
            }

            range2 = [distributionEvent range];
            energyEstimate3 = [(PLAccountingDistributionOwner *)self energyEstimate];
            range3 = [energyEstimate3 range];
            v85 = [range2 intersect:range3];

            range = v85;
            [v85 length];
            v87 = v86;
            energyEstimate4 = [(PLAccountingDistributionOwner *)self energyEstimate];
            range4 = [energyEstimate4 range];
            [range4 length];
            v48 = v87 / v90;

            goto LABEL_67;
          }

          if (debugEnabled)
          {
            v51 = objc_opt_class();
            v244[0] = MEMORY[0x277D85DD0];
            v244[1] = 3221225472;
            v245[0] = __43__PLAccountingDistributionOwner_distribute__block_invoke_37;
            v245[1] = v2;
            v247 = v51;
            v246 = v3;
            if (distribute_defaultOnce_35 != -1)
            {
              dispatch_once(&distribute_defaultOnce_35, v244);
            }

            v52 = distribute_classDebugEnabled_36;

            v32 = v52 == 1;
            distributionEvent = v208;
            if (v32)
            {
              v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"RangeWeightedTotal"];
              v54 = MEMORY[0x277D3F178];
              v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Distribution/PLAccountingDistributionOwner.m"];
              lastPathComponent6 = [v55 lastPathComponent];
              v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionOwner distribute]"];
              [v54 logMessage:v53 fromFile:lastPathComponent6 fromFunction:v57 fromLineNumber:75];

              v58 = PLLogCommon();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v267 = *&v53;
                _os_log_debug_impl(&dword_25EDCD000, v58, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v3 = @"distribute";
              distributionEvent = v208;
            }
          }

          range5 = [distributionEvent range];
          energyEstimate5 = [(PLAccountingDistributionOwner *)self energyEstimate];
          range6 = [energyEstimate5 range];
          range = [range5 intersect:range6];

          v242 = 0u;
          v243 = 0u;
          v240 = 0u;
          v241 = 0u;
          v62 = obj;
          v63 = [v62 countByEnumeratingWithState:&v240 objects:v273 count:16];
          if (!v63)
          {

            v48 = 1.0;
LABEL_67:
            v17 = 0x277D3F000uLL;
            goto LABEL_68;
          }

          v64 = v63;
          v65 = *v241;
          v66 = 0.0;
          do
          {
            for (i = 0; i != v64; ++i)
            {
              if (*v241 != v65)
              {
                objc_enumerationMutation(v62);
              }

              range7 = [*(*(&v240 + 1) + 8 * i) range];
              energyEstimate6 = [(PLAccountingDistributionOwner *)self energyEstimate];
              range8 = [energyEstimate6 range];
              v71 = [range7 intersect:range8];

              [v71 length];
              v66 = v66 + v72;
            }

            v64 = [v62 countByEnumeratingWithState:&v240 objects:v273 count:16];
          }

          while (v64);

          v48 = 1.0;
          if (v66 > 0.0)
          {
            [range length];
            v48 = v73 / v66;
          }

          v3 = @"distribute";
          v2 = &unk_279A55D70;
          v17 = 0x277D3F000;
          distributionEvent = v208;
        }

LABEL_68:
        if ([*(v17 + 384) debugEnabled])
        {
          v91 = objc_opt_class();
          v232[0] = MEMORY[0x277D85DD0];
          v232[1] = 3221225472;
          v233[0] = __43__PLAccountingDistributionOwner_distribute__block_invoke_49;
          v233[1] = v2;
          v235 = v91;
          v234 = v3;
          if (distribute_defaultOnce_47 != -1)
          {
            dispatch_once(&distribute_defaultOnce_47, v232);
          }

          v92 = distribute_classDebugEnabled_48;

          v32 = v92 == 1;
          distributionEvent = v208;
          if (v32)
          {
            v93 = [MEMORY[0x277CCACA8] stringWithFormat:@"childRange=%@, childRangeWeight=%f", range, *&v48];
            v94 = MEMORY[0x277D3F178];
            v95 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Distribution/PLAccountingDistributionOwner.m"];
            lastPathComponent7 = [v95 lastPathComponent];
            v97 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionOwner distribute]"];
            [v94 logMessage:v93 fromFile:lastPathComponent7 fromFunction:v97 fromLineNumber:90];

            v98 = PLLogCommon();
            if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v267 = *&v93;
              _os_log_debug_impl(&dword_25EDCD000, v98, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v3 = @"distribute";
            v17 = 0x277D3F000uLL;
            distributionEvent = v208;
          }
        }

        v230 = 0u;
        v231 = 0u;
        v228 = 0u;
        v229 = 0u;
        childNodeIDToWeight = [distributionEvent childNodeIDToWeight];
        v211 = [childNodeIDToWeight countByEnumeratingWithState:&v228 objects:v272 count:16];
        if (v211)
        {
          v210 = *v229;
          do
          {
            v99 = 0;
            do
            {
              if (*v229 != v210)
              {
                objc_enumerationMutation(childNodeIDToWeight);
              }

              v100 = *(*(&v228 + 1) + 8 * v99);
              if ([*(v17 + 384) debugEnabled])
              {
                v101 = objc_opt_class();
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __43__PLAccountingDistributionOwner_distribute__block_invoke_55;
                block[3] = v2;
                v226 = v3;
                v227 = v101;
                if (distribute_defaultOnce_53 != -1)
                {
                  dispatch_once(&distribute_defaultOnce_53, block);
                }

                v102 = distribute_classDebugEnabled_54;

                if (v102 == 1)
                {
                  v103 = v3;
                  v104 = v2;
                  v105 = v100;
                  v100 = [MEMORY[0x277CCACA8] stringWithFormat:@"childNodeID=%@", v100];
                  v107 = MEMORY[0x277D3F178];
                  v108 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Distribution/PLAccountingDistributionOwner.m"];
                  lastPathComponent8 = [v108 lastPathComponent];
                  v110 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionOwner distribute]"];
                  [v107 logMessage:v100 fromFile:lastPathComponent8 fromFunction:v110 fromLineNumber:94];

                  v111 = PLLogCommon();
                  if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v267 = *&v100;
                    _os_log_debug_impl(&dword_25EDCD000, v111, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }

                  v100 = v105;
                  v2 = v104;
                  v3 = v103;
                }
              }

              energyEstimate7 = [(PLAccountingDistributionOwner *)self energyEstimate];
              nodeID = [energyEstimate7 nodeID];
              v114 = [v100 isEqual:nodeID];

              if (!v114)
              {
                childNodeIDToWeight2 = [v208 childNodeIDToWeight];
                v124 = [childNodeIDToWeight2 objectForKeyedSubscript:v100];
                [v124 doubleValue];
                v126 = v125;

                energyEstimate8 = [(PLAccountingDistributionOwner *)self energyEstimate];
                [energyEstimate8 energy];
                v129 = v48 * v126 * v128;

                +[PLAccountingEngine minDistributionEnergy];
                if (v129 >= v130)
                {
                  v207 = v100;
                  v26 = v26 + v129;
                  if ([*(v17 + 384) debugEnabled])
                  {
                    v133 = objc_opt_class();
                    v219[0] = MEMORY[0x277D85DD0];
                    v219[1] = 3221225472;
                    v219[2] = __43__PLAccountingDistributionOwner_distribute__block_invoke_68;
                    v219[3] = v2;
                    v220 = v3;
                    v221 = v133;
                    if (distribute_defaultOnce_66 != -1)
                    {
                      dispatch_once(&distribute_defaultOnce_66, v219);
                    }

                    v134 = distribute_classDebugEnabled_67;

                    if (v134 == 1)
                    {
                      v201 = [MEMORY[0x277CCACA8] stringWithFormat:@"childElementWeight=%f, childEnergy=%f, energyDistributed=%f", *&v126, *&v129, *&v26, v197, v198, v199, v200, v201];
                      v136 = MEMORY[0x277D3F178];
                      v137 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Distribution/PLAccountingDistributionOwner.m"];
                      lastPathComponent9 = [v137 lastPathComponent];
                      v139 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionOwner distribute]"];
                      [v136 logMessage:v201 fromFile:lastPathComponent9 fromFunction:v139 fromLineNumber:112];

                      v140 = PLLogCommon();
                      if (os_log_type_enabled(v140, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412290;
                        v267 = *&v201;
                        _os_log_debug_impl(&dword_25EDCD000, v140, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                      }
                    }
                  }

                  v141 = [PLAccountingEnergyEstimateEventEntry alloc];
                  energyEstimate9 = [(PLAccountingDistributionOwner *)self energyEstimate];
                  rootNodeID = [energyEstimate9 rootNodeID];
                  energyEstimate10 = [(PLAccountingDistributionOwner *)self energyEstimate];
                  entryID = [energyEstimate10 entryID];
                  energyEstimate11 = [(PLAccountingDistributionOwner *)self energyEstimate];
                  numAncestors = [energyEstimate11 numAncestors];
                  runDate = [(PLAccountingOwner *)self runDate];
                  v149 = (numAncestors + 1);
                  v3 = @"distribute";
                  v117 = [(PLAccountingEnergyEstimateEventEntry *)v141 initWithNodeID:v207 withRootNodeID:rootNodeID withParentEntryID:entryID withNumAncestors:v149 withEnergy:range withRange:runDate withEntryDate:v129];

                  v2 = &unk_279A55D70;
                  if ([MEMORY[0x277D3F180] debugEnabled])
                  {
                    v150 = objc_opt_class();
                    v216[0] = MEMORY[0x277D85DD0];
                    v216[1] = 3221225472;
                    v216[2] = __43__PLAccountingDistributionOwner_distribute__block_invoke_75;
                    v216[3] = &unk_279A55D70;
                    v217 = @"distribute";
                    v218 = v150;
                    if (distribute_defaultOnce_73 != -1)
                    {
                      dispatch_once(&distribute_defaultOnce_73, v216);
                    }

                    v151 = distribute_classDebugEnabled_74;

                    if (v151 == 1)
                    {
                      v117 = [MEMORY[0x277CCACA8] stringWithFormat:@"childEnergyEstimate=%@", v117];
                      v153 = MEMORY[0x277D3F178];
                      v154 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Distribution/PLAccountingDistributionOwner.m"];
                      lastPathComponent10 = [v154 lastPathComponent];
                      v156 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionOwner distribute]"];
                      [v153 logMessage:v117 fromFile:lastPathComponent10 fromFunction:v156 fromLineNumber:121];

                      v157 = PLLogCommon();
                      if (os_log_type_enabled(v157, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412290;
                        v267 = *&v117;
                        _os_log_debug_impl(&dword_25EDCD000, v157, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                      }

                      v2 = &unk_279A55D70;
                    }
                  }

                  manager = [(PLAccountingOwner *)self manager];
                  energyEstimate12 = [(PLAccountingDistributionOwner *)self energyEstimate];
                  [manager didDistributeToChildEnergyEstimate:v117 fromParentEnergyEstimate:energyEstimate12];

                  v17 = 0x277D3F000;
LABEL_114:
                }

                else
                {
                  v117 = PLLogCommon();
                  if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
                  {
                    manager = [(PLAccountingDistributionOwner *)self energyEstimate];
                    rootNodeID2 = [manager rootNodeID];
                    *buf = 134218498;
                    v267 = v129;
                    v268 = 2112;
                    v269 = v100;
                    v270 = 2112;
                    v271 = rootNodeID2;
                    _os_log_debug_impl(&dword_25EDCD000, v117, OS_LOG_TYPE_DEBUG, "Skipping distribution of childEnergy=%f, childNodeID=%@, rootNodeID=%@", buf, 0x20u);

                    goto LABEL_114;
                  }
                }

LABEL_115:

                goto LABEL_116;
              }

              if ([*(v17 + 384) debugEnabled])
              {
                v115 = objc_opt_class();
                v222[0] = MEMORY[0x277D85DD0];
                v222[1] = 3221225472;
                v222[2] = __43__PLAccountingDistributionOwner_distribute__block_invoke_61;
                v222[3] = v2;
                v223 = v3;
                v224 = v115;
                if (distribute_defaultOnce_59 != -1)
                {
                  dispatch_once(&distribute_defaultOnce_59, v222);
                }

                v116 = distribute_classDebugEnabled_60;

                if (v116 == 1)
                {
                  v117 = [MEMORY[0x277CCACA8] stringWithFormat:@"skipping distribution to self"];
                  v118 = MEMORY[0x277D3F178];
                  v119 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Distribution/PLAccountingDistributionOwner.m"];
                  lastPathComponent11 = [v119 lastPathComponent];
                  v121 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionOwner distribute]"];
                  [v118 logMessage:v117 fromFile:lastPathComponent11 fromFunction:v121 fromLineNumber:98];

                  v122 = PLLogCommon();
                  if (os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v267 = *&v117;
                    _os_log_debug_impl(&dword_25EDCD000, v122, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }

                  goto LABEL_115;
                }
              }

LABEL_116:
              ++v99;
            }

            while (v211 != v99);
            v211 = [childNodeIDToWeight countByEnumeratingWithState:&v228 objects:v272 count:16];
          }

          while (v211);
        }

        v27 = v205 + 1;
      }

      while (v205 + 1 != v203);
      v203 = [obj countByEnumeratingWithState:&v256 objects:v274 count:16];
      if (!v203)
      {
        goto LABEL_122;
      }
    }
  }

  v26 = 0.0;
LABEL_122:

  energyEstimate13 = [(PLAccountingDistributionOwner *)self energyEstimate];
  [energyEstimate13 energy];
  v161 = v160;

  if (v161 > 0.0)
  {
    energyEstimate14 = [(PLAccountingDistributionOwner *)self energyEstimate];
    [energyEstimate14 energy];
    v164 = 1.0 - v26 / v163;
    [(PLAccountingDistributionOwner *)self energyEstimate];
    v166 = v165 = v17;
    [v166 setTerminationRatio:v164];

    if ([*(v165 + 384) debugEnabled])
    {
      v167 = objc_opt_class();
      v213[0] = MEMORY[0x277D85DD0];
      v213[1] = 3221225472;
      v213[2] = __43__PLAccountingDistributionOwner_distribute__block_invoke_81;
      v213[3] = v2;
      v214 = v3;
      v215 = v167;
      if (distribute_defaultOnce_79 != -1)
      {
        dispatch_once(&distribute_defaultOnce_79, v213);
      }

      v168 = distribute_classDebugEnabled_80;

      if (v168 == 1)
      {
        v169 = MEMORY[0x277CCACA8];
        energyEstimate15 = [(PLAccountingDistributionOwner *)self energyEstimate];
        [energyEstimate15 terminationRatio];
        v171 = [v169 stringWithFormat:@"terminationRatio=%f", v171];

        v173 = MEMORY[0x277D3F178];
        v174 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Distribution/PLAccountingDistributionOwner.m"];
        lastPathComponent12 = [v174 lastPathComponent];
        v176 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionOwner distribute]"];
        [v173 logMessage:v171 fromFile:lastPathComponent12 fromFunction:v176 fromLineNumber:132];

        v177 = PLLogCommon();
        if (os_log_type_enabled(v177, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    energyEstimate16 = [(PLAccountingDistributionOwner *)self energyEstimate];
    [energyEstimate16 energy];
    v180 = v26 - v179;
    +[PLAccountingEngine minEnergy];
    v182 = v181;

    if (v180 > v182)
    {
      v183 = MEMORY[0x277CCACA8];
      energyEstimate17 = [(PLAccountingDistributionOwner *)self energyEstimate];
      [energyEstimate17 energy];
      v186 = v185;
      energyEstimate18 = [(PLAccountingDistributionOwner *)self energyEstimate];
      v187 = [v183 stringWithFormat:@"ERROR: energyDistributed=%f greater than energy=%f for energyEstimate=%@", *&v26, v186, energyEstimate18];

      v189 = MEMORY[0x277D3F178];
      v190 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Distribution/PLAccountingDistributionOwner.m"];
      lastPathComponent13 = [v190 lastPathComponent];
      v192 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionOwner distribute]"];
      [v189 logMessage:v187 fromFile:lastPathComponent13 fromFunction:v192 fromLineNumber:136];

      v193 = PLLogCommon();
      if (os_log_type_enabled(v193, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  manager2 = [(PLAccountingOwner *)self manager];
  energyEstimate19 = [(PLAccountingDistributionOwner *)self energyEstimate];
  [manager2 didDistributeEnergyEstimate:energyEstimate19];

  v196 = *MEMORY[0x277D85DE8];
}

- (id)ID
{
  energyEstimate = [(PLAccountingDistributionOwner *)self energyEstimate];
  distributionRuleID = [energyEstimate distributionRuleID];

  return distributionRuleID;
}

- (PLAccountingDistributionOwner)initWithEnergyEstimate:(id)estimate
{
  estimateCopy = estimate;
  if (estimateCopy)
  {
    v10.receiver = self;
    v10.super_class = PLAccountingDistributionOwner;
    v6 = [(PLAccountingDistributionOwner *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_energyEstimate, estimate);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)activationDate
{
  energyEstimate = [(PLAccountingDistributionOwner *)self energyEstimate];
  entryDate = [energyEstimate entryDate];

  return entryDate;
}

- (void)setRunDate:(id)date
{
  dateCopy = date;
  energyEstimate = [(PLAccountingDistributionOwner *)self energyEstimate];
  [energyEstimate setDistributionDate:dateCopy];
}

uint64_t __43__PLAccountingDistributionOwner_distribute__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  distribute_classDebugEnabled = result;
  return result;
}

uint64_t __43__PLAccountingDistributionOwner_distribute__block_invoke_19(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  distribute_classDebugEnabled_18 = result;
  return result;
}

uint64_t __43__PLAccountingDistributionOwner_distribute__block_invoke_25(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  distribute_classDebugEnabled_24 = result;
  return result;
}

uint64_t __43__PLAccountingDistributionOwner_distribute__block_invoke_31(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  distribute_classDebugEnabled_30 = result;
  return result;
}

uint64_t __43__PLAccountingDistributionOwner_distribute__block_invoke_37(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  distribute_classDebugEnabled_36 = result;
  return result;
}

uint64_t __43__PLAccountingDistributionOwner_distribute__block_invoke_43(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  distribute_classDebugEnabled_42 = result;
  return result;
}

uint64_t __43__PLAccountingDistributionOwner_distribute__block_invoke_49(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  distribute_classDebugEnabled_48 = result;
  return result;
}

uint64_t __43__PLAccountingDistributionOwner_distribute__block_invoke_55(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  distribute_classDebugEnabled_54 = result;
  return result;
}

uint64_t __43__PLAccountingDistributionOwner_distribute__block_invoke_61(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  distribute_classDebugEnabled_60 = result;
  return result;
}

uint64_t __43__PLAccountingDistributionOwner_distribute__block_invoke_68(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  distribute_classDebugEnabled_67 = result;
  return result;
}

uint64_t __43__PLAccountingDistributionOwner_distribute__block_invoke_75(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  distribute_classDebugEnabled_74 = result;
  return result;
}

uint64_t __43__PLAccountingDistributionOwner_distribute__block_invoke_81(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  distribute_classDebugEnabled_80 = result;
  return result;
}

@end