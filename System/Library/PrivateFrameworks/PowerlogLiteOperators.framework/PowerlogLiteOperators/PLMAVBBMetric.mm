@interface PLMAVBBMetric
+ (id)sharedInstance;
- (BOOL)registerForNotifClient:(id)a3 andProfile:(id)a4;
- (void)flushPeriodicMetrics;
- (void)initializeDataStoreBBTS:(id)a3 triggerCnt:(id)a4 triggerId:(id)a5;
- (void)initializeMetricsDictWithTS:(id)a3 triggerCnt:(id)a4 triggerId:(id)a5;
- (void)modelProdMetricsNotify;
- (void)queueAperiodicMetricId:(id)a3 payload:(id)a4 profileId:(id)a5;
- (void)queuePeriodicMetricId:(id)a3 payload:(id)a4 forTrigger:(id)a5;
@end

@implementation PLMAVBBMetric

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__PLMAVBBMetric_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_2811F70D8 != -1)
  {
    dispatch_once(&qword_2811F70D8, block);
  }

  v2 = qword_2811F70E0;

  return v2;
}

- (void)modelProdMetricsNotify
{
  v31 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = [(NSMutableDictionary *)self->_prodMetrics objectForKey:@"arr"];
  v3 = [v2 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v25;
    v6 = -1;
    v7 = -1;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:@"duration"];

        if (v10)
        {
          v11 = [v9 objectForKeyedSubscript:@"duration"];
          v12 = [v11 intValue];

          if (v12 >= v7)
          {
            v13 = v7;
          }

          else
          {
            v13 = v12;
          }

          if (v7 == -1)
          {
            v7 = v12;
          }

          else
          {
            v7 = v13;
          }

          if (v12 <= v6)
          {
            v14 = v6;
          }

          else
          {
            v14 = v12;
          }

          if (v6 == -1)
          {
            v6 = v12;
          }

          else
          {
            v6 = v14;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = -1;
    v7 = -1;
  }

  v15 = [MEMORY[0x277CCABB0] numberWithInt:((v7 + v6) / 2)];
  [(NSMutableDictionary *)self->_prodMetrics setObject:v15 forKeyedSubscript:@"duration"];

  if ([(NSString *)self->_notifyTitle isEqualToString:@"MAV_METRIC_PROD"])
  {
    [MEMORY[0x277D3F258] postNotificationName:self->_notifyTitle object:self userInfo:self->_prodMetrics];
  }

  else
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"bad metrics channel: !PROD"];
    v17 = MEMORY[0x277D3F178];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KMAV/PLMAVBBMetric.m"];
    v19 = [v18 lastPathComponent];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMAVBBMetric modelProdMetricsNotify]"];
    [v17 logMessage:v16 fromFile:v19 fromFunction:v20 fromLineNumber:268];

    v21 = PLLogCommon();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v29 = v16;
      _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      __assert_rtn("[PLMAVBBMetric modelProdMetricsNotify]", "PLMAVBBMetric.m", 269, "0");
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __31__PLMAVBBMetric_sharedInstance__block_invoke(uint64_t a1)
{
  qword_2811F70E0 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (BOOL)registerForNotifClient:(id)a3 andProfile:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [a4 integerValue];
  if (v5 == 1)
  {
    notifyTitle = self->_notifyTitle;
    self->_notifyTitle = @"MAV_METRIC_PROD";
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"*** error *** unsupported profile"];
    v8 = MEMORY[0x277D3F178];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KMAV/PLMAVBBMetric.m"];
    v10 = [v9 lastPathComponent];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMAVBBMetric registerForNotifClient:andProfile:]"];
    [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:62];

    v12 = PLLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138412290;
      v16 = v7;
      _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", &v15, 0xCu);
    }
  }

  result = v5 == 1;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)queuePeriodicMetricId:(id)a3 payload:(id)a4 forTrigger:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PLLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v22 = v9;
    _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "BB Agent: queuePeriodicMetricId : %@", buf, 0xCu);
  }

  logAgent = self->_logAgent;
  if (logAgent && ([(PLAgent *)logAgent workQueue], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    v14 = [(PLAgent *)self->_logAgent workQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __58__PLMAVBBMetric_queuePeriodicMetricId_payload_forTrigger___block_invoke;
    v16[3] = &unk_2782591A8;
    v17 = v9;
    v18 = v8;
    v19 = self;
    v20 = v10;
    dispatch_async(v14, v16);
  }

  else
  {
    [MEMORY[0x277D3F180] debugEnabled];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __58__PLMAVBBMetric_queuePeriodicMetricId_payload_forTrigger___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = PLLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v40 = *(a1 + 32);
    *buf = 138412290;
    v46 = v40;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "BB Agent: queuePeriodicMetricId in dispatch queue : %@", buf, 0xCu);
  }

  v3 = [*(a1 + 40) integerValue];
  v4 = *(*(a1 + 48) + 48);
  if (v3 == 786435)
  {
    if (v4)
    {
      if ([*(a1 + 56) integerValue])
      {
        v5 = [*(*(a1 + 48) + 48) objectForKeyedSubscript:@"triggerId"];
        v6 = [v5 integerValue];
        v7 = [*(a1 + 56) integerValue];

        if (v6 == v7)
        {
          v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"bad tid. will failed assertion if debugEnabled"];
          v9 = MEMORY[0x277D3F178];
          v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KMAV/PLMAVBBMetric.m"];
          v11 = [v10 lastPathComponent];
          v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMAVBBMetric queuePeriodicMetricId:payload:forTrigger:]_block_invoke"];
          [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:107];

          v13 = PLLogCommon();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v46 = v8;
            _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          [MEMORY[0x277D3F180] debugEnabled];
          goto LABEL_46;
        }
      }

      [*(a1 + 48) modelProdMetricsNotify];
      if (*(*(a1 + 48) + 56))
      {
        v20 = PLLogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v42 = *(a1 + 32);
          *buf = 138412290;
          v46 = v42;
          _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "BB Agent: queuePeriodicMetricId in RF Trigger Count : %@", buf, 0xCu);
        }

        [*(*(a1 + 48) + 56) logBBMavPeriodicMetrics];
      }
    }

    v21 = [[AWDMETRICSCellularPowerLog alloc] initWithData:*(a1 + 32)];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v22 = *(a1 + 48);
      v23 = objc_opt_class();
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __58__PLMAVBBMetric_queuePeriodicMetricId_payload_forTrigger___block_invoke_24;
      v44[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v44[4] = v23;
      if (qword_2811F70E8 != -1)
      {
        dispatch_once(&qword_2811F70E8, v44);
      }

      if (_MergedGlobals_82 == 1)
      {
        v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Generate awdPowerLog to handle periodic metrics: %@", v21];
        v25 = MEMORY[0x277D3F178];
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KMAV/PLMAVBBMetric.m"];
        v27 = [v26 lastPathComponent];
        v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMAVBBMetric queuePeriodicMetricId:payload:forTrigger:]_block_invoke_2"];
        [v25 logMessage:v24 fromFile:v27 fromFunction:v28 fromLineNumber:117];

        v29 = PLLogCommon();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v46 = v24;
          _os_log_debug_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    if ([(AWDMETRICSCellularPowerLog *)v21 cellularPerClientProfileTriggerCountsCount]>= 2)
    {
      [MEMORY[0x277D3F180] debugEnabled];
    }

    v30 = [(AWDMETRICSCellularPowerLog *)v21 cellularPerClientProfileTriggerCountAtIndex:0];
    if ([v30 hasTimestamp])
    {
      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v30, "timestamp")}];
    }

    else
    {
      v31 = &unk_282C0CBD0;
    }

    if ([v30 hasTriggerCount])
    {
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v30, "triggerCount")}];
    }

    else
    {
      v32 = &unk_282C0CBD0;
    }

    [*(a1 + 48) initializeMetricsDictWithTS:v31 triggerCnt:v32 triggerId:*(a1 + 56)];
    [*(a1 + 48) initializeDataStoreBBTS:v31 triggerCnt:v32 triggerId:*(a1 + 56)];
  }

  else
  {
    v14 = [v4 objectForKeyedSubscript:@"arr"];
    if (v14)
    {
      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v41 = *(a1 + 32);
        *buf = 138412290;
        v46 = v41;
        _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "BB Agent: queuePeriodicMetricId in default : %@", buf, 0xCu);
      }

      v16 = [*(*(a1 + 48) + 56) decodePayload:*(a1 + 32) forMetricId:*(a1 + 40)];
      v17 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__PLMAVBBMetric_queuePeriodicMetricId_payload_forTrigger___block_invoke_43;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v17;
      if (qword_2811F70F0 != -1)
      {
        dispatch_once(&qword_2811F70F0, block);
      }

      if (byte_2811F70D1 == 1)
      {
        v18 = [PLMAVBBMetricUtility convertToStringData:*(a1 + 32)];
        [v16 setObject:v18 forKey:@"payload"];
      }

      if (v16)
      {
        [v14 addObject:v16];
      }

      v19 = *(*(a1 + 48) + 56);
      if (v19)
      {
        [v19 addToListMetric:*(a1 + 40) payload:*(a1 + 32)];
      }
    }

    else
    {
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"bad arr"];
      v34 = MEMORY[0x277D3F178];
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KMAV/PLMAVBBMetric.m"];
      v36 = [v35 lastPathComponent];
      v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMAVBBMetric queuePeriodicMetricId:payload:forTrigger:]_block_invoke"];
      [v34 logMessage:v33 fromFile:v36 fromFunction:v37 fromLineNumber:141];

      v38 = PLLogCommon();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v46 = v33;
        _os_log_debug_impl(&dword_21A4C6000, v38, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        __assert_rtn("[PLMAVBBMetric queuePeriodicMetricId:payload:forTrigger:]_block_invoke", "PLMAVBBMetric.m", 142, "0");
      }
    }
  }

