@interface PLICEBBHardwareMessage
+ (id)entryEventBackwardDefinitionBBIceEventMetrics;
+ (id)entryEventBackwardDefinitionBBIcePeriodicMetrics;
- (PLICEBBHardwareMessage)init;
- (id)decodeEventPayload:(id)payload forMetricId:(id)id;
- (id)decodePayload:(id)payload forMetricId:(id)id;
- (id)initEntryWithBBTS:(id)s triggerId:(id)id seqnum:(id)seqnum payload:(id)payload logAgent:(id)agent;
- (void)addToListMetric:(id)metric payload:(id)payload;
- (void)componentCarrierForClass:(id)class forEntry:(id)entry;
- (void)cpcStatsForClass:(id)class forEntry:(id)entry;
- (void)duplexModeForClass:(id)class forEntry:(id)entry;
- (void)logBBIceAperiodicMetrics;
- (void)logBBIcePeriodicMetrics;
- (void)pdcchStateStatsFor:(id)for forEntry:(id)entry;
- (void)protocolHist2ForClass:(id)class forEntry:(id)entry;
- (void)protocolHistForClass:(id)class forEntry:(id)entry;
- (void)protocolPerStateForClass:(id)class forEntry:(id)entry;
- (void)rrcModeHistForClass:(id)class forEntry:(id)entry;
@end

@implementation PLICEBBHardwareMessage

- (PLICEBBHardwareMessage)init
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    __assert_rtn("[PLICEBBHardwareMessage init]", "PLICEBBHardwareMessage.m", 88, "0");
  }

  return 0;
}

- (id)initEntryWithBBTS:(id)s triggerId:(id)id seqnum:(id)seqnum payload:(id)payload logAgent:(id)agent
{
  sCopy = s;
  idCopy = id;
  seqnumCopy = seqnum;
  payloadCopy = payload;
  agentCopy = agent;
  v29.receiver = self;
  v29.super_class = PLICEBBHardwareMessage;
  v17 = [(PLICEBBHardwareMessage *)&v29 init];
  if (v17)
  {
    v18 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:{(objc_msgSend(sCopy, "integerValue") / 1000)}];
    convertFromBasebandToMonotonic = [v18 convertFromBasebandToMonotonic];
    bbMonotonic = v17->_bbMonotonic;
    v17->_bbMonotonic = convertFromBasebandToMonotonic;

    objc_storeStrong(&v17->_triggerId, id);
    objc_storeStrong(&v17->_bbtimestamp, s);
    objc_storeStrong(&v17->_triggerCnt, seqnum);
    v21 = [PLICEBBMetricUtility convertToStringData:payloadCopy];
    metricData = v17->_metricData;
    v17->_metricData = v21;

    v23 = objc_opt_new();
    metricIdArr = v17->_metricIdArr;
    v17->_metricIdArr = v23;

    v25 = objc_opt_new();
    metricDataArr = v17->_metricDataArr;
    v17->_metricDataArr = v25;

    objc_storeStrong(&v17->_logAgent, agent);
  }

  return v17;
}

