@interface PLSMCAgent
+ (BOOL)supportsBasicSMC;
+ (BOOL)supportsThermalSMC;
+ (id)entryEventNoneDefinitionDRAMVendorKey;
+ (id)entryEventNoneDefinitions;
+ (id)entryEventPointDefinitionMetricMonitorInstantKeys;
+ (id)entryEventPointDefinitions;
+ (id)parsePMUEvents:(unint64_t)events;
+ (void)load;
+ (void)reportPMUEventsToCA:(id)a;
- (BOOL)SMCKeyExists:(id)exists;
- (BOOL)accumSupported;
- (BOOL)anyVirtualTemperatureAboveThreshold;
- (BOOL)readKeyViaOSAccum:(id)accum toOutput:(id *)output;
- (BOOL)writeKeyNumeric:(id)numeric withValue:(unint64_t)value;
- (PLSMCAgent)init;
- (const)getChannelInfo:(unsigned int)info;
- (id)DRAMVendorKey;
- (id)getAccumEntryFromSample:(id)sample lastSample:(id)lastSample withEntryKey:(id)key withDate:(id)date;
- (id)getPowerEntryFromSample:(id)sample lastSample:(id)lastSample withEntryKey:(id)key;
- (id)metricMonitorInstantKeys;
- (id)powerAccumulatedKeys;
- (id)powerDeliveryKeys;
- (id)powerDeliveryResetKeys;
- (id)readKey:(id)key;
- (id)resetAccumulatedKeys:(id)keys;
- (id)sampleAccumulatedKeys:(id)keys;
- (id)thermalAggregationKeys;
- (id)virtualTemperatureKeys;
- (void)dealloc;
- (void)handleStateChangeForSMCStats;
- (void)initOperatorDependancies;
- (void)log;
- (void)logAccumKeysToCA:(id)a withLastSample:(id)sample andDate:(id)date;
- (void)logAccumulatedKeysToPowerlog:(BOOL)powerlog ToCoreAnalytics:(BOOL)analytics withDate:(id)date isWake:(BOOL)wake;
- (void)logColdBoot;
- (void)logDRAMVendorKey;
- (void)logEventPointMetricMonitorInstantKeys;
- (void)logPowerDeliveryKeys;
- (void)logThermalAggregationKeysToCA;
- (void)registerThermalTimer;
- (void)stopThermalTimerAndlogFirstLowSample:(BOOL)sample;
- (void)virtualTemperatureMonitorCallback;
@end

