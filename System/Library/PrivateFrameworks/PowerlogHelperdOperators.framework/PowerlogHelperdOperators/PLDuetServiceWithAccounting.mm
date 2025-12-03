@interface PLDuetServiceWithAccounting
+ (id)mapBundleID:(id)d;
- (PLDuetServiceWithAccounting)init;
- (id)energyResponse;
- (id)eventTransitionsWithEvents:(id)events;
- (void)accumulateWithLastCompletedDate:(id)date withNow:(id)now;
- (void)accumulateWithLastCompletedDate:(id)date withNow:(id)now withQualificationID:(int)d;
- (void)createQualificationEventsWithEventTransitions:(id)transitions withQualificationID:(int)d;
- (void)didReceiveEventWithPayload:(id)payload;
- (void)energyResponse;
- (void)initOperatorDependancies:(id)dependancies;
@end

@implementation PLDuetServiceWithAccounting

- (PLDuetServiceWithAccounting)init
{
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    selfCopy = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PLDuetServiceWithAccounting;
    v4 = [(PLDuetServiceWithAccounting *)&v6 init];
    [(PLDuetServiceImpl *)v4 setDuetService:0];
    self = v4;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)initOperatorDependancies:(id)dependancies
{
  v22[3] = *MEMORY[0x277D85DE8];
  dependanciesCopy = dependancies;
  if (!+[PLUtilities isPowerlogHelperd])
  {
    v5 = +[PLUtilities isPerfPowerMetricd];
    if (dependanciesCopy)
    {
      if (!v5)
      {
        [(PLDuetServiceImpl *)self setDuetService:dependanciesCopy];
        v6 = objc_alloc(MEMORY[0x277D3F270]);
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __56__PLDuetServiceWithAccounting_initOperatorDependancies___block_invoke;
        v21[3] = &unk_279A5BCB8;
        v21[4] = self;
        v7 = [v6 initWithOperator:dependanciesCopy withRegistration:&unk_287148A68 withBlock:v21];
        [(PLDuetServiceImpl *)self setEventListener:v7];

        v8 = objc_alloc(MEMORY[0x277D3F278]);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __56__PLDuetServiceWithAccounting_initOperatorDependancies___block_invoke_2;
        v20[3] = &unk_279A5BEC8;
        v20[4] = self;
        v9 = [v8 initWithOperator:dependanciesCopy withRegistration:&unk_287148A90 withBlock:v20];
        [(PLDuetServiceImpl *)self setEnergyResponder:v9];

        v10 = [MEMORY[0x277D3F138] timeCriterionWithInterval:21600.0];
        v22[0] = v10;
        pluggedInCriterion = [MEMORY[0x277D3F130] pluggedInCriterion];
        v22[1] = pluggedInCriterion;
        displayOffCriterion = [MEMORY[0x277D3F130] displayOffCriterion];
        v22[2] = displayOffCriterion;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];

        mEMORY[0x277D3F140] = [MEMORY[0x277D3F140] sharedInstance];
        workQueue = [dependanciesCopy workQueue];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __56__PLDuetServiceWithAccounting_initOperatorDependancies___block_invoke_3;
        v19[3] = &unk_279A5D448;
        v19[4] = self;
        [mEMORY[0x277D3F140] scheduleActivityWithIdentifier:@"PLDuetService_duetEnergyAccumulator" withCriteria:v13 withMustRunCriterion:0 withQueue:workQueue withInterruptBlock:0 withActivityBlock:v19];

        if (([dependanciesCopy isDebugEnabled] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F180], "BOOLForKey:ifNotSet:", @"PLDuetService_test", 0))
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

- (void)didReceiveEventWithPayload:(id)payload
{
  v150 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__PLDuetServiceWithAccounting_didReceiveEventWithPayload___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (didReceiveEventWithPayload__defaultOnce != -1)
    {
      dispatch_once(&didReceiveEventWithPayload__defaultOnce, block);
    }

    if (didReceiveEventWithPayload__classDebugEnabled == 1)
    {
      payloadCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"payload=%@", payloadCopy];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceWithAccounting didReceiveEventWithPayload:]"];
      [v7 logMessage:payloadCopy fromFile:lastPathComponent fromFunction:v10 fromLineNumber:194];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  v12 = PLLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v12, OS_LOG_TYPE_DEFAULT, "┏ PLDuetService didReceiveEventWithPayload start", buf, 2u);
  }

  if (!payloadCopy || ([payloadCopy objectForKeyedSubscript:@"events"], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    v108 = PLLogCommon();
    if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      [PLDuetServiceWithAccounting didReceiveEventWithPayload:];
    }

    goto LABEL_91;
  }

  v14 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  duetService = [(PLDuetServiceImpl *)self duetService];

  v16 = PLLogCommon();
  v17 = v16;
  if (duetService)
  {
    context = v14;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [payloadCopy objectForKeyedSubscript:@"events"];
      v19 = [v18 count];
      *buf = 67109120;
      LODWORD(v143) = v19;
      _os_log_impl(&dword_25EE51000, v17, OS_LOG_TYPE_DEFAULT, "┃ ┏ PLDuetService didReceiveEventWithPayload processing %d events", buf, 8u);
    }

    v139 = 0u;
    v140 = 0u;
    v137 = 0u;
    v138 = 0u;
    v111 = payloadCopy;
    obj = [payloadCopy objectForKeyedSubscript:@"events"];
    v114 = [obj countByEnumeratingWithState:&v137 objects:v149 count:16];
    if (v114)
    {
      v113 = *v138;
      v117 = *MEMORY[0x277D3F5D8];
      selfCopy = self;
      do
      {
        v20 = 0;
        do
        {
          if (*v138 != v113)
          {
            objc_enumerationMutation(obj);
          }

          v115 = v20;
          v21 = *(*(&v137 + 1) + 8 * v20);
          v22 = objc_opt_new();
          v23 = objc_opt_class();
          v24 = [v21 objectForKeyedSubscript:@"bundleID"];
          v25 = [v23 mapBundleID:v24];
          [v22 setBundleID:v25];

          v26 = [v21 objectForKeyedSubscript:@"processName"];
          [v22 setProcessName:v26];

          v27 = [v21 objectForKeyedSubscript:@"updateType"];
          [v22 setUpdateType:{objc_msgSend(v27, "integerValue")}];

          v28 = [v21 objectForKeyedSubscript:@"childBundleIDToWeight"];
          [v22 setChildBundleIDToWeight:v28];

          v29 = PLLogCommon();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v143 = v22;
            _os_log_debug_impl(&dword_25EE51000, v29, OS_LOG_TYPE_DEBUG, "┃ ┃ ┏ PLDuetService didReceiveEventWithPayload processing event: %@", buf, 0xCu);
          }

          childBundleIDToWeight = [v22 childBundleIDToWeight];
          if (childBundleIDToWeight && (v31 = childBundleIDToWeight, [v22 childBundleIDToWeight], v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "count"), v32, v31, v33))
          {
            v120 = v21;
            bundleID = [v22 bundleID];
            v35 = [bundleID isEqualToString:@"cloudphotod"];

            if (v35)
            {
              v36 = 35;
            }

            else
            {
              v36 = 0;
            }

            dictionary = [MEMORY[0x277CBEB38] dictionary];
            v133 = 0u;
            v134 = 0u;
            v135 = 0u;
            v136 = 0u;
            childBundleIDToWeight2 = [v22 childBundleIDToWeight];
            v39 = [childBundleIDToWeight2 countByEnumeratingWithState:&v133 objects:v148 count:16];
            if (v39)
            {
              v40 = v39;
              v41 = *v134;
              do
              {
                for (i = 0; i != v40; ++i)
                {
                  if (*v134 != v41)
                  {
                    objc_enumerationMutation(childBundleIDToWeight2);
                  }

                  v43 = *(*(&v133 + 1) + 8 * i);
                  childBundleIDToWeight3 = [v22 childBundleIDToWeight];
                  v45 = [childBundleIDToWeight3 objectForKeyedSubscript:v43];
                  v46 = [objc_opt_class() mapBundleID:v43];
                  [dictionary setObject:v45 forKeyedSubscript:v46];
                }

                v40 = [childBundleIDToWeight2 countByEnumeratingWithState:&v133 objects:v148 count:16];
              }

              while (v40);
            }

            [v22 setChildBundleIDToWeight:dictionary];
            v21 = v120;
            self = selfCopy;
          }

          else
          {
            v36 = 0;
          }

          array3 = [MEMORY[0x277CBEB18] array];
          v47 = PLLogCommon();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
          {
            v48 = [v21 objectForKeyedSubscript:@"eventIntervals"];
            v49 = [v48 count];
            *buf = 67109120;
            LODWORD(v143) = v49;
            _os_log_impl(&dword_25EE51000, v47, OS_LOG_TYPE_INFO, "┃ ┃ ┃ ┏ PLDuetService didReceiveEventWithPayload processing %d intervals", buf, 8u);
          }

          v131 = 0u;
          v132 = 0u;
          v129 = 0u;
          v130 = 0u;
          v119 = [v21 objectForKeyedSubscript:@"eventIntervals"];
          v50 = [v119 countByEnumeratingWithState:&v129 objects:v147 count:16];
          if (v50)
          {
            v51 = v50;
            v52 = *v130;
            do
            {
              for (j = 0; j != v51; ++j)
              {
                if (*v130 != v52)
                {
                  objc_enumerationMutation(v119);
                }

                v54 = *(*(&v129 + 1) + 8 * j);
                v55 = objc_opt_new();
                v56 = [v54 objectForKeyedSubscript:@"startDate"];
                convertFromSystemToMonotonic = [v56 convertFromSystemToMonotonic];
                [v55 setStartDate:convertFromSystemToMonotonic];

                v58 = [v54 objectForKeyedSubscript:@"endDate"];
                convertFromSystemToMonotonic2 = [v58 convertFromSystemToMonotonic];
                [v55 setEndDate:convertFromSystemToMonotonic2];

                [array3 addObject:v55];
                v60 = PLLogCommon();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v143 = v55;
                  _os_log_debug_impl(&dword_25EE51000, v60, OS_LOG_TYPE_DEBUG, "┃ ┃ ┃ ┃ PLDuetService didReceiveEventWithPayload new interval:%@", buf, 0xCu);
                }

                if (v36)
                {
                  mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
                  childBundleIDToWeight4 = [v22 childBundleIDToWeight];
                  startDate = [v55 startDate];
                  endDate = [v55 endDate];
                  [mEMORY[0x277D3F0C0] createDistributionEventIntervalWithDistributionID:v36 withChildNodeNameToWeight:childBundleIDToWeight4 withStartDate:startDate withEndDate:endDate];

                  self = selfCopy;
                }

                duetService2 = [(PLDuetServiceImpl *)self duetService];
                if (duetService2)
                {
                  v66 = duetService2;
                  duetService3 = [(PLDuetServiceImpl *)self duetService];
                  isDebugEnabled = [duetService3 isDebugEnabled];

                  if (isDebugEnabled)
                  {
                    v69 = [(PLOperator *)PLDuetService entryKeyForType:v117 andName:@"DuetEvents"];
                    v70 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v69];
                    bundleID2 = [v22 bundleID];
                    if (bundleID2)
                    {
                      [v22 bundleID];
                    }

                    else
                    {
                      [v22 processName];
                    }
                    v72 = ;
                    [v70 setObject:v72 forKeyedSubscript:@"BundleID"];

                    v73 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v22, "updateType")}];
                    [v70 setObject:v73 forKeyedSubscript:@"UpdateType"];

                    startDate2 = [v55 startDate];
                    [v70 setObject:startDate2 forKeyedSubscript:@"StartDate"];

                    endDate2 = [v55 endDate];
                    [v70 setObject:endDate2 forKeyedSubscript:@"EndDate"];

                    duetService4 = [(PLDuetServiceImpl *)selfCopy duetService];

                    if (duetService4)
                    {
                      duetService5 = [(PLDuetServiceImpl *)selfCopy duetService];
                      [duetService5 logEntry:v70];
                    }

                    self = selfCopy;
                  }
                }
              }

              v51 = [v119 countByEnumeratingWithState:&v129 objects:v147 count:16];
            }

            while (v51);
          }

          v78 = PLLogCommon();
          if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_25EE51000, v78, OS_LOG_TYPE_INFO, "┃ ┃ ┃ ┗ PLDuetService didReceiveEventWithPayload finished processing intervals", buf, 2u);
          }

          [v22 setEventIntervals:array3];
          updateType = [v22 updateType];
          v80 = array;
          if (updateType == 1 || (v81 = [v22 updateType], v80 = array2, v81 == 2))
          {
            [v80 addObject:v22];
          }

          childBundleIDToWeight5 = [v22 childBundleIDToWeight];
          if (childBundleIDToWeight5)
          {
            v83 = childBundleIDToWeight5;
            childBundleIDToWeight6 = [v22 childBundleIDToWeight];
            v85 = [childBundleIDToWeight6 count];

            if (v85)
            {
              v127 = 0u;
              v128 = 0u;
              v125 = 0u;
              v126 = 0u;
              childBundleIDToWeight7 = [v22 childBundleIDToWeight];
              v87 = [childBundleIDToWeight7 countByEnumeratingWithState:&v125 objects:v146 count:16];
              if (v87)
              {
                v88 = v87;
                v89 = *v126;
                do
                {
                  for (k = 0; k != v88; ++k)
                  {
                    if (*v126 != v89)
                    {
                      objc_enumerationMutation(childBundleIDToWeight7);
                    }

                    v91 = *(*(&v125 + 1) + 8 * k);
                    v92 = objc_opt_new();
                    [v92 setBundleID:v91];
                    [v92 setProcessName:v91];
                    [v92 setUpdateType:{objc_msgSend(v22, "updateType")}];
                    eventIntervals = [v22 eventIntervals];
                    [v92 setEventIntervals:eventIntervals];

                    updateType2 = [v92 updateType];
                    v95 = array;
                    if (updateType2 == 1 || (v96 = [v92 updateType], v95 = array2, v96 == 2))
                    {
                      [v95 addObject:v92];
                    }

                    v97 = PLLogCommon();
                    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v143 = v91;
                      _os_log_debug_impl(&dword_25EE51000, v97, OS_LOG_TYPE_DEBUG, "┃ ┃ ┃ ╸ PLDuetService didReceiveEventWithPayload childEvent for bundleID:%@", buf, 0xCu);
                    }
                  }

                  v88 = [childBundleIDToWeight7 countByEnumeratingWithState:&v125 objects:v146 count:16];
                }

                while (v88);
              }
            }
          }

          v98 = PLLogCommon();
          if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
          {
            [(PLDuetServiceWithAccounting *)&v123 didReceiveEventWithPayload:v124];
          }

          v20 = v115 + 1;
        }

        while (v115 + 1 != v114);
        v114 = [obj countByEnumeratingWithState:&v137 objects:v149 count:16];
      }

      while (v114);
    }

    v99 = PLLogCommon();
    if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EE51000, v99, OS_LOG_TYPE_DEFAULT, "┃ ┗ PLDuetService didReceiveEventWithPayload processing events completed", buf, 2u);
    }

    v100 = [(PLDuetServiceWithAccounting *)self eventTransitionsWithEvents:array];
    v101 = [(PLDuetServiceWithAccounting *)self eventTransitionsWithEvents:array2];
    [(PLDuetServiceWithAccounting *)self createQualificationEventsWithEventTransitions:v100 withQualificationID:11];
    v102 = PLLogCommon();
    payloadCopy = v111;
    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
    {
      v103 = [v100 count];
      v104 = [array count];
      *buf = 134218240;
      v143 = v103;
      v144 = 2048;
      v145 = v104;
      _os_log_impl(&dword_25EE51000, v102, OS_LOG_TYPE_DEFAULT, "┃ PLDuetService didReceiveEventWithPayload created %lu disc transitions from %lu events", buf, 0x16u);
    }

    [(PLDuetServiceWithAccounting *)self createQualificationEventsWithEventTransitions:v101 withQualificationID:12];
    v105 = PLLogCommon();
    if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
    {
      v106 = [v101 count];
      v107 = [array2 count];
      *buf = 134218240;
      v143 = v106;
      v144 = 2048;
      v145 = v107;
      _os_log_impl(&dword_25EE51000, v105, OS_LOG_TYPE_DEFAULT, "┃ PLDuetService didReceiveEventWithPayload created %lu comp transitions from %lu events", buf, 0x16u);
    }

    objc_autoreleasePoolPop(context);
    v108 = PLLogCommon();
    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EE51000, v108, OS_LOG_TYPE_DEFAULT, "┗ PLDuetService didReceiveEventWithPayload end", buf, 2u);
    }

