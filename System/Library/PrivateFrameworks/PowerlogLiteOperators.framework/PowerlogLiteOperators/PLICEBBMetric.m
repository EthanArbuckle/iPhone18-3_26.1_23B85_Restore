@interface PLICEBBMetric
+ (id)sharedInstance;
- (BOOL)registerForNotifClient:(id)a3 andProfile:(id)a4;
- (void)initializeDataStoreBBTS:(id)a3 triggerCnt:(id)a4 triggerId:(id)a5;
- (void)initializeMetricsDictWithTS:(id)a3 triggerCnt:(id)a4 triggerId:(id)a5;
- (void)initializeMetricsSim;
- (void)modelProdMetricsNotify;
- (void)modelSimMetricsNotify:(id)a3;
- (void)queueAperiodicMetricId:(id)a3 payload:(id)a4 profileId:(id)a5;
- (void)queuePeriodicMetricId:(id)a3 payload:(id)a4 forTrigger:(id)a5;
@end

@implementation PLICEBBMetric

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__PLICEBBMetric_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_2811F7900 != -1)
  {
    dispatch_once(&qword_2811F7900, block);
  }

  v2 = qword_2811F7908;

  return v2;
}

void *__31__PLICEBBMetric_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_2811F7908;
  qword_2811F7908 = v1;

  result = qword_2811F7908;
  if (qword_2811F7908)
  {

    return [result initializeMetricsSim];
  }

  return result;
}

- (void)initializeMetricsSim
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);

  v5 = dispatch_queue_create_with_target_V2("com.apple.powerlog.cebb", v4, 0);
  queue = self->_queue;
  self->_queue = v5;

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 pathForResource:@"MetricsSim" ofType:@"plist"];

  if (v8)
  {
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v8];
    plistSimMetrics = self->_plistSimMetrics;
    self->_plistSimMetrics = v9;
  }

  else
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"*** error *** plist not found, cannot proceed"];
    v12 = MEMORY[0x277D3F178];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KICE/PLICEBBMetric.m"];
    v14 = [v13 lastPathComponent];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLICEBBMetric initializeMetricsSim]"];
    [v12 logMessage:v11 fromFile:v14 fromFunction:v15 fromLineNumber:64];

    v16 = PLLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v20 = 138412290;
      v21 = v11;
      _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", &v20, 0xCu);
    }

    error = self->_error;
    self->_error = &unk_282C11718;

    v18 = objc_opt_new();
    [(NSDictionary *)v18 setValue:@"1.0" forKey:@"version"];
    [(NSDictionary *)v18 setValue:self->_error forKey:@"error"];
    plistSimMetrics = self->_plistSimMetrics;
    self->_plistSimMetrics = v18;
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)registerForNotifClient:(id)a3 andProfile:(id)a4
{
  location[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NSDictionary *)self->_plistSimMetrics mutableCopy];
  v9 = [v7 integerValue];
  if (v9 <= 2)
  {
    if (v9 == 1)
    {
      v11 = @"METRIC_SIM_LTE_TEST";
      v12 = 32;
      v13 = @"arrlte";
    }

    else
    {
      if (v9 != 2)
      {
        goto LABEL_15;
      }

      v11 = @"METRIC_SIM_UMTS_TEST";
      v12 = 40;
      v13 = @"arrumts";
    }

LABEL_12:
    objc_storeStrong((&self->super.isa + v12), v8);
    v14 = *(&self->super.isa + v12);
    v15 = [v14 objectForKey:v13];
    [v14 setObject:v15 forKey:@"arr"];

    objc_storeStrong(&self->_sendSimMetrics, *(&self->super.isa + v12));
    notifyTitle = self->_notifyTitle;
    self->_notifyTitle = &v11->isa;

    [(NSMutableDictionary *)self->_sendSimMetrics removeObjectForKey:@"arrlte"];
    [(NSMutableDictionary *)self->_sendSimMetrics removeObjectForKey:@"arrumts"];
    [(NSMutableDictionary *)self->_sendSimMetrics removeObjectForKey:@"arrtds"];
    [(NSMutableDictionary *)self->_sendSimMetrics removeObjectForKey:@"arregprs"];
    objc_initWeak(location, self);
    v17 = objc_alloc(MEMORY[0x277D3F250]);
    v18 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:30.0];
    queue = self->_queue;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __51__PLICEBBMetric_registerForNotifClient_andProfile___block_invoke;
    v33[3] = &unk_27825A810;
    objc_copyWeak(&v34, location);
    v20 = [v17 initWithFireDate:v18 withInterval:1 withTolerance:0 repeats:queue withUserInfo:v33 withQueue:30.0 withBlock:0.0];
    tickTock = self->_tickTock;
    p_tickTock = &self->_tickTock;
    *p_tickTock = v20;

    [*p_tickTock arm];
    objc_destroyWeak(&v34);
    objc_destroyWeak(location);
    goto LABEL_13;
  }

  switch(v9)
  {
    case 3:
      v11 = @"METRIC_SIM_TDS_TEST";
      v12 = 56;
      v13 = @"arrtds";
      goto LABEL_12;
    case 4:
      v11 = @"METRIC_SIM_EGPRS_TEST";
      v12 = 48;
      v13 = @"arregprs";
      goto LABEL_12;
    case 7:
      v10 = self->_notifyTitle;
      self->_notifyTitle = @"METRIC_PROD";

LABEL_13:
      v23 = 1;
      goto LABEL_14;
  }

