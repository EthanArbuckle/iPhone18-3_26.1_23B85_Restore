@interface PLBLDService
+ (id)entryEventPointBLD;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (PLBLDService)init;
- (id)batteryBreakdownWithPayload:(id)a3;
- (id)bldEntryWithBatteryBreakdown:(id)a3;
- (void)initOperatorDependancies;
@end

@implementation PLBLDService

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLBLDService;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"BLD";
  v2 = +[PLBLDService entryEventPointBLD];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)entryEventPointBLD
{
  v21[2] = *MEMORY[0x277D85DE8];
  v20[0] = *MEMORY[0x277D3F4E8];
  v18 = *MEMORY[0x277D3F568];
  v19 = &unk_28714BB38;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v21[0] = v2;
  v20[1] = *MEMORY[0x277D3F540];
  v16[0] = @"BUIOutput";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat];
  v17[0] = v4;
  v16[1] = @"JSON";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_BoolFormat];
  v17[1] = v6;
  v16[2] = @"LastUpDateTime";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_DateFormat];
  v17[2] = v8;
  v16[3] = @"BLDRetail";
  v14 = *MEMORY[0x277D3F5A8];
  v15 = &unk_287147B18;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v17[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v21[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (PLBLDService)init
{
  if (([MEMORY[0x277D3F208] isHomePod] & 1) != 0 || +[PLUtilities isPerfPowerMetricd](PLUtilities, "isPerfPowerMetricd"))
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PLBLDService;
    self = [(PLOperator *)&v5 init];
    v3 = self;
  }

  return v3;
}

- (void)initOperatorDependancies
{
  v3 = objc_alloc(MEMORY[0x277D3F278]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__PLBLDService_initOperatorDependancies__block_invoke;
  v6[3] = &unk_279A5BEC8;
  v6[4] = self;
  v4 = [v3 initWithOperator:self withRegistration:&unk_28714AF70 withBlock:v6];
  [(PLBLDService *)self setBatteryBreakdownResponder:v4];

  if ([(PLOperator *)self isDebugEnabled])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, NotificationCallback_0, @"com.apple.powerlogd.BLD.batteryBreakdown", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

id __40__PLBLDService_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = [*(a1 + 32) batteryBreakdownWithPayload:v6];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __40__PLBLDService_initOperatorDependancies__block_invoke_2;
    v22 = &__block_descriptor_40_e5_v8__0lu32l8;
    v23 = v9;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_0 != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_0, &block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_0 == 1)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/%d: result=%@, payload=%@", "-[PLBLDService initOperatorDependancies]_block_invoke", 100, v7, v6, block, v20, v21, v22, v23];
      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLDService.m"];
      v13 = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLDService initOperatorDependancies]_block_invoke"];
      [v11 logMessage:v10 fromFile:v13 fromFunction:v14 fromLineNumber:100];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  v24 = @"result";
  v25[0] = v7;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

uint64_t __40__PLBLDService_initOperatorDependancies__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_0 = result;
  return result;
}

