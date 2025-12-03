@interface PLMAVBBMetricUtility
+ (BOOL)isInvalidMetricIdTag:(id)tag forClass:(Class)class;
+ (id)convertToStringData:(id)data;
@end

@implementation PLMAVBBMetricUtility

+ (BOOL)isInvalidMetricIdTag:(id)tag forClass:(Class)class
{
  v34 = *MEMORY[0x277D85DE8];
  tagCopy = tag;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__PLMAVBBMetricUtility_isInvalidMetricIdTag_forClass___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_2811F7110 != -1)
  {
    dispatch_once(&qword_2811F7110, block);
  }

  v7 = [qword_2811F7108 objectForKey:tagCopy];
  if (v7)
  {
    v8 = v7;
    v9 = NSStringFromClass(class);
    v10 = [qword_2811F7108 objectForKey:tagCopy];
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
      v30[2] = __54__PLMAVBBMetricUtility_isInvalidMetricIdTag_forClass___block_invoke_108;
      v30[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v30[4] = v22;
      if (qword_2811F7120 != -1)
      {
        dispatch_once(&qword_2811F7120, v30);
      }

      if (byte_2811F7101 != 1)
      {
LABEL_21:
        v21 = 1;
        goto LABEL_22;
      }

      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"*** invalid metricId tag ***"];
      v23 = MEMORY[0x277D3F178];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KMAV/PLMAVBBMetricUtility.m"];
      lastPathComponent = [v24 lastPathComponent];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLMAVBBMetricUtility isInvalidMetricIdTag:forClass:]"];
      [v23 logMessage:v15 fromFile:lastPathComponent fromFunction:v26 fromLineNumber:77];

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
    v29[2] = __54__PLMAVBBMetricUtility_isInvalidMetricIdTag_forClass___block_invoke_114;
    v29[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v29[4] = v12;
    if (qword_2811F7128 != -1)
    {
      dispatch_once(&qword_2811F7128, v29);
    }

    if (byte_2811F7102 == 1)
    {
      v13 = MEMORY[0x277CCACA8];
      v14 = NSStringFromClass(class);
      v15 = [v13 stringWithFormat:@"supported metricId tag: %@ for class: %@", tagCopy, v14];

      v16 = MEMORY[0x277D3F178];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KMAV/PLMAVBBMetricUtility.m"];
      lastPathComponent2 = [v17 lastPathComponent];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLMAVBBMetricUtility isInvalidMetricIdTag:forClass:]"];
      [v16 logMessage:v15 fromFile:lastPathComponent2 fromFunction:v19 fromLineNumber:81];

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

void __54__PLMAVBBMetricUtility_isInvalidMetricIdTag_forClass___block_invoke(uint64_t a1)
{
  v21[40] = *MEMORY[0x277D85DE8];
  v20[0] = &unk_282C0CBE8;
  v20[1] = &unk_282C0CC00;
  v21[0] = @"cellularPowerLogProfileTriggerCount";
  v21[1] = @"CellularPowerLogHistogram";
  v20[2] = &unk_282C0CC18;
  v20[3] = &unk_282C0CC30;
  v21[2] = @"CellularPowerLogHistogram";
  v21[3] = @"CellularPowerLogHistogram";
  v20[4] = &unk_282C0CC48;
  v20[5] = &unk_282C0CC60;
  v21[4] = @"CellularPowerLogHistogram";
  v21[5] = @"CellularPowerLogHistogram";
  v20[6] = &unk_282C0CC78;
  v20[7] = &unk_282C0CC90;
  v21[6] = @"CellularPowerLogHistogram";
  v21[7] = @"CellularPowerLogHistogram";
  v20[8] = &unk_282C0CCA8;
  v20[9] = &unk_282C0CCC0;
  v21[8] = @"CellularPowerLogLTECarrierComponentInfo";
  v21[9] = @"CellularPowerLogHistogram";
  v20[10] = &unk_282C0CCD8;
  v20[11] = &unk_282C0CCF0;
  v21[10] = @"CellularPowerLogHistogram";
  v21[11] = @"CellularPowerLogHistogram";
  v20[12] = &unk_282C0CD08;
  v20[13] = &unk_282C0CD20;
  v21[12] = @"CellularPowerLogHistogram";
  v21[13] = @"CellularPowerLogHistogram";
  v20[14] = &unk_282C0CD38;
  v20[15] = &unk_282C0CD50;
  v21[14] = @"CellularPowerLogHistogram";
  v21[15] = @"CellularPowerLogHistogram";
  v20[16] = &unk_282C0CD68;
  v20[17] = &unk_282C0CD80;
  v21[16] = @"CellularPowerLogHistogram";
  v21[17] = @"CellularPowerLogHistogram";
  v20[18] = &unk_282C0CD98;
  v20[19] = &unk_282C0CDB0;
  v21[18] = @"CellularPowerLogHistogram";
  v21[19] = @"CellularPowerLogHistogram";
  v20[20] = &unk_282C0CDC8;
  v20[21] = &unk_282C0CDE0;
  v21[20] = @"CellularPowerLogHistogram";
  v21[21] = @"CellularPowerLogHistogram";
  v20[22] = &unk_282C0CDF8;
  v20[23] = &unk_282C0CE10;
  v21[22] = @"CellularPowerLogHistogram";
  v21[23] = @"CellularPowerLogHistogram";
  v20[24] = &unk_282C0CE28;
  v20[25] = &unk_282C0CE40;
  v21[24] = @"CellularPowerLogNRCarrierComponentInfo";
  v21[25] = @"CellularPowerLogHistogram";
  v20[26] = &unk_282C0CE58;
  v20[27] = &unk_282C0CE70;
  v21[26] = @"CellularPowerLogHistogram";
  v21[27] = @"CellularPowerLogHistogram";
  v20[28] = &unk_282C0CE88;
  v20[29] = &unk_282C0CEA0;
  v21[28] = @"CellularPowerLogHistogram";
  v21[29] = @"CellularPowerLogHistogram";
  v20[30] = &unk_282C0CEB8;
  v20[31] = &unk_282C0CED0;
  v21[30] = @"CellularPowerLogHistogram";
  v21[31] = @"CellularPowerLogHistogram";
  v20[32] = &unk_282C0CEE8;
  v20[33] = &unk_282C0CF00;
  v21[32] = @"CellularPowerLogHistogram";
  v21[33] = @"CellularPowerLogHistogram";
  v20[34] = &unk_282C0CF18;
  v20[35] = &unk_282C0CF30;
  v21[34] = @"CellularPowerLogHistogram";
  v21[35] = @"CellularPowerLogNRCarrierComponentInfo";
  v20[36] = &unk_282C0CF48;
  v20[37] = &unk_282C0CF60;
  v21[36] = @"CellularPowerLogHistogram";
  v21[37] = @"CellularPowerLogHistogram";
  v20[38] = &unk_282C0CF78;
  v20[39] = &unk_282C0CF90;
  v21[38] = @"CellularPowerLogHistogram";
  v21[39] = @"CellularPowerLogHistogram";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:40];
  v3 = qword_2811F7108;
  qword_2811F7108 = v2;

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __54__PLMAVBBMetricUtility_isInvalidMetricIdTag_forClass___block_invoke_99;
    v16 = &__block_descriptor_40_e5_v8__0lu32l8;
    v17 = v5;
    if (qword_2811F7118 != -1)
    {
      dispatch_once(&qword_2811F7118, &block);
    }

    if (_MergedGlobals_83 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", qword_2811F7108, block, v14, v15, v16, v17];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KMAV/PLMAVBBMetricUtility.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLMAVBBMetricUtility isInvalidMetricIdTag:forClass:]_block_invoke_2"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:73];

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

uint64_t __54__PLMAVBBMetricUtility_isInvalidMetricIdTag_forClass___block_invoke_99(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_83 = result;
  return result;
}

uint64_t __54__PLMAVBBMetricUtility_isInvalidMetricIdTag_forClass___block_invoke_108(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7101 = result;
  return result;
}

uint64_t __54__PLMAVBBMetricUtility_isInvalidMetricIdTag_forClass___block_invoke_114(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7102 = result;
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