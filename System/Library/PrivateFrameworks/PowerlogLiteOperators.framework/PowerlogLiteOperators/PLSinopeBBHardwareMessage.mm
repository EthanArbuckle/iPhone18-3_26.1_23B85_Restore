@interface PLSinopeBBHardwareMessage
- (PLSinopeBBHardwareMessage)init;
- (id)decodePayload:(id)payload forMetricId:(id)id;
- (id)initEntryWithBBTS:(id)s triggerId:(id)id seqnum:(id)seqnum payload:(id)payload logAgent:(id)agent;
- (void)addToListMetric:(id)metric payload:(id)payload;
- (void)dlTbsHistForClass:(id)class forEntry:(id)entry;
- (void)gsmRabModeHistForClass:(id)class forEntry:(id)entry;
- (void)logBBSinopeAperiodicMetrics;
- (void)logBBSinopePeriodicMetrics;
- (void)lteCaConfigActStatsForClass:(id)class forEntry:(id)entry;
- (void)lteComponentCarrierInfoForClass:(id)class forEntry:(id)entry;
- (void)lteNrRxDivForClass:(id)class forEntry:(id)entry;
- (void)lteNrRxTxActForClass:(id)class forEntry:(id)entry;
- (void)lteNrTxPowerForClass:(id)class forEntry:(id)entry;
- (void)nrCCInfoForClass:(id)class forEntry:(id)entry;
- (void)nrCaConfigActForClass:(id)class forEntry:(id)entry;
- (void)plmnSearchHistForClass:(id)class forEntry:(id)entry;
- (void)powerEstimatorForClass:(id)class forEntry:(id)entry;
- (void)protocolStackHistForClass:(id)class forEntry:(id)entry;
- (void)protocolStateForClass:(id)class forEntry:(id)entry;
- (void)sleepStatesForClass:(id)class forEntry:(id)entry;
@end

@implementation PLSinopeBBHardwareMessage

- (PLSinopeBBHardwareMessage)init
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    __assert_rtn("[PLSinopeBBHardwareMessage init]", "PLSinopeBBHardwareMessage-SINOPE.m", 83, "0");
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
  v36.receiver = self;
  v36.super_class = PLSinopeBBHardwareMessage;
  v18 = [(PLSinopeBBHardwareMessage *)&v36 init];
  if (v18)
  {
    v35 = agentCopy;
    v19 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:{(objc_msgSend(sCopy, "integerValue") / 1000)}];
    convertFromBasebandToMonotonic = [(NSDate *)v19 convertFromBasebandToMonotonic];
    bbMonotonic = v18->_bbMonotonic;
    v18->_bbMonotonic = convertFromBasebandToMonotonic;

    obj = agent;
    v22 = sCopy;
    v23 = seqnumCopy;
    v24 = idCopy;
    timestampLogged = v18->_timestampLogged;
    v18->_timestampLogged = v19;
    v26 = v19;

    objc_storeStrong(&v18->_triggerId, id);
    objc_storeStrong(&v18->_bbtimestamp, s);
    objc_storeStrong(&v18->_triggerCnt, seqnum);
    v27 = [PLSinopeBBMetricUtility convertToStringData:payloadCopy];
    metricData = v18->_metricData;
    v18->_metricData = v27;

    v29 = objc_opt_new();
    metricIdArr = v18->_metricIdArr;
    v18->_metricIdArr = v29;

    idCopy = v24;
    seqnumCopy = v23;
    sCopy = v22;
    v31 = objc_opt_new();
    metricDataArr = v18->_metricDataArr;
    v18->_metricDataArr = v31;

    objc_storeStrong(&v18->_logAgent, obj);
    agentCopy = v35;
  }

  return v18;
}

