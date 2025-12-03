@interface PLAWDBB
+ (id)entryAggregateDefinitionAwdBBQlm;
+ (id)entryAggregateDefinitionAwdBBQlmCounter;
+ (id)entryAggregateDefinitionAwdConnectedPower;
+ (id)entryAggregateDefinitionAwdVolte;
+ (id)entryAggregateDefinitions;
+ (id)getSharedObjWithOperator:(id)operator;
- (BOOL)submitConnectedPower:(id)power withAwdConn:(id)conn;
- (BOOL)submitDataToAWDServer:(id)server withAwdConn:(id)conn;
- (double)getIntervalSinceLastUpdateWithEntryName:(id)name;
- (int)convertQualityWithLinkQuality:(double)quality;
- (void)bbLTEWriteAggregatedTableWithRFLTEEntry:(id)entry withPoint:(id)point;
- (void)finalizePeriodWithUpBytes:(unsigned int)bytes withDownBytes:(unsigned int)downBytes;
- (void)finalizeTableWithEntry:(id)entry;
- (void)handleAcountGroupCallback:(id)callback;
- (void)handleBBLqmCellularActiveCallback:(id)callback;
- (void)handleBBLqmCumulativeNetworkCallback:(id)callback;
- (void)handleBBRailCallbackBBICE:(id)e;
- (void)handleBBRailCallbackBBProtocol:(id)protocol;
- (void)handleBBRailCallbackBBTx:(id)tx;
- (void)handleBBRailCallbackLTESleep:(id)sleep;
- (void)handleBBRailCallbackOos:(id)oos;
- (void)handleBBRailCallbackTxCdma2K:(id)k;
- (void)handleBBRailCallbackTxCdma:(id)cdma;
- (void)handleBBRailCallbackTxEvdo:(id)evdo;
- (void)handleBBRailCallbackTxGsm:(id)gsm;
- (void)handleBBRailCallbackTxLte:(id)lte;
- (void)handleBBRailCallbackTxUtran:(id)utran;
- (void)handleIceStatsCallback:(id)callback;
- (void)handleRfLTE:(id)e;
- (void)handleRfLTEOffline;
- (void)handleTelephonyActiveCallback:(id)callback;
- (void)resetAllBBLqmTables;
- (void)resetBBLqmCounterTable;
- (void)resetBBLqmTable;
- (void)resetBBVoLTETable;
- (void)resetConnectedPowerTable;
- (void)startAppBB;
- (void)startAppRrc;
- (void)startBBLqm;
- (void)startBBPower;
- (void)startConnectedPower;
- (void)startMetricCollection:(id)collection;
- (void)stopAppRrc;
- (void)stopBBLqm;
- (void)stopBBPower;
- (void)stopMetricCollection:(id)collection;
- (void)submitAppBB:(id)b withAwdConn:(id)conn;
- (void)submitAppRrc:(id)rrc withAwdConn:(id)conn;
- (void)submitBBLqm:(id)lqm withAwdConn:(id)conn;
- (void)updateCurrLqmState;
@end

@implementation PLAWDBB

+ (id)getSharedObjWithOperator:(id)operator
{
  v3 = plAwdBb;
  if (!plAwdBb)
  {
    operatorCopy = operator;
    v5 = [(PLAWDAuxMetrics *)[PLAWDBB alloc] initWithOperator:operatorCopy];

    v6 = plAwdBb;
    plAwdBb = v5;

    v3 = plAwdBb;
  }

  return v3;
}

+ (id)entryAggregateDefinitions
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10[0] = @"awdBBLqm";
  entryAggregateDefinitionAwdBBQlm = [self entryAggregateDefinitionAwdBBQlm];
  v11[0] = entryAggregateDefinitionAwdBBQlm;
  v10[1] = @"awdBBLqmCounter";
  entryAggregateDefinitionAwdBBQlmCounter = [self entryAggregateDefinitionAwdBBQlmCounter];
  v11[1] = entryAggregateDefinitionAwdBBQlmCounter;
  v10[2] = @"BBConnectedPower";
  entryAggregateDefinitionAwdConnectedPower = [self entryAggregateDefinitionAwdConnectedPower];
  v11[2] = entryAggregateDefinitionAwdConnectedPower;
  v10[3] = @"Volte";
  entryAggregateDefinitionAwdVolte = [self entryAggregateDefinitionAwdVolte];
  v11[3] = entryAggregateDefinitionAwdVolte;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)startMetricCollection:(id)collection
{
  collectionCopy = collection;
  runningMetrics = [(PLAWDAuxMetrics *)self runningMetrics];
  [runningMetrics addObject:collectionCopy];

  longValue = [collectionCopy longValue];
  if (longValue <= 2031629)
  {
    if (longValue == 2031628)
    {

      [(PLAWDBB *)self startAppRrc];
    }

    else if (longValue == 2031629)
    {

      [(PLAWDBB *)self startAppBB];
    }
  }

  else
  {
    switch(longValue)
    {
      case 2031630:

        [(PLAWDBB *)self startConnectedPower];
        break;
      case 2031631:

        [(PLAWDBB *)self startBBLqm];
        break;
      case 2031632:

        [(PLAWDBB *)self startBBPower];
        break;
    }
  }
}

- (void)stopMetricCollection:(id)collection
{
  collectionCopy = collection;
  runningMetrics = [(PLAWDAuxMetrics *)self runningMetrics];
  [runningMetrics removeObject:collectionCopy];

  longValue = [collectionCopy longValue];
  if (longValue > 2031629)
  {
    if (longValue == 2031630)
    {
      [(PLAWDBB *)self stopConnectedPower];
    }

    else if (longValue == 2031631)
    {
      [(PLAWDBB *)self stopBBLqm];
    }
  }

  else if (longValue == 2031628)
  {
    [(PLAWDBB *)self stopAppRrc];
  }

  else if (longValue == 2031629)
  {
    [(PLAWDBB *)self stopAppBB];
  }

  runningMetrics2 = [(PLAWDAuxMetrics *)self runningMetrics];
  v8 = [runningMetrics2 count];

  if (!v8)
  {
    v9 = plAwdBb;
    plAwdBb = 0;
  }
}

- (BOOL)submitDataToAWDServer:(id)server withAwdConn:(id)conn
{
  serverCopy = server;
  connCopy = conn;
  longValue = [serverCopy longValue];
  v9 = 0;
  if (longValue > 2031630)
  {
    if ((longValue - 2031632) >= 2)
    {
      if (longValue != 2031631)
      {
        goto LABEL_12;
      }

      [(PLAWDBB *)self submitBBLqm:serverCopy withAwdConn:connCopy];
    }

LABEL_11:
    v9 = 1;
    goto LABEL_12;
  }

  switch(longValue)
  {
    case 2031628:
      [(PLAWDBB *)self submitAppRrc:serverCopy withAwdConn:connCopy];
      goto LABEL_11;
    case 2031629:
      [(PLAWDBB *)self submitAppBB:serverCopy withAwdConn:connCopy];
      goto LABEL_11;
    case 2031630:
      v9 = [(PLAWDBB *)self submitConnectedPower:serverCopy withAwdConn:connCopy];
      break;
  }

LABEL_12:

  return v9;
}

