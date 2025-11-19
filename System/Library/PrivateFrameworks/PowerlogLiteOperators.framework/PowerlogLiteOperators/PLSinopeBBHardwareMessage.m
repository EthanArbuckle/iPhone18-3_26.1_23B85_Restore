@interface PLSinopeBBHardwareMessage
- (PLSinopeBBHardwareMessage)init;
- (id)decodePayload:(id)a3 forMetricId:(id)a4;
- (id)initEntryWithBBTS:(id)a3 triggerId:(id)a4 seqnum:(id)a5 payload:(id)a6 logAgent:(id)a7;
- (void)addToListMetric:(id)a3 payload:(id)a4;
- (void)dlTbsHistForClass:(id)a3 forEntry:(id)a4;
- (void)gsmRabModeHistForClass:(id)a3 forEntry:(id)a4;
- (void)logBBSinopeAperiodicMetrics;
- (void)logBBSinopePeriodicMetrics;
- (void)lteCaConfigActStatsForClass:(id)a3 forEntry:(id)a4;
- (void)lteComponentCarrierInfoForClass:(id)a3 forEntry:(id)a4;
- (void)lteNrRxDivForClass:(id)a3 forEntry:(id)a4;
- (void)lteNrRxTxActForClass:(id)a3 forEntry:(id)a4;
- (void)lteNrTxPowerForClass:(id)a3 forEntry:(id)a4;
- (void)nrCCInfoForClass:(id)a3 forEntry:(id)a4;
- (void)nrCaConfigActForClass:(id)a3 forEntry:(id)a4;
- (void)plmnSearchHistForClass:(id)a3 forEntry:(id)a4;
- (void)powerEstimatorForClass:(id)a3 forEntry:(id)a4;
- (void)protocolStackHistForClass:(id)a3 forEntry:(id)a4;
- (void)protocolStateForClass:(id)a3 forEntry:(id)a4;
- (void)sleepStatesForClass:(id)a3 forEntry:(id)a4;
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

- (id)initEntryWithBBTS:(id)a3 triggerId:(id)a4 seqnum:(id)a5 payload:(id)a6 logAgent:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v36.receiver = self;
  v36.super_class = PLSinopeBBHardwareMessage;
  v18 = [(PLSinopeBBHardwareMessage *)&v36 init];
  if (v18)
  {
    v35 = v17;
    v19 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:{(objc_msgSend(v13, "integerValue") / 1000)}];
    v20 = [(NSDate *)v19 convertFromBasebandToMonotonic];
    bbMonotonic = v18->_bbMonotonic;
    v18->_bbMonotonic = v20;

    obj = a7;
    v22 = v13;
    v23 = v15;
    v24 = v14;
    timestampLogged = v18->_timestampLogged;
    v18->_timestampLogged = v19;
    v26 = v19;

    objc_storeStrong(&v18->_triggerId, a4);
    objc_storeStrong(&v18->_bbtimestamp, a3);
    objc_storeStrong(&v18->_triggerCnt, a5);
    v27 = [PLSinopeBBMetricUtility convertToStringData:v16];
    metricData = v18->_metricData;
    v18->_metricData = v27;

    v29 = objc_opt_new();
    metricIdArr = v18->_metricIdArr;
    v18->_metricIdArr = v29;

    v14 = v24;
    v15 = v23;
    v13 = v22;
    v31 = objc_opt_new();
    metricDataArr = v18->_metricDataArr;
    v18->_metricDataArr = v31;

    objc_storeStrong(&v18->_logAgent, obj);
    v17 = v35;
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
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSinopeBBHardwareMessage logBBSinopeAperiodicMetrics]"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:113];

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
  v13 = [MEMORY[0x277CBEAA8] monotonicDate];
  if (v12)
  {
    if (([MEMORY[0x277D3F208] isBasebandClass:1003009] & 1) == 0)
    {
      [v12 setEntryDate:self->_bbMonotonic];
    }

    [v12 setObject:self->_bbtimestamp forKeyedSubscript:@"bbtimestamp"];
    [v12 setObject:v13 forKeyedSubscript:@"timestampLogged"];
    [v12 setObject:self->_triggerCnt forKeyedSubscript:@"triggerCnt"];
    [v12 setObject:self->_triggerId forKeyedSubscript:@"mid"];
    [v12 setObject:self->_metricData forKeyedSubscript:@"data"];
    if ([MEMORY[0x277D3F208] isBasebandProto])
    {
      logAgent = self->_logAgent;
      v15 = [v12 dictionary];
      v16 = [v12 entryDate];
      [(PLAgent *)logAgent logForSubsystem:@"BasebandMetrics" category:@"Events" data:v15 date:v16];
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
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSinopeBBHardwareMessage logBBSinopePeriodicMetrics]"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:140];

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
  v13 = [MEMORY[0x277CBEAA8] monotonicDate];
  if (v12)
  {
    if (([MEMORY[0x277D3F208] isBasebandClass:1003009] & 1) == 0)
    {
      [(NSMutableArray *)v12 setEntryDate:self->_bbMonotonic];
    }

    [(NSMutableArray *)v12 setObject:self->_triggerId forKeyedSubscript:@"triggerId"];
    [(NSMutableArray *)v12 setObject:self->_bbtimestamp forKeyedSubscript:@"bbtimestamp"];
    [(NSMutableArray *)v12 setObject:v13 forKeyedSubscript:@"timestampLogged"];
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
      v16 = [(NSMutableArray *)v12 dictionary];
      v17 = [(NSMutableArray *)v12 entryDate];
      [(PLAgent *)logAgent logForSubsystem:@"BasebandMetrics" category:@"Histogram" data:v16 date:v17];
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

- (void)addToListMetric:(id)a3 payload:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSinopeBBHardwareMessage addToListMetric:payload:]"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:171];

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
    v27 = v6;
    v28 = 2112;
    v29 = v7;
    _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "[BBAgent] : in @%s metricId: %@, data: %@", buf, 0x20u);
  }

  [(NSMutableArray *)self->_metricIdArr addObject:v6];
  metricDataArr = self->_metricDataArr;
  v17 = [PLSinopeBBMetricUtility convertToStringData:v7];
  [(NSMutableArray *)metricDataArr addObject:v17];

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __53__PLSinopeBBHardwareMessage_addToListMetric_payload___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7042 = result;
  return result;
}

