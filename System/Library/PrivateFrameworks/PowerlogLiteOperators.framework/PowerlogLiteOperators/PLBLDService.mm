@interface PLBLDService
+ (id)entryEventPointBLD;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (PLBLDService)init;
- (id)batteryBreakdownWithPayload:(id)payload;
- (id)bldEntryWithBatteryBreakdown:(id)breakdown;
- (void)initOperatorDependancies;
@end

@implementation PLBLDService

+ (void)load
{
  v2.receiver = self;
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
  v19 = &unk_282C1BCF8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v21[0] = v2;
  v20[1] = *MEMORY[0x277D3F540];
  v16[0] = @"BUIOutput";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v17[0] = commonTypeDict_StringFormat;
  v16[1] = @"JSON";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]2 commonTypeDict_BoolFormat];
  v17[1] = commonTypeDict_BoolFormat;
  v16[2] = @"LastUpDateTime";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]3 commonTypeDict_DateFormat];
  v17[2] = commonTypeDict_DateFormat;
  v16[3] = @"BLDRetail";
  v14 = *MEMORY[0x277D3F5A8];
  v15 = &unk_282C100E0;
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
  if ([MEMORY[0x277D3F208] isHomePod] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd"))
  {
    selfCopy = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PLBLDService;
    self = [(PLOperator *)&v5 init];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)initOperatorDependancies
{
  v3 = objc_alloc(MEMORY[0x277D3F278]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__PLBLDService_initOperatorDependancies__block_invoke;
  v6[3] = &unk_278259810;
  v6[4] = self;
  v4 = [v3 initWithOperator:self withRegistration:&unk_282C16FF0 withBlock:v6];
  [(PLBLDService *)self setBatteryBreakdownResponder:v4];

  if ([(PLOperator *)self isDebugEnabled])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, NotificationCallback, @"com.apple.powerlogd.BLD.batteryBreakdown", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

id __40__PLBLDService_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = [*(a1 + 32) batteryBreakdownWithPayload:v6];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__PLBLDService_initOperatorDependancies__block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v9;
    if (qword_2811F3F38 != -1)
    {
      dispatch_once(&qword_2811F3F38, block);
    }

    if (_MergedGlobals_1_7 == 1)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/%d: result=%@, payload=%@", "-[PLBLDService initOperatorDependancies]_block_invoke", 100, v7, v6];
      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLDService.m"];
      v13 = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLDService initOperatorDependancies]_block_invoke"];
      [v11 logMessage:v10 fromFile:v13 fromFunction:v14 fromLineNumber:100];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v23 = v10;
        _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v20 = @"result";
  v21 = v7;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

uint64_t __40__PLBLDService_initOperatorDependancies__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_7 = result;
  return result;
}

- (id)batteryBreakdownWithPayload:(id)payload
{
  v111 = *MEMORY[0x277D85DE8];
  v4 = [payload objectForKeyedSubscript:@"PLBatteryUIQueryTypeKey"];
  intValue = [v4 intValue];

  v6 = &unk_21AA21000;
  selfCopy = self;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    v108[0] = MEMORY[0x277D85DD0];
    v108[1] = 3221225472;
    v108[2] = __44__PLBLDService_batteryBreakdownWithPayload___block_invoke;
    v108[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v108[4] = v7;
    if (qword_2811F3F40 != -1)
    {
      dispatch_once(&qword_2811F3F40, v108);
    }

    if (byte_2811F3F31 == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"queryType=%i", intValue];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLDService.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLDService batteryBreakdownWithPayload:]"];
      [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:118];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v110 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      self = selfCopy;
    }
  }

  if (intValue == 1)
  {
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    v102 = objc_opt_new();
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v16 = [monotonicDate dateByAddingTimeInterval:-86400.0];
    v17 = monotonicDate;
    [v16 timeIntervalSince1970];
    v19 = v18;
    [v17 timeIntervalSince1970];
    v21 = v20;

    v99 = [(PLBatteryBreakdownService *)self batteryBreakdownWithTimeRange:1 withDataRange:v19 withEntryTimeInterval:v21 - v19 withQueryType:0.0, 0.0, 3600.0];
    [dictionary setObject:v99 forKeyedSubscript:@"PLBatteryUIQueryRangeDayKey"];
    v22 = [(PLBLDService *)self bldEntryWithBatteryBreakdown:dictionary];
    v98 = v22;
    if ([MEMORY[0x277D3F258] isPowerlogHelperd])
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v23 = objc_opt_class();
        v107[0] = MEMORY[0x277D85DD0];
        v107[1] = 3221225472;
        v107[2] = __44__PLBLDService_batteryBreakdownWithPayload___block_invoke_67;
        v107[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v107[4] = v23;
        if (qword_2811F3F48 != -1)
        {
          dispatch_once(&qword_2811F3F48, v107);
        }

        if (byte_2811F3F32 == 1)
        {
          v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/%d: past day results generated", "-[PLBLDService batteryBreakdownWithPayload:]", 139];
          v25 = MEMORY[0x277D3F178];
          v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLDService.m"];
          lastPathComponent2 = [v26 lastPathComponent];
          v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLDService batteryBreakdownWithPayload:]"];
          [v25 logMessage:v24 fromFile:lastPathComponent2 fromFunction:v28 fromLineNumber:139];

          v29 = PLLogCommon();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v110 = v24;
            _os_log_debug_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          self = selfCopy;
          v22 = v98;
          v6 = &unk_21AA21000;
        }
      }

      serialized = [v22 serialized];
      [v102 addObject:serialized];
    }

    else
    {
      [(PLOperator *)self logEntry:v22];
    }

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];

    v32 = [v17 dateByAddingTimeInterval:-604800.0];
    v33 = v17;
    [v32 timeIntervalSince1970];
    v35 = v34;
    [v33 timeIntervalSince1970];
    v37 = v36;

    v38 = [(PLBatteryBreakdownService *)self batteryBreakdownWithTimeRange:1 withDataRange:v35 withEntryTimeInterval:v37 - v35 withQueryType:0.0, 0.0, 3600.0];
    [dictionary2 setObject:v38 forKeyedSubscript:@"PLBatteryUIQueryRangeWeekKey"];

    v39 = [(PLBLDService *)self bldEntryWithBatteryBreakdown:dictionary2];
    v96 = v39;
    if ([MEMORY[0x277D3F258] isPowerlogHelperd])
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v40 = objc_opt_class();
        v106[0] = MEMORY[0x277D85DD0];
        v106[1] = v6[311];
        v106[2] = __44__PLBLDService_batteryBreakdownWithPayload___block_invoke_76;
        v106[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v106[4] = v40;
        if (qword_2811F3F50 != -1)
        {
          dispatch_once(&qword_2811F3F50, v106);
        }

        if (byte_2811F3F33 == 1)
        {
          v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/%d: past week results generated", "-[PLBLDService batteryBreakdownWithPayload:]", 155];
          v42 = MEMORY[0x277D3F178];
          v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLDService.m"];
          lastPathComponent3 = [v43 lastPathComponent];
          v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLDService batteryBreakdownWithPayload:]"];
          [v42 logMessage:v41 fromFile:lastPathComponent3 fromFunction:v45 fromLineNumber:155];

          v46 = PLLogCommon();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v110 = v41;
            _os_log_debug_impl(&dword_21A4C6000, v46, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          self = selfCopy;
          v6 = &unk_21AA21000;
        }
      }

      serialized2 = [v39 serialized];
      [v102 addObject:serialized2];
    }

    else
    {
      [(PLOperator *)self logEntry:v39];
    }

    v97 = v33;
    convertFromMonotonicToSystem = [v33 convertFromMonotonicToSystem];
    v49 = 6;
    v50 = v6[311];
    do
    {
      v51 = MEMORY[0x277CBEAA8];
      v52 = [convertFromMonotonicToSystem dateByAddingTimeInterval:-600.0];
      v53 = [v51 nearestMidnightBeforeDate:v52];

      v54 = @"PLBatteryUIQueryRangeTodayKey";
      if (v49 != 6)
      {
        v55 = MEMORY[0x277CCACA8];
        v56 = [MEMORY[0x277CCABB0] numberWithInt:v49];
        v54 = [v55 stringWithFormat:@"PLBatteryUIQueryRangeDay_%@_Key", v56];
      }

      dictionary3 = [MEMORY[0x277CBEB38] dictionary];

      convertFromSystemToMonotonic = [v53 convertFromSystemToMonotonic];
      convertFromSystemToMonotonic2 = [convertFromMonotonicToSystem convertFromSystemToMonotonic];
      [convertFromSystemToMonotonic timeIntervalSince1970];
      v61 = v60;
      [convertFromSystemToMonotonic2 timeIntervalSince1970];
      v63 = v62 - v61;

      v64 = [(PLBatteryBreakdownService *)self batteryBreakdownWithTimeRange:1 withDataRange:v61 withEntryTimeInterval:v63 withQueryType:0.0, 0.0, 3600.0];
      [dictionary3 setObject:v64 forKeyedSubscript:v54];

      v65 = [(PLBLDService *)self bldEntryWithBatteryBreakdown:dictionary3];
      if ([MEMORY[0x277D3F258] isPowerlogHelperd])
      {
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v66 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = v50;
          block[2] = __44__PLBLDService_batteryBreakdownWithPayload___block_invoke_89;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v66;
          if (qword_2811F3F58 != -1)
          {
            dispatch_once(&qword_2811F3F58, block);
          }

          if (byte_2811F3F34 == 1)
          {
            v101 = v53;
            v67 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/%d: past N days results generated", "-[PLBLDService batteryBreakdownWithPayload:]", 176];
            v68 = MEMORY[0x277D3F178];
            v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLDService.m"];
            lastPathComponent4 = [v69 lastPathComponent];
            v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLDService batteryBreakdownWithPayload:]"];
            [v68 logMessage:v67 fromFile:lastPathComponent4 fromFunction:v71 fromLineNumber:176];

            v72 = PLLogCommon();
            if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v110 = v67;
              _os_log_debug_impl(&dword_21A4C6000, v72, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            self = selfCopy;
            v53 = v101;
          }
        }

        serialized3 = [v65 serialized];
        [v102 addObject:serialized3];
      }

      else
      {
        [(PLOperator *)self logEntry:v65];
      }

      v49 = (v49 - 1);
      dictionary2 = dictionary3;
      convertFromMonotonicToSystem = v53;
    }

    while (v49 != -1);
    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    v75 = v99;
    v76 = [v99 objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
    v77 = [(PLBatteryBreakdownService *)self suggestionsWithEnergyEntries:v76];
    [dictionary4 setObject:v77 forKeyedSubscript:@"PLBatteryUISuggestionArrayKey"];

    v78 = [(PLBLDService *)self bldEntryWithBatteryBreakdown:dictionary4];
    if ([MEMORY[0x277D3F258] isPowerlogHelperd])
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v79 = objc_opt_class();
        v104[0] = MEMORY[0x277D85DD0];
        v104[1] = v50;
        v104[2] = __44__PLBLDService_batteryBreakdownWithPayload___block_invoke_101;
        v104[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v104[4] = v79;
        if (qword_2811F3F60 != -1)
        {
          dispatch_once(&qword_2811F3F60, v104);
        }

        if (byte_2811F3F35 == 1)
        {
          v80 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/%d: suggestion array generated", "-[PLBLDService batteryBreakdownWithPayload:]", 198];
          v81 = MEMORY[0x277D3F178];
          v82 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLDService.m"];
          lastPathComponent5 = [v82 lastPathComponent];
          v84 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLDService batteryBreakdownWithPayload:]"];
          [v81 logMessage:v80 fromFile:lastPathComponent5 fromFunction:v84 fromLineNumber:198];

          v85 = PLLogCommon();
          if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v110 = v80;
            _os_log_debug_impl(&dword_21A4C6000, v85, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          self = selfCopy;
        }
      }

      serialized4 = [v78 serialized];
      [v102 addObject:serialized4];
    }

    else
    {
      [(PLOperator *)self logEntry:v78];
    }

    [(PLBatteryBreakdownService *)self clearState];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v87 = objc_opt_class();
      v103[0] = MEMORY[0x277D85DD0];
      v103[1] = v50;
      v103[2] = __44__PLBLDService_batteryBreakdownWithPayload___block_invoke_107;
      v103[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v103[4] = v87;
      if (qword_2811F3F68 != -1)
      {
        dispatch_once(&qword_2811F3F68, v103);
      }

      if (byte_2811F3F36 == 1)
      {
        v102 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/%d: allEntries=%@", "-[PLBLDService batteryBreakdownWithPayload:]", 209, v102];
        v89 = MEMORY[0x277D3F178];
        v90 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLDService.m"];
        lastPathComponent6 = [v90 lastPathComponent];
        v92 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLDService batteryBreakdownWithPayload:]"];
        [v89 logMessage:v102 fromFile:lastPathComponent6 fromFunction:v92 fromLineNumber:209];

        v93 = PLLogCommon();
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v110 = v102;
          _os_log_debug_impl(&dword_21A4C6000, v93, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v75 = v99;
      }
    }
  }

  else
  {
    v102 = 0;
  }

  v94 = *MEMORY[0x277D85DE8];

  return v102;
}

