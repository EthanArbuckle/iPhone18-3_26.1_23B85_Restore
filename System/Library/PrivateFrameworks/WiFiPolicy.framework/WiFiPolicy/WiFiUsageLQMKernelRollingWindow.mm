@interface WiFiUsageLQMKernelRollingWindow
+ (id)kernelLQMRollingWindow:(id)window withReferenceWindow:(id)referenceWindow andLqmFeatures:(id)features;
+ (unint64_t)parseKernelBlobInto:(id)into;
+ (void)addSample:(id)sample To:(id)to;
+ (void)advanceReadingPointerOf:(unint64_t)of;
+ (void)initialize;
@end

@implementation WiFiUsageLQMKernelRollingWindow

+ (void)initialize
{
  v2 = _lqmMetricsBlock;
  _lqmMetricsBlock = 0;

  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  v4 = _dateFormatter_0;
  _dateFormatter_0 = v3;

  v5 = _dateFormatter_0;

  [v5 setDateFormat:@"HH:mm:ss"];
}

+ (id)kernelLQMRollingWindow:(id)window withReferenceWindow:(id)referenceWindow andLqmFeatures:(id)features
{
  v80 = *MEMORY[0x277D85DE8];
  windowCopy = window;
  referenceWindowCopy = referenceWindow;
  referenceWindowCopy2 = referenceWindow;
  featuresCopy = features;
  v60 = MEMORY[0x277CBEAC0];
  v58 = objc_opt_new();
  v66 = objc_opt_new();
  v64 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v56 = objc_opt_new();
  v51 = objc_opt_new();
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v12 = objc_opt_new();
  v13 = objc_opt_new();
  v14 = [v60 dictionaryWithObjectsAndKeys:{v58, @"WiFiUsageLQMKernelSampleRxAmpdu", v66, @"WiFiUsageLQMKernelSampleInfraTXRX", v64, @"WiFiUsageLQMKernelSamplePerACTxStatsUcast", v7, @"WiFiUsageLQMKernelSamplePerACTxStatsMcast", v8, @"WiFiUsageLQMKernelSampleOfdmDesense", v56, @"WiFiUsageLQMKernelSampleBTCoex", v51, @"WiFiUsageLQMKernelSampleAWDLCoex", v9, @"WiFiUsageLQMKernelSampleRC1Coex", v10, @"WiFiUsageLQMKernelSampleRC2Coex", v11, @"WiFiUsageLQMKernelSampleCCA", v12, @"WiFiUsageLQMKernelSampleSecurityErrors", v13, @"WiFiUsageLQMKernelSampleScanSummary", 0}];

  v15 = featuresCopy;
  v16 = v14;

  objc_storeStrong(&_lqmMetricsBlock, window);
  if (!featuresCopy || !referenceWindowCopy2 || !_lqmMetricsBlock)
  {
    goto LABEL_31;
  }

  objc_storeStrong(&_referenceWindow, referenceWindowCopy);
  v17 = [self parseKernelBlobInto:v14];
  v59 = [MEMORY[0x277CCAB68] stringWithFormat:@"\n"];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  allKeys = [v14 allKeys];
  obj = [allKeys countByEnumeratingWithState:&v72 objects:v79 count:16];
  if (obj)
  {
    v57 = allKeys;
    v52 = v17;
    v19 = 0;
    v61 = *v73;
    do
    {
      for (i = 0; i != obj; i = i + 1)
      {
        if (*v73 != v61)
        {
          objc_enumerationMutation(v57);
        }

        v21 = *(*(&v72 + 1) + 8 * i);
        v22 = [v16 objectForKeyedSubscript:v21];
        v23 = [v22 count];

        if (v23)
        {
          v24 = _dateFormatter_0;
          v67 = [v16 objectForKeyedSubscript:v21];
          firstObject = [v67 firstObject];
          timestamp = [firstObject timestamp];
          v26 = [v24 stringFromDate:timestamp];
          v27 = _dateFormatter_0;
          v28 = [v16 objectForKeyedSubscript:v21];
          lastObject = [v28 lastObject];
          timestamp2 = [lastObject timestamp];
          v31 = [v27 stringFromDate:timestamp2];
          [v16 objectForKeyedSubscript:v21];
          v33 = v32 = v16;
          [v59 appendFormat:@" %@ : window %@ to %@ . samples: %lu\n", v21, v26, v31, objc_msgSend(v33, "count")];

          v16 = v32;
          v19 = 1;
        }
      }

      obj = [v57 countByEnumeratingWithState:&v72 objects:v79 count:16];
    }

    while (obj);

    v15 = featuresCopy;
    v17 = v52;
    if ((v19 & 1) == 0)
    {
      goto LABEL_17;
    }

    allKeys = [MEMORY[0x277CCACA8] stringWithFormat:@"%s - Parsing results:%@", "+[WiFiUsageLQMKernelRollingWindow kernelLQMRollingWindow:withReferenceWindow:andLqmFeatures:]", v59];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(allKeys, "UTF8String")];
      uTF8String = [v34 UTF8String];
      *buf = 136446210;
      v78 = uTF8String;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }
  }

