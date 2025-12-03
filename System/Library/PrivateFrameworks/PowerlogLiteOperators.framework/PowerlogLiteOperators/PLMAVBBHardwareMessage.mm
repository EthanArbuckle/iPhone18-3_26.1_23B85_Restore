@interface PLMAVBBHardwareMessage
+ (id)entryEventBackwardDefinitionBBMavEventMetrics;
+ (id)entryEventBackwardDefinitionBBMavPeriodicMetrics;
- (PLMAVBBHardwareMessage)init;
- (id)decodePayload:(id)payload forMetricId:(id)id;
- (id)initEntryWithBBTS:(id)s triggerId:(id)id seqnum:(id)seqnum payload:(id)payload logAgent:(id)agent;
- (void)addToListMetric:(id)metric payload:(id)payload;
- (void)logBBMavAperiodicMetrics;
- (void)logBBMavPeriodicMetrics;
- (void)lteComponentCarrierForClass:(id)class forEntry:(id)entry;
- (void)nrComponentCarrierForClass:(id)class forEntry:(id)entry;
- (void)protocolHistForClass:(id)class forEntry:(id)entry;
@end

@implementation PLMAVBBHardwareMessage

- (void)logBBMavAperiodicMetrics
{
  v21 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __50__PLMAVBBHardwareMessage_logBBMavAperiodicMetrics__block_invoke;
    v17 = &__block_descriptor_40_e5_v8__0lu32l8;
    v18 = v3;
    if (qword_2811F70B0 != -1)
    {
      dispatch_once(&qword_2811F70B0, &block);
    }

    if (_MergedGlobals_81 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLMAVBBHardwareMessage logBBMavAperiodicMetrics]", block, v15, v16, v17, v18];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KMAV/PLMAVBBHardwareMessage.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMAVBBHardwareMessage logBBMavAperiodicMetrics]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:128];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BBMavEventMetrics"];
  v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  v12 = v11;
  if (v11)
  {
    [v11 setEntryDate:self->_bbMonotonic];
    [v12 setObject:self->_bbtimestamp forKeyedSubscript:@"bbtimestamp"];
    [v12 setObject:self->_triggerCnt forKeyedSubscript:@"triggerCnt"];
    [v12 setObject:self->_triggerId forKeyedSubscript:@"metricId"];
    [v12 setObject:self->_metricData forKeyedSubscript:@"metricData"];
    [(PLAgent *)self->_logAgent logEntry:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)logBBMavPeriodicMetrics
{
  v21 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __49__PLMAVBBHardwareMessage_logBBMavPeriodicMetrics__block_invoke;
    v17 = &__block_descriptor_40_e5_v8__0lu32l8;
    v18 = v3;
    if (qword_2811F70B8 != -1)
    {
      dispatch_once(&qword_2811F70B8, &block);
    }

    if (byte_2811F70A9 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLMAVBBHardwareMessage logBBMavPeriodicMetrics]", block, v15, v16, v17, v18];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KMAV/PLMAVBBHardwareMessage.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMAVBBHardwareMessage logBBMavPeriodicMetrics]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:147];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BBMavPeriodicMetrics"];
  v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  v12 = v11;
  if (v11)
  {
    [v11 setEntryDate:self->_bbMonotonic];
    [v12 setObject:self->_triggerId forKeyedSubscript:@"triggerId"];
    [v12 setObject:self->_bbtimestamp forKeyedSubscript:@"bbtimestamp"];
    [v12 setObject:self->_triggerCnt forKeyedSubscript:@"triggerCnt"];
    [v12 setObject:self->_metricIdArr forKeyedSubscript:@"mid"];
    [v12 setObject:self->_metricDataArr forKeyedSubscript:@"data"];
    [(PLAgent *)self->_logAgent logEntry:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (PLMAVBBHardwareMessage)init
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    __assert_rtn("[PLMAVBBHardwareMessage init]", "PLMAVBBHardwareMessage.m", 56, "0");
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
  v29.super_class = PLMAVBBHardwareMessage;
  v17 = [(PLMAVBBHardwareMessage *)&v29 init];
  if (v17)
  {
    v18 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:{(objc_msgSend(sCopy, "integerValue") / 1000)}];
    convertFromBasebandToMonotonic = [v18 convertFromBasebandToMonotonic];
    bbMonotonic = v17->_bbMonotonic;
    v17->_bbMonotonic = convertFromBasebandToMonotonic;

    objc_storeStrong(&v17->_triggerId, id);
    objc_storeStrong(&v17->_bbtimestamp, s);
    objc_storeStrong(&v17->_triggerCnt, seqnum);
    v21 = [PLMAVBBMetricUtility convertToStringData:payloadCopy];
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

+ (id)entryEventBackwardDefinitionBBMavPeriodicMetrics
{
  v29[2] = *MEMORY[0x277D85DE8];
  v28[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F558];
  v26[0] = *MEMORY[0x277D3F568];
  v26[1] = v2;
  v27[0] = &unk_282C1BB28;
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
  v23[0] = &unk_282C0CB58;
  v23[1] = &unk_282C0CB70;
  v22 = *MEMORY[0x277D3F5A0];
  v8 = v22;
  v23[2] = &unk_282C0CB88;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v21 count:3];
  v25[3] = v9;
  v24[4] = @"data";
  v19[0] = v6;
  v19[1] = v7;
  v20[0] = &unk_282C0CB58;
  v20[1] = &unk_282C0CB70;
  v19[2] = v8;
  v20[2] = &unk_282C0CBA0;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v25[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:5];
  v29[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionBBMavEventMetrics
{
  v21[2] = *MEMORY[0x277D85DE8];
  v20[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F558];
  v18[0] = *MEMORY[0x277D3F568];
  v18[1] = v2;
  v19[0] = &unk_282C1BB28;
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

uint64_t __50__PLMAVBBHardwareMessage_logBBMavAperiodicMetrics__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_81 = result;
  return result;
}

uint64_t __49__PLMAVBBHardwareMessage_logBBMavPeriodicMetrics__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F70A9 = result;
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
    v21 = __50__PLMAVBBHardwareMessage_addToListMetric_payload___block_invoke;
    v22 = &__block_descriptor_40_e5_v8__0lu32l8;
    v23 = v9;
    if (qword_2811F70C0 != -1)
    {
      dispatch_once(&qword_2811F70C0, &block);
    }

    if (byte_2811F70AA == 1)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLMAVBBHardwareMessage addToListMetric:payload:]", block, v20, v21, v22, v23];
      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KMAV/PLMAVBBHardwareMessage.m"];
      lastPathComponent = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMAVBBHardwareMessage addToListMetric:payload:]"];
      [v11 logMessage:v10 fromFile:lastPathComponent fromFunction:v14 fromLineNumber:168];

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
  v17 = [PLMAVBBMetricUtility convertToStringData:payloadCopy];

  [(NSMutableArray *)metricDataArr addObject:v17];
  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __50__PLMAVBBHardwareMessage_addToListMetric_payload___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F70AA = result;
  return result;
}

- (id)decodePayload:(id)payload forMetricId:(id)id
{
  v27 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  idCopy = id;
  v8 = objc_opt_new();
  [v8 setObject:idCopy forKeyedSubscript:@"metricId"];
  v9 = [[AWDMETRICSCellularPowerLog alloc] initWithData:payloadCopy];
  integerValue = [idCopy integerValue];
  switch(integerValue)
  {
    case 816650:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogL1SleepStatesAtIndex:0];
      goto LABEL_63;
    case 816651:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogLTEConfiguredCASCCStatesAtIndex:0];
      goto LABEL_63;
    case 816652:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogLTEActivatedCASCCStatesAtIndex:0];
      goto LABEL_63;
    case 816653:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogLTERxTxActivityStatesAtIndex:0];
      goto LABEL_63;
    case 816654:
      v21 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogLTECarrierComponentInfoAtIndex:0];
      [(PLMAVBBHardwareMessage *)self lteComponentCarrierForClass:v21 forEntry:v8];
      goto LABEL_64;
    case 816655:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogLTEAggregatedDLTBSAtIndex:0];
      goto LABEL_63;
    case 816656:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogLTERSRPAtIndex:0];
      goto LABEL_63;
    case 816657:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogLTESINRAtIndex:0];
      goto LABEL_63;
    case 816658:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogLTETxPowerAtIndex:0];
      goto LABEL_63;
    case 816659:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogLTERxDiversityAtIndex:0];
      goto LABEL_63;
    case 816660:
    case 816662:
    case 816663:
    case 816672:
    case 816684:
    case 816685:
    case 816686:
    case 816687:
    case 816688:
    case 816689:
    case 816690:
    case 816691:
    case 816692:
    case 816693:
    case 816694:
    case 816695:
    case 816696:
    case 816697:
    case 816698:
    case 816699:
    case 816701:
    case 816708:
    case 816711:
    case 816714:
    case 816716:
    case 816723:
      goto LABEL_6;
    case 816661:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogPowerEstimatorAtIndex:0];
      goto LABEL_63;
    case 816664:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogProtocolStateAtIndex:0];
      goto LABEL_63;
    case 816665:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogPLMNSearchAtIndex:0];
      goto LABEL_63;
    case 816666:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogGSMTxPowerAtIndex:0];
      goto LABEL_63;
    case 816667:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogGSMRxRSSIAtIndex:0];
      goto LABEL_63;
    case 816668:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogGSMRABModeAtIndex:0];
      goto LABEL_63;
    case 816669:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogGSMRxDiversityAtIndex:0];
      goto LABEL_63;
    case 816670:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogWCDMATxPowerAtIndex:0];
      goto LABEL_63;
    case 816671:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogWCDMARxRSSIAtIndex:0];
      goto LABEL_63;
    case 816673:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogWCDMARxDiversityAtIndex:0];
      goto LABEL_63;
    case 816674:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogWCDMARABModeAtIndex:0];
      goto LABEL_63;
    case 816675:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogWCDMARABTypeAtIndex:0];
      goto LABEL_63;
    case 816676:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogEVDOTxPowerAtIndex:0];
      goto LABEL_63;
    case 816677:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogEVDORxRSSIAtIndex:0];
      goto LABEL_63;
    case 816678:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogHybridRABModeAtIndex:0];
      goto LABEL_63;
    case 816679:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogEVDORxDiversityAtIndex:0];
      goto LABEL_63;
    case 816680:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogCDMA1XTxPowerAtIndex:0];
      goto LABEL_63;
    case 816681:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogCDMA1XRxRSSIAtIndex:0];
      goto LABEL_63;
    case 816682:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogCDMA1XRABModeAtIndex:0];
      goto LABEL_63;
    case 816683:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogCDMA1XRxDiversityAtIndex:0];
      goto LABEL_63;
    case 816700:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogNRsub6BWPAtIndex:0];
      goto LABEL_63;
    case 816702:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogNRsub6CASCCConfiguredAtIndex:0];
      goto LABEL_63;
    case 816703:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogNRsub6CASCCActivatedAtIndex:0];
      goto LABEL_63;
    case 816704:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogNRsub6RxTxAtIndex:0];
      goto LABEL_63;
    case 816705:
      v20 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogNRsub6CarrierComponentInfoAtIndex:0];
      goto LABEL_59;
    case 816706:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogNRsub6DLTBSAtIndex:0];
      goto LABEL_63;
    case 816707:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogNRsub6RSRPAtIndex:0];
      goto LABEL_63;
    case 816709:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogNRsub6TxPowerAtIndex:0];
      goto LABEL_63;
    case 816710:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogNRsub6RxDiversityAtIndex:0];
      goto LABEL_63;
    case 816712:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogNRmmWaveBWPAtIndex:0];
      goto LABEL_63;
    case 816713:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogNRmmWaveAntennaPanelAtIndex:0];
      goto LABEL_63;
    case 816715:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogNRmmWaveBeamIDAtIndex:0];
      goto LABEL_63;
    case 816717:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogNRmmWaveCASCCConfiguredAtIndex:0];
      goto LABEL_63;
    case 816718:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogNRmmWaveCASCCActivatedAtIndex:0];
      goto LABEL_63;
    case 816719:
    case 816724:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogNRMmWaveTxPowerAtIndex:0];
      goto LABEL_63;
    case 816720:
      v20 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogNRmmWaveCarrierComponentInfoAtIndex:0];