- (id)decodePayload:(id)a3 forMetricId:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  [v8 setObject:v6 forKeyedSubscript:@"mid"];
  v9 = [[AWDMETRICSMetricLogPower alloc] initWithData:v7];

  v10 = PLLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v15 = [(AWDMETRICSMetricLogPower *)v9 dictionaryRepresentation];
    *buf = 138412290;
    v28 = v15;
    _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v11 = [v6 integerValue];
  if (v11 <= 3962429)
  {
    if (v11 > 3962388)
    {
      if (v11 > 3962392)
      {
        if (v11 == 3962393)
        {
          v13 = [(AWDMETRICSMetricLogPower *)v9 kCellularPowerLogPLMNSearchAtIndex:0];
          [(PLSinopeBBHardwareMessage *)self plmnSearchHistForClass:v13 forEntry:v8];
          goto LABEL_45;
        }

        if (v11 != 3962396)
        {
          goto LABEL_50;
        }

        v13 = [(AWDMETRICSMetricLogPower *)v9 kCellularPowerLogGSMRABModeAtIndex:0];
        [(PLSinopeBBHardwareMessage *)self gsmRabModeHistForClass:v13 forEntry:v8];
      }

      else
      {
        if (v11 == 3962389)
        {
          v13 = [(AWDMETRICSMetricLogPower *)v9 kCellularPowerLogPowerEstimatorAtIndex:0];
          [(PLSinopeBBHardwareMessage *)self powerEstimatorForClass:v13 forEntry:v8];
          goto LABEL_45;
        }

        if (v11 != 3962392)
        {
          goto LABEL_50;
        }

        v13 = [(AWDMETRICSMetricLogPower *)v9 kCellularPowerLogProtocolStateAtIndex:0];
        [(PLSinopeBBHardwareMessage *)self protocolStateForClass:v13 forEntry:v8];
      }

LABEL_45:

      goto LABEL_46;
    }

    if (v11 <= 3962381)
    {
      if (v11 == 3932163)
      {
LABEL_46:
        v16 = v8;
        goto LABEL_47;
      }

      if (v11 != 3962379)
      {
        goto LABEL_50;
      }

      v13 = [(AWDMETRICSMetricLogPower *)v9 kCellularPowerLogLteCaConfigActivateStatsAtIndex:0];
      [(PLSinopeBBHardwareMessage *)self lteCaConfigActStatsForClass:v13 forEntry:v8];
      goto LABEL_45;
    }

    if (v11 == 3962382)
    {
      v13 = [(AWDMETRICSMetricLogPower *)v9 kCellularPowerLogLteCarrierComponentInfoAtIndex:0];
      [(PLSinopeBBHardwareMessage *)self lteComponentCarrierInfoForClass:v13 forEntry:v8];
      goto LABEL_45;
    }

    if (v11 != 3962383)
    {
      goto LABEL_50;
    }

    v14 = [(AWDMETRICSMetricLogPower *)v9 kCellularPowerLogLTEAggregatedDLTBSAtIndex:0];
LABEL_37:
    v13 = v14;
    [(PLSinopeBBHardwareMessage *)self dlTbsHistForClass:v14 forEntry:v8];
    goto LABEL_45;
  }

  if (v11 <= 3962437)
  {
    if (v11 <= 3962433)
    {
      if (v11 == 3962430)
      {
        v13 = [(AWDMETRICSMetricLogPower *)v9 kCellularPowerLogNrCaConfigActivateStatsAtIndex:0];
        [(PLSinopeBBHardwareMessage *)self nrCaConfigActForClass:v13 forEntry:v8];
      }

      else
      {
        if (v11 != 3962433)
        {
          goto LABEL_50;
        }

        v13 = [(AWDMETRICSMetricLogPower *)v9 kCellularPowerLogNRCarrierComponentInfoAtIndex:0];
        [(PLSinopeBBHardwareMessage *)self nrCCInfoForClass:v13 forEntry:v8];
      }

      goto LABEL_45;
    }

    if (v11 != 3962434)
    {
      if (v11 != 3962437)
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

  if (v11 <= 3962477)
  {
    if (v11 == 3962438)
    {
      v13 = [(AWDMETRICSMetricLogPower *)v9 kCellularPowerLogLteNrTxPowerHistAtIndex:0];
      [(PLSinopeBBHardwareMessage *)self lteNrTxPowerForClass:v13 forEntry:v8];
      goto LABEL_45;
    }

    if (v11 != 3962439)
    {
      goto LABEL_50;
    }

    v13 = [(AWDMETRICSMetricLogPower *)v9 kCellularPowerLogLteNrRxTxActivityStatsAtIndex:0];
    [(PLSinopeBBHardwareMessage *)self lteNrRxTxActForClass:v13 forEntry:v8];
    goto LABEL_45;
  }

  switch(v11)
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
      v23 = [v22 lastPathComponent];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSinopeBBHardwareMessage decodePayload:forMetricId:]"];
      [v21 logMessage:v20 fromFile:v23 fromFunction:v24 fromLineNumber:295];

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

- (void)protocolStateForClass:(id)a3 forEntry:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v23 = "[PLSinopeBBHardwareMessage protocolStateForClass:forEntry:]";
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "[BBAgent] %s", buf, 0xCu);
  }

  if ([v5 hasTimestamp])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "timestamp")}];
    [v6 setObject:v8 forKeyedSubscript:@"bbtimestamp"];
  }

  else
  {
    [v6 setObject:&unk_282C0C978 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([v5 hasDurationMs])
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v5, "durationMs")}];
    [v6 setObject:v9 forKeyedSubscript:@"duration"];
  }

  else
  {
    [v6 setObject:&unk_282C0C978 forKeyedSubscript:@"duration"];
  }

  if ([v5 hasSubsId])
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v5, "subsId")}];
    [v6 setObject:v10 forKeyedSubscript:@"subs_id"];
  }

  else
  {
    [v6 setObject:&unk_282C0C978 forKeyedSubscript:@"subs_id"];
  }

  if ([v5 binsCount])
  {
    v11 = 0;
    do
    {
      v12 = [v5 binAtIndex:v11];
      if ([v12 hasBinId])
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"bin_id_%d", v11];
        v14 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v12, "binId")}];
        [v6 setObject:v14 forKeyedSubscript:v13];
      }

      if ([v12 hasDuration])
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"duration_%d", v11];
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v12, "duration")}];
        [v6 setObject:v16 forKeyedSubscript:v15];
      }

      if ([v12 hasCount])
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"count_%d", v11];
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v12, "count")}];
        [v6 setObject:v18 forKeyedSubscript:v17];
      }

      if ([v12 hasDurationBinIndex])
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"durationBinIndex_%d", v11];
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v12, "durationBinIndex")}];
        [v6 setObject:v20 forKeyedSubscript:v19];
      }

      ++v11;
    }

    while ([v5 binsCount] > v11);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)dlTbsHistForClass:(id)a3 forEntry:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v17 = "[PLSinopeBBHardwareMessage dlTbsHistForClass:forEntry:]";
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "[BBAgent] %s", buf, 0xCu);
  }

  if ([v5 hasTimestamp])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "timestamp")}];
    [v6 setObject:v8 forKeyedSubscript:@"bbtimestamp"];
  }

  else
  {
    [v6 setObject:&unk_282C0C978 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([v5 hasDurationMs])
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v5, "durationMs")}];
    [v6 setObject:v9 forKeyedSubscript:@"duration"];
  }

  else
  {
    [v6 setObject:&unk_282C0C978 forKeyedSubscript:@"duration"];
  }

  if ([v5 hasSubsId])
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v5, "subsId")}];
    [v6 setObject:v10 forKeyedSubscript:@"subs_id"];
  }

  else
  {
    [v6 setObject:&unk_282C0C978 forKeyedSubscript:@"subs_id"];
  }

  if ([v5 binsCount])
  {
    v11 = 0;
    do
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"dur_bin_%d", v11];
      v13 = [v5 binAtIndex:v11];
      if ([v13 hasDuration])
      {
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v13, "duration")}];
        [v6 setObject:v14 forKeyedSubscript:v12];
      }

      else
      {
        [v6 setObject:&unk_282C0C978 forKeyedSubscript:v12];
      }

      ++v11;
    }

    while ([v5 binsCount] > v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)gsmRabModeHistForClass:(id)a3 forEntry:(id)a4
{
  v13 = a3;
  v5 = a4;
  if ([v13 hasTimestamp])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v13, "timestamp")}];
    [v5 setObject:v6 forKeyedSubscript:@"bbtimestamp"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([v13 hasDurationMs])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v13, "durationMs")}];
    [v5 setObject:v7 forKeyedSubscript:@"duration"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"duration"];
  }

  if ([v13 hasSubsId])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v13, "subsId")}];
    [v5 setObject:v8 forKeyedSubscript:@"subs_id"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"subs_id"];
  }

  if ([v13 binsCount])
  {
    v9 = 0;
    do
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"dur_bin_%d", v9];
      v11 = [v13 binAtIndex:v9];
      if ([v11 hasDuration])
      {
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v11, "duration")}];
        [v5 setObject:v12 forKeyedSubscript:v10];
      }

      else
      {
        [v5 setObject:&unk_282C0C978 forKeyedSubscript:v10];
      }

      ++v9;
    }

    while ([v13 binsCount] > v9);
  }
}

