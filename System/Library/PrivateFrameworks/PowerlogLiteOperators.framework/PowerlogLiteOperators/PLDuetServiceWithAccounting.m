@interface PLDuetServiceWithAccounting
+ (id)mapBundleID:(id)a3;
- (PLDuetServiceWithAccounting)init;
- (id)energyResponse;
- (id)eventTransitionsWithEvents:(id)a3;
- (void)accumulateWithLastCompletedDate:(id)a3 withNow:(id)a4;
- (void)accumulateWithLastCompletedDate:(id)a3 withNow:(id)a4 withQualificationID:(int)a5;
- (void)createQualificationEventsWithEventTransitions:(id)a3 withQualificationID:(int)a4;
- (void)didReceiveEventWithPayload:(id)a3;
- (void)initOperatorDependancies:(id)a3;
@end

@implementation PLDuetServiceWithAccounting

- (PLDuetServiceWithAccounting)init
{
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    v3 = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PLDuetServiceWithAccounting;
    v4 = [(PLDuetServiceWithAccounting *)&v6 init];
    [(PLDuetServiceImpl *)v4 setDuetService:0];
    self = v4;
    v3 = self;
  }

  return v3;
}

- (void)initOperatorDependancies:(id)a3
{
  v22[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) == 0)
  {
    v5 = [MEMORY[0x277D3F258] isPerfPowerMetricd];
    if (v4)
    {
      if ((v5 & 1) == 0)
      {
        [(PLDuetServiceImpl *)self setDuetService:v4];
        v6 = objc_alloc(MEMORY[0x277D3F270]);
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __56__PLDuetServiceWithAccounting_initOperatorDependancies___block_invoke;
        v21[3] = &unk_27825A1D8;
        v21[4] = self;
        v7 = [v6 initWithOperator:v4 withRegistration:&unk_282C19C78 withBlock:v21];
        [(PLDuetServiceImpl *)self setEventListener:v7];

        v8 = objc_alloc(MEMORY[0x277D3F278]);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __56__PLDuetServiceWithAccounting_initOperatorDependancies___block_invoke_2;
        v20[3] = &unk_278259810;
        v20[4] = self;
        v9 = [v8 initWithOperator:v4 withRegistration:&unk_282C19CA0 withBlock:v20];
        [(PLDuetServiceImpl *)self setEnergyResponder:v9];

        v10 = [MEMORY[0x277D3F138] timeCriterionWithInterval:21600.0];
        v22[0] = v10;
        v11 = [MEMORY[0x277D3F130] pluggedInCriterion];
        v22[1] = v11;
        v12 = [MEMORY[0x277D3F130] displayOffCriterion];
        v22[2] = v12;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];

        v14 = [MEMORY[0x277D3F140] sharedInstance];
        v15 = [v4 workQueue];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __56__PLDuetServiceWithAccounting_initOperatorDependancies___block_invoke_3;
        v19[3] = &unk_27825A740;
        v19[4] = self;
        [v14 scheduleActivityWithIdentifier:@"PLDuetService_duetEnergyAccumulator" withCriteria:v13 withMustRunCriterion:0 withQueue:v15 withInterruptBlock:0 withActivityBlock:v19];

        if (([v4 isDebugEnabled] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F180], "BOOLForKey:ifNotSet:", @"PLDuetService_test", 0))
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterAddObserver(DarwinNotifyCenter, self, testLogEvents, @"com.apple.powerlogd.PLDuetService.testLogEvents", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
          v17 = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterAddObserver(v17, self, testReportEnergy, @"com.apple.powerlogd.PLDuetService.testReportEnergy", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
        }
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveEventWithPayload:(id)a3
{
  v149 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__PLDuetServiceWithAccounting_didReceiveEventWithPayload___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F6978 != -1)
    {
      dispatch_once(&qword_2811F6978, block);
    }

    if (_MergedGlobals_1_59 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"payload=%@", v4];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceWithAccounting didReceiveEventWithPayload:]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:194];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v142 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = PLLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEFAULT, "┏ PLDuetService didReceiveEventWithPayload start", buf, 2u);
  }

  if (!v4 || ([v4 objectForKeyedSubscript:@"events"], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    v109 = PLLogCommon();
    if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v109, OS_LOG_TYPE_ERROR, "┗ PLDuetService didReceiveEventWithPayload end: Invalid payload", buf, 2u);
    }

    goto LABEL_91;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = [MEMORY[0x277CBEB18] array];
  v118 = [MEMORY[0x277CBEB18] array];
  v16 = [(PLDuetServiceImpl *)self duetService];

  v17 = PLLogCommon();
  v18 = v17;
  if (v16)
  {
    context = v14;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v4 objectForKeyedSubscript:@"events"];
      v20 = [v19 count];
      *buf = 67109120;
      LODWORD(v142) = v20;
      _os_log_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEFAULT, "┃ ┏ PLDuetService didReceiveEventWithPayload processing %d events", buf, 8u);
    }

    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v112 = v4;
    obj = [v4 objectForKeyedSubscript:@"events"];
    v116 = [obj countByEnumeratingWithState:&v136 objects:v148 count:16];
    if (v116)
    {
      v114 = *v137;
      v119 = *MEMORY[0x277D3F5D8];
      v123 = self;
      v115 = v15;
      do
      {
        v21 = 0;
        do
        {
          if (*v137 != v114)
          {
            objc_enumerationMutation(obj);
          }

          v117 = v21;
          v22 = *(*(&v136 + 1) + 8 * v21);
          v23 = objc_opt_new();
          v24 = objc_opt_class();
          v25 = [v22 objectForKeyedSubscript:@"bundleID"];
          v26 = [v24 mapBundleID:v25];
          [v23 setBundleID:v26];

          v27 = [v22 objectForKeyedSubscript:@"processName"];
          [v23 setProcessName:v27];

          v28 = [v22 objectForKeyedSubscript:@"updateType"];
          [v23 setUpdateType:{objc_msgSend(v28, "integerValue")}];

          v29 = [v22 objectForKeyedSubscript:@"childBundleIDToWeight"];
          [v23 setChildBundleIDToWeight:v29];

          v30 = PLLogCommon();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v142 = v23;
            _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "┃ ┃ ┏ PLDuetService didReceiveEventWithPayload processing event: %@", buf, 0xCu);
          }

          v31 = [v23 childBundleIDToWeight];
          if (v31 && (v32 = v31, [v23 childBundleIDToWeight], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "count"), v33, v32, v34))
          {
            v121 = v22;
            v35 = [v23 bundleID];
            v36 = [v35 isEqualToString:@"cloudphotod"];

            if (v36)
            {
              v37 = 35;
            }

            else
            {
              v37 = 0;
            }

            v38 = [MEMORY[0x277CBEB38] dictionary];
            v132 = 0u;
            v133 = 0u;
            v134 = 0u;
            v135 = 0u;
            v39 = [v23 childBundleIDToWeight];
            v40 = [v39 countByEnumeratingWithState:&v132 objects:v147 count:16];
            if (v40)
            {
              v41 = v40;
              v42 = *v133;
              do
              {
                for (i = 0; i != v41; ++i)
                {
                  if (*v133 != v42)
                  {
                    objc_enumerationMutation(v39);
                  }

                  v44 = *(*(&v132 + 1) + 8 * i);
                  v45 = [v23 childBundleIDToWeight];
                  v46 = [v45 objectForKeyedSubscript:v44];
                  v47 = [objc_opt_class() mapBundleID:v44];
                  [v38 setObject:v46 forKeyedSubscript:v47];
                }

                v41 = [v39 countByEnumeratingWithState:&v132 objects:v147 count:16];
              }

              while (v41);
            }

            [v23 setChildBundleIDToWeight:v38];
            v22 = v121;
            self = v123;
          }

          else
          {
            v37 = 0;
          }

          v122 = [MEMORY[0x277CBEB18] array];
          v48 = PLLogCommon();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
          {
            v49 = [v22 objectForKeyedSubscript:@"eventIntervals"];
            v50 = [v49 count];
            *buf = 67109120;
            LODWORD(v142) = v50;
            _os_log_impl(&dword_21A4C6000, v48, OS_LOG_TYPE_INFO, "┃ ┃ ┃ ┏ PLDuetService didReceiveEventWithPayload processing %d intervals", buf, 8u);
          }

          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v120 = [v22 objectForKeyedSubscript:@"eventIntervals"];
          v51 = [v120 countByEnumeratingWithState:&v128 objects:v146 count:16];
          if (v51)
          {
            v52 = v51;
            v53 = *v129;
            do
            {
              for (j = 0; j != v52; ++j)
              {
                if (*v129 != v53)
                {
                  objc_enumerationMutation(v120);
                }

                v55 = *(*(&v128 + 1) + 8 * j);
                v56 = objc_opt_new();
                v57 = [v55 objectForKeyedSubscript:@"startDate"];
                v58 = [v57 convertFromSystemToMonotonic];
                [v56 setStartDate:v58];

                v59 = [v55 objectForKeyedSubscript:@"endDate"];
                v60 = [v59 convertFromSystemToMonotonic];
                [v56 setEndDate:v60];

                [v122 addObject:v56];
                v61 = PLLogCommon();
                if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v142 = v56;
                  _os_log_debug_impl(&dword_21A4C6000, v61, OS_LOG_TYPE_DEBUG, "┃ ┃ ┃ ┃ PLDuetService didReceiveEventWithPayload new interval:%@", buf, 0xCu);
                }

                if (v37)
                {
                  v62 = [MEMORY[0x277D3F0C0] sharedInstance];
                  v63 = [v23 childBundleIDToWeight];
                  v64 = [v56 startDate];
                  v65 = [v56 endDate];
                  [v62 createDistributionEventIntervalWithDistributionID:v37 withChildNodeNameToWeight:v63 withStartDate:v64 withEndDate:v65];

                  self = v123;
                }

                v66 = [(PLDuetServiceImpl *)self duetService];
                if (v66)
                {
                  v67 = v66;
                  v68 = [(PLDuetServiceImpl *)self duetService];
                  v69 = [v68 isDebugEnabled];

                  if (v69)
                  {
                    v70 = [(PLOperator *)PLDuetService entryKeyForType:v119 andName:@"DuetEvents"];
                    v71 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v70];
                    v72 = [v23 bundleID];
                    if (v72)
                    {
                      [v23 bundleID];
                    }

                    else
                    {
                      [v23 processName];
                    }
                    v73 = ;
                    [v71 setObject:v73 forKeyedSubscript:@"BundleID"];

                    v74 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v23, "updateType")}];
                    [v71 setObject:v74 forKeyedSubscript:@"UpdateType"];

                    v75 = [v56 startDate];
                    [v71 setObject:v75 forKeyedSubscript:@"StartDate"];

                    v76 = [v56 endDate];
                    [v71 setObject:v76 forKeyedSubscript:@"EndDate"];

                    self = v123;
                    v77 = [(PLDuetServiceImpl *)v123 duetService];

                    if (v77)
                    {
                      v78 = [(PLDuetServiceImpl *)v123 duetService];
                      [v78 logEntry:v71];
                    }
                  }
                }
              }

              v52 = [v120 countByEnumeratingWithState:&v128 objects:v146 count:16];
            }

            while (v52);
          }

          v79 = PLLogCommon();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_21A4C6000, v79, OS_LOG_TYPE_INFO, "┃ ┃ ┃ ┗ PLDuetService didReceiveEventWithPayload finished processing intervals", buf, 2u);
          }

          [v23 setEventIntervals:v122];
          v80 = [v23 updateType];
          v15 = v115;
          v81 = v115;
          if (v80 == 1 || (v82 = [v23 updateType], v81 = v118, v82 == 2))
          {
            [v81 addObject:v23];
          }

          v83 = [v23 childBundleIDToWeight];
          if (v83)
          {
            v84 = v83;
            v85 = [v23 childBundleIDToWeight];
            v86 = [v85 count];

            if (v86)
            {
              v126 = 0u;
              v127 = 0u;
              v124 = 0u;
              v125 = 0u;
              v87 = [v23 childBundleIDToWeight];
              v88 = [v87 countByEnumeratingWithState:&v124 objects:v145 count:16];
              if (v88)
              {
                v89 = v88;
                v90 = *v125;
                do
                {
                  for (k = 0; k != v89; ++k)
                  {
                    if (*v125 != v90)
                    {
                      objc_enumerationMutation(v87);
                    }

                    v92 = *(*(&v124 + 1) + 8 * k);
                    v93 = objc_opt_new();
                    [v93 setBundleID:v92];
                    [v93 setProcessName:v92];
                    [v93 setUpdateType:{objc_msgSend(v23, "updateType")}];
                    v94 = [v23 eventIntervals];
                    [v93 setEventIntervals:v94];

                    v95 = [v93 updateType];
                    v96 = v115;
                    if (v95 == 1 || (v97 = [v93 updateType], v96 = v118, v97 == 2))
                    {
                      [v96 addObject:v93];
                    }

                    v98 = PLLogCommon();
                    if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v142 = v92;
                      _os_log_debug_impl(&dword_21A4C6000, v98, OS_LOG_TYPE_DEBUG, "┃ ┃ ┃ ╸ PLDuetService didReceiveEventWithPayload childEvent for bundleID:%@", buf, 0xCu);
                    }
                  }

                  v89 = [v87 countByEnumeratingWithState:&v124 objects:v145 count:16];
                }

                while (v89);
              }
            }
          }

          v99 = PLLogCommon();
          if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_21A4C6000, v99, OS_LOG_TYPE_DEBUG, "┃ ┃ ┗ PLDuetService didReceiveEventWithPayload finished processing event", buf, 2u);
          }

          v21 = v117 + 1;
        }

        while (v117 + 1 != v116);
        v116 = [obj countByEnumeratingWithState:&v136 objects:v148 count:16];
      }

      while (v116);
    }

    v100 = PLLogCommon();
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21A4C6000, v100, OS_LOG_TYPE_DEFAULT, "┃ ┗ PLDuetService didReceiveEventWithPayload processing events completed", buf, 2u);
    }

    v101 = [(PLDuetServiceWithAccounting *)self eventTransitionsWithEvents:v15];
    v102 = [(PLDuetServiceWithAccounting *)self eventTransitionsWithEvents:v118];
    [(PLDuetServiceWithAccounting *)self createQualificationEventsWithEventTransitions:v101 withQualificationID:11];
    v103 = PLLogCommon();
    v4 = v112;
    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
    {
      v104 = [v101 count];
      v105 = [v15 count];
      *buf = 134218240;
      v142 = v104;
      v143 = 2048;
      v144 = v105;
      _os_log_impl(&dword_21A4C6000, v103, OS_LOG_TYPE_DEFAULT, "┃ PLDuetService didReceiveEventWithPayload created %lu disc transitions from %lu events", buf, 0x16u);
    }

    [(PLDuetServiceWithAccounting *)self createQualificationEventsWithEventTransitions:v102 withQualificationID:12];
    v106 = PLLogCommon();
    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
    {
      v107 = [v102 count];
      v108 = [v118 count];
      *buf = 134218240;
      v142 = v107;
      v143 = 2048;
      v144 = v108;
      _os_log_impl(&dword_21A4C6000, v106, OS_LOG_TYPE_DEFAULT, "┃ PLDuetService didReceiveEventWithPayload created %lu comp transitions from %lu events", buf, 0x16u);
    }

    objc_autoreleasePoolPop(context);
    v109 = PLLogCommon();
    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21A4C6000, v109, OS_LOG_TYPE_DEFAULT, "┗ PLDuetService didReceiveEventWithPayload end", buf, 2u);
    }