LABEL_91:

    goto LABEL_92;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [PLDuetServiceWithAccounting didReceiveEventWithPayload:];
  }

  objc_autoreleasePoolPop(v14);
LABEL_92:

  v109 = *MEMORY[0x277D85DE8];
}

uint64_t __58__PLDuetServiceWithAccounting_didReceiveEventWithPayload___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didReceiveEventWithPayload__classDebugEnabled = result;
  return result;
}

- (id)eventTransitionsWithEvents:(id)events
{
  v76 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v4 = PLLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v4, OS_LOG_TYPE_INFO, "┃ ┏ PLDuetService eventTransitionsWithEvents start", buf, 2u);
  }

  array = [MEMORY[0x277CBEB18] array];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = eventsCopy;
  v58 = [obj countByEnumeratingWithState:&v67 objects:v75 count:16];
  if (v58)
  {
    v55 = v66;
    v57 = *v68;
    do
    {
      v6 = 0;
      do
      {
        if (*v68 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v67 + 1) + 8 * v6);
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v8 = objc_opt_class();
          v65[0] = MEMORY[0x277D85DD0];
          v65[1] = 3221225472;
          v66[0] = __58__PLDuetServiceWithAccounting_eventTransitionsWithEvents___block_invoke;
          v66[1] = &__block_descriptor_40_e5_v8__0lu32l8;
          v66[2] = v8;
          if (eventTransitionsWithEvents__defaultOnce != -1)
          {
            dispatch_once(&eventTransitionsWithEvents__defaultOnce, v65);
          }

          if (eventTransitionsWithEvents__classDebugEnabled == 1)
          {
            v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"event=%@", v7, v55];
            v10 = MEMORY[0x277D3F178];
            v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
            lastPathComponent = [v11 lastPathComponent];
            v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceWithAccounting eventTransitionsWithEvents:]"];
            [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:321];

            v14 = PLLogCommon();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              *v72 = v9;
              _os_log_debug_impl(&dword_25EE51000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        v15 = PLLogCommon();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *v72 = v7;
          _os_log_debug_impl(&dword_25EE51000, v15, OS_LOG_TYPE_DEBUG, "┃ ┃ ┏ PLDuetService eventTransitionsWithEvents processing event: %@", buf, 0xCu);
        }

        eventIntervals = [v7 eventIntervals];
        v17 = [eventIntervals count];

        if (v17)
        {
          v59 = v6;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          do
          {
            v21 = v19;
            eventIntervals2 = [v7 eventIntervals];
            v19 = [eventIntervals2 objectAtIndex:v18];

            v23 = PLLogCommon();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              *v72 = v19;
              _os_log_debug_impl(&dword_25EE51000, v23, OS_LOG_TYPE_DEBUG, "┃ ┃ ┃ ┏ PLDuetService eventTransitionsWithEvents processing interval: %@", buf, 0xCu);
            }

            LODWORD(v24) = v20 + 1;
            eventIntervals3 = [v7 eventIntervals];
            if ([eventIntervals3 count] <= (v20 + 1))
            {
LABEL_28:
            }

            else
            {
              v24 = v24;
              while (1)
              {
                eventIntervals4 = [v7 eventIntervals];
                v27 = [eventIntervals4 objectAtIndex:v24];
                v28 = [v19 intersects:v27];

                if (!v28)
                {
                  break;
                }

                eventIntervals5 = [v7 eventIntervals];
                v30 = [eventIntervals5 objectAtIndex:v24];
                v31 = [v19 joinWithInterval:v30];

                v32 = PLLogCommon();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 67109634;
                  *v72 = v20;
                  *&v72[4] = 1024;
                  *&v72[6] = v24;
                  v73 = 2112;
                  v74 = v31;
                  _os_log_debug_impl(&dword_25EE51000, v32, OS_LOG_TYPE_DEBUG, "┃ ┃ ┃ ┃ PLDuetService eventTransitionsWithEvents Joining intervals %d-%d, active interval updated: %@", buf, 0x18u);
                }

                v20 = v24;

                ++v24;
                eventIntervals3 = [v7 eventIntervals];
                v19 = v31;
                if ([eventIntervals3 count] <= v24)
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
              if (eventTransitionsWithEvents__defaultOnce_169 != -1)
              {
                dispatch_once(&eventTransitionsWithEvents__defaultOnce_169, block);
              }

              if (eventTransitionsWithEvents__classDebugEnabled_170 == 1)
              {
                v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"eventInterval=%@", v19];
                v35 = MEMORY[0x277D3F178];
                v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
                lastPathComponent2 = [v36 lastPathComponent];
                v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceWithAccounting eventTransitionsWithEvents:]"];
                [v35 logMessage:v34 fromFile:lastPathComponent2 fromFunction:v38 fromLineNumber:338];

                v39 = PLLogCommon();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  *v72 = v34;
                  _os_log_debug_impl(&dword_25EE51000, v39, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }
              }
            }

            v40 = objc_opt_new();
            startDate = [v19 startDate];
            [v40 setDate:startDate];

            bundleID = [v7 bundleID];
            [v40 setBundleID:bundleID];

            [v40 setIsStart:1];
            [array addObject:v40];
            v43 = PLLogCommon();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v72 = v40;
              _os_log_impl(&dword_25EE51000, v43, OS_LOG_TYPE_INFO, "┃ ┃ ┃ ┃ PLDuetService eventTransitionsWithEvents created start transition: %@", buf, 0xCu);
            }

            v44 = objc_opt_new();
            endDate = [v19 endDate];
            [v44 setDate:endDate];

            bundleID2 = [v7 bundleID];
            [v44 setBundleID:bundleID2];

            [v44 setIsStart:0];
            [array addObject:v44];
            v47 = PLLogCommon();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v72 = v44;
              _os_log_impl(&dword_25EE51000, v47, OS_LOG_TYPE_INFO, "┃ ┃ ┃ ┃ PLDuetService eventTransitionsWithEvents created end transition: %@", buf, 0xCu);
            }

            v48 = PLLogCommon();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              [(PLDuetServiceWithAccounting *)&v62 eventTransitionsWithEvents:v63];
            }

            v18 = v20;
            eventIntervals6 = [v7 eventIntervals];
            v50 = [eventIntervals6 count];
          }

          while (v50 > v20);

          v6 = v59;
        }

        v51 = PLLogCommon();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          [(PLDuetServiceWithAccounting *)&v60 eventTransitionsWithEvents:v61];
        }

        ++v6;
      }

      while (v6 != v58);
      v58 = [obj countByEnumeratingWithState:&v67 objects:v75 count:16];
    }

    while (v58);
  }

  [array sortUsingComparator:&__block_literal_global_20];
  v52 = PLLogCommon();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v52, OS_LOG_TYPE_INFO, "┃ ┗ PLDuetService eventTransitionsWithEvents end", buf, 2u);
  }

  v53 = *MEMORY[0x277D85DE8];

  return array;
}