LABEL_17:
  samples = [_referenceWindow samples];
  if (v17 >= [samples count])
  {
  }

  else
  {
    samples2 = [_referenceWindow samples];
    v38 = [samples2 count] - v17;

    if (v38 > 2)
    {
      goto LABEL_31;
    }
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  allValues = [v16 allValues];
  v40 = [allValues countByEnumeratingWithState:&v68 objects:v76 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v69;
    do
    {
      for (j = 0; j != v41; ++j)
      {
        if (*v69 != v42)
        {
          objc_enumerationMutation(allValues);
        }

        v44 = *(*(&v68 + 1) + 8 * j);
        if ([v44 count])
        {
          label = [_referenceWindow label];
          [WiFiUsageLQMWindowAnalysis computeFeatures:v15 For:v44 WithLogLabel:label];
        }
      }

      v41 = [allValues countByEnumeratingWithState:&v68 objects:v76 count:16];
    }

    while (v41);
  }

LABEL_31:
  v46 = _lqmMetricsBlock;
  _lqmMetricsBlock = 0;

  v47 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (void)addSample:(id)sample To:(id)to
{
  if (sample)
  {
    [to addObject:?];
  }
}

+ (void)advanceReadingPointerOf:(unint64_t)of
{
  _readingAt += of;
  if (_readingAt >= _endOfBuffer)
  {
    _readingAt = _buffer + _readingAt - _endOfBuffer;
  }
}

+ (unint64_t)parseKernelBlobInto:(id)into
{
  v77[22] = *MEMORY[0x277D85DE8];
  intoCopy = into;
  p_info = TBTileMO.info;
  _buffer = [_lqmMetricsBlock bytes];
  _ringheader = 0;
  v6 = TBTileMO.info;
  _readingAt = 0;
  v7 = TBTileMO.info;
  _endOfBuffer = 0;
  v76[0] = &unk_2848BA4C0;
  v76[1] = &unk_2848BA4D8;
  v77[0] = @"TAG_CTLQM_RX_AMPDU_STATS";
  v77[1] = @"TAG_CTLQM_INFRA_BAND_TX_RX_STATS";
  v76[2] = &unk_2848BA4F0;
  v76[3] = &unk_2848BA508;
  v77[2] = @"TAG_CTLQM_TX_DATA_PATH_PER_AC_STATS";
  v77[3] = @"TAG_CTLQM_SLOW_WIFI_LINK_RECOVERY_INFO";
  v76[4] = &unk_2848BA520;
  v76[5] = &unk_2848BA538;
  v77[4] = @"TAG_CTLQM_DPS_SYMPTOMS_INPUT";
  v77[5] = @"TAG_CTLQM_TX_DPS";
  v76[6] = &unk_2848BA550;
  v76[7] = &unk_2848BA568;
  v77[6] = @"TAG_CTLQM_IPS_TRIGGER_REASON";
  v77[7] = @"TAG_CTLQM_PHY_RX_DESENSE";
  v76[8] = &unk_2848BA580;
  v76[9] = &unk_2848BA598;
  v77[8] = @"TAG_CTLQM_WPS_INFO";
  v77[9] = @"TAG_CTLQM_IP_INFO";
  v76[10] = &unk_2848BA5B0;
  v76[11] = &unk_2848BA5C8;
  v77[10] = @"TAG_CTLQM_CHIP_INFO";
  v77[11] = @"TAG_CTLQM_BT";
  v76[12] = &unk_2848BA5E0;
  v76[13] = &unk_2848BA5F8;
  v77[12] = @"TAG_CTLQM_RC1";
  v77[13] = @"TAG_CTLQM_RC2";
  v76[14] = &unk_2848BA610;
  v76[15] = &unk_2848BA628;
  v77[14] = @"TAG_CTLQM_AWDL";
  v77[15] = @"TAG_CTLQM_SCAN";
  v76[16] = &unk_2848BA640;
  v76[17] = &unk_2848BA658;
  v77[16] = @"TAG_CTLQM_NOISE";
  v77[17] = @"TAG_CTLQM_RX_SECURITY";
  v76[18] = &unk_2848BA670;
  v76[19] = &unk_2848BA688;
  v77[18] = @"TAG_CTLQM_CCA";
  v77[19] = @"TAG_CTLQM_WEIGHT_AVG_LQM";
  v76[20] = &unk_2848BA6A0;
  v76[21] = &unk_2848BA6B8;
  v77[20] = @"TAG_CTLQM_INFRA_CHAN_INFO";
  v77[21] = @"TAG_CTLQM_RSSI_CHANGE_LQM_INFO";
  v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:22];
  v8 = _buffer;
  _ringheader = _buffer;
  v9 = *(_buffer + 40);
  if (v9 == 1)
  {
    v66 = intoCopy;
    _buffer += 56;
    _endOfBuffer = v8 + 56 + *(v8 + 44);
    _readingAt = v8 + 56 + *(v8 + 48);
    v68 = [MEMORY[0x277CBEAA8] now];
    v67 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v10 = TBTileMO.info;
    selfCopy = self;
    while (1)
    {
      v11 = v6[93];
      v12 = p_info[123];
      if (v11 >= (v12 + *(_ringheader + 52)) && (*(_ringheader + 48) < *(_ringheader + 52) || v11 < (v12 + *(_ringheader + 48))))
      {
        break;
      }

      [self advanceReadingPointerOf:24];
      v13 = v7[109];
      if (&v11->name > v13)
      {
        NSLog(&cfstr_SErrorWhilePar.isa, "+[WiFiUsageLQMKernelRollingWindow parseKernelBlobInto:]", p_info[123] + *(_ringheader + 48), p_info[123] + *(_ringheader + 52), v13, v6[93], &v11->name);
        break;
      }

      v14 = v6[93];
      if (v14 + LODWORD(v11->ivar_lyt) <= v13)
      {
        v21 = v6;
        v19 = [WiFiUsageLQMTransformations dateWithMachContinuousTime:*&v11->ivar_base_start WithRef:v68 asNS:v67];
        [(__objc2_class_ro *)v10[92] samples];
        v23 = v22 = v10;
        firstObject = [v23 firstObject];
        timestamp = [firstObject timestamp];
        if ([v19 compare:timestamp] == 1)
        {
          samples = [(__objc2_class_ro *)v22[92] samples];
          lastObject = [samples lastObject];
          timestamp2 = [lastObject timestamp];
          v29 = [v19 compare:timestamp2];

          if (v29 == -1)
          {
            v6 = v21;
            self = selfCopy;
            p_info = (TBTileMO + 32);
            v10 = (TBTileMO + 32);
            switch(v11->reserved)
            {
              case 0u:
                if (LODWORD(v11->ivar_lyt) == 64)
                {
                  v30 = [WiFiUsageLQMKernelSampleRxAmpdu sampleWithStruct:v21[93] WithReferenceDate:v68 AsNsec:v67];
                  v31 = v66;
                  v32 = @"WiFiUsageLQMKernelSampleRxAmpdu";
                  goto LABEL_40;
                }

                v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
                v37 = [v69 objectForKeyedSubscript:v30];
                v36 = v37;
                ivar_lyt_low = LODWORD(v11->ivar_lyt);
                v39 = 64;
                goto LABEL_52;
              case 1u:
                if (LODWORD(v11->ivar_lyt) == 140)
                {
                  v30 = [WiFiUsageLQMKernelSampleInfraTXRX sampleWithStruct:v21[93] WithReferenceDate:v68 AsNsec:v67];
                  v31 = v66;
                  v32 = @"WiFiUsageLQMKernelSampleInfraTXRX";
                  goto LABEL_40;
                }

                v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
                v37 = [v69 objectForKeyedSubscript:v30];
                v36 = v37;
                ivar_lyt_low = LODWORD(v11->ivar_lyt);
                v39 = 140;
                goto LABEL_52;
              case 2u:
                v33 = v21[93];
                if (*v33)
                {
                  NSLog(&cfstr_SUnknownVersio_0.isa, "+[WiFiUsageLQMKernelRollingWindow parseKernelBlobInto:]", *v33);
                  break;
                }

                v42 = LODWORD(v11->ivar_lyt);
                if (v42 >= 0xC)
                {
                  v44 = 0;
                  v43 = 0;
                  v45 = v33 + v42;
                  v46 = v33 + 3;
                  v47 = v33 + 1;
                  do
                  {
                    v48 = v47[1];
                    v49 = (v46 + v48);
                    if (v48 >= 8)
                    {
                      v50 = v46 + 2;
                      do
                      {
                        if (*v47 == 4)
                        {
                          v51 = [WiFiUsageLQMKernelSamplePerACTxStatsMcast sampleWithTimestamp:v19];
                          v52 = v43;
                          v43 = v51;
                        }

                        else
                        {
                          v51 = [WiFiUsageLQMKernelSamplePerACTxStatsUcast sampleWithTimestamp:v19];
                          v52 = v44;
                          v44 = v51;
                        }

                        [v51 populateTXStats:*(v50 - 2) With:*(v50 - 1) ForQueue:*v47];
                        v50 += 2;
                      }

                      while (v50 <= v49);
                    }

                    v46 = v49 + 2;
                    v47 = v49;
                  }

                  while ((v49 + 2) <= v45);
                  if (v44)
                  {
                    [v44 transformTXStats];
                    v53 = [v66 objectForKeyedSubscript:@"WiFiUsageLQMKernelSamplePerACTxStatsUcast"];
                    self = selfCopy;
                    [selfCopy addSample:v44 To:v53];
                    p_info = (TBTileMO + 32);
                    goto LABEL_68;
                  }

                  self = selfCopy;
                  p_info = (TBTileMO + 32);
                }

                else
                {
                  v43 = 0;
                }

                [v43 transformTXStats];
                v53 = [v66 objectForKeyedSubscript:@"WiFiUsageLQMKernelSamplePerACTxStatsMcast"];
                [self addSample:v43 To:v53];
                v44 = 0;
LABEL_68:

                v6 = v21;
                goto LABEL_13;
              case 3u:
              case 4u:
              case 5u:
              case 6u:
              case 8u:
              case 9u:
              case 0xAu:
              case 0x10u:
              case 0x13u:
              case 0x14u:
              case 0x15u:
                break;
              case 7u:
                if (LODWORD(v11->ivar_lyt) == 16)
                {
                  v30 = [WiFiUsageLQMKernelSampleOfdmDesense sampleWithStruct:v21[93] andTimestamp:v19];
                  v31 = v66;
                  v32 = @"WiFiUsageLQMKernelSampleOfdmDesense";
                  goto LABEL_40;
                }

                v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:7];
                v37 = [v69 objectForKeyedSubscript:v30];
                v36 = v37;
                ivar_lyt_low = LODWORD(v11->ivar_lyt);
                v39 = 16;
                goto LABEL_52;
              case 0xBu:
                if (LODWORD(v11->ivar_lyt) == 12)
                {
                  v30 = [WiFiUsageLQMKernelSampleBTCoex sampleWithStruct:v21[93] andTimestamp:v19];
                  v31 = v66;
                  v32 = @"WiFiUsageLQMKernelSampleBTCoex";
                  goto LABEL_40;
                }

                v40 = MEMORY[0x277CCABB0];
                v41 = 11;
                goto LABEL_51;
              case 0xCu:
                if (LODWORD(v11->ivar_lyt) == 12)
                {
                  v30 = [WiFiUsageLQMKernelSampleRC1Coex sampleWithStruct:v21[93] andTimestamp:v19];
                  v31 = v66;
                  v32 = @"WiFiUsageLQMKernelSampleRC1Coex";
                  goto LABEL_40;
                }

                v40 = MEMORY[0x277CCABB0];
                v41 = 12;
                goto LABEL_51;
              case 0xDu:
                if (LODWORD(v11->ivar_lyt) == 12)
                {
                  v30 = [WiFiUsageLQMKernelSampleRC2Coex sampleWithStruct:v21[93] andTimestamp:v19];
                  v31 = v66;
                  v32 = @"WiFiUsageLQMKernelSampleRC2Coex";
                  goto LABEL_40;
                }

                v40 = MEMORY[0x277CCABB0];
                v41 = 13;
                goto LABEL_51;
              case 0xEu:
                if (LODWORD(v11->ivar_lyt) == 12)
                {
                  v30 = [WiFiUsageLQMKernelSampleAWDLCoex sampleWithStruct:v21[93] andTimestamp:v19];
                  v31 = v66;
                  v32 = @"WiFiUsageLQMKernelSampleAWDLCoex";
                  goto LABEL_40;
                }

                v40 = MEMORY[0x277CCABB0];
                v41 = 14;
LABEL_51:
                v30 = [v40 numberWithUnsignedInt:v41];
                v37 = [v69 objectForKeyedSubscript:v30];
                v36 = v37;
                ivar_lyt_low = LODWORD(v11->ivar_lyt);
                v39 = 12;
                goto LABEL_52;
              case 0xFu:
                if (LODWORD(v11->ivar_lyt) == 24)
                {
                  v30 = [WiFiUsageLQMKernelSampleScanSummary sampleWithStruct:v21[93] andTimestamp:v19];
                  v31 = v66;
                  v32 = @"WiFiUsageLQMKernelSampleScanSummary";
                  goto LABEL_40;
                }

                v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:15];
                v37 = [v69 objectForKeyedSubscript:v30];
                v36 = v37;
                ivar_lyt_low = LODWORD(v11->ivar_lyt);
                v39 = 24;
                goto LABEL_52;
              case 0x11u:
                if (LODWORD(v11->ivar_lyt) == 20)
                {
                  v30 = [WiFiUsageLQMKernelSampleSecurityErrors sampleWithStruct:v21[93] andTimestamp:v19];
                  v31 = v66;
                  v32 = @"WiFiUsageLQMKernelSampleSecurityErrors";
                  goto LABEL_40;
                }

                v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:17];
                v37 = [v69 objectForKeyedSubscript:v30];
                v36 = v37;
                ivar_lyt_low = LODWORD(v11->ivar_lyt);
                v39 = 20;
                goto LABEL_52;
              case 0x12u:
                if (LODWORD(v11->ivar_lyt) == 28)
                {
                  v30 = [WiFiUsageLQMKernelSampleCCA sampleWithStruct:v21[93] andTimestamp:v19];
                  v31 = v66;
                  v32 = @"WiFiUsageLQMKernelSampleCCA";
LABEL_40:
                  v36 = [v31 objectForKeyedSubscript:v32];
                  [selfCopy addSample:v30 To:v36];
                }

                else
                {
                  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:18];
                  v37 = [v69 objectForKeyedSubscript:v30];
                  v36 = v37;
                  ivar_lyt_low = LODWORD(v11->ivar_lyt);
                  v39 = 28;
LABEL_52:
                  NSLog(&cfstr_SFailedToParse_14.isa, "+[WiFiUsageLQMKernelRollingWindow parseKernelBlobInto:]", v37, ivar_lyt_low, v39);
                }

                break;
              default:
                v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0x280D46000];
                v35 = [v69 objectForKeyedSubscript:v34];
                NSLog(&cfstr_SUnrecognizedH.isa, "+[WiFiUsageLQMKernelRollingWindow parseKernelBlobInto:]", 0x280D46000, v35);

                goto LABEL_12;
            }
          }

          else
          {
            v6 = v21;
            self = selfCopy;
LABEL_12:
            p_info = (TBTileMO + 32);
LABEL_13:
            v10 = (TBTileMO + 32);
          }
        }

        else
        {

          v6 = v21;
          v10 = v22;
        }
      }

      else
      {
        v15 = p_info[123];
        v16 = v15 + *(_ringheader + 48);
        v17 = v15 + *(_ringheader + 52);
        reserved = v11->reserved;
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:reserved];
        v20 = [v69 objectForKeyedSubscript:v19];
        v65 = reserved;
        v10 = (TBTileMO + 32);
        v63 = v16;
        v64 = v17;
        p_info = (TBTileMO + 32);
        self = selfCopy;
        NSLog(&cfstr_SErrorWhilePar_0.isa, "+[WiFiUsageLQMKernelRollingWindow parseKernelBlobInto:]", v63, v64, v13, v14, v65, v20, LODWORD(v11->ivar_lyt), v6[93] + LODWORD(v11->ivar_lyt));
      }

      [self advanceReadingPointerOf:LODWORD(v11->ivar_lyt)];
      [self advanceReadingPointerOf:HIDWORD(v11->ivar_lyt)];
      v7 = (TBTileMO + 32);
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    allValues = [v66 allValues];
    v56 = [allValues countByEnumeratingWithState:&v71 objects:v75 count:16];
    if (v56)
    {
      v57 = v56;
      v54 = 0;
      v58 = *v72;
      do
      {
        for (i = 0; i != v57; ++i)
        {
          if (*v72 != v58)
          {
            objc_enumerationMutation(allValues);
          }

          v60 = *(*(&v71 + 1) + 8 * i);
          if (v54 <= [v60 count])
          {
            v54 = [v60 count];
          }
        }

        v57 = [allValues countByEnumeratingWithState:&v71 objects:v75 count:16];
      }

      while (v57);
    }

    else
    {
      v54 = 0;
    }

    intoCopy = v66;
  }

  else
  {
    NSLog(&cfstr_SFailedToParse_13.isa, "+[WiFiUsageLQMKernelRollingWindow parseKernelBlobInto:]", v9, 1);
    v54 = 0;
  }

  v61 = *MEMORY[0x277D85DE8];
  return v54;
}

@end