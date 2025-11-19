@interface PLAccountingQualificationOwner
- (PLAccountingQualificationOwner)initWithEnergyEstimate:(id)a3;
- (id)ID;
- (id)activationDate;
- (id)range;
- (void)qualify;
- (void)setRunDate:(id)a3;
@end

@implementation PLAccountingQualificationOwner

- (id)ID
{
  v2 = [(PLAccountingQualificationOwner *)self energyEstimate];
  v3 = [v2 rootNodeID];

  return v3;
}

- (PLAccountingQualificationOwner)initWithEnergyEstimate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PLAccountingQualificationOwner;
  v6 = [(PLAccountingQualificationOwner *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_energyEstimate, a3);
  }

  return v7;
}

- (id)range
{
  v2 = [(PLAccountingQualificationOwner *)self energyEstimate];
  v3 = [v2 range];

  return v3;
}

- (id)activationDate
{
  v2 = [(PLAccountingQualificationOwner *)self energyEstimate];
  v3 = [v2 entryDate];

  return v3;
}

- (void)setRunDate:(id)a3
{
  v4 = a3;
  v5 = [(PLAccountingQualificationOwner *)self energyEstimate];
  [v5 setQualificationDate:v4];
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
      v7 = [(PLAccountingQualificationOwner *)self energyEstimate];
      v8 = [v6 stringWithFormat:@"self.energyEstimate=%@", v7];

      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Qualification/PLAccountingQualificationOwner.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingQualificationOwner qualify]"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:49];

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
      v17 = [(PLAccountingOwner *)self dependencyIDToDependenciesInRange];
      v18 = [v16 stringWithFormat:@"dependencyIDToDependenciesInRange=%@", v17];

      v19 = MEMORY[0x277D3F178];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Qualification/PLAccountingQualificationOwner.m"];
      v21 = [v20 lastPathComponent];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingQualificationOwner qualify]"];
      [v19 logMessage:v18 fromFile:v21 fromFunction:v22 fromLineNumber:50];

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
  v24 = [(PLAccountingOwner *)self dependencyIDToDependenciesInRange];
  v25 = [v24 allKeys];

  obj = v25;
  v144 = [v25 countByEnumeratingWithState:&v182 objects:v195 count:16];
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
            v33 = [v32 lastPathComponent];
            v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingQualificationOwner qualify]"];
            [v31 logMessage:v30 fromFile:v33 fromFunction:v34 fromLineNumber:53];

            v35 = PLLogCommon();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v194 = v30;
              _os_log_debug_impl(&dword_25EDCD000, v35, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        v36 = [(PLAccountingOwner *)self dependencyIDToDependenciesInRange];
        v37 = [v36 objectForKeyedSubscript:v27];

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
            v43 = [v42 lastPathComponent];
            v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingQualificationOwner qualify]"];
            [v41 logMessage:v40 fromFile:v43 fromFunction:v44 fromLineNumber:56];

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

              v47 = [*(*(&v170 + 1) + 8 * v46) qualificationEvent];
              [v47 setUsed:1];
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
                  v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"qualificationEvent=%@", v47];
                  v51 = MEMORY[0x277D3F178];
                  v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Qualification/PLAccountingQualificationOwner.m"];
                  v53 = [v52 lastPathComponent];
                  v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingQualificationOwner qualify]"];
                  [v51 logMessage:v50 fromFile:v53 fromFunction:v54 fromLineNumber:61];

                  v55 = PLLogCommon();
                  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v194 = v50;
                    _os_log_debug_impl(&dword_25EDCD000, v55, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }
                }
              }

              v56 = [v47 childNodeIDs];
              if ([v56 containsObject:&unk_2870F8678])
              {

LABEL_49:
                v61 = [v47 instanceDirectionality];
                v62 = [*(v3 + 384) debugEnabled];
                if (v61 == 4)
                {
                  if (v62)
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
                      v68 = [v67 lastPathComponent];
                      v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingQualificationOwner qualify]"];
                      [v66 logMessage:v65 fromFile:v68 fromFunction:v69 fromLineNumber:75];

                      v70 = PLLogCommon();
                      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412290;
                        v194 = v65;
                        _os_log_debug_impl(&dword_25EDCD000, v70, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                      }
                    }
                  }

                  v71 = [(PLAccountingQualificationOwner *)self energyEstimate];
                  v72 = [v71 range];

                  v73 = 1.0 / [v146 count];
                }

                else
                {
                  if (v62)
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
                      v79 = [v78 lastPathComponent];
                      v80 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingQualificationOwner qualify]"];
                      [v77 logMessage:v76 fromFile:v79 fromFunction:v80 fromLineNumber:81];

                      v81 = PLLogCommon();
                      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412290;
                        v194 = v76;
                        _os_log_debug_impl(&dword_25EDCD000, v81, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                      }
                    }
                  }

                  v82 = [v47 range];
                  v83 = [(PLAccountingQualificationOwner *)self energyEstimate];
                  v84 = [v83 range];
                  v72 = [v82 intersect:v84];

                  [v72 length];
                  v86 = v85;
                  v87 = [(PLAccountingQualificationOwner *)self energyEstimate];
                  v88 = [v87 range];
                  [v88 length];
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
                    v92 = [MEMORY[0x277CCACA8] stringWithFormat:@"qualificationRange=%@, qualificationRangeWeight=%f", v72, *&v73, v140, v141];
                    v93 = MEMORY[0x277D3F178];
                    v94 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Qualification/PLAccountingQualificationOwner.m"];
                    v95 = [v94 lastPathComponent];
                    v96 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingQualificationOwner qualify]"];
                    [v93 logMessage:v92 fromFile:v95 fromFunction:v96 fromLineNumber:85];

                    v97 = PLLogCommon();
                    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v194 = v92;
                      _os_log_debug_impl(&dword_25EDCD000, v97, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                    }
                  }
                }

                v98 = [(PLAccountingQualificationOwner *)self energyEstimate];
                [v98 terminationRatio];
                v100 = v73 * v99;
                v101 = [(PLAccountingQualificationOwner *)self energyEstimate];
                [v101 energy];
                v103 = v102;
                v104 = [(PLAccountingQualificationOwner *)self energyEstimate];
                [v104 correctionEnergy];
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
                    v112 = [v111 lastPathComponent];
                    v113 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingQualificationOwner qualify]"];
                    [v110 logMessage:v109 fromFile:v112 fromFunction:v113 fromLineNumber:88];

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
                v116 = [(PLAccountingQualificationOwner *)self energyEstimate];
                v117 = [v116 nodeID];
                v118 = [(PLAccountingOwner *)self runDate];
                v119 = [(PLAccountingEnergyEventEntry *)v115 initWithNodeID:v117 withEnergy:v72 withRange:v118 withEntryDate:v106];

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
                    v122 = [MEMORY[0x277CCACA8] stringWithFormat:@"qualificationEnergyEvent=%@", v119];
                    v123 = MEMORY[0x277D3F178];
                    v124 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Qualification/PLAccountingQualificationOwner.m"];
                    v125 = [v124 lastPathComponent];
                    v126 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingQualificationOwner qualify]"];
                    [v123 logMessage:v122 fromFile:v125 fromFunction:v126 fromLineNumber:94];

                    v127 = PLLogCommon();
                    if (os_log_type_enabled(v127, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v194 = v122;
                      _os_log_debug_impl(&dword_25EDCD000, v127, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                    }

                    v3 = 0x277D3F000;
                  }
                }

                v128 = [(PLAccountingOwner *)self manager];
                v129 = [(PLAccountingQualificationOwner *)self energyEstimate];
                v130 = [v129 rootNodeID];
                v131 = [v47 qualificationID];
                [v128 didQualifyEnergyEvent:v119 withRootNodeID:v130 withQualificationID:v131];

LABEL_88:
                goto LABEL_89;
              }

              v57 = [v47 childNodeIDs];
              v58 = [(PLAccountingQualificationOwner *)self energyEstimate];
              v59 = [v58 nodeID];
              v60 = [v57 containsObject:v59];

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
                  v72 = [MEMORY[0x277CCACA8] stringWithFormat:@"qualificationEvent does not pertain to self"];
                  v134 = MEMORY[0x277D3F178];
                  v135 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Qualification/PLAccountingQualificationOwner.m"];
                  v136 = [v135 lastPathComponent];
                  v137 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingQualificationOwner qualify]"];
                  [v134 logMessage:v72 fromFile:v136 fromFunction:v137 fromLineNumber:66];

                  v119 = PLLogCommon();
                  if (os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v194 = v72;
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