- (id)batteryBreakdownWithPayload:(id)a3
{
  v108 = *MEMORY[0x277D85DE8];
  v4 = [a3 objectForKeyedSubscript:@"PLBatteryUIQueryTypeKey"];
  v5 = [v4 intValue];

  v97 = self;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    v105[0] = MEMORY[0x277D85DD0];
    v105[1] = 3221225472;
    v105[2] = __44__PLBLDService_batteryBreakdownWithPayload___block_invoke;
    v105[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v105[4] = v6;
    if (batteryBreakdownWithPayload__defaultOnce != -1)
    {
      dispatch_once(&batteryBreakdownWithPayload__defaultOnce, v105);
    }

    if (batteryBreakdownWithPayload__classDebugEnabled == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"queryType=%i", v5];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLDService.m"];
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLDService batteryBreakdownWithPayload:]"];
      [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:118];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      self = v97;
    }
  }

  if (v5 == 1)
  {
    v13 = [MEMORY[0x277CBEAA8] monotonicDate];
    v99 = objc_opt_new();
    v14 = [MEMORY[0x277CBEB38] dictionary];
    v15 = [v13 dateByAddingTimeInterval:-86400.0];
    v16 = v13;
    [v15 timeIntervalSince1970];
    v18 = v17;
    [v16 timeIntervalSince1970];
    v20 = v19;

    v95 = [(PLBatteryBreakdownService *)self batteryBreakdownWithTimeRange:1 withDataRange:v18 withEntryTimeInterval:v20 - v18 withQueryType:0.0, 0.0, 3600.0];
    [v14 setObject:v95 forKeyedSubscript:@"PLBatteryUIQueryRangeDayKey"];
    v21 = [(PLBLDService *)self bldEntryWithBatteryBreakdown:v14];
    if (+[PLUtilities isPowerlogHelperd])
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v22 = objc_opt_class();
        v104[0] = MEMORY[0x277D85DD0];
        v104[1] = 3221225472;
        v104[2] = __44__PLBLDService_batteryBreakdownWithPayload___block_invoke_67;
        v104[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v104[4] = v22;
        if (batteryBreakdownWithPayload__defaultOnce_65 != -1)
        {
          dispatch_once(&batteryBreakdownWithPayload__defaultOnce_65, v104);
        }

        if (batteryBreakdownWithPayload__classDebugEnabled_66 == 1)
        {
          v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/%d: past day results generated", "-[PLBLDService batteryBreakdownWithPayload:]", 139];
          v24 = MEMORY[0x277D3F178];
          v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLDService.m"];
          v26 = [v25 lastPathComponent];
          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLDService batteryBreakdownWithPayload:]"];
          [v24 logMessage:v23 fromFile:v26 fromFunction:v27 fromLineNumber:139];

          v28 = PLLogCommon();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }

          self = v97;
        }
      }

      v29 = [v21 serialized];
      [v99 addObject:v29];
    }

    else
    {
      [(PLOperator *)self logEntry:v21];
    }

    v30 = [MEMORY[0x277CBEB38] dictionary];

    v31 = [v16 dateByAddingTimeInterval:-604800.0];
    v32 = v16;
    [v31 timeIntervalSince1970];
    v34 = v33;
    [v32 timeIntervalSince1970];
    v36 = v35;

    v37 = [(PLBatteryBreakdownService *)self batteryBreakdownWithTimeRange:1 withDataRange:v34 withEntryTimeInterval:v36 - v34 withQueryType:0.0, 0.0, 3600.0];
    [v30 setObject:v37 forKeyedSubscript:@"PLBatteryUIQueryRangeWeekKey"];

    v38 = [(PLBLDService *)self bldEntryWithBatteryBreakdown:v30];
    v94 = v21;
    v96 = v38;
    if (+[PLUtilities isPowerlogHelperd])
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v39 = objc_opt_class();
        v103[0] = MEMORY[0x277D85DD0];
        v103[1] = 3221225472;
        v103[2] = __44__PLBLDService_batteryBreakdownWithPayload___block_invoke_76;
        v103[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v103[4] = v39;
        if (batteryBreakdownWithPayload__defaultOnce_74 != -1)
        {
          dispatch_once(&batteryBreakdownWithPayload__defaultOnce_74, v103);
        }

        if (batteryBreakdownWithPayload__classDebugEnabled_75 == 1)
        {
          v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/%d: past week results generated", "-[PLBLDService batteryBreakdownWithPayload:]", 155];
          v41 = MEMORY[0x277D3F178];
          v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLDService.m"];
          v43 = [v42 lastPathComponent];
          v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLDService batteryBreakdownWithPayload:]"];
          [v41 logMessage:v40 fromFile:v43 fromFunction:v44 fromLineNumber:155];

          v45 = PLLogCommon();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }

          v38 = v96;
          self = v97;
        }
      }

      v46 = [v38 serialized];
      [v99 addObject:v46];
    }

    else
    {
      [(PLOperator *)self logEntry:v38];
    }

    v93 = v32;
    v47 = [v32 convertFromMonotonicToSystem];
    v48 = 6;
    do
    {
      v49 = MEMORY[0x277CBEAA8];
      v50 = [v47 dateByAddingTimeInterval:-600.0];
      v51 = [v49 nearestMidnightBeforeDate:v50];

      v52 = @"PLBatteryUIQueryRangeTodayKey";
      if (v48 != 6)
      {
        v53 = MEMORY[0x277CCACA8];
        v54 = [MEMORY[0x277CCABB0] numberWithInt:v48];
        v52 = [v53 stringWithFormat:@"PLBatteryUIQueryRangeDay_%@_Key", v54];
      }

      v55 = [MEMORY[0x277CBEB38] dictionary];

      v56 = [v51 convertFromSystemToMonotonic];
      v57 = [v47 convertFromSystemToMonotonic];
      [v56 timeIntervalSince1970];
      v59 = v58;
      [v57 timeIntervalSince1970];
      v61 = v60 - v59;

      v62 = [(PLBatteryBreakdownService *)self batteryBreakdownWithTimeRange:1 withDataRange:v59 withEntryTimeInterval:v61 withQueryType:0.0, 0.0, 3600.0];
      [v55 setObject:v62 forKeyedSubscript:v52];

      v63 = [(PLBLDService *)self bldEntryWithBatteryBreakdown:v55];
      if (+[PLUtilities isPowerlogHelperd])
      {
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v64 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __44__PLBLDService_batteryBreakdownWithPayload___block_invoke_89;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v64;
          if (batteryBreakdownWithPayload__defaultOnce_87 != -1)
          {
            dispatch_once(&batteryBreakdownWithPayload__defaultOnce_87, block);
          }

          if (batteryBreakdownWithPayload__classDebugEnabled_88 == 1)
          {
            v98 = v51;
            v65 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/%d: past N days results generated", "-[PLBLDService batteryBreakdownWithPayload:]", 176];
            v66 = MEMORY[0x277D3F178];
            v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLDService.m"];
            v68 = [v67 lastPathComponent];
            v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLDService batteryBreakdownWithPayload:]"];
            [v66 logMessage:v65 fromFile:v68 fromFunction:v69 fromLineNumber:176];

            v70 = PLLogCommon();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v107 = v65;
              _os_log_debug_impl(&dword_25EE51000, v70, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            self = v97;
            v51 = v98;
          }
        }

        v71 = [v63 serialized];
        [v99 addObject:v71];
      }

      else
      {
        [(PLOperator *)self logEntry:v63];
      }

      v48 = (v48 - 1);
      v30 = v55;
      v47 = v51;
    }

    while (v48 != -1);
    v72 = [MEMORY[0x277CBEB38] dictionary];
    v73 = [v95 objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
    v74 = [(PLBatteryBreakdownService *)self suggestionsWithEnergyEntries:v73];
    [v72 setObject:v74 forKeyedSubscript:@"PLBatteryUISuggestionArrayKey"];

    v75 = [(PLBLDService *)self bldEntryWithBatteryBreakdown:v72];
    if (+[PLUtilities isPowerlogHelperd])
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v76 = objc_opt_class();
        v101[0] = MEMORY[0x277D85DD0];
        v101[1] = 3221225472;
        v101[2] = __44__PLBLDService_batteryBreakdownWithPayload___block_invoke_101;
        v101[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v101[4] = v76;
        if (batteryBreakdownWithPayload__defaultOnce_99 != -1)
        {
          dispatch_once(&batteryBreakdownWithPayload__defaultOnce_99, v101);
        }

        if (batteryBreakdownWithPayload__classDebugEnabled_100 == 1)
        {
          v77 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/%d: suggestion array generated", "-[PLBLDService batteryBreakdownWithPayload:]", 198];
          v78 = MEMORY[0x277D3F178];
          v79 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLDService.m"];
          v80 = [v79 lastPathComponent];
          v81 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLDService batteryBreakdownWithPayload:]"];
          [v78 logMessage:v77 fromFile:v80 fromFunction:v81 fromLineNumber:198];

          v82 = PLLogCommon();
          if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }

          self = v97;
        }
      }

      v83 = [v75 serialized];
      [v99 addObject:v83];
    }

    else
    {
      [(PLOperator *)self logEntry:v75];
    }

    [(PLBatteryBreakdownService *)self clearState];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v84 = objc_opt_class();
      v100[0] = MEMORY[0x277D85DD0];
      v100[1] = 3221225472;
      v100[2] = __44__PLBLDService_batteryBreakdownWithPayload___block_invoke_107;
      v100[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v100[4] = v84;
      if (batteryBreakdownWithPayload__defaultOnce_105 != -1)
      {
        dispatch_once(&batteryBreakdownWithPayload__defaultOnce_105, v100);
      }

      if (batteryBreakdownWithPayload__classDebugEnabled_106 == 1)
      {
        v85 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/%d: allEntries=%@", "-[PLBLDService batteryBreakdownWithPayload:]", 209, v99];
        v86 = MEMORY[0x277D3F178];
        v87 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLDService.m"];
        v88 = [v87 lastPathComponent];
        v89 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLDService batteryBreakdownWithPayload:]"];
        [v86 logMessage:v85 fromFile:v88 fromFunction:v89 fromLineNumber:209];

        v90 = PLLogCommon();
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }
  }

  else
  {
    v99 = 0;
  }

  v91 = *MEMORY[0x277D85DE8];

  return v99;
}