+ (id)entryEventBackwardDefinitionBBIcePeriodicMetrics
{
  v29[2] = *MEMORY[0x277D85DE8];
  v28[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F558];
  v26[0] = *MEMORY[0x277D3F568];
  v26[1] = v2;
  v27[0] = &unk_282C1CAD8;
  v27[1] = MEMORY[0x277CBEC38];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v29[0] = v18;
  v28[1] = *MEMORY[0x277D3F540];
  v24[0] = @"triggerId";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v25[0] = commonTypeDict_IntegerFormat;
  v24[1] = @"triggerCnt";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v25[1] = commonTypeDict_IntegerFormat2;
  v24[2] = @"bbtimestamp";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v25[2] = commonTypeDict_IntegerFormat3;
  v24[3] = @"mid";
  v7 = *MEMORY[0x277D3F598];
  v21[0] = *MEMORY[0x277D3F5A8];
  v6 = v21[0];
  v21[1] = v7;
  v23[0] = &unk_282C12E28;
  v23[1] = &unk_282C12E40;
  v22 = *MEMORY[0x277D3F5A0];
  v8 = v22;
  v23[2] = &unk_282C12E58;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v21 count:3];
  v25[3] = v9;
  v24[4] = @"data";
  v19[0] = v6;
  v19[1] = v7;
  v20[0] = &unk_282C12E28;
  v20[1] = &unk_282C12E40;
  v19[2] = v8;
  v20[2] = &unk_282C12E70;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v25[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:5];
  v29[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionBBIceEventMetrics
{
  v21[2] = *MEMORY[0x277D85DE8];
  v20[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F558];
  v18[0] = *MEMORY[0x277D3F568];
  v18[1] = v2;
  v19[0] = &unk_282C1CAE8;
  v19[1] = MEMORY[0x277CBEC38];
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v21[0] = v15;
  v20[1] = *MEMORY[0x277D3F540];
  v16[0] = @"triggerCnt";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v17[0] = commonTypeDict_IntegerFormat;
  v16[1] = @"bbtimestamp";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v17[1] = commonTypeDict_IntegerFormat2;
  v16[2] = @"metricId";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v17[2] = commonTypeDict_IntegerFormat3;
  v16[3] = @"metricData";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v17[3] = commonTypeDict_StringFormat;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v21[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)logBBIceAperiodicMetrics
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v20 = "[PLICEBBHardwareMessage logBBIceAperiodicMetrics]";
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __50__PLICEBBHardwareMessage_logBBIceAperiodicMetrics__block_invoke;
    v17 = &__block_descriptor_40_e5_v8__0lu32l8;
    v18 = v4;
    if (qword_2811F7FB8 != -1)
    {
      dispatch_once(&qword_2811F7FB8, &block);
    }

    if (_MergedGlobals_113 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLICEBBHardwareMessage logBBIceAperiodicMetrics]", block, v15, v16, v17, v18];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KICE/PLICEBBHardwareMessage.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLICEBBHardwareMessage logBBIceAperiodicMetrics]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:193];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v11 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BBIceEventMetrics"];
  v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  if (v12)
  {
    if (([MEMORY[0x277D3F208] isBasebandClass:1003009] & 1) == 0)
    {
      [v12 setEntryDate:self->_bbMonotonic];
    }

    [v12 setObject:self->_bbtimestamp forKeyedSubscript:@"bbtimestamp"];
    [v12 setObject:self->_triggerCnt forKeyedSubscript:@"triggerCnt"];
    [v12 setObject:self->_triggerId forKeyedSubscript:@"metricId"];
    [v12 setObject:self->_metricData forKeyedSubscript:@"metricData"];
    [(PLAgent *)self->_logAgent logEntry:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __50__PLICEBBHardwareMessage_logBBIceAperiodicMetrics__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_113 = result;
  return result;
}

- (void)logBBIcePeriodicMetrics
{
  v20 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __49__PLICEBBHardwareMessage_logBBIcePeriodicMetrics__block_invoke;
    v16 = &__block_descriptor_40_e5_v8__0lu32l8;
    v17 = v3;
    if (qword_2811F7FC0 != -1)
    {
      dispatch_once(&qword_2811F7FC0, &block);
    }

    if (byte_2811F7FA9 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLICEBBHardwareMessage logBBIcePeriodicMetrics]", block, v14, v15, v16, v17];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KICE/PLICEBBHardwareMessage.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLICEBBHardwareMessage logBBIcePeriodicMetrics]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:214];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BBIcePeriodicMetrics"];
  v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  if (v11)
  {
    if (([MEMORY[0x277D3F208] isBasebandClass:1003009] & 1) == 0)
    {
      [v11 setEntryDate:self->_bbMonotonic];
    }

    [v11 setObject:self->_triggerId forKeyedSubscript:@"triggerId"];
    [v11 setObject:self->_bbtimestamp forKeyedSubscript:@"bbtimestamp"];
    [v11 setObject:self->_triggerCnt forKeyedSubscript:@"triggerCnt"];
    [v11 setObject:self->_metricIdArr forKeyedSubscript:@"mid"];
    [v11 setObject:self->_metricDataArr forKeyedSubscript:@"data"];
    [(PLAgent *)self->_logAgent logEntry:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __49__PLICEBBHardwareMessage_logBBIcePeriodicMetrics__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7FA9 = result;
  return result;
}

- (void)addToListMetric:(id)metric payload:(id)payload
{
  v26 = *MEMORY[0x277D85DE8];
  metricCopy = metric;
  v7 = MEMORY[0x277D3F180];
  payloadCopy = payload;
  if ([v7 debugEnabled])
  {
    v9 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __50__PLICEBBHardwareMessage_addToListMetric_payload___block_invoke;
    v22 = &__block_descriptor_40_e5_v8__0lu32l8;
    v23 = v9;
    if (qword_2811F7FC8 != -1)
    {
      dispatch_once(&qword_2811F7FC8, &block);
    }

    if (byte_2811F7FAA == 1)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLICEBBHardwareMessage addToListMetric:payload:]", block, v20, v21, v22, v23];
      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KICE/PLICEBBHardwareMessage.m"];
      lastPathComponent = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLICEBBHardwareMessage addToListMetric:payload:]"];
      [v11 logMessage:v10 fromFile:lastPathComponent fromFunction:v14 fromLineNumber:236];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v25 = v10;
        _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [(NSMutableArray *)self->_metricIdArr addObject:metricCopy];
  metricDataArr = self->_metricDataArr;
  v17 = [PLICEBBMetricUtility convertToStringData:payloadCopy];

  [(NSMutableArray *)metricDataArr addObject:v17];
  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __50__PLICEBBHardwareMessage_addToListMetric_payload___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7FAA = result;
  return result;
}

- (id)decodeEventPayload:(id)payload forMetricId:(id)id
{
  payloadCopy = payload;
  idCopy = id;
  v7 = objc_opt_new();
  [v7 setObject:idCopy forKeyedSubscript:@"metricId"];
  integerValue = [idCopy integerValue];
  v9 = 0;
  if (integerValue > 3985682)
  {
    if (integerValue <= 3985947)
    {
      if (integerValue <= 3985684)
      {
        if (integerValue == 3985683)
        {
          v10 = KCellularWcdmaRrcConfiguration;
        }

        else
        {
          v10 = KCellularWcdmaRabStatus;
        }

        goto LABEL_39;
      }

      if (integerValue == 3985685)
      {
        v10 = KCellularWcdmaL1State;
        goto LABEL_39;
      }

      if (integerValue != 3985686)
      {
        goto LABEL_43;
      }

      goto LABEL_25;
    }

    if (integerValue > 3986693)
    {
      if (integerValue == 3986694)
      {
        v10 = KCellularCellPlmnSearchCount;
      }

      else
      {
        if (integerValue != 3986696)
        {
          goto LABEL_43;
        }

        v10 = KCellularProtocolStackPowerState;
      }
    }

    else if (integerValue == 3985948)
    {
      v10 = KCellularTdsL1State;
    }

    else
    {
      if (integerValue != 3986196)
      {
        goto LABEL_43;
      }

      v10 = KCellularLteDataInactivityBeforeIdle;
    }
  }

  else if (integerValue > 3952164)
  {
    if (integerValue <= 3985415)
    {
      if (integerValue != 3952165)
      {
        if (integerValue != 3973391)
        {
          goto LABEL_43;
        }

        v11 = [[KCellularServingCellLost alloc] initWithData:payloadCopy];
        if (![(KCellularServingCellLost *)v11 hasTimestamp])
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

      goto LABEL_25;
    }

    if (integerValue == 3985416)
    {
      v10 = KCellularGsmL1State;
    }

    else
    {
      if (integerValue != 3985682)
      {
        goto LABEL_43;
      }

      v10 = KCellularWcdmaRrcConnectionState;
    }
  }

  else
  {
    if (integerValue <= 3952137)
    {
      if (integerValue != 3945603)
      {
        if (integerValue != 3952132)
        {
          goto LABEL_43;
        }

        v10 = KCellularLteRrcState;
        goto LABEL_39;
      }

LABEL_25:
      v10 = KCellularLteRadioLinkFailure;
      goto LABEL_39;
    }

    if (integerValue == 3952138)
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        __assert_rtn("[PLICEBBHardwareMessage decodeEventPayload:forMetricId:]", "PLICEBBHardwareMessage.m", 261, "0");
      }

      goto LABEL_42;
    }

    if (integerValue != 3952152)
    {
      goto LABEL_43;
    }

    v10 = KCellularLteCdrxConfig;
  }

LABEL_39:
  v11 = [[v10 alloc] initWithData:payloadCopy];
  if ([(KCellularServingCellLost *)v11 hasTimestamp])
  {
LABEL_40:
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[KCellularServingCellLost timestamp](v11, "timestamp")}];
    [v7 setObject:v12 forKeyedSubscript:@"bbtimestamp"];
  }

LABEL_41:
  [v7 setObject:@"event" forKeyedSubscript:@"type"];

LABEL_42:
  v9 = v7;
LABEL_43:

  return v9;
}