@implementation PLSMCAgent

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLSMCAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"MetricMonitorInstantKeys";
  entryEventPointDefinitionMetricMonitorInstantKeys = [self entryEventPointDefinitionMetricMonitorInstantKeys];
  v7[0] = entryEventPointDefinitionMetricMonitorInstantKeys;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)entryEventPointDefinitionMetricMonitorInstantKeys
{
  v43[2] = *MEMORY[0x277D85DE8];
  if (+[PLUtilities isPerfPowerMetricd])
  {
    v42[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F4D8];
    v40[0] = *MEMORY[0x277D3F568];
    v40[1] = v2;
    v41[0] = &unk_28714B358;
    v41[1] = MEMORY[0x277CBEC38];
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
    v43[0] = v37;
    v42[1] = *MEMORY[0x277D3F540];
    v38[0] = @"B0AP";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat = [mEMORY[0x277D3F198] commonTypeDict_RealFormat];
    v39[0] = commonTypeDict_RealFormat;
    v38[1] = @"zSLi";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat];
    v39[1] = commonTypeDict_RealFormat2;
    v38[2] = @"zSLa";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
    v39[2] = commonTypeDict_RealFormat3;
    v38[3] = @"zSLc";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat];
    v39[3] = commonTypeDict_RealFormat4;
    v38[4] = @"zSPi";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_RealFormat];
    v39[4] = commonTypeDict_RealFormat5;
    v38[5] = @"xRPE";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_RealFormat];
    v39[5] = commonTypeDict_RealFormat6;
    v38[6] = @"CHAS";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_RealFormat];
    v39[6] = commonTypeDict_RealFormat7;
    v38[7] = @"TB0T";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat8 = [mEMORY[0x277D3F198]8 commonTypeDict_RealFormat];
    v39[7] = commonTypeDict_RealFormat8;
    v38[8] = @"TVRM";
    mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat9 = [mEMORY[0x277D3F198]9 commonTypeDict_RealFormat];
    v39[8] = commonTypeDict_RealFormat9;
    v38[9] = @"TVBM";
    mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat10 = [mEMORY[0x277D3F198]10 commonTypeDict_RealFormat];
    v39[9] = commonTypeDict_RealFormat10;
    v38[10] = @"TVBH";
    mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat11 = [mEMORY[0x277D3F198]11 commonTypeDict_RealFormat];
    v39[10] = commonTypeDict_RealFormat11;
    v38[11] = @"TVMx";
    mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat12 = [mEMORY[0x277D3F198]12 commonTypeDict_RealFormat];
    v39[11] = commonTypeDict_RealFormat12;
    v38[12] = @"TVBE";
    mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat13 = [mEMORY[0x277D3F198]13 commonTypeDict_RealFormat];
    v39[12] = commonTypeDict_RealFormat13;
    v38[13] = @"PDEP";
    mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat14 = [mEMORY[0x277D3F198]14 commonTypeDict_RealFormat];
    v39[13] = commonTypeDict_RealFormat14;
    v38[14] = @"PDLP";
    mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat15 = [mEMORY[0x277D3F198]15 commonTypeDict_RealFormat];
    v39[14] = commonTypeDict_RealFormat15;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:15];
    v43[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventNoneDefinitionDRAMVendorKey
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v11 = *MEMORY[0x277D3F568];
  v12 = &unk_28714B368;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v2;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"MDSV";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v10 = commonTypeDict_IntegerFormat;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventNoneDefinitions
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"PowerDeliveryKeys";
  entryEventNoneDefinitionPowerDeliveryKeys = [self entryEventNoneDefinitionPowerDeliveryKeys];
  v10[0] = entryEventNoneDefinitionPowerDeliveryKeys;
  v9[1] = @"DRAMVendorKey";
  entryEventNoneDefinitionDRAMVendorKey = [self entryEventNoneDefinitionDRAMVendorKey];
  v10[1] = entryEventNoneDefinitionDRAMVendorKey;
  v9[2] = @"ColdBoot";
  entryEventNoneDefinitionColdBoot = [self entryEventNoneDefinitionColdBoot];
  v10[2] = entryEventNoneDefinitionColdBoot;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (PLSMCAgent)init
{
  v19.receiver = self;
  v19.super_class = PLSMCAgent;
  v2 = [(PLAgent *)&v19 init];
  if (+[PLUtilities isPerfPowerMetricd](PLUtilities, "isPerfPowerMetricd") && +[PLSMCAgent supportsBasicSMC](PLSMCAgent, "supportsBasicSMC") || +[PLSMCAgent supportsThermalSMC])
  {
    if (v2)
    {
      v2->_smcConnection = SMCOpenConnectionWithDefaultService();
      v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
      lastAccumValueDict = v2->_lastAccumValueDict;
      v2->_lastAccumValueDict = v3;

      v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
      lastAccumCycleCountDict = v2->_lastAccumCycleCountDict;
      v2->_lastAccumCycleCountDict = v5;

      lastAccumlatedKeysSample = v2->_lastAccumlatedKeysSample;
      v2->_lastAccumlatedKeysSample = 0;

      lastAccumlatedKeysSampleCA = v2->_lastAccumlatedKeysSampleCA;
      v2->_lastAccumlatedKeysSampleCA = 0;

      thermalAggregationTimer = v2->_thermalAggregationTimer;
      v2->_thermalAggregationTimer = 0;

      lastDisplayAccumlatedSample = v2->_lastDisplayAccumlatedSample;
      v2->_lastDisplayAccumlatedSample = 0;

      monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
      lastDisplayAccumulatedSampleEndDate = v2->_lastDisplayAccumulatedSampleEndDate;
      v2->_lastDisplayAccumulatedSampleEndDate = monotonicDate;

      lastThermalInstantEntry = v2->_lastThermalInstantEntry;
      v2->_lastThermalInstantEntry = 0;

      thermalLoggingTimer = v2->_thermalLoggingTimer;
      v2->_thermalLoggingTimer = 0;

      lastPowerAccumlatedSample = v2->_lastPowerAccumlatedSample;
      v2->_lastPowerAccumlatedSample = 0;

      lastPowerAccumlatedSampleCA = v2->_lastPowerAccumlatedSampleCA;
      v2->_lastPowerAccumlatedSampleCA = 0;
    }

    v17 = v2;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)initOperatorDependancies
{
  if (+[PLSMCAgent supportsThermalSMC])
  {

    [(PLSMCAgent *)self logDRAMVendorKey];
  }
}

- (void)dealloc
{
  if ([(PLSMCAgent *)self smcConnection])
  {
    [(PLSMCAgent *)self smcConnection];
    SMCCloseConnection();
  }

  v3.receiver = self;
  v3.super_class = PLSMCAgent;
  [(PLAgent *)&v3 dealloc];
}

- (void)log
{
  [(PLSMCAgent *)self logThermalInstantAndAccumlatedKeys];
  if ([(PLSMCAgent *)self accumSupported])
  {
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    [(PLSMCAgent *)self logAccumulatedKeysToPowerlog:1 ToCoreAnalytics:1 withDate:monotonicDate isWake:0];
  }
}

- (void)logEventPointMetricMonitorInstantKeys
{
  v20 = *MEMORY[0x277D85DE8];
  if (+[PLUtilities isPerfPowerMetricd])
  {
    v3 = [(PLOperator *)PLSMCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"MetricMonitorInstantKeys"];
    v4 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v3];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    metricMonitorInstantKeys = [(PLSMCAgent *)self metricMonitorInstantKeys];
    v6 = [metricMonitorInstantKeys countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(metricMonitorInstantKeys);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [(PLSMCAgent *)self readKey:v10];
          [v4 setObject:v11 forKeyedSubscript:v10];
        }

        v7 = [metricMonitorInstantKeys countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v7);
    }

    v18 = v4;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    [(PLOperator *)self postEntries:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)sampleAccumulatedKeys:(id)keys
{
  v35 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = keysCopy;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0x279A5A000uLL;
    v24 = *v29;
    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v28 + 1) + 8 * v10);
        v26 = 0.0;
        v27 = 0;
        if ([(PLSMCAgent *)self readKeyViaOSAccum:v11 toOutput:&v26])
        {
          v12 = [*(v9 + 3776) objectWithChannelValue:v27 cycleCount:BYTE4(v27) variant:v26];
          [dictionary setObject:v12 forKeyedSubscript:v11];
        }

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v13 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __36__PLSMCAgent_sampleAccumulatedKeys___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v13;
          if (sampleAccumulatedKeys__defaultOnce != -1)
          {
            dispatch_once(&sampleAccumulatedKeys__defaultOnce, block);
          }

          if (sampleAccumulatedKeys__classDebugEnabled == 1)
          {
            v14 = v6;
            v15 = dictionary;
            v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"AccumulatedKeys: keyName=%@, channelValue=%f, cycleCount=%d, variant=%d", v11, *&v26, v27, BYTE4(v27)];
            v17 = MEMORY[0x277D3F178];
            v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLSMCAgent.m"];
            lastPathComponent = [v18 lastPathComponent];
            v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSMCAgent sampleAccumulatedKeys:]"];
            [v17 logMessage:v16 fromFile:lastPathComponent fromFunction:v20 fromLineNumber:1081];

            v21 = PLLogCommon();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v33 = v16;
              _os_log_debug_impl(&dword_25EE51000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            dictionary = v15;
            v6 = v14;
            v9 = 0x279A5A000;
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v8);
  }

  v22 = *MEMORY[0x277D85DE8];

  return dictionary;
}