- (void)logBBSinopeAperiodicMetrics
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v24 = "[PLSinopeBBHardwareMessage logBBSinopeAperiodicMetrics]";
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __56__PLSinopeBBHardwareMessage_logBBSinopeAperiodicMetrics__block_invoke;
    v21 = &__block_descriptor_40_e5_v8__0lu32l8;
    v22 = v4;
    if (qword_2811F7048 != -1)
    {
      dispatch_once(&qword_2811F7048, &block);
    }

    if (_MergedGlobals_78 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLSinopeBBHardwareMessage logBBSinopeAperiodicMetrics]", block, v19, v20, v21, v22];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KSinope/PLSinopeBBHardwareMessage-SINOPE.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSinopeBBHardwareMessage logBBSinopeAperiodicMetrics]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:113];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v24 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v11 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BBSinopeEventMetrics"];
  v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  if (v12)
  {
    if (([MEMORY[0x277D3F208] isBasebandClass:1003009] & 1) == 0)
    {
      [v12 setEntryDate:self->_bbMonotonic];
    }

    [v12 setObject:self->_bbtimestamp forKeyedSubscript:@"bbtimestamp"];
    [v12 setObject:monotonicDate forKeyedSubscript:@"timestampLogged"];
    [v12 setObject:self->_triggerCnt forKeyedSubscript:@"triggerCnt"];
    [v12 setObject:self->_triggerId forKeyedSubscript:@"mid"];
    [v12 setObject:self->_metricData forKeyedSubscript:@"data"];
    if ([MEMORY[0x277D3F208] isBasebandProto])
    {
      logAgent = self->_logAgent;
      dictionary = [v12 dictionary];
      entryDate = [v12 entryDate];
      [(PLAgent *)logAgent logForSubsystem:@"BasebandMetrics" category:@"Events" data:dictionary date:entryDate];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __56__PLSinopeBBHardwareMessage_logBBSinopeAperiodicMetrics__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_78 = result;
  return result;
}

- (void)logBBSinopePeriodicMetrics
{
  v29 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __55__PLSinopeBBHardwareMessage_logBBSinopePeriodicMetrics__block_invoke;
    v23 = &__block_descriptor_40_e5_v8__0lu32l8;
    v24 = v3;
    if (qword_2811F7050 != -1)
    {
      dispatch_once(&qword_2811F7050, &block);
    }

    if (byte_2811F7041 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLSinopeBBHardwareMessage logBBSinopePeriodicMetrics]", block, v21, v22, v23, v24];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KSinope/PLSinopeBBHardwareMessage-SINOPE.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSinopeBBHardwareMessage logBBSinopePeriodicMetrics]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:140];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v26 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = PLLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    metricIdArr = self->_metricIdArr;
    *buf = 136315394;
    v26 = "[PLSinopeBBHardwareMessage logBBSinopePeriodicMetrics]";
    v27 = 2112;
    v28 = metricIdArr;
    _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "[BBAgent] : in @%s metricIdArr %@", buf, 0x16u);
  }

  v11 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BBSinopePeriodicMetrics"];
  v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  if (v12)
  {
    if (([MEMORY[0x277D3F208] isBasebandClass:1003009] & 1) == 0)
    {
      [(NSMutableArray *)v12 setEntryDate:self->_bbMonotonic];
    }

    [(NSMutableArray *)v12 setObject:self->_triggerId forKeyedSubscript:@"triggerId"];
    [(NSMutableArray *)v12 setObject:self->_bbtimestamp forKeyedSubscript:@"bbtimestamp"];
    [(NSMutableArray *)v12 setObject:monotonicDate forKeyedSubscript:@"timestampLogged"];
    [(NSMutableArray *)v12 setObject:self->_triggerCnt forKeyedSubscript:@"triggerCnt"];
    [(NSMutableArray *)v12 setObject:self->_metricIdArr forKeyedSubscript:@"mid"];
    [(NSMutableArray *)v12 setObject:self->_metricDataArr forKeyedSubscript:@"data"];
    v14 = PLLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v26 = "[PLSinopeBBHardwareMessage logBBSinopePeriodicMetrics]";
      v27 = 2112;
      v28 = v12;
      _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "[BBAgent] : in @%s entry %@", buf, 0x16u);
    }

    if ([MEMORY[0x277D3F208] isBasebandProto])
    {
      logAgent = self->_logAgent;
      dictionary = [(NSMutableArray *)v12 dictionary];
      entryDate = [(NSMutableArray *)v12 entryDate];
      [(PLAgent *)logAgent logForSubsystem:@"BasebandMetrics" category:@"Histogram" data:dictionary date:entryDate];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __55__PLSinopeBBHardwareMessage_logBBSinopePeriodicMetrics__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7041 = result;
  return result;
}

- (void)addToListMetric:(id)metric payload:(id)payload
{
  v30 = *MEMORY[0x277D85DE8];
  metricCopy = metric;
  payloadCopy = payload;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __53__PLSinopeBBHardwareMessage_addToListMetric_payload___block_invoke;
    v22 = &__block_descriptor_40_e5_v8__0lu32l8;
    v23 = v8;
    if (qword_2811F7058 != -1)
    {
      dispatch_once(&qword_2811F7058, &block);
    }

    if (byte_2811F7042 == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLSinopeBBHardwareMessage addToListMetric:payload:]", block, v20, v21, v22, v23];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KSinope/PLSinopeBBHardwareMessage-SINOPE.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSinopeBBHardwareMessage addToListMetric:payload:]"];
      [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:171];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v25 = v9;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v15 = PLLogCommon();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v25 = "[PLSinopeBBHardwareMessage addToListMetric:payload:]";
    v26 = 2112;
    v27 = metricCopy;
    v28 = 2112;
    v29 = payloadCopy;
    _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "[BBAgent] : in @%s metricId: %@, data: %@", buf, 0x20u);
  }

  [(NSMutableArray *)self->_metricIdArr addObject:metricCopy];
  metricDataArr = self->_metricDataArr;
  v17 = [PLSinopeBBMetricUtility convertToStringData:payloadCopy];
  [(NSMutableArray *)metricDataArr addObject:v17];

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __53__PLSinopeBBHardwareMessage_addToListMetric_payload___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7042 = result;
  return result;
}