- (void)lteCaConfigActStatsForClass:(id)a3 forEntry:(id)a4
{
  v19 = a3;
  v5 = a4;
  if ([v19 hasTimestamp])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v19, "timestamp")}];
    [v5 setObject:v6 forKeyedSubscript:@"bbtimestamp"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([v19 hasDurationMs])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v19, "durationMs")}];
    [v5 setObject:v7 forKeyedSubscript:@"duration"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"duration"];
  }

  if ([v19 hasSubsId])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v19, "subsId")}];
    [v5 setObject:v8 forKeyedSubscript:@"subs_id"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"subs_id"];
  }

  if ([v19 binsCount])
  {
    v9 = 0;
    do
    {
      v10 = [v19 binAtIndex:v9];
      if ([v10 hasDuration])
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"dur_bin_%d", v9];
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "duration")}];
        [v5 setObject:v12 forKeyedSubscript:v11];
      }

      if ([v10 hasCcConfigured])
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"cc_configured_%d", v9];
        v14 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "ccConfigured")}];
        [v5 setObject:v14 forKeyedSubscript:v13];
      }

      if ([v10 hasCcActivated])
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"cc_activated_%d", v9];
        v16 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "ccActivated")}];
        [v5 setObject:v16 forKeyedSubscript:v15];
      }

      if ([v10 hasDirection])
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"direction_%d", v9];
        v18 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "direction")}];
        [v5 setObject:v18 forKeyedSubscript:v17];
      }

      ++v9;
    }

    while ([v19 binsCount] > v9);
  }
}