uint64_t __36__PLSMCAgent_sampleAccumulatedKeys___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  sampleAccumulatedKeys__classDebugEnabled = result;
  return result;
}

- (id)resetAccumulatedKeys:(id)keys
{
  v25 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = keysCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v19;
    *&v8 = 138412290;
    v17 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if ([(PLSMCAgent *)self SMCKeyExists:v12, v17, v18])
        {
          v13 = [PLSMCOutputObject objectWithChannelValue:0 cycleCount:0 variant:0.0];
          [dictionary setObject:v13 forKeyedSubscript:v12];
          v14 = PLLogSMC();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = v17;
            v23 = v12;
            _os_log_debug_impl(&dword_25EE51000, v14, OS_LOG_TYPE_DEBUG, "ExistingKeys: keyName=%@", buf, 0xCu);
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (id)getPowerEntryFromSample:(id)sample lastSample:(id)lastSample withEntryKey:(id)key
{
  sampleCopy = sample;
  lastSampleCopy = lastSample;
  keyCopy = key;
  if (sampleCopy)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__9;
    v19 = __Block_byref_object_dispose__9;
    v20 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:keyCopy];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__PLSMCAgent_getPowerEntryFromSample_lastSample_withEntryKey___block_invoke;
    v12[3] = &unk_279A5CF98;
    v13 = lastSampleCopy;
    v14 = &v15;
    [sampleCopy enumerateKeysAndObjectsUsingBlock:v12];
    v10 = v16[5];

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __62__PLSMCAgent_getPowerEntryFromSample_lastSample_withEntryKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = [v6 objectForKeyedSubscript:v22];
    v8 = v7;
    if (v7 && (v9 = [v7 cycleCount], v9 < objc_msgSend(v5, "cycleCount")) && (objc_msgSend(v5, "channelValue"), v11 = v10, objc_msgSend(v8, "channelValue"), v13 = v12, v14 = objc_msgSend(v5, "cycleCount") - v9, v14 > 0))
    {
      v15 = [MEMORY[0x277CCABB0] numberWithDouble:(v11 - v13) / v14];
      [*(*(*(a1 + 40) + 8) + 40) setObject:v15 forKeyedSubscript:v22];
    }

    else
    {
      v16 = *(*(a1 + 40) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = 0;
    }
  }

  else if ([v5 cycleCount])
  {
    [v5 channelValue];
    v19 = v18;
    v20 = [v5 cycleCount];
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:v19 / v20];
    [*(*(*(a1 + 40) + 8) + 40) setObject:v8 forKeyedSubscript:v22];
  }

  else
  {
    v21 = *(*(a1 + 40) + 8);
    v8 = *(v21 + 40);
    *(v21 + 40) = 0;
  }
}

- (id)getAccumEntryFromSample:(id)sample lastSample:(id)lastSample withEntryKey:(id)key withDate:(id)date
{
  sampleCopy = sample;
  lastSampleCopy = lastSample;
  keyCopy = key;
  dateCopy = date;
  monotonicDate = dateCopy;
  if (sampleCopy)
  {
    if (!dateCopy)
    {
      monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    }

    v14 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:keyCopy withDate:monotonicDate];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __71__PLSMCAgent_getAccumEntryFromSample_lastSample_withEntryKey_withDate___block_invoke;
    v19[3] = &unk_279A5CFC0;
    v15 = v14;
    v20 = v15;
    v21 = lastSampleCopy;
    [sampleCopy enumerateKeysAndObjectsUsingBlock:v19];
    v16 = v21;
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void __71__PLSMCAgent_getAccumEntryFromSample_lastSample_withEntryKey_withDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = a2;
  v5 = a3;
  v6 = [PLSMCAgent channelValueKey:v29];
  v7 = [*(a1 + 32) definedKeys];
  v8 = [v7 containsObject:v6];

  if (v8)
  {
    v9 = MEMORY[0x277CCABB0];
    [v5 channelValue];
    v10 = [v9 numberWithDouble:?];
    [*(a1 + 32) setObject:v10 forKeyedSubscript:v6];
  }

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v5, "cycleCount")}];
  v12 = *(a1 + 32);
  v13 = [PLSMCAgent cycleCountKey:v29];
  [v12 setObject:v11 forKeyedSubscript:v13];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v5, "variant")}];
  v15 = *(a1 + 32);
  v16 = [PLSMCAgent variantKey:v29];
  [v15 setObject:v14 forKeyedSubscript:v16];

  v17 = [PLSMCAgent channelValueDiffKey:v29];
  v18 = [*(a1 + 32) definedKeys];
  LODWORD(v16) = [v18 containsObject:v17];

  if (v16)
  {
    v19 = *(a1 + 40);
    if (v19)
    {
      v20 = [v19 objectForKeyedSubscript:v29];
      v21 = v20;
      if (v20)
      {
        v22 = [v20 cycleCount];
        if (v22 <= [v5 cycleCount])
        {
          [v5 channelValue];
          v24 = v23;
          [v21 channelValue];
          v26 = v24 - v25;
          v27 = MEMORY[0x277CCABB0];
LABEL_10:
          [PLUtilities roundToSigFigDouble:4 withSigFig:v26];
          v28 = [v27 numberWithDouble:?];
          [*(a1 + 32) setObject:v28 forKeyedSubscript:v17];

          goto LABEL_11;
        }
      }
    }

    else
    {
      v21 = 0;
    }

    v27 = MEMORY[0x277CCABB0];
    [v5 channelValue];
    goto LABEL_10;
  }