LABEL_91:

    goto LABEL_92;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_ERROR, "┗ PLDuetService didReceiveEventWithPayload end: duetService not found", buf, 2u);
  }

  objc_autoreleasePoolPop(v14);
LABEL_92:

  v110 = *MEMORY[0x277D85DE8];
}

uint64_t __58__PLDuetServiceWithAccounting_didReceiveEventWithPayload___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_59 = result;
  return result;
}

- (id)eventTransitionsWithEvents:(id)a3
{
  v72 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = PLLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_INFO, "┃ ┏ PLDuetService eventTransitionsWithEvents start", buf, 2u);
  }

  v5 = [MEMORY[0x277CBEB18] array];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v3;
  v58 = [obj countByEnumeratingWithState:&v63 objects:v71 count:16];
  if (v58)
  {
    v55 = v62;
    v57 = *v64;
    do
    {
      v6 = 0;
      do
      {
        if (*v64 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v63 + 1) + 8 * v6);
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v8 = objc_opt_class();
          v61[0] = MEMORY[0x277D85DD0];
          v61[1] = 3221225472;
          v62[0] = __58__PLDuetServiceWithAccounting_eventTransitionsWithEvents___block_invoke;
          v62[1] = &__block_descriptor_40_e5_v8__0lu32l8;
          v62[2] = v8;
          if (qword_2811F6980 != -1)
          {
            dispatch_once(&qword_2811F6980, v61);
          }

          if (byte_2811F6951 == 1)
          {
            v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"event=%@", v7, v55];
            v10 = MEMORY[0x277D3F178];
            v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
            v12 = [v11 lastPathComponent];
            v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceWithAccounting eventTransitionsWithEvents:]"];
            [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:321];

            v14 = PLLogCommon();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              *v68 = v9;
              _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        v15 = PLLogCommon();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *v68 = v7;
          _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "┃ ┃ ┏ PLDuetService eventTransitionsWithEvents processing event: %@", buf, 0xCu);
        }

        v16 = [v7 eventIntervals];
        v17 = [v16 count];

        if (v17)
        {
          v59 = v6;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          do
          {
            v21 = v19;
            v22 = [v7 eventIntervals];
            v19 = [v22 objectAtIndex:v18];

            v23 = PLLogCommon();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              *v68 = v19;
              _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "┃ ┃ ┃ ┏ PLDuetService eventTransitionsWithEvents processing interval: %@", buf, 0xCu);
            }

            LODWORD(v24) = v20 + 1;
            v25 = [v7 eventIntervals];
            if ([v25 count] <= (v20 + 1))
            {
LABEL_28:
            }

            else
            {
              v24 = v24;
              while (1)
              {
                v26 = [v7 eventIntervals];
                v27 = [v26 objectAtIndex:v24];
                v28 = [v19 intersects:v27];

                if (!v28)
                {
                  break;
                }

                v29 = [v7 eventIntervals];
                v30 = [v29 objectAtIndex:v24];
                v31 = [v19 joinWithInterval:v30];

                v32 = PLLogCommon();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 67109634;
                  *v68 = v20;
                  *&v68[4] = 1024;
                  *&v68[6] = v24;
                  v69 = 2112;
                  v70 = v31;
                  _os_log_debug_impl(&dword_21A4C6000, v32, OS_LOG_TYPE_DEBUG, "┃ ┃ ┃ ┃ PLDuetService eventTransitionsWithEvents Joining intervals %d-%d, active interval updated: %@", buf, 0x18u);
                }

                v20 = v24;

                ++v24;
                v25 = [v7 eventIntervals];
                v19 = v31;
                if ([v25 count] <= v24)
                {
                  v19 = v31;
                  goto LABEL_28;
                }
              }
            }

            v20 = v24;
            if ([MEMORY[0x277D3F180] debugEnabled])
            {
              v33 = objc_opt_class();
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __58__PLDuetServiceWithAccounting_eventTransitionsWithEvents___block_invoke_171;
              block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              block[4] = v33;
              if (qword_2811F6988 != -1)
              {
                dispatch_once(&qword_2811F6988, block);
              }

              if (byte_2811F6952 == 1)
              {
                v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"eventInterval=%@", v19];
                v35 = MEMORY[0x277D3F178];
                v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
                v37 = [v36 lastPathComponent];
                v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceWithAccounting eventTransitionsWithEvents:]"];
                [v35 logMessage:v34 fromFile:v37 fromFunction:v38 fromLineNumber:338];

                v39 = PLLogCommon();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  *v68 = v34;
                  _os_log_debug_impl(&dword_21A4C6000, v39, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }
              }
            }

            v40 = objc_opt_new();
            v41 = [v19 startDate];
            [v40 setDate:v41];

            v42 = [v7 bundleID];
            [v40 setBundleID:v42];

            [v40 setIsStart:1];
            [v5 addObject:v40];
            v43 = PLLogCommon();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v68 = v40;
              _os_log_impl(&dword_21A4C6000, v43, OS_LOG_TYPE_INFO, "┃ ┃ ┃ ┃ PLDuetService eventTransitionsWithEvents created start transition: %@", buf, 0xCu);
            }

            v44 = objc_opt_new();
            v45 = [v19 endDate];
            [v44 setDate:v45];

            v46 = [v7 bundleID];
            [v44 setBundleID:v46];

            [v44 setIsStart:0];
            [v5 addObject:v44];
            v47 = PLLogCommon();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v68 = v44;
              _os_log_impl(&dword_21A4C6000, v47, OS_LOG_TYPE_INFO, "┃ ┃ ┃ ┃ PLDuetService eventTransitionsWithEvents created end transition: %@", buf, 0xCu);
            }

            v48 = PLLogCommon();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&dword_21A4C6000, v48, OS_LOG_TYPE_DEBUG, "┃ ┃ ┃ ┗ PLDuetService eventTransitionsWithEvents finished processing interval", buf, 2u);
            }

            v18 = v20;
            v49 = [v7 eventIntervals];
            v50 = [v49 count];
          }

          while (v50 > v20);

          v6 = v59;
        }

        v51 = PLLogCommon();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_21A4C6000, v51, OS_LOG_TYPE_DEBUG, "┃ ┃ ┗ PLDuetService eventTransitionsWithEvents finished processing event", buf, 2u);
        }

        ++v6;
      }

      while (v6 != v58);
      v58 = [obj countByEnumeratingWithState:&v63 objects:v71 count:16];
    }

    while (v58);
  }

  [v5 sortUsingComparator:&__block_literal_global_61];
  v52 = PLLogCommon();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21A4C6000, v52, OS_LOG_TYPE_INFO, "┃ ┗ PLDuetService eventTransitionsWithEvents end", buf, 2u);
  }

  v53 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t __58__PLDuetServiceWithAccounting_eventTransitionsWithEvents___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6951 = result;
  return result;
}