LABEL_15:
  v26 = objc_opt_new();
  [v26 setValue:@"1.0" forKey:@"version"];
  [v26 setValue:&unk_282C11730 forKey:@"error"];
  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"*** error *** unsupported profile"];
  v28 = MEMORY[0x277D3F178];
  v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KICE/PLICEBBMetric.m"];
  v30 = [v29 lastPathComponent];
  v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLICEBBMetric registerForNotifClient:andProfile:]"];
  [v28 logMessage:v27 fromFile:v30 fromFunction:v31 fromLineNumber:134];

  v32 = PLLogCommon();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(location[0]) = 138412290;
    *(location + 4) = v27;
    _os_log_debug_impl(&dword_21A4C6000, v32, OS_LOG_TYPE_DEBUG, "%@", location, 0xCu);
  }

  v23 = 0;
LABEL_14:

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

void __51__PLICEBBMetric_registerForNotifClient_andProfile___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained modelProdMetricsNotify];
}

- (void)queuePeriodicMetricId:(id)a3 payload:(id)a4 forTrigger:(id)a5
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
LABEL_7:

      [MEMORY[0x277D3F180] debugEnabled];
      goto LABEL_8;
    }

    *buf = 0;
    v15 = "PLBBAgent not ready";
LABEL_10:
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
    v15 = "PLBBAgent workQueue not ready";
    goto LABEL_10;
  }

  v13 = [(PLAgent *)self->_logAgent workQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__PLICEBBMetric_queuePeriodicMetricId_payload_forTrigger___block_invoke;
  v16[3] = &unk_2782591A8;
  v17 = v8;
  v18 = self;
  v19 = v10;
  v20 = v9;
  dispatch_async(v13, v16);

LABEL_8:
}