LABEL_59:
      v21 = v20;
      [(PLMAVBBHardwareMessage *)self nrComponentCarrierForClass:v20 forEntry:v8];
      goto LABEL_64;
    case 816721:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogNRmmWaveDLTBSAtIndex:0];
      goto LABEL_63;
    case 816722:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogNRMmWaveRSRPAtIndex:0];
      goto LABEL_63;
    case 816725:
      v11 = [(AWDMETRICSCellularPowerLog *)v9 cellularPowerLogNRMmWaveULCAStateAtIndex:0];
LABEL_63:
      v21 = v11;
      [(PLMAVBBHardwareMessage *)self protocolHistForClass:v11 forEntry:v8];
LABEL_64:

      goto LABEL_65;
    default:
      if (integerValue == 786435)
      {
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          __assert_rtn("[PLMAVBBHardwareMessage decodePayload:forMetricId:]", "PLMAVBBHardwareMessage.m", 190, "0");
        }

LABEL_65:
        v19 = v8;
      }

      else
      {
LABEL_6:
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v12 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __52__PLMAVBBHardwareMessage_decodePayload_forMetricId___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v12;
          if (qword_2811F70C8 != -1)
          {
            dispatch_once(&qword_2811F70C8, block);
          }

          if (byte_2811F70AB == 1)
          {
            v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: unexpected metric Id"];
            v14 = MEMORY[0x277D3F178];
            v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KMAV/PLMAVBBHardwareMessage.m"];
            lastPathComponent = [v15 lastPathComponent];
            v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMAVBBHardwareMessage decodePayload:forMetricId:]"];
            [v14 logMessage:v13 fromFile:lastPathComponent fromFunction:v17 fromLineNumber:503];

            v18 = PLLogCommon();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v26 = v13;
              _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        v19 = 0;
      }

      v22 = *MEMORY[0x277D85DE8];

      return v19;
  }
}