uint64_t __58__PLDuetServiceWithAccounting_eventTransitionsWithEvents___block_invoke_171(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6952 = result;
  return result;
}

uint64_t __58__PLDuetServiceWithAccounting_eventTransitionsWithEvents___block_invoke_176(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 date];
  v6 = [v4 date];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)createQualificationEventsWithEventTransitions:(id)a3 withQualificationID:(int)a4
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_INFO, "┃ ┏ PLDuetService createQualificationEventsWithEventTransitions start", buf, 2u);
  }

  v6 = [v4 firstObject];
  v7 = [MEMORY[0x277CBEB58] set];
  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v4 count];
    *buf = 67109120;
    LODWORD(v62) = v9;
    _os_log_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_INFO, "┃ ┃ ┏ PLDuetService createQualificationEventsWithEventTransitions processing %d transitions", buf, 8u);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v4;
  v10 = [obj countByEnumeratingWithState:&v57 objects:v67 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v55 = *v58;
    v13 = *MEMORY[0x277D3F118];
    v52 = v7;
    do
    {
      v14 = 0;
      do
      {
        if (*v58 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v57 + 1) + 8 * v14);
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v16 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __97__PLDuetServiceWithAccounting_createQualificationEventsWithEventTransitions_withQualificationID___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v16;
          if (qword_2811F6990 != -1)
          {
            dispatch_once(&qword_2811F6990, block);
          }

          if (byte_2811F6953 == 1)
          {
            v17 = v11;
            v18 = v12;
            v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"lastEventTransition=%@, eventTransition=%@", v6, v15];
            v20 = MEMORY[0x277D3F178];
            v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
            v22 = [v21 lastPathComponent];
            v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceWithAccounting createQualificationEventsWithEventTransitions:withQualificationID:]"];
            [v20 logMessage:v19 fromFile:v22 fromFunction:v23 fromLineNumber:375];

            v24 = PLLogCommon();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v62 = v19;
              _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v12 = v18;
            v11 = v17;
            v7 = v52;
          }
        }

        v25 = PLLogCommon();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v62 = v15;
          _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "┃ ┃ ┃ PLDuetService createQualificationEventsWithEventTransitions current transition:%@", buf, 0xCu);
        }

        v26 = PLLogCommon();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v62 = v7;
          _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "┃ ┃ ┃ PLDuetService createQualificationEventsWithEventTransitions current eventElements:%@", buf, 0xCu);
        }

        v27 = [v15 date];
        v28 = [v6 date];
        [v27 timeIntervalSinceDate:v28];
        v30 = v29;

        if (v30 > v13)
        {
          v31 = [MEMORY[0x277D3F0C0] sharedInstance];
          v32 = [v7 allObjects];
          v33 = [v6 date];
          v34 = [v15 date];
          [v31 createQualificationEventIntervalWithQualificationID:a4 withChildNodeNames:v32 withStartDate:v33 withEndDate:v34];

          v35 = PLLogCommon();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            v39 = [v6 date];
            [v39 timeIntervalSince1970];
            v41 = v40;
            v42 = [v15 date];
            [v42 timeIntervalSince1970];
            v44 = v43;
            v45 = [v15 date];
            [v6 date];
            v46 = v11;
            v12 = v47 = v12;
            [v45 timeIntervalSinceDate:v12];
            *buf = 134218496;
            v62 = v41;
            v63 = 2048;
            v64 = v44;
            v65 = 2048;
            v66 = v48;
            _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "┃ ┃ ┃ PLDuetService createQualificationEventsWithEventTransitions created event with startDate:%f, endDate:%f, timeRange=%f seconds", buf, 0x20u);

            LODWORD(v12) = v47;
            v11 = v46;
            v7 = v52;
          }

          v36 = v15;
          v12 = (v12 + 1);
          v6 = v36;
        }

        v37 = [v15 isStart];
        v38 = [v15 bundleID];
        if (v37)
        {
          [v7 addObject:v38];
        }

        else
        {
          [v7 removeObject:v38];
        }

        ++v14;
      }

      while (v11 != v14);
      v11 = [obj countByEnumeratingWithState:&v57 objects:v67 count:16];
    }

    while (v11);
  }

  else
  {
    LODWORD(v12) = 0;
  }

  v49 = PLLogCommon();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v62) = v12;
    _os_log_impl(&dword_21A4C6000, v49, OS_LOG_TYPE_INFO, "┃ ┃ ┗ PLDuetService createQualificationEventsWithEventTransitions Created %d qualification events", buf, 8u);
  }

  v50 = PLLogCommon();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21A4C6000, v50, OS_LOG_TYPE_INFO, "┃ ┗ PLDuetService createQualificationEventsWithEventTransitions end", buf, 2u);
  }

  v51 = *MEMORY[0x277D85DE8];
}

