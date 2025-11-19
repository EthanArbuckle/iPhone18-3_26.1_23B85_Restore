@interface PLTestService
+ (void)load;
- (PLTestService)init;
- (id)presubmissionTest_testEPLMode:(id)a3 withParam:(id)a4;
- (void)initOperatorDependancies;
@end

@implementation PLTestService

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLTestService;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLTestService)init
{
  v18 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    v3 = 0;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = PLTestService;
    v4 = [(PLOperator *)&v15 init];
    if (v4 && [MEMORY[0x277D3F180] debugEnabled])
    {
      v5 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __21__PLTestService_init__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v5;
      if (qword_2811F7DE8 != -1)
      {
        dispatch_once(&qword_2811F7DE8, block);
      }

      if (_MergedGlobals_105 == 1)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLTestService initialized"];
        v7 = MEMORY[0x277D3F178];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLTestService.m"];
        v9 = [v8 lastPathComponent];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLTestService init]"];
        [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:32];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v17 = v6;
          _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    self = v4;
    v3 = self;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t __21__PLTestService_init__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_105 = result;
  return result;
}

- (void)initOperatorDependancies
{
  v3 = objc_alloc(MEMORY[0x277D3F278]);
  v4 = dispatch_get_global_queue(-32768, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__PLTestService_initOperatorDependancies__block_invoke;
  v6[3] = &unk_278259810;
  v6[4] = self;
  v5 = [v3 initWithWorkQueue:v4 withRegistration:&unk_282C18B70 withBlock:v6];
  [(PLTestService *)self setPresubmissionTestResponder:v5];
}

id __41__PLTestService_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v50 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v10 || ([v10 objectForKeyedSubscript:@"testName"], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
  {
    v29 = 0;
    goto LABEL_27;
  }

  v13 = [v11 objectForKeyedSubscript:@"testName"];
  v14 = objc_opt_new();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v15 = *(a1 + 32);
    v16 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__PLTestService_initOperatorDependancies__block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v16;
    if (qword_2811F7DF0 != -1)
    {
      dispatch_once(&qword_2811F7DF0, block);
    }

    if (byte_2811F7DE1 == 1)
    {
      v44 = v14;
      v17 = MEMORY[0x277CCACA8];
      v18 = [v11 objectForKeyedSubscript:@"testParam"];
      v19 = [v17 stringWithFormat:@"presubmissionTestResponder testName=%@ testParam=%@", v13, v18];

      v20 = MEMORY[0x277D3F178];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLTestService.m"];
      v22 = [v21 lastPathComponent];
      v23 = v19;
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLTestService initOperatorDependancies]_block_invoke"];
      [v20 logMessage:v23 fromFile:v22 fromFunction:v24 fromLineNumber:43];

      v25 = PLLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v49 = v23;
        _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v14 = v44;
    }
  }

  if ([v13 isEqualToString:@"DebugServiceForATP"])
  {
    v26 = [v11 objectForKeyedSubscript:@"testParam"];
    if (v26)
    {
      v27 = [v11 objectForKeyedSubscript:@"testParam"];
      v28 = [v27 isEqualToString:@"ENABLE"];
    }

    else
    {
      v28 = 0;
    }

    v32 = MEMORY[0x277D3F180];
    v33 = [MEMORY[0x277CCABB0] numberWithBool:v28];
    [v32 setObject:v33 forKey:@"PLDebugService_Enabled" saveToDisk:1];

    [MEMORY[0x277D3F258] exitWithReason:8];
    goto LABEL_18;
  }

  if (![v13 isEqualToString:@"testEPLMode"])
  {
LABEL_18:
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v34 = *(a1 + 32);
      v35 = objc_opt_class();
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __41__PLTestService_initOperatorDependancies__block_invoke_56;
      v46[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v46[4] = v35;
      if (qword_2811F7DF8 != -1)
      {
        dispatch_once(&qword_2811F7DF8, v46);
      }

      if (byte_2811F7DE2 == 1)
      {
        v45 = v14;
        v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"payload=%@\nresult=%@", v11, v14];
        v37 = MEMORY[0x277D3F178];
        v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLTestService.m"];
        v39 = [v38 lastPathComponent];
        v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLTestService initOperatorDependancies]_block_invoke_2"];
        [v37 logMessage:v36 fromFile:v39 fromFunction:v40 fromLineNumber:55];

        v41 = PLLogCommon();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v49 = v36;
          _os_log_debug_impl(&dword_21A4C6000, v41, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v14 = v45;
      }
    }

    v29 = v14;
    goto LABEL_26;
  }

  v30 = *(a1 + 32);
  v31 = [v11 objectForKeyedSubscript:@"testParam"];
  v29 = [v30 presubmissionTest_testEPLMode:v14 withParam:v31];

LABEL_26:
LABEL_27:

  v42 = *MEMORY[0x277D85DE8];

  return v29;
}

uint64_t __41__PLTestService_initOperatorDependancies__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7DE1 = result;
  return result;
}

uint64_t __41__PLTestService_initOperatorDependancies__block_invoke_56(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7DE2 = result;
  return result;
}

- (id)presubmissionTest_testEPLMode:(id)a3 withParam:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__PLTestService_presubmissionTest_testEPLMode_withParam___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v7;
    if (qword_2811F7E00 != -1)
    {
      dispatch_once(&qword_2811F7E00, block);
    }

    if (byte_2811F7DE3 == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"presubmissionTest_testEPLMode with param=%@", v6];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLTestService.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLTestService presubmissionTest_testEPLMode:withParam:]"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:62];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v31 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v14 = [MEMORY[0x277D3F180] eplEnabled];
  if (v6)
  {
    v15 = v14;
    if ([v6 isEqualToString:@"ENABLE"])
    {
      v16 = @"FAIL";
      v17 = @"PASS";
    }

    else
    {
      if (![v6 isEqualToString:@"DISABLE"])
      {
        goto LABEL_17;
      }

      v16 = @"PASS";
      v17 = @"FAIL";
    }

    if (v15)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    [v5 setObject:v18 forKeyedSubscript:v6];
  }

LABEL_17:
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v19 = objc_opt_class();
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __57__PLTestService_presubmissionTest_testEPLMode_withParam___block_invoke_76;
    v28[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v28[4] = v19;
    if (qword_2811F7E08 != -1)
    {
      dispatch_once(&qword_2811F7E08, v28);
    }

    if (byte_2811F7DE4 == 1)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"presubmissionTest_testEPLMode with result=%@", v5];
      v21 = MEMORY[0x277D3F178];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLTestService.m"];
      v23 = [v22 lastPathComponent];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLTestService presubmissionTest_testEPLMode:withParam:]"];
      [v21 logMessage:v20 fromFile:v23 fromFunction:v24 fromLineNumber:74];

      v25 = PLLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v31 = v20;
        _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t __57__PLTestService_presubmissionTest_testEPLMode_withParam___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7DE3 = result;
  return result;
}

uint64_t __57__PLTestService_presubmissionTest_testEPLMode_withParam___block_invoke_76(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7DE4 = result;
  return result;
}

@end