void __58__PLICEBBMetric_queuePeriodicMetricId_payload_forTrigger___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) integerValue];
  v3 = *(*(a1 + 40) + 112);
  if (v2 != 3932163)
  {
    v13 = [v3 objectForKeyedSubscript:@"arr"];
    if (v13)
    {
      v14 = [*(*(a1 + 40) + 120) decodePayload:*(a1 + 56) forMetricId:*(a1 + 32)];
      v15 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__PLICEBBMetric_queuePeriodicMetricId_payload_forTrigger___block_invoke_2;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v15;
      if (qword_2811F7910 != -1)
      {
        dispatch_once(&qword_2811F7910, block);
      }

      if (_MergedGlobals_97 == 1)
      {
        v16 = [PLICEBBMetricUtility convertToStringData:*(a1 + 56)];
        [v14 setObject:v16 forKey:@"payload"];
      }

      if (v14)
      {
        [v13 addObject:v14];
      }

      v17 = *(*(a1 + 40) + 120);
      if (v17)
      {
        [v17 addToListMetric:*(a1 + 32) payload:*(a1 + 56)];
      }
    }

    else
    {
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"bad arr"];
      v24 = MEMORY[0x277D3F178];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KICE/PLICEBBMetric.m"];
      v26 = [v25 lastPathComponent];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLICEBBMetric queuePeriodicMetricId:payload:forTrigger:]_block_invoke"];
      [v24 logMessage:v23 fromFile:v26 fromFunction:v27 fromLineNumber:282];

      v28 = PLLogCommon();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v36 = v23;
        _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        __assert_rtn("[PLICEBBMetric queuePeriodicMetricId:payload:forTrigger:]_block_invoke", "PLICEBBMetric.m", 283, "0");
      }
    }

    goto LABEL_34;
  }

  if (!v3)
  {
    v19 = [[PowerlogMetricLog alloc] initWithData:*(a1 + 56)];
    if ([(PowerlogMetricLog *)v19 kCellularPerClientProfileTriggerCountsCount]>= 2)
    {
      [MEMORY[0x277D3F180] debugEnabled];
    }

    v20 = [(PowerlogMetricLog *)v19 kCellularPerClientProfileTriggerCountAtIndex:0];
    if ([v20 hasTimestamp])
    {
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v20, "timestamp")}];
    }

    else
    {
      v22 = &unk_282C11718;
    }

    if ([v20 hasTriggerCount])
    {
      v30 = MEMORY[0x277CCABB0];
      goto LABEL_41;
    }

LABEL_42:
    v31 = &unk_282C11718;
    goto LABEL_43;
  }

  if ([*(a1 + 48) integerValue])
  {
    v4 = [*(*(a1 + 40) + 112) objectForKeyedSubscript:@"triggerId"];
    v5 = [v4 integerValue];
    v6 = [*(a1 + 48) integerValue];

    if (v5 == v6)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"bad tid. will failed assertion if debugEnabled"];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KICE/PLICEBBMetric.m"];
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLICEBBMetric queuePeriodicMetricId:payload:forTrigger:]_block_invoke"];
      [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:235];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v36 = v7;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      [MEMORY[0x277D3F180] debugEnabled];
LABEL_34:
      v29 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  if (([MEMORY[0x277D3F208] isBasebandClass:1003009] & 1) == 0)
  {
    [*(a1 + 40) modelProdMetricsNotify];
  }

  v18 = *(*(a1 + 40) + 120);
  if (v18)
  {
    [v18 logBBIcePeriodicMetrics];
  }

  v19 = [[PowerlogMetricLog alloc] initWithData:*(a1 + 56)];
  if ([(PowerlogMetricLog *)v19 kCellularPerClientProfileTriggerCountsCount]>= 2)
  {
    [MEMORY[0x277D3F180] debugEnabled];
  }

  v20 = [(PowerlogMetricLog *)v19 kCellularPerClientProfileTriggerCountAtIndex:0];
  if ([v20 hasTimestamp])
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v20, "timestamp")}];
  }

  else
  {
    v21 = &unk_282C11718;
  }

  if (![v20 hasTriggerCount])
  {
    goto LABEL_42;
  }

  v30 = MEMORY[0x277CCABB0];
LABEL_41:
  v31 = [v30 numberWithUnsignedInt:{objc_msgSend(v20, "triggerCount")}];
LABEL_43:
  [*(a1 + 40) initializeMetricsDictWithTS:v33 triggerCnt:v31 triggerId:*(a1 + 48)];
  [*(a1 + 40) initializeDataStoreBBTS:v33 triggerCnt:v31 triggerId:*(a1 + 48)];

  v32 = *MEMORY[0x277D85DE8];
}

