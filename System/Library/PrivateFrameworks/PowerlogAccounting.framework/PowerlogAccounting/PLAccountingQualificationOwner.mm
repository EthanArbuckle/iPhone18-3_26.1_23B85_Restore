@interface PLAccountingQualificationOwner
- (PLAccountingQualificationOwner)initWithEnergyEstimate:(id)estimate;
- (id)ID;
- (id)activationDate;
- (id)range;
- (void)qualify;
- (void)setRunDate:(id)date;
@end

@implementation PLAccountingQualificationOwner

- (id)ID
{
  energyEstimate = [(PLAccountingQualificationOwner *)self energyEstimate];
  rootNodeID = [energyEstimate rootNodeID];

  return rootNodeID;
}

- (PLAccountingQualificationOwner)initWithEnergyEstimate:(id)estimate
{
  estimateCopy = estimate;
  v9.receiver = self;
  v9.super_class = PLAccountingQualificationOwner;
  v6 = [(PLAccountingQualificationOwner *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_energyEstimate, estimate);
  }

  return v7;
}

- (id)range
{
  energyEstimate = [(PLAccountingQualificationOwner *)self energyEstimate];
  range = [energyEstimate range];

  return range;
}

- (id)activationDate
{
  energyEstimate = [(PLAccountingQualificationOwner *)self energyEstimate];
  entryDate = [energyEstimate entryDate];

  return entryDate;
}

- (void)setRunDate:(id)date
{
  dateCopy = date;
  energyEstimate = [(PLAccountingQualificationOwner *)self energyEstimate];
  [energyEstimate setQualificationDate:dateCopy];
}