uint64_t __52__PLMAVBBHardwareMessage_decodePayload_forMetricId___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F70AB = result;
  return result;
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
    [entryCopy setObject:&unk_282C0CBB8 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([classCopy hasDurationMs])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "durationMs")}];
    [entryCopy setObject:v7 forKeyedSubscript:@"duration"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0CBB8 forKeyedSubscript:@"duration"];
  }

  if ([classCopy hasSubsId])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "subsId")}];
    [entryCopy setObject:v8 forKeyedSubscript:@"subs_id"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0CBB8 forKeyedSubscript:@"subs_id"];
  }

  if ([classCopy binsCount])
  {
    v9 = 0;
    do
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"dur_bin_%d", v9];
      v11 = [classCopy binAtIndex:v9];
      if ([v11 hasBinId] && objc_msgSend(v11, "hasDuration"))
      {
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v11, "duration")}];
        [entryCopy setObject:v12 forKeyedSubscript:v10];
      }

      else
      {
        [entryCopy setObject:&unk_282C0CBB8 forKeyedSubscript:v10];
      }

      ++v9;
    }

    while ([classCopy binsCount] > v9);
  }
}

- (void)lteComponentCarrierForClass:(id)class forEntry:(id)entry
{
  classCopy = class;
  entryCopy = entry;
  if ([classCopy carrierInfosCount])
  {
    v6 = 0;
    do
    {
      v7 = [classCopy carrierInfoAtIndex:v6];
      if ([v7 hasBand])
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"dl_rf_band_%d", v6];
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v7, "band")}];
        [entryCopy setObject:v9 forKeyedSubscript:v8];
      }

      if ([v7 hasBandwidth])
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"dl_bandwidth_%d", v6];
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v7, "bandwidth")}];
        [entryCopy setObject:v11 forKeyedSubscript:v10];
      }

      if ([v7 hasEarfcn])
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"dl_earfcn_%d", v6];
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v7, "earfcn")}];
        [entryCopy setObject:v13 forKeyedSubscript:v12];
      }

      if ([v7 hasType])
      {
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"dl_type_%d", v6];
        v15 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "type")}];
        [entryCopy setObject:v15 forKeyedSubscript:v14];
      }

      if ([v7 hasDuplex])
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"dl_duplex_%d", v6];
        v17 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "duplex")}];
        [entryCopy setObject:v17 forKeyedSubscript:v16];
      }

      ++v6;
    }

    while ([classCopy carrierInfosCount] > v6);
  }

  if ([classCopy hasTimestamp])
  {
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(classCopy, "timestamp")}];
    [entryCopy setObject:v18 forKeyedSubscript:@"bbtimestamp"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0CBB8 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([classCopy hasSubsId])
  {
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "subsId")}];
    [entryCopy setObject:v19 forKeyedSubscript:@"subs_id"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0CBB8 forKeyedSubscript:@"subs_id"];
  }
}

