@interface PLAWDBB
+ (id)entryAggregateDefinitionAwdBBQlm;
+ (id)entryAggregateDefinitionAwdBBQlmCounter;
+ (id)entryAggregateDefinitionAwdConnectedPower;
+ (id)entryAggregateDefinitionAwdVolte;
+ (id)entryAggregateDefinitions;
+ (id)getSharedObjWithOperator:(id)a3;
- (BOOL)submitConnectedPower:(id)a3 withAwdConn:(id)a4;
- (BOOL)submitDataToAWDServer:(id)a3 withAwdConn:(id)a4;
- (double)getIntervalSinceLastUpdateWithEntryName:(id)a3;
- (int)convertQualityWithLinkQuality:(double)a3;
- (void)bbLTEWriteAggregatedTableWithRFLTEEntry:(id)a3 withPoint:(id)a4;
- (void)finalizePeriodWithUpBytes:(unsigned int)a3 withDownBytes:(unsigned int)a4;
- (void)finalizeTableWithEntry:(id)a3;
- (void)handleAcountGroupCallback:(id)a3;
- (void)handleBBLqmCellularActiveCallback:(id)a3;
- (void)handleBBLqmCumulativeNetworkCallback:(id)a3;
- (void)handleBBRailCallbackBBICE:(id)a3;
- (void)handleBBRailCallbackBBProtocol:(id)a3;
- (void)handleBBRailCallbackBBTx:(id)a3;
- (void)handleBBRailCallbackLTESleep:(id)a3;
- (void)handleBBRailCallbackOos:(id)a3;
- (void)handleBBRailCallbackTxCdma2K:(id)a3;
- (void)handleBBRailCallbackTxCdma:(id)a3;
- (void)handleBBRailCallbackTxEvdo:(id)a3;
- (void)handleBBRailCallbackTxGsm:(id)a3;
- (void)handleBBRailCallbackTxLte:(id)a3;
- (void)handleBBRailCallbackTxUtran:(id)a3;
- (void)handleIceStatsCallback:(id)a3;
- (void)handleRfLTE:(id)a3;
- (void)handleRfLTEOffline;
- (void)handleTelephonyActiveCallback:(id)a3;
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
- (void)startMetricCollection:(id)a3;
- (void)stopAppRrc;
- (void)stopBBLqm;
- (void)stopBBPower;
- (void)stopMetricCollection:(id)a3;
- (void)submitAppBB:(id)a3 withAwdConn:(id)a4;
- (void)submitAppRrc:(id)a3 withAwdConn:(id)a4;
- (void)submitBBLqm:(id)a3 withAwdConn:(id)a4;
- (void)updateCurrLqmState;
@end

@implementation PLAWDBB

