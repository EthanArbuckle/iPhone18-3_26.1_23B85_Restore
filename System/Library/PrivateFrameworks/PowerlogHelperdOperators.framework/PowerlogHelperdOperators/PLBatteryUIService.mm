@interface PLBatteryUIService
+ (void)load;
- (BOOL)dateIntervals:(id)a3 containDate:(id)a4;
- (BOOL)demoMode;
- (BOOL)isAppEntryValidForAdjustment:(id)a3 withQueryType:(int)a4;
- (BOOL)writeOutputDemo;
- (PLBatteryUIService)init;
- (_PLTimeIntervalRange)getDataRangeWithNow:(id)a3;
- (_PLTimeIntervalRange)getlastDayRangeWithNow:(id)a3 withNowSystem:(id)a4;
- (_PLTimeIntervalRange)getlastXDayRangeWithNow:(id)a3 withNowSystem:(id)a4;
- (double)adjustScreenOffTimeSecsWithGraphValue:(double)a3 withGraphScreenOnSecs:(double)a4 queryType:(int)a5 andBreakdownEntries:(id)a6;
- (double)adjustScreenOnTimeSecsWithGraphValue:(double)a3 queryType:(int)a4 andBreakdownEntries:(id)a5;
- (id)batteryBreakdownAndGraphWithPayload:(id)a3;
- (id)batteryBreakdownWithPayload:(id)a3 withDayRange:(_PLTimeIntervalRange)a4 withXDayRange:(_PLTimeIntervalRange)a5 withDataRange:(_PLTimeIntervalRange)a6;
- (id)batteryLevelsAndChargingIntervalsInRange:(_PLTimeIntervalRange)a3 withDataRange:(_PLTimeIntervalRange)a4;
- (id)dateAndBatteryLevelPointsInRange:(_PLTimeIntervalRange)a3;
- (id)demoModePath;
- (id)entriesInRange:(_PLTimeIntervalRange)a3 fromEntries:(id)a4;
- (id)generateTapBucketsForBucketSize:(int)a3 withNumberOfBuckets:(int)a4 withNowTime:(id)a5 withDrainThreshold:(double)a6 withQueryType:(int)a7 withDataRange:(_PLTimeIntervalRange)a8;
- (id)getLPMIntervalsSpanningRange:(_PLTimeIntervalRange)a3;
- (id)getLastChargeData;
- (id)lastXDaysWithRange:(_PLTimeIntervalRange)a3 withDataRange:(_PLTimeIntervalRange)a4 withQueryType:(int)a5 andBatteryBreakdown:(id)a6;
- (id)modelsWithPayload:(id)a3;
- (id)screenTimeInRange:(_PLTimeIntervalRange)a3 withBucketSize:(double)a4 withNumBuckets:(int)a5 withDataRange:(_PLTimeIntervalRange)a6 withQueryType:(int)a7 andBatteryBreakdown:(id)a8;
- (void)demoModePath;
- (void)getLastChargeData;
- (void)initOperatorDependancies;
- (void)removeExcessUpgradePlistFiles;
- (void)testUIQuery;
@end

@implementation PLBatteryUIService

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLBatteryUIService;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLBatteryUIService)init
{
  if (([MEMORY[0x277D3F208] isHomePod] & 1) != 0 || +[PLUtilities isPerfPowerMetricd](PLUtilities, "isPerfPowerMetricd"))
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PLBatteryUIService;
    self = [(PLOperator *)&v5 init];
    v3 = self;
  }

  return v3;
}

- (void)initOperatorDependancies
{
  if ([(PLOperator *)self isDebugEnabled])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, NotificationCallback, @"com.apple.powerlogd.PLBatteryUIService.batteryBreakdown", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  if (+[PLUtilities isPowerlogHelperd])
  {
    v4 = objc_alloc(MEMORY[0x277D3F278]);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __46__PLBatteryUIService_initOperatorDependancies__block_invoke;
    v9[3] = &unk_279A5BEC8;
    v9[4] = self;
    v5 = [v4 initWithOperator:self withRegistration:&unk_287147CD0 withBlock:v9];
    [(PLBatteryUIService *)self setBatteryBreakdownResponder:v5];

    v6 = objc_alloc(MEMORY[0x277D3F278]);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __46__PLBatteryUIService_initOperatorDependancies__block_invoke_42;
    v8[3] = &unk_279A5BEC8;
    v8[4] = self;
    v7 = [v6 initWithOperator:self withRegistration:&unk_287147CF8 withBlock:v8];
    [(PLBatteryUIService *)self setModelsResponder:v7];
  }
}

id __46__PLBatteryUIService_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __46__PLBatteryUIService_initOperatorDependancies__block_invoke_2;
    v20 = &__block_descriptor_40_e5_v8__0lu32l8;
    v21 = v8;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce, &block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"batteryBreakdownResponder: payload=%@", v6, block, v18, v19, v20, v21];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryUIService.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIService initOperatorDependancies]_block_invoke"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:100];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }

  v15 = [*(a1 + 32) batteryBreakdownAndGraphWithPayload:v6];

  return v15;
}

uint64_t __46__PLBatteryUIService_initOperatorDependancies__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled = result;
  return result;
}

id __46__PLBatteryUIService_initOperatorDependancies__block_invoke_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __46__PLBatteryUIService_initOperatorDependancies__block_invoke_2_43;
    v20 = &__block_descriptor_40_e5_v8__0lu32l8;
    v21 = v8;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_2_defaultOnce != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_2_defaultOnce, &block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_2_classDebugEnabled == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"modelsResponder: payload=%@", v6, block, v18, v19, v20, v21];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryUIService.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIService initOperatorDependancies]_block_invoke"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:106];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }

  v15 = [*(a1 + 32) modelsWithPayload:v6];

  return v15;
}

uint64_t __46__PLBatteryUIService_initOperatorDependancies__block_invoke_2_43(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_2_classDebugEnabled = result;
  return result;
}

- (_PLTimeIntervalRange)getlastDayRangeWithNow:(id)a3 withNowSystem:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [v5 components:60 fromDate:v4];
  v7 = [v6 valueForComponent:32];
  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v30 = [v5 dateFromComponents:v6];
    *buf = 138412802;
    v32 = v4;
    v33 = 2112;
    v34 = v30;
    v35 = 2048;
    v36 = v7;
    _os_log_debug_impl(&dword_25EE51000, v8, OS_LOG_TYPE_DEBUG, "Date: %@ -> %@ -> %lu", buf, 0x20u);
  }

  v9 = PLLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIService getlastDayRangeWithNow:withNowSystem:];
  }

  v10 = (v7 - fmod(v7, 3.0) + 3.0);
  v11 = PLLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIService getlastDayRangeWithNow:withNowSystem:];
  }

  [v6 setValue:v10 forComponent:32];
  v12 = [v5 dateFromComponents:v6];
  v13 = PLLogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIService getlastDayRangeWithNow:withNowSystem:];
  }

  v14 = [v12 convertFromSystemToMonotonic];
  v15 = [v14 dateByAddingTimeInterval:-86400.0];
  v16 = v14;
  [v15 timeIntervalSince1970];
  v18 = v17;
  [v16 timeIntervalSince1970];
  v20 = v19;

  v21 = v20 - v18;
  v22 = PLLogCommon();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = MEMORY[0x277CCACA8];
    v24 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v18];
    v25 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v18 + v21];
    v26 = [v23 stringWithFormat:@"Start: %@, End %@", v24, v25];

    *buf = 138412290;
    v32 = v26;
    _os_log_impl(&dword_25EE51000, v22, OS_LOG_TYPE_INFO, "lastDayRange: %@", buf, 0xCu);
  }

  v27 = *MEMORY[0x277D85DE8];
  v28 = v18;
  v29 = v21;
  result.length = v29;
  result.location = v28;
  return result;
}

- (_PLTimeIntervalRange)getlastXDayRangeWithNow:(id)a3 withNowSystem:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = [MEMORY[0x277CBEAA8] nearestMidnightAfterDate:v4];
  v6 = [v5 convertFromSystemToMonotonic];
  v7 = [v6 dateByAddingTimeInterval:-864000.0];
  v8 = v6;
  [v7 timeIntervalSince1970];
  v10 = v9;
  [v8 timeIntervalSince1970];
  v12 = v11;

  v13 = PLLogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v24 = v4;
    v25 = 2112;
    v26 = v5;
    v27 = 2112;
    v28 = v8;
    _os_log_debug_impl(&dword_25EE51000, v13, OS_LOG_TYPE_DEBUG, "Next system midnight %@ -> %@ = monotonic %@", buf, 0x20u);
  }

  v14 = v12 - v10;

  v15 = PLLogCommon();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v10];
    v18 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v10 + v14];
    v19 = [v16 stringWithFormat:@"Start: %@, End %@", v17, v18];

    *buf = 138412290;
    v24 = v19;
    _os_log_impl(&dword_25EE51000, v15, OS_LOG_TYPE_INFO, "lastXDayRange: %@", buf, 0xCu);
  }

  v20 = *MEMORY[0x277D85DE8];
  v21 = v10;
  v22 = v14;
  result.length = v22;
  result.location = v21;
  return result;
}