- (void)lteComponentCarrierInfoForClass:(id)a3 forEntry:(id)a4
{
  v21 = a3;
  v5 = a4;
  if ([v21 hasTimestamp])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v21, "timestamp")}];
    [v5 setObject:v6 forKeyedSubscript:@"bbtimestamp"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([v21 hasSubsId])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v21, "subsId")}];
    [v5 setObject:v7 forKeyedSubscript:@"subs_id"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"subs_id"];
  }

  if ([v21 carrierInfosCount])
  {
    v8 = 0;
    do
    {
      v9 = [v21 carrierInfoAtIndex:v8];
      if ([v9 hasBand])
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"band_%d", v8];
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v9, "band")}];
        [v5 setObject:v11 forKeyedSubscript:v10];
      }

      if ([v9 hasBandwidth])
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"bandwidth_%d", v8];
        v13 = MEMORY[0x277CCABB0];
        [v9 bandwidth];
        v14 = [v13 numberWithFloat:?];
        [v5 setObject:v14 forKeyedSubscript:v12];
      }

      if ([v9 hasEarfcn])
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"earfcn_%d", v8];
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v9, "earfcn")}];
        [v5 setObject:v16 forKeyedSubscript:v15];
      }

      if ([v9 hasType])
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"type_%d", v8];
        v18 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v9, "type")}];
        [v5 setObject:v18 forKeyedSubscript:v17];
      }

      if ([v9 hasDuplex])
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"duplex_%d", v8];
        v20 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v9, "duplex")}];
        [v5 setObject:v20 forKeyedSubscript:v19];
      }

      ++v8;
    }

    while ([v21 carrierInfosCount] > v8);
  }
}