uint64_t __44__PLBLDService_batteryBreakdownWithPayload___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithPayload__classDebugEnabled = result;
  return result;
}

uint64_t __44__PLBLDService_batteryBreakdownWithPayload___block_invoke_67(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithPayload__classDebugEnabled_66 = result;
  return result;
}

uint64_t __44__PLBLDService_batteryBreakdownWithPayload___block_invoke_76(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithPayload__classDebugEnabled_75 = result;
  return result;
}

uint64_t __44__PLBLDService_batteryBreakdownWithPayload___block_invoke_89(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithPayload__classDebugEnabled_88 = result;
  return result;
}

uint64_t __44__PLBLDService_batteryBreakdownWithPayload___block_invoke_101(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithPayload__classDebugEnabled_100 = result;
  return result;
}

uint64_t __44__PLBLDService_batteryBreakdownWithPayload___block_invoke_107(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithPayload__classDebugEnabled_106 = result;
  return result;
}

- (id)bldEntryWithBatteryBreakdown:(id)a3
{
  v4 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__PLBLDService_bldEntryWithBatteryBreakdown___block_invoke;
  block[3] = &unk_279A5BDC0;
  block[4] = self;
  if (bldEntryWithBatteryBreakdown__onceToken != -1)
  {
    dispatch_once(&bldEntryWithBatteryBreakdown__onceToken, block);
  }

  v5 = objc_alloc(MEMORY[0x277D3F190]);
  v6 = [v5 initWithEntryKey:bldEntryWithBatteryBreakdown__entryKey];
  [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"BLDRetail"];
  v7 = [v6 entryDate];
  [v6 setObject:v7 forKeyedSubscript:@"LastUpDateTime"];

  v8 = [PLUtilities JSONSanitizeDictionary:v4];
  v9 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v8 options:0 error:0];
  if (v9)
  {
    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"JSON"];
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];
  }

  else
  {
    [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"JSON"];
    v10 = [v8 description];
  }

  v11 = v10;
  [v6 setObject:v10 forKeyedSubscript:@"BUIOutput"];

  return v6;
}

uint64_t __45__PLBLDService_bldEntryWithBatteryBreakdown___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_opt_class() entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"BLD"];
  bldEntryWithBatteryBreakdown__entryKey = v2;

  return MEMORY[0x2821F96F8](v2);
}

@end