+ (id)entryAggregateDefinitionAwdBBQlm
{
  v29[4] = *MEMORY[0x277D85DE8];
  v28[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v26[0] = *MEMORY[0x277D3F568];
  v26[1] = v2;
  v27[0] = &unk_2870FEEE0;
  v27[1] = MEMORY[0x277CBEC28];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v29[0] = v18;
  v28[1] = *MEMORY[0x277D3F540];
  v24[0] = @"BBLinkQuality";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v25[0] = commonTypeDict_IntegerFormat;
  v24[1] = @"BBLqmTx";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_aggregateFunction_sum = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat_aggregateFunction_sum];
  v25[1] = commonTypeDict_IntegerFormat_aggregateFunction_sum;
  v24[2] = @"BBLqmRx";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_aggregateFunction_sum2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat_aggregateFunction_sum];
  v25[2] = commonTypeDict_IntegerFormat_aggregateFunction_sum2;
  v24[3] = @"BBLqmTime";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat_aggregateFunction_sum = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat_aggregateFunction_sum];
  v25[3] = commonTypeDict_RealFormat_aggregateFunction_sum;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];
  v29[1] = v8;
  v28[2] = *MEMORY[0x277D3F478];
  v22 = &unk_2870FEEF0;
  v20 = *MEMORY[0x277D3F470];
  v21 = &unk_2870FEEF0;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v23 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v29[2] = v10;
  v28[3] = *MEMORY[0x277D3F488];
  v19[0] = @"BBLqmTx";
  v19[1] = @"BBLqmRx";
  v19[2] = @"BBLqmTime";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  v29[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryAggregateDefinitionAwdBBQlmCounter
{
  v25[4] = *MEMORY[0x277D85DE8];
  v24[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v22[0] = *MEMORY[0x277D3F568];
  v22[1] = v2;
  v23[0] = &unk_2870FEF00;
  v23[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v25[0] = v3;
  v24[1] = *MEMORY[0x277D3F540];
  v20[0] = @"BBLqmSwitchBucket";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v20[1] = @"BBLqmSwitchCounter";
  v21[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_aggregateFunction_sum = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat_aggregateFunction_sum];
  v21[1] = commonTypeDict_IntegerFormat_aggregateFunction_sum;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v25[1] = v8;
  v24[2] = *MEMORY[0x277D3F478];
  v18 = &unk_2870FEEF0;
  v16 = *MEMORY[0x277D3F470];
  v17 = &unk_2870FEEF0;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v25[2] = v10;
  v24[3] = *MEMORY[0x277D3F488];
  v15 = @"BBLqmSwitchCounter";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v25[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)startBBLqm
{
  [(PLAWDBB *)self resetAllBBLqmTables];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLAWDBB *)self setStartTimeBBLqm:monotonicDate];

  [(PLAWDBB *)self setUpBytes:0];
  [(PLAWDBB *)self setDownBytes:0];
  [(PLAWDBB *)self setUpBytesLTE:0];
  [(PLAWDBB *)self setDownBytesLTE:0];
  v4 = [MEMORY[0x277D3F6C8] entryKeyForType:*MEMORY[0x277D3F5D0] andName:*MEMORY[0x277D3F7B8]];
  v5 = objc_alloc(MEMORY[0x277D3F1A8]);
  operator = [(PLAWDAuxMetrics *)self operator];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __21__PLAWDBB_startBBLqm__block_invoke;
  v15[3] = &unk_279A58F10;
  v15[4] = self;
  v7 = [v5 initWithOperator:operator forEntryKey:v4 withBlock:v15];

  [(PLAWDBB *)self setBbLqmCellularActiveCallback:v7];
  v8 = [MEMORY[0x277D3F6B0] entryKeyForType:*MEMORY[0x277D3F5C8] andName:*MEMORY[0x277D3F7D0]];
  v9 = objc_alloc(MEMORY[0x277D3F1A8]);
  operator2 = [(PLAWDAuxMetrics *)self operator];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __21__PLAWDBB_startBBLqm__block_invoke_2;
  v14[3] = &unk_279A58F10;
  v14[4] = self;
  v11 = [v9 initWithOperator:operator2 forEntryKey:v8 withBlock:v14];

  [(PLAWDBB *)self setBbLqmCumulativeNetworkCallback:v11];
  [(PLAWDBB *)self updateCurrLqmState];
  bbLqmCellularActiveCallback = [(PLAWDBB *)self bbLqmCellularActiveCallback];
  [bbLqmCellularActiveCallback requestEntry];

  bbLqmCumulativeNetworkCallback = [(PLAWDBB *)self bbLqmCumulativeNetworkCallback];
  [bbLqmCumulativeNetworkCallback requestEntry];
}

uint64_t __21__PLAWDBB_startBBLqm__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) handleBBLqmCellularActiveCallback:a2];
  }

  return result;
}

uint64_t __21__PLAWDBB_startBBLqm__block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) handleBBLqmCumulativeNetworkCallback:a2];
  }

  return result;
}

- (void)updateCurrLqmState
{
  v7 = [MEMORY[0x277D3F6C8] entryKeyForType:*MEMORY[0x277D3F5D0] andName:*MEMORY[0x277D3F7B8]];
  operator = [(PLAWDAuxMetrics *)self operator];
  storage = [operator storage];
  v5 = [storage lastEntryForKey:v7];

  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:@"LinkQuality"];
    [v6 doubleValue];
    [(PLAWDBB *)self setNewQuality:[(PLAWDBB *)self convertQualityWithLinkQuality:?]];
  }

  else
  {
    [(PLAWDBB *)self setNewQuality:0];
  }

  [(PLAWDBB *)self setCurrQuality:[(PLAWDBB *)self newQuality]];
  [(PLAWDBB *)self updateLQMTableWithQuality:[(PLAWDBB *)self newQuality] withTime:0.0 withRX:0.0 withTX:0.0];
}

- (void)finalizeTableWithEntry:(id)entry
{
  v5 = [MEMORY[0x277D3F6C8] entryKeyForType:*MEMORY[0x277D3F5D0] andName:*MEMORY[0x277D3F7B8]];
  [(PLAWDBB *)self getIntervalSinceLastUpdateWithEntryName:v5];
  [(PLAWDBB *)self updateLQMTableWithQuality:[(PLAWDBB *)self newQuality] withTime:v4 withRX:0.0 withTX:0.0];
}

- (double)getIntervalSinceLastUpdateWithEntryName:(id)name
{
  nameCopy = name;
  operator = [(PLAWDAuxMetrics *)self operator];
  storage = [operator storage];
  v7 = [storage lastEntryForKey:nameCopy];

  entryDate = [v7 entryDate];
  startTimeBBLqm = [(PLAWDBB *)self startTimeBBLqm];
  v10 = [entryDate laterDate:startTimeBBLqm];
  [v10 timeIntervalSinceMonitonicNow];
  v12 = -v11;

  return v12;
}

- (void)stopBBLqm
{
  [(PLAWDBB *)self setBbLqmCellularActiveCallback:0];

  [(PLAWDBB *)self setBbLqmCumulativeNetworkCallback:0];
}