- (_PLTimeIntervalRange)getDataRangeWithNow:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D3F5B8];
  v6 = [(PLOperator *)PLAppTimeService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"UsageTime"];
  v36 = [MEMORY[0x277D3F128] entryKeyForType:v5 andName:*MEMORY[0x277D3F318]];
  v7 = [(PLOperator *)self storage];
  v8 = [v7 firstEntryForKey:v6];

  if (v8)
  {
    v9 = [v8 entryDate];
    v10 = PLLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIService getDataRangeWithNow:];
    }
  }

  else
  {
    v11 = PLLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIService getDataRangeWithNow:];
    }

    v9 = v4;
  }

  v12 = [(PLOperator *)self storage];
  v13 = [v12 firstEntryForKey:v36];

  if (v13)
  {
    v14 = [v13 entryDate];
    v15 = PLLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIService getDataRangeWithNow:];
    }
  }

  else
  {
    v16 = PLLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIService getDataRangeWithNow:];
    }

    v14 = v4;
  }

  v17 = [v14 laterDate:v9];
  v18 = v4;
  [v17 timeIntervalSince1970];
  v20 = v19;
  [v18 timeIntervalSince1970];
  v22 = v21;

  v23 = v22 - v20;
  v24 = PLLogCommon();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = MEMORY[0x277CCACA8];
    v35 = v8;
    [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v20];
    v26 = v13;
    v27 = v9;
    v29 = v28 = v6;
    v30 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v20 + v23];
    v31 = [v25 stringWithFormat:@"Start: %@, End %@", v29, v30];

    v8 = v35;
    v6 = v28;
    v9 = v27;
    v13 = v26;
    *buf = 138412290;
    v38 = v31;
    _os_log_impl(&dword_25EE51000, v24, OS_LOG_TYPE_INFO, "dataRange: %@", buf, 0xCu);
  }

  v32 = *MEMORY[0x277D85DE8];
  v33 = v20;
  v34 = v23;
  result.length = v34;
  result.location = v33;
  return result;
}

- (id)batteryBreakdownAndGraphWithPayload:(id)a3
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(PLBatteryUIService *)self demoMode])
  {
    v5 = [(PLBatteryUIService *)self demoModePath];
    v6 = PLLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v73 = v5;
      _os_log_impl(&dword_25EE51000, v6, OS_LOG_TYPE_INFO, "BUI Demo mode enabled, using plist at %@", buf, 0xCu);
    }

    v7 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v5];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 mutableCopy];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v5 = [MEMORY[0x277CBEAA8] monotonicDate];
    v8 = [v5 convertFromMonotonicToSystem];
    v10 = PLLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v73 = v8;
      _os_log_impl(&dword_25EE51000, v10, OS_LOG_TYPE_INFO, "Received xpc request at system time: %@", buf, 0xCu);
    }

    v11 = PLLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIService batteryBreakdownAndGraphWithPayload:];
    }

    [(PLBatteryUIService *)self getlastDayRangeWithNow:v5 withNowSystem:v8];
    v13 = v12;
    v15 = v14;
    [(PLBatteryUIService *)self getlastXDayRangeWithNow:v5 withNowSystem:v8];
    v17 = v16;
    v19 = v18;
    [(PLBatteryUIService *)self getDataRangeWithNow:v5];
    v21 = v20;
    v23 = v22;
    v24 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v13 + v15];
    v25 = [v24 convertFromMonotonicToSystem];
    [v25 timeIntervalSince1970];
    v27 = v26;

    v9 = [MEMORY[0x277CBEB38] dictionary];
    [v9 setObject:&unk_28714B108 forKeyedSubscript:@"PLBatteryUIXPCVersionKey"];
    v28 = [(PLBatteryUIService *)self batteryBreakdownWithPayload:v4 withDayRange:v13 withXDayRange:v15 withDataRange:v17, v19, v21, v23];
    [v9 setObject:v28 forKeyedSubscript:@"Breakdown"];

    v70 = v4;
    v29 = [v4 objectForKeyedSubscript:@"PLBatteryUIQueryTypeKey"];
    v30 = [v29 intValue];
    v31 = [v9 objectForKeyedSubscript:@"Breakdown"];
    v32 = [(PLBatteryUIService *)self modelsForGraphWithDayRange:v30 withXDayRange:v31 withDataRange:v13 withQueryType:v15 andBatteryBreakdown:v17, v19, v21, v23];
    [v9 setObject:v32 forKeyedSubscript:@"Graph"];

    v33 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
    [v9 setObject:v33 forKeyedSubscript:@"endOfDay"];

    [v8 timeIntervalSince1970];
    v34 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v9 setObject:v34 forKeyedSubscript:@"PLBatteryUIQueryTime"];

    v35 = [(PLBatteryUIService *)self getLastChargeData];
    if (v35)
    {
      [v9 setObject:v35 forKeyedSubscript:@"PLBatteryUILastChargeKey"];
    }

    v69 = v35;
    v36 = PLLogCommon();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = MEMORY[0x277CCACA8];
      v38 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v13];
      v39 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v13 + v15];
      v40 = [v37 stringWithFormat:@"Start: %@, End %@", v38, v39];

      *buf = 138412290;
      v73 = v40;
      _os_log_impl(&dword_25EE51000, v36, OS_LOG_TYPE_INFO, "Computed batteryBreakdown response, day range: %@", buf, 0xCu);
    }

    v41 = PLLogCommon();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25EE51000, v41, OS_LOG_TYPE_INFO, "Writing response to file", buf, 2u);
    }

    v42 = +[PLUtilities containerPath];
    v43 = [v42 stringByAppendingString:@"/Library/BatteryLife/Debug/"];
    [PLUtilities createAndChownDirectoryIfDirectoryDoesNotExist:v43];

    v44 = [v70 objectForKeyedSubscript:@"requestingService"];
    v45 = [v70 objectForKeyedSubscript:@"plistCopyDestination"];
    v46 = +[PLUtilities containerPath];
    v47 = [v46 stringByAppendingString:@"/Library/BatteryLife/Debug/"];

    if (v44)
    {
      v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"BatteryUI%@", v44];
      v49 = [MEMORY[0x277CBEBC0] fileURLWithPath:v47 isDirectory:1];
      v50 = [v49 URLByAppendingPathComponent:v48];

      [v50 URLByAppendingPathExtension:@"plist"];
    }

    else
    {
      v51 = MEMORY[0x277CBEBC0];
      v48 = +[PLUtilities containerPath];
      v50 = [v48 stringByAppendingString:@"/Library/BatteryLife/Debug/BatteryUI.plist"];
      [v51 fileURLWithPath:v50];
    }
    v52 = ;

    v53 = PLLogCommon();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIService batteryBreakdownAndGraphWithPayload:];
    }

    v71 = 0;
    v54 = [v9 writeToURL:v52 error:&v71];
    v55 = v71;
    if (v54)
    {
      v68 = v44;
      v56 = v8;
      v57 = v55;
      v58 = v45;
      v59 = v47;
      v60 = [v52 path];
      [PLUtilities setMobileOwnerForFile:v60];

      v61 = PLLogCommon();
      v47 = v59;
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIService batteryBreakdownAndGraphWithPayload:];
      }

      v45 = v58;
      v55 = v57;
      v8 = v56;
      v44 = v68;
    }

    else
    {
      v61 = PLLogCommon();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        [PLBatteryUIService batteryBreakdownAndGraphWithPayload:];
      }
    }

    if (v44 && [v44 containsString:@"Upgrade"])
    {
      [(PLBatteryUIService *)self removeExcessUpgradePlistFiles];
    }

    if (v45)
    {
      v62 = [PLUtilities PLCopyItemsFromPath:v47 toPath:v45];
      v63 = PLLogCommon();
      v64 = v63;
      if (v62)
      {
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
        {
          [PLBatteryUIService batteryBreakdownAndGraphWithPayload:];
        }
      }

      else
      {
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          [PLBatteryUIService batteryBreakdownAndGraphWithPayload:];
        }

        v64 = v9;
        v9 = 0;
      }

      v65 = v69;
    }

    else
    {
      v65 = v69;
    }

    v4 = v70;
  }

  v66 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)batteryBreakdownWithPayload:(id)a3 withDayRange:(_PLTimeIntervalRange)a4 withXDayRange:(_PLTimeIntervalRange)a5 withDataRange:(_PLTimeIntervalRange)a6
{
  length = a6.length;
  location = a6.location;
  v8 = a5.length;
  v9 = a5.location;
  v10 = a4.length;
  v11 = a4.location;
  v100 = *MEMORY[0x277D85DE8];
  v13 = a3;
  [(PLBatteryUIService *)self incrementAggdKey];
  v14 = v11 + v10;
  if (v11 < location && v14 > location)
  {
    v19 = location + length;
LABEL_14:
    if (v11 >= location)
    {
      v17 = v11;
    }

    else
    {
      v17 = location;
    }

    if (v14 < v19)
    {
      v19 = v11 + v10;
    }

    v18 = v19 - v17;
    goto LABEL_20;
  }

  v19 = location + length;
  if (location < v11 && v19 > v11)
  {
    goto LABEL_14;
  }

  v17 = 0.0;
  if (v11 != location || v10 <= 0.0)
  {
    v18 = 0.0;
    goto LABEL_20;
  }

  v18 = 0.0;
  if (length > 0.0)
  {
    goto LABEL_14;
  }

LABEL_20:
  v20 = v9 + v8;
  v91 = v8;
  v92 = v11 + v10;
  v90 = v10;
  if (v9 >= location || v20 <= location)
  {
    v21 = location + length;
    if (location >= v9 || v21 <= v9)
    {
      v22 = 0.0;
      if (v9 != location || v8 <= 0.0)
      {
        v23 = 0.0;
        goto LABEL_34;
      }

      v23 = 0.0;
      if (length <= 0.0)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v21 = location + length;
  }

  if (v9 >= location)
  {
    v24 = v9;
  }

  else
  {
    v24 = location;
  }

  if (v20 < v21)
  {
    v21 = v20;
  }

  v22 = v24;
  v23 = v21 - v24;
LABEL_34:
  v93 = v20;
  v25 = PLLogCommon();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = MEMORY[0x277CCACA8];
    v27 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v11];
    v28 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v92];
    v29 = [v26 stringWithFormat:@"Start: %@, End %@", v27, v28];

    v30 = MEMORY[0x277CCACA8];
    v31 = MEMORY[0x277CBEAA8];
    v32 = v29;
    v33 = [v31 dateWithTimeIntervalSince1970:v17];
    v34 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v17 + v18];
    v35 = [v30 stringWithFormat:@"Start: %@, End %@", v33, v34];

    *buf = 138412546;
    v97 = v29;
    v98 = 2112;
    v99 = v35;
    _os_log_impl(&dword_25EE51000, v25, OS_LOG_TYPE_INFO, "Day: %@ -> %@", buf, 0x16u);
  }

  v36 = PLLogCommon();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    v37 = MEMORY[0x277CCACA8];
    v38 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v9];
    v39 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v93];
    v40 = [v37 stringWithFormat:@"Start: %@, End %@", v38, v39];

    v41 = MEMORY[0x277CCACA8];
    v42 = MEMORY[0x277CBEAA8];
    v43 = v40;
    v44 = [v42 dateWithTimeIntervalSince1970:v22];
    v45 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v22 + v23];
    v46 = [v41 stringWithFormat:@"Start: %@, End %@", v44, v45];

    *buf = 138412546;
    v97 = v40;
    v98 = 2112;
    v99 = v46;
    _os_log_impl(&dword_25EE51000, v36, OS_LOG_TYPE_INFO, "xDay: %@ -> %@", buf, 0x16u);
  }

  v47 = [v13 objectForKeyedSubscript:@"PLBatteryUIQueryTypeKey"];

  v48 = [v47 intValue];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v49 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91__PLBatteryUIService_batteryBreakdownWithPayload_withDayRange_withXDayRange_withDataRange___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v49;
    if (batteryBreakdownWithPayload_withDayRange_withXDayRange_withDataRange__defaultOnce != -1)
    {
      dispatch_once(&batteryBreakdownWithPayload_withDayRange_withXDayRange_withDataRange__defaultOnce, block);
    }

    if (batteryBreakdownWithPayload_withDayRange_withXDayRange_withDataRange__classDebugEnabled == 1)
    {
      v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"queryType=%i", v48];
      v51 = MEMORY[0x277D3F178];
      v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryUIService.m"];
      v53 = [v52 lastPathComponent];
      v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIService batteryBreakdownWithPayload:withDayRange:withXDayRange:withDataRange:]"];
      [v51 logMessage:v50 fromFile:v53 fromFunction:v54 fromLineNumber:296];

      v55 = PLLogCommon();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }

  v56 = [MEMORY[0x277CBEB38] dictionary];
  v57 = PLLogCommon();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v57, OS_LOG_TYPE_INFO, "Computing last day breakdown", buf, 2u);
  }

  v58 = [(PLBatteryBreakdownService *)self batteryBreakdownWithTimeRange:v48 withDataRange:v11 withEntryTimeInterval:v90 withQueryType:location, length, 3600.0];
  [v56 setObject:v58 forKeyedSubscript:@"PLBatteryUIQueryRangeDayKey"];
  v59 = PLLogCommon();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v59, OS_LOG_TYPE_INFO, "Computing week breakdown", buf, 2u);
  }

  v60 = [(PLBatteryBreakdownService *)self batteryBreakdownWithTimeRange:v48 withDataRange:v9 withEntryTimeInterval:v91 withQueryType:location, length, 3600.0];
  [v56 setObject:v60 forKeyedSubscript:@"PLBatteryUIQueryRangeWeekKey"];

  v61 = PLLogCommon();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v61, OS_LOG_TYPE_INFO, "Computing day breakdown for taps", buf, 2u);
  }

  v62 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v92];
  [(PLBatteryBreakdownService *)self totalSumEnergyRatioCutOff];
  v64 = [(PLBatteryUIService *)self generateTapBucketsForBucketSize:3600 withNumberOfBuckets:24 withNowTime:v62 withDrainThreshold:v48 withQueryType:v63 / 24.0 withDataRange:location, length];
  [v56 setObject:v64 forKeyedSubscript:@"PLBatteryUIQueryRangeDayTapKey"];

  v65 = PLLogCommon();
  if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v65, OS_LOG_TYPE_INFO, "Computing week breakdown for taps", buf, 2u);
  }

  v66 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v93];
  [(PLBatteryBreakdownService *)self totalSumEnergyRatioCutOff];
  v67 = [PLBatteryUIService generateTapBucketsForBucketSize:"generateTapBucketsForBucketSize:withNumberOfBuckets:withNowTime:withDrainThreshold:withQueryType:withDataRange:" withNumberOfBuckets:86400 withNowTime:10 withDrainThreshold:v66 withQueryType:v48 withDataRange:?];
  [v56 setObject:v67 forKeyedSubscript:@"PLBatteryUIQueryRangeWeekTapKey"];

  v68 = PLLogCommon();
  if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v68, OS_LOG_TYPE_INFO, "Computing suggestions", buf, 2u);
  }

  v69 = [v58 objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v70 = [(PLBatteryBreakdownService *)self suggestionsWithEnergyEntries:v69];
  [v56 setObject:v70 forKeyedSubscript:@"PLBatteryUISuggestionArrayKey"];

  v71 = MEMORY[0x277CBEAA8];
  v72 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v22];
  v73 = [v72 convertFromMonotonicToSystem];
  v74 = [v71 nearestMidnightBeforeDate:v73];

  v75 = MEMORY[0x277CBEAA8];
  v76 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v22 + v23];
  v77 = [v76 convertFromMonotonicToSystem];
  v78 = [v75 nearestMidnightAfterDate:v77];

  [v78 timeIntervalSinceDate:v74];
  v79 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [v56 setObject:v79 forKeyedSubscript:@"PLBatteryUIDataDurationKey"];

  v80 = PLLogCommon();
  if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIService batteryBreakdownWithPayload:withDayRange:withXDayRange:withDataRange:];
  }

  [(PLBatteryBreakdownService *)self clearState];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v81 = objc_opt_class();
    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = __91__PLBatteryUIService_batteryBreakdownWithPayload_withDayRange_withXDayRange_withDataRange___block_invoke_123;
    v94[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v94[4] = v81;
    if (batteryBreakdownWithPayload_withDayRange_withXDayRange_withDataRange__defaultOnce_121 != -1)
    {
      dispatch_once(&batteryBreakdownWithPayload_withDayRange_withXDayRange_withDataRange__defaultOnce_121, v94);
    }

    if (batteryBreakdownWithPayload_withDayRange_withXDayRange_withDataRange__classDebugEnabled_122 == 1)
    {
      v82 = [MEMORY[0x277CCACA8] stringWithFormat:@"batteryBreakdown=%@", v56];
      v83 = MEMORY[0x277D3F178];
      v84 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryUIService.m"];
      v85 = [v84 lastPathComponent];
      v86 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIService batteryBreakdownWithPayload:withDayRange:withXDayRange:withDataRange:]"];
      [v83 logMessage:v82 fromFile:v85 fromFunction:v86 fromLineNumber:343];

      v87 = PLLogCommon();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
      {
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }

  v88 = *MEMORY[0x277D85DE8];

  return v56;
}