uint64_t __58__PLDuetServiceWithAccounting_eventTransitionsWithEvents___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  eventTransitionsWithEvents__classDebugEnabled = result;
  return result;
}

uint64_t __58__PLDuetServiceWithAccounting_eventTransitionsWithEvents___block_invoke_171(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  eventTransitionsWithEvents__classDebugEnabled_170 = result;
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

- (void)createQualificationEventsWithEventTransitions:(id)transitions withQualificationID:(int)d
{
  v68 = *MEMORY[0x277D85DE8];
  transitionsCopy = transitions;
  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v5, OS_LOG_TYPE_INFO, "┃ ┏ PLDuetService createQualificationEventsWithEventTransitions start", buf, 2u);
  }

  firstObject = [transitionsCopy firstObject];
  v7 = [MEMORY[0x277CBEB58] set];
  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [transitionsCopy count];
    *buf = 67109120;
    LODWORD(v62) = v9;
    _os_log_impl(&dword_25EE51000, v8, OS_LOG_TYPE_INFO, "┃ ┃ ┏ PLDuetService createQualificationEventsWithEventTransitions processing %d transitions", buf, 8u);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = transitionsCopy;
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
          if (createQualificationEventsWithEventTransitions_withQualificationID__defaultOnce != -1)
          {
            dispatch_once(&createQualificationEventsWithEventTransitions_withQualificationID__defaultOnce, block);
          }

          if (createQualificationEventsWithEventTransitions_withQualificationID__classDebugEnabled == 1)
          {
            v17 = v11;
            v18 = v12;
            v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"lastEventTransition=%@, eventTransition=%@", firstObject, v15];
            v20 = MEMORY[0x277D3F178];
            v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
            lastPathComponent = [v21 lastPathComponent];
            v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceWithAccounting createQualificationEventsWithEventTransitions:withQualificationID:]"];
            [v20 logMessage:v19 fromFile:lastPathComponent fromFunction:v23 fromLineNumber:375];

            v24 = PLLogCommon();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v62 = v19;
              _os_log_debug_impl(&dword_25EE51000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
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
          _os_log_debug_impl(&dword_25EE51000, v25, OS_LOG_TYPE_DEBUG, "┃ ┃ ┃ PLDuetService createQualificationEventsWithEventTransitions current transition:%@", buf, 0xCu);
        }

        v26 = PLLogCommon();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v62 = v7;
          _os_log_debug_impl(&dword_25EE51000, v26, OS_LOG_TYPE_DEBUG, "┃ ┃ ┃ PLDuetService createQualificationEventsWithEventTransitions current eventElements:%@", buf, 0xCu);
        }

        date = [v15 date];
        date2 = [firstObject date];
        [date timeIntervalSinceDate:date2];
        v30 = v29;

        if (v30 > v13)
        {
          mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
          allObjects = [v7 allObjects];
          date3 = [firstObject date];
          date4 = [v15 date];
          [mEMORY[0x277D3F0C0] createQualificationEventIntervalWithQualificationID:d withChildNodeNames:allObjects withStartDate:date3 withEndDate:date4];

          v35 = PLLogCommon();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            date5 = [firstObject date];
            [date5 timeIntervalSince1970];
            v41 = v40;
            date6 = [v15 date];
            [date6 timeIntervalSince1970];
            v44 = v43;
            date7 = [v15 date];
            [firstObject date];
            v46 = v11;
            v12 = v47 = v12;
            [date7 timeIntervalSinceDate:v12];
            *buf = 134218496;
            v62 = v41;
            v63 = 2048;
            v64 = v44;
            v65 = 2048;
            v66 = v48;
            _os_log_debug_impl(&dword_25EE51000, v35, OS_LOG_TYPE_DEBUG, "┃ ┃ ┃ PLDuetService createQualificationEventsWithEventTransitions created event with startDate:%f, endDate:%f, timeRange=%f seconds", buf, 0x20u);

            LODWORD(v12) = v47;
            v11 = v46;
            v7 = v52;
          }

          v36 = v15;
          v12 = (v12 + 1);
          firstObject = v36;
        }

        isStart = [v15 isStart];
        bundleID = [v15 bundleID];
        if (isStart)
        {
          [v7 addObject:bundleID];
        }

        else
        {
          [v7 removeObject:bundleID];
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
    _os_log_impl(&dword_25EE51000, v49, OS_LOG_TYPE_INFO, "┃ ┃ ┗ PLDuetService createQualificationEventsWithEventTransitions Created %d qualification events", buf, 8u);
  }

  v50 = PLLogCommon();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v50, OS_LOG_TYPE_INFO, "┃ ┗ PLDuetService createQualificationEventsWithEventTransitions end", buf, 2u);
  }

  v51 = *MEMORY[0x277D85DE8];
}