- (void)lteNrRxDivForClass:(id)a3 forEntry:(id)a4
{
  v23 = a3;
  v5 = a4;
  if ([v23 hasTimestamp])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v23, "timestamp")}];
    [v5 setObject:v6 forKeyedSubscript:@"bbtimestamp"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([v23 hasDurationMs])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v23, "durationMs")}];
    [v5 setObject:v7 forKeyedSubscript:@"duration"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"duration"];
  }

  if ([v23 hasSubsId])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v23, "subsId")}];
    [v5 setObject:v8 forKeyedSubscript:@"subs_id"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"subs_id"];
  }

  if ([v23 cellsCount])
  {
    v9 = 0;
    do
    {
      v10 = [v23 cellAtIndex:v9];
      if ([v10 hasIsEndc])
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"is_endc_%d", v9];
        v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v10, "isEndc")}];
        [v5 setObject:v12 forKeyedSubscript:v11];
      }

      if ([v10 hasRat])
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"rat_%d", v9];
        v14 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "rat")}];
        [v5 setObject:v14 forKeyedSubscript:v13];
      }

      if ([v10 hasMcgCcNum])
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"mcg_cc_num_%d", v9];
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "mcgCcNum")}];
        [v5 setObject:v16 forKeyedSubscript:v15];
      }

      if ([v10 hasCaIndex])
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"ca_index_%d", v9];
        v18 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "caIndex")}];
        [v5 setObject:v18 forKeyedSubscript:v17];
      }

      if ([v10 hasRxDivState])
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"rx_div_state_%d", v9];
        v20 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "rxDivState")}];
        [v5 setObject:v20 forKeyedSubscript:v19];
      }

      if ([v10 hasDurationMs])
      {
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"duration_ms_%d", v9];
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "durationMs")}];
        [v5 setObject:v22 forKeyedSubscript:v21];
      }

      ++v9;
    }

    while ([v23 cellsCount] > v9);
  }
}

- (void)lteNrRxTxActForClass:(id)a3 forEntry:(id)a4
{
  v19 = a3;
  v5 = a4;
  if ([v19 hasTimestamp])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v19, "timestamp")}];
    [v5 setObject:v6 forKeyedSubscript:@"bbtimestamp"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([v19 hasDurationMs])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v19, "durationMs")}];
    [v5 setObject:v7 forKeyedSubscript:@"duration"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"duration"];
  }

  if ([v19 hasSubsId])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v19, "subsId")}];
    [v5 setObject:v8 forKeyedSubscript:@"subs_id"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"subs_id"];
  }

  if ([v19 rxTxActsCount])
  {
    v9 = 0;
    do
    {
      v10 = [v19 rxTxActAtIndex:v9];
      if ([v10 hasRatDpl])
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"rat_dpl_%d", v9];
        v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "ratDpl")}];
        [v5 setObject:v12 forKeyedSubscript:v11];
      }

      if ([v10 hasCaState])
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"ca_state_%d", v9];
        v14 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "caState")}];
        [v5 setObject:v14 forKeyedSubscript:v13];
      }

      if ([v10 hasActState])
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"act_state_%d", v9];
        v16 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "actState")}];
        [v5 setObject:v16 forKeyedSubscript:v15];
      }

      if ([v10 hasCount])
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"count_%d", v9];
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "count")}];
        [v5 setObject:v18 forKeyedSubscript:v17];
      }

      ++v9;
    }

    while ([v19 rxTxActsCount] > v9);
  }
}

- (void)lteNrTxPowerForClass:(id)a3 forEntry:(id)a4
{
  v18 = a3;
  v5 = a4;
  if ([v18 hasTimestamp])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v18, "timestamp")}];
    [v5 setObject:v6 forKeyedSubscript:@"bbtimestamp"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([v18 hasDurationMs])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v18, "durationMs")}];
    [v5 setObject:v7 forKeyedSubscript:@"duration"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"duration"];
  }

  if ([v18 hasSubsId])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v18, "subsId")}];
    [v5 setObject:v8 forKeyedSubscript:@"subs_id"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"subs_id"];
  }

  if ([v18 histsCount])
  {
    v9 = 0;
    do
    {
      v10 = [v18 histAtIndex:v9];
      if ([v10 hasRat])
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"rat_%d", v9];
        v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "rat")}];
        [v5 setObject:v12 forKeyedSubscript:v11];
      }

      if ([v10 hasChanType])
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"chan_type_%d", v9];
        v14 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "chanType")}];
        [v5 setObject:v14 forKeyedSubscript:v13];
      }

      if ([v10 countsCount] && objc_msgSend(v10, "countsCount"))
      {
        v15 = 0;
        do
        {
          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"count_%d_%d", v9, v15];
          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "countAtIndex:", v15)}];
          [v5 setObject:v17 forKeyedSubscript:v16];

          ++v15;
        }

        while ([v10 countsCount] > v15);
      }

      ++v9;
    }

    while ([v18 histsCount] > v9);
  }
}