uint64_t __91__PLBatteryUIService_batteryBreakdownWithPayload_withDayRange_withXDayRange_withDataRange___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithPayload_withDayRange_withXDayRange_withDataRange__classDebugEnabled = result;
  return result;
}

uint64_t __91__PLBatteryUIService_batteryBreakdownWithPayload_withDayRange_withXDayRange_withDataRange___block_invoke_123(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithPayload_withDayRange_withXDayRange_withDataRange__classDebugEnabled_122 = result;
  return result;
}

- (id)generateTapBucketsForBucketSize:(int)a3 withNumberOfBuckets:(int)a4 withNowTime:(id)a5 withDrainThreshold:(double)a6 withQueryType:(int)a7 withDataRange:(_PLTimeIntervalRange)a8
{
  length = a8.length;
  location = a8.location;
  v46 = *MEMORY[0x277D85DE8];
  v14 = a5;
  v15 = objc_opt_new();
  if (a4 >= 1)
  {
    v16 = 0;
    v17 = 0;
    v33 = v14;
    do
    {
      v18 = [v14 dateByAddingTimeInterval:v16];
      v19 = [v18 dateByAddingTimeInterval:-a3];
      v20 = v18;
      [v19 timeIntervalSince1970];
      v22 = v21;
      [v20 timeIntervalSince1970];
      v24 = v23;

      v25 = v24 - v22;
      v26 = PLLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v35 = MEMORY[0x277CCACA8];
        v34 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v22];
        v28 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v22 + v25];
        v36 = [v35 stringWithFormat:@"Start: %@, End %@", v34, v28];

        v14 = v33;
        *buf = 67109890;
        v39 = v17;
        v40 = 1024;
        v41 = a4 - 1;
        v42 = 1024;
        v43 = a3;
        v44 = 2112;
        v45 = v36;
        _os_log_debug_impl(&dword_25EE51000, v26, OS_LOG_TYPE_DEBUG, "Generating tap bucket %d (of %d) of size %d with lastTapRange %@", buf, 0x1Eu);
      }

      v27 = [(PLBatteryBreakdownService *)self batteryBreakdownWithTimeRange:a7 withDataRange:v22 withEntryTimeInterval:v25 withQueryType:location withTotalSumEnergyRatioCutOff:length, 3600.0, a6];
      [v15 addObject:v27];

      ++v17;
      v16 -= a3;
    }

    while (a4 != v17);
  }

  v29 = [v15 reverseObjectEnumerator];
  v30 = [v29 allObjects];

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)modelsWithPayload:(id)a3
{
  v40[3] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEAA8] monotonicDate];
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v4 sinceDate:-604800.0];
  v6 = v4;
  [v5 timeIntervalSince1970];
  v8 = v7;
  [v6 timeIntervalSince1970];
  v10 = v9;

  v11 = [(PLBatteryUIService *)self dateAndBatteryLevelPointsInRange:v8, v10 - v8];
  v39[0] = @"ModelGraphName";
  v39[1] = @"ModelGraphType";
  v40[0] = @"Battery";
  v40[1] = &unk_287145550;
  v39[2] = @"ModelGraphArray";
  v40[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:3];
  if (v11 && [v11 count])
  {
    v36 = v12;
    v37[0] = @"ModelData";
    v33 = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
    v38[0] = v13;
    v37[1] = @"ModelMinDate";
    v14 = [v11 firstObject];
    v15 = [v14 objectAtIndexedSubscript:0];
    v38[1] = v15;
    v37[2] = @"ModelMaxDate";
    v16 = [v11 lastObject];
    v17 = [v16 objectAtIndexedSubscript:0];
    v38[2] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:3];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v19 = objc_opt_class();
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __40__PLBatteryUIService_modelsWithPayload___block_invoke_158;
      v34[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v34[4] = v19;
      if (modelsWithPayload__defaultOnce_156 != -1)
      {
        dispatch_once(&modelsWithPayload__defaultOnce_156, v34);
      }

      v12 = v33;
      if (modelsWithPayload__classDebugEnabled_157 == 1)
      {
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"models=%@", v18];
        v21 = MEMORY[0x277D3F178];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryUIService.m"];
        v23 = [v22 lastPathComponent];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIService modelsWithPayload:]"];
        [v21 logMessage:v20 fromFile:v23 fromFunction:v24 fromLineNumber:392];

        v25 = PLLogCommon();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
        }