uint64_t __97__PLDuetServiceWithAccounting_createQualificationEventsWithEventTransitions_withQualificationID___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  createQualificationEventsWithEventTransitions_withQualificationID__classDebugEnabled = result;
  return result;
}

- (id)energyResponse
{
  v39[2] = *MEMORY[0x277D85DE8];
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v3, OS_LOG_TYPE_DEFAULT, "┏ PLDuetService energyResponse start", buf, 2u);
  }

  duetService = [(PLDuetServiceImpl *)self duetService];

  if (duetService)
  {
    v5 = [(PLDuetServiceWithAccounting *)self energyResponseWithQualificationID:11];
    v6 = PLLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 count];
      *buf = 67109120;
      LODWORD(v37) = v7;
      _os_log_impl(&dword_25EE51000, v6, OS_LOG_TYPE_DEFAULT, "┃ PLDuetService discretionaryCumulativeEnergies count: %d", buf, 8u);
    }

    v8 = [(PLDuetServiceWithAccounting *)self energyResponseWithQualificationID:12];
    v9 = PLLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 count];
      *buf = 67109120;
      LODWORD(v37) = v10;
      _os_log_impl(&dword_25EE51000, v9, OS_LOG_TYPE_DEFAULT, "┃ PLDuetService complicationCumulativeEnergies count: %d", buf, 8u);
    }

    v11 = [MEMORY[0x277CBEB18] arrayWithArray:v5];
    [v11 addObjectsFromArray:v8];
    v38[0] = @"BLMEnergyForDuet";
    v38[1] = @"BLMUUIDForDuet";
    v39[0] = v11;
    duetService2 = [(PLDuetServiceImpl *)self duetService];
    storage = [duetService2 storage];
    uuid = [storage uuid];
    v39[1] = uuid;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];

    mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
    getLastQualifiedEnergyEventDate = [mEMORY[0x277D3F0C0] getLastQualifiedEnergyEventDate];

    v18 = PLLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [PLDuetServiceWithAccounting energyResponse];
    }

    if (getLastQualifiedEnergyEventDate)
    {
      convertFromMonotonicToSystem = [getLastQualifiedEnergyEventDate convertFromMonotonicToSystem];
      v20 = PLLogCommon();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
LABEL_25:

        v35[0] = v11;
        v28 = [(PLDuetServiceImpl *)self duetService:@"BLMEnergyForDuet"];
        storage2 = [v28 storage];
        uuid2 = [storage2 uuid];
        v34[2] = @"BLMEnergyResponseTimestamp";
        v35[1] = uuid2;
        v35[2] = convertFromMonotonicToSystem;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];

        v31 = PLLogCommon();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25EE51000, v31, OS_LOG_TYPE_DEFAULT, "┗ PLDuetService energyResponse created", buf, 2u);
        }

        goto LABEL_28;
      }

      *buf = 138412290;
      v37 = convertFromMonotonicToSystem;
      v21 = "After converting to system time, energyResponseTimestamp=%@";
    }

    else
    {
      mEMORY[0x277D3F140] = [MEMORY[0x277D3F140] sharedInstance];
      v24 = [mEMORY[0x277D3F140] lastCompletedDateWithIdentifier:@"PLDuetService_duetEnergyAccumulator"];
      v25 = [v24 dateByAddingTimeInterval:-3600.0];

      v26 = PLLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v37 = v25;
        _os_log_impl(&dword_25EE51000, v26, OS_LOG_TYPE_INFO, "lastAccumulatedDate=%@", buf, 0xCu);
      }

      convertFromMonotonicToSystem = [v25 convertFromMonotonicToSystem];

      v27 = PLLogCommon();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v37 = convertFromMonotonicToSystem;
        _os_log_impl(&dword_25EE51000, v27, OS_LOG_TYPE_INFO, "After converting to system time, lastAccumulatedDate=%@", buf, 0xCu);
      }

      if (!convertFromMonotonicToSystem)
      {
        convertFromMonotonicToSystem = [MEMORY[0x277CBEAA8] distantPast];
      }

      v20 = PLLogCommon();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        goto LABEL_25;
      }

      *buf = 138412290;
      v37 = convertFromMonotonicToSystem;
      v21 = "energyResponse timestamp is lastAccumulatedDate=%@";
    }

    _os_log_impl(&dword_25EE51000, v20, OS_LOG_TYPE_INFO, v21, buf, 0xCu);
    goto LABEL_25;
  }

  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [PLDuetServiceWithAccounting energyResponse];
  }

  v22 = MEMORY[0x277CBEC10];
