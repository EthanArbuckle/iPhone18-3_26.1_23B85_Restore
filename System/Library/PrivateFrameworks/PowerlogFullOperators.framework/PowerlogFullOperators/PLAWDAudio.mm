@interface PLAWDAudio
+ (id)entryAggregateDefinitionAwdAudio;
+ (id)entryAggregateDefinitions;
+ (id)getSharedObjWithOperator:(id)operator;
- (BOOL)submitDataToAWDServer:(id)server withAwdConn:(id)conn;
- (void)finalizeAudioTable;
- (void)handleAudioRailCallback:(id)callback;
- (void)resetAudioTable;
- (void)startMetricCollection:(id)collection;
- (void)stopMetricCollection:(id)collection;
@end

@implementation PLAWDAudio

+ (id)getSharedObjWithOperator:(id)operator
{
  v3 = plAwdAudio;
  if (!plAwdAudio)
  {
    operatorCopy = operator;
    v5 = [(PLAWDAuxMetrics *)[PLAWDAudio alloc] initWithOperator:operatorCopy];

    v6 = plAwdAudio;
    plAwdAudio = v5;

    v3 = plAwdAudio;
  }

  return v3;
}

+ (id)entryAggregateDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"AudioMetrics";
  entryAggregateDefinitionAwdAudio = [self entryAggregateDefinitionAwdAudio];
  v7[0] = entryAggregateDefinitionAwdAudio;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)entryAggregateDefinitionAwdAudio
{
  v29[4] = *MEMORY[0x277D85DE8];
  v28[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v26[0] = *MEMORY[0x277D3F568];
  v26[1] = v2;
  v27[0] = &unk_2870FEF20;
  v27[1] = MEMORY[0x277CBEC28];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v29[0] = v18;
  v28[1] = *MEMORY[0x277D3F540];
  v24[0] = @"AudioRouting";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v25[0] = commonTypeDict_IntegerFormat;
  v24[1] = @"AudioVolume";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v25[1] = commonTypeDict_IntegerFormat2;
  v24[2] = @"AudioPower";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat_aggregateFunction_sum = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat_aggregateFunction_sum];
  v25[2] = commonTypeDict_RealFormat_aggregateFunction_sum;
  v24[3] = @"AudioTime";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat_aggregateFunction_sum2 = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat_aggregateFunction_sum];
  v25[3] = commonTypeDict_RealFormat_aggregateFunction_sum2;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];
  v29[1] = v8;
  v28[2] = *MEMORY[0x277D3F478];
  v22 = &unk_2870FEF30;
  v20 = *MEMORY[0x277D3F470];
  v21 = &unk_2870FEF30;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v23 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v29[2] = v10;
  v28[3] = *MEMORY[0x277D3F488];
  v19[0] = @"AudioTime";
  v19[1] = @"AudioPower";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v29[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)startMetricCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy longValue] == 2031626)
  {
    [(PLAWDAudio *)self resetAudioTable];
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    [(PLAWDAudio *)self setStartTime:monotonicDate];
  }

  runningMetrics = [(PLAWDAuxMetrics *)self runningMetrics];
  [runningMetrics addObject:collectionCopy];
}

- (void)stopMetricCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy longValue] == 2031626)
  {
    [(PLAWDAudio *)self setAudioRailCallback:0];
  }

  runningMetrics = [(PLAWDAuxMetrics *)self runningMetrics];
  [runningMetrics removeObject:collectionCopy];

  runningMetrics2 = [(PLAWDAuxMetrics *)self runningMetrics];
  v7 = [runningMetrics2 count];

  if (!v7)
  {
    v8 = plAwdAudio;
    plAwdAudio = 0;

    [(PLAWDAudio *)self setAudioRailCallback:0];
  }
}