+ (id)getSharedObjWithOperator:(id)a3
{
  v3 = plAwdBb;
  if (!plAwdBb)
  {
    v4 = a3;
    v5 = [(PLAWDAuxMetrics *)[PLAWDBB alloc] initWithOperator:v4];

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
  v3 = [a1 entryAggregateDefinitionAwdBBQlm];
  v11[0] = v3;
  v10[1] = @"awdBBLqmCounter";
  v4 = [a1 entryAggregateDefinitionAwdBBQlmCounter];
  v11[1] = v4;
  v10[2] = @"BBConnectedPower";
  v5 = [a1 entryAggregateDefinitionAwdConnectedPower];
  v11[2] = v5;
  v10[3] = @"Volte";
  v6 = [a1 entryAggregateDefinitionAwdVolte];
  v11[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)startMetricCollection:(id)a3
{
  v4 = a3;
  v5 = [(PLAWDAuxMetrics *)self runningMetrics];
  [v5 addObject:v4];

  v6 = [v4 longValue];
  if (v6 <= 2031629)
  {
    if (v6 == 2031628)
    {

      [(PLAWDBB *)self startAppRrc];
    }

    else if (v6 == 2031629)
    {

      [(PLAWDBB *)self startAppBB];
    }
  }

  else
  {
    switch(v6)
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

- (void)stopMetricCollection:(id)a3
{
  v4 = a3;
  v5 = [(PLAWDAuxMetrics *)self runningMetrics];
  [v5 removeObject:v4];

  v6 = [v4 longValue];
  if (v6 > 2031629)
  {
    if (v6 == 2031630)
    {
      [(PLAWDBB *)self stopConnectedPower];
    }

    else if (v6 == 2031631)
    {
      [(PLAWDBB *)self stopBBLqm];
    }
  }

  else if (v6 == 2031628)
  {
    [(PLAWDBB *)self stopAppRrc];
  }

  else if (v6 == 2031629)
  {
    [(PLAWDBB *)self stopAppBB];
  }

  v7 = [(PLAWDAuxMetrics *)self runningMetrics];
  v8 = [v7 count];

  if (!v8)
  {
    v9 = plAwdBb;
    plAwdBb = 0;
  }
}

- (BOOL)submitDataToAWDServer:(id)a3 withAwdConn:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 longValue];
  v9 = 0;
  if (v8 > 2031630)
  {
    if ((v8 - 2031632) >= 2)
    {
      if (v8 != 2031631)
      {
        goto LABEL_12;
      }

      [(PLAWDBB *)self submitBBLqm:v6 withAwdConn:v7];
    }

LABEL_11:
    v9 = 1;
    goto LABEL_12;
  }

  switch(v8)
  {
    case 2031628:
      [(PLAWDBB *)self submitAppRrc:v6 withAwdConn:v7];
      goto LABEL_11;
    case 2031629:
      [(PLAWDBB *)self submitAppBB:v6 withAwdConn:v7];
      goto LABEL_11;
    case 2031630:
      v9 = [(PLAWDBB *)self submitConnectedPower:v6 withAwdConn:v7];
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
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_IntegerFormat];
  v25[0] = v16;
  v24[1] = @"BBLqmTx";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v15 commonTypeDict_IntegerFormat_aggregateFunction_sum];
  v25[1] = v3;
  v24[2] = @"BBLqmRx";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat_aggregateFunction_sum];
  v25[2] = v5;
  v24[3] = @"BBLqmTime";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_RealFormat_aggregateFunction_sum];
  v25[3] = v7;
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
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v20[1] = @"BBLqmSwitchCounter";
  v21[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat_aggregateFunction_sum];
  v21[1] = v7;
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
  v3 = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLAWDBB *)self setStartTimeBBLqm:v3];

  [(PLAWDBB *)self setUpBytes:0];
  [(PLAWDBB *)self setDownBytes:0];
  [(PLAWDBB *)self setUpBytesLTE:0];
  [(PLAWDBB *)self setDownBytesLTE:0];
  v4 = [MEMORY[0x277D3F6C8] entryKeyForType:*MEMORY[0x277D3F5D0] andName:*MEMORY[0x277D3F7B8]];
  v5 = objc_alloc(MEMORY[0x277D3F1A8]);
  v6 = [(PLAWDAuxMetrics *)self operator];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __21__PLAWDBB_startBBLqm__block_invoke;
  v15[3] = &unk_279A58F10;
  v15[4] = self;
  v7 = [v5 initWithOperator:v6 forEntryKey:v4 withBlock:v15];

  [(PLAWDBB *)self setBbLqmCellularActiveCallback:v7];
  v8 = [MEMORY[0x277D3F6B0] entryKeyForType:*MEMORY[0x277D3F5C8] andName:*MEMORY[0x277D3F7D0]];
  v9 = objc_alloc(MEMORY[0x277D3F1A8]);
  v10 = [(PLAWDAuxMetrics *)self operator];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __21__PLAWDBB_startBBLqm__block_invoke_2;
  v14[3] = &unk_279A58F10;
  v14[4] = self;
  v11 = [v9 initWithOperator:v10 forEntryKey:v8 withBlock:v14];

  [(PLAWDBB *)self setBbLqmCumulativeNetworkCallback:v11];
  [(PLAWDBB *)self updateCurrLqmState];
  v12 = [(PLAWDBB *)self bbLqmCellularActiveCallback];
  [v12 requestEntry];

  v13 = [(PLAWDBB *)self bbLqmCumulativeNetworkCallback];
  [v13 requestEntry];
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
  v3 = [(PLAWDAuxMetrics *)self operator];
  v4 = [v3 storage];
  v5 = [v4 lastEntryForKey:v7];

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

- (void)finalizeTableWithEntry:(id)a3
{
  v5 = [MEMORY[0x277D3F6C8] entryKeyForType:*MEMORY[0x277D3F5D0] andName:*MEMORY[0x277D3F7B8]];
  [(PLAWDBB *)self getIntervalSinceLastUpdateWithEntryName:v5];
  [(PLAWDBB *)self updateLQMTableWithQuality:[(PLAWDBB *)self newQuality] withTime:v4 withRX:0.0 withTX:0.0];
}