- (void)nrCaConfigActForClass:(id)a3 forEntry:(id)a4
{
  v23 = a3;
  v5 = a4;
  if ([v23 hasTimestamp])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v23, "timestamp")}];
    [v5 setObject:v6 forKeyedSubscript:@"bbtimestamp"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([v23 hasDurationMs])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v23, "durationMs")}];
    [v5 setObject:v7 forKeyedSubscript:@"duration"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"duration"];
  }

  if ([v23 hasSubsId])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v23, "subsId")}];
    [v5 setObject:v8 forKeyedSubscript:@"subs_id"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"subs_id"];
  }

  if ([v23 binsCount])
  {
    v9 = 0;
    do
    {
      v10 = [v23 binAtIndex:v9];
      if ([v10 ccConfigured])
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"cc_configured_%d", v9];
        v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "ccConfigured")}];
        [v5 setObject:v12 forKeyedSubscript:v11];
      }

      if ([v10 ccActivated])
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"cc_activated_%d", v9];
        v14 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "ccActivated")}];
        [v5 setObject:v14 forKeyedSubscript:v13];
      }

      if ([v10 hasDuration])
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"duration_%d", v9];
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "duration")}];
        [v5 setObject:v16 forKeyedSubscript:v15];
      }

      if ([v10 hasDirection])
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"direction_%d", v9];
        v18 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "direction")}];
        [v5 setObject:v18 forKeyedSubscript:v17];
      }

      if ([v10 hasIsEndc])
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"is_endc_%d", v9];
        v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v10, "isEndc")}];
        [v5 setObject:v20 forKeyedSubscript:v19];
      }

      if ([v10 hasFreqRange])
      {
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"freq_range_%d", v9];
        v22 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "freqRange")}];
        [v5 setObject:v22 forKeyedSubscript:v21];
      }

      ++v9;
    }

    while ([v23 binsCount] > v9);
  }
}

- (void)nrCCInfoForClass:(id)a3 forEntry:(id)a4
{
  v21 = a3;
  v5 = a4;
  if ([v21 hasTimestamp])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v21, "timestamp")}];
    [v5 setObject:v6 forKeyedSubscript:@"bbtimestamp"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([v21 hasFreqRange])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v21, "freqRange")}];
    [v5 setObject:v7 forKeyedSubscript:@"freq_range"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"freq_range"];
  }

  if ([v21 hasSubsId])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v21, "subsId")}];
    [v5 setObject:v8 forKeyedSubscript:@"subs_id"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"subs_id"];
  }

  if ([v21 carrierInfosCount])
  {
    v9 = 0;
    do
    {
      v10 = [v21 carrierInfoAtIndex:v9];
      if ([v10 hasBand])
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"band_%d", v9];
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "band")}];
        [v5 setObject:v12 forKeyedSubscript:v11];
      }

      if ([v10 hasBandwidth])
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"bandwidth_%d", v9];
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "bandwidth")}];
        [v5 setObject:v14 forKeyedSubscript:v13];
      }

      if ([v10 hasNarfcn])
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"narfcn_%d", v9];
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "narfcn")}];
        [v5 setObject:v16 forKeyedSubscript:v15];
      }

      if ([v10 hasType])
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"type_%d", v9];
        v18 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "type")}];
        [v5 setObject:v18 forKeyedSubscript:v17];
      }

      if ([v10 hasDuplex])
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"duplex_%d", v9];
        v20 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "duplex")}];
        [v5 setObject:v20 forKeyedSubscript:v19];
      }

      ++v9;
    }

    while ([v21 carrierInfosCount] > v9);
  }
}

- (void)plmnSearchHistForClass:(id)a3 forEntry:(id)a4
{
  v17 = a3;
  v5 = a4;
  if ([v17 hasTimestamp])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v17, "timestamp")}];
    [v5 setObject:v6 forKeyedSubscript:@"bbtimestamp"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([v17 hasDurationMs])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v17, "durationMs")}];
    [v5 setObject:v7 forKeyedSubscript:@"duration"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"duration"];
  }

  if ([v17 hasSubsId])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v17, "subsId")}];
    [v5 setObject:v8 forKeyedSubscript:@"subs_id"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"subs_id"];
  }

  if ([v17 binsCount])
  {
    v9 = 0;
    do
    {
      v10 = [v17 binAtIndex:v9];
      if ([v10 hasBinId])
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"bin_id_%d", v9];
        v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "binId")}];
        [v5 setObject:v12 forKeyedSubscript:v11];
      }

      if ([v10 hasDuration])
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"duration_%d", v9];
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "duration")}];
        [v5 setObject:v14 forKeyedSubscript:v13];
      }

      if ([v10 hasSearchDurationBinIndex])
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"searchDuration_%d", v9];
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "searchDurationBinIndex")}];
        [v5 setObject:v16 forKeyedSubscript:v15];
      }

      ++v9;
    }

    while ([v17 binsCount] > v9);
  }
}