- (id)decodePayload:(id)payload forMetricId:(id)id
{
  v111 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  idCopy = id;
  v8 = objc_opt_new();
  [v8 setObject:idCopy forKeyedSubscript:@"metricId"];
  v9 = [[PowerlogMetricLog alloc] initWithData:payloadCopy];
  if ([(PowerlogMetricLog *)v9 kCellularPerClientProfileTriggerCountsCount]>= 2)
  {
    [MEMORY[0x277D3F180] debugEnabled];
  }

  integerValue = [idCopy integerValue];
  if (integerValue <= 3985930)
  {
    if (integerValue <= 3985674)
    {
      if (integerValue <= 3985414)
      {
        if (integerValue <= 3985411)
        {
          if (integerValue == 3932163)
          {
            if ([MEMORY[0x277D3F180] debugEnabled])
            {
              __assert_rtn("[PLICEBBHardwareMessage decodePayload:forMetricId:]", "PLICEBBHardwareMessage.m", 427, "0");
            }

            goto LABEL_160;
          }

          if (integerValue != 3952496)
          {
            goto LABEL_164;
          }

          v11 = [(PowerlogMetricLog *)v9 kCellularLtePdcchStateStatsAtIndex:0];
          [(PLICEBBHardwareMessage *)self pdcchStateStatsFor:v11 forEntry:v8];
          goto LABEL_159;
        }

        if (integerValue == 3985412)
        {
          v13 = [(PowerlogMetricLog *)v9 kCellularGsmServingCellRssiHistAtIndex:0];
          goto LABEL_158;
        }

        if (integerValue == 3985413)
        {
          [(PowerlogMetricLog *)v9 kCellularGsmServingCellSnrHistAtIndex:0];
        }

        else
        {
          [(PowerlogMetricLog *)v9 kCellularGsmTxPowerHistAtIndex:0];
        }

        v13 = LABEL_64:;
        goto LABEL_158;
      }

      if (integerValue <= 3985671)
      {
        if (integerValue == 3985415)
        {
          v13 = [(PowerlogMetricLog *)v9 kCellularGsmConnectedModeHistAtIndex:0];
          goto LABEL_158;
        }

        if (integerValue == 3985670)
        {
          v11 = [(PowerlogMetricLog *)v9 kCellularWcdmaCpcStatAtIndex:0];
          [(PLICEBBHardwareMessage *)self cpcStatsForClass:v11 forEntry:v8];
          goto LABEL_159;
        }

        if (integerValue != 3985671)
        {
          goto LABEL_164;
        }

        v12 = [(PowerlogMetricLog *)v9 kCellularWcdmaRxDiversityHistAtIndex:0];
        goto LABEL_155;
      }

      if (integerValue == 3985672)
      {
        v12 = [(PowerlogMetricLog *)v9 kCellularWcdmaServingCellRx0RssiHistAtIndex:0];
        goto LABEL_155;
      }

      if (integerValue == 3985673)
      {
        [(PowerlogMetricLog *)v9 kCellularWcdmaServingCellRx1RssiHistAtIndex:0];
      }

      else
      {
        [(PowerlogMetricLog *)v9 kCellularWcdmaServingCellRx0EcNoHistAtIndex:0];
      }
    }

    else
    {
      if (integerValue <= 3985680)
      {
        if (integerValue > 3985677)
        {
          if (integerValue == 3985678)
          {
            v13 = [(PowerlogMetricLog *)v9 kCellularWcdmaReceiverStatusOnC1HistAtIndex:0];
            goto LABEL_158;
          }

          if (integerValue == 3985679)
          {
            [(PowerlogMetricLog *)v9 kCellularWcdmaCarrierStatusHistAtIndex:0];
          }

          else
          {
            [(PowerlogMetricLog *)v9 kCellularWcdmaRabModeHistAtIndex:0];
          }

          goto LABEL_64;
        }

        if (integerValue != 3985675)
        {
          if (integerValue == 3985676)
          {
            [(PowerlogMetricLog *)v9 kCellularWcdmaTxPowerHistAtIndex:0];
          }

          else
          {
            [(PowerlogMetricLog *)v9 kCellularWcdmaReceiverStatusOnC0HistAtIndex:0];
          }

          goto LABEL_64;
        }

        v12 = [(PowerlogMetricLog *)v9 kCellularWcdmaServingCellRx1EcNoHistAtIndex:0];
LABEL_155:
        v11 = v12;
        [(PLICEBBHardwareMessage *)self rrcModeHistForClass:v12 forEntry:v8];
        goto LABEL_159;
      }

      if (integerValue <= 3985927)
      {
        switch(integerValue)
        {
          case 3985681:
            v13 = [(PowerlogMetricLog *)v9 kCellularWcdmaRabTypeHistAtIndex:0];
            goto LABEL_158;
          case 3985926:
            v12 = [(PowerlogMetricLog *)v9 kCellularTdsRxDiversityHistAtIndex:0];
            break;
          case 3985927:
            v12 = [(PowerlogMetricLog *)v9 kCellularTdsServingCellRx0RssiHistAtIndex:0];
            break;
          default:
            goto LABEL_164;
        }

        goto LABEL_155;
      }

      if (integerValue == 3985928)
      {
        v12 = [(PowerlogMetricLog *)v9 kCellularTdsServingCellRx1RssiHistAtIndex:0];
        goto LABEL_155;
      }

      if (integerValue == 3985929)
      {
        [(PowerlogMetricLog *)v9 kCellularTdsServingCellRx0RscpHistAtIndex:0];
      }

      else
      {
        [(PowerlogMetricLog *)v9 kCellularTdsServingCellRx1RscpHistAtIndex:0];
      }
    }
    v12 = ;
    goto LABEL_155;
  }

  if (integerValue <= 3986692)
  {
    if (integerValue > 3986178)
    {
      switch(integerValue)
      {
        case 3986179:
          v11 = [(PowerlogMetricLog *)v9 kCellularLteFwDuplexModeAtIndex:0];
          [(PLICEBBHardwareMessage *)self duplexModeForClass:v11 forEntry:v8];
          goto LABEL_159;
        case 3986180:
          v12 = [(PowerlogMetricLog *)v9 kCellularLteServingCellRsrpHistAtIndex:0];
          goto LABEL_155;
        case 3986181:
          v12 = [(PowerlogMetricLog *)v9 kCellularLteServingCellSinrHistAtIndex:0];
          goto LABEL_155;
        case 3986182:
          v12 = [(PowerlogMetricLog *)v9 kCellularLteSleepStateHistAtIndex:0];
          goto LABEL_155;
        case 3986183:
          v13 = [(PowerlogMetricLog *)v9 kCellularLteTxPowerHistAtIndex:0];
          goto LABEL_158;
        case 3986184:
          v13 = [(PowerlogMetricLog *)v9 kCellularLteDlSccStateHistAtIndex:0];
          goto LABEL_158;
        case 3986185:
          v13 = [(PowerlogMetricLog *)v9 kCellularLteUlSccStateHistAtIndex:0];
          goto LABEL_158;
        case 3986186:
          v13 = [(PowerlogMetricLog *)v9 kCellularLteAdvancedRxStateHistAtIndex:0];
          goto LABEL_158;
        case 3986187:
          v11 = [(PowerlogMetricLog *)v9 kCellularLteComponentCarrierInfoAtIndex:0];
          [(PLICEBBHardwareMessage *)self componentCarrierForClass:v11 forEntry:v8];
          goto LABEL_159;
        case 3986188:
          v13 = [(PowerlogMetricLog *)v9 kCellularLteRxTxStateHistAtIndex:0];
          goto LABEL_158;
        case 3986189:
          v13 = [(PowerlogMetricLog *)v9 kCellularLteTotalDlTbsHistAtIndex:0];
          goto LABEL_158;
        case 3986200:
          v58 = [(PowerlogMetricLog *)v9 kCellularLteDlSccStateHistV3AtIndex:0];
          break;
        case 3986201:
          v58 = [(PowerlogMetricLog *)v9 kCellularLteRxDiversityHistAtIndex:0];
          break;
        default:
          goto LABEL_164;
      }

      v11 = v58;
      [(PLICEBBHardwareMessage *)self protocolPerStateForClass:v58 forEntry:v8];
      goto LABEL_159;
    }

    switch(integerValue)
    {
      case 3985931:
        v13 = [(PowerlogMetricLog *)v9 kCellularTdsTxPowerHistAtIndex:0];
        goto LABEL_158;
      case 3985941:
        v13 = [(PowerlogMetricLog *)v9 kCellularTdsRabModeHistAtIndex:0];
        goto LABEL_158;
      case 3985942:
        v13 = [(PowerlogMetricLog *)v9 kCellularTdsRabTypeHistAtIndex:0];
        goto LABEL_158;
    }

    goto LABEL_164;
  }

  if (integerValue > 3987205)
  {
    if (integerValue > 3987332)
    {
      if (integerValue == 3987333)
      {
        v13 = [(PowerlogMetricLog *)v9 kCellularCdmaEvdoTxPowerHistAtIndex:0];
        goto LABEL_158;
      }

      if (integerValue == 3987334)
      {
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v36 = objc_opt_class();
          v105[0] = MEMORY[0x277D85DD0];
          v105[1] = 3221225472;
          v105[2] = __52__PLICEBBHardwareMessage_decodePayload_forMetricId___block_invoke_103;
          v105[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v105[4] = v36;
          if (qword_2811F7FE8 != -1)
          {
            dispatch_once(&qword_2811F7FE8, v105);
          }

          if (byte_2811F7FAE == 1)
          {
            v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"ICE_HW_RF_EVDO_HIST - plMetricLog %@", v9];
            v94 = MEMORY[0x277D3F178];
            v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KICE/PLICEBBHardwareMessage.m"];
            lastPathComponent = [v38 lastPathComponent];
            v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLICEBBHardwareMessage decodePayload:forMetricId:]"];
            [v94 logMessage:v37 fromFile:lastPathComponent fromFunction:v40 fromLineNumber:700];

            v41 = v37;
            v42 = PLLogCommon();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v110 = v41;
              _os_log_debug_impl(&dword_21A4C6000, v42, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        v43 = [(PowerlogMetricLog *)v9 kCellularCdmaEvdoProtocolStackStateHistAtIndex:0];
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v44 = objc_opt_class();
          v104[0] = MEMORY[0x277D85DD0];
          v104[1] = 3221225472;
          v104[2] = __52__PLICEBBHardwareMessage_decodePayload_forMetricId___block_invoke_109;
          v104[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v104[4] = v44;
          if (qword_2811F7FF0 != -1)
          {
            dispatch_once(&qword_2811F7FF0, v104);
          }

          if (byte_2811F7FAF == 1)
          {
            v95 = v43;
            v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"ICE_HW_RF_EVDO_HIST - myClass %@", v43];
            v89 = MEMORY[0x277D3F178];
            v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KICE/PLICEBBHardwareMessage.m"];
            lastPathComponent2 = [v46 lastPathComponent];
            v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLICEBBHardwareMessage decodePayload:forMetricId:]"];
            [v89 logMessage:v45 fromFile:lastPathComponent2 fromFunction:v48 fromLineNumber:702];

            v49 = v45;
            v50 = PLLogCommon();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v110 = v49;
              _os_log_debug_impl(&dword_21A4C6000, v50, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v43 = v95;
          }
        }

        [(PLICEBBHardwareMessage *)self protocolHist2ForClass:v43 forEntry:v8];
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v51 = objc_opt_class();
          v103[0] = MEMORY[0x277D85DD0];
          v103[1] = 3221225472;
          v103[2] = __52__PLICEBBHardwareMessage_decodePayload_forMetricId___block_invoke_115;
          v103[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v103[4] = v51;
          if (qword_2811F7FF8 != -1)
          {
            dispatch_once(&qword_2811F7FF8, v103);
          }

          if (byte_2811F7FB0 == 1)
          {
            v96 = v43;
            v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"ICE_HW_RF_EVDO_HIST - entry %@", v8];
            v53 = MEMORY[0x277D3F178];
            v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KICE/PLICEBBHardwareMessage.m"];
            lastPathComponent3 = [v54 lastPathComponent];
            v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLICEBBHardwareMessage decodePayload:forMetricId:]"];
            [v53 logMessage:v52 fromFile:lastPathComponent3 fromFunction:v56 fromLineNumber:704];

            v57 = PLLogCommon();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v110 = v52;
              _os_log_debug_impl(&dword_21A4C6000, v57, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v43 = v96;
          }
        }

        goto LABEL_160;
      }

      goto LABEL_164;
    }

    if (integerValue == 3987206)
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v59 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __52__PLICEBBHardwareMessage_decodePayload_forMetricId___block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v59;
        if (qword_2811F7FD0 != -1)
        {
          dispatch_once(&qword_2811F7FD0, block);
        }

        if (byte_2811F7FAB == 1)
        {
          v60 = [MEMORY[0x277CCACA8] stringWithFormat:@"ICE_HW_RF_CDMA1X_HIST - plMetricLog %@", v9];
          v97 = MEMORY[0x277D3F178];
          v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KICE/PLICEBBHardwareMessage.m"];
          lastPathComponent4 = [v61 lastPathComponent];
          v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLICEBBHardwareMessage decodePayload:forMetricId:]"];
          [v97 logMessage:v60 fromFile:lastPathComponent4 fromFunction:v63 fromLineNumber:685];

          v64 = v60;
          v65 = PLLogCommon();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v110 = v64;
            _os_log_debug_impl(&dword_21A4C6000, v65, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      v21 = [(PowerlogMetricLog *)v9 kCellularCdma1XProtocolStackStateHistAtIndex:0];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v66 = objc_opt_class();
        v107[0] = MEMORY[0x277D85DD0];
        v107[1] = 3221225472;
        v107[2] = __52__PLICEBBHardwareMessage_decodePayload_forMetricId___block_invoke_91;
        v107[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v107[4] = v66;
        if (qword_2811F7FD8 != -1)
        {
          dispatch_once(&qword_2811F7FD8, v107);
        }

        if (byte_2811F7FAC == 1)
        {
          v98 = v21;
          v67 = [MEMORY[0x277CCACA8] stringWithFormat:@"ICE_HW_RF_CDMA1X_HIST - myClass %@", v21];
          v90 = MEMORY[0x277D3F178];
          v68 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KICE/PLICEBBHardwareMessage.m"];
          lastPathComponent5 = [v68 lastPathComponent];
          v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLICEBBHardwareMessage decodePayload:forMetricId:]"];
          [v90 logMessage:v67 fromFile:lastPathComponent5 fromFunction:v70 fromLineNumber:687];

          v71 = v67;
          v72 = PLLogCommon();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v110 = v71;
            _os_log_debug_impl(&dword_21A4C6000, v72, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v21 = v98;
        }
      }

      [(PLICEBBHardwareMessage *)self protocolHist2ForClass:v21 forEntry:v8];
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_136;
      }

      v73 = objc_opt_class();
      v106[0] = MEMORY[0x277D85DD0];
      v106[1] = 3221225472;
      v106[2] = __52__PLICEBBHardwareMessage_decodePayload_forMetricId___block_invoke_97;
      v106[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v106[4] = v73;
      if (qword_2811F7FE0 != -1)
      {
        dispatch_once(&qword_2811F7FE0, v106);
      }

      if (byte_2811F7FAD != 1)
      {
        goto LABEL_136;
      }

      v93 = v21;
      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"ICE_HW_RF_CDMA1X_HIST - entry %@", v8];
      v74 = MEMORY[0x277D3F178];
      v75 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KICE/PLICEBBHardwareMessage.m"];
      lastPathComponent6 = [v75 lastPathComponent];
      v77 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLICEBBHardwareMessage decodePayload:forMetricId:]"];
      [v74 logMessage:v30 fromFile:lastPathComponent6 fromFunction:v77 fromLineNumber:689];

      v35 = PLLogCommon();
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_135;
      }

      *buf = 138412290;
      v110 = v30;
    }

    else
    {
      if (integerValue != 3987207)
      {
        goto LABEL_164;
      }

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v14 = objc_opt_class();
        v102[0] = MEMORY[0x277D85DD0];
        v102[1] = 3221225472;
        v102[2] = __52__PLICEBBHardwareMessage_decodePayload_forMetricId___block_invoke_121;
        v102[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v102[4] = v14;
        if (qword_2811F8000 != -1)
        {
          dispatch_once(&qword_2811F8000, v102);
        }

        if (byte_2811F7FB1 == 1)
        {
          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"ICE_HW_RF_CDMA1X_CONN_HIST - plMetricLog %@", v9];
          v91 = MEMORY[0x277D3F178];
          v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KICE/PLICEBBHardwareMessage.m"];
          lastPathComponent7 = [v16 lastPathComponent];
          v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLICEBBHardwareMessage decodePayload:forMetricId:]"];
          [v91 logMessage:v15 fromFile:lastPathComponent7 fromFunction:v18 fromLineNumber:709];

          v19 = v15;
          v20 = PLLogCommon();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v110 = v19;
            _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      v21 = [(PowerlogMetricLog *)v9 kCellularCdma1XConnectionHistAtIndex:0];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v22 = objc_opt_class();
        v101[0] = MEMORY[0x277D85DD0];
        v101[1] = 3221225472;
        v101[2] = __52__PLICEBBHardwareMessage_decodePayload_forMetricId___block_invoke_127;
        v101[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v101[4] = v22;
        if (qword_2811F8008 != -1)
        {
          dispatch_once(&qword_2811F8008, v101);
        }

        if (byte_2811F7FB2 == 1)
        {
          v92 = v21;
          v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"ICE_HW_RF_CDMA1X_CONN_HIST - myClass %@", v21];
          v88 = MEMORY[0x277D3F178];
          v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KICE/PLICEBBHardwareMessage.m"];
          lastPathComponent8 = [v24 lastPathComponent];
          v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLICEBBHardwareMessage decodePayload:forMetricId:]"];
          [v88 logMessage:v23 fromFile:lastPathComponent8 fromFunction:v26 fromLineNumber:711];

          v27 = v23;
          v28 = PLLogCommon();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v110 = v27;
            _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v21 = v92;
        }
      }

      [(PLICEBBHardwareMessage *)self protocolHistForClass:v21 forEntry:v8];
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_136;
      }

      v29 = objc_opt_class();
      v100[0] = MEMORY[0x277D85DD0];
      v100[1] = 3221225472;
      v100[2] = __52__PLICEBBHardwareMessage_decodePayload_forMetricId___block_invoke_133;
      v100[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v100[4] = v29;
      if (qword_2811F8010 != -1)
      {
        dispatch_once(&qword_2811F8010, v100);
      }

      if (byte_2811F7FB3 != 1)
      {
LABEL_136:

LABEL_160:
        v78 = v8;
        goto LABEL_161;
      }

      v93 = v21;
      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"ICE_HW_RF_CDMA1X_CONN_HIST - entry %@", v8];
      v31 = MEMORY[0x277D3F178];
      v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KICE/PLICEBBHardwareMessage.m"];
      lastPathComponent9 = [v32 lastPathComponent];
      v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLICEBBHardwareMessage decodePayload:forMetricId:]"];
      [v31 logMessage:v30 fromFile:lastPathComponent9 fromFunction:v34 fromLineNumber:713];

      v35 = PLLogCommon();
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
LABEL_135:

        v21 = v93;
        goto LABEL_136;
      }

      *buf = 138412290;
      v110 = v30;
    }

    _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    goto LABEL_135;
  }

  if (integerValue > 3986705)
  {
    if (integerValue != 3986706)
    {
      if (integerValue == 3987205)
      {
        v13 = [(PowerlogMetricLog *)v9 kCellularCdma1XTxPowerHistAtIndex:0];
        goto LABEL_158;
      }

      goto LABEL_164;
    }

    v11 = [(PowerlogMetricLog *)v9 kCellularProtocolStackStateHist2AtIndex:0];
    [(PLICEBBHardwareMessage *)self protocolHist2ForClass:v11 forEntry:v8];
LABEL_159:

    goto LABEL_160;
  }

  if (integerValue == 3986693)
  {
    v13 = [(PowerlogMetricLog *)v9 kCellularProtocolStackStateHistAtIndex:0];
    goto LABEL_158;
  }

  if (integerValue == 3986695)
  {
    v13 = [(PowerlogMetricLog *)v9 kCellularCellPlmnSearchHistAtIndex:0];
LABEL_158:
    v11 = v13;
    [(PLICEBBHardwareMessage *)self protocolHistForClass:v13 forEntry:v8];
    goto LABEL_159;
  }

