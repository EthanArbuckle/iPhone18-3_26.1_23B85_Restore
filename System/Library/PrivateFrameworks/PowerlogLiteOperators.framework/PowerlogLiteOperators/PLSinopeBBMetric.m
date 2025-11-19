@interface PLSinopeBBMetric
+ (id)sharedInstance;
- (BOOL)registerForNotifClient:(id)a3 andProfile:(id)a4;
- (void)flushPeriodicMetrics;
- (void)initializeDataStoreBBTS:(id)a3 triggerCnt:(id)a4 triggerId:(id)a5;
- (void)initializeMetricsDictWithTS:(id)a3 triggerCnt:(id)a4 triggerId:(id)a5;
- (void)modelProdMetricsNotify;
- (void)queueAperiodicMetricId:(id)a3 payload:(id)a4 forTrigger:(id)a5;
- (void)queuePeriodicMetricId:(id)a3 payload:(id)a4 forTrigger:(id)a5;
@end

@implementation PLSinopeBBMetric

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__PLSinopeBBMetric_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_2811F7030 != -1)
  {
    dispatch_once(&qword_2811F7030, block);
  }

  v2 = qword_2811F7028;

  return v2;
}

uint64_t __34__PLSinopeBBMetric_sharedInstance__block_invoke(uint64_t a1)
{
  qword_2811F7028 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (BOOL)registerForNotifClient:(id)a3 andProfile:(id)a4
{
  v5 = [a4 integerValue];
  if (v5 == 1)
  {
    notificationTitle = self->_notificationTitle;
    self->_notificationTitle = @"SINOPE_METRIC_PROD";
  }

  else
  {
    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "BB Agent Sinope: Unsupported Profile", v9, 2u);
    }
  }

  return v5 == 1;
}

- (void)queuePeriodicMetricId:(id)a3 payload:(id)a4 forTrigger:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PLLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v24 = "[PLSinopeBBMetric queuePeriodicMetricId:payload:forTrigger:]";
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = v10;
    _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "[BBAgent] in @%s, metricId: %@, tid: %@", buf, 0x20u);
  }

  logAgent = self->_logAgent;
  if (!logAgent)
  {
    v15 = PLLogCommon();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v16 = "PLBBAgent not ready";
LABEL_11:
    _os_log_error_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
    goto LABEL_9;
  }

  v13 = [(PLAgent *)logAgent workQueue];

  if (!v13)
  {
    v15 = PLLogCommon();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v16 = "PLBBAgent workQueue not ready";
    goto LABEL_11;
  }

  v14 = [(PLAgent *)self->_logAgent workQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __61__PLSinopeBBMetric_queuePeriodicMetricId_payload_forTrigger___block_invoke;
  v18[3] = &unk_2782591A8;
  v19 = v9;
  v20 = v8;
  v21 = self;
  v22 = v10;
  dispatch_async(v14, v18);

  v15 = v19;
LABEL_9:

  v17 = *MEMORY[0x277D85DE8];
}