- (void)submitBBLqm:(id)lqm withAwdConn:(id)conn
{
  v94 = *MEMORY[0x277D85DE8];
  lqmCopy = lqm;
  connCopy = conn;
  v8 = *MEMORY[0x277D3F5B8];
  v9 = [(PLOperator *)PLAWDMetricsService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"awdBBLqm"];
  [(PLAWDBB *)self finalizeTableWithEntry:v9];
  v10 = [connCopy newMetricContainerWithIdentifier:{objc_msgSend(lqmCopy, "unsignedIntValue")}];
  v11 = v10;
  if (v10)
  {
    v72 = v8;
    v75 = v10;
    v77 = connCopy;
    v78 = lqmCopy;
    bbLqmCellularActiveCallback = [(PLAWDBB *)self bbLqmCellularActiveCallback];
    [bbLqmCellularActiveCallback requestEntry];

    bbLqmCumulativeNetworkCallback = [(PLAWDBB *)self bbLqmCumulativeNetworkCallback];
    [bbLqmCumulativeNetworkCallback requestEntry];

    sleep(5u);
    v79 = objc_opt_new();
    v82 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:-86400.0];
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    [v14 timeIntervalSince1970];
    v17 = v16;
    [monotonicDate timeIntervalSince1970];
    v19 = v18 - v17;

    selfCopy = self;
    operator = [(PLAWDAuxMetrics *)self operator];
    storage = [operator storage];
    v76 = v9;
    v22 = [storage aggregateEntriesForKey:v9 withBucketLength:86400.0 inTimeIntervalRange:{v17, v19}];

    v74 = v22;
    [MEMORY[0x277D3F190] summarizeAggregateEntries:v22];
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    obj = v90 = 0u;
    v23 = [obj countByEnumeratingWithState:&v87 objects:v93 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v88;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v88 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v87 + 1) + 8 * i);
          v28 = objc_opt_new();
          [v28 setBundleName:@"no name"];
          v29 = [v27 objectForKeyedSubscript:@"BBLqmTime"];
          [v29 doubleValue];
          [v28 setStateDuration:(v30 * 1000.0)];

          v31 = [v27 objectForKeyedSubscript:@"BBLinkQuality"];
          [v31 doubleValue];
          [v28 setLQM:v32];

          v33 = [v27 objectForKeyedSubscript:@"BBLqmRx"];
          [v33 doubleValue];
          [v28 setRxBytes:v34];

          v35 = [v27 objectForKeyedSubscript:@"BBLqmTx"];
          [v35 doubleValue];
          [v28 setTxBytes:v36];

          [v82 addObject:v28];
        }

        v24 = [obj countByEnumeratingWithState:&v87 objects:v93 count:16];
      }

      while (v24);
    }

    [v79 setLQMBytes:v82];
    v37 = [(PLOperator *)PLAWDMetricsService entryKeyForType:v72 andName:@"awdBBLqmCounter"];
    operator2 = [(PLAWDAuxMetrics *)selfCopy operator];
    storage2 = [operator2 storage];
    v73 = v37;
    v40 = [storage2 aggregateEntriesForKey:v37 withBucketLength:86400.0 inTimeIntervalRange:{v17, v19}];

    v71 = v40;
    v41 = [MEMORY[0x277D3F190] summarizeAggregateEntries:v40];
    memset(v92, 0, sizeof(v92));
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v42 = [v41 countByEnumeratingWithState:&v83 objects:v91 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = 0;
      v45 = *v84;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v84 != v45)
          {
            objc_enumerationMutation(v41);
          }

          v47 = *(*(&v83 + 1) + 8 * j);
          v48 = [v47 objectForKeyedSubscript:@"BBLqmSwitchBucket"];
          [v48 doubleValue];
          v50 = v49;

          if (v50 == 6.0)
          {
            v44 = 0;
          }

          else
          {
            v51 = [v47 objectForKeyedSubscript:@"BBLqmSwitchBucket"];
            [v51 doubleValue];
            v53 = v52;

            if (v53 == 12.0)
            {
              v44 = 1;
            }

            else
            {
              v54 = [v47 objectForKeyedSubscript:@"BBLqmSwitchBucket"];
              [v54 doubleValue];
              v56 = v55;

              if (v56 == 20.0)
              {
                v44 = 2;
              }

              else
              {
                v57 = [v47 objectForKeyedSubscript:@"BBLqmSwitchBucket"];
                [v57 doubleValue];
                v59 = v58;

                if (v59 == 100.0)
                {
                  v44 = 3;
                }

                else
                {
                  v60 = [v47 objectForKeyedSubscript:@"BBLqmSwitchBucket"];
                  [v60 doubleValue];
                  v62 = v61;

                  if (v62 == 300.0)
                  {
                    v44 = 4;
                  }

                  else
                  {
                    v63 = [v47 objectForKeyedSubscript:@"BBLqmSwitchBucket"];
                    [v63 doubleValue];
                    v65 = v64;

                    if (v65 == 301.0)
                    {
                      v44 = 5;
                    }
                  }
                }
              }
            }
          }

          v66 = [v47 objectForKeyedSubscript:@"BBLqmSwitchCounter"];
          [v66 doubleValue];
          *(v92 + v44) = v67;
        }

        v43 = [v41 countByEnumeratingWithState:&v83 objects:v91 count:16];
      }

      while (v43);
    }

    [v79 setLQMTransitionCntBuckets:v92 count:6];
    [v79 setLQMBytes:v82];
    v11 = v75;
    [v75 setMetric:v79];
    connCopy = v77;
    [v77 submitMetric:v75];

    lqmCopy = v78;
    self = selfCopy;
    v9 = v76;
  }

  [(PLAWDBB *)self setUpBytes:0];
  [(PLAWDBB *)self setDownBytes:0];
  [(PLAWDBB *)self setUpBytesLTE:0];
  [(PLAWDBB *)self setDownBytesLTE:0];
  bbLqmCumulativeNetworkCallback2 = [(PLAWDBB *)self bbLqmCumulativeNetworkCallback];
  [bbLqmCumulativeNetworkCallback2 requestEntry];

  [(PLAWDBB *)self resetAllBBLqmTables];
  monotonicDate2 = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLAWDBB *)self setStartTimeBBLqm:monotonicDate2];

  [(PLAWDBB *)self updateCurrLqmState];
  v70 = *MEMORY[0x277D85DE8];
}

- (void)handleBBLqmCumulativeNetworkCallback:(id)callback
{
  callbackCopy = callback;
  if (![(PLAWDBB *)self currQuality])
  {
    [(PLAWDBB *)self updateCurrLqmState];
  }

  v4 = [callbackCopy objectForKey:@"entry"];
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  v6 = [v4 objectForKeyedSubscript:@"Interface"];
  v7 = [v5 initWithFormat:@"%@", v6];

  if ([v7 isEqualToString:@"pdp_ip0"])
  {
    if ([(PLAWDBB *)self telActivityState]== 1)
    {
      v8 = [v4 objectForKeyedSubscript:@"UpBytes"];
      [v8 doubleValue];
      [(PLAWDBB *)self setUpBytesLTE:v9];

      v10 = [v4 objectForKeyedSubscript:@"DownBytes"];
      [v10 doubleValue];
      [(PLAWDBB *)self setDownBytesLTE:v11];

      v12 = 2;
    }

    else
    {
      if ([(PLAWDBB *)self telActivityState]!= 3)
      {
LABEL_9:
        unhandledRFLTEEntries = [(PLAWDBB *)self unhandledRFLTEEntries];
        v19 = [unhandledRFLTEEntries count];

        if (v19)
        {
          monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
          [(PLAWDBB *)self setEndLTECall:monotonicDate];

          endLTECall = [(PLAWDBB *)self endLTECall];
          lteCallArray = [(PLAWDBB *)self lteCallArray];
          lteCallArray2 = [(PLAWDBB *)self lteCallArray];
          v24 = [lteCallArray objectAtIndexedSubscript:{objc_msgSend(lteCallArray2, "count") - 1}];
          [v24 setEndDate:endLTECall];

          v25 = [v4 objectForKeyedSubscript:@"UpBytes"];
          [v25 doubleValue];
          v27 = (v26 - [(PLAWDBB *)self upBytesLTE]);
          v28 = [v4 objectForKeyedSubscript:@"DownBytes"];
          [v28 doubleValue];
          [(PLAWDBB *)self finalizePeriodWithUpBytes:v27 withDownBytes:(v29 - [(PLAWDBB *)self downBytesLTE])];

          v30 = [v4 objectForKeyedSubscript:@"UpBytes"];
          [v30 doubleValue];
          [(PLAWDBB *)self setUpBytesLTE:v31];

          v32 = [v4 objectForKeyedSubscript:@"DownBytes"];
          [v32 doubleValue];
          [(PLAWDBB *)self setDownBytesLTE:v33];

          [(PLAWDBB *)self handleRfLTEOffline];
          monotonicDate2 = [MEMORY[0x277CBEAA8] monotonicDate];
          [(PLAWDBB *)self setStartLTECall:monotonicDate2];

          v35 = objc_opt_new();
          [(PLAWDBB *)self setPoint:v35];

          startLTECall = [(PLAWDBB *)self startLTECall];
          point = [(PLAWDBB *)self point];
          [point setStartDate:startLTECall];

          point2 = [(PLAWDBB *)self point];
          [point2 setEndDate:0];

          lteCallArray3 = [(PLAWDBB *)self lteCallArray];
          point3 = [(PLAWDBB *)self point];
          [lteCallArray3 addObject:point3];
        }

        if ([(PLAWDBB *)self upBytes]&& [(PLAWDBB *)self downBytes]&& [(PLAWDBB *)self currQuality])
        {
          currQuality = [(PLAWDBB *)self currQuality];
          v42 = [v4 objectForKeyedSubscript:@"UpBytes"];
          [v42 doubleValue];
          v44 = v43 - [(PLAWDBB *)self upBytes];
          v45 = [v4 objectForKeyedSubscript:@"DownBytes"];
          [v45 doubleValue];
          [(PLAWDBB *)self updateLQMTableWithQuality:currQuality withTime:0.0 withRX:v44 withTX:v46 - [(PLAWDBB *)self downBytes]];
        }

        v47 = [v4 objectForKeyedSubscript:@"UpBytes"];
        [v47 doubleValue];
        [(PLAWDBB *)self setUpBytes:v48];

        v49 = [v4 objectForKeyedSubscript:@"DownBytes"];
        [v49 doubleValue];
        [(PLAWDBB *)self setDownBytes:v50];

        goto LABEL_16;
      }

      v13 = [v4 objectForKeyedSubscript:@"UpBytes"];
      [v13 doubleValue];
      v15 = (v14 - [(PLAWDBB *)self upBytesLTE]);
      v16 = [v4 objectForKeyedSubscript:@"DownBytes"];
      [v16 doubleValue];
      [(PLAWDBB *)self finalizePeriodWithUpBytes:v15 withDownBytes:(v17 - [(PLAWDBB *)self downBytesLTE])];

      [(PLAWDBB *)self setUpBytesLTE:0];
      [(PLAWDBB *)self setDownBytesLTE:0];
      v12 = 0;
    }

    [(PLAWDBB *)self setTelActivityState:v12];
    goto LABEL_9;
  }

LABEL_16:
}

- (int)convertQualityWithLinkQuality:(double)quality
{
  if (quality >= 10.0)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (quality < 50.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 2;
  }

  if (quality < 100.0)
  {
    return v4;
  }

  else
  {
    return 1;
  }
}