LABEL_164:
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v81 = objc_opt_class();
    v99[0] = MEMORY[0x277D85DD0];
    v99[1] = 3221225472;
    v99[2] = __52__PLICEBBHardwareMessage_decodePayload_forMetricId___block_invoke_139;
    v99[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v99[4] = v81;
    if (qword_2811F8018 != -1)
    {
      dispatch_once(&qword_2811F8018, v99);
    }

    if (byte_2811F7FB4 == 1)
    {
      v82 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: unexpected metric Id"];
      v83 = MEMORY[0x277D3F178];
      v84 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KICE/PLICEBBHardwareMessage.m"];
      lastPathComponent10 = [v84 lastPathComponent];
      v86 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLICEBBHardwareMessage decodePayload:forMetricId:]"];
      [v83 logMessage:v82 fromFile:lastPathComponent10 fromFunction:v86 fromLineNumber:730];

      v87 = PLLogCommon();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v110 = v82;
        _os_log_debug_impl(&dword_21A4C6000, v87, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v78 = 0;
LABEL_161:

  v79 = *MEMORY[0x277D85DE8];

  return v78;
}

uint64_t __52__PLICEBBHardwareMessage_decodePayload_forMetricId___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7FAB = result;
  return result;
}

uint64_t __52__PLICEBBHardwareMessage_decodePayload_forMetricId___block_invoke_91(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7FAC = result;
  return result;
}