- (double)getIntervalSinceLastUpdateWithEntryName:(id)a3
{
  v4 = a3;
  v5 = [(PLAWDAuxMetrics *)self operator];
  v6 = [v5 storage];
  v7 = [v6 lastEntryForKey:v4];

  v8 = [v7 entryDate];
  v9 = [(PLAWDBB *)self startTimeBBLqm];
  v10 = [v8 laterDate:v9];
  [v10 timeIntervalSinceMonitonicNow];
  v12 = -v11;

  return v12;
}

- (void)stopBBLqm
{
  [(PLAWDBB *)self setBbLqmCellularActiveCallback:0];

  [(PLAWDBB *)self setBbLqmCumulativeNetworkCallback:0];
}

- (void)submitBBLqm:(id)a3 withAwdConn:(id)a4
{
  v94 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277D3F5B8];
  v9 = [(PLOperator *)PLAWDMetricsService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"awdBBLqm"];
  [(PLAWDBB *)self finalizeTableWithEntry:v9];
  v10 = [v7 newMetricContainerWithIdentifier:{objc_msgSend(v6, "unsignedIntValue")}];
  v11 = v10;
  if (v10)
  {
    v72 = v8;
    v75 = v10;
    v77 = v7;
    v78 = v6;
    v12 = [(PLAWDBB *)self bbLqmCellularActiveCallback];
    [v12 requestEntry];

    v13 = [(PLAWDBB *)self bbLqmCumulativeNetworkCallback];
    [v13 requestEntry];

    sleep(5u);
    v79 = objc_opt_new();
    v82 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:-86400.0];
    v15 = [MEMORY[0x277CBEAA8] monotonicDate];
    [v14 timeIntervalSince1970];
    v17 = v16;
    [v15 timeIntervalSince1970];
    v19 = v18 - v17;

    v80 = self;
    v20 = [(PLAWDAuxMetrics *)self operator];
    v21 = [v20 storage];
    v76 = v9;
    v22 = [v21 aggregateEntriesForKey:v9 withBucketLength:86400.0 inTimeIntervalRange:{v17, v19}];

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
    v38 = [(PLAWDAuxMetrics *)v80 operator];
    v39 = [v38 storage];
    v73 = v37;
    v40 = [v39 aggregateEntriesForKey:v37 withBucketLength:86400.0 inTimeIntervalRange:{v17, v19}];

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
    v7 = v77;
    [v77 submitMetric:v75];

    v6 = v78;
    self = v80;
    v9 = v76;
  }

  [(PLAWDBB *)self setUpBytes:0];
  [(PLAWDBB *)self setDownBytes:0];
  [(PLAWDBB *)self setUpBytesLTE:0];
  [(PLAWDBB *)self setDownBytesLTE:0];
  v68 = [(PLAWDBB *)self bbLqmCumulativeNetworkCallback];
  [v68 requestEntry];

  [(PLAWDBB *)self resetAllBBLqmTables];
  v69 = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLAWDBB *)self setStartTimeBBLqm:v69];

  [(PLAWDBB *)self updateCurrLqmState];
  v70 = *MEMORY[0x277D85DE8];
}