- (void)handleBBLqmCellularActiveCallback:(id)callback
{
  v4 = [callback objectForKey:@"entry"];
  operator = [(PLAWDAuxMetrics *)self operator];
  storage = [operator storage];
  entryKey = [v4 entryKey];
  v8 = [storage entryForKey:entryKey withID:{objc_msgSend(v4, "entryID") - 1}];

  if (v4)
  {
    if (v8)
    {
      v9 = [(PLOperator *)PLAWDMetricsService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"awdBBLqmCounter"];
      v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v9];
      entryDate = [v4 entryDate];
      [entryDate timeIntervalSince1970];
      v13 = v12;
      entryDate2 = [v8 entryDate];
      startTimeBBLqm = [(PLAWDBB *)self startTimeBBLqm];
      v16 = [entryDate2 laterDate:startTimeBBLqm];
      [v16 timeIntervalSince1970];
      v18 = v17;

      [(PLAWDBB *)self setCurrQuality:[(PLAWDBB *)self newQuality]];
      v19 = [v4 objectForKeyedSubscript:@"LinkQuality"];
      [v19 doubleValue];
      [(PLAWDBB *)self setNewQuality:[(PLAWDBB *)self convertQualityWithLinkQuality:?]];

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v20 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __45__PLAWDBB_handleBBLqmCellularActiveCallback___block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v20;
        if (handleBBLqmCellularActiveCallback__defaultOnce != -1)
        {
          dispatch_once(&handleBBLqmCellularActiveCallback__defaultOnce, block);
        }

        if (handleBBLqmCellularActiveCallback__classDebugEnabled == 1)
        {
          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"type - %d curr - %d", -[PLAWDBB newQuality](self, "newQuality"), -[PLAWDBB currQuality](self, "currQuality")];;
          v22 = MEMORY[0x277D3F178];
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDBB.m"];
          lastPathComponent = [v23 lastPathComponent];
          v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBB handleBBLqmCellularActiveCallback:]"];
          [v22 logMessage:v21 fromFile:lastPathComponent fromFunction:v25 fromLineNumber:548];

          v26 = PLLogCommon();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            [PLAWDDisplay startMetricCollection:];
          }
        }
      }

      v27 = v13 - v18;
      newQuality = [(PLAWDBB *)self newQuality];
      if (newQuality != [(PLAWDBB *)self currQuality]&& [(PLAWDBB *)self newQuality]&& [(PLAWDBB *)self currQuality])
      {
        if (v27 >= 6.0)
        {
          if (v27 >= 12.0)
          {
            if (v27 >= 20.0)
            {
              if (v27 >= 100.0)
              {
                if (v27 >= 300.0)
                {
                  v29 = &unk_2870FF1F0;
                }

                else
                {
                  v29 = &unk_2870FF1D8;
                }
              }

              else
              {
                v29 = &unk_2870FF1C0;
              }
            }

            else
            {
              v29 = &unk_2870FF1A8;
            }
          }

          else
          {
            v29 = &unk_2870FF190;
          }
        }

        else
        {
          v29 = &unk_2870FF178;
        }

        [v10 setObject:v29 forKeyedSubscript:@"BBLqmSwitchBucket"];
        [v10 setObject:&unk_2870FF208 forKeyedSubscript:@"BBLqmSwitchCounter"];
        operator2 = [(PLAWDAuxMetrics *)self operator];
        [operator2 logEntry:v10];
      }

      [(PLAWDBB *)self updateLQMTableWithQuality:[(PLAWDBB *)self currQuality] withTime:v27 withRX:0.0 withTX:0.0];
      if (v27 < 10.0)
      {
        [(PLAWDBB *)self setUpBytes:0];
        [(PLAWDBB *)self setDownBytes:0];
      }

      bbLqmCumulativeNetworkCallback = [(PLAWDBB *)self bbLqmCumulativeNetworkCallback];
      [bbLqmCumulativeNetworkCallback requestEntry];
    }

    else
    {
      v9 = [v4 objectForKeyedSubscript:@"LinkQuality"];
      [v9 doubleValue];
      [(PLAWDBB *)self setNewQuality:[(PLAWDBB *)self convertQualityWithLinkQuality:?]];
    }
  }
}

uint64_t __45__PLAWDBB_handleBBLqmCellularActiveCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleBBLqmCellularActiveCallback__classDebugEnabled = result;
  return result;
}

- (void)resetAllBBLqmTables
{
  [(PLAWDBB *)self resetBBLqmTable];

  [(PLAWDBB *)self resetBBLqmCounterTable];
}

- (void)resetBBLqmTable
{
  v3 = [(PLOperator *)PLAWDMetricsService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"awdBBLqm"];
  v4.receiver = self;
  v4.super_class = PLAWDBB;
  [(PLAWDAuxMetrics *)&v4 resetTableWithEntryKey:v3];
}

- (void)resetBBLqmCounterTable
{
  v3 = [(PLOperator *)PLAWDMetricsService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"awdBBLqmCounter"];
  v4.receiver = self;
  v4.super_class = PLAWDBB;
  [(PLAWDAuxMetrics *)&v4 resetTableWithEntryKey:v3];
}

+ (id)entryAggregateDefinitionAwdVolte
{
  v27[4] = *MEMORY[0x277D85DE8];
  v26[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v24[0] = *MEMORY[0x277D3F568];
  v24[1] = v2;
  v25[0] = &unk_2870FEEE0;
  v25[1] = MEMORY[0x277CBEC28];
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v27[0] = v16;
  v26[1] = *MEMORY[0x277D3F540];
  v22[0] = @"BBLteThreshold";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v23[0] = commonTypeDict_IntegerFormat;
  v22[1] = @"BBLteType";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v23[1] = commonTypeDict_IntegerFormat2;
  v22[2] = @"BBLteValue";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_aggregateFunction_sum = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat_aggregateFunction_sum];
  v23[2] = commonTypeDict_IntegerFormat_aggregateFunction_sum;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v27[1] = v8;
  v26[2] = *MEMORY[0x277D3F478];
  v20 = &unk_2870FEEF0;
  v18 = *MEMORY[0x277D3F470];
  v19 = &unk_2870FEEF0;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v21 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v27[2] = v10;
  v26[3] = *MEMORY[0x277D3F488];
  v17 = @"BBLteValue";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v27[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)startAppRrc
{
  [(PLAWDBB *)self setTelActivityState:0];
  v3 = objc_opt_new();
  [(PLAWDBB *)self setLteCallArray:v3];

  v4 = objc_opt_new();
  [(PLAWDBB *)self setUnhandledRFLTEEntries:v4];

  v5 = objc_opt_new();
  [(PLAWDBB *)self setLock:v5];

  [(PLAWDBB *)self resetBBVoLTETable];
  v6 = [MEMORY[0x277D3F680] entryKeyForType:*MEMORY[0x277D3F5E8] andName:*MEMORY[0x277D3F700]];
  v7 = objc_alloc(MEMORY[0x277D3F1A8]);
  operator = [(PLAWDAuxMetrics *)self operator];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __22__PLAWDBB_startAppRrc__block_invoke;
  v15[3] = &unk_279A58F10;
  v15[4] = self;
  v9 = [v7 initWithOperator:operator forEntryKey:v6 withBlock:v15];

  [(PLAWDBB *)self setBbTelephonyActivityCallback:v9];
  v10 = [MEMORY[0x277D3F680] entryKeyForType:*MEMORY[0x277D3F5C8] andName:*MEMORY[0x277D3F740]];
  v11 = objc_alloc(MEMORY[0x277D3F1A8]);
  operator2 = [(PLAWDAuxMetrics *)self operator];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __22__PLAWDBB_startAppRrc__block_invoke_2;
  v14[3] = &unk_279A58F10;
  v14[4] = self;
  v13 = [v11 initWithOperator:operator2 forEntryKey:v10 withBlock:v14];

  [(PLAWDBB *)self setBbRfLTECallback:v13];
}

uint64_t __22__PLAWDBB_startAppRrc__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) handleTelephonyActiveCallback:a2];
  }

  return result;
}

uint64_t __22__PLAWDBB_startAppRrc__block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) handleRfLTE:a2];
  }

  return result;
}

- (void)stopAppRrc
{
  [(PLAWDBB *)self setBbTelephonyActivityCallback:0];

  [(PLAWDBB *)self setBbRfLTECallback:0];
}