- (id)decodePayload:(id)payload forMetricId:(id)id
{
  v29 = *MEMORY[0x277D85DE8];
  idCopy = id;
  payloadCopy = payload;
  v8 = objc_opt_new();
  [v8 setObject:idCopy forKeyedSubscript:@"mid"];
  v9 = [[AWDMETRICSMetricLogPower alloc] initWithData:payloadCopy];

  v10 = PLLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    dictionaryRepresentation = [(AWDMETRICSMetricLogPower *)v9 dictionaryRepresentation];
    *buf = 138412290;
    v28 = dictionaryRepresentation;
    _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  integerValue = [idCopy integerValue];
  if (integerValue <= 3962429)
  {
    if (integerValue > 3962388)
    {
      if (integerValue > 3962392)
      {
        if (integerValue == 3962393)
        {
          v13 = [(AWDMETRICSMetricLogPower *)v9 kCellularPowerLogPLMNSearchAtIndex:0];
          [(PLSinopeBBHardwareMessage *)self plmnSearchHistForClass:v13 forEntry:v8];
          goto LABEL_45;
        }

        if (integerValue != 3962396)
        {
          goto LABEL_50;
        }

        v13 = [(AWDMETRICSMetricLogPower *)v9 kCellularPowerLogGSMRABModeAtIndex:0];
        [(PLSinopeBBHardwareMessage *)self gsmRabModeHistForClass:v13 forEntry:v8];
      }

      else
      {
        if (integerValue == 3962389)
        {
          v13 = [(AWDMETRICSMetricLogPower *)v9 kCellularPowerLogPowerEstimatorAtIndex:0];
          [(PLSinopeBBHardwareMessage *)self powerEstimatorForClass:v13 forEntry:v8];
          goto LABEL_45;
        }

        if (integerValue != 3962392)
        {
          goto LABEL_50;
        }

        v13 = [(AWDMETRICSMetricLogPower *)v9 kCellularPowerLogProtocolStateAtIndex:0];
        [(PLSinopeBBHardwareMessage *)self protocolStateForClass:v13 forEntry:v8];
      }

LABEL_45:

      goto LABEL_46;
    }

    if (integerValue <= 3962381)
    {
      if (integerValue == 3932163)
      {
LABEL_46:
        v16 = v8;
        goto LABEL_47;
      }

      if (integerValue != 3962379)
      {
        goto LABEL_50;
      }

      v13 = [(AWDMETRICSMetricLogPower *)v9 kCellularPowerLogLteCaConfigActivateStatsAtIndex:0];
      [(PLSinopeBBHardwareMessage *)self lteCaConfigActStatsForClass:v13 forEntry:v8];
      goto LABEL_45;
    }

    if (integerValue == 3962382)
    {
      v13 = [(AWDMETRICSMetricLogPower *)v9 kCellularPowerLogLteCarrierComponentInfoAtIndex:0];
      [(PLSinopeBBHardwareMessage *)self lteComponentCarrierInfoForClass:v13 forEntry:v8];
      goto LABEL_45;
    }

    if (integerValue != 3962383)
    {
      goto LABEL_50;
    }

    v14 = [(AWDMETRICSMetricLogPower *)v9 kCellularPowerLogLTEAggregatedDLTBSAtIndex:0];
LABEL_37:
    v13 = v14;
    [(PLSinopeBBHardwareMessage *)self dlTbsHistForClass:v14 forEntry:v8];
    goto LABEL_45;
  }

  if (integerValue <= 3962437)
  {
    if (integerValue <= 3962433)
    {
      if (integerValue == 3962430)
      {
        v13 = [(AWDMETRICSMetricLogPower *)v9 kCellularPowerLogNrCaConfigActivateStatsAtIndex:0];
        [(PLSinopeBBHardwareMessage *)self nrCaConfigActForClass:v13 forEntry:v8];
      }

      else
      {
        if (integerValue != 3962433)
        {
          goto LABEL_50;
        }

        v13 = [(AWDMETRICSMetricLogPower *)v9 kCellularPowerLogNRCarrierComponentInfoAtIndex:0];
        [(PLSinopeBBHardwareMessage *)self nrCCInfoForClass:v13 forEntry:v8];
      }

      goto LABEL_45;
    }

    if (integerValue != 3962434)
    {
      if (integerValue != 3962437)
      {
        goto LABEL_50;
      }

      v13 = [(AWDMETRICSMetricLogPower *)v9 kCellularPowerLogLteNrRxDiversityHistAtIndex:0];
      [(PLSinopeBBHardwareMessage *)self lteNrRxDivForClass:v13 forEntry:v8];
      goto LABEL_45;
    }

    v14 = [(AWDMETRICSMetricLogPower *)v9 kCellularPowerLogNRsub6DLTBSAtIndex:0];
    goto LABEL_37;
  }

  if (integerValue <= 3962477)
  {
    if (integerValue == 3962438)
    {
      v13 = [(AWDMETRICSMetricLogPower *)v9 kCellularPowerLogLteNrTxPowerHistAtIndex:0];
      [(PLSinopeBBHardwareMessage *)self lteNrTxPowerForClass:v13 forEntry:v8];
      goto LABEL_45;
    }

    if (integerValue != 3962439)
    {
      goto LABEL_50;
    }

    v13 = [(AWDMETRICSMetricLogPower *)v9 kCellularPowerLogLteNrRxTxActivityStatsAtIndex:0];
    [(PLSinopeBBHardwareMessage *)self lteNrRxTxActForClass:v13 forEntry:v8];
    goto LABEL_45;
  }

  switch(integerValue)
  {
    case 3962478:
      v13 = [(AWDMETRICSMetricLogPower *)v9 kCellularPowerLogSleepStatesAtIndex:0];
      [(PLSinopeBBHardwareMessage *)self sleepStatesForClass:v13 forEntry:v8];
      goto LABEL_45;
    case 3985414:
      v12 = [(AWDMETRICSMetricLogPower *)v9 kCellularGsmTxPowerHistAtIndex:0];
      goto LABEL_39;
    case 3985676:
      v12 = [(AWDMETRICSMetricLogPower *)v9 kCellularWcdmaTxPowerHistAtIndex:0];
LABEL_39:
      v13 = v12;
      [(PLSinopeBBHardwareMessage *)self protocolStackHistForClass:v12 forEntry:v8];
      goto LABEL_45;
  }

LABEL_50:
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v19 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__PLSinopeBBHardwareMessage_decodePayload_forMetricId___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v19;
    if (qword_2811F7060 != -1)
    {
      dispatch_once(&qword_2811F7060, block);
    }

    if (byte_2811F7043 == 1)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: unexpected metric Id"];
      v21 = MEMORY[0x277D3F178];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KSinope/PLSinopeBBHardwareMessage-SINOPE.m"];
      lastPathComponent = [v22 lastPathComponent];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSinopeBBHardwareMessage decodePayload:forMetricId:]"];
      [v21 logMessage:v20 fromFile:lastPathComponent fromFunction:v24 fromLineNumber:295];

      v25 = PLLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v28 = v20;
        _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v16 = 0;