uint64_t __97__PLDuetServiceWithAccounting_createQualificationEventsWithEventTransitions_withQualificationID___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6953 = result;
  return result;
}

- (id)energyResponse
{
  v39[2] = *MEMORY[0x277D85DE8];
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEFAULT, "┏ PLDuetService energyResponse start", buf, 2u);
  }

  v4 = [(PLDuetServiceImpl *)self duetService];

  if (v4)
  {
    v5 = [(PLDuetServiceWithAccounting *)self energyResponseWithQualificationID:11];
    v6 = PLLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 count];
      *buf = 67109120;
      LODWORD(v37) = v7;
      _os_log_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEFAULT, "┃ PLDuetService discretionaryCumulativeEnergies count: %d", buf, 8u);
    }

    v8 = [(PLDuetServiceWithAccounting *)self energyResponseWithQualificationID:12];
    v9 = PLLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 count];
      *buf = 67109120;
      LODWORD(v37) = v10;
      _os_log_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEFAULT, "┃ PLDuetService complicationCumulativeEnergies count: %d", buf, 8u);
    }

    v11 = [MEMORY[0x277CBEB18] arrayWithArray:v5];
    [v11 addObjectsFromArray:v8];
    v38[0] = @"BLMEnergyForDuet";
    v38[1] = @"BLMUUIDForDuet";
    v39[0] = v11;
    v12 = [(PLDuetServiceImpl *)self duetService];
    v13 = [v12 storage];
    v14 = [v13 uuid];
    v39[1] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];

    v16 = [MEMORY[0x277D3F0C0] sharedInstance];
    v17 = [v16 getLastQualifiedEnergyEventDate];

    v18 = PLLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v37 = v17;
      _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "lastQualifiedDate=%@", buf, 0xCu);
    }

    if (v17)
    {
      v19 = [v17 convertFromMonotonicToSystem];
      v20 = PLLogCommon();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
LABEL_25:

        v35[0] = v11;
        v28 = [(PLDuetServiceImpl *)self duetService:@"BLMEnergyForDuet"];
        v29 = [v28 storage];
        v30 = [v29 uuid];
        v34[2] = @"BLMEnergyResponseTimestamp";
        v35[1] = v30;
        v35[2] = v19;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];

        v31 = PLLogCommon();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21A4C6000, v31, OS_LOG_TYPE_DEFAULT, "┗ PLDuetService energyResponse created", buf, 2u);
        }

        goto LABEL_28;
      }

      *buf = 138412290;
      v37 = v19;
      v21 = "After converting to system time, energyResponseTimestamp=%@";
    }

    else
    {
      v23 = [MEMORY[0x277D3F140] sharedInstance];
      v24 = [v23 lastCompletedDateWithIdentifier:@"PLDuetService_duetEnergyAccumulator"];
      v25 = [v24 dateByAddingTimeInterval:-3600.0];

      v26 = PLLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v37 = v25;
        _os_log_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_INFO, "lastAccumulatedDate=%@", buf, 0xCu);
      }

      v19 = [v25 convertFromMonotonicToSystem];

      v27 = PLLogCommon();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v37 = v19;
        _os_log_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_INFO, "After converting to system time, lastAccumulatedDate=%@", buf, 0xCu);
      }

      if (!v19)
      {
        v19 = [MEMORY[0x277CBEAA8] distantPast];
      }

      v20 = PLLogCommon();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        goto LABEL_25;
      }

      *buf = 138412290;
      v37 = v19;
      v21 = "energyResponse timestamp is lastAccumulatedDate=%@";
    }

    _os_log_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_INFO, v21, buf, 0xCu);
    goto LABEL_25;
  }

  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_ERROR, "┗ PLDuetService energyResponse not created: duetService not found", buf, 2u);
  }

  v22 = MEMORY[0x277CBEC10];