- (void)handleBBLqmCumulativeNetworkCallback:(id)a3
{
  v51 = a3;
  if (![(PLAWDBB *)self currQuality])
  {
    [(PLAWDBB *)self updateCurrLqmState];
  }

  v4 = [v51 objectForKey:@"entry"];
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
        v18 = [(PLAWDBB *)self unhandledRFLTEEntries];
        v19 = [v18 count];

        if (v19)
        {
          v20 = [MEMORY[0x277CBEAA8] monotonicDate];
          [(PLAWDBB *)self setEndLTECall:v20];

          v21 = [(PLAWDBB *)self endLTECall];
          v22 = [(PLAWDBB *)self lteCallArray];
          v23 = [(PLAWDBB *)self lteCallArray];
          v24 = [v22 objectAtIndexedSubscript:{objc_msgSend(v23, "count") - 1}];
          [v24 setEndDate:v21];

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
          v34 = [MEMORY[0x277CBEAA8] monotonicDate];
          [(PLAWDBB *)self setStartLTECall:v34];

          v35 = objc_opt_new();
          [(PLAWDBB *)self setPoint:v35];

          v36 = [(PLAWDBB *)self startLTECall];
          v37 = [(PLAWDBB *)self point];
          [v37 setStartDate:v36];

          v38 = [(PLAWDBB *)self point];
          [v38 setEndDate:0];

          v39 = [(PLAWDBB *)self lteCallArray];
          v40 = [(PLAWDBB *)self point];
          [v39 addObject:v40];
        }

        if ([(PLAWDBB *)self upBytes]&& [(PLAWDBB *)self downBytes]&& [(PLAWDBB *)self currQuality])
        {
          v41 = [(PLAWDBB *)self currQuality];
          v42 = [v4 objectForKeyedSubscript:@"UpBytes"];
          [v42 doubleValue];
          v44 = v43 - [(PLAWDBB *)self upBytes];
          v45 = [v4 objectForKeyedSubscript:@"DownBytes"];
          [v45 doubleValue];
          [(PLAWDBB *)self updateLQMTableWithQuality:v41 withTime:0.0 withRX:v44 withTX:v46 - [(PLAWDBB *)self downBytes]];
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

- (int)convertQualityWithLinkQuality:(double)a3
{
  if (a3 >= 10.0)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (a3 < 50.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 2;
  }

  if (a3 < 100.0)
  {
    return v4;
  }

  else
  {
    return 1;
  }
}

- (void)handleBBLqmCellularActiveCallback:(id)a3
{
  v4 = [a3 objectForKey:@"entry"];
  v5 = [(PLAWDAuxMetrics *)self operator];
  v6 = [v5 storage];
  v7 = [v4 entryKey];
  v8 = [v6 entryForKey:v7 withID:{objc_msgSend(v4, "entryID") - 1}];

  if (v4)
  {
    if (v8)
    {
      v9 = [(PLOperator *)PLAWDMetricsService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"awdBBLqmCounter"];
      v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v9];
      v11 = [v4 entryDate];
      [v11 timeIntervalSince1970];
      v13 = v12;
      v14 = [v8 entryDate];
      v15 = [(PLAWDBB *)self startTimeBBLqm];
      v16 = [v14 laterDate:v15];
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
          v24 = [v23 lastPathComponent];
          v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBB handleBBLqmCellularActiveCallback:]"];
          [v22 logMessage:v21 fromFile:v24 fromFunction:v25 fromLineNumber:548];

          v26 = PLLogCommon();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            [PLAWDDisplay startMetricCollection:];
          }
        }
      }

      v27 = v13 - v18;
      v28 = [(PLAWDBB *)self newQuality];
      if (v28 != [(PLAWDBB *)self currQuality]&& [(PLAWDBB *)self newQuality]&& [(PLAWDBB *)self currQuality])
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
        v30 = [(PLAWDAuxMetrics *)self operator];
        [v30 logEntry:v10];
      }

      [(PLAWDBB *)self updateLQMTableWithQuality:[(PLAWDBB *)self currQuality] withTime:v27 withRX:0.0 withTX:0.0];
      if (v27 < 10.0)
      {
        [(PLAWDBB *)self setUpBytes:0];
        [(PLAWDBB *)self setDownBytes:0];
      }

      v31 = [(PLAWDBB *)self bbLqmCumulativeNetworkCallback];
      [v31 requestEntry];
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
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v15 commonTypeDict_IntegerFormat];
  v23[0] = v3;
  v22[1] = @"BBLteType";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v23[1] = v5;
  v22[2] = @"BBLteValue";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat_aggregateFunction_sum];
  v23[2] = v7;
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
  v8 = [(PLAWDAuxMetrics *)self operator];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __22__PLAWDBB_startAppRrc__block_invoke;
  v15[3] = &unk_279A58F10;
  v15[4] = self;
  v9 = [v7 initWithOperator:v8 forEntryKey:v6 withBlock:v15];

  [(PLAWDBB *)self setBbTelephonyActivityCallback:v9];
  v10 = [MEMORY[0x277D3F680] entryKeyForType:*MEMORY[0x277D3F5C8] andName:*MEMORY[0x277D3F740]];
  v11 = objc_alloc(MEMORY[0x277D3F1A8]);
  v12 = [(PLAWDAuxMetrics *)self operator];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __22__PLAWDBB_startAppRrc__block_invoke_2;
  v14[3] = &unk_279A58F10;
  v14[4] = self;
  v13 = [v11 initWithOperator:v12 forEntryKey:v10 withBlock:v14];

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