void __61__PLSinopeBBMetric_queuePeriodicMetricId_payload_forTrigger___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = PLLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v20 = *(a1 + 32);
    *buf = 136315394;
    v25 = "[PLSinopeBBMetric queuePeriodicMetricId:payload:forTrigger:]_block_invoke";
    v26 = 2112;
    v27 = v20;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "[BBAgent] in @%s in dispatch queue : %@", buf, 0x16u);
  }

  if ([*(a1 + 40) integerValue] == 3932163)
  {
    if (*(*(a1 + 48) + 56))
    {
      if (![*(a1 + 56) integerValue] || (objc_msgSend(*(*(a1 + 48) + 56), "objectForKeyedSubscript:", @"triggerId"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "integerValue"), v5 = objc_msgSend(*(a1 + 56), "integerValue"), v3, v4 != v5))
      {
        if ([MEMORY[0x277D3F208] isBasebandClass:1003018])
        {
          [*(a1 + 48) modelProdMetricsNotify];
        }

        v6 = *(*(a1 + 48) + 64);
        if (v6)
        {
          [v6 logBBSinopePeriodicMetrics];
        }

        else
        {
          v7 = PLLogCommon();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_ERROR, "bad tid.", buf, 2u);
          }

          [MEMORY[0x277D3F180] debugEnabled];
        }
      }
    }

    v8 = [[AWDMETRICSMetricLogPower alloc] initWithData:*(a1 + 32)];
    if ([(AWDMETRICSMetricLogPower *)v8 kCellularPerClientProfileTriggerCountsCount]>= 2)
    {
      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_ERROR, "unexpected trigger count", buf, 2u);
      }

      [MEMORY[0x277D3F180] debugEnabled];
    }

    v10 = [(AWDMETRICSMetricLogPower *)v8 kCellularPerClientProfileTriggerCountAtIndex:0];
    if ([v10 hasTimestamp])
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v10, "timestamp")}];
    }

    else
    {
      v11 = &unk_282C0C960;
    }

    if ([v10 hasTriggerCount])
    {
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "triggerCount")}];
    }

    else
    {
      v12 = &unk_282C0C960;
    }

    [*(a1 + 48) initializeMetricsDictWithTS:v11 triggerCnt:v12 triggerId:*(a1 + 56)];
    [*(a1 + 48) initializeDataStoreBBTS:v11 triggerCnt:v12 triggerId:*(a1 + 56)];
  }

  v13 = PLLogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v21 = *(a1 + 40);
    v22 = *(a1 + 56);
    *buf = 136315650;
    v25 = "[PLSinopeBBMetric queuePeriodicMetricId:payload:forTrigger:]_block_invoke";
    v26 = 2112;
    v27 = v21;
    v28 = 2112;
    v29 = v22;
    _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "[BBAgent] in @%s in default: %@, tid: %@", buf, 0x20u);
  }

  v14 = [*(*(a1 + 48) + 56) objectForKeyedSubscript:@"arr"];
  if (v14)
  {
    v15 = [*(*(a1 + 48) + 64) decodePayload:*(a1 + 32) forMetricId:*(a1 + 40)];
    if (v15)
    {
      [v14 addObject:v15];
    }

    v16 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__PLSinopeBBMetric_queuePeriodicMetricId_payload_forTrigger___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v16;
    if (qword_2811F7038 != -1)
    {
      dispatch_once(&qword_2811F7038, block);
    }

    if (_MergedGlobals_77 == 1)
    {
      v17 = [PLSinopeBBMetricUtility convertToStringData:*(a1 + 32)];
      [v15 setObject:v17 forKey:@"payload"];
    }

    v18 = *(*(a1 + 48) + 64);
    if (v18)
    {
      [v18 addToListMetric:*(a1 + 40) payload:*(a1 + 32)];
    }
  }

  else if ([MEMORY[0x277D3F180] debugEnabled])
  {
    __assert_rtn("[PLSinopeBBMetric queuePeriodicMetricId:payload:forTrigger:]_block_invoke", "PLSinopeBBMetric-SINOPE.m", 140, "0");
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __61__PLSinopeBBMetric_queuePeriodicMetricId_payload_forTrigger___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_77 = result;
  return result;
}

- (void)flushPeriodicMetrics
{
  logAgent = self->_logAgent;
  if (!logAgent)
  {
    v6 = PLLogCommon();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v7 = "BBAgent not ready";
LABEL_10:
    _os_log_error_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_ERROR, v7, buf, 2u);
    goto LABEL_7;
  }

  v4 = [(PLAgent *)logAgent workQueue];

  if (v4)
  {
    v5 = [(PLAgent *)self->_logAgent workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__PLSinopeBBMetric_flushPeriodicMetrics__block_invoke;
    block[3] = &unk_2782591D0;
    block[4] = self;
    dispatch_async(v5, block);

    return;
  }

  v6 = PLLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v7 = "Work-queue not ready";
    goto LABEL_10;
  }

LABEL_7:
}

uint64_t __40__PLSinopeBBMetric_flushPeriodicMetrics__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 56) && *(v1 + 64))
  {
    v2 = result;
    v3 = PLLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "BB Agent: flushPeriodicMetrics", v4, 2u);
    }

    return [*(*(v2 + 32) + 64) logBBSinopePeriodicMetrics];
  }

  return result;
}

- (void)queueAperiodicMetricId:(id)a3 payload:(id)a4 forTrigger:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  logAgent = self->_logAgent;
  if (!logAgent)
  {
    v14 = PLLogCommon();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v15 = "PLBBAgent: Not ready";
LABEL_9:
    _os_log_error_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_ERROR, v15, buf, 2u);
    goto LABEL_7;
  }

  v12 = [(PLAgent *)logAgent workQueue];

  if (!v12)
  {
    v14 = PLLogCommon();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v15 = "PLBBAgent: Work queue Not ready";
    goto LABEL_9;
  }

  v13 = [(PLAgent *)self->_logAgent workQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__PLSinopeBBMetric_queueAperiodicMetricId_payload_forTrigger___block_invoke;
  v16[3] = &unk_2782591A8;
  v17 = v9;
  v18 = v8;
  v19 = self;
  v20 = v10;
  dispatch_async(v13, v16);

  v14 = v17;
LABEL_7:
}