LABEL_28:

  v32 = *MEMORY[0x277D85DE8];

  return v22;
}

uint64_t __65__PLDuetServiceWithAccounting_energyResponseWithQualificationID___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6954 = result;
  return result;
}

uint64_t __65__PLDuetServiceWithAccounting_energyResponseWithQualificationID___block_invoke_205(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6955 = result;
  return result;
}

uint64_t __65__PLDuetServiceWithAccounting_energyResponseWithQualificationID___block_invoke_221(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6956 = result;
  return result;
}

uint64_t __65__PLDuetServiceWithAccounting_energyResponseWithQualificationID___block_invoke_228(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6957 = result;
  return result;
}

- (void)accumulateWithLastCompletedDate:(id)a3 withNow:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__PLDuetServiceWithAccounting_accumulateWithLastCompletedDate_withNow___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (qword_2811F69B8 != -1)
    {
      dispatch_once(&qword_2811F69B8, block);
    }

    if (byte_2811F6958 == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"lastCompletedDate=%@, now=%@", v6, v7];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceWithAccounting accumulateWithLastCompletedDate:withNow:]"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:554];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v23 = v9;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v15 = PLLogCommon();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [v6 timeIntervalSince1970];
    v19 = v18;
    [v7 timeIntervalSince1970];
    *buf = 134218240;
    v23 = v19;
    v24 = 2048;
    v25 = v20;
    _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "┏ PLDuetService accumulateWithLastCompletedDate start, lastCompletedDate=%f, now=%f", buf, 0x16u);
  }

  [(PLDuetServiceWithAccounting *)self accumulateWithLastCompletedDate:v6 withNow:v7 withQualificationID:11];
  [(PLDuetServiceWithAccounting *)self accumulateWithLastCompletedDate:v6 withNow:v7 withQualificationID:12];
  v16 = PLLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "┗ PLDuetService accumulateWithLastCompletedDate end", buf, 2u);
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __71__PLDuetServiceWithAccounting_accumulateWithLastCompletedDate_withNow___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6958 = result;
  return result;
}