LABEL_16:
      }
    }

    else
    {
      v12 = v33;
    }
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v26 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __40__PLBatteryUIService_modelsWithPayload___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v26;
      if (modelsWithPayload__defaultOnce != -1)
      {
        dispatch_once(&modelsWithPayload__defaultOnce, block);
      }

      if (modelsWithPayload__classDebugEnabled == 1)
      {
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"dateAndBatteryLevelPoints is nil or empty!"];
        v27 = MEMORY[0x277D3F178];
        v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryUIService.m"];
        v29 = [v28 lastPathComponent];
        v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIService modelsWithPayload:]"];
        [v27 logMessage:v20 fromFile:v29 fromFunction:v30 fromLineNumber:383];

        v25 = PLLogCommon();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
        }

        v18 = 0;
        goto LABEL_16;
      }
    }

    v18 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];

  return v18;
}

uint64_t __40__PLBatteryUIService_modelsWithPayload___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  modelsWithPayload__classDebugEnabled = result;
  return result;
}

uint64_t __40__PLBatteryUIService_modelsWithPayload___block_invoke_158(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  modelsWithPayload__classDebugEnabled_157 = result;
  return result;
}

- (id)dateAndBatteryLevelPointsInRange:(_PLTimeIntervalRange)a3
{
  length = a3.length;
  location = a3.location;
  v43 = *MEMORY[0x277D85DE8];
  if (dateAndBatteryLevelPointsInRange__onceToken != -1)
  {
    [PLBatteryUIService dateAndBatteryLevelPointsInRange:];
  }

  v6 = [(PLOperator *)self storage];
  v7 = [v6 entriesForKey:dateAndBatteryLevelPointsInRange__batteryUIEntryKey inTimeRange:0 withFilters:{location, length}];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__PLBatteryUIService_dateAndBatteryLevelPointsInRange___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (dateAndBatteryLevelPointsInRange__defaultOnce != -1)
    {
      dispatch_once(&dateAndBatteryLevelPointsInRange__defaultOnce, block);
    }

    if (dateAndBatteryLevelPointsInRange__classDebugEnabled == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"batteryEntries=%@", v7];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryUIService.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIService dateAndBatteryLevelPointsInRange:]"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:408];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }

  v15 = [MEMORY[0x277CBEB18] array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v7;
  v16 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v37;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v37 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v36 + 1) + 8 * i);
        v21 = [v20 entryDate];
        v22 = [v21 convertFromMonotonicToSystem];
        v41[0] = v22;
        v23 = [v20 objectForKeyedSubscript:@"Level"];
        v41[1] = v23;
        v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];

        [v15 addObject:v24];
      }

      v17 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v17);
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v25 = objc_opt_class();
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __55__PLBatteryUIService_dateAndBatteryLevelPointsInRange___block_invoke_171;
    v35[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v35[4] = v25;
    if (dateAndBatteryLevelPointsInRange__defaultOnce_169 != -1)
    {
      dispatch_once(&dateAndBatteryLevelPointsInRange__defaultOnce_169, v35);
    }

    if (dateAndBatteryLevelPointsInRange__classDebugEnabled_170 == 1)
    {
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"dateAndBatteryLevelPoints=%@", v15];
      v27 = MEMORY[0x277D3F178];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryUIService.m"];
      v29 = [v28 lastPathComponent];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIService dateAndBatteryLevelPointsInRange:]"];
      [v27 logMessage:v26 fromFile:v29 fromFunction:v30 fromLineNumber:418];

      v31 = PLLogCommon();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }

  v32 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __55__PLBatteryUIService_dateAndBatteryLevelPointsInRange___block_invoke()
{
  dateAndBatteryLevelPointsInRange__batteryUIEntryKey = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BatteryUI"];

  return MEMORY[0x2821F96F8]();
}

uint64_t __55__PLBatteryUIService_dateAndBatteryLevelPointsInRange___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  dateAndBatteryLevelPointsInRange__classDebugEnabled = result;
  return result;
}

uint64_t __55__PLBatteryUIService_dateAndBatteryLevelPointsInRange___block_invoke_171(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  dateAndBatteryLevelPointsInRange__classDebugEnabled_170 = result;
  return result;
}

- (void)testUIQuery
{
  v3 = objc_opt_new();
  [v3 setObject:&unk_287145568 forKeyedSubscript:@"PLBatteryUIQueryTypeKey"];
  v4 = [(PLBatteryUIService *)self batteryBreakdownAndGraphWithPayload:v3];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __33__PLBatteryUIService_testUIQuery__block_invoke;
    v15 = &__block_descriptor_40_e5_v8__0lu32l8;
    v16 = v5;
    if (testUIQuery_defaultOnce != -1)
    {
      dispatch_once(&testUIQuery_defaultOnce, &block);
    }

    if (testUIQuery_classDebugEnabled == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Response %@", v4, block, v13, v14, v15, v16];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryUIService.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIService testUIQuery]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:482];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }
}

uint64_t __33__PLBatteryUIService_testUIQuery__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  testUIQuery_classDebugEnabled = result;
  return result;
}

- (BOOL)demoMode
{
  if (demoMode_onceToken != -1)
  {
    [PLBatteryUIService demoMode];
  }

  v3 = demoMode_val;
  if (demoMode_val)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

uint64_t __30__PLBatteryUIService_demoMode__block_invoke()
{
  v0 = *MEMORY[0x277CBF040];
  v1 = *MEMORY[0x277CBF030];
  +[PLUtilities containerPath];
  demoMode_val = _CFPreferencesCopyValueWithContainer();

  return MEMORY[0x2821F96F8]();
}

- (id)demoModePath
{
  if (demoModePath_onceToken != -1)
  {
    [PLBatteryUIService demoModePath];
  }

  if (demoModePath_val)
  {
    v2 = PLLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIService demoModePath];
    }

    v3 = demoModePath_val;
  }

  else
  {
    v3 = @"/var/mobile/bui_demo.plist";
  }

  return v3;
}

uint64_t __34__PLBatteryUIService_demoModePath__block_invoke()
{
  v0 = *MEMORY[0x277CBF040];
  v1 = *MEMORY[0x277CBF030];
  +[PLUtilities containerPath];
  demoModePath_val = _CFPreferencesCopyValueWithContainer();

  return MEMORY[0x2821F96F8]();
}

- (BOOL)writeOutputDemo
{
  if (writeOutputDemo_onceToken != -1)
  {
    [PLBatteryUIService writeOutputDemo];
  }

  v3 = writeOutputDemo_val;
  if (writeOutputDemo_val)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

uint64_t __37__PLBatteryUIService_writeOutputDemo__block_invoke()
{
  v0 = *MEMORY[0x277CBF040];
  v1 = *MEMORY[0x277CBF030];
  +[PLUtilities containerPath];
  writeOutputDemo_val = _CFPreferencesCopyValueWithContainer();

  return MEMORY[0x2821F96F8]();
}

- (id)getLastChargeData
{
  v21[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBF040];
  v3 = *MEMORY[0x277CBF030];
  +[PLUtilities containerPath];
  v4 = _CFPreferencesCopyValueWithContainer();
  +[PLUtilities containerPath];
  v5 = _CFPreferencesCopyValueWithContainer();
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v10 = PLLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PLBatteryUIService getLastChargeData];
    }

    v8 = 0;
  }

  else
  {
    v9 = MEMORY[0x277CBEAA8];
    [v5 doubleValue];
    v10 = [v9 dateWithTimeIntervalSince1970:?];
    v11 = [v4 intValue];
    if (v11 >= 100)
    {
      v12 = 100;
    }

    else
    {
      v12 = v11;
    }

    if (v12 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    v20[0] = @"PLBatteryUITimestampKey";
    v14 = MEMORY[0x277CCABB0];
    v15 = [v10 convertFromMonotonicToSystem];
    [v15 timeIntervalSince1970];
    v16 = [v14 numberWithDouble:?];
    v20[1] = @"PLBatteryUILevelKey";
    v21[0] = v16;
    v17 = [MEMORY[0x277CCABB0] numberWithInt:v13];
    v21[1] = v17;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)getLPMIntervalsSpanningRange:(_PLTimeIntervalRange)a3
{
  length = a3.length;
  location = a3.location;
  v56[1] = *MEMORY[0x277D85DE8];
  v6 = PLLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIService getLPMIntervalsSpanningRange:];
  }

  v7 = objc_opt_new();
  v8 = objc_alloc(MEMORY[0x277D3F260]);
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:location];
  v10 = [v8 initWithKey:@"timestamp" withValue:v9 withComparisonOperation:5];

  v11 = [(PLOperator *)self storage];
  v45 = v10;
  v56[0] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:1];
  v13 = [v11 lastEntryForKey:@"PLDuetService_EventForward_BatterySaverMode" withComparisons:v12 isSingleton:0];

  if (!v13)
  {
    goto LABEL_8;
  }

  v14 = [v13 objectForKeyedSubscript:@"Value"];
  v15 = [v14 BOOLValue];

  v16 = PLLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIService getLPMIntervalsSpanningRange:];
  }

  if (v15)
  {
    v17 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:location];
    v18 = 1;
  }

  else
  {
LABEL_8:
    v17 = 0;
    v18 = 0;
  }

  v44 = v13;
  v46 = v7;
  v19 = [(PLOperator *)self storage];
  v20 = [v19 entriesForKey:@"PLDuetService_EventForward_BatterySaverMode" inTimeRange:0 withFilters:{location, length}];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v43 = v20;
  v21 = [v20 reverseObjectEnumerator];
  v22 = [v21 countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v50;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v50 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v49 + 1) + 8 * i);
        v27 = [v26 objectForKeyedSubscript:@"Value"];
        v28 = [v27 BOOLValue];

        v29 = PLLogCommon();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109378;
          LODWORD(v54[0]) = v28;
          WORD2(v54[0]) = 2112;
          *(v54 + 6) = v26;
          _os_log_debug_impl(&dword_25EE51000, v29, OS_LOG_TYPE_DEBUG, "LPM Entry: %d %@", buf, 0x12u);
        }

        if ((v18 & 1) == v28)
        {
          v30 = PLLogCommon();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            [(PLBatteryUIService *)&v47 getLPMIntervalsSpanningRange:v48, v30];
          }
        }

        else if (v28)
        {
          [v26 entryDate];
          v30 = v17;
          v17 = v18 = 1;
        }

        else
        {
          v31 = objc_alloc(MEMORY[0x277CCA970]);
          v32 = [v26 entryDate];
          v30 = [v31 initWithStartDate:v17 endDate:v32];

          [v46 addObject:v30];
          v33 = PLLogCommon();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v54[0] = v30;
            _os_log_debug_impl(&dword_25EE51000, v33, OS_LOG_TYPE_DEBUG, "Created LPM interval %@", buf, 0xCu);
          }

          v17 = 0;
          v18 = 0;
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v23);
  }

  if (v18)
  {
    v34 = PLLogCommon();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIService getLPMIntervalsSpanningRange:];
    }

    v35 = objc_alloc(MEMORY[0x277CCA970]);
    v36 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:location + length];
    v37 = [v35 initWithStartDate:v17 endDate:v36];

    [v46 addObject:v37];
    v38 = PLLogCommon();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIService getLPMIntervalsSpanningRange:];
    }
  }

  v39 = PLLogCommon();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v54[0] = v46;
    _os_log_impl(&dword_25EE51000, v39, OS_LOG_TYPE_INFO, "LPM intervals: %@", buf, 0xCu);
  }

  v40 = v46;
  v41 = *MEMORY[0x277D85DE8];
  return v46;
}

