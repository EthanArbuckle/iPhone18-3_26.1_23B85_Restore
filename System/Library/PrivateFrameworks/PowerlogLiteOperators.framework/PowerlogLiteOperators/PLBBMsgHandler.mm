@interface PLBBMsgHandler
+ (id)getMsgHandler;
- (PLBBMsgHandler)init;
- (id)decodeMsgHeader;
- (void)handleMsg:(id)a3 forAgent:(id)a4;
- (void)registerWithHandlerAs:(id)a3 forType:(unint64_t)a4;
@end

@implementation PLBBMsgHandler

- (PLBBMsgHandler)init
{
  v19 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __22__PLBBMsgHandler_init__block_invoke;
    v15 = &__block_descriptor_40_e5_v8__0lu32l8;
    v16 = v3;
    if (qword_2811F7D70 != -1)
    {
      dispatch_once(&qword_2811F7D70, &block);
    }

    if (_MergedGlobals_103 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMsgHandler init]", block, v13, v14, v15, v16];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMsgHandler.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMsgHandler init]"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:53];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v18 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t __22__PLBBMsgHandler_init__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_103 = result;
  return result;
}

+ (id)getMsgHandler
{
  v23 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __31__PLBBMsgHandler_getMsgHandler__block_invoke;
    v19 = &__block_descriptor_40_e5_v8__0lu32l8;
    v20 = v2;
    if (qword_2811F7D78 != -1)
    {
      dispatch_once(&qword_2811F7D78, &block);
    }

    if (byte_2811F7D59 == 1)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "+[PLBBMsgHandler getMsgHandler]", block, v17, v18, v19, v20];
      v4 = MEMORY[0x277D3F178];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMsgHandler.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLBBMsgHandler getMsgHandler]"];
      [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:59];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = v3;
        _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v9 = qword_2811F7D60;
  if (!qword_2811F7D60)
  {
    v10 = objc_alloc_init(PLBBMsgHandler);
    v11 = qword_2811F7D60;
    qword_2811F7D60 = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v13 = qword_2811F7D68;
    qword_2811F7D68 = v12;

    v9 = qword_2811F7D60;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __31__PLBBMsgHandler_getMsgHandler__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7D59 = result;
  return result;
}

- (void)registerWithHandlerAs:(id)a3 forType:(unint64_t)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D3F180];
  v6 = a3;
  if ([v5 debugEnabled])
  {
    v7 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __48__PLBBMsgHandler_registerWithHandlerAs_forType___block_invoke;
    v20 = &__block_descriptor_40_e5_v8__0lu32l8;
    v21 = v7;
    if (qword_2811F7D80 != -1)
    {
      dispatch_once(&qword_2811F7D80, &block);
    }

    if (byte_2811F7D5A == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMsgHandler registerWithHandlerAs:forType:]", block, v18, v19, v20, v21];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMsgHandler.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMsgHandler registerWithHandlerAs:forType:]"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:86];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v23 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v14 = qword_2811F7D68;
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  [v14 setObject:v6 forKey:v15];

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __48__PLBBMsgHandler_registerWithHandlerAs_forType___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7D5A = result;
  return result;
}

- (void)handleMsg:(id)a3 forAgent:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __37__PLBBMsgHandler_handleMsg_forAgent___block_invoke;
    v19 = &__block_descriptor_40_e5_v8__0lu32l8;
    v20 = v5;
    if (qword_2811F7D88 != -1)
    {
      dispatch_once(&qword_2811F7D88, &block);
    }

    if (byte_2811F7D5B == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMsgHandler handleMsg:forAgent:]", block, v17, v18, v19, v20];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMsgHandler.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMsgHandler handleMsg:forAgent:]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:95];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = [(PLBBMsgHandler *)self decodeMsgHeader];
  v13 = [v12 unsignedCharValue];

  switch(v13)
  {
    case 1:
      v14 = &unk_282C11A30;
      goto LABEL_14;
    case 2:
      v14 = &unk_282C11A00;
      goto LABEL_14;
    case 4:
      v14 = &unk_282C11A18;
LABEL_14:
      [qword_2811F7D68 objectForKey:v14];

      break;
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __37__PLBBMsgHandler_handleMsg_forAgent___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7D5B = result;
  return result;
}

- (id)decodeMsgHeader
{
  v18 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __33__PLBBMsgHandler_decodeMsgHeader__block_invoke;
    v14 = &__block_descriptor_40_e5_v8__0lu32l8;
    v15 = v2;
    if (qword_2811F7D90 != -1)
    {
      dispatch_once(&qword_2811F7D90, &block);
    }

    if (byte_2811F7D5C == 1)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMsgHandler decodeMsgHeader]", block, v12, v13, v14, v15];
      v4 = MEMORY[0x277D3F178];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMsgHandler.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMsgHandler decodeMsgHeader]"];
      [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:130];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v17 = v3;
        _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return &unk_282C11A48;
}

uint64_t __33__PLBBMsgHandler_decodeMsgHeader__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7D5C = result;
  return result;
}

@end