- (void)accumulateWithLastCompletedDate:(id)a3 withNow:(id)a4 withQualificationID:(int)a5
{
  v127[4] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = PLLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    LODWORD(v120) = a5;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "┃ ┏ PLDuetService accumulateWithLastCompletedDate start for qualificationID:%d", buf, 8u);
  }

  v10 = [(PLDuetServiceImpl *)self duetService];

  if (v10)
  {
    v98 = self;
    v11 = *MEMORY[0x277D3F5B8];
    v12 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5B8] andName:*MEMORY[0x277D3F2F0]];
    v13 = [v7 dateByAddingTimeInterval:-3600.0];
    if (!v13)
    {
      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "┃ ┃ PLDuetService accumulateWithLastCompletedDate !lastBucketAlreadyAccumulated", buf, 2u);
      }

      v13 = [MEMORY[0x277CBEAA8] distantPast];
    }

    v15 = PLLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [v13 timeIntervalSince1970];
      *buf = 134217984;
      v120 = v86;
      _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "┃ ┃ PLDuetService accumulateWithLastCompletedDate lastBucketAlreadyAccumulated=%f", buf, 0xCu);
    }

    v96 = v7;

    v16 = [v8 dateByAddingTimeInterval:-3600.0];
    v17 = PLLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [v16 timeIntervalSince1970];
      *buf = 134217984;
      v120 = v87;
      _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "┃ ┃ PLDuetService accumulateWithLastCompletedDate lastBucketToAccumulate=%f", buf, 0xCu);
    }

    v18 = objc_alloc(MEMORY[0x277D3F260]);
    v19 = MEMORY[0x277CCABB0];
    v94 = v13;
    [v13 timeIntervalSince1970];
    v20 = [v19 numberWithDouble:?];
    v21 = [v18 initWithKey:@"timestamp" withValue:v20 withComparisonOperation:2];

    v22 = objc_alloc(MEMORY[0x277D3F260]);
    v23 = MEMORY[0x277CCABB0];
    v93 = v16;
    [v16 timeIntervalSince1970];
    v24 = [v23 numberWithDouble:?];
    v25 = [v22 initWithKey:@"timestamp" withValue:v24 withComparisonOperation:4];

    v26 = objc_alloc(MEMORY[0x277D3F260]);
    v27 = *MEMORY[0x277D3F308];
    v28 = [MEMORY[0x277CCABB0] numberWithInt:a5];
    v29 = [v26 initWithKey:v27 withValue:v28 withComparisonOperation:0];

    v30 = objc_alloc(MEMORY[0x277D3F260]);
    v106 = *MEMORY[0x277D3F300];
    v31 = [v30 initWithKey:? withValue:? withComparisonOperation:?];
    v32 = [(PLDuetServiceImpl *)v98 duetService];
    v33 = [v32 storage];
    v91 = v25;
    v92 = v21;
    v127[0] = v21;
    v127[1] = v25;
    v89 = v31;
    v90 = v29;
    v127[2] = v29;
    v127[3] = v31;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v127 count:4];
    v95 = v12;
    v35 = [v33 entriesForKey:v12 withComparisons:v34];

    v97 = v8;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v36 = objc_opt_class();
      v116[0] = MEMORY[0x277D85DD0];
      v116[1] = 3221225472;
      v116[2] = __91__PLDuetServiceWithAccounting_accumulateWithLastCompletedDate_withNow_withQualificationID___block_invoke;
      v116[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v116[4] = v36;
      if (qword_2811F69C0 != -1)
      {
        dispatch_once(&qword_2811F69C0, v116);
      }

      if (byte_2811F6959 == 1)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"aggregateQualificationEnergyEntries=%@", v35];
        v37 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v38 = MEMORY[0x277D3F178];
        v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
        v40 = [v39 lastPathComponent];
        v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceWithAccounting accumulateWithLastCompletedDate:withNow:withQualificationID:]"];
        [v38 logMessage:*&v37 fromFile:v40 fromFunction:v41 fromLineNumber:603];

        v42 = PLLogCommon();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v120 = v37;
          _os_log_debug_impl(&dword_21A4C6000, v42, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v43 = PLLogCommon();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      v88 = [v35 count];
      *buf = 67109120;
      LODWORD(v120) = v88;
      _os_log_debug_impl(&dword_21A4C6000, v43, OS_LOG_TYPE_DEBUG, "┃ ┃ PLDuetService accumulateWithLastCompletedDate %d aggregate entries found", buf, 8u);
    }

    v44 = [(PLDuetServiceImpl *)v98 duetService];
    v45 = [objc_opt_class() entryKeyForType:v11 andName:@"DuetEnergyAccumulator"];

    v46 = [(PLDuetServiceImpl *)v98 duetService];
    v47 = [v46 storage];
    v105 = v45;
    v48 = [v47 entriesForKey:v45];

    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    obj = v48;
    v49 = [obj countByEnumeratingWithState:&v112 objects:v126 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v113;
      do
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v113 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v53 = *(*(&v112 + 1) + 8 * i);
          v54 = PLLogCommon();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v120 = v53;
            _os_log_debug_impl(&dword_21A4C6000, v54, OS_LOG_TYPE_DEBUG, "┃ ┃ ╸ PLDuetService accumulateWithLastCompletedDate existing entry:%@", buf, 0xCu);
          }
        }

        v50 = [obj countByEnumeratingWithState:&v112 objects:v126 count:16];
      }

      while (v50);
    }

    v103 = [MEMORY[0x277CBEB18] array];
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v99 = v35;
    v55 = [v99 countByEnumeratingWithState:&v108 objects:v125 count:16];
    v8 = v97;
    v56 = v98;
    if (v55)
    {
      v57 = v55;
      v104 = *v109;
      v101 = *MEMORY[0x277D3F2F8];
      do
      {
        v58 = 0;
        do
        {
          if (*v109 != v104)
          {
            objc_enumerationMutation(v99);
          }

          v59 = *(*(&v108 + 1) + 8 * v58);
          v60 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v105 withDate:v8];
          v61 = [MEMORY[0x277D3F0D0] sharedInstance];
          v62 = [v59 objectForKeyedSubscript:v106];
          v63 = [v61 nodeNameForNodeID:v62];

          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v64 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __91__PLDuetServiceWithAccounting_accumulateWithLastCompletedDate_withNow_withQualificationID___block_invoke_240;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v64;
            if (qword_2811F69C8 != -1)
            {
              dispatch_once(&qword_2811F69C8, block);
            }

            if (byte_2811F695A == 1)
            {
              [MEMORY[0x277CCACA8] stringWithFormat:@"bundleID=%@", v63];
              v65 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v66 = MEMORY[0x277D3F178];
              v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
              v68 = [v67 lastPathComponent];
              v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceWithAccounting accumulateWithLastCompletedDate:withNow:withQualificationID:]"];
              [v66 logMessage:*&v65 fromFile:v68 fromFunction:v69 fromLineNumber:620];

              v70 = PLLogCommon();
              if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v120 = v65;
                _os_log_debug_impl(&dword_21A4C6000, v70, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v8 = v97;
              v56 = v98;
            }
          }

          v71 = PLLogCommon();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
          {
            [v59 objectForKeyedSubscript:v106];
            v79 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            v80 = [v59 objectForKeyedSubscript:@"timestamp"];
            *buf = 138412802;
            v120 = v79;
            v121 = 2112;
            v122 = v63;
            v123 = 2112;
            v124 = v80;
            _os_log_debug_impl(&dword_21A4C6000, v71, OS_LOG_TYPE_DEBUG, "┃ ┃ ┏ PLDuetService accumulateWithLastCompletedDate entry for nodeID:%@, bundleID:%@, timestamp:%@", buf, 0x20u);

            v56 = v98;
          }

          if (v63)
          {
            [v60 setObject:v63 forKeyedSubscript:@"BundleID"];
            v72 = [MEMORY[0x277CCABB0] numberWithInt:a5];
            [v60 setObject:v72 forKeyedSubscript:@"QualificationID"];

            v73 = [v59 objectForKeyedSubscript:v101];
            [v73 doubleValue];
            v75 = v74 / 1000.0;

            v76 = fmin(v75, 10000.0);
            v77 = [MEMORY[0x277CCABB0] numberWithDouble:v76];
            [v60 setObject:v77 forKeyedSubscript:@"Energy"];

            v78 = PLLogCommon();
            if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134217984;
              v120 = v76;
              _os_log_debug_impl(&dword_21A4C6000, v78, OS_LOG_TYPE_DEBUG, "┃ ┃ ┗ PLDuetService accumulateWithLastCompletedDate entry energy:%fmWh", buf, 0xCu);
            }

            [v103 addObject:v60];
          }

          ++v58;
        }

        while (v57 != v58);
        v57 = [v99 countByEnumeratingWithState:&v108 objects:v125 count:16];
      }

      while (v57);
    }

    if ([v103 count])
    {
      v81 = [(PLDuetServiceImpl *)v56 duetService];

      if (v81)
      {
        v82 = [(PLDuetServiceImpl *)v56 duetService];
        v117 = v105;
        v118 = v103;
        v83 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
        [v82 logEntries:v83 withGroupID:v105];
      }
    }

    v84 = PLLogCommon();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v84, OS_LOG_TYPE_DEBUG, "┃ ┗ PLDuetService accumulateWithLastCompletedDate end", buf, 2u);
    }

    v7 = v96;
  }

  v85 = *MEMORY[0x277D85DE8];
}

uint64_t __91__PLDuetServiceWithAccounting_accumulateWithLastCompletedDate_withNow_withQualificationID___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6959 = result;
  return result;
}

uint64_t __91__PLDuetServiceWithAccounting_accumulateWithLastCompletedDate_withNow_withQualificationID___block_invoke_240(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F695A = result;
  return result;
}

+ (id)mapBundleID:(id)a3
{
  v3 = qword_2811F69D0;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_2811F69D0, &__block_literal_global_242_0);
  }

  v5 = [qword_2811F69D8 objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v7;
}

void __43__PLDuetServiceWithAccounting_mapBundleID___block_invoke()
{
  v0 = qword_2811F69D8;
  qword_2811F69D8 = &unk_282C19CC8;
}

@end