- (BOOL)dateIntervals:(id)a3 containDate:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  LOBYTE(v8) = 0;
  if (v5 && v6)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = v5;
    v8 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v9);
          }

          if ([*(*(&v14 + 1) + 8 * i) containsDate:{v7, v14}])
          {
            LOBYTE(v8) = 1;
            goto LABEL_13;
          }
        }

        v8 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)batteryLevelsAndChargingIntervalsInRange:(_PLTimeIntervalRange)a3 withDataRange:(_PLTimeIntervalRange)a4
{
  length = a3.length;
  location = a3.location;
  v158[2] = *MEMORY[0x277D85DE8];
  v6 = a3.location + a3.length;
  if (location >= a4.location || v6 <= a4.location)
  {
    v11 = a4.location + a4.length;
    if (a4.location >= location || v11 <= location)
    {
      v9 = 0.0;
      if (location != a4.location || length <= 0.0)
      {
        v10 = 0.0;
        goto LABEL_20;
      }

      v10 = 0.0;
      if (a4.length <= 0.0)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    v11 = a4.location + a4.length;
  }

  if (location >= a4.location)
  {
    v9 = location;
  }

  else
  {
    v9 = a4.location;
  }

  if (v6 >= v11)
  {
    v6 = v11;
  }

  v10 = v6 - v9;
LABEL_20:
  v134 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{location, v11}];
  v12 = PLLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v12, OS_LOG_TYPE_INFO, "Creating battery points and charging intervals", buf, 2u);
  }

  v13 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BatteryUI"];
  v14 = objc_opt_new();
  v131 = objc_opt_new();
  v15 = objc_alloc(MEMORY[0x277D3F260]);
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:location];
  v17 = [v15 initWithKey:@"timestamp" withValue:v16 withComparisonOperation:5];

  v18 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"Level" withValue:&unk_287145568 withComparisonOperation:3];
  v19 = [(PLOperator *)self storage];
  v123 = v18;
  v124 = v17;
  v158[0] = v17;
  v158[1] = v18;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v158 count:2];
  v21 = [v19 lastEntryForKey:v13 withComparisons:v20 isSingleton:0];

  if (v21)
  {
    v22 = [v21 objectForKeyedSubscript:@"IsCharging"];
    LODWORD(v23) = [v22 BOOLValue];

    v24 = PLLogCommon();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIService batteryLevelsAndChargingIntervalsInRange:withDataRange:];
    }
  }

  else
  {
    LODWORD(v23) = 0;
  }

  v137 = [(PLBatteryUIService *)self getLPMIntervalsSpanningRange:location, length];
  v25 = [(PLOperator *)self storage];
  v26 = [v25 entriesForKey:v13 inTimeRange:0 withFilters:{v9, v10}];

  v27 = PLLogCommon();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIService batteryLevelsAndChargingIntervalsInRange:v26 withDataRange:?];
  }

  if ([v26 count] >= 0x121)
  {
    v28 = PLLogCommon();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *v151 = 0x4072C00000000000;
      _os_log_impl(&dword_25EE51000, v28, OS_LOG_TYPE_INFO, "More battery point entries than expected, has PLBatteryAgent_RateLimiterBatteryUI been set to less than default %.f s?", buf, 0xCu);
    }

    if ([v26 count] >= 0x10E1)
    {
      v29 = PLLogCommon();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25EE51000, v29, OS_LOG_TYPE_INFO, "More battery point entries than possible given 20s battery tick rate limit, double check query ranges", buf, 2u);
      }
    }
  }

  v122 = v21;
  v125 = v13;
  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v127 = v26;
  v30 = [v26 reverseObjectEnumerator];
  v31 = [v30 countByEnumeratingWithState:&v143 objects:v157 count:16];
  v126 = v14;
  if (v31)
  {
    v32 = v31;
    v33 = *v144;
    v34 = 0.0;
    while (1)
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v144 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v36 = *(*(&v143 + 1) + 8 * i);
        v37 = [v36 objectForKeyedSubscript:@"Level"];
        v38 = [v37 intValue];

        if (v38 < 0)
        {
          v41 = PLLogCommon();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            [PLBatteryUIService batteryLevelsAndChargingIntervalsInRange:v156 withDataRange:v36];
          }
        }

        else
        {
          v39 = [v36 objectForKeyedSubscript:@"IsCharging"];
          v40 = [v39 BOOLValue];

          if ((v23 & 1) == v40)
          {
            continue;
          }

          if (v40)
          {
            v41 = [v36 entryDate];
            [v41 timeIntervalSinceDate:v134];
            v34 = v42;
            LOBYTE(v23) = 1;
          }

          else
          {
            v43 = [MEMORY[0x277CCABB0] numberWithInt:v34];
            v155[0] = v43;
            v44 = MEMORY[0x277CCABB0];
            v45 = [v36 entryDate];
            [v45 timeIntervalSinceDate:v134];
            v47 = [v44 numberWithInt:v46];
            v155[1] = v47;
            v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v155 count:2];

            v23 = PLLogCommon();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              v48 = [v41 objectAtIndexedSubscript:0];
              v49 = [v41 objectAtIndexedSubscript:1];
              *buf = 138412546;
              *v151 = v48;
              *&v151[8] = 2112;
              *&v151[10] = v49;
              _os_log_debug_impl(&dword_25EE51000, v23, OS_LOG_TYPE_DEBUG, "Created charging interval: [%@ %@]", buf, 0x16u);
            }

            [v131 addObject:v41];
            LOBYTE(v23) = 0;
          }
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v143 objects:v157 count:16];
      if (!v32)
      {

        v50 = 0x277CBE000;
        if (v23)
        {
          v51 = v34;
          goto LABEL_57;
        }

        goto LABEL_62;
      }
    }
  }

  v50 = 0x277CBE000uLL;
  if (v23)
  {
    v51 = 0;
LABEL_57:
    v52 = [v127 firstObject];
    v53 = v52;
    if (v52)
    {
      v54 = [v52 entryDate];
      [v54 timeIntervalSinceDate:v134];
      v56 = v55;

      v57 = [MEMORY[0x277CCABB0] numberWithInt:v51];
      v154[0] = v57;
      v58 = [MEMORY[0x277CCABB0] numberWithInt:v56];
      v154[1] = v58;
      v59 = [*(v50 + 2656) arrayWithObjects:v154 count:2];

      v60 = PLLogCommon();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIService batteryLevelsAndChargingIntervalsInRange:v59 withDataRange:?];
      }

      [v131 addObject:v59];
    }
  }