LABEL_11:
}

- (void)logAccumKeysToCA:(id)a withLastSample:(id)sample andDate:(id)date
{
  aCopy = a;
  sampleCopy = sample;
  v10 = sampleCopy;
  if (aCopy && sampleCopy && date)
  {
    stateTracker = self->_stateTracker;
    dateCopy = date;
    v13 = [(PLStateTrackingComposition *)stateTracker getState:1 beforeDate:dateCopy];
    v14 = [(PLStateTrackingComposition *)self->_stateTracker getState:8 beforeDate:dateCopy];

    if (v13)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v16 = PLLogSMC();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [PLSMCAgent logAccumKeysToCA:withLastSample:andDate:];
      }

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __54__PLSMCAgent_logAccumKeysToCA_withLastSample_andDate___block_invoke;
      v17[3] = &unk_279A5D010;
      v18 = v10;
      v19 = v13;
      v20 = v14;
      [aCopy enumerateKeysAndObjectsUsingBlock:v17];
    }
  }
}

void __54__PLSMCAgent_logAccumKeysToCA_withLastSample_andDate___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] objectForKeyedSubscript:v5];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 cycleCount];
    if (v9 <= [v6 cycleCount])
    {
      [v6 cycleCount];
      [v8 cycleCount];
      [v6 channelValue];
      [v8 channelValue];
      v10 = v5;
      v11 = a1[5];
      v12 = a1[6];
      AnalyticsSendEventLazy();
    }
  }
}

id __54__PLSMCAgent_logAccumKeysToCA_withLastSample_andDate___block_invoke_2(uint64_t a1)
{
  v10[5] = *MEMORY[0x277D85DE8];
  v10[0] = *(a1 + 32);
  v9[0] = @"KeyName";
  v9[1] = @"ChannelValue";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 56)];
  v10[1] = v2;
  v9[2] = @"CycleCount";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 64)];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v10[2] = v3;
  v10[3] = v4;
  v9[3] = @"Plugged";
  v9[4] = @"Wake";
  v10[4] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)logAccumulatedKeysToPowerlog:(BOOL)powerlog ToCoreAnalytics:(BOOL)analytics withDate:(id)date isWake:(BOOL)wake
{
  analyticsCopy = analytics;
  dateCopy = date;
  if (powerlog || analyticsCopy)
  {
    v13 = dateCopy;
    powerAccumulatedKeys = [(PLSMCAgent *)self powerAccumulatedKeys];
    v11 = [(PLSMCAgent *)self sampleAccumulatedKeys:powerAccumulatedKeys];

    if (analyticsCopy)
    {
      lastPowerAccumlatedSampleCA = [(PLSMCAgent *)self lastPowerAccumlatedSampleCA];
      [(PLSMCAgent *)self logAccumKeysToCA:v11 withLastSample:lastPowerAccumlatedSampleCA andDate:v13];

      [(PLSMCAgent *)self setLastPowerAccumlatedSampleCA:v11];
    }

    dateCopy = v13;
  }
}

- (void)handleStateChangeForSMCStats
{
  if ([(PLStateTrackingComposition *)self->_stateTracker stateChanged:16])
  {
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    [(PLSMCAgent *)self logAccumulatedKeysToPowerlog:1 ToCoreAnalytics:0 withDate:monotonicDate isWake:1];
  }

  if ([(PLStateTrackingComposition *)self->_stateTracker stateChanged:32])
  {
    v4 = [(PLStateTrackingComposition *)self->_stateTracker getLastState:32];
    bOOLValue = [v4 BOOLValue];

    if (bOOLValue)
    {
      [(PLSMCAgent *)self setLastAccumlatedKeysSample:0];
      [(PLSMCAgent *)self setLastAccumlatedKeysSampleCA:0];
    }
  }

  getSystemStateChangeTime = [(PLStateTrackingComposition *)self->_stateTracker getSystemStateChangeTime];
  [(PLSMCAgent *)self logAccumulatedKeysToPowerlog:0 ToCoreAnalytics:1 withDate:getSystemStateChangeTime isWake:0];
}