- (void)submitAppRrc:(id)rrc withAwdConn:(id)conn
{
  v80 = *MEMORY[0x277D85DE8];
  connCopy = conn;
  v7 = [connCopy newMetricContainerWithIdentifier:{objc_msgSend(rrc, "unsignedIntValue")}];
  v8 = v7;
  if (v7)
  {
    v57 = v7;
    v9 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:-604800.0];
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    [v9 timeIntervalSince1970];
    v12 = v11;
    [monotonicDate timeIntervalSince1970];
    v14 = v13 - v12;

    v15 = [(PLOperator *)PLAWDMetricsService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"Volte"];
    selfCopy = self;
    operator = [(PLAWDAuxMetrics *)self operator];
    storage = [operator storage];
    v55 = v15;
    v18 = [storage aggregateEntriesForKey:v15 withBucketLength:86400.0 inTimeIntervalRange:{v12, v14}];

    v54 = v18;
    v19 = [MEMORY[0x277D3F190] summarizeAggregateEntries:v18];
    v58 = connCopy;
    v53 = objc_opt_new();
    [v53 setTimestamp:{objc_msgSend(connCopy, "getAWDTimestamp")}];
    v52 = objc_opt_new();
    v20 = objc_opt_new();
    v21 = objc_opt_new();
    v22 = objc_opt_new();
    v23 = objc_opt_new();
    v51 = v20;
    [v20 setThreshold:200];
    v50 = v21;
    [v21 setThreshold:1000];
    v49 = v22;
    [v22 setThreshold:10000];
    [v23 setThreshold:11000];
    v78[0] = 0;
    v78[1] = 0;
    v79 = 0;
    v76[0] = 0;
    v76[1] = 0;
    v77 = 0;
    v73[0] = 0;
    v73[1] = 0;
    v74 = 0;
    v70[0] = 0;
    v70[1] = 0;
    v71 = 0;
    v68[0] = 0;
    v68[1] = 0;
    v69 = 0;
    v66[0] = 0;
    v66[1] = 0;
    v67 = 0;
    memset(v65, 0, sizeof(v65));
    memset(v64, 0, sizeof(v64));
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v24 = v19;
    v25 = [v24 countByEnumeratingWithState:&v59 objects:v63 count:16];
    if (!v25)
    {
      goto LABEL_23;
    }

    v26 = v25;
    v27 = *v60;
    while (1)
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v60 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v59 + 1) + 8 * i);
        v30 = [v29 objectForKeyedSubscript:@"BBLteThreshold"];
        intValue = [v30 intValue];

        if (intValue > 9999)
        {
          if (intValue == 10000)
          {
            v46 = [v29 objectForKeyedSubscript:@"BBLteType"];
            intValue2 = [v46 intValue];

            v34 = [v29 objectForKeyedSubscript:@"BBLteValue"];
            intValue3 = [v34 intValue];
            v36 = [v29 objectForKeyedSubscript:@"BBLteType"];
            intValue4 = [v36 intValue];
            v38 = &v69 + 4 * intValue4 + 4;
            v39 = v65;
          }

          else
          {
            if (intValue != 11000)
            {
              continue;
            }

            v40 = [v29 objectForKeyedSubscript:@"BBLteType"];
            intValue2 = [v40 intValue];

            v34 = [v29 objectForKeyedSubscript:@"BBLteValue"];
            intValue3 = [v34 intValue];
            v36 = [v29 objectForKeyedSubscript:@"BBLteType"];
            intValue4 = [v36 intValue];
            v38 = &v67 + 4 * intValue4 + 4;
            v39 = v64;
          }

          goto LABEL_16;
        }

        if (intValue != 200)
        {
          if (intValue != 1000)
          {
            continue;
          }

          v32 = [v29 objectForKeyedSubscript:@"BBLteType"];
          intValue2 = [v32 intValue];

          v34 = [v29 objectForKeyedSubscript:@"BBLteValue"];
          intValue3 = [v34 intValue];
          v36 = [v29 objectForKeyedSubscript:@"BBLteType"];
          intValue4 = [v36 intValue];
          v38 = &v72[4 * intValue4];
          v39 = v66;
LABEL_16:
          v44 = v39 + 4 * intValue4;
          v45 = intValue2 <= 6;
          goto LABEL_17;
        }

        v41 = [v29 objectForKeyedSubscript:@"BBLteType"];
        intValue5 = [v41 intValue];

        v34 = [v29 objectForKeyedSubscript:@"BBLteValue"];
        intValue3 = [v34 intValue];
        v36 = [v29 objectForKeyedSubscript:@"BBLteType"];
        intValue6 = [v36 intValue];
        v38 = &v75[4 * intValue6];
        v44 = v68 + 4 * intValue6;
        v45 = intValue5 <= 6;
LABEL_17:
        if (v45)
        {
          v38 = v44;
        }

        *v38 += intValue3;
      }

      v26 = [v24 countByEnumeratingWithState:&v59 objects:v63 count:16];
      if (!v26)
      {
LABEL_23:
        v47 = v24;

        [v51 setRxTxDurations:v78 count:5];
        [v50 setRxTxDurations:v76 count:5];
        [v49 setRxTxDurations:v73 count:5];
        [v23 setRxTxDurations:v70 count:5];
        [v51 setSleepStateDurations:v68 count:6];
        [v50 setSleepStateDurations:v66 count:6];
        [v49 setSleepStateDurations:v65 count:6];
        [v23 setSleepStateDurations:v64 count:6];
        [v52 addObject:v51];
        [v52 addObject:v50];
        [v52 addObject:v49];
        [v52 addObject:v23];
        [v53 addMetrics:v51];
        [v53 addMetrics:v50];
        [v53 addMetrics:v49];
        [v53 addMetrics:v23];
        v8 = v57;
        [v57 setMetric:v53];
        connCopy = v58;
        [v58 submitMetric:v57];
        [(PLAWDBB *)selfCopy resetBBVoLTETable];

        break;
      }
    }
  }

  v48 = *MEMORY[0x277D85DE8];
}

- (void)resetBBVoLTETable
{
  v3 = [(PLOperator *)PLAWDMetricsService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"Volte"];
  v4.receiver = self;
  v4.super_class = PLAWDBB;
  [(PLAWDAuxMetrics *)&v4 resetTableWithEntryKey:v3];
}

- (void)handleTelephonyActiveCallback:(id)callback
{
  v21 = [callback objectForKey:@"entry"];
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = [v21 objectForKeyedSubscript:@"callStatus"];
  v6 = [v4 initWithFormat:@"%@", v5];

  v7 = objc_alloc(MEMORY[0x277CCACA8]);
  v8 = [v21 objectForKeyedSubscript:@"campedRat"];
  v9 = [v7 initWithFormat:@"%@", v8];

  if (![v9 isEqualToString:@"LTE"])
  {
    [(PLAWDBB *)self setTelActivityState:0];
    goto LABEL_11;
  }

  if ([v6 isEqualToString:@"Active"])
  {
    if ([(PLAWDBB *)self telActivityState]== 1)
    {
      goto LABEL_11;
    }

    [(PLAWDBB *)self setTelActivityState:1];
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    [(PLAWDBB *)self setStartLTECall:monotonicDate];

    v11 = objc_opt_new();
    [(PLAWDBB *)self setPoint:v11];

    startLTECall = [(PLAWDBB *)self startLTECall];
    point = [(PLAWDBB *)self point];
    [point setStartDate:startLTECall];

    point2 = [(PLAWDBB *)self point];
    [point2 setEndDate:0];

    lteCallArray = [(PLAWDBB *)self lteCallArray];
    point3 = [(PLAWDBB *)self point];
    [lteCallArray addObject:point3];
    goto LABEL_10;
  }

  if ([v6 isEqualToString:@"Inactive"] && (-[PLAWDBB telActivityState](self, "telActivityState") == 1 || -[PLAWDBB telActivityState](self, "telActivityState") == 2))
  {
    [(PLAWDBB *)self setTelActivityState:3];
    monotonicDate2 = [MEMORY[0x277CBEAA8] monotonicDate];
    [(PLAWDBB *)self setEndLTECall:monotonicDate2];

    lteCallArray = [(PLAWDBB *)self endLTECall];
    point3 = [(PLAWDBB *)self lteCallArray];
    lteCallArray2 = [(PLAWDBB *)self lteCallArray];
    v19 = [point3 objectAtIndexedSubscript:{objc_msgSend(lteCallArray2, "count") - 1}];
    [v19 setEndDate:lteCallArray];

LABEL_10:
    bbLqmCumulativeNetworkCallback = [(PLAWDBB *)self bbLqmCumulativeNetworkCallback];
    [bbLqmCumulativeNetworkCallback requestEntry];
  }

LABEL_11:
}