LABEL_47:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

uint64_t __55__PLSinopeBBHardwareMessage_decodePayload_forMetricId___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7043 = result;
  return result;
}

- (void)protocolStateForClass:(id)class forEntry:(id)entry
{
  v24 = *MEMORY[0x277D85DE8];
  classCopy = class;
  entryCopy = entry;
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v23 = "[PLSinopeBBHardwareMessage protocolStateForClass:forEntry:]";
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "[BBAgent] %s", buf, 0xCu);
  }

  if ([classCopy hasTimestamp])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(classCopy, "timestamp")}];
    [entryCopy setObject:v8 forKeyedSubscript:@"bbtimestamp"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([classCopy hasDurationMs])
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durationMs")}];
    [entryCopy setObject:v9 forKeyedSubscript:@"duration"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"duration"];
  }

  if ([classCopy hasSubsId])
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "subsId")}];
    [entryCopy setObject:v10 forKeyedSubscript:@"subs_id"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"subs_id"];
  }

  if ([classCopy binsCount])
  {
    v11 = 0;
    do
    {
      v12 = [classCopy binAtIndex:v11];
      if ([v12 hasBinId])
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"bin_id_%d", v11];
        v14 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v12, "binId")}];
        [entryCopy setObject:v14 forKeyedSubscript:v13];
      }

      if ([v12 hasDuration])
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"duration_%d", v11];
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v12, "duration")}];
        [entryCopy setObject:v16 forKeyedSubscript:v15];
      }

      if ([v12 hasCount])
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"count_%d", v11];
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v12, "count")}];
        [entryCopy setObject:v18 forKeyedSubscript:v17];
      }

      if ([v12 hasDurationBinIndex])
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"durationBinIndex_%d", v11];
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v12, "durationBinIndex")}];
        [entryCopy setObject:v20 forKeyedSubscript:v19];
      }

      ++v11;
    }

    while ([classCopy binsCount] > v11);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)dlTbsHistForClass:(id)class forEntry:(id)entry
{
  v18 = *MEMORY[0x277D85DE8];
  classCopy = class;
  entryCopy = entry;
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v17 = "[PLSinopeBBHardwareMessage dlTbsHistForClass:forEntry:]";
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "[BBAgent] %s", buf, 0xCu);
  }

  if ([classCopy hasTimestamp])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(classCopy, "timestamp")}];
    [entryCopy setObject:v8 forKeyedSubscript:@"bbtimestamp"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([classCopy hasDurationMs])
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durationMs")}];
    [entryCopy setObject:v9 forKeyedSubscript:@"duration"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"duration"];
  }

  if ([classCopy hasSubsId])
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "subsId")}];
    [entryCopy setObject:v10 forKeyedSubscript:@"subs_id"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"subs_id"];
  }

  if ([classCopy binsCount])
  {
    v11 = 0;
    do
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"dur_bin_%d", v11];
      v13 = [classCopy binAtIndex:v11];
      if ([v13 hasDuration])
      {
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v13, "duration")}];
        [entryCopy setObject:v14 forKeyedSubscript:v12];
      }

      else
      {
        [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:v12];
      }

      ++v11;
    }

    while ([classCopy binsCount] > v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)gsmRabModeHistForClass:(id)class forEntry:(id)entry
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
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([classCopy hasDurationMs])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durationMs")}];
    [entryCopy setObject:v7 forKeyedSubscript:@"duration"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"duration"];
  }

  if ([classCopy hasSubsId])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "subsId")}];
    [entryCopy setObject:v8 forKeyedSubscript:@"subs_id"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"subs_id"];
  }

  if ([classCopy binsCount])
  {
    v9 = 0;
    do
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"dur_bin_%d", v9];
      v11 = [classCopy binAtIndex:v9];
      if ([v11 hasDuration])
      {
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v11, "duration")}];
        [entryCopy setObject:v12 forKeyedSubscript:v10];
      }

      else
      {
        [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:v10];
      }

      ++v9;
    }

    while ([classCopy binsCount] > v9);
  }
}