- (BOOL)submitDataToAWDServer:(id)server withAwdConn:(id)conn
{
  v75 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  connCopy = conn;
  v8 = [connCopy newMetricContainerWithIdentifier:{objc_msgSend(serverCopy, "unsignedIntValue")}];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:-86400.0];
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    [v9 timeIntervalSince1970];
    v12 = v11;
    [monotonicDate timeIntervalSince1970];
    v14 = v13;

    if ([serverCopy longValue] == 2031626)
    {
      [(PLAWDAudio *)self finalizeAudioTable];
      v15 = [(PLOperator *)PLAWDMetricsService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"AudioMetrics"];
      operator = [(PLAWDAuxMetrics *)self operator];
      storage = [operator storage];
      v59 = v15;
      v18 = [storage aggregateEntriesForKey:v15 withBucketLength:86400.0 inTimeIntervalRange:{v12, v14 - v12}];

      v64 = v18;
      v19 = [MEMORY[0x277D3F190] summarizeAggregateEntries:v18];
      v20 = objc_opt_new();
      v63 = v20;
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v21 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __48__PLAWDAudio_submitDataToAWDServer_withAwdConn___block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v21;
        if (submitDataToAWDServer_withAwdConn__defaultOnce_3 != -1)
        {
          dispatch_once(&submitDataToAWDServer_withAwdConn__defaultOnce_3, block);
        }

        if (submitDataToAWDServer_withAwdConn__classDebugEnabled_3 == 1)
        {
          v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"results=%@\naggregatedResults=%@", v18, v19];
          v23 = MEMORY[0x277D3F178];
          v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDAudio.m"];
          lastPathComponent = [v24 lastPathComponent];
          v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDAudio submitDataToAWDServer:withAwdConn:]"];
          [v23 logMessage:v22 fromFile:lastPathComponent fromFunction:v26 fromLineNumber:131];

          v27 = PLLogCommon();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            [PLAWDDisplay startMetricCollection:];
          }

          v20 = v63;
        }
      }

      v60 = v8;
      selfCopy = self;
      v62 = connCopy;
      v73[0] = 0;
      v73[1] = 0;
      v74 = 0;
      [v20 setTimestamp:{objc_msgSend(connCopy, "getAWDTimestamp")}];
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      obj = v19;
      v28 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
      if (!v28)
      {
        v30 = 0;
        v31 = 0;
        v65 = 0;
        goto LABEL_25;
      }

      v29 = v28;
      v30 = 0;
      v31 = 0;
      v65 = 0;
      v32 = *v68;
      while (1)
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v68 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v34 = *(*(&v67 + 1) + 8 * i);
          v35 = [v34 objectForKeyedSubscript:@"AudioRouting"];
          [v35 doubleValue];
          v37 = v36;

          if (v37 == 2.0)
          {
            v38 = [v34 objectForKeyedSubscript:@"AudioTime"];
            [v38 doubleValue];
            v30 = (v39 + v30);

            v40 = [v34 objectForKeyedSubscript:@"AudioPower"];
            [v40 doubleValue];
            v31 = (v41 + v31);

            v42 = [v34 objectForKeyedSubscript:@"AudioVolume"];
            [v42 doubleValue];
            v44 = v43;

            v45 = [v34 objectForKeyedSubscript:@"AudioTime"];
            [v45 doubleValue];
            *(v73 + v44) = v46;
          }

          else
          {
            v47 = [v34 objectForKeyedSubscript:@"AudioRouting"];
            [v47 doubleValue];
            v49 = v48;

            if (v49 != 1.0)
            {
              continue;
            }

            v50 = [v34 objectForKeyedSubscript:@"AudioTime"];
            [v50 doubleValue];
            LODWORD(v65) = (v51 + v65);

            v52 = [v34 objectForKeyedSubscript:@"AudioPower"];
            [v52 doubleValue];
            HIDWORD(v65) = (v53 + HIDWORD(v65));

            v54 = [v34 objectForKeyedSubscript:@"AudioVolume"];
            [v54 doubleValue];

            v45 = [v34 objectForKeyedSubscript:@"AudioTime"];
            [v45 doubleValue];
          }
        }

        v29 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
        if (!v29)
        {
LABEL_25:

          [v63 setAudioHeadsetDuration:v30];
          [v63 setAudioHeadsetPowerMicroWatt:v31];
          [v63 setAudioSpeakerDuration:v65];
          [v63 setAudioSpeakerPowerMicroWatt:HIDWORD(v65)];
          [v63 setAudioVolumeLevelDurations:v73 count:5];
          v8 = v60;
          [v60 setMetric:v63];

          connCopy = v62;
          self = selfCopy;
          goto LABEL_26;
        }
      }
    }

    v55 = 0;
  }

  else
  {
LABEL_26:
    [(PLAWDAudio *)self resetAudioTable];
    monotonicDate2 = [MEMORY[0x277CBEAA8] monotonicDate];
    [(PLAWDAudio *)self setStartTime:monotonicDate2];

    v55 = [connCopy submitMetric:v8];
  }

  v57 = *MEMORY[0x277D85DE8];
  return v55;
}

uint64_t __48__PLAWDAudio_submitDataToAWDServer_withAwdConn___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  submitDataToAWDServer_withAwdConn__classDebugEnabled_3 = result;
  return result;
}

