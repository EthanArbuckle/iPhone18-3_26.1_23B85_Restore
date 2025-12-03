@interface PLBBMsgRoot
- (PLBBMsgRoot)init;
- (void)appendToMsgProcError:(id)error;
- (void)sendAndLogPLEntry:(id)entry andOverride:(id)override;
@end

@implementation PLBBMsgRoot

- (PLBBMsgRoot)init
{
  v21 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __19__PLBBMsgRoot_init__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F80D8 != -1)
    {
      dispatch_once(&qword_2811F80D8, block);
    }

    if (_MergedGlobals_116 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMsgRoot init]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMsgRoot.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMsgRoot init]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:17];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v17.receiver = self;
  v17.super_class = PLBBMsgRoot;
  v10 = [(PLBBMsgRoot *)&v17 init];
  if (v10)
  {
    v11 = objc_opt_new();
    msgEntry = v10->_msgEntry;
    v10->_msgEntry = v11;

    v13 = objc_opt_new();
    msgKVPairs = v10->_msgKVPairs;
    v10->_msgKVPairs = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __19__PLBBMsgRoot_init__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_116 = result;
  return result;
}

- (void)sendAndLogPLEntry:(id)entry andOverride:(id)override
{
  v40 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__PLBBMsgRoot_sendAndLogPLEntry_andOverride___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v7;
    if (qword_2811F80E0 != -1)
    {
      dispatch_once(&qword_2811F80E0, block);
    }

    if (byte_2811F80D1 == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMsgRoot sendAndLogPLEntry:andOverride:]"];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMsgRoot.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMsgRoot sendAndLogPLEntry:andOverride:]"];
      [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:34];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v39 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v14 = objc_opt_class();
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __45__PLBBMsgRoot_sendAndLogPLEntry_andOverride___block_invoke_18;
    v36[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v36[4] = v14;
    if (qword_2811F80E8 != -1)
    {
      dispatch_once(&qword_2811F80E8, v36);
    }

    if (byte_2811F80D2 == 1)
    {
      v15 = MEMORY[0x277CCACA8];
      entryKey = [entryCopy entryKey];
      v17 = [v15 stringWithFormat:@"Sending PLEntry: key=%@", entryKey];

      v18 = MEMORY[0x277D3F178];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMsgRoot.m"];
      lastPathComponent2 = [v19 lastPathComponent];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMsgRoot sendAndLogPLEntry:andOverride:]"];
      [v18 logMessage:v17 fromFile:lastPathComponent2 fromFunction:v21 fromLineNumber:35];

      v22 = PLLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v39 = v17;
        _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  agent = [(PLBBMsgRoot *)self agent];

  if (!agent && [MEMORY[0x277D3F180] debugEnabled])
  {
    v24 = objc_opt_class();
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __45__PLBBMsgRoot_sendAndLogPLEntry_andOverride___block_invoke_24;
    v35[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v35[4] = v24;
    if (qword_2811F80F0 != -1)
    {
      dispatch_once(&qword_2811F80F0, v35);
    }

    if (byte_2811F80D3 == 1)
    {
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bad agent"];
      v26 = MEMORY[0x277D3F178];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMsgRoot.m"];
      lastPathComponent3 = [v27 lastPathComponent];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMsgRoot sendAndLogPLEntry:andOverride:]"];
      [v26 logMessage:v25 fromFile:lastPathComponent3 fromFunction:v29 fromLineNumber:38];

      v30 = PLLogCommon();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v39 = v25;
        _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (!override)
  {
    v31 = [0 objectForKey:@"Date"];
    if (!v31)
    {
      convertFromBasebandToMonotonic = [0 convertFromBasebandToMonotonic];
      [entryCopy setEntryDate:convertFromBasebandToMonotonic];
    }
  }

  agent2 = [(PLBBMsgRoot *)self agent];
  [agent2 logEntry:entryCopy];

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t __45__PLBBMsgRoot_sendAndLogPLEntry_andOverride___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F80D1 = result;
  return result;
}

uint64_t __45__PLBBMsgRoot_sendAndLogPLEntry_andOverride___block_invoke_18(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F80D2 = result;
  return result;
}

uint64_t __45__PLBBMsgRoot_sendAndLogPLEntry_andOverride___block_invoke_24(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F80D3 = result;
  return result;
}

- (void)appendToMsgProcError:(id)error
{
  v22 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __36__PLBBMsgRoot_appendToMsgProcError___block_invoke;
    v18 = &__block_descriptor_40_e5_v8__0lu32l8;
    v19 = v5;
    if (qword_2811F80F8 != -1)
    {
      dispatch_once(&qword_2811F80F8, &block);
    }

    if (byte_2811F80D4 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMsgRoot appendToMsgProcError:]", block, v16, v17, v18, v19];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMsgRoot.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMsgRoot appendToMsgProcError:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:52];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (errorCopy)
  {
    msgProcErr = [(PLBBMsgRoot *)self msgProcErr];
    v13 = [msgProcErr mutableCopy];

    [v13 appendString:errorCopy];
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __36__PLBBMsgRoot_appendToMsgProcError___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F80D4 = result;
  return result;
}

@end