- (void)lteCaConfigActStatsForClass:(id)class forEntry:(id)entry
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
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([classCopy hasDurationMs])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durationMs")}];
    [entryCopy setObject:v7 forKeyedSubscript:@"duration"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"duration"];
  }

  if ([classCopy hasSubsId])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "subsId")}];
    [entryCopy setObject:v8 forKeyedSubscript:@"subs_id"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"subs_id"];
  }

  if ([classCopy binsCount])
  {
    v9 = 0;
    do
    {
      v10 = [classCopy binAtIndex:v9];
      if ([v10 hasDuration])
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"dur_bin_%d", v9];
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "duration")}];
        [entryCopy setObject:v12 forKeyedSubscript:v11];
      }

      if ([v10 hasCcConfigured])
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"cc_configured_%d", v9];
        v14 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "ccConfigured")}];
        [entryCopy setObject:v14 forKeyedSubscript:v13];
      }

      if ([v10 hasCcActivated])
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"cc_activated_%d", v9];
        v16 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "ccActivated")}];
        [entryCopy setObject:v16 forKeyedSubscript:v15];
      }

      if ([v10 hasDirection])
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"direction_%d", v9];
        v18 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "direction")}];
        [entryCopy setObject:v18 forKeyedSubscript:v17];
      }

      ++v9;
    }

    while ([classCopy binsCount] > v9);
  }
}

- (void)lteComponentCarrierInfoForClass:(id)class forEntry:(id)entry
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
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([classCopy hasSubsId])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "subsId")}];
    [entryCopy setObject:v7 forKeyedSubscript:@"subs_id"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"subs_id"];
  }

  if ([classCopy carrierInfosCount])
  {
    v8 = 0;
    do
    {
      v9 = [classCopy carrierInfoAtIndex:v8];
      if ([v9 hasBand])
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"band_%d", v8];
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v9, "band")}];
        [entryCopy setObject:v11 forKeyedSubscript:v10];
      }

      if ([v9 hasBandwidth])
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"bandwidth_%d", v8];
        v13 = MEMORY[0x277CCABB0];
        [v9 bandwidth];
        v14 = [v13 numberWithFloat:?];
        [entryCopy setObject:v14 forKeyedSubscript:v12];
      }

      if ([v9 hasEarfcn])
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"earfcn_%d", v8];
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v9, "earfcn")}];
        [entryCopy setObject:v16 forKeyedSubscript:v15];
      }

      if ([v9 hasType])
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"type_%d", v8];
        v18 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v9, "type")}];
        [entryCopy setObject:v18 forKeyedSubscript:v17];
      }

      if ([v9 hasDuplex])
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"duplex_%d", v8];
        v20 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v9, "duplex")}];
        [entryCopy setObject:v20 forKeyedSubscript:v19];
      }

      ++v8;
    }

    while ([classCopy carrierInfosCount] > v8);
  }
}

- (void)lteNrRxDivForClass:(id)class forEntry:(id)entry
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
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([classCopy hasDurationMs])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durationMs")}];
    [entryCopy setObject:v7 forKeyedSubscript:@"duration"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"duration"];
  }

  if ([classCopy hasSubsId])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "subsId")}];
    [entryCopy setObject:v8 forKeyedSubscript:@"subs_id"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"subs_id"];
  }

  if ([classCopy cellsCount])
  {
    v9 = 0;
    do
    {
      v10 = [classCopy cellAtIndex:v9];
      if ([v10 hasIsEndc])
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"is_endc_%d", v9];
        v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v10, "isEndc")}];
        [entryCopy setObject:v12 forKeyedSubscript:v11];
      }

      if ([v10 hasRat])
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"rat_%d", v9];
        v14 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "rat")}];
        [entryCopy setObject:v14 forKeyedSubscript:v13];
      }

      if ([v10 hasMcgCcNum])
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"mcg_cc_num_%d", v9];
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "mcgCcNum")}];
        [entryCopy setObject:v16 forKeyedSubscript:v15];
      }

      if ([v10 hasCaIndex])
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"ca_index_%d", v9];
        v18 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "caIndex")}];
        [entryCopy setObject:v18 forKeyedSubscript:v17];
      }

      if ([v10 hasRxDivState])
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"rx_div_state_%d", v9];
        v20 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "rxDivState")}];
        [entryCopy setObject:v20 forKeyedSubscript:v19];
      }

      if ([v10 hasDurationMs])
      {
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"duration_ms_%d", v9];
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "durationMs")}];
        [entryCopy setObject:v22 forKeyedSubscript:v21];
      }

      ++v9;
    }

    while ([classCopy cellsCount] > v9);
  }
}