- (void)submitAppRrc:(id)a3 withAwdConn:(id)a4
{
  v80 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [v6 newMetricContainerWithIdentifier:{objc_msgSend(a3, "unsignedIntValue")}];
  v8 = v7;
  if (v7)
  {
    v57 = v7;
    v9 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:-604800.0];
    v10 = [MEMORY[0x277CBEAA8] monotonicDate];
    [v9 timeIntervalSince1970];
    v12 = v11;
    [v10 timeIntervalSince1970];
    v14 = v13 - v12;

    v15 = [(PLOperator *)PLAWDMetricsService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"Volte"];
    v56 = self;
    v16 = [(PLAWDAuxMetrics *)self operator];
    v17 = [v16 storage];
    v55 = v15;
    v18 = [v17 aggregateEntriesForKey:v15 withBucketLength:86400.0 inTimeIntervalRange:{v12, v14}];

    v54 = v18;
    v19 = [MEMORY[0x277D3F190] summarizeAggregateEntries:v18];
    v58 = v6;
    v53 = objc_opt_new();
    [v53 setTimestamp:{objc_msgSend(v6, "getAWDTimestamp")}];
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
        v31 = [v30 intValue];

        if (v31 > 9999)
        {
          if (v31 == 10000)
          {
            v46 = [v29 objectForKeyedSubscript:@"BBLteType"];
            v33 = [v46 intValue];

            v34 = [v29 objectForKeyedSubscript:@"BBLteValue"];
            v35 = [v34 intValue];
            v36 = [v29 objectForKeyedSubscript:@"BBLteType"];
            v37 = [v36 intValue];
            v38 = &v69 + 4 * v37 + 4;
            v39 = v65;
          }

          else
          {
            if (v31 != 11000)
            {
              continue;
            }

            v40 = [v29 objectForKeyedSubscript:@"BBLteType"];
            v33 = [v40 intValue];

            v34 = [v29 objectForKeyedSubscript:@"BBLteValue"];
            v35 = [v34 intValue];
            v36 = [v29 objectForKeyedSubscript:@"BBLteType"];
            v37 = [v36 intValue];
            v38 = &v67 + 4 * v37 + 4;
            v39 = v64;
          }

          goto LABEL_16;
        }

        if (v31 != 200)
        {
          if (v31 != 1000)
          {
            continue;
          }

          v32 = [v29 objectForKeyedSubscript:@"BBLteType"];
          v33 = [v32 intValue];

          v34 = [v29 objectForKeyedSubscript:@"BBLteValue"];
          v35 = [v34 intValue];
          v36 = [v29 objectForKeyedSubscript:@"BBLteType"];
          v37 = [v36 intValue];
          v38 = &v72[4 * v37];
          v39 = v66;
LABEL_16:
          v44 = v39 + 4 * v37;
          v45 = v33 <= 6;
          goto LABEL_17;
        }

        v41 = [v29 objectForKeyedSubscript:@"BBLteType"];
        v42 = [v41 intValue];

        v34 = [v29 objectForKeyedSubscript:@"BBLteValue"];
        v35 = [v34 intValue];
        v36 = [v29 objectForKeyedSubscript:@"BBLteType"];
        v43 = [v36 intValue];
        v38 = &v75[4 * v43];
        v44 = v68 + 4 * v43;
        v45 = v42 <= 6;
LABEL_17:
        if (v45)
        {
          v38 = v44;
        }

        *v38 += v35;
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
        v6 = v58;
        [v58 submitMetric:v57];
        [(PLAWDBB *)v56 resetBBVoLTETable];

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

- (void)handleTelephonyActiveCallback:(id)a3
{
  v21 = [a3 objectForKey:@"entry"];
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
    v10 = [MEMORY[0x277CBEAA8] monotonicDate];
    [(PLAWDBB *)self setStartLTECall:v10];

    v11 = objc_opt_new();
    [(PLAWDBB *)self setPoint:v11];

    v12 = [(PLAWDBB *)self startLTECall];
    v13 = [(PLAWDBB *)self point];
    [v13 setStartDate:v12];

    v14 = [(PLAWDBB *)self point];
    [v14 setEndDate:0];

    v15 = [(PLAWDBB *)self lteCallArray];
    v16 = [(PLAWDBB *)self point];
    [v15 addObject:v16];
    goto LABEL_10;
  }

  if ([v6 isEqualToString:@"Inactive"] && (-[PLAWDBB telActivityState](self, "telActivityState") == 1 || -[PLAWDBB telActivityState](self, "telActivityState") == 2))
  {
    [(PLAWDBB *)self setTelActivityState:3];
    v17 = [MEMORY[0x277CBEAA8] monotonicDate];
    [(PLAWDBB *)self setEndLTECall:v17];

    v15 = [(PLAWDBB *)self endLTECall];
    v16 = [(PLAWDBB *)self lteCallArray];
    v18 = [(PLAWDBB *)self lteCallArray];
    v19 = [v16 objectAtIndexedSubscript:{objc_msgSend(v18, "count") - 1}];
    [v19 setEndDate:v15];

LABEL_10:
    v20 = [(PLAWDBB *)self bbLqmCumulativeNetworkCallback];
    [v20 requestEntry];
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
    v5 = [(PLAWDBB *)self unhandledRFLTEEntries];
    v6 = [v5 count];

    if (!v6)
    {
      break;
    }

    v7 = [MEMORY[0x277D3F680] entryKeyForType:v3 andName:v4];
    v8 = [(PLAWDAuxMetrics *)self operator];
    v9 = [v8 storage];
    v10 = [(PLAWDBB *)self unhandledRFLTEEntries];
    v11 = [v10 objectAtIndexedSubscript:0];
    v12 = [v9 entryForKey:v7 withID:{objc_msgSend(v11, "intValue")}];

    v13 = [(PLAWDBB *)self lteCallArray];
    v14 = [(PLAWDBB *)self lteCallArray];
    v15 = [v13 objectAtIndexedSubscript:{objc_msgSend(v14, "count") - 1}];
    [(PLAWDBB *)self bbLTEWriteAggregatedTableWithRFLTEEntry:v12 withPoint:v15];

    v16 = [(PLAWDBB *)self unhandledRFLTEEntries];
    [v16 removeObjectAtIndex:0];
  }

  objc_sync_exit(obj);
}