LABEL_62:
  v61 = v134;
  v62 = PLLogCommon();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIService batteryLevelsAndChargingIntervalsInRange:withDataRange:];
  }

  v130 = 0;
  if ([MEMORY[0x277D3F208] isiPad])
  {
    v63 = 10;
  }

  else
  {
    v63 = 20;
  }

  v133 = v63;
  v132 = -1;
  v121 = v61;
  v64 = v61;
  do
  {
    v129 = v64;
    [v64 timeIntervalSince1970];
    v66 = v65;
    v67 = PLLogCommon();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
    {
      v114 = MEMORY[0x277CCACA8];
      v115 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v66];
      v116 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v66 + 900.0];
      v117 = [v114 stringWithFormat:@"Start: %@, End %@", v115, v116];

      *buf = 67109378;
      *v151 = v130;
      *&v151[4] = 2112;
      *&v151[6] = v117;
      _os_log_debug_impl(&dword_25EE51000, v67, OS_LOG_TYPE_DEBUG, "Calculating battery entries for bucket %d in range %@", buf, 0x12u);
    }

    v68 = [(PLBatteryUIService *)self entriesInRange:v127 fromEntries:v66, 900.0];
    v69 = PLLogCommon();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIService batteryLevelsAndChargingIntervalsInRange:v153 withDataRange:v68];
    }

    v128 = v68;
    if ([v68 count])
    {
      v135 = objc_opt_new();
      v139 = 0u;
      v140 = 0u;
      v141 = 0u;
      v142 = 0u;
      v70 = v68;
      v71 = [v70 countByEnumeratingWithState:&v139 objects:v152 count:16];
      if (v71)
      {
        v72 = v71;
        v73 = 0;
        v74 = *v140;
        do
        {
          for (j = 0; j != v72; ++j)
          {
            if (*v140 != v74)
            {
              objc_enumerationMutation(v70);
            }

            v76 = *(*(&v139 + 1) + 8 * j);
            v77 = [v76 objectForKeyedSubscript:@"Level"];
            v78 = [v77 intValue];

            if ((v78 & 0x80000000) == 0)
            {
              v79 = [v76 entryDate];
              v80 = [(PLBatteryUIService *)self dateIntervals:v137 containDate:v79];

              v81 = [v76 objectForKeyedSubscript:@"IsCharging"];
              v82 = [v81 BOOLValue];

              v83 = [v76 objectForKeyedSubscript:@"Level"];

              if (v83)
              {
                v84 = [v76 objectForKeyedSubscript:@"Level"];
                [v135 addObject:v84];

                v85 = [v76 objectForKeyedSubscript:@"Level"];
                v86 = [v85 intValue];

                v87 = v73 | 8;
                if (!v82)
                {
                  v87 = v73;
                }

                if (v80)
                {
                  v87 |= 4uLL;
                }

                if (v86 > v133)
                {
                  v73 = v87;
                }

                else
                {
                  v73 = v87 | 2;
                }
              }

              else
              {
                v88 = 9;
                if (!v82)
                {
                  v88 = 1;
                }

                v89 = v88 | v73;
                if (v80)
                {
                  v73 = v89 | 4;
                }

                else
                {
                  v73 = v89;
                }
              }
            }
          }

          v72 = [v70 countByEnumeratingWithState:&v139 objects:v152 count:16];
        }

        while (v72);
      }

      else
      {
        v73 = 0;
      }

      if ([v135 count])
      {
        v90 = [v135 valueForKeyPath:@"@avg.self"];
      }

      else
      {
        v90 = &unk_287145580;
      }

      if ([v90 intValue] >= 101)
      {

        v90 = &unk_287145598;
      }

      if (([v90 intValue] & 0x80000000) != 0)
      {

        v90 = &unk_287145568;
      }
    }

    else
    {
      v90 = &unk_287145580;
      v73 = 1;
    }

    v91 = PLLogCommon();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109634;
      *v151 = v130;
      *&v151[4] = 2112;
      *&v151[6] = v90;
      *&v151[14] = 2048;
      *&v151[16] = v73;
      _os_log_debug_impl(&dword_25EE51000, v91, OS_LOG_TYPE_DEBUG, "i:%d, %@, %lu", buf, 0x1Cu);
    }

    v136 = v90;

    if ((v73 & 1) == 0 && v132 != -1)
    {
      v92 = v130 - v132;
      if ((v130 - v132 - 2) <= 3)
      {
        v93 = [v126 objectAtIndexedSubscript:v132];
        v94 = [v93 objectAtIndexedSubscript:0];
        [v94 doubleValue];
        v96 = v95;

        [v136 doubleValue];
        v98 = v97;
        v99 = [v126 objectAtIndexedSubscript:v132];
        v100 = [v99 objectAtIndexedSubscript:1];
        v101 = [v100 intValue];

        if (v132 + 1 < v130)
        {
          v102 = v101;
          v103 = (v98 - v96) / v92;
          v104 = v132 + 1;
          v105 = 1;
          do
          {
            v106 = [MEMORY[0x277CCABB0] numberWithDouble:floor(v96 + v103 * v105)];
            v149[0] = v106;
            v107 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v73 & v102];
            v149[1] = v107;
            v108 = [MEMORY[0x277CBEA60] arrayWithObjects:v149 count:2];

            [v126 setObject:v108 atIndexedSubscript:v104];
            ++v104;
            ++v105;
          }

          while (v92 != v105);
        }
      }
    }

    v109 = v130;
    if (v73)
    {
      v110 = v132;
    }

    else
    {
      v110 = v130;
    }

    v132 = v110;
    v111 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v136, "intValue")}];
    v148[0] = v111;
    v112 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v73];
    v148[1] = v112;
    v113 = [MEMORY[0x277CBEA60] arrayWithObjects:v148 count:2];

    [v126 addObject:v113];
    v64 = [v129 dateByAddingTimeInterval:900.0];

    ++v130;
  }

  while (v109 != 95);
  v147[0] = v126;
  v147[1] = v131;
  v118 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:2];

  v119 = *MEMORY[0x277D85DE8];

  return v118;
}

- (id)screenTimeInRange:(_PLTimeIntervalRange)a3 withBucketSize:(double)a4 withNumBuckets:(int)a5 withDataRange:(_PLTimeIntervalRange)a6 withQueryType:(int)a7 andBatteryBreakdown:(id)a8
{
  length = a6.length;
  location = a6.location;
  v12 = a3.length;
  v13 = a3.location;
  v125 = *MEMORY[0x277D85DE8];
  v100 = a8;
  v14 = v13 + -1800.0;
  v15 = location + length;
  if (location >= v13 + -1800.0 || v15 <= v14)
  {
    v20 = v12 + v14;
    if (v14 >= location || v20 <= location)
    {
      v18 = 0.0;
      if (location != v14 || length <= 0.0)
      {
        v19 = 0.0;
        goto LABEL_20;
      }

      v19 = 0.0;
      if (v12 <= 0.0)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    v20 = v12 + v14;
  }

  if (location >= v14)
  {
    v18 = location;
  }

  else
  {
    v18 = v14;
  }

  if (v15 >= v20)
  {
    v15 = v20;
  }

  v19 = v15 - v18;
LABEL_20:
  v21 = [(PLOperator *)PLAppTimeService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"UsageTime", v15, v20];
  v22 = [(PLOperator *)self storage];
  v96 = v21;
  v23 = [v22 entriesForKey:v21 inTimeRange:0 withFilters:{v18, v19}];

  v24 = PLLogCommon();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v24, OS_LOG_TYPE_INFO, "Creating screen times", buf, 2u);
  }

  v25 = objc_opt_new();
  v104 = objc_opt_new();
  v26 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v12 + v14];
  v99 = v23;
  v27 = self;
  v97 = v25;
  if (a5 < 1)
  {
    v74 = 0;
    v73 = 0.0;
    v72 = 0.0;
  }

  else
  {
    v107 = 0;
    v108 = 0;
    v106 = 0;
    v103 = a5;
    do
    {
      v28 = [v26 dateByAddingTimeInterval:-a4];
      v29 = v26;
      [v28 timeIntervalSince1970];
      v31 = v30;
      [v29 timeIntervalSince1970];
      v33 = v32;

      v34 = v33 - v31;
      v35 = [(PLBatteryUIService *)v27 entriesInRange:v23 fromEntries:v31, v34];
      v36 = PLLogCommon();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        v67 = MEMORY[0x277CCACA8];
        v68 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v31];
        v69 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v31 + v34];
        v70 = [v67 stringWithFormat:@"Start: %@, End %@", v68, v69];

        v25 = v97;
        v71 = [v35 count];
        *buf = 67109634;
        v121 = v108;
        v122 = 2112;
        *v123 = v70;
        *&v123[8] = 2048;
        v124 = v71;
        _os_log_debug_impl(&dword_25EE51000, v36, OS_LOG_TYPE_DEBUG, "Bucket %d range: %@ with %lu entries in range", buf, 0x1Cu);
      }

      v37 = [v35 count];
      v38 = PLLogCommon();
      v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG);
      if (v37)
      {
        if (v39)
        {
          *buf = 67109632;
          v121 = v108;
          v122 = 1024;
          *v123 = 0;
          *&v123[4] = 1024;
          *&v123[6] = 0;
          _os_log_debug_impl(&dword_25EE51000, v38, OS_LOG_TYPE_DEBUG, "Start of bucket %d On:%d Off:%d", buf, 0x14u);
        }

        v105 = v29;

        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        v40 = v35;
        v41 = [v40 countByEnumeratingWithState:&v110 objects:v119 count:16];
        if (v41)
        {
          v42 = v41;
          v101 = v35;
          v43 = 0;
          v44 = 0;
          v45 = *v111;
          do
          {
            for (i = 0; i != v42; ++i)
            {
              if (*v111 != v45)
              {
                objc_enumerationMutation(v40);
              }

              v47 = *(*(&v110 + 1) + 8 * i);
              v48 = [v47 objectForKeyedSubscript:@"ScreenOn"];
              if (v48)
              {
                v49 = [v47 objectForKeyedSubscript:@"ScreenOn"];
                v44 += [v49 intValue];
              }

              v50 = [v47 objectForKeyedSubscript:@"ScreenOff"];
              if (v50)
              {
                v51 = [v47 objectForKeyedSubscript:@"ScreenOff"];
                v43 += [v51 intValue];
              }

              v52 = PLLogCommon();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
              {
                *buf = 67109888;
                v121 = v108;
                v122 = 1024;
                *v123 = v44;
                *&v123[4] = 1024;
                *&v123[6] = v43;
                LOWORD(v124) = 1024;
                *(&v124 + 2) = v43 + v44;
                _os_log_debug_impl(&dword_25EE51000, v52, OS_LOG_TYPE_DEBUG, "Bucket %d On:%d Off:%d Total:%d", buf, 0x1Au);
              }
            }

            v42 = [v40 countByEnumeratingWithState:&v110 objects:v119 count:16];
          }

          while (v42);
          v53 = (v43 + v44);
          v25 = v97;
          v35 = v101;
        }

        else
        {
          v43 = 0;
          v44 = 0;
          v53 = 0.0;
        }

        if (v53 <= a4)
        {
          v55 = v35;
        }

        else
        {
          v44 = (v44 * a4 / v53);
          v43 = (v43 * a4 / v53);
          v54 = PLLogCommon();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109376;
            v121 = v44;
            v122 = 1024;
            *v123 = v43;
            _os_log_debug_impl(&dword_25EE51000, v54, OS_LOG_TYPE_DEBUG, "Normalized On:%d Off:%d", buf, 0xEu);
          }

          v55 = v35;
        }

        HIDWORD(v107) += v44;
        LODWORD(v107) = v43 + v107;
        v56 = [v100 objectForKeyedSubscript:@"PLBatteryUIQueryRangeDayTapKey"];
        v57 = [v56 objectAtIndexedSubscript:23 - v108];
        v58 = [v57 objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];

        v59 = v44;
        v27 = self;
        [(PLBatteryUIService *)self adjustScreenOnTimeSecsWithGraphValue:a7 queryType:v58 andBreakdownEntries:v59];
        v61 = v60;
        [(PLBatteryUIService *)self adjustScreenOffTimeSecsWithGraphValue:a7 withGraphScreenOnSecs:v58 queryType:v43 andBreakdownEntries:v61];
        v63 = v62;
        v64 = [MEMORY[0x277CCABB0] numberWithInt:v61];
        [v25 addObject:v64];

        v65 = [MEMORY[0x277CCABB0] numberWithInt:v63];
        [v104 addObject:v65];

        v66 = PLLogCommon();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109632;
          v121 = v108;
          v122 = 1024;
          *v123 = HIDWORD(v107);
          *&v123[4] = 1024;
          *&v123[6] = v107;
          _os_log_debug_impl(&dword_25EE51000, v66, OS_LOG_TYPE_DEBUG, "Bucket %d Totals so far on:%d off:%d", buf, 0x14u);
        }

        v106 = (v106 + 1);

        v29 = v105;
        v35 = v55;
        v23 = v99;
      }

      else
      {
        if (v39)
        {
          *buf = 67109632;
          v121 = v108;
          v122 = 1024;
          *v123 = HIDWORD(v107);
          *&v123[4] = 1024;
          *&v123[6] = v107;
          _os_log_debug_impl(&dword_25EE51000, v38, OS_LOG_TYPE_DEBUG, "Not enough info in bucket %d, total on:%d off:%d", buf, 0x14u);
        }

        [v25 addObject:&unk_287145580];
        [v104 addObject:&unk_287145580];
      }

      v26 = [v29 dateByAddingTimeInterval:-a4];

      ++v108;
    }

    while (v108 != v103);
    v72 = SHIDWORD(v107);
    v73 = v107;
    v74 = v106;
  }

  ADClientSetValueForScalarKey();
  v75 = objc_opt_new();
  [v75 setObject:@"24hr" forKeyedSubscript:@"duration"];
  v76 = [MEMORY[0x277CCABB0] numberWithInt:v74];
  [v75 setObject:v76 forKeyedSubscript:@"numBuckets"];

  v109 = v75;
  AnalyticsSendEventLazy();
  v77 = PLLogCommon();
  if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v121 = v74;
    _os_log_impl(&dword_25EE51000, v77, OS_LOG_TYPE_INFO, "Total screen buckets with info: %d", buf, 8u);
  }

  v78 = PLLogCommon();
  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIService screenTimeInRange:withBucketSize:withNumBuckets:withDataRange:withQueryType:andBatteryBreakdown:];
  }

  v79 = [v100 objectForKeyedSubscript:@"PLBatteryUIQueryRangeDayKey"];
  v80 = [v79 objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];

  [(PLBatteryUIService *)self adjustScreenOnTimeSecsWithGraphValue:a7 queryType:v80 andBreakdownEntries:v72];
  v82 = v81;
  [(PLBatteryUIService *)self adjustScreenOffTimeSecsWithGraphValue:a7 withGraphScreenOnSecs:v80 queryType:v73 andBreakdownEntries:v82];
  v84 = v83;
  v117[0] = @"PLBatteryUIGraphHourly";
  v85 = [v25 reverseObjectEnumerator];
  v86 = [v85 allObjects];
  v117[1] = @"PLBatteryUIGraphTotal";
  v118[0] = v86;
  v87 = [MEMORY[0x277CCABB0] numberWithInt:v82];
  v118[1] = v87;
  v88 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v118 forKeys:v117 count:2];

  v115[0] = @"PLBatteryUIGraphHourly";
  v89 = [v104 reverseObjectEnumerator];
  v90 = [v89 allObjects];
  v115[1] = @"PLBatteryUIGraphTotal";
  v116[0] = v90;
  v91 = [MEMORY[0x277CCABB0] numberWithInt:v84];
  v116[1] = v91;
  v92 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v116 forKeys:v115 count:2];

  v114[0] = v88;
  v114[1] = v92;
  v93 = [MEMORY[0x277CBEA60] arrayWithObjects:v114 count:2];

  v94 = *MEMORY[0x277D85DE8];

  return v93;
}