- (void)nrComponentCarrierForClass:(id)class forEntry:(id)entry
{
  classCopy = class;
  entryCopy = entry;
  if ([classCopy carrierInfosCount])
  {
    v6 = 0;
    do
    {
      v7 = [classCopy carrierInfoAtIndex:v6];
      if ([v7 hasBand])
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"dl_rf_band_%d", v6];
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v7, "band")}];
        [entryCopy setObject:v9 forKeyedSubscript:v8];
      }

      if ([v7 hasBandwidth])
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"dl_bandwidth_%d", v6];
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v7, "bandwidth")}];
        [entryCopy setObject:v11 forKeyedSubscript:v10];
      }

      if ([v7 hasEarfcn])
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"dl_earfcn_%d", v6];
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v7, "earfcn")}];
        [entryCopy setObject:v13 forKeyedSubscript:v12];
      }

      if ([v7 hasType])
      {
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"dl_type_%d", v6];
        v15 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "type")}];
        [entryCopy setObject:v15 forKeyedSubscript:v14];
      }

      if ([v7 hasDuplex])
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"dl_duplex_%d", v6];
        v17 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "duplex")}];
        [entryCopy setObject:v17 forKeyedSubscript:v16];
      }

      ++v6;
    }

    while ([classCopy carrierInfosCount] > v6);
  }

  if ([classCopy hasTimestamp])
  {
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(classCopy, "timestamp")}];
    [entryCopy setObject:v18 forKeyedSubscript:@"bbtimestamp"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0CBB8 forKeyedSubscript:@"bbtimestamp"];
  }

  if ([classCopy hasSubsId])
  {
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(classCopy, "subsId")}];
    [entryCopy setObject:v19 forKeyedSubscript:@"subs_id"];
  }

  else
  {
    [entryCopy setObject:&unk_282C0CBB8 forKeyedSubscript:@"subs_id"];
  }
}

@end