uint64_t __52__PLICEBBHardwareMessage_decodePayload_forMetricId___block_invoke_97(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7FAD = result;
  return result;
}

uint64_t __52__PLICEBBHardwareMessage_decodePayload_forMetricId___block_invoke_103(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7FAE = result;
  return result;
}

uint64_t __52__PLICEBBHardwareMessage_decodePayload_forMetricId___block_invoke_109(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7FAF = result;
  return result;
}

uint64_t __52__PLICEBBHardwareMessage_decodePayload_forMetricId___block_invoke_115(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7FB0 = result;
  return result;
}

uint64_t __52__PLICEBBHardwareMessage_decodePayload_forMetricId___block_invoke_121(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7FB1 = result;
  return result;
}

uint64_t __52__PLICEBBHardwareMessage_decodePayload_forMetricId___block_invoke_127(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7FB2 = result;
  return result;
}

uint64_t __52__PLICEBBHardwareMessage_decodePayload_forMetricId___block_invoke_133(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7FB3 = result;
  return result;
}

uint64_t __52__PLICEBBHardwareMessage_decodePayload_forMetricId___block_invoke_139(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7FB4 = result;
  return result;
}

- (void)rrcModeHistForClass:(id)class forEntry:(id)entry
{
  classCopy = class;
  entryCopy = entry;
  if ([classCopy hasTimestamp])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(classCopy, "timestamp")}];
    [entryCopy setObject:v6 forKeyedSubscript:@"bbtimestamp"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([classCopy hasDurationMs])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durationMs")}];
    [entryCopy setObject:v7 forKeyedSubscript:@"duration"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"duration"];
  }

  if ([classCopy hasIdleDurBin0])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "idleDurBin0")}];
    [entryCopy setObject:v8 forKeyedSubscript:@"idle_dur_bin_0"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"idle_dur_bin_0"];
  }

  if ([classCopy hasIdleDurBin1])
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "idleDurBin1")}];
    [entryCopy setObject:v9 forKeyedSubscript:@"idle_dur_bin_1"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"idle_dur_bin_1"];
  }

  if ([classCopy hasIdleDurBin2])
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "idleDurBin2")}];
    [entryCopy setObject:v10 forKeyedSubscript:@"idle_dur_bin_2"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"idle_dur_bin_2"];
  }

  if ([classCopy hasIdleDurBin3])
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "idleDurBin3")}];
    [entryCopy setObject:v11 forKeyedSubscript:@"idle_dur_bin_3"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"idle_dur_bin_3"];
  }

  if ([classCopy hasIdleDurBin4])
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "idleDurBin4")}];
    [entryCopy setObject:v12 forKeyedSubscript:@"idle_dur_bin_4"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"idle_dur_bin_4"];
  }

  if ([classCopy hasIdleDurBin5])
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "idleDurBin5")}];
    [entryCopy setObject:v13 forKeyedSubscript:@"idle_dur_bin_5"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"idle_dur_bin_5"];
  }

  if ([classCopy hasIdleDurBin6])
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "idleDurBin6")}];
    [entryCopy setObject:v14 forKeyedSubscript:@"idle_dur_bin_6"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"idle_dur_bin_6"];
  }

  if ([classCopy hasIdleDurBin7])
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "idleDurBin7")}];
    [entryCopy setObject:v15 forKeyedSubscript:@"idle_dur_bin_7"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"idle_dur_bin_7"];
  }

  if ([classCopy hasIdleDurBin8])
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "idleDurBin8")}];
    [entryCopy setObject:v16 forKeyedSubscript:@"idle_dur_bin_8"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"idle_dur_bin_8"];
  }

  if ([classCopy hasIdleDurBin9])
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "idleDurBin9")}];
    [entryCopy setObject:v17 forKeyedSubscript:@"idle_dur_bin_9"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"idle_dur_bin_9"];
  }

  if ([classCopy hasIdleDurBin10])
  {
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "idleDurBin10")}];
    [entryCopy setObject:v18 forKeyedSubscript:@"idle_dur_bin_10"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"idle_dur_bin_10"];
  }

  if ([classCopy hasIdleDurBin11])
  {
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "idleDurBin11")}];
    [entryCopy setObject:v19 forKeyedSubscript:@"idle_dur_bin_11"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"idle_dur_bin_11"];
  }

  if ([classCopy hasConnDurBin0])
  {
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "connDurBin0")}];
    [entryCopy setObject:v20 forKeyedSubscript:@"conn_dur_bin_0"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"conn_dur_bin_0"];
  }

  if ([classCopy hasConnDurBin1])
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "connDurBin1")}];
    [entryCopy setObject:v21 forKeyedSubscript:@"conn_dur_bin_1"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"conn_dur_bin_1"];
  }

  if ([classCopy hasConnDurBin2])
  {
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "connDurBin2")}];
    [entryCopy setObject:v22 forKeyedSubscript:@"conn_dur_bin_2"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"conn_dur_bin_2"];
  }

  if ([classCopy hasConnDurBin3])
  {
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "connDurBin3")}];
    [entryCopy setObject:v23 forKeyedSubscript:@"conn_dur_bin_3"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"conn_dur_bin_3"];
  }

  if ([classCopy hasConnDurBin4])
  {
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "connDurBin4")}];
    [entryCopy setObject:v24 forKeyedSubscript:@"conn_dur_bin_4"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"conn_dur_bin_4"];
  }

  if ([classCopy hasConnDurBin5])
  {
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "connDurBin5")}];
    [entryCopy setObject:v25 forKeyedSubscript:@"conn_dur_bin_5"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"conn_dur_bin_5"];
  }

  if ([classCopy hasConnDurBin6])
  {
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "connDurBin6")}];
    [entryCopy setObject:v26 forKeyedSubscript:@"conn_dur_bin_6"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"conn_dur_bin_6"];
  }

  if ([classCopy hasConnDurBin7])
  {
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "connDurBin7")}];
    [entryCopy setObject:v27 forKeyedSubscript:@"conn_dur_bin_7"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"conn_dur_bin_7"];
  }

  if ([classCopy hasConnDurBin8])
  {
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "connDurBin8")}];
    [entryCopy setObject:v28 forKeyedSubscript:@"conn_dur_bin_8"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"conn_dur_bin_8"];
  }

  if ([classCopy hasConnDurBin9])
  {
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "connDurBin9")}];
    [entryCopy setObject:v29 forKeyedSubscript:@"conn_dur_bin_9"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"conn_dur_bin_9"];
  }

  if ([classCopy hasConnDurBin10])
  {
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "connDurBin10")}];
    [entryCopy setObject:v30 forKeyedSubscript:@"conn_dur_bin_10"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"conn_dur_bin_10"];
  }

  if ([classCopy hasConnDurBin11])
  {
    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "connDurBin11")}];
    [entryCopy setObject:v31 forKeyedSubscript:@"conn_dur_bin_11"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"conn_dur_bin_11"];
  }
}