- (void)handleRfLTEOffline
{
  obj = [(PLAWDBB *)self lock];
  objc_sync_enter(obj);
  v3 = *MEMORY[0x277D3F5C8];
  v4 = *MEMORY[0x277D3F740];
  while (1)
  {
    unhandledRFLTEEntries = [(PLAWDBB *)self unhandledRFLTEEntries];
    v6 = [unhandledRFLTEEntries count];

    if (!v6)
    {
      break;
    }

    v7 = [MEMORY[0x277D3F680] entryKeyForType:v3 andName:v4];
    operator = [(PLAWDAuxMetrics *)self operator];
    storage = [operator storage];
    unhandledRFLTEEntries2 = [(PLAWDBB *)self unhandledRFLTEEntries];
    v11 = [unhandledRFLTEEntries2 objectAtIndexedSubscript:0];
    v12 = [storage entryForKey:v7 withID:{objc_msgSend(v11, "intValue")}];

    lteCallArray = [(PLAWDBB *)self lteCallArray];
    lteCallArray2 = [(PLAWDBB *)self lteCallArray];
    v15 = [lteCallArray objectAtIndexedSubscript:{objc_msgSend(lteCallArray2, "count") - 1}];
    [(PLAWDBB *)self bbLTEWriteAggregatedTableWithRFLTEEntry:v12 withPoint:v15];

    unhandledRFLTEEntries3 = [(PLAWDBB *)self unhandledRFLTEEntries];
    [unhandledRFLTEEntries3 removeObjectAtIndex:0];
  }

  objc_sync_exit(obj);
}

- (void)handleRfLTE:(id)e
{
  eCopy = e;
  v4 = [eCopy objectForKey:@"entry"];
  while (1)
  {
    lteCallArray = [(PLAWDBB *)self lteCallArray];
    v6 = [lteCallArray count];

    if (!v6)
    {
      break;
    }

    lteCallArray2 = [(PLAWDBB *)self lteCallArray];
    v8 = [lteCallArray2 objectAtIndexedSubscript:0];

    entryDate = [v4 entryDate];
    startDate = [v8 startDate];
    v11 = [startDate dateByAddingTimeInterval:10.0];
    v12 = [entryDate compare:v11];

    if (v12 == -1)
    {
      goto LABEL_14;
    }

    endDate = [v8 endDate];

    if (!endDate)
    {
      currThreshold = [(PLAWDBB *)self currThreshold];
      startDate2 = [currThreshold startDate];
      v21 = [startDate2 dateByAddingTimeInterval:30.0];
      entryDate2 = [v4 entryDate];
      v23 = [v21 compare:entryDate2];

      if (v23 == -1)
      {
        currThreshold2 = [(PLAWDBB *)self currThreshold];
        [(PLAWDBB *)self bbLTEWriteAggregatedTableWithRFLTEEntry:v4 withPoint:currThreshold2];
      }

      else
      {
        currThreshold2 = [(PLAWDBB *)self lock];
        objc_sync_enter(currThreshold2);
        unhandledRFLTEEntries = [(PLAWDBB *)self unhandledRFLTEEntries];
        v26 = [unhandledRFLTEEntries count];

        if (!v26)
        {
          bbLqmCumulativeNetworkCallback = [(PLAWDBB *)self bbLqmCumulativeNetworkCallback];
          [bbLqmCumulativeNetworkCallback requestEntry];
        }

        unhandledRFLTEEntries2 = [(PLAWDBB *)self unhandledRFLTEEntries];
        v29 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v4, "entryID")}];
        [unhandledRFLTEEntries2 addObject:v29];

        objc_sync_exit(currThreshold2);
      }

      goto LABEL_14;
    }

    entryDate3 = [v4 entryDate];
    endDate2 = [v8 endDate];
    v16 = [endDate2 dateByAddingTimeInterval:10.0];
    v17 = [entryDate3 compare:v16];

    if (v17 != 1)
    {
      [(PLAWDBB *)self bbLTEWriteAggregatedTableWithRFLTEEntry:v4 withPoint:v8];
LABEL_14:

      break;
    }

    lteCallArray3 = [(PLAWDBB *)self lteCallArray];
    [lteCallArray3 removeObjectAtIndex:0];
  }
}

- (void)bbLTEWriteAggregatedTableWithRFLTEEntry:(id)entry withPoint:(id)point
{
  entryCopy = entry;
  pointCopy = point;
  v7 = [(PLOperator *)PLAWDMetricsService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"Volte"];
  v8 = 0;
  v9 = 0x277D3F000uLL;
  v10 = 0x277CCA000uLL;
  v11 = @"BBLteThreshold";
  v12 = @"BBLteType";
  do
  {
    v13 = [objc_alloc(*(v9 + 400)) initWithEntryKey:v7];
    v14 = [*(v10 + 2992) numberWithUnsignedInt:{objc_msgSend(pointCopy, "threshold")}];
    [v13 setObject:v14 forKeyedSubscript:v11];

    v15 = [*(v10 + 2992) numberWithInt:v8];
    [v13 setObject:v15 forKeyedSubscript:v12];

    if (v8 <= 0xB && ((0xFBFu >> v8) & 1) != 0)
    {
      v16 = qword_25EE41410[v8];
      [entryCopy objectForKeyedSubscript:off_279A59208[v8]];
      v17 = v7;
      v18 = pointCopy;
      selfCopy = self;
      v20 = v12;
      v21 = v11;
      v23 = v22 = v9;
      v24 = [v23 objectAtIndexedSubscript:v16];
      [v13 setObject:v24 forKeyedSubscript:@"BBLteValue"];

      v9 = v22;
      v11 = v21;
      v12 = v20;
      self = selfCopy;
      pointCopy = v18;
      v7 = v17;
      v10 = 0x277CCA000;
    }

    operator = [(PLAWDAuxMetrics *)self operator];
    [operator logEntry:v13];

    ++v8;
  }

  while (v8 != 12);
}

- (void)finalizePeriodWithUpBytes:(unsigned int)bytes withDownBytes:(unsigned int)downBytes
{
  endLTECall = [(PLAWDBB *)self endLTECall];
  startLTECall = [(PLAWDBB *)self startLTECall];
  [endLTECall timeIntervalSinceDate:startLTECall];
  v10 = v9;

  v11 = vcvtd_n_s64_f64(bytes / v10, 3uLL) + vcvtd_n_s64_f64(downBytes / v10, 3uLL);
  if (v11 > 199)
  {
    if (v11 > 0x3E7)
    {
      lteCallArray = [(PLAWDBB *)self lteCallArray];
      lteCallArray2 = [(PLAWDBB *)self lteCallArray];
      v13 = [lteCallArray objectAtIndexedSubscript:{objc_msgSend(lteCallArray2, "count") - 1}];
      v14 = v13;
      if (v11 >> 4 > 0x270)
      {
        v15 = 11000;
      }

      else
      {
        v15 = 10000;
      }
    }

    else
    {
      lteCallArray = [(PLAWDBB *)self lteCallArray];
      lteCallArray2 = [(PLAWDBB *)self lteCallArray];
      v13 = [lteCallArray objectAtIndexedSubscript:{objc_msgSend(lteCallArray2, "count") - 1}];
      v14 = v13;
      v15 = 1000;
    }
  }

  else
  {
    lteCallArray = [(PLAWDBB *)self lteCallArray];
    lteCallArray2 = [(PLAWDBB *)self lteCallArray];
    v13 = [lteCallArray objectAtIndexedSubscript:{objc_msgSend(lteCallArray2, "count") - 1}];
    v14 = v13;
    v15 = 200;
  }

  [v13 setThreshold:v15];
}

- (void)startAppBB
{
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLAWDBB *)self setStartTimeAppBB:monotonicDate];
}

- (void)submitAppBB:(id)b withAwdConn:(id)conn
{
  connCopy = conn;
  v6 = [connCopy newMetricContainerWithIdentifier:{objc_msgSend(b, "unsignedIntValue")}];
  if (v6)
  {
    v7 = objc_opt_new();
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    operator = [(PLAWDAuxMetrics *)self operator];
    v11 = [operator defaultBoolForKey:@"simulatedMode"];

    if (v11)
    {
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
      [(PLAWDBB *)self setStartTimeAppBB:distantPast];
    }

    allKeys = [v9 allKeys];
    v14 = [allKeys sortedArrayUsingSelector:sel_compare_];
    reverseObjectEnumerator = [v14 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];

    for (i = 0; i != 10; ++i)
    {
      if ([allObjects count] <= i)
      {
        break;
      }

      v18 = [allObjects objectAtIndexedSubscript:i];
      v19 = [v9 objectForKey:v18];
      [v8 addObject:v19];
    }

    [v7 setAppPowers:v8];
    [v6 setMetric:v7];
    [connCopy submitMetric:v6];
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    [(PLAWDBB *)self setStartTimeAppBB:monotonicDate];
  }
}