- (void)logThermalAggregationKeysToCA
{
  stateTracker = self->_stateTracker;
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v5 = [(PLStateTrackingComposition *)stateTracker getState:1 beforeDate:monotonicDate];

  v6 = self->_stateTracker;
  monotonicDate2 = [MEMORY[0x277CBEAA8] monotonicDate];
  v8 = [(PLStateTrackingComposition *)v6 getState:8 beforeDate:monotonicDate2];

  v9 = self->_stateTracker;
  monotonicDate3 = [MEMORY[0x277CBEAA8] monotonicDate];
  v11 = [(PLStateTrackingComposition *)v9 getState:64 beforeDate:monotonicDate3];
  bOOLValue = [v11 BOOLValue];

  v13 = PLLogSMC();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [PLSMCAgent logThermalAggregationKeysToCA];
  }

  v14 = MEMORY[0x277CBEB38];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue ^ 1u];
  v16 = [v14 dictionaryWithObjectsAndKeys:{v5, @"Plugged", v8, @"Wake", v15, @"Active", 0}];

  thermalAggregationKeys = [(PLSMCAgent *)self thermalAggregationKeys];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __43__PLSMCAgent_logThermalAggregationKeysToCA__block_invoke;
  v21[3] = &unk_279A5D038;
  v21[4] = self;
  v18 = v16;
  v22 = v18;
  [thermalAggregationKeys enumerateObjectsUsingBlock:v21];
  v20 = v18;
  v19 = v18;
  AnalyticsSendEventLazy();
}

void __43__PLSMCAgent_logThermalAggregationKeysToCA__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) readKey:v3];
  if ([v3 isEqualToString:@"SDTO"])
  {
    v5 = [v3 stringByAppendingString:@"_"];

    [v4 doubleValue];
    [PLUtilities roundToSigFigDouble:1 withSigFig:?];
    v7 = 10.0;
    v8 = v6 >= 5.0 && v6 < 10.0;
    if (!v8)
    {
      v7 = v6;
    }

    v8 = v6 < 5.0;
    v9 = 1.0;
    if (!v8)
    {
      v9 = v7;
    }

    v10 = [MEMORY[0x277CCABB0] numberWithDouble:v9];

    v4 = v10;
    v3 = v5;
  }

  v11 = PLLogSMC();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    __43__PLSMCAgent_logThermalAggregationKeysToCA__block_invoke_cold_1();
  }

  if (v4)
  {
    [*(a1 + 40) setObject:v4 forKey:v3];
  }
}

- (BOOL)accumSupported
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__PLSMCAgent_accumSupported__block_invoke;
  block[3] = &unk_279A5BDC0;
  block[4] = self;
  if (accumSupported_onceToken != -1)
  {
    dispatch_once(&accumSupported_onceToken, block);
  }

  return accumSupported_accumSupported;
}

uint64_t __28__PLSMCAgent_accumSupported__block_invoke(uint64_t a1)
{
  [*(a1 + 32) smcConnection];
  result = SMCOSAccumIsSupported();
  accumSupported_accumSupported = result;
  return result;
}

- (id)readKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  if (!keyCopy)
  {
    goto LABEL_5;
  }

  [keyCopy UTF8String];
  if (!SMCMakeUInt32Key())
  {
    goto LABEL_5;
  }

  v10 = 0;
  v11 = 0;
  [(PLSMCAgent *)self smcConnection];
  v6 = 0;
  if (SMCGetKeyInfo())
  {
    goto LABEL_6;
  }

  [(PLSMCAgent *)self smcConnection];
  if (SMCReadKeyAsNumericWithKnownKeyInfo())
  {
    goto LABEL_5;
  }

  if (BYTE4(v10) != 1)
  {
    v6 = 0;
    goto LABEL_14;
  }

  if (HIWORD(v10) != 64)
  {
    [(PLSMCAgent *)self smcConnection];
    if (!SMCReadKey())
    {
      v8 = [MEMORY[0x277CCABB0] numberWithInt:0];
      goto LABEL_13;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  [(PLSMCAgent *)self smcConnection];
  if (SMCReadKey())
  {
    goto LABEL_5;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:0];
LABEL_13:
  v6 = v8;
LABEL_14:
  v9 = PLLogSMC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [PLSMCAgent readKey:];
  }

LABEL_6:

  return v6;
}

- (BOOL)writeKeyNumeric:(id)numeric withValue:(unint64_t)value
{
  v15 = *MEMORY[0x277D85DE8];
  numericCopy = numeric;
  v6 = numericCopy;
  if (numericCopy)
  {
    [numericCopy UTF8String];
    if (SMCMakeUInt32Key())
    {
      HIDWORD(v14) = 0;
      [(PLSMCAgent *)self smcConnection];
      if (SMCGetKeyInfo())
      {
        v7 = PLLogSMC();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [PLSMCAgent writeKeyNumeric:withValue:];
        }
      }

      else
      {
        [(PLSMCAgent *)self smcConnection];
        v10 = SMCWriteKeyAsNumeric();
        v11 = PLLogSMC();
        v7 = v11;
        if (!v10)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            [PLSMCAgent writeKeyNumeric:withValue:];
          }

          v9 = 1;
          goto LABEL_15;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [PLSMCAgent writeKeyNumeric:withValue:];
        }
      }

      v9 = 0;
LABEL_15:

      goto LABEL_16;
    }

    v8 = PLLogSMC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PLSMCAgent writeKeyNumeric:withValue:];
    }
  }

  else
  {
    v8 = PLLogSMC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PLSMCAgent writeKeyNumeric:withValue:];
    }
  }

  v9 = 0;
LABEL_16:

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (const)getChannelInfo:(unsigned int)info
{
  [(PLSMCAgent *)self smcConnection];
  ChannelInfoForKey = SMCAccumGetChannelInfoForKey();
  if (!ChannelInfoForKey)
  {
    v4 = PLLogSMC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [PLSMCAgent getChannelInfo:];
    }
  }

  return ChannelInfoForKey;
}

