@interface PLICEBBMetricUtility
+ (BOOL)isInvalidMetricIdTag:(id)tag forClass:(Class)class;
+ (id)convertToStringData:(id)data;
@end

@implementation PLICEBBMetricUtility

+ (BOOL)isInvalidMetricIdTag:(id)tag forClass:(Class)class
{
  v34 = *MEMORY[0x277D85DE8];
  tagCopy = tag;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__PLICEBBMetricUtility_isInvalidMetricIdTag_forClass___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_2811F7F18 != -1)
  {
    dispatch_once(&qword_2811F7F18, block);
  }

  v7 = [qword_2811F7F10 objectForKey:tagCopy];
  if (v7)
  {
    v8 = v7;
    v9 = NSStringFromClass(class);
    v10 = [qword_2811F7F10 objectForKey:tagCopy];
    v11 = [v9 compare:v10];

    if (!v11)
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_21;
      }

      v22 = objc_opt_class();
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __54__PLICEBBMetricUtility_isInvalidMetricIdTag_forClass___block_invoke_130;
      v30[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v30[4] = v22;
      if (qword_2811F7F28 != -1)
      {
        dispatch_once(&qword_2811F7F28, v30);
      }

      if (byte_2811F7F09 != 1)
      {
LABEL_21:
        v21 = 1;
        goto LABEL_22;
      }

      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"*** invalid metricId tag ***"];
      v23 = MEMORY[0x277D3F178];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KICE/PLICEBBMetricUtility.m"];
      lastPathComponent = [v24 lastPathComponent];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLICEBBMetricUtility isInvalidMetricIdTag:forClass:]"];
      [v23 logMessage:v15 fromFile:lastPathComponent fromFunction:v26 fromLineNumber:74];

      v20 = PLLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v33 = v15;
        _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v21 = 1;
      goto LABEL_20;
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v12 = objc_opt_class();
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __54__PLICEBBMetricUtility_isInvalidMetricIdTag_forClass___block_invoke_136;
    v29[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v29[4] = v12;
    if (qword_2811F7F30 != -1)
    {
      dispatch_once(&qword_2811F7F30, v29);
    }

    if (byte_2811F7F0A == 1)
    {
      v13 = MEMORY[0x277CCACA8];
      v14 = NSStringFromClass(class);
      v15 = [v13 stringWithFormat:@"supported metricId tag: %@ for class: %@", tagCopy, v14];

      v16 = MEMORY[0x277D3F178];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KICE/PLICEBBMetricUtility.m"];
      lastPathComponent2 = [v17 lastPathComponent];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLICEBBMetricUtility isInvalidMetricIdTag:forClass:]"];
      [v16 logMessage:v15 fromFile:lastPathComponent2 fromFunction:v19 fromLineNumber:78];

      v20 = PLLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v33 = v15;
        _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v21 = 0;
LABEL_20:

      goto LABEL_22;
    }
  }

  v21 = 0;
LABEL_22:

  v27 = *MEMORY[0x277D85DE8];
  return v21;
}