- (void)qualify
{
  v196 = *MEMORY[0x277D85DE8];
  v3 = 0x277D3F000uLL;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    v189[0] = MEMORY[0x277D85DD0];
    v189[1] = 3221225472;
    v189[2] = __41__PLAccountingQualificationOwner_qualify__block_invoke;
    v189[3] = &unk_279A55D70;
    v191 = v4;
    v190 = @"qualify";
    if (qualify_defaultOnce != -1)
    {
      dispatch_once(&qualify_defaultOnce, v189);
    }

    v5 = qualify_classDebugEnabled;

    if (v5 == 1)
    {
      v6 = MEMORY[0x277CCACA8];
      energyEstimate = [(PLAccountingQualificationOwner *)self energyEstimate];
      v8 = [v6 stringWithFormat:@"self.energyEstimate=%@", energyEstimate];

      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Qualification/PLAccountingQualificationOwner.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingQualificationOwner qualify]"];
      [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:49];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDistributionEventEntry initWithDistributionID:v8 withChildNodeIDToWeight:v13 withRange:?];
      }
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v14 = objc_opt_class();
    v186[0] = MEMORY[0x277D85DD0];
    v186[1] = 3221225472;
    v186[2] = __41__PLAccountingQualificationOwner_qualify__block_invoke_19;
    v186[3] = &unk_279A55D70;
    v188 = v14;
    v187 = @"qualify";
    if (qualify_defaultOnce_17 != -1)
    {
      dispatch_once(&qualify_defaultOnce_17, v186);
    }

    v15 = qualify_classDebugEnabled_18;

    if (v15 == 1)
    {
      v16 = MEMORY[0x277CCACA8];
      dependencyIDToDependenciesInRange = [(PLAccountingOwner *)self dependencyIDToDependenciesInRange];
      v18 = [v16 stringWithFormat:@"dependencyIDToDependenciesInRange=%@", dependencyIDToDependenciesInRange];

      v19 = MEMORY[0x277D3F178];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Qualification/PLAccountingQualificationOwner.m"];
      lastPathComponent2 = [v20 lastPathComponent];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingQualificationOwner qualify]"];
      [v19 logMessage:v18 fromFile:lastPathComponent2 fromFunction:v22 fromLineNumber:50];

      v23 = PLLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDistributionEventEntry initWithDistributionID:v18 withChildNodeIDToWeight:v23 withRange:?];
      }
    }
  }

  v184 = 0u;
  v185 = 0u;
  v182 = 0u;
  v183 = 0u;
  dependencyIDToDependenciesInRange2 = [(PLAccountingOwner *)self dependencyIDToDependenciesInRange];
  allKeys = [dependencyIDToDependenciesInRange2 allKeys];

  obj = allKeys;
  v144 = [allKeys countByEnumeratingWithState:&v182 objects:v195 count:16];
  if (v144)
  {
    v143 = *v183;
    v140 = v175;
    v141 = v179;
    do
    {
      v26 = 0;
      do
      {
        if (*v183 != v143)
        {
          objc_enumerationMutation(obj);
        }

        v145 = v26;
        v27 = *(*(&v182 + 1) + 8 * v26);
        if ([*(v3 + 384) debugEnabled])
        {
          v28 = objc_opt_class();
          v178[0] = MEMORY[0x277D85DD0];
          v178[1] = 3221225472;
          v179[0] = __41__PLAccountingQualificationOwner_qualify__block_invoke_25;
          v179[1] = &unk_279A55D70;
          v181 = v28;
          v180 = @"qualify";
          if (qualify_defaultOnce_23 != -1)
          {
            dispatch_once(&qualify_defaultOnce_23, v178);
          }

          v29 = qualify_classDebugEnabled_24;

          if (v29 == 1)
          {
            v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"qualificationID=%@", v27];
            v31 = MEMORY[0x277D3F178];
            v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Qualification/PLAccountingQualificationOwner.m"];
            lastPathComponent3 = [v32 lastPathComponent];
            v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingQualificationOwner qualify]"];
            [v31 logMessage:v30 fromFile:lastPathComponent3 fromFunction:v34 fromLineNumber:53];

            v35 = PLLogCommon();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v194 = v30;
              _os_log_debug_impl(&dword_25EDCD000, v35, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        dependencyIDToDependenciesInRange3 = [(PLAccountingOwner *)self dependencyIDToDependenciesInRange];
        v37 = [dependencyIDToDependenciesInRange3 objectForKeyedSubscript:v27];

        if ([*(v3 + 384) debugEnabled])
        {
          v38 = objc_opt_class();
          v174[0] = MEMORY[0x277D85DD0];
          v174[1] = 3221225472;
          v175[0] = __41__PLAccountingQualificationOwner_qualify__block_invoke_31;
          v175[1] = &unk_279A55D70;
          v177 = v38;
          v176 = @"qualify";
          if (qualify_defaultOnce_29 != -1)
          {
            dispatch_once(&qualify_defaultOnce_29, v174);
          }

          v39 = qualify_classDebugEnabled_30;

          if (v39 == 1)
          {
            v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"dependenciesInRange=%@", v37];
            v41 = MEMORY[0x277D3F178];
            v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Qualification/PLAccountingQualificationOwner.m"];
            lastPathComponent4 = [v42 lastPathComponent];
            v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingQualificationOwner qualify]"];
            [v41 logMessage:v40 fromFile:lastPathComponent4 fromFunction:v44 fromLineNumber:56];

            v45 = PLLogCommon();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v194 = v40;
              _os_log_debug_impl(&dword_25EDCD000, v45, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        v172 = 0u;
        v173 = 0u;
        v170 = 0u;
        v171 = 0u;
        v146 = v37;
        v148 = [v146 countByEnumeratingWithState:&v170 objects:v192 count:16];
        if (v148)
        {
          v147 = *v171;
          do
          {
            v46 = 0;
            do
            {
              if (*v171 != v147)
              {
                objc_enumerationMutation(v146);
              }

              qualificationEvent = [*(*(&v170 + 1) + 8 * v46) qualificationEvent];
              [qualificationEvent setUsed:1];
              if ([*(v3 + 384) debugEnabled])
              {
                v48 = objc_opt_class();
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __41__PLAccountingQualificationOwner_qualify__block_invoke_37;
                block[3] = &unk_279A55D70;
                v168 = @"qualify";
                v169 = v48;
                if (qualify_defaultOnce_35 != -1)
                {
                  dispatch_once(&qualify_defaultOnce_35, block);
                }

                v49 = qualify_classDebugEnabled_36;

                if (v49 == 1)
                {
                  v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"qualificationEvent=%@", qualificationEvent];
                  v51 = MEMORY[0x277D3F178];
                  v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Qualification/PLAccountingQualificationOwner.m"];
                  lastPathComponent5 = [v52 lastPathComponent];
                  v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingQualificationOwner qualify]"];
                  [v51 logMessage:v50 fromFile:lastPathComponent5 fromFunction:v54 fromLineNumber:61];

                  v55 = PLLogCommon();
                  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v194 = v50;
                    _os_log_debug_impl(&dword_25EDCD000, v55, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }
                }
              }

              childNodeIDs = [qualificationEvent childNodeIDs];
              if ([childNodeIDs containsObject:&unk_2870F8678])
              {

LABEL_49:
                instanceDirectionality = [qualificationEvent instanceDirectionality];
                debugEnabled = [*(v3 + 384) debugEnabled];
                if (instanceDirectionality == 4)
                {
                  if (debugEnabled)
                  {
                    v63 = objc_opt_class();
                    v161[0] = MEMORY[0x277D85DD0];
                    v161[1] = 3221225472;
                    v161[2] = __41__PLAccountingQualificationOwner_qualify__block_invoke_50;
                    v161[3] = &unk_279A55D70;
                    v162 = @"qualify";
                    v163 = v63;
                    if (qualify_defaultOnce_48 != -1)
                    {
                      dispatch_once(&qualify_defaultOnce_48, v161);
                    }

                    v64 = qualify_classDebugEnabled_49;

                    if (v64 == 1)
                    {
                      v65 = [MEMORY[0x277CCACA8] stringWithFormat:@"EventPoint"];
                      v66 = MEMORY[0x277D3F178];
                      v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Qualification/PLAccountingQualificationOwner.m"];
                      lastPathComponent6 = [v67 lastPathComponent];
                      v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingQualificationOwner qualify]"];
                      [v66 logMessage:v65 fromFile:lastPathComponent6 fromFunction:v69 fromLineNumber:75];

                      v70 = PLLogCommon();
                      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412290;
                        v194 = v65;
                        _os_log_debug_impl(&dword_25EDCD000, v70, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                      }
                    }
                  }

                  energyEstimate2 = [(PLAccountingQualificationOwner *)self energyEstimate];
                  range = [energyEstimate2 range];

                  v73 = 1.0 / [v146 count];
                }

                else
                {
                  if (debugEnabled)
                  {
                    v74 = objc_opt_class();
                    v158[0] = MEMORY[0x277D85DD0];
                    v158[1] = 3221225472;
                    v158[2] = __41__PLAccountingQualificationOwner_qualify__block_invoke_56;
                    v158[3] = &unk_279A55D70;
                    v159 = @"qualify";
                    v160 = v74;
                    if (qualify_defaultOnce_54 != -1)
                    {
                      dispatch_once(&qualify_defaultOnce_54, v158);
                    }

                    v75 = qualify_classDebugEnabled_55;

                    if (v75 == 1)
                    {
                      v76 = [MEMORY[0x277CCACA8] stringWithFormat:@"EventInterval"];
                      v77 = MEMORY[0x277D3F178];
                      v78 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Qualification/PLAccountingQualificationOwner.m"];
                      lastPathComponent7 = [v78 lastPathComponent];
                      v80 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingQualificationOwner qualify]"];
                      [v77 logMessage:v76 fromFile:lastPathComponent7 fromFunction:v80 fromLineNumber:81];

                      v81 = PLLogCommon();
                      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412290;
                        v194 = v76;
                        _os_log_debug_impl(&dword_25EDCD000, v81, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                      }
                    }
                  }

                  range2 = [qualificationEvent range];
                  energyEstimate3 = [(PLAccountingQualificationOwner *)self energyEstimate];
                  range3 = [energyEstimate3 range];
                  range = [range2 intersect:range3];

                  [range length];
                  v86 = v85;
                  energyEstimate4 = [(PLAccountingQualificationOwner *)self energyEstimate];
                  range4 = [energyEstimate4 range];
                  [range4 length];
                  v73 = v86 / v89;
                }

                if ([*(v3 + 384) debugEnabled])
                {
                  v90 = objc_opt_class();
                  v155[0] = MEMORY[0x277D85DD0];
                  v155[1] = 3221225472;
                  v155[2] = __41__PLAccountingQualificationOwner_qualify__block_invoke_62;
                  v155[3] = &unk_279A55D70;
                  v156 = @"qualify";
                  v157 = v90;
                  if (qualify_defaultOnce_60 != -1)
                  {
                    dispatch_once(&qualify_defaultOnce_60, v155);
                  }

                  v91 = qualify_classDebugEnabled_61;

                  if (v91 == 1)
                  {
                    v141 = [MEMORY[0x277CCACA8] stringWithFormat:@"qualificationRange=%@, qualificationRangeWeight=%f", range, *&v73, v140, v141];
                    v93 = MEMORY[0x277D3F178];
                    v94 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Qualification/PLAccountingQualificationOwner.m"];
                    lastPathComponent8 = [v94 lastPathComponent];
                    v96 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingQualificationOwner qualify]"];
                    [v93 logMessage:v141 fromFile:lastPathComponent8 fromFunction:v96 fromLineNumber:85];

                    v97 = PLLogCommon();
                    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v194 = v141;
                      _os_log_debug_impl(&dword_25EDCD000, v97, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                    }
                  }
                }

                energyEstimate5 = [(PLAccountingQualificationOwner *)self energyEstimate];
                [energyEstimate5 terminationRatio];
                v100 = v73 * v99;
                energyEstimate6 = [(PLAccountingQualificationOwner *)self energyEstimate];
                [energyEstimate6 energy];
                v103 = v102;
                energyEstimate7 = [(PLAccountingQualificationOwner *)self energyEstimate];
                [energyEstimate7 correctionEnergy];
                v106 = v100 * (v103 + v105);

                if ([*(v3 + 384) debugEnabled])
                {
                  v107 = objc_opt_class();
                  v152[0] = MEMORY[0x277D85DD0];
                  v152[1] = 3221225472;
                  v152[2] = __41__PLAccountingQualificationOwner_qualify__block_invoke_68;
                  v152[3] = &unk_279A55D70;
                  v153 = @"qualify";
                  v154 = v107;
                  if (qualify_defaultOnce_66 != -1)
                  {
                    dispatch_once(&qualify_defaultOnce_66, v152);
                  }

                  v108 = qualify_classDebugEnabled_67;

                  if (v108 == 1)
                  {
                    v109 = [MEMORY[0x277CCACA8] stringWithFormat:@"qualificationEnergy=%f", *&v106];
                    v110 = MEMORY[0x277D3F178];
                    v111 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Qualification/PLAccountingQualificationOwner.m"];
                    lastPathComponent9 = [v111 lastPathComponent];
                    v113 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingQualificationOwner qualify]"];
                    [v110 logMessage:v109 fromFile:lastPathComponent9 fromFunction:v113 fromLineNumber:88];

                    v114 = PLLogCommon();
                    if (os_log_type_enabled(v114, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v194 = v109;
                      _os_log_debug_impl(&dword_25EDCD000, v114, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                    }
                  }
                }

                v115 = [PLAccountingEnergyEventEntry alloc];
                energyEstimate8 = [(PLAccountingQualificationOwner *)self energyEstimate];
                nodeID = [energyEstimate8 nodeID];
                runDate = [(PLAccountingOwner *)self runDate];
                v119 = [(PLAccountingEnergyEventEntry *)v115 initWithNodeID:nodeID withEnergy:range withRange:runDate withEntryDate:v106];

                if ([*(v3 + 384) debugEnabled])
                {
                  v120 = objc_opt_class();
                  v149[0] = MEMORY[0x277D85DD0];
                  v149[1] = 3221225472;
                  v149[2] = __41__PLAccountingQualificationOwner_qualify__block_invoke_75;
                  v149[3] = &unk_279A55D70;
                  v150 = @"qualify";
                  v151 = v120;
                  if (qualify_defaultOnce_73 != -1)
                  {
                    dispatch_once(&qualify_defaultOnce_73, v149);
                  }

                  v121 = qualify_classDebugEnabled_74;

                  if (v121 == 1)
                  {
                    v119 = [MEMORY[0x277CCACA8] stringWithFormat:@"qualificationEnergyEvent=%@", v119];
                    v123 = MEMORY[0x277D3F178];
                    v124 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Qualification/PLAccountingQualificationOwner.m"];
                    lastPathComponent10 = [v124 lastPathComponent];
                    v126 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingQualificationOwner qualify]"];
                    [v123 logMessage:v119 fromFile:lastPathComponent10 fromFunction:v126 fromLineNumber:94];

                    v127 = PLLogCommon();
                    if (os_log_type_enabled(v127, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v194 = v119;
                      _os_log_debug_impl(&dword_25EDCD000, v127, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                    }

                    v3 = 0x277D3F000;
                  }
                }

                manager = [(PLAccountingOwner *)self manager];
                energyEstimate9 = [(PLAccountingQualificationOwner *)self energyEstimate];
                rootNodeID = [energyEstimate9 rootNodeID];
                qualificationID = [qualificationEvent qualificationID];
                [manager didQualifyEnergyEvent:v119 withRootNodeID:rootNodeID withQualificationID:qualificationID];

LABEL_88:
                goto LABEL_89;
              }

              childNodeIDs2 = [qualificationEvent childNodeIDs];
              energyEstimate10 = [(PLAccountingQualificationOwner *)self energyEstimate];
              nodeID2 = [energyEstimate10 nodeID];
              v60 = [childNodeIDs2 containsObject:nodeID2];

              if (v60)
              {
                goto LABEL_49;
              }

              if ([*(v3 + 384) debugEnabled])
              {
                v132 = objc_opt_class();
                v164[0] = MEMORY[0x277D85DD0];
                v164[1] = 3221225472;
                v164[2] = __41__PLAccountingQualificationOwner_qualify__block_invoke_44;
                v164[3] = &unk_279A55D70;
                v165 = @"qualify";
                v166 = v132;
                if (qualify_defaultOnce_42 != -1)
                {
                  dispatch_once(&qualify_defaultOnce_42, v164);
                }

                v133 = qualify_classDebugEnabled_43;

                if (v133 == 1)
                {
                  range = [MEMORY[0x277CCACA8] stringWithFormat:@"qualificationEvent does not pertain to self"];
                  v134 = MEMORY[0x277D3F178];
                  v135 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Qualification/PLAccountingQualificationOwner.m"];
                  lastPathComponent11 = [v135 lastPathComponent];
                  v137 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingQualificationOwner qualify]"];
                  [v134 logMessage:range fromFile:lastPathComponent11 fromFunction:v137 fromLineNumber:66];

                  v119 = PLLogCommon();
                  if (os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v194 = range;
                    _os_log_debug_impl(&dword_25EDCD000, v119, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }

                  goto LABEL_88;
                }
              }

LABEL_89:

              ++v46;
            }

            while (v148 != v46);
            v138 = [v146 countByEnumeratingWithState:&v170 objects:v192 count:16];
            v148 = v138;
          }

          while (v138);
        }

        v26 = v145 + 1;
      }

      while (v145 + 1 != v144);
      v144 = [obj countByEnumeratingWithState:&v182 objects:v195 count:16];
    }

    while (v144);
  }

  v139 = *MEMORY[0x277D85DE8];
}