- (BOOL)SMCKeyExists:(id)exists
{
  if (exists)
  {
    [exists UTF8String];
    v4 = SMCMakeUInt32Key();
    if (v4)
    {
      [(PLSMCAgent *)self smcConnection];
      LOBYTE(v4) = SMCGetKeyInfo() == 0;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)readKeyViaOSAccum:(id)accum toOutput:(id *)output
{
  accumCopy = accum;
  v7 = accumCopy;
  if (!accumCopy)
  {
    goto LABEL_4;
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  [accumCopy UTF8String];
  v8 = SMCMakeUInt32Key();
  if (v8)
  {
    [(PLSMCAgent *)self smcConnection];
    if (SMCGetKeyInfo())
    {
LABEL_4:
      LOBYTE(v8) = 0;
      goto LABEL_5;
    }

    if ([(PLSMCAgent *)self sampleKey:output forKey:v8])
    {
      if (output->var1)
      {
        v10 = PLLogSMC();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          [PLSMCAgent readKeyViaOSAccum:toOutput:];
        }

        LOBYTE(v8) = 1;
        goto LABEL_16;
      }

      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_4;
      }

      v11 = objc_opt_class();
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __41__PLSMCAgent_readKeyViaOSAccum_toOutput___block_invoke_178;
      v20 = &__block_descriptor_40_e5_v8__0lu32l8;
      v21 = v11;
      if (readKeyViaOSAccum_toOutput__defaultOnce_176 != -1)
      {
        dispatch_once(&readKeyViaOSAccum_toOutput__defaultOnce_176, &v17);
      }

      if (readKeyViaOSAccum_toOutput__classDebugEnabled_177 != 1)
      {
        goto LABEL_4;
      }

      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: Returned cycleCount is zero for %u key, returning kSMCReturnError", "-[PLSMCAgent readKeyViaOSAccum:toOutput:]", v8, v17, v18, v19, v20, v21];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLSMCAgent.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSMCAgent readKeyViaOSAccum:toOutput:]"];
      [v12 logMessage:v10 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:1672];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }

    else
    {
      v10 = PLLogSMC();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [PLSMCAgent readKeyViaOSAccum:toOutput:];
      }
    }

    LOBYTE(v8) = 0;
LABEL_16:
  }

LABEL_5:

  return v8;
}

uint64_t __41__PLSMCAgent_readKeyViaOSAccum_toOutput___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  readKeyViaOSAccum_toOutput__classDebugEnabled = result;
  return result;
}

uint64_t __41__PLSMCAgent_readKeyViaOSAccum_toOutput___block_invoke_172(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  readKeyViaOSAccum_toOutput__classDebugEnabled_171 = result;
  return result;
}

uint64_t __41__PLSMCAgent_readKeyViaOSAccum_toOutput___block_invoke_178(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  readKeyViaOSAccum_toOutput__classDebugEnabled_177 = result;
  return result;
}

- (void)logPowerDeliveryKeys
{
  v40 = *MEMORY[0x277D85DE8];
  v22 = [(PLOperator *)PLSMCAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"PowerDeliveryKeys"];
  v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v22];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  powerDeliveryKeys = [(PLSMCAgent *)self powerDeliveryKeys];
  v6 = [powerDeliveryKeys countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(powerDeliveryKeys);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        v11 = [(PLSMCAgent *)self readKey:v10];
        if (v11)
        {
          [v3 setObject:v11 forKeyedSubscript:v10];
          [dictionary setObject:v11 forKey:v10];
        }
      }

      v7 = [powerDeliveryKeys countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v7);
  }

  [(PLOperator *)self logEntry:v3];
  v12 = PLLogSMC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [PLSMCAgent logPowerDeliveryKeys];
  }

  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __34__PLSMCAgent_logPowerDeliveryKeys__block_invoke;
  v30 = &unk_279A5D060;
  v21 = dictionary;
  v31 = v21;
  AnalyticsSendEventLazy();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  powerDeliveryResetKeys = [(PLSMCAgent *)self powerDeliveryResetKeys];
  v14 = [powerDeliveryResetKeys countByEnumeratingWithState:&v23 objects:v38 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(powerDeliveryResetKeys);
        }

        v18 = *(*(&v23 + 1) + 8 * j);
        if ([(PLSMCAgent *)self writeKeyNumeric:v18 withValue:1, v21])
        {
          v19 = PLLogSMC();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v37 = v18;
            _os_log_debug_impl(&dword_25EE51000, v19, OS_LOG_TYPE_DEBUG, "%@ key has been successfully reset", buf, 0xCu);
          }
        }
      }

      v15 = [powerDeliveryResetKeys countByEnumeratingWithState:&v23 objects:v38 count:16];
    }

    while (v15);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)logDRAMVendorKey
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Log DRAM Vendor key with value %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logColdBoot
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Log cold boot key with value in volts %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (id)metricMonitorInstantKeys
{
  if (metricMonitorInstantKeys_onceToken != -1)
  {
    [PLSMCAgent metricMonitorInstantKeys];
  }

  v3 = metricMonitorInstantKeys_metricMonitorKeys;

  return v3;
}

uint64_t __38__PLSMCAgent_metricMonitorInstantKeys__block_invoke()
{
  metricMonitorInstantKeys_metricMonitorKeys = [MEMORY[0x277CBEB98] setWithObjects:{@"B0AP", @"zSLi", @"zSLa", @"zSLc", @"zSPi", @"xRPE", @"CHAS", @"TB0T", @"TVRM", @"TVBM", @"TVBH", @"TVMx", @"TVBE", @"PDEP", @"PDLP", 0}];

  return MEMORY[0x2821F96F8]();
}

- (id)powerAccumulatedKeys
{
  if (powerAccumulatedKeys_onceToken != -1)
  {
    [PLSMCAgent powerAccumulatedKeys];
  }

  v3 = powerAccumulatedKeys_accumulatedKeys;

  return v3;
}