LABEL_28:

  v32 = *MEMORY[0x277D85DE8];

  return v22;
}

uint64_t __65__PLDuetServiceWithAccounting_energyResponseWithQualificationID___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  energyResponseWithQualificationID__classDebugEnabled = result;
  return result;
}

uint64_t __65__PLDuetServiceWithAccounting_energyResponseWithQualificationID___block_invoke_205(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  energyResponseWithQualificationID__classDebugEnabled_204 = result;
  return result;
}

uint64_t __65__PLDuetServiceWithAccounting_energyResponseWithQualificationID___block_invoke_221(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  energyResponseWithQualificationID__classDebugEnabled_220 = result;
  return result;
}

uint64_t __65__PLDuetServiceWithAccounting_energyResponseWithQualificationID___block_invoke_228(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  energyResponseWithQualificationID__classDebugEnabled_227 = result;
  return result;
}

- (void)accumulateWithLastCompletedDate:(id)date withNow:(id)now
{
  dateCopy = date;
  nowCopy = now;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__PLDuetServiceWithAccounting_accumulateWithLastCompletedDate_withNow___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (accumulateWithLastCompletedDate_withNow__defaultOnce != -1)
    {
      dispatch_once(&accumulateWithLastCompletedDate_withNow__defaultOnce, block);
    }

    if (accumulateWithLastCompletedDate_withNow__classDebugEnabled == 1)
    {
      nowCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"lastCompletedDate=%@, now=%@", dateCopy, nowCopy];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceWithAccounting accumulateWithLastCompletedDate:withNow:]"];
      [v10 logMessage:nowCopy fromFile:lastPathComponent fromFunction:v13 fromLineNumber:554];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  v15 = PLLogCommon();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [PLDuetServiceWithAccounting accumulateWithLastCompletedDate:dateCopy withNow:nowCopy];
  }

  [(PLDuetServiceWithAccounting *)self accumulateWithLastCompletedDate:dateCopy withNow:nowCopy withQualificationID:11];
  [(PLDuetServiceWithAccounting *)self accumulateWithLastCompletedDate:dateCopy withNow:nowCopy withQualificationID:12];
  v16 = PLLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [PLDuetServiceWithAccounting accumulateWithLastCompletedDate:withNow:];
  }
}