- (id)entriesInRange:(_PLTimeIntervalRange)a3 fromEntries:(id)a4
{
  length = a3.length;
  location = a3.location;
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    v12 = location + length;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [v14 entryDate];
        if (v15)
        {
          v16 = v15;
          [v15 timeIntervalSince1970];
          v18 = v17;

          if (location <= v18 && v18 < v12)
          {
            [v7 addObject:v14];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)lastXDaysWithRange:(_PLTimeIntervalRange)a3 withDataRange:(_PLTimeIntervalRange)a4 withQueryType:(int)a5 andBatteryBreakdown:(id)a6
{
  length = a4.length;
  location = a4.location;
  v8 = a3.length;
  v9 = a3.location;
  v124 = *MEMORY[0x277D85DE8];
  v96 = a6;
  v10 = v9 + -1800.0;
  v11 = v8 + v9 + -1800.0;
  v12 = v10 >= location || v11 <= location;
  if (!v12)
  {
    v16 = location + length;
LABEL_16:
    if (v10 >= location)
    {
      v14 = v10;
    }

    else
    {
      v14 = location;
    }

    if (v11 >= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v11;
    }

    v15 = v17 - v14;
    goto LABEL_23;
  }

  v16 = location + length;
  if (location < v10 && v16 > v10)
  {
    goto LABEL_16;
  }

  v14 = 0.0;
  if (v10 != location || v8 <= 0.0)
  {
    v15 = 0.0;
    goto LABEL_23;
  }

  v12 = length <= 0.0;
  v15 = 0.0;
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_23:
  v18 = *MEMORY[0x277D3F5B8];
  v19 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"UILevel"];
  v20 = [(PLOperator *)self storage];
  v98 = [v20 entriesForKey:v19 inTimeRange:0 withFilters:{v14, v15}];

  v21 = [(PLOperator *)PLAppTimeService entryKeyForType:v18 andName:@"UsageTime"];
  v22 = [(PLOperator *)self storage];
  v93 = v21;
  v97 = [v22 entriesForKey:v21 inTimeRange:0 withFilters:{v14, v15}];

  v23 = PLLogCommon();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v23, OS_LOG_TYPE_INFO, "Computing lastX days data", buf, 2u);
  }

  v24 = PLLogCommon();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIService lastXDaysWithRange:v97 withDataRange:v98 withQueryType:? andBatteryBreakdown:?];
  }

  v95 = objc_opt_new();
  v25 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v11];
  v26 = PLLogCommon();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIService lastXDaysWithRange:withDataRange:withQueryType:andBatteryBreakdown:];
  }

  v103 = 0;
  v27 = 0;
  do
  {
    v28 = [v25 dateByAddingTimeInterval:-86400.0];
    v29 = v25;
    [v28 timeIntervalSince1970];
    v31 = v30;
    [v29 timeIntervalSince1970];
    v33 = v32;
    v101 = v29;

    v34 = v33 - v31;
    v35 = PLLogCommon();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      v83 = MEMORY[0x277CCACA8];
      v84 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v31];
      v85 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v31 + v34];
      v86 = [v83 stringWithFormat:@"Start: %@, End %@", v84, v85];

      *buf = 67109378;
      *v123 = v103;
      *&v123[4] = 2112;
      *&v123[6] = v86;
      _os_log_debug_impl(&dword_25EE51000, v35, OS_LOG_TYPE_DEBUG, "Calculating day %d range: %@", buf, 0x12u);
    }

    v36 = [(PLBatteryUIService *)self entriesInRange:v98 fromEntries:v31, v34];
    v37 = [(PLBatteryUIService *)self entriesInRange:v97 fromEntries:v31, v34];
    v38 = PLLogCommon();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      v87 = [v36 count];
      v88 = [v37 count];
      *buf = 134218240;
      *v123 = v87;
      *&v123[8] = 2048;
      *&v123[10] = v88;
      _os_log_debug_impl(&dword_25EE51000, v38, OS_LOG_TYPE_DEBUG, "Entries in range UI: %lu Usage: %lu", buf, 0x16u);
    }

    v104 = v36;
    v100 = v37;
    if ([v36 count] && objc_msgSend(v37, "count"))
    {
      v105 = v27;
      v114 = 0u;
      v115 = 0u;
      v113 = 0u;
      v112 = 0u;
      v39 = v37;
      v40 = [v39 countByEnumeratingWithState:&v112 objects:v121 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = 0;
        v43 = 0;
        v44 = *v113;
        do
        {
          for (i = 0; i != v41; ++i)
          {
            if (*v113 != v44)
            {
              objc_enumerationMutation(v39);
            }

            v46 = *(*(&v112 + 1) + 8 * i);
            v47 = [v46 objectForKeyedSubscript:@"ScreenOn"];
            if (v47)
            {
              v48 = [v46 objectForKeyedSubscript:@"ScreenOn"];
              v43 += [v48 intValue];
            }

            v49 = [v46 objectForKeyedSubscript:@"ScreenOff"];
            if (v49)
            {
              v50 = [v46 objectForKeyedSubscript:@"ScreenOff"];
              v42 += [v50 intValue];
            }
          }

          v41 = [v39 countByEnumeratingWithState:&v112 objects:v121 count:16];
        }

        while (v41);
      }

      else
      {
        v42 = 0;
        v43 = 0;
      }

      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v55 = v104;
      v56 = [v55 countByEnumeratingWithState:&v108 objects:v120 count:16];
      if (v56)
      {
        v57 = v56;
        v53 = 0;
        v58 = *v109;
        do
        {
          for (j = 0; j != v57; ++j)
          {
            if (*v109 != v58)
            {
              objc_enumerationMutation(v55);
            }

            v60 = *(*(&v108 + 1) + 8 * j);
            v61 = [v60 objectForKeyedSubscript:@"Level"];
            if (v61)
            {
              v62 = [v60 objectForKeyedSubscript:@"Level"];
              v53 = [v62 intValue] + v53;
            }
          }

          v57 = [v55 countByEnumeratingWithState:&v108 objects:v120 count:16];
        }

        while (v57);
      }

      else
      {
        v53 = 0;
      }

      v63 = v43 + v42;
      if (v43 + v42 < 86401)
      {
        v65 = v105;
      }

      else
      {
        v43 = (v43 * 86400.0 / v63);
        v42 = (v42 * 86400.0 / v63);
        v64 = PLLogCommon();
        v65 = v105;
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109376;
          *v123 = v43;
          *&v123[4] = 1024;
          *&v123[6] = v42;
          _os_log_debug_impl(&dword_25EE51000, v64, OS_LOG_TYPE_DEBUG, "Normalized On:%d Off:%d", buf, 0xEu);
        }
      }

      v66 = PLLogCommon();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109632;
        *v123 = v43;
        *&v123[4] = 1024;
        *&v123[6] = v42;
        *&v123[10] = 1024;
        *&v123[12] = v53;
        _os_log_debug_impl(&dword_25EE51000, v66, OS_LOG_TYPE_DEBUG, "On:%ds Off:%ds UI:%d%%", buf, 0x14u);
      }

      v27 = (v65 + 1);
      v54 = v43;
      v52 = v42;
    }

    else
    {
      v51 = PLLogCommon();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIService lastXDaysWithRange:v107 withDataRange:v51 withQueryType:? andBatteryBreakdown:?];
      }

      v52 = -1.0;
      v53 = 0xFFFFFFFFLL;
      v54 = -1.0;
    }

    ADClientSetValueForScalarKey();
    v67 = objc_opt_new();
    [v67 setObject:@"xDay" forKeyedSubscript:@"duration"];
    v68 = [MEMORY[0x277CCABB0] numberWithInt:v27];
    [v67 setObject:v68 forKeyedSubscript:@"numBuckets"];

    v99 = v67;
    AnalyticsSendEventLazy();
    v69 = PLLogCommon();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *v123 = v27;
      _os_log_impl(&dword_25EE51000, v69, OS_LOG_TYPE_INFO, "Total screen buckets with info: %d", buf, 8u);
    }

    v70 = [v96 objectForKeyedSubscript:@"PLBatteryUIQueryRangeWeekTapKey"];
    v71 = [v70 objectAtIndexedSubscript:9 - v103];
    v72 = [v71 objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];

    [(PLBatteryUIService *)self adjustScreenOnTimeSecsWithGraphValue:a5 queryType:v72 andBreakdownEntries:v54];
    v74 = v73;
    [(PLBatteryUIService *)self adjustScreenOffTimeSecsWithGraphValue:a5 withGraphScreenOnSecs:v72 queryType:v52 andBreakdownEntries:v74];
    v76 = v75;
    v77 = objc_opt_new();
    v118 = @"PLBatteryUIGraphTotal";
    v78 = [MEMORY[0x277CCABB0] numberWithInt:v74];
    v119 = v78;
    v79 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
    [v77 setObject:v79 forKeyedSubscript:@"PLBatteryUIScreenOnTimeKey"];

    v116 = @"PLBatteryUIGraphTotal";
    v80 = [MEMORY[0x277CCABB0] numberWithInt:v76];
    v117 = v80;
    v81 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
    [v77 setObject:v81 forKeyedSubscript:@"PLBatteryUIScreenOffTimeKey"];

    v82 = [MEMORY[0x277CCABB0] numberWithInt:v53];
    [v77 setObject:v82 forKeyedSubscript:@"PLBatteryUIEnergyKey"];

    [v95 addObject:v77];
    v25 = [v101 dateByAddingTimeInterval:-86400.0];

    ++v103;
  }

  while (v103 != 10);
  v89 = [v95 reverseObjectEnumerator];
  v90 = [v89 allObjects];

  v91 = *MEMORY[0x277D85DE8];

  return v90;
}