- (void)protocolHistForClass:(id)class forEntry:(id)entry
{
  classCopy = class;
  entryCopy = entry;
  if ([classCopy hasTimestamp])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(classCopy, "timestamp")}];
    [entryCopy setObject:v6 forKeyedSubscript:@"bbtimestamp"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([classCopy hasDurationMs])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durationMs")}];
    [entryCopy setObject:v7 forKeyedSubscript:@"duration"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"duration"];
  }

  if ([classCopy hasSubsId])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "subsId")}];
    [entryCopy setObject:v8 forKeyedSubscript:@"subs_id"];
  }

  if ([classCopy hasDurBin0])
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin0")}];
    [entryCopy setObject:v9 forKeyedSubscript:@"dur_bin_0"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"dur_bin_0"];
  }

  if ([classCopy hasDurBin1])
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin1")}];
    [entryCopy setObject:v10 forKeyedSubscript:@"dur_bin_1"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"dur_bin_1"];
  }

  if ([classCopy hasDurBin2])
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin2")}];
    [entryCopy setObject:v11 forKeyedSubscript:@"dur_bin_2"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"dur_bin_2"];
  }

  if ([classCopy hasDurBin3])
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin3")}];
    [entryCopy setObject:v12 forKeyedSubscript:@"dur_bin_3"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"dur_bin_3"];
  }

  if ([classCopy hasDurBin4])
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin4")}];
    [entryCopy setObject:v13 forKeyedSubscript:@"dur_bin_4"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"dur_bin_4"];
  }

  if ([classCopy hasDurBin5])
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin5")}];
    [entryCopy setObject:v14 forKeyedSubscript:@"dur_bin_5"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"dur_bin_5"];
  }

  if ([classCopy hasDurBin6])
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin6")}];
    [entryCopy setObject:v15 forKeyedSubscript:@"dur_bin_6"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"dur_bin_6"];
  }

  if ([classCopy hasDurBin7])
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin7")}];
    [entryCopy setObject:v16 forKeyedSubscript:@"dur_bin_7"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"dur_bin_7"];
  }

  if ([classCopy hasDurBin8])
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin8")}];
    [entryCopy setObject:v17 forKeyedSubscript:@"dur_bin_8"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"dur_bin_8"];
  }

  if ([classCopy hasDurBin9])
  {
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin9")}];
    [entryCopy setObject:v18 forKeyedSubscript:@"dur_bin_9"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"dur_bin_9"];
  }

  if ([classCopy hasDurBin10])
  {
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin10")}];
    [entryCopy setObject:v19 forKeyedSubscript:@"dur_bin_10"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"dur_bin_10"];
  }

  if ([classCopy hasDurBin11])
  {
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin11")}];
    [entryCopy setObject:v20 forKeyedSubscript:@"dur_bin_11"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"dur_bin_11"];
  }

  if ([classCopy hasDurBin12])
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin12")}];
    [entryCopy setObject:v21 forKeyedSubscript:@"dur_bin_12"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"dur_bin_12"];
  }

  if ([classCopy hasDurBin13])
  {
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin13")}];
    [entryCopy setObject:v22 forKeyedSubscript:@"dur_bin_13"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"dur_bin_13"];
  }

  if ([classCopy hasDurBin14])
  {
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin14")}];
    [entryCopy setObject:v23 forKeyedSubscript:@"dur_bin_14"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"dur_bin_14"];
  }

  if ([classCopy hasDurBin15])
  {
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin15")}];
    [entryCopy setObject:v24 forKeyedSubscript:@"dur_bin_15"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"dur_bin_15"];
  }

  if ([classCopy hasDurBin16])
  {
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin16")}];
    [entryCopy setObject:v25 forKeyedSubscript:@"dur_bin_16"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"dur_bin_16"];
  }

  if ([classCopy hasDurBin17])
  {
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin17")}];
    [entryCopy setObject:v26 forKeyedSubscript:@"dur_bin_17"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"dur_bin_17"];
  }

  if ([classCopy hasDurBin18])
  {
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin18")}];
    [entryCopy setObject:v27 forKeyedSubscript:@"dur_bin_18"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"dur_bin_18"];
  }

  if ([classCopy hasDurBin19])
  {
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin19")}];
    [entryCopy setObject:v28 forKeyedSubscript:@"dur_bin_19"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"dur_bin_19"];
  }

  if ([classCopy hasDurBin20])
  {
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin20")}];
    [entryCopy setObject:v29 forKeyedSubscript:@"dur_bin_20"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"dur_bin_20"];
  }

  if ([classCopy hasDurBin21])
  {
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin21")}];
    [entryCopy setObject:v30 forKeyedSubscript:@"dur_bin_21"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"dur_bin_21"];
  }

  if ([classCopy hasDurBin22])
  {
    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin22")}];
    [entryCopy setObject:v31 forKeyedSubscript:@"dur_bin_22"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"dur_bin_22"];
  }

  if ([classCopy hasDurBin23])
  {
    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin23")}];
    [entryCopy setObject:v32 forKeyedSubscript:@"dur_bin_23"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"dur_bin_23"];
  }

  if ([classCopy hasDurBin24])
  {
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin24")}];
    [entryCopy setObject:v33 forKeyedSubscript:@"dur_bin_24"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"dur_bin_24"];
  }

  if ([classCopy hasDurBin25])
  {
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin25")}];
    [entryCopy setObject:v34 forKeyedSubscript:@"dur_bin_25"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"dur_bin_25"];
  }

  if ([classCopy hasDurBin26])
  {
    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin26")}];
    [entryCopy setObject:v35 forKeyedSubscript:@"dur_bin_26"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"dur_bin_26"];
  }

  if ([classCopy hasDurBin27])
  {
    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin27")}];
    [entryCopy setObject:v36 forKeyedSubscript:@"dur_bin_27"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"dur_bin_27"];
  }

  if ([classCopy hasDurBin28])
  {
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin28")}];
    [entryCopy setObject:v37 forKeyedSubscript:@"dur_bin_28"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"dur_bin_28"];
  }

  if ([classCopy hasDurBin29])
  {
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin29")}];
    [entryCopy setObject:v38 forKeyedSubscript:@"dur_bin_29"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"dur_bin_29"];
  }

  if ([classCopy hasDurBin30])
  {
    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin30")}];
    [entryCopy setObject:v39 forKeyedSubscript:@"dur_bin_30"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"dur_bin_30"];
  }

  if ([classCopy hasDurBin31])
  {
    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin31")}];
    [entryCopy setObject:v40 forKeyedSubscript:@"dur_bin_31"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"dur_bin_31"];
  }
}