- (void)finalizeAudioTable
{
  v3 = *MEMORY[0x277D3F5D0];
  v36 = [MEMORY[0x277D3F678] entryKeyForType:*MEMORY[0x277D3F5D0] andName:*MEMORY[0x277D3F738]];
  operator = [(PLAWDAuxMetrics *)self operator];
  storage = [operator storage];
  v6 = [storage lastEntryForKey:v36];

  v7 = [v6 objectForKeyedSubscript:@"Active"];
  LODWORD(storage) = [v7 BOOLValue];

  if (storage)
  {
    v8 = [MEMORY[0x277D3F678] entryKeyForType:v3 andName:*MEMORY[0x277D3F730]];
    operator2 = [(PLAWDAuxMetrics *)self operator];
    storage2 = [operator2 storage];
    v35 = v8;
    v34 = [storage2 lastEntryForKey:v8];

    v11 = [MEMORY[0x277D3F678] entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Audio"];
    operator3 = [(PLAWDAuxMetrics *)self operator];
    storage3 = [operator3 storage];
    v33 = v11;
    v14 = [storage3 lastEntryForKey:v11];

    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    v16 = [(PLOperator *)PLAWDMetricsService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"AudioMetrics"];
    v17 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v16];
    [monotonicDate timeIntervalSince1970];
    v19 = v18;
    entryDate = [v14 entryDate];
    [entryDate timeIntervalSince1970];
    v22 = v19 - v21;

    v23 = [v6 objectForKeyedSubscript:@"HeadphonesConnected"];
    LOBYTE(v11) = [v23 BOOLValue];

    if (v11)
    {
      v24 = 1;
    }

    else
    {
      v25 = [v6 objectForKeyedSubscript:@"HeadsetHasInput"];
      [v25 BOOLValue];

      v24 = 2;
    }

    v26 = [MEMORY[0x277CCABB0] numberWithInt:v24];
    [v17 setObject:v26 forKeyedSubscript:@"AudioRouting"];

    v27 = MEMORY[0x277CCABB0];
    v28 = [v34 objectForKeyedSubscript:@"Volume"];
    [v28 doubleValue];
    v30 = [v27 numberWithDouble:(v29 + -1.0) / 20.0];
    [v17 setObject:v30 forKeyedSubscript:@"AudioVolume"];

    v31 = [MEMORY[0x277CCABB0] numberWithDouble:v22];
    [v17 setObject:v31 forKeyedSubscript:@"AudioTime"];

    operator4 = [(PLAWDAuxMetrics *)self operator];
    [operator4 logEntry:v17];
  }
}

- (void)handleAudioRailCallback:(id)callback
{
  callbackCopy = callback;
  v5 = *MEMORY[0x277D3F5D0];
  v6 = [MEMORY[0x277D3F678] entryKeyForType:*MEMORY[0x277D3F5D0] andName:*MEMORY[0x277D3F738]];
  operator = [(PLAWDAuxMetrics *)self operator];
  storage = [operator storage];
  v9 = [storage lastEntriesForKey:v6 count:2 withFilters:0];

  v10 = [MEMORY[0x277D3F678] entryKeyForType:v5 andName:*MEMORY[0x277D3F730]];
  operator2 = [(PLAWDAuxMetrics *)self operator];
  storage2 = [operator2 storage];
  v13 = [storage2 lastEntriesForKey:v10 count:2 withFilters:0];

  if ([v9 count] < 2 || objc_msgSend(v13, "count") < 2)
  {
    goto LABEL_32;
  }

  v77 = v10;
  v78 = v6;
  v79 = callbackCopy;
  v14 = [callbackCopy objectForKey:@"entry"];
  operator3 = [(PLAWDAuxMetrics *)self operator];
  storage3 = [operator3 storage];
  entryKey = [v14 entryKey];
  v84 = v14;
  v18 = [storage3 entryForKey:entryKey withID:{objc_msgSend(v14, "entryID") - 1}];

  v19 = [v9 objectAtIndexedSubscript:0];
  v20 = [v9 objectAtIndexedSubscript:1];
  v21 = [v13 objectAtIndexedSubscript:0];
  v22 = [v13 objectAtIndexedSubscript:1];
  v76 = [(PLOperator *)PLAWDMetricsService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"AudioMetrics"];
  v82 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v76];
  v83 = v18;
  entryDate = [v18 entryDate];
  [entryDate timeIntervalSince1970];
  v25 = v24;
  entryDate2 = [v19 entryDate];
  [entryDate2 timeIntervalSince1970];
  v28 = v27;

  v80 = v19;
  v74 = v21;
  v75 = v20;
  if (v25 >= v28)
  {
    v36 = v19;
    v81 = v22;
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_19;
    }

    v37 = objc_opt_class();
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = __38__PLAWDAudio_handleAudioRailCallback___block_invoke_64;
    v86[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v86[4] = v37;
    if (handleAudioRailCallback__defaultOnce_62 != -1)
    {
      dispatch_once(&handleAudioRailCallback__defaultOnce_62, v86);
    }

    if (handleAudioRailCallback__classDebugEnabled_63 != 1)
    {
      goto LABEL_19;
    }

    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Output changed"];
    v38 = MEMORY[0x277D3F178];
    v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDAudio.m"];
    lastPathComponent = [v39 lastPathComponent];
    v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDAudio handleAudioRailCallback:]"];
    [v38 logMessage:v31 fromFile:lastPathComponent fromFunction:v41 fromLineNumber:238];

    v35 = PLLogCommon();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      [PLAWDDisplay startMetricCollection:];
    }
  }

  else
  {
    v29 = v20;
    v81 = v21;
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_18;
    }

    v30 = objc_opt_class();
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = __38__PLAWDAudio_handleAudioRailCallback___block_invoke;
    v87[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v87[4] = v30;
    if (handleAudioRailCallback__defaultOnce != -1)
    {
      dispatch_once(&handleAudioRailCallback__defaultOnce, v87);
    }

    if (handleAudioRailCallback__classDebugEnabled != 1)
    {
LABEL_18:
      v36 = v29;
      goto LABEL_19;
    }

    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Routing changed"];
    v73 = MEMORY[0x277D3F178];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDAudio.m"];
    lastPathComponent2 = [v32 lastPathComponent];
    v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDAudio handleAudioRailCallback:]"];
    [v73 logMessage:v31 fromFile:lastPathComponent2 fromFunction:v34 fromLineNumber:234];

    v35 = PLLogCommon();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      [PLAWDDisplay startMetricCollection:];
    }

    v36 = v29;
  }