- (void)powerEstimatorForClass:(id)a3 forEntry:(id)a4
{
  v22 = a3;
  v5 = a4;
  if ([v22 hasTimestamp])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v22, "timestamp")}];
    [v5 setObject:v6 forKeyedSubscript:@"bbtimestamp"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([v22 hasDurationMs])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v22, "durationMs")}];
    [v5 setObject:v7 forKeyedSubscript:@"duration"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"duration"];
  }

  if ([v22 powerStatsCount])
  {
    v8 = 0;
    do
    {
      v9 = [v22 powerStatsAtIndex:v8];
      if ([v9 hasComponent])
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"component_%d", v8];
        v11 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v9, "component")}];
        [v5 setObject:v11 forKeyedSubscript:v10];
      }

      if ([v9 hasAvgPowerMw])
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"avgPowerMw_%d", v8];
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v9, "avgPowerMw")}];
        [v5 setObject:v13 forKeyedSubscript:v12];
      }

      if ([v9 hasAvgActivePowerMw])
      {
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"avgActivePowerMw_%d", v8];
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v9, "avgActivePowerMw")}];
        [v5 setObject:v15 forKeyedSubscript:v14];
      }

      if ([v9 hasPeakPowerMw])
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"peakPowerMw_%d", v8];
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v9, "peakPowerMw")}];
        [v5 setObject:v17 forKeyedSubscript:v16];
      }

      if ([v9 hasCumulatedEnergyMj])
      {
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"cumulatedEnergyMj_%d", v8];
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v9, "cumulatedEnergyMj")}];
        [v5 setObject:v19 forKeyedSubscript:v18];
      }

      if ([v9 hasActiveDurationMs])
      {
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"activeDurationMs_%d", v8];
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v9, "activeDurationMs")}];
        [v5 setObject:v21 forKeyedSubscript:v20];
      }

      ++v8;
    }

    while ([v22 powerStatsCount] > v8);
  }
}

- (void)protocolStackHistForClass:(id)a3 forEntry:(id)a4
{
  v40 = a3;
  v5 = a4;
  if ([v40 hasTimestamp])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v40, "timestamp")}];
    [v5 setObject:v6 forKeyedSubscript:@"bbtimestamp"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([v40 hasDurationMs])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v40, "durationMs")}];
    [v5 setObject:v7 forKeyedSubscript:@"duration"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"duration"];
  }

  if ([v40 hasDurBin0])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v40, "durBin0")}];
    [v5 setObject:v8 forKeyedSubscript:@"dur_bin_0"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_0"];
  }

  if ([v40 hasDurBin1])
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v40, "durBin1")}];
    [v5 setObject:v9 forKeyedSubscript:@"dur_bin_1"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_1"];
  }

  if ([v40 hasDurBin2])
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v40, "durBin2")}];
    [v5 setObject:v10 forKeyedSubscript:@"dur_bin_2"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_2"];
  }

  if ([v40 hasDurBin3])
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v40, "durBin3")}];
    [v5 setObject:v11 forKeyedSubscript:@"dur_bin_3"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_3"];
  }

  if ([v40 hasDurBin4])
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v40, "durBin4")}];
    [v5 setObject:v12 forKeyedSubscript:@"dur_bin_4"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_4"];
  }

  if ([v40 hasDurBin5])
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v40, "durBin5")}];
    [v5 setObject:v13 forKeyedSubscript:@"dur_bin_5"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_5"];
  }

  if ([v40 hasDurBin6])
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v40, "durBin6")}];
    [v5 setObject:v14 forKeyedSubscript:@"dur_bin_6"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_6"];
  }

  if ([v40 hasDurBin7])
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v40, "durBin7")}];
    [v5 setObject:v15 forKeyedSubscript:@"dur_bin_7"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_7"];
  }

  if ([v40 hasDurBin8])
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v40, "durBin8")}];
    [v5 setObject:v16 forKeyedSubscript:@"dur_bin_8"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_8"];
  }

  if ([v40 hasDurBin9])
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v40, "durBin9")}];
    [v5 setObject:v17 forKeyedSubscript:@"dur_bin_9"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_9"];
  }

  if ([v40 hasDurBin10])
  {
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v40, "durBin10")}];
    [v5 setObject:v18 forKeyedSubscript:@"dur_bin_10"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_10"];
  }

  if ([v40 hasDurBin11])
  {
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v40, "durBin11")}];
    [v5 setObject:v19 forKeyedSubscript:@"dur_bin_11"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_11"];
  }

  if ([v40 hasDurBin12])
  {
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v40, "durBin12")}];
    [v5 setObject:v20 forKeyedSubscript:@"dur_bin_12"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_12"];
  }

  if ([v40 hasDurBin13])
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v40, "durBin13")}];
    [v5 setObject:v21 forKeyedSubscript:@"dur_bin_13"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_13"];
  }

  if ([v40 hasDurBin14])
  {
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v40, "durBin14")}];
    [v5 setObject:v22 forKeyedSubscript:@"dur_bin_14"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_14"];
  }

  if ([v40 hasDurBin15])
  {
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v40, "durBin15")}];
    [v5 setObject:v23 forKeyedSubscript:@"dur_bin_15"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_15"];
  }

  if ([v40 hasDurBin16])
  {
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v40, "durBin16")}];
    [v5 setObject:v24 forKeyedSubscript:@"dur_bin_16"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_16"];
  }

  if ([v40 hasDurBin17])
  {
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v40, "durBin17")}];
    [v5 setObject:v25 forKeyedSubscript:@"dur_bin_17"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_17"];
  }

  if ([v40 hasDurBin18])
  {
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v40, "durBin18")}];
    [v5 setObject:v26 forKeyedSubscript:@"dur_bin_18"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_18"];
  }

  if ([v40 hasDurBin19])
  {
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v40, "durBin19")}];
    [v5 setObject:v27 forKeyedSubscript:@"dur_bin_19"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_19"];
  }

  if ([v40 hasDurBin20])
  {
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v40, "durBin20")}];
    [v5 setObject:v28 forKeyedSubscript:@"dur_bin_20"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_20"];
  }

  if ([v40 hasDurBin21])
  {
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v40, "durBin21")}];
    [v5 setObject:v29 forKeyedSubscript:@"dur_bin_21"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_21"];
  }

  if ([v40 hasDurBin22])
  {
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v40, "durBin22")}];
    [v5 setObject:v30 forKeyedSubscript:@"dur_bin_22"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_22"];
  }

  if ([v40 hasDurBin23])
  {
    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v40, "durBin23")}];
    [v5 setObject:v31 forKeyedSubscript:@"dur_bin_23"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_23"];
  }

  if ([v40 hasDurBin24])
  {
    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v40, "durBin24")}];
    [v5 setObject:v32 forKeyedSubscript:@"dur_bin_24"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_24"];
  }

  if ([v40 hasDurBin25])
  {
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v40, "durBin25")}];
    [v5 setObject:v33 forKeyedSubscript:@"dur_bin_25"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_25"];
  }

  if ([v40 hasDurBin26])
  {
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v40, "durBin26")}];
    [v5 setObject:v34 forKeyedSubscript:@"dur_bin_26"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_26"];
  }

  if ([v40 hasDurBin27])
  {
    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v40, "durBin27")}];
    [v5 setObject:v35 forKeyedSubscript:@"dur_bin_27"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_27"];
  }

  if ([v40 hasDurBin28])
  {
    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v40, "durBin28")}];
    [v5 setObject:v36 forKeyedSubscript:@"dur_bin_28"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_28"];
  }

  if ([v40 hasDurBin29])
  {
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v40, "durBin29")}];
    [v5 setObject:v37 forKeyedSubscript:@"dur_bin_29"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_29"];
  }

  if ([v40 hasDurBin30])
  {
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v40, "durBin30")}];
    [v5 setObject:v38 forKeyedSubscript:@"dur_bin_30"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_30"];
  }

  if ([v40 hasDurBin31])
  {
    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v40, "durBin31")}];
    [v5 setObject:v39 forKeyedSubscript:@"dur_bin_31"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"dur_bin_31"];
  }
}