uint64_t __71__PLDuetServiceWithAccounting_accumulateWithLastCompletedDate_withNow___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  accumulateWithLastCompletedDate_withNow__classDebugEnabled = result;
  return result;
}

- (void)accumulateWithLastCompletedDate:(id)date withNow:(id)now withQualificationID:(int)d
{
  v124[4] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  nowCopy = now;
  v9 = PLLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [PLDuetServiceWithAccounting accumulateWithLastCompletedDate:withNow:withQualificationID:];
  }

  duetService = [(PLDuetServiceImpl *)self duetService];

  if (duetService)
  {
    selfCopy = self;
    v11 = *MEMORY[0x277D3F5B8];
    v12 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5B8] andName:*MEMORY[0x277D3F2F0]];
    distantPast = [dateCopy dateByAddingTimeInterval:-3600.0];
    if (!distantPast)
    {
      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLDuetServiceWithAccounting accumulateWithLastCompletedDate:withNow:withQualificationID:];
      }

      distantPast = [MEMORY[0x277CBEAA8] distantPast];
    }

    v15 = PLLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [PLDuetServiceWithAccounting accumulateWithLastCompletedDate:distantPast withNow:? withQualificationID:?];
    }

    v93 = dateCopy;

    v16 = [nowCopy dateByAddingTimeInterval:-3600.0];
    v17 = PLLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [PLDuetServiceWithAccounting accumulateWithLastCompletedDate:v16 withNow:? withQualificationID:?];
    }

    v18 = objc_alloc(MEMORY[0x277D3F260]);
    v19 = MEMORY[0x277CCABB0];
    v91 = distantPast;
    [distantPast timeIntervalSince1970];
    v20 = [v19 numberWithDouble:?];
    v21 = [v18 initWithKey:@"timestamp" withValue:v20 withComparisonOperation:2];

    v22 = objc_alloc(MEMORY[0x277D3F260]);
    v23 = MEMORY[0x277CCABB0];
    v90 = v16;
    [v16 timeIntervalSince1970];
    v24 = [v23 numberWithDouble:?];
    v25 = [v22 initWithKey:@"timestamp" withValue:v24 withComparisonOperation:4];

    v26 = objc_alloc(MEMORY[0x277D3F260]);
    v27 = *MEMORY[0x277D3F308];
    v28 = [MEMORY[0x277CCABB0] numberWithInt:d];
    v29 = [v26 initWithKey:v27 withValue:v28 withComparisonOperation:0];

    v30 = objc_alloc(MEMORY[0x277D3F260]);
    v103 = *MEMORY[0x277D3F300];
    v31 = [v30 initWithKey:? withValue:? withComparisonOperation:?];
    duetService2 = [(PLDuetServiceImpl *)selfCopy duetService];
    storage = [duetService2 storage];
    v88 = v25;
    v89 = v21;
    v124[0] = v21;
    v124[1] = v25;
    v86 = v31;
    v87 = v29;
    v124[2] = v29;
    v124[3] = v31;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v124 count:4];
    v92 = v12;
    v35 = [storage entriesForKey:v12 withComparisons:v34];

    v94 = nowCopy;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v36 = objc_opt_class();
      v113[0] = MEMORY[0x277D85DD0];
      v113[1] = 3221225472;
      v113[2] = __91__PLDuetServiceWithAccounting_accumulateWithLastCompletedDate_withNow_withQualificationID___block_invoke;
      v113[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v113[4] = v36;
      if (accumulateWithLastCompletedDate_withNow_withQualificationID__defaultOnce != -1)
      {
        dispatch_once(&accumulateWithLastCompletedDate_withNow_withQualificationID__defaultOnce, v113);
      }

      if (accumulateWithLastCompletedDate_withNow_withQualificationID__classDebugEnabled == 1)
      {
        v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"aggregateQualificationEnergyEntries=%@", v35];
        v38 = MEMORY[0x277D3F178];
        v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
        lastPathComponent = [v39 lastPathComponent];
        v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceWithAccounting accumulateWithLastCompletedDate:withNow:withQualificationID:]"];
        [v38 logMessage:v37 fromFile:lastPathComponent fromFunction:v41 fromLineNumber:603];

        v42 = PLLogCommon();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    v43 = PLLogCommon();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      [PLDuetServiceWithAccounting accumulateWithLastCompletedDate:v35 withNow:? withQualificationID:?];
    }

    duetService3 = [(PLDuetServiceImpl *)selfCopy duetService];
    v45 = [objc_opt_class() entryKeyForType:v11 andName:@"DuetEnergyAccumulator"];

    duetService4 = [(PLDuetServiceImpl *)selfCopy duetService];
    storage2 = [duetService4 storage];
    v102 = v45;
    v48 = [storage2 entriesForKey:v45];

    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    obj = v48;
    v49 = [obj countByEnumeratingWithState:&v109 objects:v123 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v110;
      do
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v110 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v53 = *(*(&v109 + 1) + 8 * i);
          v54 = PLLogCommon();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v117 = v53;
            _os_log_debug_impl(&dword_25EE51000, v54, OS_LOG_TYPE_DEBUG, "┃ ┃ ╸ PLDuetService accumulateWithLastCompletedDate existing entry:%@", buf, 0xCu);
          }
        }

        v50 = [obj countByEnumeratingWithState:&v109 objects:v123 count:16];
      }

      while (v50);
    }

    array = [MEMORY[0x277CBEB18] array];
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v96 = v35;
    v55 = [v96 countByEnumeratingWithState:&v105 objects:v122 count:16];
    nowCopy = v94;
    v56 = selfCopy;
    if (v55)
    {
      v57 = v55;
      v101 = *v106;
      v98 = *MEMORY[0x277D3F2F8];
      do
      {
        v58 = 0;
        do
        {
          if (*v106 != v101)
          {
            objc_enumerationMutation(v96);
          }

          v59 = *(*(&v105 + 1) + 8 * v58);
          v60 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v102 withDate:nowCopy];
          mEMORY[0x277D3F0D0] = [MEMORY[0x277D3F0D0] sharedInstance];
          v62 = [v59 objectForKeyedSubscript:v103];
          v63 = [mEMORY[0x277D3F0D0] nodeNameForNodeID:v62];

          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v64 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __91__PLDuetServiceWithAccounting_accumulateWithLastCompletedDate_withNow_withQualificationID___block_invoke_240;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v64;
            if (accumulateWithLastCompletedDate_withNow_withQualificationID__defaultOnce_238 != -1)
            {
              dispatch_once(&accumulateWithLastCompletedDate_withNow_withQualificationID__defaultOnce_238, block);
            }

            if (accumulateWithLastCompletedDate_withNow_withQualificationID__classDebugEnabled_239 == 1)
            {
              [MEMORY[0x277CCACA8] stringWithFormat:@"bundleID=%@", v63];
              v65 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v66 = MEMORY[0x277D3F178];
              v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
              lastPathComponent2 = [v67 lastPathComponent];
              v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLDuetServiceWithAccounting accumulateWithLastCompletedDate:withNow:withQualificationID:]"];
              [v66 logMessage:*&v65 fromFile:lastPathComponent2 fromFunction:v69 fromLineNumber:620];

              v70 = PLLogCommon();
              if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v117 = v65;
                _os_log_debug_impl(&dword_25EE51000, v70, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              nowCopy = v94;
              v56 = selfCopy;
            }
          }

          v71 = PLLogCommon();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
          {
            [v59 objectForKeyedSubscript:v103];
            v79 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            v80 = [v59 objectForKeyedSubscript:@"timestamp"];
            *buf = 138412802;
            v117 = v79;
            v118 = 2112;
            v119 = v63;
            v120 = 2112;
            v121 = v80;
            _os_log_debug_impl(&dword_25EE51000, v71, OS_LOG_TYPE_DEBUG, "┃ ┃ ┏ PLDuetService accumulateWithLastCompletedDate entry for nodeID:%@, bundleID:%@, timestamp:%@", buf, 0x20u);

            v56 = selfCopy;
          }

          if (v63)
          {
            [v60 setObject:v63 forKeyedSubscript:@"BundleID"];
            v72 = [MEMORY[0x277CCABB0] numberWithInt:d];
            [v60 setObject:v72 forKeyedSubscript:@"QualificationID"];

            v73 = [v59 objectForKeyedSubscript:v98];
            [v73 doubleValue];
            v75 = v74 / 1000.0;

            v76 = fmin(v75, 10000.0);
            v77 = [MEMORY[0x277CCABB0] numberWithDouble:v76];
            [v60 setObject:v77 forKeyedSubscript:@"Energy"];

            v78 = PLLogCommon();
            if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134217984;
              v117 = v76;
              _os_log_debug_impl(&dword_25EE51000, v78, OS_LOG_TYPE_DEBUG, "┃ ┃ ┗ PLDuetService accumulateWithLastCompletedDate entry energy:%fmWh", buf, 0xCu);
            }

            [array addObject:v60];
          }

          ++v58;
        }

        while (v57 != v58);
        v57 = [v96 countByEnumeratingWithState:&v105 objects:v122 count:16];
      }

      while (v57);
    }

    if ([array count])
    {
      duetService5 = [(PLDuetServiceImpl *)v56 duetService];

      if (duetService5)
      {
        duetService6 = [(PLDuetServiceImpl *)v56 duetService];
        v114 = v102;
        v115 = array;
        v83 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
        [duetService6 logEntries:v83 withGroupID:v102];
      }
    }

    v84 = PLLogCommon();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
    {
      [PLDuetServiceWithAccounting accumulateWithLastCompletedDate:withNow:withQualificationID:];
    }

    dateCopy = v93;
  }

  v85 = *MEMORY[0x277D85DE8];
}