uint64_t __34__PLSMCAgent_powerAccumulatedKeys__block_invoke()
{
  powerAccumulatedKeys_accumulatedKeys = [MEMORY[0x277CBEB98] setWithObjects:{@"PSTR", @"PBat", @"VBat", @"PDLP", @"PDEP", @"PZCB", @"PZCU", @"PZD1", @"PGDP", @"PP0b", @"PP1b", @"PP2b", @"PP3b", @"PP4b", @"PP5b", @"PP6b", @"PP7b", @"PP8b", @"PP9b", @"PPab", @"PPbb", @"PPdb", @"VP0b", @"VP1b", @"VP2b", @"VP3b", @"VP4b", @"VP5b", @"VP6b", @"VP7b", @"VP8b", @"VP9b", @"VPab", @"VPbb", @"VPdb", @"PR4b", @"PR6b", 0}];

  return MEMORY[0x2821F96F8]();
}

- (id)thermalAggregationKeys
{
  if (thermalAggregationKeys_onceToken != -1)
  {
    [PLSMCAgent thermalAggregationKeys];
  }

  v3 = thermalAggregationKeys_thermalKeys;

  return v3;
}

uint64_t __36__PLSMCAgent_thermalAggregationKeys__block_invoke()
{
  thermalAggregationKeys_thermalKeys = [MEMORY[0x277CBEB58] setWithObjects:{@"B0AP", @"TB5B", @"TVBA", @"TVBB", @"TVBC", @"TVBF", @"TVBQ", @"TVBM", @"TVBR", @"TVFD", @"TVFL", @"TVFG", @"TVLN", @"TV0s", @"TV2s", @"TG0V", @"TH0T", @"SDTs", @"ftS0", @"voP0", @"mTPL", @"TVBN", @"TVRQ", @"TVRH", @"TVRR", @"TVBE", @"TVRM", @"TVMx", @"TAOP", @"TB50", @"TKFP", @"TW0P", @"TVFC", @"mlr5", @"BUIC", @"TNAP", @"TR0P", @"xCTA", @"SDTA", @"SDTC", @"TB0T", @"TCMb", @"TV1s", @"TV3s", @"TVBH", @"TTDa", @"TPMP", @"TCHP", @"TN0n", @"TV0A", @"TVFM", @"TG0B", @"zSLi", @"zSLa", @"zSLc", @"zSPi", @"TVBL", @"TAOC", @"TVB1", @"TVB2", @"TVB3"}];

  return MEMORY[0x2821F96F8]();
}

- (id)powerDeliveryKeys
{
  if (powerDeliveryKeys_onceToken != -1)
  {
    [PLSMCAgent powerDeliveryKeys];
  }

  v3 = powerDeliveryKeys_powerKeys;

  return v3;
}

uint64_t __31__PLSMCAgent_powerDeliveryKeys__block_invoke()
{
  powerDeliveryKeys_powerKeys = [MEMORY[0x277CBEB98] set];

  return MEMORY[0x2821F96F8]();
}

- (id)powerDeliveryResetKeys
{
  if (powerDeliveryResetKeys_onceToken != -1)
  {
    [PLSMCAgent powerDeliveryResetKeys];
  }

  v3 = powerDeliveryResetKeys_powerKeys;

  return v3;
}

uint64_t __36__PLSMCAgent_powerDeliveryResetKeys__block_invoke()
{
  powerDeliveryResetKeys_powerKeys = [MEMORY[0x277CBEB98] set];

  return MEMORY[0x2821F96F8]();
}

- (id)DRAMVendorKey
{
  if (DRAMVendorKey_onceToken != -1)
  {
    [PLSMCAgent DRAMVendorKey];
  }

  v3 = DRAMVendorKey_vendorKey;

  return v3;
}

void __27__PLSMCAgent_DRAMVendorKey__block_invoke()
{
  v0 = DRAMVendorKey_vendorKey;
  DRAMVendorKey_vendorKey = @"MDSV";
}

- (id)virtualTemperatureKeys
{
  if (virtualTemperatureKeys_onceToken != -1)
  {
    [PLSMCAgent virtualTemperatureKeys];
  }

  v3 = virtualTemperatureKeys_thermalKeys;

  return v3;
}

uint64_t __36__PLSMCAgent_virtualTemperatureKeys__block_invoke()
{
  virtualTemperatureKeys_thermalKeys = [MEMORY[0x277CBEB98] setWithObjects:{@"TVBA", @"TVBB", @"TVBC", @"TVBE", @"TVBF", @"TVBM", @"TVBN", @"TVBQ", @"TVBR", @"TVFC", @"TVFD", @"TVFG", @"TVFL", @"TVLN", @"TVRH", @"TVRM", @"TVMx", @"TVRQ", @"TVRR", @"TV0s", @"TV2s", @"TV4s", @"TV5s", 0}];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)anyVirtualTemperatureAboveThreshold
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  virtualTemperatureKeys = [(PLSMCAgent *)self virtualTemperatureKeys];
  v4 = [virtualTemperatureKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(virtualTemperatureKeys);
        }

        v8 = [(PLSMCAgent *)self readKey:*(*(&v14 + 1) + 8 * i)];
        v9 = v8;
        if (v8)
        {
          [v8 doubleValue];
          if (v10 > 35.0)
          {

            v11 = 1;
            goto LABEL_12;
          }
        }
      }

      v5 = [virtualTemperatureKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_12:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)virtualTemperatureMonitorCallback
{
  if ([(PLSMCAgent *)self anyVirtualTemperatureAboveThreshold])
  {

    [(PLSMCAgent *)self registerThermalTimer];
  }

  else
  {
    thermalLoggingTimer = [(PLSMCAgent *)self thermalLoggingTimer];

    if (thermalLoggingTimer)
    {
      thermalLoggingTimer2 = [(PLSMCAgent *)self thermalLoggingTimer];
      [thermalLoggingTimer2 invalidate];

      [(PLSMCAgent *)self setThermalLoggingTimer:0];
    }
  }
}