- (void)sleepStatesForClass:(id)a3 forEntry:(id)a4
{
  v23 = a3;
  v5 = a4;
  if ([v23 hasTimestamp])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v23, "timestamp")}];
    [v5 setObject:v6 forKeyedSubscript:@"bbtimestamp"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([v23 hasDurationMs])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v23, "durationMs")}];
    [v5 setObject:v7 forKeyedSubscript:@"duration"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"duration"];
  }

  if ([v23 hasSubsId])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v23, "subsId")}];
    [v5 setObject:v8 forKeyedSubscript:@"subs_id"];
  }

  else
  {
    [v5 setObject:&unk_282C0C978 forKeyedSubscript:@"subs_id"];
  }

  if ([v23 binsCount])
  {
    v9 = 0;
    do
    {
      v10 = [v23 binAtIndex:v9];
      if ([v10 hasRat])
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"rat_%d", v9];
        v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "rat")}];
        [v5 setObject:v12 forKeyedSubscript:v11];
      }

      if ([v10 hasRrcState])
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"rrcState_%d", v9];
        v14 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "rrcState")}];
        [v5 setObject:v14 forKeyedSubscript:v13];
      }

      if ([v10 hasDeployment])
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"deployment_%d", v9];
        v16 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "deployment")}];
        [v5 setObject:v16 forKeyedSubscript:v15];
      }

      if ([v10 hasSocSleepState])
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"socSleepState_%d", v9];
        v18 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "socSleepState")}];
        [v5 setObject:v18 forKeyedSubscript:v17];
      }

      if ([v10 hasDurationMs])
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"durationMs_%d", v9];
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "durationMs")}];
        [v5 setObject:v20 forKeyedSubscript:v19];
      }

      if ([v10 hasCount])
      {
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"count_%d", v9];
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "count")}];
        [v5 setObject:v22 forKeyedSubscript:v21];
      }

      ++v9;
    }

    while ([v23 binsCount] > v9);
  }
}

@end