void __62__PLSinopeBBMetric_queueAperiodicMetricId_payload_forTrigger___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [[AWDMETRICSMetricLogPower alloc] initWithData:*(a1 + 32)];
  v3 = v2;
  if (v2)
  {
    v4 = [(AWDMETRICSMetricLogPower *)v2 dictionaryRepresentation];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v23;
      do
      {
        v9 = 0;
        v10 = v7;
        do
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v11 = [v4 objectForKey:*(*(&v22 + 1) + 8 * v9)];
          v7 = [v11 objectAtIndex:0];

          ++v9;
          v10 = v7;
        }

        while (v6 != v9);
        v6 = [v4 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    v12 = PLLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v27 = v7;
      _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "aperiodic BB metric: %@", buf, 0xCu);
    }

    if (v7)
    {
      if ([*(a1 + 40) intValue] == 3932163)
      {
        objc_storeStrong((*(a1 + 48) + 24), *(a1 + 56));
        v13 = [v7 objectForKeyedSubscript:@"trigger_count"];
        v14 = *(a1 + 48);
        v15 = *(v14 + 24);
        *(v14 + 24) = v13;

        v16 = *(a1 + 48);
        v17 = *(a1 + 32);
        v18 = *(v16 + 32);
        *(v16 + 32) = v17;
      }

      else
      {
        v19 = [PLSinopeBBHardwareMessage alloc];
        v20 = [v7 objectForKeyedSubscript:@"timestamp"];
        v18 = [(PLSinopeBBHardwareMessage *)v19 initEntryWithBBTS:v20 triggerId:*(a1 + 40) seqnum:*(*(a1 + 48) + 40) payload:*(a1 + 32) logAgent:*(*(a1 + 48) + 8)];

        [v18 logBBSinopeAperiodicMetrics];
      }
    }
  }

  else
  {
    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_ERROR, "Unable to init powerlogmetric class", buf, 2u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)initializeMetricsDictWithTS:(id)a3 triggerCnt:(id)a4 triggerId:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = PLLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v18 = 136315650;
    v19 = "[PLSinopeBBMetric initializeMetricsDictWithTS:triggerCnt:triggerId:]";
    v20 = 2112;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "[BBAgent] : in @%s, %@, %@", &v18, 0x20u);
  }

  v12 = objc_opt_new();
  metricDict = self->_metricDict;
  self->_metricDict = v12;

  v14 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:{objc_msgSend(v10, "integerValue")}];
  v15 = [v14 convertFromBasebandToMonotonic];
  [(NSMutableDictionary *)self->_metricDict setObject:v15 forKeyedSubscript:@"timestamp"];

  [(NSMutableDictionary *)self->_metricDict setObject:v10 forKeyedSubscript:@"bbtimestamp"];
  [(NSMutableDictionary *)self->_metricDict setObject:v14 forKeyedSubscript:@"timestampLogged"];
  [(NSMutableDictionary *)self->_metricDict setObject:&unk_282C0C960 forKeyedSubscript:@"duration"];
  [(NSMutableDictionary *)self->_metricDict setObject:v8 forKeyedSubscript:@"seqnum"];
  [(NSMutableDictionary *)self->_metricDict setObject:v9 forKeyedSubscript:@"triggerId"];
  v16 = objc_opt_new();
  [(NSMutableDictionary *)self->_metricDict setObject:v16 forKeyedSubscript:@"arr"];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)initializeDataStoreBBTS:(id)a3 triggerCnt:(id)a4 triggerId:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = PLLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136315138;
    v16 = "[PLSinopeBBMetric initializeDataStoreBBTS:triggerCnt:triggerId:]";
    _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "[BBAgent] : in @%s", &v15, 0xCu);
  }

  v12 = [[PLSinopeBBHardwareMessage alloc] initEntryWithBBTS:v10 triggerId:v8 seqnum:v9 payload:0 logAgent:self->_logAgent];
  hardwareMessage = self->_hardwareMessage;
  self->_hardwareMessage = v12;

  v14 = *MEMORY[0x277D85DE8];
}

- (void)modelProdMetricsNotify
{
  v31 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = [(NSMutableDictionary *)self->_metricDict objectForKey:@"arr"];
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
  [(NSMutableDictionary *)self->_metricDict setObject:v15 forKeyedSubscript:@"duration"];

  if ([(NSString *)self->_notificationTitle isEqualToString:@"SINOPE_METRIC_PROD"])
  {
    [MEMORY[0x277D3F258] postNotificationName:self->_notificationTitle object:self userInfo:self->_metricDict];
  }

  else
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"bad metrics channel: !PROD"];
    v17 = MEMORY[0x277D3F178];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KSinope/PLSinopeBBMetric-SINOPE.m"];
    v19 = [v18 lastPathComponent];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSinopeBBMetric modelProdMetricsNotify]"];
    [v17 logMessage:v16 fromFile:v19 fromFunction:v20 fromLineNumber:300];

    v21 = PLLogCommon();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v29 = v16;
      _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      __assert_rtn("[PLSinopeBBMetric modelProdMetricsNotify]", "PLSinopeBBMetric-SINOPE.m", 301, "0");
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

@end