- (double)adjustScreenOnTimeSecsWithGraphValue:(double)a3 queryType:(int)a4 andBreakdownEntries:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = v8;
  v10 = 0.0;
  if (v8)
  {
    if ([v8 count])
    {
      v10 = a3;
      if (!a4)
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v11 = v9;
        v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v23;
          v10 = 0.0;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v23 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v22 + 1) + 8 * i);
              if ([(PLBatteryUIService *)self isAppEntryValidForAdjustment:v16 withQueryType:0, v22])
              {
                v17 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
                [v17 doubleValue];
                [(PLBatteryUIService *)self floorSeconds:?];
                v19 = v18;

                v10 = v10 + v19;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
          }

          while (v13);
        }

        else
        {
          v10 = 0.0;
        }
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v10;
}

- (double)adjustScreenOffTimeSecsWithGraphValue:(double)a3 withGraphScreenOnSecs:(double)a4 queryType:(int)a5 andBreakdownEntries:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a6;
  v11 = v10;
  v12 = 0.0;
  if (v10 && [v10 count])
  {
    if (a5)
    {
      v12 = a3;
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v29;
        v17 = 0.0;
        v18 = 0.0;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v29 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v20 = *(*(&v28 + 1) + 8 * i);
            if ([(PLBatteryUIService *)self isAppEntryValidForAdjustment:v20 withQueryType:0, v28])
            {
              v21 = [v20 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
              [v21 doubleValue];
              v23 = v22;

              [(PLBatteryUIService *)self floorSeconds:v23];
              v18 = v18 + v24;
              if (v23 > v17)
              {
                v17 = v23;
              }
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v15);
      }

      else
      {
        v17 = 0.0;
        v18 = 0.0;
      }

      if (v18 >= a3)
      {
        v25 = a3;
      }

      else
      {
        v25 = v18;
      }

      if (v25 >= v17 - a4)
      {
        v12 = v25;
      }

      else
      {
        v12 = v17 - a4;
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)isAppEntryValidForAdjustment:(id)a3 withQueryType:(int)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 != 3)
  {
    v7 = [v5 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
    [v7 floatValue];
    if ((v8 + 0.5) < 1)
    {
      v9 = [v6 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
      [v9 doubleValue];
      v11 = v10;
      v12 = [v6 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
      [v12 doubleValue];
      v14 = v11 + v13;

      if (v14 < 60.0)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v15 = [v6 objectForKeyedSubscript:@"PLBatteryUIAppTypeKey"];
  if ([v15 intValue] == 5)
  {
  }

  else
  {
    v16 = [v6 objectForKeyedSubscript:@"PLBatteryUIAppTypeKey"];
    v17 = [v16 intValue];

    if (v17 != 2)
    {
      v18 = 1;
      goto LABEL_10;
    }
  }

LABEL_8:
  v18 = 0;
LABEL_10:

  return v18;
}

- (void)removeExcessUpgradePlistFiles
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void __51__PLBatteryUIService_removeExcessUpgradePlistFiles__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 lastPathComponent];
  v4 = [v3 containsString:@"Upgrade"];

  if (v4)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

void __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getlastDayRangeWithNow:withNowSystem:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getlastDayRangeWithNow:withNowSystem:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25EE51000, v0, v1, "System hour bucket: %@ -> %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getDataRangeWithNow:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25EE51000, v0, v1, "First usage time entry at %@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getDataRangeWithNow:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getDataRangeWithNow:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25EE51000, v0, v1, "First RNE entry at %@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getDataRangeWithNow:.cold.4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)batteryBreakdownAndGraphWithPayload:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)batteryBreakdownAndGraphWithPayload:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)batteryBreakdownAndGraphWithPayload:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)batteryBreakdownAndGraphWithPayload:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)batteryBreakdownAndGraphWithPayload:.cold.5()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_25EE51000, v0, OS_LOG_TYPE_ERROR, "Failed to copy to folder %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)batteryBreakdownAndGraphWithPayload:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)batteryBreakdownWithPayload:withDayRange:withXDayRange:withDataRange:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)demoModePath
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getLastChargeData
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getLPMIntervalsSpanningRange:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getLPMIntervalsSpanningRange:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getLPMIntervalsSpanningRange:(os_log_t)log .cold.3(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_25EE51000, log, OS_LOG_TYPE_DEBUG, "LPM logged with no change?", buf, 2u);
}

- (void)getLPMIntervalsSpanningRange:.cold.4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getLPMIntervalsSpanningRange:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)batteryLevelsAndChargingIntervalsInRange:withDataRange:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)batteryLevelsAndChargingIntervalsInRange:(void *)a1 withDataRange:.cold.2(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)batteryLevelsAndChargingIntervalsInRange:(uint64_t)a1 withDataRange:(uint64_t)a2 .cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_7(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_9(&dword_25EE51000, v5, v6, "Found invalid battery entry at %@");
}

- (void)batteryLevelsAndChargingIntervalsInRange:(void *)a1 withDataRange:.cold.4(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [a1 objectAtIndexedSubscript:0];
  v9 = [a1 objectAtIndexedSubscript:1];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)batteryLevelsAndChargingIntervalsInRange:withDataRange:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)batteryLevelsAndChargingIntervalsInRange:(uint64_t)a1 withDataRange:(uint64_t)a2 .cold.6(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_7(a1 a2)];
  *v3 = 134217984;
  *v2 = v4;
  OUTLINED_FUNCTION_9(&dword_25EE51000, v5, v6, "Found %lu entries in range!");
}

- (void)screenTimeInRange:withBucketSize:withNumBuckets:withDataRange:withQueryType:andBatteryBreakdown:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)lastXDaysWithRange:(void *)a1 withDataRange:(void *)a2 withQueryType:andBatteryBreakdown:.cold.1(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 count];
  [a2 count];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)lastXDaysWithRange:withDataRange:withQueryType:andBatteryBreakdown:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)lastXDaysWithRange:(os_log_t)log withDataRange:withQueryType:andBatteryBreakdown:.cold.3(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_25EE51000, log, OS_LOG_TYPE_DEBUG, "Not enough info in range!", buf, 2u);
}

@end