LABEL_19:
  entryDate3 = [v84 entryDate];
  [entryDate3 timeIntervalSince1970];
  v44 = v43;
  entryDate4 = [v83 entryDate];
  startTime = [(PLAWDAudio *)self startTime];
  v47 = [entryDate4 laterDate:startTime];
  [v47 timeIntervalSince1970];
  v49 = v48;

  v50 = [v36 objectForKeyedSubscript:@"HeadphonesConnected"];
  LOBYTE(entryDate4) = [v50 BOOLValue];

  if (entryDate4)
  {
    v51 = 1;
  }

  else
  {
    v52 = [v36 objectForKeyedSubscript:@"HeadsetHasInput"];
    [v52 BOOLValue];

    v51 = 2;
  }

  v53 = v36;
  v54 = [v36 objectForKeyedSubscript:@"Active"];
  bOOLValue = [v54 BOOLValue];

  v56 = v80;
  if (bOOLValue)
  {
    v57 = [MEMORY[0x277CCABB0] numberWithInt:v51];
    [v82 setObject:v57 forKeyedSubscript:@"AudioRouting"];

    v58 = MEMORY[0x277CCABB0];
    v59 = [v81 objectForKeyedSubscript:@"Volume"];
    [v59 doubleValue];
    v61 = [v58 numberWithDouble:(v60 + -1.0) / 20.0];
    [v82 setObject:v61 forKeyedSubscript:@"AudioVolume"];

    v62 = [MEMORY[0x277CCABB0] numberWithDouble:v44 - v49];
    [v82 setObject:v62 forKeyedSubscript:@"AudioTime"];

    operator4 = [(PLAWDAuxMetrics *)self operator];
    [operator4 logEntry:v82];
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v64 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__PLAWDAudio_handleAudioRailCallback___block_invoke_70;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v64;
    if (handleAudioRailCallback__defaultOnce_68 != -1)
    {
      dispatch_once(&handleAudioRailCallback__defaultOnce_68, block);
    }

    if (handleAudioRailCallback__classDebugEnabled_69 == 1)
    {
      v65 = MEMORY[0x277CCACA8];
      v66 = [v80 objectForKeyedSubscript:@"Active"];
      v67 = [v65 stringWithFormat:@"No update required, currActive = %@\nAudio writes: %@\n%@\n-------------", v66, v82, v53];

      v68 = MEMORY[0x277D3F178];
      v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDAudio.m"];
      lastPathComponent3 = [v69 lastPathComponent];
      v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDAudio handleAudioRailCallback:]"];
      [v68 logMessage:v67 fromFile:lastPathComponent3 fromFunction:v71 fromLineNumber:258];

      v72 = PLLogCommon();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }

      v56 = v80;
    }
  }

  v6 = v78;
  callbackCopy = v79;
  v10 = v77;
LABEL_32:
}

uint64_t __38__PLAWDAudio_handleAudioRailCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleAudioRailCallback__classDebugEnabled = result;
  return result;
}

uint64_t __38__PLAWDAudio_handleAudioRailCallback___block_invoke_64(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleAudioRailCallback__classDebugEnabled_63 = result;
  return result;
}

uint64_t __38__PLAWDAudio_handleAudioRailCallback___block_invoke_70(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleAudioRailCallback__classDebugEnabled_69 = result;
  return result;
}

- (void)resetAudioTable
{
  v3 = [(PLOperator *)PLAWDMetricsService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"AudioMetrics"];
  v4.receiver = self;
  v4.super_class = PLAWDAudio;
  [(PLAWDAuxMetrics *)&v4 resetTableWithEntryKey:v3];
}

@end