- (void)protocolHist2ForClass:(id)class forEntry:(id)entry
{
  classCopy = class;
  entryCopy = entry;
  if ([classCopy hasTimestamp])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(classCopy, "timestamp")}];
    [entryCopy setObject:v6 forKeyedSubscript:@"bbtimestamp"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([classCopy hasDuration])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "duration")}];
    [entryCopy setObject:v7 forKeyedSubscript:@"duration"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"duration"];
  }

  if ([classCopy hasSubsId])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "subsId")}];
    [entryCopy setObject:v8 forKeyedSubscript:@"subs_id"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"subs_id"];
  }

  v9 = objc_opt_new();
  [entryCopy setObject:v9 forKeyedSubscript:@"bin"];

  v10 = 35;
  do
  {
    v11 = [entryCopy objectForKeyedSubscript:@"bin"];
    [v11 addObject:&unk_282C12E88];

    --v10;
  }

  while (v10);
  if ([classCopy binsCount])
  {
    v12 = 0;
    do
    {
      v13 = [classCopy binAtIndex:v12];
      if ([v13 hasIds] && objc_msgSend(v13, "hasValue"))
      {
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v13, "value")}];
        v15 = [entryCopy objectForKeyedSubscript:@"bin"];
        [v15 setObject:v14 atIndexedSubscript:{objc_msgSend(v13, "ids")}];
      }

      ++v12;
    }

    while ([classCopy binsCount] > v12);
  }
}