- (void)registerThermalTimer
{
  thermalLoggingTimer = [(PLSMCAgent *)self thermalLoggingTimer];

  if (!thermalLoggingTimer)
  {
    v4 = objc_alloc(MEMORY[0x277D3F250]);
    date = [MEMORY[0x277CBEAA8] date];
    workQueue = [(PLOperator *)self workQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __34__PLSMCAgent_registerThermalTimer__block_invoke;
    v9[3] = &unk_279A5D088;
    v9[4] = self;
    v7 = [v4 initWithFireDate:date withInterval:1 withTolerance:0 repeats:workQueue withUserInfo:v9 withQueue:20.0 withBlock:0.0];
    [(PLSMCAgent *)self setThermalLoggingTimer:v7];

    thermalLoggingTimer2 = [(PLSMCAgent *)self thermalLoggingTimer];
    [thermalLoggingTimer2 arm];
  }
}

- (void)stopThermalTimerAndlogFirstLowSample:(BOOL)sample
{
  sampleCopy = sample;
  [(PLSMCAgent *)self setLastThermalInstantEntry:0];
  if (sampleCopy)
  {
    [(PLSMCAgent *)self logThermalInstantAndAccumlatedKeys];
  }

  thermalLoggingTimer = [(PLSMCAgent *)self thermalLoggingTimer];

  if (thermalLoggingTimer)
  {
    thermalLoggingTimer2 = [(PLSMCAgent *)self thermalLoggingTimer];
    [thermalLoggingTimer2 invalidate];

    [(PLSMCAgent *)self setThermalLoggingTimer:0];
  }
}

+ (BOOL)supportsThermalSMC
{
  if (supportsThermalSMC_onceToken != -1)
  {
    +[PLSMCAgent supportsThermalSMC];
  }

  return supportsThermalSMC_ret;
}

uint64_t __32__PLSMCAgent_supportsThermalSMC__block_invoke()
{
  result = [MEMORY[0x277D3F208] kPLSoCClassOfDevice];
  supportsThermalSMC_ret = result > 1001014;
  return result;
}

+ (BOOL)supportsBasicSMC
{
  if (supportsBasicSMC_onceToken != -1)
  {
    +[PLSMCAgent supportsBasicSMC];
  }

  return supportsBasicSMC_ret;
}

uint64_t __30__PLSMCAgent_supportsBasicSMC__block_invoke()
{
  result = [MEMORY[0x277D3F208] kPLSoCClassOfDevice];
  supportsBasicSMC_ret = result > 1001009;
  return result;
}

+ (id)parsePMUEvents:(unint64_t)events
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([&unk_28714C9B0 count])
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = [&unk_28714C9B0 objectAtIndexedSubscript:v6];
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:(events >> v5)];
      [dictionary setObject:v8 forKeyedSubscript:v7];

      ++v6;
      v5 += 8;
    }

    while (v6 < [&unk_28714C9B0 count]);
  }

  return dictionary;
}

+ (void)reportPMUEventsToCA:(id)a
{
  v13 = *MEMORY[0x277D85DE8];
  aCopy = a;
  if (![aCopy unsignedLongLongValue])
  {
    if (reportPMUEventsToCA__pushedAZero)
    {
      goto LABEL_10;
    }

    if (reportPMUEventsToCA__onceToken != -1)
    {
      +[PLSMCAgent reportPMUEventsToCA:];
    }
  }

  unsignedLongLongValue = [aCopy unsignedLongLongValue];
  v5 = [PLSMCAgent parsePMUEvents:unsignedLongLongValue];
  if (v5)
  {
    v6 = PLLogSMC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v10 = unsignedLongLongValue;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_25EE51000, v6, OS_LOG_TYPE_INFO, "PMU events: %llu -> %@", buf, 0x16u);
    }

    v8 = v5;
    AnalyticsSendEventLazy();
  }

LABEL_10:
  v7 = *MEMORY[0x277D85DE8];
}

void __34__PLSMCAgent_reportPMUEventsToCA___block_invoke()
{
  v0 = PLLogCommon();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_25EE51000, v0, OS_LOG_TYPE_INFO, "PMU events: pushed empty event", v1, 2u);
  }

  reportPMUEventsToCA__pushedAZero = 1;
}

void __43__PLSMCAgent_logThermalAggregationKeysToCA__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "logging key to CA: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)readKey:(unsigned int *)a1 .cold.1(unsigned int *a1)
{
  OUTLINED_FUNCTION_8_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)readKey:(unsigned int *)a1 .cold.2(unsigned int *a1)
{
  OUTLINED_FUNCTION_8_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)readKey:(int *)a1 .cold.3(int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)readKey:.cold.4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_25EE51000, v0, v1, "%@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)writeKeyNumeric:withValue:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)writeKeyNumeric:withValue:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)writeKeyNumeric:withValue:.cold.5()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_25EE51000, v0, v1, "%@: %llu");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)writeKeyNumeric:withValue:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)writeKeyNumeric:withValue:.cold.7()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sampleKey:forKey:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sampleKey:forKey:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getChannelInfo:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)readKeyViaOSAccum:toOutput:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)readKeyViaOSAccum:toOutput:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Accumulated key: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end