- (void)lteNrRxTxActForClass:(id)class forEntry:(id)entry
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
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([classCopy hasDurationMs])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durationMs")}];
    [entryCopy setObject:v7 forKeyedSubscript:@"duration"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"duration"];
  }

  if ([classCopy hasSubsId])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "subsId")}];
    [entryCopy setObject:v8 forKeyedSubscript:@"subs_id"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"subs_id"];
  }

  if ([classCopy rxTxActsCount])
  {
    v9 = 0;
    do
    {
      v10 = [classCopy rxTxActAtIndex:v9];
      if ([v10 hasRatDpl])
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"rat_dpl_%d", v9];
        v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "ratDpl")}];
        [entryCopy setObject:v12 forKeyedSubscript:v11];
      }

      if ([v10 hasCaState])
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"ca_state_%d", v9];
        v14 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "caState")}];
        [entryCopy setObject:v14 forKeyedSubscript:v13];
      }

      if ([v10 hasActState])
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"act_state_%d", v9];
        v16 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "actState")}];
        [entryCopy setObject:v16 forKeyedSubscript:v15];
      }

      if ([v10 hasCount])
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"count_%d", v9];
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "count")}];
        [entryCopy setObject:v18 forKeyedSubscript:v17];
      }

      ++v9;
    }

    while ([classCopy rxTxActsCount] > v9);
  }
}

- (void)lteNrTxPowerForClass:(id)class forEntry:(id)entry
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
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([classCopy hasDurationMs])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durationMs")}];
    [entryCopy setObject:v7 forKeyedSubscript:@"duration"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"duration"];
  }

  if ([classCopy hasSubsId])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "subsId")}];
    [entryCopy setObject:v8 forKeyedSubscript:@"subs_id"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"subs_id"];
  }

  if ([classCopy histsCount])
  {
    v9 = 0;
    do
    {
      v10 = [classCopy histAtIndex:v9];
      if ([v10 hasRat])
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"rat_%d", v9];
        v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "rat")}];
        [entryCopy setObject:v12 forKeyedSubscript:v11];
      }

      if ([v10 hasChanType])
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"chan_type_%d", v9];
        v14 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "chanType")}];
        [entryCopy setObject:v14 forKeyedSubscript:v13];
      }

      if ([v10 countsCount] && objc_msgSend(v10, "countsCount"))
      {
        v15 = 0;
        do
        {
          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"count_%d_%d", v9, v15];
          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "countAtIndex:", v15)}];
          [entryCopy setObject:v17 forKeyedSubscript:v16];

          ++v15;
        }

        while ([v10 countsCount] > v15);
      }

      ++v9;
    }

    while ([classCopy histsCount] > v9);
  }
}

- (void)nrCaConfigActForClass:(id)class forEntry:(id)entry
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
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([classCopy hasDurationMs])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durationMs")}];
    [entryCopy setObject:v7 forKeyedSubscript:@"duration"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"duration"];
  }

  if ([classCopy hasSubsId])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "subsId")}];
    [entryCopy setObject:v8 forKeyedSubscript:@"subs_id"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"subs_id"];
  }

  if ([classCopy binsCount])
  {
    v9 = 0;
    do
    {
      v10 = [classCopy binAtIndex:v9];
      if ([v10 ccConfigured])
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"cc_configured_%d", v9];
        v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "ccConfigured")}];
        [entryCopy setObject:v12 forKeyedSubscript:v11];
      }

      if ([v10 ccActivated])
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"cc_activated_%d", v9];
        v14 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "ccActivated")}];
        [entryCopy setObject:v14 forKeyedSubscript:v13];
      }

      if ([v10 hasDuration])
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"duration_%d", v9];
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "duration")}];
        [entryCopy setObject:v16 forKeyedSubscript:v15];
      }

      if ([v10 hasDirection])
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"direction_%d", v9];
        v18 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "direction")}];
        [entryCopy setObject:v18 forKeyedSubscript:v17];
      }

      if ([v10 hasIsEndc])
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"is_endc_%d", v9];
        v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v10, "isEndc")}];
        [entryCopy setObject:v20 forKeyedSubscript:v19];
      }

      if ([v10 hasFreqRange])
      {
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"freq_range_%d", v9];
        v22 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "freqRange")}];
        [entryCopy setObject:v22 forKeyedSubscript:v21];
      }

      ++v9;
    }

    while ([classCopy binsCount] > v9);
  }
}

- (void)nrCCInfoForClass:(id)class forEntry:(id)entry
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
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([classCopy hasFreqRange])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(classCopy, "freqRange")}];
    [entryCopy setObject:v7 forKeyedSubscript:@"freq_range"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"freq_range"];
  }

  if ([classCopy hasSubsId])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "subsId")}];
    [entryCopy setObject:v8 forKeyedSubscript:@"subs_id"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"subs_id"];
  }

  if ([classCopy carrierInfosCount])
  {
    v9 = 0;
    do
    {
      v10 = [classCopy carrierInfoAtIndex:v9];
      if ([v10 hasBand])
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"band_%d", v9];
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "band")}];
        [entryCopy setObject:v12 forKeyedSubscript:v11];
      }

      if ([v10 hasBandwidth])
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"bandwidth_%d", v9];
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "bandwidth")}];
        [entryCopy setObject:v14 forKeyedSubscript:v13];
      }

      if ([v10 hasNarfcn])
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"narfcn_%d", v9];
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "narfcn")}];
        [entryCopy setObject:v16 forKeyedSubscript:v15];
      }

      if ([v10 hasType])
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"type_%d", v9];
        v18 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "type")}];
        [entryCopy setObject:v18 forKeyedSubscript:v17];
      }

      if ([v10 hasDuplex])
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"duplex_%d", v9];
        v20 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "duplex")}];
        [entryCopy setObject:v20 forKeyedSubscript:v19];
      }

      ++v9;
    }

    while ([classCopy carrierInfosCount] > v9);
  }
}