uint64_t __58__PLICEBBMetric_queuePeriodicMetricId_payload_forTrigger___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_97 = result;
  return result;
}

- (void)queueAperiodicMetricId:(id)a3 payload:(id)a4 profileId:(id)a5
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
LABEL_7:

      [MEMORY[0x277D3F180] debugEnabled];
      goto LABEL_8;
    }

    *buf = 0;
    v15 = "PLBBAgent not ready";
LABEL_10:
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
    v15 = "PLBBAgent workQueue not ready";
    goto LABEL_10;
  }

  v13 = [(PLAgent *)self->_logAgent workQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__PLICEBBMetric_queueAperiodicMetricId_payload_profileId___block_invoke;
  v16[3] = &unk_2782591A8;
  v17 = v9;
  v18 = self;
  v19 = v8;
  v20 = v10;
  dispatch_async(v13, v16);

LABEL_8:
}

void __58__PLICEBBMetric_queueAperiodicMetricId_payload_profileId___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = [[PowerlogMetricLog alloc] initWithData:*(a1 + 32)];
  v3 = v2;
  if (v2)
  {
    v4 = [(PowerlogMetricLog *)v2 dictionaryRepresentation];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v37;
      do
      {
        v9 = 0;
        v10 = v7;
        do
        {
          if (*v37 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v11 = [v4 objectForKey:*(*(&v36 + 1) + 8 * v9)];
          v7 = [v11 objectAtIndex:0];

          ++v9;
          v10 = v7;
        }

        while (v6 != v9);
        v6 = [v4 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    v13 = PLLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v41 = v7;
      _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "aperiodic ICE metric: %@", buf, 0xCu);
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v14 = *(a1 + 40);
      v15 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v32 = 3221225472;
      v33 = __58__PLICEBBMetric_queueAperiodicMetricId_payload_profileId___block_invoke_92;
      v34 = &__block_descriptor_40_e5_v8__0lu32l8;
      v35 = v15;
      if (qword_2811F7918 != -1)
      {
        dispatch_once(&qword_2811F7918, &block);
      }

      if (byte_2811F78F9 == 1)
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"aperiodic ICE metric: %@", v7, block, v32, v33, v34, v35];
        v17 = MEMORY[0x277D3F178];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KICE/PLICEBBMetric.m"];
        v19 = [v18 lastPathComponent];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLICEBBMetric queueAperiodicMetricId:payload:profileId:]_block_invoke_2"];
        [v17 logMessage:v16 fromFile:v19 fromFunction:v20 fromLineNumber:348];

        v21 = PLLogCommon();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v41 = v16;
          _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    if (v7)
    {
      if ([*(a1 + 48) intValue] == 3932163)
      {
        objc_storeStrong((*(a1 + 40) + 96), *(a1 + 56));
        v22 = [v7 objectForKeyedSubscript:@"trigger_count"];
        v23 = *(a1 + 40);
        v24 = *(v23 + 88);
        *(v23 + 88) = v22;

        v25 = *(a1 + 40);
        v26 = *(a1 + 32);
        v27 = *(v25 + 104);
        *(v25 + 104) = v26;
      }

      else
      {
        v28 = [PLICEBBHardwareMessage alloc];
        v29 = [v7 objectForKeyedSubscript:@"timestamp"];
        v27 = [(PLICEBBHardwareMessage *)v28 initEntryWithBBTS:v29 triggerId:*(a1 + 48) seqnum:*(*(a1 + 40) + 88) payload:*(a1 + 32) logAgent:*(*(a1 + 40) + 8)];

        [v27 logBBIceAperiodicMetrics];
      }
    }
  }

  else
  {
    v12 = PLLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_ERROR, "unable to init powerlogmetriclog class", buf, 2u);
    }

    [MEMORY[0x277D3F180] debugEnabled];
  }

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __58__PLICEBBMetric_queueAperiodicMetricId_payload_profileId___block_invoke_92(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F78F9 = result;
  return result;
}