uint64_t __91__PLDuetServiceWithAccounting_accumulateWithLastCompletedDate_withNow_withQualificationID___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  accumulateWithLastCompletedDate_withNow_withQualificationID__classDebugEnabled = result;
  return result;
}

uint64_t __91__PLDuetServiceWithAccounting_accumulateWithLastCompletedDate_withNow_withQualificationID___block_invoke_240(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  accumulateWithLastCompletedDate_withNow_withQualificationID__classDebugEnabled_239 = result;
  return result;
}

+ (id)mapBundleID:(id)d
{
  v3 = mapBundleID__onceToken;
  dCopy = d;
  if (v3 != -1)
  {
    +[PLDuetServiceWithAccounting mapBundleID:];
  }

  v5 = [mapBundleID__daemonBundleIDToName objectForKeyedSubscript:dCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = dCopy;
  }

  v8 = v7;

  return v7;
}

void __43__PLDuetServiceWithAccounting_mapBundleID___block_invoke()
{
  v0 = mapBundleID__daemonBundleIDToName;
  mapBundleID__daemonBundleIDToName = &unk_287148AB8;
}

- (void)didReceiveEventWithPayload:(_BYTE *)a1 .cold.2(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_3_2(a1, a2);
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 2u);
}

- (void)eventTransitionsWithEvents:(_BYTE *)a1 .cold.1(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_3_2(a1, a2);
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 2u);
}