- (void)plmnSearchHistForClass:(id)class forEntry:(id)entry
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
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([classCopy hasDurationMs])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durationMs")}];
    [entryCopy setObject:v7 forKeyedSubscript:@"duration"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"duration"];
  }

  if ([classCopy hasSubsId])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "subsId")}];
    [entryCopy setObject:v8 forKeyedSubscript:@"subs_id"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"subs_id"];
  }

  if ([classCopy binsCount])
  {
    v9 = 0;
    do
    {
      v10 = [classCopy binAtIndex:v9];
      if ([v10 hasBinId])
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"bin_id_%d", v9];
        v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "binId")}];
        [entryCopy setObject:v12 forKeyedSubscript:v11];
      }

      if ([v10 hasDuration])
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"duration_%d", v9];
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "duration")}];
        [entryCopy setObject:v14 forKeyedSubscript:v13];
      }

      if ([v10 hasSearchDurationBinIndex])
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"searchDuration_%d", v9];
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "searchDurationBinIndex")}];
        [entryCopy setObject:v16 forKeyedSubscript:v15];
      }

      ++v9;
    }

    while ([classCopy binsCount] > v9);
  }
}

- (void)powerEstimatorForClass:(id)class forEntry:(id)entry
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
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([classCopy hasDurationMs])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durationMs")}];
    [entryCopy setObject:v7 forKeyedSubscript:@"duration"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"duration"];
  }

  if ([classCopy powerStatsCount])
  {
    v8 = 0;
    do
    {
      v9 = [classCopy powerStatsAtIndex:v8];
      if ([v9 hasComponent])
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"component_%d", v8];
        v11 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v9, "component")}];
        [entryCopy setObject:v11 forKeyedSubscript:v10];
      }

      if ([v9 hasAvgPowerMw])
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"avgPowerMw_%d", v8];
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v9, "avgPowerMw")}];
        [entryCopy setObject:v13 forKeyedSubscript:v12];
      }

      if ([v9 hasAvgActivePowerMw])
      {
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"avgActivePowerMw_%d", v8];
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v9, "avgActivePowerMw")}];
        [entryCopy setObject:v15 forKeyedSubscript:v14];
      }

      if ([v9 hasPeakPowerMw])
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"peakPowerMw_%d", v8];
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v9, "peakPowerMw")}];
        [entryCopy setObject:v17 forKeyedSubscript:v16];
      }

      if ([v9 hasCumulatedEnergyMj])
      {
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"cumulatedEnergyMj_%d", v8];
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v9, "cumulatedEnergyMj")}];
        [entryCopy setObject:v19 forKeyedSubscript:v18];
      }

      if ([v9 hasActiveDurationMs])
      {
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"activeDurationMs_%d", v8];
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v9, "activeDurationMs")}];
        [entryCopy setObject:v21 forKeyedSubscript:v20];
      }

      ++v8;
    }

    while ([classCopy powerStatsCount] > v8);
  }
}