uint64_t __44__PLBLDService_batteryBreakdownWithPayload___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3F31 = result;
  return result;
}

uint64_t __44__PLBLDService_batteryBreakdownWithPayload___block_invoke_67(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3F32 = result;
  return result;
}

uint64_t __44__PLBLDService_batteryBreakdownWithPayload___block_invoke_76(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3F33 = result;
  return result;
}

uint64_t __44__PLBLDService_batteryBreakdownWithPayload___block_invoke_89(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3F34 = result;
  return result;
}

uint64_t __44__PLBLDService_batteryBreakdownWithPayload___block_invoke_101(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3F35 = result;
  return result;
}

uint64_t __44__PLBLDService_batteryBreakdownWithPayload___block_invoke_107(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3F36 = result;
  return result;
}

- (id)bldEntryWithBatteryBreakdown:(id)breakdown
{
  breakdownCopy = breakdown;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__PLBLDService_bldEntryWithBatteryBreakdown___block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  if (qword_2811F3F70 != -1)
  {
    dispatch_once(&qword_2811F3F70, block);
  }

  v5 = objc_alloc(MEMORY[0x277D3F190]);
  v6 = [v5 initWithEntryKey:qword_2811F3F78];
  [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"BLDRetail"];
  entryDate = [v6 entryDate];
  [v6 setObject:entryDate forKeyedSubscript:@"LastUpDateTime"];

  v8 = [MEMORY[0x277D3F258] JSONSanitizeDictionary:breakdownCopy];
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
  qword_2811F3F78 = [objc_opt_class() entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"BLD"];

  return MEMORY[0x2821F96F8]();
}

@end