uint64_t __41__PLAccountingQualificationOwner_qualify__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  qualify_classDebugEnabled = result;
  return result;
}

uint64_t __41__PLAccountingQualificationOwner_qualify__block_invoke_19(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  qualify_classDebugEnabled_18 = result;
  return result;
}

uint64_t __41__PLAccountingQualificationOwner_qualify__block_invoke_25(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  qualify_classDebugEnabled_24 = result;
  return result;
}

uint64_t __41__PLAccountingQualificationOwner_qualify__block_invoke_31(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  qualify_classDebugEnabled_30 = result;
  return result;
}

uint64_t __41__PLAccountingQualificationOwner_qualify__block_invoke_37(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  qualify_classDebugEnabled_36 = result;
  return result;
}

uint64_t __41__PLAccountingQualificationOwner_qualify__block_invoke_44(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  qualify_classDebugEnabled_43 = result;
  return result;
}

uint64_t __41__PLAccountingQualificationOwner_qualify__block_invoke_50(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  qualify_classDebugEnabled_49 = result;
  return result;
}

uint64_t __41__PLAccountingQualificationOwner_qualify__block_invoke_56(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  qualify_classDebugEnabled_55 = result;
  return result;
}

uint64_t __41__PLAccountingQualificationOwner_qualify__block_invoke_62(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  qualify_classDebugEnabled_61 = result;
  return result;
}

uint64_t __41__PLAccountingQualificationOwner_qualify__block_invoke_68(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  qualify_classDebugEnabled_67 = result;
  return result;
}

uint64_t __41__PLAccountingQualificationOwner_qualify__block_invoke_75(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  qualify_classDebugEnabled_74 = result;
  return result;
}

@end