- (void)protocolStackHistForClass:(id)class forEntry:(id)entry
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
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([classCopy hasDurationMs])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durationMs")}];
    [entryCopy setObject:v7 forKeyedSubscript:@"duration"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"duration"];
  }

  if ([classCopy hasDurBin0])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin0")}];
    [entryCopy setObject:v8 forKeyedSubscript:@"dur_bin_0"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_0"];
  }

  if ([classCopy hasDurBin1])
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin1")}];
    [entryCopy setObject:v9 forKeyedSubscript:@"dur_bin_1"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_1"];
  }

  if ([classCopy hasDurBin2])
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin2")}];
    [entryCopy setObject:v10 forKeyedSubscript:@"dur_bin_2"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_2"];
  }

  if ([classCopy hasDurBin3])
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin3")}];
    [entryCopy setObject:v11 forKeyedSubscript:@"dur_bin_3"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_3"];
  }

  if ([classCopy hasDurBin4])
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin4")}];
    [entryCopy setObject:v12 forKeyedSubscript:@"dur_bin_4"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_4"];
  }

  if ([classCopy hasDurBin5])
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin5")}];
    [entryCopy setObject:v13 forKeyedSubscript:@"dur_bin_5"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_5"];
  }

  if ([classCopy hasDurBin6])
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin6")}];
    [entryCopy setObject:v14 forKeyedSubscript:@"dur_bin_6"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_6"];
  }

  if ([classCopy hasDurBin7])
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin7")}];
    [entryCopy setObject:v15 forKeyedSubscript:@"dur_bin_7"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_7"];
  }

  if ([classCopy hasDurBin8])
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin8")}];
    [entryCopy setObject:v16 forKeyedSubscript:@"dur_bin_8"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_8"];
  }

  if ([classCopy hasDurBin9])
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin9")}];
    [entryCopy setObject:v17 forKeyedSubscript:@"dur_bin_9"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_9"];
  }

  if ([classCopy hasDurBin10])
  {
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin10")}];
    [entryCopy setObject:v18 forKeyedSubscript:@"dur_bin_10"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_10"];
  }

  if ([classCopy hasDurBin11])
  {
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin11")}];
    [entryCopy setObject:v19 forKeyedSubscript:@"dur_bin_11"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_11"];
  }

  if ([classCopy hasDurBin12])
  {
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin12")}];
    [entryCopy setObject:v20 forKeyedSubscript:@"dur_bin_12"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_12"];
  }

  if ([classCopy hasDurBin13])
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin13")}];
    [entryCopy setObject:v21 forKeyedSubscript:@"dur_bin_13"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_13"];
  }

  if ([classCopy hasDurBin14])
  {
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin14")}];
    [entryCopy setObject:v22 forKeyedSubscript:@"dur_bin_14"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_14"];
  }

  if ([classCopy hasDurBin15])
  {
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin15")}];
    [entryCopy setObject:v23 forKeyedSubscript:@"dur_bin_15"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_15"];
  }

  if ([classCopy hasDurBin16])
  {
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin16")}];
    [entryCopy setObject:v24 forKeyedSubscript:@"dur_bin_16"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_16"];
  }

  if ([classCopy hasDurBin17])
  {
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin17")}];
    [entryCopy setObject:v25 forKeyedSubscript:@"dur_bin_17"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_17"];
  }

  if ([classCopy hasDurBin18])
  {
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin18")}];
    [entryCopy setObject:v26 forKeyedSubscript:@"dur_bin_18"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_18"];
  }

  if ([classCopy hasDurBin19])
  {
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin19")}];
    [entryCopy setObject:v27 forKeyedSubscript:@"dur_bin_19"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_19"];
  }

  if ([classCopy hasDurBin20])
  {
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin20")}];
    [entryCopy setObject:v28 forKeyedSubscript:@"dur_bin_20"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_20"];
  }

  if ([classCopy hasDurBin21])
  {
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin21")}];
    [entryCopy setObject:v29 forKeyedSubscript:@"dur_bin_21"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_21"];
  }

  if ([classCopy hasDurBin22])
  {
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin22")}];
    [entryCopy setObject:v30 forKeyedSubscript:@"dur_bin_22"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_22"];
  }

  if ([classCopy hasDurBin23])
  {
    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin23")}];
    [entryCopy setObject:v31 forKeyedSubscript:@"dur_bin_23"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_23"];
  }

  if ([classCopy hasDurBin24])
  {
    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin24")}];
    [entryCopy setObject:v32 forKeyedSubscript:@"dur_bin_24"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_24"];
  }

  if ([classCopy hasDurBin25])
  {
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin25")}];
    [entryCopy setObject:v33 forKeyedSubscript:@"dur_bin_25"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_25"];
  }

  if ([classCopy hasDurBin26])
  {
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin26")}];
    [entryCopy setObject:v34 forKeyedSubscript:@"dur_bin_26"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_26"];
  }

  if ([classCopy hasDurBin27])
  {
    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin27")}];
    [entryCopy setObject:v35 forKeyedSubscript:@"dur_bin_27"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_27"];
  }

  if ([classCopy hasDurBin28])
  {
    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin28")}];
    [entryCopy setObject:v36 forKeyedSubscript:@"dur_bin_28"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_28"];
  }

  if ([classCopy hasDurBin29])
  {
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin29")}];
    [entryCopy setObject:v37 forKeyedSubscript:@"dur_bin_29"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_29"];
  }

  if ([classCopy hasDurBin30])
  {
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin30")}];
    [entryCopy setObject:v38 forKeyedSubscript:@"dur_bin_30"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_30"];
  }

  if ([classCopy hasDurBin31])
  {
    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durBin31")}];
    [entryCopy setObject:v39 forKeyedSubscript:@"dur_bin_31"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_31"];
  }
}

- (void)sleepStatesForClass:(id)class forEntry:(id)entry
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
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([classCopy hasDurationMs])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durationMs")}];
    [entryCopy setObject:v7 forKeyedSubscript:@"duration"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"duration"];
  }

  if ([classCopy hasSubsId])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "subsId")}];
    [entryCopy setObject:v8 forKeyedSubscript:@"subs_id"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0C978 forKeyedSubscript:@"subs_id"];
  }

  if ([classCopy binsCount])
  {
    v9 = 0;
    do
    {
      v10 = [classCopy binAtIndex:v9];
      if ([v10 hasRat])
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"rat_%d", v9];
        v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "rat")}];
        [entryCopy setObject:v12 forKeyedSubscript:v11];
      }

      if ([v10 hasRrcState])
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"rrcState_%d", v9];
        v14 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "rrcState")}];
        [entryCopy setObject:v14 forKeyedSubscript:v13];
      }

      if ([v10 hasDeployment])
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"deployment_%d", v9];
        v16 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "deployment")}];
        [entryCopy setObject:v16 forKeyedSubscript:v15];
      }

      if ([v10 hasSocSleepState])
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"socSleepState_%d", v9];
        v18 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "socSleepState")}];
        [entryCopy setObject:v18 forKeyedSubscript:v17];
      }

      if ([v10 hasDurationMs])
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"durationMs_%d", v9];
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "durationMs")}];
        [entryCopy setObject:v20 forKeyedSubscript:v19];
      }

      if ([v10 hasCount])
      {
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"count_%d", v9];
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "count")}];
        [entryCopy setObject:v22 forKeyedSubscript:v21];
      }

      ++v9;
    }

    while ([classCopy binsCount] > v9);
  }
}

@end