- (void)handleRfLTE:(id)a3
{
  v30 = a3;
  v4 = [v30 objectForKey:@"entry"];
  while (1)
  {
    v5 = [(PLAWDBB *)self lteCallArray];
    v6 = [v5 count];

    if (!v6)
    {
      break;
    }

    v7 = [(PLAWDBB *)self lteCallArray];
    v8 = [v7 objectAtIndexedSubscript:0];

    v9 = [v4 entryDate];
    v10 = [v8 startDate];
    v11 = [v10 dateByAddingTimeInterval:10.0];
    v12 = [v9 compare:v11];

    if (v12 == -1)
    {
      goto LABEL_14;
    }

    v13 = [v8 endDate];

    if (!v13)
    {
      v19 = [(PLAWDBB *)self currThreshold];
      v20 = [v19 startDate];
      v21 = [v20 dateByAddingTimeInterval:30.0];
      v22 = [v4 entryDate];
      v23 = [v21 compare:v22];

      if (v23 == -1)
      {
        v24 = [(PLAWDBB *)self currThreshold];
        [(PLAWDBB *)self bbLTEWriteAggregatedTableWithRFLTEEntry:v4 withPoint:v24];
      }

      else
      {
        v24 = [(PLAWDBB *)self lock];
        objc_sync_enter(v24);
        v25 = [(PLAWDBB *)self unhandledRFLTEEntries];
        v26 = [v25 count];

        if (!v26)
        {
          v27 = [(PLAWDBB *)self bbLqmCumulativeNetworkCallback];
          [v27 requestEntry];
        }

        v28 = [(PLAWDBB *)self unhandledRFLTEEntries];
        v29 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v4, "entryID")}];
        [v28 addObject:v29];

        objc_sync_exit(v24);
      }

      goto LABEL_14;
    }

    v14 = [v4 entryDate];
    v15 = [v8 endDate];
    v16 = [v15 dateByAddingTimeInterval:10.0];
    v17 = [v14 compare:v16];

    if (v17 != 1)
    {
      [(PLAWDBB *)self bbLTEWriteAggregatedTableWithRFLTEEntry:v4 withPoint:v8];
LABEL_14:

      break;
    }

    v18 = [(PLAWDBB *)self lteCallArray];
    [v18 removeObjectAtIndex:0];
  }
}

- (void)bbLTEWriteAggregatedTableWithRFLTEEntry:(id)a3 withPoint:(id)a4
{
  v26 = a3;
  v6 = a4;
  v7 = [(PLOperator *)PLAWDMetricsService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"Volte"];
  v8 = 0;
  v9 = 0x277D3F000uLL;
  v10 = 0x277CCA000uLL;
  v11 = @"BBLteThreshold";
  v12 = @"BBLteType";
  do
  {
    v13 = [objc_alloc(*(v9 + 400)) initWithEntryKey:v7];
    v14 = [*(v10 + 2992) numberWithUnsignedInt:{objc_msgSend(v6, "threshold")}];
    [v13 setObject:v14 forKeyedSubscript:v11];

    v15 = [*(v10 + 2992) numberWithInt:v8];
    [v13 setObject:v15 forKeyedSubscript:v12];

    if (v8 <= 0xB && ((0xFBFu >> v8) & 1) != 0)
    {
      v16 = qword_25EE41410[v8];
      [v26 objectForKeyedSubscript:off_279A59208[v8]];
      v17 = v7;
      v18 = v6;
      v19 = self;
      v20 = v12;
      v21 = v11;
      v23 = v22 = v9;
      v24 = [v23 objectAtIndexedSubscript:v16];
      [v13 setObject:v24 forKeyedSubscript:@"BBLteValue"];

      v9 = v22;
      v11 = v21;
      v12 = v20;
      self = v19;
      v6 = v18;
      v7 = v17;
      v10 = 0x277CCA000;
    }

    v25 = [(PLAWDAuxMetrics *)self operator];
    [v25 logEntry:v13];

    ++v8;
  }

  while (v8 != 12);
}