- (void)eventTransitionsWithEvents:(_BYTE *)a1 .cold.2(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_3_2(a1, a2);
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 2u);
}

- (void)energyResponse
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "lastQualifiedDate=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)energyResponseWithQualificationID:(os_log_t)log .cold.4(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = 0;
  _os_log_error_impl(&dword_25EE51000, log, OS_LOG_TYPE_ERROR, "┃ ┗ PLDuetService energyResponseWithQualificationID: unexpected updateType %d", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)accumulateWithLastCompletedDate:(void *)a1 withNow:(void *)a2 .cold.2(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 timeIntervalSince1970];
  [a2 timeIntervalSince1970];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)accumulateWithLastCompletedDate:withNow:.cold.3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)accumulateWithLastCompletedDate:withNow:withQualificationID:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)accumulateWithLastCompletedDate:withNow:withQualificationID:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)accumulateWithLastCompletedDate:(void *)a1 withNow:withQualificationID:.cold.3(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 timeIntervalSince1970];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)accumulateWithLastCompletedDate:(void *)a1 withNow:withQualificationID:.cold.4(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 timeIntervalSince1970];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)accumulateWithLastCompletedDate:(void *)a1 withNow:withQualificationID:.cold.6(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)accumulateWithLastCompletedDate:withNow:withQualificationID:.cold.7()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end