- (void)modelSimMetricsNotify:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NSString *)self->_notifyTitle isEqualToString:@"METRIC_PROD"])
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"bad metrics channel, !TEST"];
    v6 = MEMORY[0x277D3F178];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KICE/PLICEBBMetric.m"];
    v8 = [v7 lastPathComponent];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLICEBBMetric modelSimMetricsNotify:]"];
    [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:388];

    v10 = PLLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", &v15, 0xCu);
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      __assert_rtn("[PLICEBBMetric modelSimMetricsNotify:]", "PLICEBBMetric.m", 389, "0");
    }
  }

  v11 = MEMORY[0x277D3F258];
  notifyTitle = self->_notifyTitle;
  v13 = [(NSMutableDictionary *)self->_sendSimMetrics copy];
  [v11 postNotificationName:notifyTitle object:self userInfo:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)modelProdMetricsNotify
{
  v35 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(NSMutableDictionary *)self->_prodMetrics objectForKey:@"arr"];
  v2 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (!v2)
  {
    v5 = -1;
    v7 = -1;
    goto LABEL_25;
  }

  v3 = v2;
  v4 = *v29;
  v5 = -1;
  v6 = @"duration";
  v7 = -1;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      v9 = v6;
      if (*v29 != v4)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v28 + 1) + 8 * i);
      v11 = [v10 objectForKeyedSubscript:@"metricId"];
      v12 = [v11 intValue];

      if (v12 != 3985670)
      {
        v6 = v9;
        v13 = [v10 objectForKeyedSubscript:v9];

        if (!v13)
        {
          goto LABEL_21;
        }

        v14 = [v10 objectForKeyedSubscript:v9];
        v15 = [v14 intValue];

        if (v15 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v15;
        }

        if (v7 == -1)
        {
          v7 = v15;
        }

        else
        {
          v7 = v16;
        }

        if (v15 <= v5)
        {
          v17 = v5;
        }

        else
        {
          v17 = v15;
        }

        if (v5 == -1)
        {
          v5 = v15;
        }

        else
        {
          v5 = v17;
        }
      }

      v6 = v9;
LABEL_21:
    }

    v3 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  }

  while (v3);
LABEL_25:

  v18 = [MEMORY[0x277CCABB0] numberWithInt:((v7 + v5) / 2)];
  [(NSMutableDictionary *)self->_prodMetrics setObject:v18 forKeyedSubscript:@"duration"];

  if ([(NSString *)self->_notifyTitle isEqualToString:@"METRIC_PROD"])
  {
    [MEMORY[0x277D3F258] postNotificationName:self->_notifyTitle object:self userInfo:self->_prodMetrics];
  }

  else
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"bad metrics channel: !PROD"];
    v20 = MEMORY[0x277D3F178];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KICE/PLICEBBMetric.m"];
    v22 = [v21 lastPathComponent];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLICEBBMetric modelProdMetricsNotify]"];
    [v20 logMessage:v19 fromFile:v22 fromFunction:v23 fromLineNumber:419];

    v24 = PLLogCommon();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v33 = v19;
      _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      __assert_rtn("[PLICEBBMetric modelProdMetricsNotify]", "PLICEBBMetric.m", 420, "0");
    }
  }

  v25 = *MEMORY[0x277D85DE8];
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
  [(NSMutableDictionary *)self->_prodMetrics setObject:&unk_282C11718 forKeyedSubscript:@"duration"];
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
  v11 = [[PLICEBBHardwareMessage alloc] initEntryWithBBTS:v10 triggerId:v8 seqnum:v9 payload:0 logAgent:self->_logAgent];

  storeMetricsLogger = self->_storeMetricsLogger;
  self->_storeMetricsLogger = v11;
}

@end