void __54__PLICEBBMetricUtility_isInvalidMetricIdTag_forClass___block_invoke(uint64_t a1)
{
  v21[39] = *MEMORY[0x277D85DE8];
  v20[0] = &unk_282C12630;
  v20[1] = &unk_282C12648;
  v21[0] = @"KCellularPerClientProfileTriggerCount";
  v21[1] = @"KCellularProtocolStackHist";
  v20[2] = &unk_282C12660;
  v20[3] = &unk_282C12678;
  v21[2] = @"KCellularPeripheralStats";
  v21[3] = @"KCellularProtocolStackHist";
  v20[4] = &unk_282C12690;
  v20[5] = &unk_282C126A8;
  v21[4] = @"KCellularProtocolStackHist";
  v21[5] = @"KCellularProtocolStackHist";
  v20[6] = &unk_282C126C0;
  v20[7] = &unk_282C126D8;
  v21[6] = @"KCellularProtocolStackHist";
  v21[7] = @"KCellularLteFwDuplexMode";
  v20[8] = &unk_282C126F0;
  v20[9] = &unk_282C12708;
  v21[8] = @"KCellularRrcModeHist";
  v21[9] = @"KCellularRrcModeHist";
  v20[10] = &unk_282C12720;
  v20[11] = &unk_282C12738;
  v21[10] = @"KCellularRrcModeHist";
  v21[11] = @"KCellularProtocolStackHist";
  v20[12] = &unk_282C12750;
  v20[13] = &unk_282C12768;
  v21[12] = @"KCellularProtocolStackHist";
  v21[13] = @"KCellularProtocolStackHist";
  v20[14] = &unk_282C12780;
  v20[15] = &unk_282C12798;
  v21[14] = @"KCellularProtocolStackHist";
  v21[15] = @"KCellularLteComponentCarrierInfo";
  v20[16] = &unk_282C127B0;
  v20[17] = &unk_282C127C8;
  v21[16] = @"KCellularProtocolStackHist";
  v21[17] = @"KCellularProtocolStackHist";
  v20[18] = &unk_282C127E0;
  v20[19] = &unk_282C127F8;
  v21[18] = @"KCellularProtocolStackHist";
  v21[19] = @"KCellularProtocolStackHist";
  v20[20] = &unk_282C12810;
  v20[21] = &unk_282C12828;
  v21[20] = @"KCellularLteCdrxConfig";
  v21[21] = @"kCellularLteRadioLinkFailure";
  v20[22] = &unk_282C12840;
  v20[23] = &unk_282C12858;
  v21[22] = @"KCellularProtocolStackHist";
  v21[23] = @"KCellularCellPlmnSearchCount";
  v20[24] = &unk_282C12870;
  v20[25] = &unk_282C12888;
  v21[24] = @"KCellularProtocolStackHist";
  v21[25] = @"KCellularProtocolStackPowerState";
  v20[26] = &unk_282C128A0;
  v20[27] = &unk_282C128B8;
  v21[26] = @"KCellularServingCellLost";
  v21[27] = @"KCellularWcdmaCpcStat";
  v20[28] = &unk_282C128D0;
  v20[29] = &unk_282C128E8;
  v21[28] = @"KCellularRrcModeHist";
  v21[29] = @"KCellularRrcModeHist";
  v20[30] = &unk_282C12900;
  v20[31] = &unk_282C12918;
  v21[30] = @"KCellularRrcModeHist";
  v21[31] = @"KCellularRrcModeHist";
  v20[32] = &unk_282C12930;
  v20[33] = &unk_282C12948;
  v21[32] = @"KCellularRrcModeHist";
  v21[33] = @"KCellularProtocolStackHist";
  v20[34] = &unk_282C12960;
  v20[35] = &unk_282C12978;
  v21[34] = @"KCellularProtocolStackHist";
  v21[35] = @"KCellularProtocolStackHist";
  v20[36] = &unk_282C12990;
  v20[37] = &unk_282C129A8;
  v21[36] = @"KCellularProtocolStackHist";
  v21[37] = @"KCellularProtocolStackHist";
  v20[38] = &unk_282C129C0;
  v21[38] = @"KCellularProtocolStackHist";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:39];
  v3 = qword_2811F7F10;
  qword_2811F7F10 = v2;

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __54__PLICEBBMetricUtility_isInvalidMetricIdTag_forClass___block_invoke_121;
    v16 = &__block_descriptor_40_e5_v8__0lu32l8;
    v17 = v5;
    if (qword_2811F7F20 != -1)
    {
      dispatch_once(&qword_2811F7F20, &block);
    }

    if (_MergedGlobals_111 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", qword_2811F7F10, block, v14, v15, v16, v17];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KICE/PLICEBBMetricUtility.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLICEBBMetricUtility isInvalidMetricIdTag:forClass:]_block_invoke_2"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:70];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __54__PLICEBBMetricUtility_isInvalidMetricIdTag_forClass___block_invoke_121(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_111 = result;
  return result;
}

uint64_t __54__PLICEBBMetricUtility_isInvalidMetricIdTag_forClass___block_invoke_130(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7F09 = result;
  return result;
}

uint64_t __54__PLICEBBMetricUtility_isInvalidMetricIdTag_forClass___block_invoke_136(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7F0A = result;
  return result;
}

+ (id)convertToStringData:(id)data
{
  dataCopy = data;
  v4 = [dataCopy length];
  v5 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:2 * v4];
  bytes = [dataCopy bytes];
  if (v4)
  {
    v7 = bytes;
    do
    {
      v8 = *v7++;
      [v5 appendFormat:@"%02x", v8];
      --v4;
    }

    while (v4);
  }

  return v5;
}

@end