LABEL_46:
  v39 = *MEMORY[0x277D85DE8];
}

uint64_t __58__PLMAVBBMetric_queuePeriodicMetricId_payload_forTrigger___block_invoke_24(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_82 = result;
  return result;
}

uint64_t __58__PLMAVBBMetric_queuePeriodicMetricId_payload_forTrigger___block_invoke_43(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F70D1 = result;
  return result;
}

- (void)flushPeriodicMetrics
{
  logAgent = self->_logAgent;
  if (!logAgent)
  {
    v6 = PLLogCommon();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v7 = "BBAgent not ready";
LABEL_10:
    _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, v7, buf, 2u);
    goto LABEL_7;
  }

  v4 = [(PLAgent *)logAgent workQueue];

  if (v4)
  {
    v5 = [(PLAgent *)self->_logAgent workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__PLMAVBBMetric_flushPeriodicMetrics__block_invoke;
    block[3] = &unk_2782591D0;
    block[4] = self;
    dispatch_async(v5, block);

    return;
  }

  v6 = PLLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    v7 = "Work-queue not ready";
    goto LABEL_10;
  }

LABEL_7:
}

uint64_t __37__PLMAVBBMetric_flushPeriodicMetrics__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 48) && *(v1 + 56))
  {
    v2 = result;
    v3 = PLLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "BB Agent: flushPeriodicMetrics", v4, 2u);
    }

    return [*(*(v2 + 32) + 56) logBBMavPeriodicMetrics];
  }

  return result;
}