- (void)finalizePeriodWithUpBytes:(unsigned int)a3 withDownBytes:(unsigned int)a4
{
  v7 = [(PLAWDBB *)self endLTECall];
  v8 = [(PLAWDBB *)self startLTECall];
  [v7 timeIntervalSinceDate:v8];
  v10 = v9;

  v11 = vcvtd_n_s64_f64(a3 / v10, 3uLL) + vcvtd_n_s64_f64(a4 / v10, 3uLL);
  if (v11 > 199)
  {
    if (v11 > 0x3E7)
    {
      v16 = [(PLAWDBB *)self lteCallArray];
      v12 = [(PLAWDBB *)self lteCallArray];
      v13 = [v16 objectAtIndexedSubscript:{objc_msgSend(v12, "count") - 1}];
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
      v16 = [(PLAWDBB *)self lteCallArray];
      v12 = [(PLAWDBB *)self lteCallArray];
      v13 = [v16 objectAtIndexedSubscript:{objc_msgSend(v12, "count") - 1}];
      v14 = v13;
      v15 = 1000;
    }
  }

  else
  {
    v16 = [(PLAWDBB *)self lteCallArray];
    v12 = [(PLAWDBB *)self lteCallArray];
    v13 = [v16 objectAtIndexedSubscript:{objc_msgSend(v12, "count") - 1}];
    v14 = v13;
    v15 = 200;
  }

  [v13 setThreshold:v15];
}

- (void)startAppBB
{
  v3 = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLAWDBB *)self setStartTimeAppBB:v3];
}