+ (id)entryAggregateDefinitionAwdConnectedPower
{
  v25[4] = *MEMORY[0x277D85DE8];
  v24[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v22[0] = *MEMORY[0x277D3F568];
  v22[1] = v2;
  v23[0] = &unk_2870FEEE0;
  v23[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v25[0] = v3;
  v24[1] = *MEMORY[0x277D3F540];
  v20[0] = @"RailIndex";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v20[1] = @"RailValue";
  v21[0] = commonTypeDict_StringFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat_aggregateFunction_sum = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat_aggregateFunction_sum];
  v21[1] = commonTypeDict_RealFormat_aggregateFunction_sum;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v25[1] = v8;
  v24[2] = *MEMORY[0x277D3F478];
  v18 = &unk_2870FEEF0;
  v16 = *MEMORY[0x277D3F470];
  v17 = &unk_2870FEEF0;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v25[2] = v10;
  v24[3] = *MEMORY[0x277D3F488];
  v15 = @"RailValue";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v25[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)startConnectedPower
{
  [(PLAWDBB *)self resetConnectedPowerTable];
  v3 = objc_alloc(MEMORY[0x277D3F1A8]);
  operator = [(PLAWDAuxMetrics *)self operator];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__PLAWDBB_startConnectedPower__block_invoke;
  v6[3] = &unk_279A58F10;
  v6[4] = self;
  v5 = [v3 initWithOperator:operator forEntryKey:@"PLRail_EventNone_Rail" withBlock:v6];

  [(PLAWDBB *)self setConnectedPowerRailCallback:v5];
}

uint64_t __30__PLAWDBB_startConnectedPower__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) handleBBConnectedPowerRail:a2];
  }

  return result;
}

- (BOOL)submitConnectedPower:(id)power withAwdConn:(id)conn
{
  v69 = *MEMORY[0x277D85DE8];
  connCopy = conn;
  v7 = [connCopy newMetricContainerWithIdentifier:{objc_msgSend(power, "unsignedIntValue")}];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:-86400.0];
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    [v8 timeIntervalSince1970];
    v11 = v10;
    [monotonicDate timeIntervalSince1970];
    v13 = v12 - v11;

    v14 = [(PLOperator *)PLAWDMetricsService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"BBConnectedPower"];
    operator = [(PLAWDAuxMetrics *)self operator];
    storage = [operator storage];
    v17 = [storage aggregateEntriesForKey:v14 withBucketLength:86400.0 inTimeIntervalRange:{v11, v13}];

    v18 = [MEMORY[0x277D3F190] summarizeAggregateEntries:v17];
    v56 = objc_opt_new();
    if ([MEMORY[0x277D3F208] isBasebandClass:1003003])
    {
      v51 = v17;
      v52 = v14;
      selfCopy2 = self;
      v54 = v7;
      v55 = connCopy;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v50 = v18;
      obj = v18;
      v19 = [obj countByEnumeratingWithState:&v63 objects:v68 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v64;
        v22 = 0.0;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v64 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v63 + 1) + 8 * i);
            v25 = objc_alloc(MEMORY[0x277CCACA8]);
            v26 = [v24 objectForKeyedSubscript:@"RailIndex"];
            v27 = [v25 initWithFormat:@"%@", v26];
            intValue = [v27 intValue];

            if ((intValue & 0xFFFD) == 1 || intValue == 4 || intValue == 2)
            {
              v31 = [v24 objectForKeyedSubscript:@"RailValue"];
              [v31 doubleValue];
              v22 = v22 + v32;
            }
          }

          v20 = [obj countByEnumeratingWithState:&v63 objects:v68 count:16];
        }

        while (v20);
        goto LABEL_34;
      }
    }

    else
    {
      if (([MEMORY[0x277D3F208] isBasebandClass:1003002] & 1) == 0 && !objc_msgSend(MEMORY[0x277D3F208], "isBasebandClass:", 1003001))
      {
        v45 = 0;
        goto LABEL_35;
      }

      v51 = v17;
      v52 = v14;
      selfCopy2 = self;
      v54 = v7;
      v55 = connCopy;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v50 = v18;
      obja = v18;
      v34 = [obja countByEnumeratingWithState:&v59 objects:v67 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v60;
        v22 = 0.0;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v60 != v36)
            {
              objc_enumerationMutation(obja);
            }

            v38 = *(*(&v59 + 1) + 8 * j);
            v39 = objc_alloc(MEMORY[0x277CCACA8]);
            v40 = [v38 objectForKeyedSubscript:@"RailIndex"];
            v41 = [v39 initWithFormat:@"%@", v40];
            intValue2 = [v41 intValue];

            if ((intValue2 & 0xFFFC) == 4)
            {
              v43 = [v38 objectForKeyedSubscript:@"RailValue"];
              [v43 doubleValue];
              v22 = v22 + v44;
            }
          }

          v35 = [obja countByEnumeratingWithState:&v59 objects:v67 count:16];
        }

        while (v35);
        goto LABEL_34;
      }
    }

    v22 = 0.0;
LABEL_34:
    v18 = v50;

    v45 = v22;
    v7 = v54;
    connCopy = v55;
    v14 = v52;
    self = selfCopy2;
    v17 = v51;
LABEL_35:
    v46 = objc_opt_new();
    [v46 setRAT:0];
    [v46 setPowerConnSetupMicroWatt:0];
    [v46 setPowerConnectedMicroWatt:v45];
    v47 = objc_opt_new();
    [v47 addObject:v46];
    [v56 setTimestamp:{objc_msgSend(connCopy, "getAWDTimestamp")}];
    [v56 setRATPowers:v47];
    [v7 setMetric:v56];
    [(PLAWDBB *)self resetConnectedPowerTable];
    v33 = [connCopy submitMetric:v7];

    goto LABEL_36;
  }

  [(PLAWDBB *)self resetConnectedPowerTable];
  v33 = 0;
LABEL_36:

  v48 = *MEMORY[0x277D85DE8];
  return v33;
}

- (void)resetConnectedPowerTable
{
  v3 = [(PLOperator *)PLAWDMetricsService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"BBConnectedPower"];
  v4.receiver = self;
  v4.super_class = PLAWDBB;
  [(PLAWDAuxMetrics *)&v4 resetTableWithEntryKey:v3];
}

- (void)startBBPower
{
  v3 = objc_alloc(MEMORY[0x277D3F1A8]);
  operator = [(PLAWDAuxMetrics *)self operator];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __23__PLAWDBB_startBBPower__block_invoke;
  v6[3] = &unk_279A58F10;
  v6[4] = self;
  v5 = [v3 initWithOperator:operator forEntryKey:@"PLRail_EventNone_Rail" withBlock:v6];

  [(PLAWDBB *)self setBbProtocolRailCallback:v5];
}

uint64_t __23__PLAWDBB_startBBPower__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) handleBBRailCallbackWrapper:a2];
  }

  return result;
}

- (void)stopBBPower
{
  [(PLAWDBB *)self setBbProtocolRailCallback:0];
  [(PLAWDBB *)self setAccountingGroupEventCallback:0];

  [(PLAWDBB *)self setIceStatsEventCallback:0];
}

- (void)handleBBRailCallbackBBProtocol:(id)protocol
{
  v3 = [protocol objectForKey:@"entry"];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__PLAWDBB_handleBBRailCallbackBBProtocol___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (handleBBRailCallbackBBProtocol__defaultOnce != -1)
    {
      dispatch_once(&handleBBRailCallbackBBProtocol__defaultOnce, block);
    }

    if (handleBBRailCallbackBBProtocol__classDebugEnabled == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s - %@", "-[PLAWDBB handleBBRailCallbackBBProtocol:]", v3];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDBB.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBB handleBBRailCallbackBBProtocol:]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:1281];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }
}

uint64_t __42__PLAWDBB_handleBBRailCallbackBBProtocol___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleBBRailCallbackBBProtocol__classDebugEnabled = result;
  return result;
}

- (void)handleBBRailCallbackLTESleep:(id)sleep
{
  v3 = [sleep objectForKey:@"entry"];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__PLAWDBB_handleBBRailCallbackLTESleep___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (handleBBRailCallbackLTESleep__defaultOnce != -1)
    {
      dispatch_once(&handleBBRailCallbackLTESleep__defaultOnce, block);
    }

    if (handleBBRailCallbackLTESleep__classDebugEnabled == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s - %@", "-[PLAWDBB handleBBRailCallbackLTESleep:]", v3];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDBB.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBB handleBBRailCallbackLTESleep:]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:1287];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }
}

uint64_t __40__PLAWDBB_handleBBRailCallbackLTESleep___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleBBRailCallbackLTESleep__classDebugEnabled = result;
  return result;
}