- (void)queueAperiodicMetricId:(id)a3 payload:(id)a4 profileId:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  logAgent = self->_logAgent;
  if (logAgent && ([(PLAgent *)logAgent workQueue], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    v13 = [(PLAgent *)self->_logAgent workQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __58__PLMAVBBMetric_queueAperiodicMetricId_payload_profileId___block_invoke;
    v14[3] = &unk_2782591A8;
    v15 = v9;
    v16 = self;
    v17 = v8;
    v18 = v10;
    dispatch_async(v13, v14);
  }

  else
  {
    [MEMORY[0x277D3F180] debugEnabled];
  }
}

void __58__PLMAVBBMetric_queueAperiodicMetricId_payload_profileId___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = [[AWDMETRICSCellularPowerLog alloc] initWithData:*(a1 + 32)];
  v3 = v2;
  if (v2)
  {
    v4 = [(AWDMETRICSCellularPowerLog *)v2 dictionaryRepresentation];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v35;
      do
      {
        v9 = 0;
        v10 = v7;
        do
        {
          if (*v35 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v11 = [v4 objectForKey:*(*(&v34 + 1) + 8 * v9)];
          v7 = [v11 objectAtIndex:0];

          ++v9;
          v10 = v7;
        }

        while (v6 != v9);
        v6 = [v4 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v12 = *(a1 + 40);
      v13 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v30 = 3221225472;
      v31 = __58__PLMAVBBMetric_queueAperiodicMetricId_payload_profileId___block_invoke_2;
      v32 = &__block_descriptor_40_e5_v8__0lu32l8;
      v33 = v13;
      if (qword_2811F70F8 != -1)
      {
        dispatch_once(&qword_2811F70F8, &block);
      }

      if (byte_2811F70D2 == 1)
      {
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"aperiodic MAV metric: %@", v7, block, v30, v31, v32, v33];
        v15 = MEMORY[0x277D3F178];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KMAV/PLMAVBBMetric.m"];
        v17 = [v16 lastPathComponent];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMAVBBMetric queueAperiodicMetricId:payload:profileId:]_block_invoke"];
        [v15 logMessage:v14 fromFile:v17 fromFunction:v18 fromLineNumber:222];

        v19 = PLLogCommon();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v39 = v14;
          _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    if (v7)
    {
      if ([*(a1 + 48) intValue] == 786435)
      {
        objc_storeStrong((*(a1 + 40) + 32), *(a1 + 56));
        v20 = [v7 objectForKeyedSubscript:@"trigger_count"];
        v21 = *(a1 + 40);
        v22 = *(v21 + 24);
        *(v21 + 24) = v20;

        v23 = *(a1 + 40);
        v24 = *(a1 + 32);
        v25 = *(v23 + 40);
        *(v23 + 40) = v24;
      }

      else
      {
        v26 = [PLMAVBBHardwareMessage alloc];
        v27 = [v7 objectForKeyedSubscript:@"timestamp"];
        v25 = [(PLMAVBBHardwareMessage *)v26 initEntryWithBBTS:v27 triggerId:*(a1 + 48) seqnum:*(*(a1 + 40) + 24) payload:*(a1 + 32) logAgent:*(*(a1 + 40) + 8)];

        [v25 logBBMavAperiodicMetrics];
      }
    }
  }

  else
  {
    [MEMORY[0x277D3F180] debugEnabled];
  }

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __58__PLMAVBBMetric_queueAperiodicMetricId_payload_profileId___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F70D2 = result;
  return result;
}

- (void)initializeMetricsDictWithTS:(id)a3 triggerCnt:(id)a4 triggerId:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_new();
  prodMetrics = self->_prodMetrics;
  self->_prodMetrics = v11;

  v15 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:{objc_msgSend(v10, "integerValue")}];
  v13 = [v15 convertFromBasebandToMonotonic];
  [(NSMutableDictionary *)self->_prodMetrics setObject:v13 forKeyedSubscript:@"timestamp"];

  [(NSMutableDictionary *)self->_prodMetrics setObject:v10 forKeyedSubscript:@"bbtimestamp"];
  [(NSMutableDictionary *)self->_prodMetrics setObject:&unk_282C0CBD0 forKeyedSubscript:@"duration"];
  [(NSMutableDictionary *)self->_prodMetrics setObject:v9 forKeyedSubscript:@"seqnum"];

  [(NSMutableDictionary *)self->_prodMetrics setObject:v8 forKeyedSubscript:@"triggerId"];
  v14 = objc_opt_new();
  [(NSMutableDictionary *)self->_prodMetrics setObject:v14 forKeyedSubscript:@"arr"];
}

- (void)initializeDataStoreBBTS:(id)a3 triggerCnt:(id)a4 triggerId:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[PLMAVBBHardwareMessage alloc] initEntryWithBBTS:v10 triggerId:v8 seqnum:v9 payload:0 logAgent:self->_logAgent];

  storeMetricsLogger = self->_storeMetricsLogger;
  self->_storeMetricsLogger = v11;
}

@end