- (void)submitAppBB:(id)a3 withAwdConn:(id)a4
{
  v21 = a4;
  v6 = [v21 newMetricContainerWithIdentifier:{objc_msgSend(a3, "unsignedIntValue")}];
  if (v6)
  {
    v7 = objc_opt_new();
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v10 = [(PLAWDAuxMetrics *)self operator];
    v11 = [v10 defaultBoolForKey:@"simulatedMode"];

    if (v11)
    {
      v12 = [MEMORY[0x277CBEAA8] distantPast];
      [(PLAWDBB *)self setStartTimeAppBB:v12];
    }

    v13 = [v9 allKeys];
    v14 = [v13 sortedArrayUsingSelector:sel_compare_];
    v15 = [v14 reverseObjectEnumerator];
    v16 = [v15 allObjects];

    for (i = 0; i != 10; ++i)
    {
      if ([v16 count] <= i)
      {
        break;
      }

      v18 = [v16 objectAtIndexedSubscript:i];
      v19 = [v9 objectForKey:v18];
      [v8 addObject:v19];
    }

    [v7 setAppPowers:v8];
    [v6 setMetric:v7];
    [v21 submitMetric:v6];
    v20 = [MEMORY[0x277CBEAA8] monotonicDate];
    [(PLAWDBB *)self setStartTimeAppBB:v20];
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
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat];
  v20[1] = @"RailValue";
  v21[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_RealFormat_aggregateFunction_sum];
  v21[1] = v7;
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
  v4 = [(PLAWDAuxMetrics *)self operator];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__PLAWDBB_startConnectedPower__block_invoke;
  v6[3] = &unk_279A58F10;
  v6[4] = self;
  v5 = [v3 initWithOperator:v4 forEntryKey:@"PLRail_EventNone_Rail" withBlock:v6];

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

- (BOOL)submitConnectedPower:(id)a3 withAwdConn:(id)a4
{
  v69 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [v6 newMetricContainerWithIdentifier:{objc_msgSend(a3, "unsignedIntValue")}];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:-86400.0];
    v9 = [MEMORY[0x277CBEAA8] monotonicDate];
    [v8 timeIntervalSince1970];
    v11 = v10;
    [v9 timeIntervalSince1970];
    v13 = v12 - v11;

    v14 = [(PLOperator *)PLAWDMetricsService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"BBConnectedPower"];
    v15 = [(PLAWDAuxMetrics *)self operator];
    v16 = [v15 storage];
    v17 = [v16 aggregateEntriesForKey:v14 withBucketLength:86400.0 inTimeIntervalRange:{v11, v13}];

    v18 = [MEMORY[0x277D3F190] summarizeAggregateEntries:v17];
    v56 = objc_opt_new();
    if ([MEMORY[0x277D3F208] isBasebandClass:1003003])
    {
      v51 = v17;
      v52 = v14;
      v53 = self;
      v54 = v7;
      v55 = v6;
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
            v28 = [v27 intValue];

            if ((v28 & 0xFFFD) == 1 || v28 == 4 || v28 == 2)
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
      v53 = self;
      v54 = v7;
      v55 = v6;
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
            v42 = [v41 intValue];

            if ((v42 & 0xFFFC) == 4)
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
    v6 = v55;
    v14 = v52;
    self = v53;
    v17 = v51;
LABEL_35:
    v46 = objc_opt_new();
    [v46 setRAT:0];
    [v46 setPowerConnSetupMicroWatt:0];
    [v46 setPowerConnectedMicroWatt:v45];
    v47 = objc_opt_new();
    [v47 addObject:v46];
    [v56 setTimestamp:{objc_msgSend(v6, "getAWDTimestamp")}];
    [v56 setRATPowers:v47];
    [v7 setMetric:v56];
    [(PLAWDBB *)self resetConnectedPowerTable];
    v33 = [v6 submitMetric:v7];

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
  v4 = [(PLAWDAuxMetrics *)self operator];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __23__PLAWDBB_startBBPower__block_invoke;
  v6[3] = &unk_279A58F10;
  v6[4] = self;
  v5 = [v3 initWithOperator:v4 forEntryKey:@"PLRail_EventNone_Rail" withBlock:v6];

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

- (void)handleBBRailCallbackBBProtocol:(id)a3
{
  v3 = [a3 objectForKey:@"entry"];
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
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBB handleBBRailCallbackBBProtocol:]"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:1281];

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

- (void)handleBBRailCallbackLTESleep:(id)a3
{
  v3 = [a3 objectForKey:@"entry"];
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
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBB handleBBRailCallbackLTESleep:]"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:1287];

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

- (void)handleBBRailCallbackTxLte:(id)a3
{
  v3 = [a3 objectForKey:@"entry"];
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
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBB handleBBRailCallbackTxLte:]"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:1293];

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

- (void)handleBBRailCallbackTxCdma:(id)a3
{
  v3 = [a3 objectForKey:@"entry"];
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
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBB handleBBRailCallbackTxCdma:]"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:1299];

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

- (void)handleBBRailCallbackTxEvdo:(id)a3
{
  v3 = [a3 objectForKey:@"entry"];
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
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBB handleBBRailCallbackTxEvdo:]"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:1305];

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

- (void)handleBBRailCallbackTxCdma2K:(id)a3
{
  v3 = [a3 objectForKey:@"entry"];
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
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBB handleBBRailCallbackTxCdma2K:]"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:1311];

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

- (void)handleBBRailCallbackTxGsm:(id)a3
{
  v3 = [a3 objectForKey:@"entry"];
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
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBB handleBBRailCallbackTxGsm:]"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:1317];

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

- (void)handleBBRailCallbackTxUtran:(id)a3
{
  v3 = [a3 objectForKey:@"entry"];
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
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBB handleBBRailCallbackTxUtran:]"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:1323];

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

- (void)handleBBRailCallbackBBICE:(id)a3
{
  v3 = [a3 objectForKey:@"entry"];
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
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBB handleBBRailCallbackBBICE:]"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:1329];

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

- (void)handleBBRailCallbackBBTx:(id)a3
{
  v3 = [a3 objectForKey:@"entry"];
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
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBB handleBBRailCallbackBBTx:]"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:1335];

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

- (void)handleBBRailCallbackOos:(id)a3
{
  v3 = [a3 objectForKey:@"entry"];
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
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBB handleBBRailCallbackOos:]"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:1341];

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

- (void)handleAcountGroupCallback:(id)a3
{
  v3 = [a3 objectForKey:@"entry"];
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
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBB handleAcountGroupCallback:]"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:1347];

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

- (void)handleIceStatsCallback:(id)a3
{
  v3 = [a3 objectForKey:@"entry"];
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
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBB handleIceStatsCallback:]"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:1353];

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