- (void)handleBBRailCallbackTxLte:(id)lte
{
  v3 = [lte objectForKey:@"entry"];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__PLAWDBB_handleBBRailCallbackTxLte___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (handleBBRailCallbackTxLte__defaultOnce != -1)
    {
      dispatch_once(&handleBBRailCallbackTxLte__defaultOnce, block);
    }

    if (handleBBRailCallbackTxLte__classDebugEnabled == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s - %@", "-[PLAWDBB handleBBRailCallbackTxLte:]", v3];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDBB.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBB handleBBRailCallbackTxLte:]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:1293];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }
}

uint64_t __37__PLAWDBB_handleBBRailCallbackTxLte___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleBBRailCallbackTxLte__classDebugEnabled = result;
  return result;
}

- (void)handleBBRailCallbackTxCdma:(id)cdma
{
  v3 = [cdma objectForKey:@"entry"];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__PLAWDBB_handleBBRailCallbackTxCdma___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (handleBBRailCallbackTxCdma__defaultOnce != -1)
    {
      dispatch_once(&handleBBRailCallbackTxCdma__defaultOnce, block);
    }

    if (handleBBRailCallbackTxCdma__classDebugEnabled == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s - %@", "-[PLAWDBB handleBBRailCallbackTxCdma:]", v3];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDBB.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBB handleBBRailCallbackTxCdma:]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:1299];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }
}

uint64_t __38__PLAWDBB_handleBBRailCallbackTxCdma___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleBBRailCallbackTxCdma__classDebugEnabled = result;
  return result;
}

- (void)handleBBRailCallbackTxEvdo:(id)evdo
{
  v3 = [evdo objectForKey:@"entry"];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__PLAWDBB_handleBBRailCallbackTxEvdo___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (handleBBRailCallbackTxEvdo__defaultOnce != -1)
    {
      dispatch_once(&handleBBRailCallbackTxEvdo__defaultOnce, block);
    }

    if (handleBBRailCallbackTxEvdo__classDebugEnabled == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s - %@", "-[PLAWDBB handleBBRailCallbackTxEvdo:]", v3];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDBB.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBB handleBBRailCallbackTxEvdo:]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:1305];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }
}

uint64_t __38__PLAWDBB_handleBBRailCallbackTxEvdo___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleBBRailCallbackTxEvdo__classDebugEnabled = result;
  return result;
}

- (void)handleBBRailCallbackTxCdma2K:(id)k
{
  v3 = [k objectForKey:@"entry"];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__PLAWDBB_handleBBRailCallbackTxCdma2K___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (handleBBRailCallbackTxCdma2K__defaultOnce != -1)
    {
      dispatch_once(&handleBBRailCallbackTxCdma2K__defaultOnce, block);
    }

    if (handleBBRailCallbackTxCdma2K__classDebugEnabled == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s - %@", "-[PLAWDBB handleBBRailCallbackTxCdma2K:]", v3];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDBB.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBB handleBBRailCallbackTxCdma2K:]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:1311];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }
}

uint64_t __40__PLAWDBB_handleBBRailCallbackTxCdma2K___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleBBRailCallbackTxCdma2K__classDebugEnabled = result;
  return result;
}

- (void)handleBBRailCallbackTxGsm:(id)gsm
{
  v3 = [gsm objectForKey:@"entry"];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__PLAWDBB_handleBBRailCallbackTxGsm___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (handleBBRailCallbackTxGsm__defaultOnce != -1)
    {
      dispatch_once(&handleBBRailCallbackTxGsm__defaultOnce, block);
    }

    if (handleBBRailCallbackTxGsm__classDebugEnabled == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s - %@", "-[PLAWDBB handleBBRailCallbackTxGsm:]", v3];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDBB.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBB handleBBRailCallbackTxGsm:]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:1317];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }
}

uint64_t __37__PLAWDBB_handleBBRailCallbackTxGsm___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleBBRailCallbackTxGsm__classDebugEnabled = result;
  return result;
}

- (void)handleBBRailCallbackTxUtran:(id)utran
{
  v3 = [utran objectForKey:@"entry"];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__PLAWDBB_handleBBRailCallbackTxUtran___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (handleBBRailCallbackTxUtran__defaultOnce != -1)
    {
      dispatch_once(&handleBBRailCallbackTxUtran__defaultOnce, block);
    }

    if (handleBBRailCallbackTxUtran__classDebugEnabled == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s - %@", "-[PLAWDBB handleBBRailCallbackTxUtran:]", v3];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDBB.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBB handleBBRailCallbackTxUtran:]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:1323];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }
}

uint64_t __39__PLAWDBB_handleBBRailCallbackTxUtran___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleBBRailCallbackTxUtran__classDebugEnabled = result;
  return result;
}

- (void)handleBBRailCallbackBBICE:(id)e
{
  v3 = [e objectForKey:@"entry"];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__PLAWDBB_handleBBRailCallbackBBICE___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (handleBBRailCallbackBBICE__defaultOnce != -1)
    {
      dispatch_once(&handleBBRailCallbackBBICE__defaultOnce, block);
    }

    if (handleBBRailCallbackBBICE__classDebugEnabled == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s - %@", "-[PLAWDBB handleBBRailCallbackBBICE:]", v3];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDBB.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBB handleBBRailCallbackBBICE:]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:1329];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }
}

uint64_t __37__PLAWDBB_handleBBRailCallbackBBICE___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleBBRailCallbackBBICE__classDebugEnabled = result;
  return result;
}

- (void)handleBBRailCallbackBBTx:(id)tx
{
  v3 = [tx objectForKey:@"entry"];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__PLAWDBB_handleBBRailCallbackBBTx___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (handleBBRailCallbackBBTx__defaultOnce != -1)
    {
      dispatch_once(&handleBBRailCallbackBBTx__defaultOnce, block);
    }

    if (handleBBRailCallbackBBTx__classDebugEnabled == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s - %@", "-[PLAWDBB handleBBRailCallbackBBTx:]", v3];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDBB.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBB handleBBRailCallbackBBTx:]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:1335];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }
}

uint64_t __36__PLAWDBB_handleBBRailCallbackBBTx___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleBBRailCallbackBBTx__classDebugEnabled = result;
  return result;
}

- (void)handleBBRailCallbackOos:(id)oos
{
  v3 = [oos objectForKey:@"entry"];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__PLAWDBB_handleBBRailCallbackOos___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (handleBBRailCallbackOos__defaultOnce != -1)
    {
      dispatch_once(&handleBBRailCallbackOos__defaultOnce, block);
    }

    if (handleBBRailCallbackOos__classDebugEnabled == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s - %@", "-[PLAWDBB handleBBRailCallbackOos:]", v3];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDBB.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBB handleBBRailCallbackOos:]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:1341];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }
}

uint64_t __35__PLAWDBB_handleBBRailCallbackOos___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleBBRailCallbackOos__classDebugEnabled = result;
  return result;
}

- (void)handleAcountGroupCallback:(id)callback
{
  v3 = [callback objectForKey:@"entry"];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__PLAWDBB_handleAcountGroupCallback___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (handleAcountGroupCallback__defaultOnce != -1)
    {
      dispatch_once(&handleAcountGroupCallback__defaultOnce, block);
    }

    if (handleAcountGroupCallback__classDebugEnabled == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s - %@", "-[PLAWDBB handleAcountGroupCallback:]", v3];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDBB.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBB handleAcountGroupCallback:]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:1347];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }
}

uint64_t __37__PLAWDBB_handleAcountGroupCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleAcountGroupCallback__classDebugEnabled = result;
  return result;
}

- (void)handleIceStatsCallback:(id)callback
{
  v3 = [callback objectForKey:@"entry"];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__PLAWDBB_handleIceStatsCallback___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (handleIceStatsCallback__defaultOnce != -1)
    {
      dispatch_once(&handleIceStatsCallback__defaultOnce, block);
    }

    if (handleIceStatsCallback__classDebugEnabled == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s - %@", "-[PLAWDBB handleIceStatsCallback:]", v3];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDBB.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBB handleIceStatsCallback:]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:1353];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }
}

uint64_t __34__PLAWDBB_handleIceStatsCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleIceStatsCallback__classDebugEnabled = result;
  return result;
}

@end