- (void)protocolPerStateForClass:(id)class forEntry:(id)entry
{
  classCopy = class;
  entryCopy = entry;
  if ([classCopy hasTimestamp])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(classCopy, "timestamp")}];
    [entryCopy setObject:v6 forKeyedSubscript:@"bbtimestamp"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([classCopy hasDuration])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "duration")}];
    [entryCopy setObject:v7 forKeyedSubscript:@"duration"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"duration"];
  }

  if ([classCopy hasSubsId])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "subsId")}];
    [entryCopy setObject:v8 forKeyedSubscript:@"subs_id"];
  }

  else
  {
    [entryCopy setObject:&unk_282C12E88 forKeyedSubscript:@"subs_id"];
  }

  v9 = objc_opt_new();
  [entryCopy setObject:v9 forKeyedSubscript:@"hist"];

  if ([classCopy histsCount])
  {
    v10 = 0;
    do
    {
      v11 = objc_opt_new();
      v12 = [entryCopy objectForKeyedSubscript:@"hist"];
      [v12 addObject:v11];

      v13 = 8;
      do
      {
        v14 = [entryCopy objectForKeyedSubscript:@"hist"];
        v15 = [v14 objectAtIndexedSubscript:v10];
        [v15 addObject:&unk_282C12E88];

        --v13;
      }

      while (v13);

      ++v10;
    }

    while ([classCopy histsCount] > v10);
  }

  if ([classCopy histsCount])
  {
    v16 = 0;
    do
    {
      v17 = [classCopy histAtIndex:v16];
      if ([v17 binsCount])
      {
        v18 = 0;
        do
        {
          v19 = [v17 binAtIndex:v18];
          if ([v19 hasIds] && objc_msgSend(v19, "hasValue"))
          {
            v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v19, "value")}];
            v21 = [entryCopy objectForKeyedSubscript:@"hist"];
            v22 = [v21 objectAtIndexedSubscript:v16];
            [v22 setObject:v20 atIndexedSubscript:{objc_msgSend(v19, "ids")}];
          }

          ++v18;
        }

        while ([v17 binsCount] > v18);
      }

      ++v16;
    }

    while ([classCopy histsCount] > v16);
  }
}

- (void)componentCarrierForClass:(id)class forEntry:(id)entry
{
  classCopy = class;
  entryCopy = entry;
  if ([classCopy carrierInfosCount])
  {
    v6 = 0;
    do
    {
      v7 = [classCopy carrierInfoAtIndex:v6];
      if ([v7 hasDlEarfcn])
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"dl_earfcn_%d", v6];
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v7, "dlEarfcn")}];
        [entryCopy setObject:v9 forKeyedSubscript:v8];
      }

      if ([v7 hasDlBandwidth])
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"dl_bandwidth_%d", v6];
        v11 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "dlBandwidth")}];
        [entryCopy setObject:v11 forKeyedSubscript:v10];
      }

      if ([v7 hasDlRfBand])
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"dl_rf_band_%d", v6];
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v7, "dlRfBand")}];
        [entryCopy setObject:v13 forKeyedSubscript:v12];
      }

      ++v6;
    }

    while ([classCopy carrierInfosCount] > v6);
  }

  if ([classCopy hasTimestamp])
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(classCopy, "timestamp")}];
    [entryCopy setObject:v14 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([classCopy hasPccEarfcn])
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "pccEarfcn")}];
    [entryCopy setObject:v15 forKeyedSubscript:@"pcc_earfcn"];
  }

  if ([classCopy hasScc0Earfcn])
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "scc0Earfcn")}];
    [entryCopy setObject:v16 forKeyedSubscript:@"scc0_earfcn"];
  }

  if ([classCopy hasScc1Earfcn])
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "scc1Earfcn")}];
    [entryCopy setObject:v17 forKeyedSubscript:@"scc1_earfcn"];
  }

  if ([classCopy hasPccBandwidth])
  {
    v18 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(classCopy, "pccBandwidth")}];
    [entryCopy setObject:v18 forKeyedSubscript:@"pcc_bandwidth"];
  }

  if ([classCopy hasScc0Bandwidth])
  {
    v19 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(classCopy, "scc0Bandwidth")}];
    [entryCopy setObject:v19 forKeyedSubscript:@"scc0_bandwidth"];
  }

  if ([classCopy hasScc1Bandwidth])
  {
    v20 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(classCopy, "scc1Bandwidth")}];
    [entryCopy setObject:v20 forKeyedSubscript:@"scc1_bandwidth"];
  }
}

- (void)duplexModeForClass:(id)class forEntry:(id)entry
{
  classCopy = class;
  entryCopy = entry;
  if ([classCopy hasTimestamp])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(classCopy, "timestamp")}];
    [entryCopy setObject:v6 forKeyedSubscript:@"bbtimestamp"];
  }

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(classCopy, "isInTddMode")}];
  [entryCopy setObject:v7 forKeyedSubscript:@"is_in_tdd_mode"];
}

- (void)pdcchStateStatsFor:(id)for forEntry:(id)entry
{
  forCopy = for;
  entryCopy = entry;
  if ([forCopy hasTimestamp])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(forCopy, "timestamp")}];
    [entryCopy setObject:v6 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([forCopy hasDurationMs])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(forCopy, "durationMs")}];
    [entryCopy setObject:v7 forKeyedSubscript:@"duration"];
  }

  if ([forCopy pccPdcchStatesCount])
  {
    v8 = 0;
    do
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"pcc_%d", v8];
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(forCopy, "pccPdcchStateAtIndex:", v8)}];
      [entryCopy setObject:v10 forKeyedSubscript:v9];

      ++v8;
    }

    while ([forCopy pccPdcchStatesCount] > v8);
  }

  if ([forCopy scc0PdcchStatesCount])
  {
    v11 = 0;
    do
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"scc0_%d", v11];
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(forCopy, "scc0PdcchStateAtIndex:", v11)}];
      [entryCopy setObject:v13 forKeyedSubscript:v12];

      ++v11;
    }

    while ([forCopy scc0PdcchStatesCount] > v11);
  }

  if ([forCopy scc1PdcchStatesCount])
  {
    v14 = 0;
    do
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"scc1_%d", v14];
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(forCopy, "scc1PdcchStateAtIndex:", v14)}];
      [entryCopy setObject:v16 forKeyedSubscript:v15];

      ++v14;
    }

    while ([forCopy scc1PdcchStatesCount] > v14);
  }
}

- (void)cpcStatsForClass:(id)class forEntry:(id)entry
{
  classCopy = class;
  entryCopy = entry;
  if ([classCopy hasTimestamp])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(classCopy, "timestamp")}];
    [entryCopy setObject:v6 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([classCopy hasTotalDurationMs])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "totalDurationMs")}];
    [entryCopy setObject:v7 forKeyedSubscript:@"duration"];
  }

  if ([classCopy hasRxTxOffDurationMs])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "energy")}];
    [entryCopy setObject:v8 forKeyedSubscript:@"rx_tx_off_duration_ms"];
  }

  if ([classCopy hasRxOnDurationMs])
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "energy")}];
    [entryCopy setObject:v9 forKeyedSubscript:@"rx_on_duration_ms"];
  }

  if ([classCopy hasEnergy])
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "energy")}];
    [entryCopy setObject:v10 forKeyedSubscript:@"energy"];
  }
}

@end