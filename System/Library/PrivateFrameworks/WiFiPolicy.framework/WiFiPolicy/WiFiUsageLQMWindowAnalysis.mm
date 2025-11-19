@interface WiFiUsageLQMWindowAnalysis
+ (BOOL)isInCallAnalysisDue:(id)a3;
+ (id)config;
+ (unint64_t)canCreateAnalysisFor:(id)a3;
+ (void)computeFeatures:(id)a3 For:(id)a4 WithLogLabel:(id)a5;
+ (void)initialize;
+ (void)updateConfig;
- (BOOL)canSubmitToCA;
- (BOOL)getBeforeKernelWindowWithLikelyhood;
- (id)addDimensionsTo:(id)a3;
- (id)dumpAnalysis:(id)a3;
- (id)dumpDimensions:(id)a3;
- (id)fetchKernelLQMRollingWindowForInterface:(id)a3 into:(id)a4;
- (id)metricCallbackForMetric:(id)a3 AndField:(id)a4;
- (os_state_data_s)_generateState;
- (void)computeBins:(id)a3 WithSampleKind:(Class)a4;
- (void)computeFeaturesFor:(id)a3 WithLogLabel:(id)a4;
- (void)dealloc;
- (void)performAnalysis;
- (void)updateWithLQMSample:(id)a3;
- (void)updateWithSubsequentTrigger:(id)a3;
@end

@implementation WiFiUsageLQMWindowAnalysis

- (void)dealloc
{
  if (self->_osStateHandle)
  {
    os_state_remove_handler();
  }

  analysisTimer = self->_analysisTimer;
  if (analysisTimer)
  {
    dispatch_source_cancel(analysisTimer);
    v4 = self->_analysisTimer;
  }

  else
  {
    v4 = 0;
  }

  self->_analysisTimer = 0;

  v5.receiver = self;
  v5.super_class = WiFiUsageLQMWindowAnalysis;
  [(WiFiUsageLQMWindowAnalysis *)&v5 dealloc];
}

+ (BOOL)isInCallAnalysisDue:(id)a3
{
  if (_inCallAnalysisIntervalSecEnabled != 1)
  {
    return 0;
  }

  [a3 timeIntervalSinceNow];
  return *&_inCallAnalysisIntervalSec <= -v5;
}

+ (id)config
{
  if (_isKernelParsingEnabled == 1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"with likelyhood of fetching in-kernel LQM rolling window: %@", _fetchKernelWindowSamplingRates];
  }

  else
  {
    v2 = &stru_28487EF20;
  }

  if (_inCallAnalysisIntervalSecEnabled == 1)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:*&_inCallAnalysisIntervalSec];
    v5 = [WiFiUsagePrivacyFilter getHumanSecondsFromObject:v4];
    v6 = [v3 stringWithFormat:@"every %@", v5];
  }

  else
  {
    v6 = &stru_28487EF20;
  }

  v7 = @"NO";
  if (_isKernelParsingEnabled)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if (_inCallAnalysisIntervalSecEnabled)
  {
    v7 = @"YES";
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"metricPrefix set to '%@'  cdfMetricName set to '%@' ; sankeyMetricName set to '%@' ; maxConcurrentAnalysis set to %u\nLikelyhood of creating an analysis: %@\nLikelyhood of sending analysis to CA: %@\nKernel window parsing enabled: %@ %@\nInCall LQMAnalysis enabled: %@ %@", _metricPrefix, _cdfMetricName, _sankeyMetricName, _maxConcurrentAnalysis, _createAnalysisSamplingRates, _submitToCASamplingRates, v8, v2, v7, v6];;

  return v9;
}

+ (void)initialize
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_self();

  if (v3 == a1)
  {
    v4 = _metricPrefix;
    _metricPrefix = @"com.apple.wifi.lqmanalysis";

    v5 = _cdfMetricName;
    _cdfMetricName = @"featuresbyfield";

    v6 = _sankeyMetricName;
    _sankeyMetricName = @"allfeatures";

    v7 = objc_opt_new();
    v8 = _createAnalysisSamplingRates;
    _createAnalysisSamplingRates = v7;

    v9 = objc_opt_new();
    v10 = _submitToCASamplingRates;
    _submitToCASamplingRates = v9;

    v11 = objc_opt_new();
    v12 = _fetchKernelWindowSamplingRates;
    _fetchKernelWindowSamplingRates = v11;

    v13 = objc_alloc_init(MEMORY[0x277CCA968]);
    v14 = _dateFormatter_1;
    _dateFormatter_1 = v13;

    [_dateFormatter_1 setDateFormat:@"HH:mm:ss"];
    _isKernelParsingEnabled = 0;
    _maxConcurrentAnalysis = 6;
    _inCallAnalysisIntervalSecEnabled = 0;
    v15 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_createAnalysisSamplingRates setObject:v15 forKeyedSubscript:@"Join"];

    v16 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_createAnalysisSamplingRates setObject:v16 forKeyedSubscript:@"LinkDown"];

    v17 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_createAnalysisSamplingRates setObject:v17 forKeyedSubscript:@"Roaming"];

    v18 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_createAnalysisSamplingRates setObject:v18 forKeyedSubscript:@"InCall"];

    v19 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_createAnalysisSamplingRates setObject:v19 forKeyedSubscript:@"DataTriggered"];

    v20 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA7A8];
    [_createAnalysisSamplingRates setObject:v20 forKeyedSubscript:@"NetworkQuality"];

    v21 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_createAnalysisSamplingRates setObject:v21 forKeyedSubscript:@"LinkTest"];

    v22 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_createAnalysisSamplingRates setObject:v22 forKeyedSubscript:@"SlowWiFiAP"];

    v23 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_createAnalysisSamplingRates setObject:v23 forKeyedSubscript:@"SlowWiFiDUT"];

    v24 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_createAnalysisSamplingRates setObject:v24 forKeyedSubscript:@"DatapathStall"];

    v25 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_createAnalysisSamplingRates setObject:v25 forKeyedSubscript:@"LowRssiDns"];

    v26 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_createAnalysisSamplingRates setObject:v26 forKeyedSubscript:@"LowRssiArp"];

    v27 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_createAnalysisSamplingRates setObject:v27 forKeyedSubscript:@"LowRssiDataStall"];

    v28 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_createAnalysisSamplingRates setObject:v28 forKeyedSubscript:@"ArpFailure"];

    v29 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_createAnalysisSamplingRates setObject:v29 forKeyedSubscript:@"SlowWiFiDnsFailure"];

    v30 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_submitToCASamplingRates setObject:v30 forKeyedSubscript:@"Join"];

    v31 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_submitToCASamplingRates setObject:v31 forKeyedSubscript:@"LinkDown"];

    v32 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_submitToCASamplingRates setObject:v32 forKeyedSubscript:@"Roaming"];

    v33 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_submitToCASamplingRates setObject:v33 forKeyedSubscript:@"InCall"];

    v34 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_submitToCASamplingRates setObject:v34 forKeyedSubscript:@"DataTriggered"];

    v35 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA7A8];
    [_submitToCASamplingRates setObject:v35 forKeyedSubscript:@"NetworkQuality"];

    v36 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_submitToCASamplingRates setObject:v36 forKeyedSubscript:@"LinkTest"];

    v37 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_submitToCASamplingRates setObject:v37 forKeyedSubscript:@"SlowWiFiAP"];

    v38 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_submitToCASamplingRates setObject:v38 forKeyedSubscript:@"SlowWiFiDUT"];

    v39 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_submitToCASamplingRates setObject:v39 forKeyedSubscript:@"DatapathStall"];

    v40 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_submitToCASamplingRates setObject:v40 forKeyedSubscript:@"LowRssiDns"];

    v41 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_submitToCASamplingRates setObject:v41 forKeyedSubscript:@"LowRssiArp"];

    v42 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_submitToCASamplingRates setObject:v42 forKeyedSubscript:@"LowRssiDataStall"];

    v43 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_submitToCASamplingRates setObject:v43 forKeyedSubscript:@"ArpFailure"];

    v44 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_submitToCASamplingRates setObject:v44 forKeyedSubscript:@"SlowWiFiDnsFailure"];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v45 = [a1 config];
      *buf = 136315394;
      v48 = "+[WiFiUsageLQMWindowAnalysis initialize]";
      v49 = 2112;
      v50 = v45;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: %@", buf, 0x16u);
    }
  }

  v46 = *MEMORY[0x277D85DE8];
}

+ (void)updateConfig
{
  v70 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  if ([v3 isEqual:objc_opt_class()])
  {
    v4 = [WiFiUsageLQMConfiguration getConfigForKey:@"LQMWindowAnalysis"];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [v4 objectForKey:@"MetricPrefix"];
        if (v5)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ([_metricPrefix isEqualToString:v5] & 1) == 0)
          {
            objc_storeStrong(&_metricPrefix, v5);
          }
        }

        v6 = [v4 objectForKey:@"CDFMetricName"];

        if (v6)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ([_cdfMetricName isEqualToString:v6] & 1) == 0)
          {
            objc_storeStrong(&_cdfMetricName, v6);
          }
        }

        v7 = [v4 objectForKey:@"SanKeyMetricName"];

        if (v7)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ([_sankeyMetricName isEqualToString:v7] & 1) == 0)
          {
            objc_storeStrong(&_sankeyMetricName, v7);
          }
        }

        v8 = [v4 objectForKey:@"MaxConcurrentAnalysis"];

        if (v8)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            _maxConcurrentAnalysis = [v8 unsignedIntValue];
          }
        }

        v9 = [v4 objectForKey:@"AnalysisCreationSampling"];

        v51 = v4;
        v52 = a1;
        if (v9)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v48 = v9;
            v10 = v9;
            v61 = 0u;
            v62 = 0u;
            v63 = 0u;
            v64 = 0u;
            v11 = [v10 allKeys];
            v12 = [v11 countByEnumeratingWithState:&v61 objects:v69 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v62;
              do
              {
                for (i = 0; i != v13; ++i)
                {
                  if (*v62 != v14)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v16 = *(*(&v61 + 1) + 8 * i);
                  v17 = [v10 objectForKeyedSubscript:v16];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v18 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:v17];
                      [_createAnalysisSamplingRates setObject:v18 forKeyedSubscript:v16];
                    }
                  }
                }

                v13 = [v11 countByEnumeratingWithState:&v61 objects:v69 count:16];
              }

              while (v13);
            }

            v4 = v51;
            a1 = v52;
            v9 = v48;
          }
        }

        v19 = [v4 objectForKey:@"EventSubmissionSampling"];

        if (v19)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v49 = v19;
            v20 = v19;
            v57 = 0u;
            v58 = 0u;
            v59 = 0u;
            v60 = 0u;
            v21 = [v20 allKeys];
            v22 = [v21 countByEnumeratingWithState:&v57 objects:v68 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v58;
              do
              {
                for (j = 0; j != v23; ++j)
                {
                  if (*v58 != v24)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v26 = *(*(&v57 + 1) + 8 * j);
                  v27 = [v20 objectForKeyedSubscript:v26];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v28 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:v27];
                      [_submitToCASamplingRates setObject:v28 forKeyedSubscript:v26];
                    }
                  }
                }

                v23 = [v21 countByEnumeratingWithState:&v57 objects:v68 count:16];
              }

              while (v23);
            }

            v4 = v51;
            a1 = v52;
            v19 = v49;
          }
        }

        v29 = [v4 objectForKey:@"KernelWindowParsingEnabled"];

        if (v29)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            _isKernelParsingEnabled = [v29 BOOLValue];
          }
        }

        v30 = [v4 objectForKey:@"KernelWindowSamplingRatePercentages"];

        if (v30)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v50 = v30;
            v31 = v30;
            v53 = 0u;
            v54 = 0u;
            v55 = 0u;
            v56 = 0u;
            v32 = [v31 allKeys];
            v33 = [v32 countByEnumeratingWithState:&v53 objects:v67 count:16];
            if (v33)
            {
              v34 = v33;
              v35 = *v54;
              do
              {
                for (k = 0; k != v34; ++k)
                {
                  if (*v54 != v35)
                  {
                    objc_enumerationMutation(v32);
                  }

                  v37 = *(*(&v53 + 1) + 8 * k);
                  v38 = [v31 objectForKeyedSubscript:v37];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v39 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:v38];
                      [_fetchKernelWindowSamplingRates setObject:v39 forKeyedSubscript:v37];
                    }
                  }
                }

                v34 = [v32 countByEnumeratingWithState:&v53 objects:v67 count:16];
              }

              while (v34);
            }

            v4 = v51;
            a1 = v52;
            v30 = v50;
          }
        }

        v40 = [v4 objectForKey:@"InCallAnalysisIntervalSec"];

        if (v40)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v40 doubleValue];
            _inCallAnalysisIntervalSec = v41;
            _inCallAnalysisIntervalSecEnabled = 1;
          }
        }
      }
    }
  }

  v42 = MEMORY[0x277CCACA8];
  v43 = [a1 config];
  v44 = [v42 stringWithFormat:@"%s: %@", "+[WiFiUsageLQMWindowAnalysis updateConfig]", v43];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v44, "UTF8String")];
    v46 = [v45 UTF8String];
    *buf = 136446210;
    v66 = v46;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v47 = *MEMORY[0x277D85DE8];
}

void __94__WiFiUsageLQMWindowAnalysis_initWithRollingWindow_andReason_andContext_andTimestamp_onQueue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isAnalysisTodo])
  {
    [WeakRetained performAnalysis];
  }
}

uint64_t __94__WiFiUsageLQMWindowAnalysis_initWithRollingWindow_andReason_andContext_andTimestamp_onQueue___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _generateState];

  return v2;
}

- (void)updateWithLQMSample:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger samples];
    if (v5)
    {
      v6 = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger samples];
      if ([v6 count])
      {
        v7 = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger samples];
        v8 = [v7 firstObject];
        v9 = [v8 networkDetails];
        v10 = [v9 connectedBss];
        v11 = [v10 bssid];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = [v4 networkDetails];
    v13 = [v12 connectedBss];
    v14 = [v13 bssid];

    if (v11 && ([v11 isEqualToString:v14] & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136316418;
        v17 = "[WiFiUsageLQMWindowAnalysis updateWithLQMSample:]";
        v18 = 2112;
        v19 = self;
        v20 = 2160;
        v21 = 1752392040;
        v22 = 2112;
        v23 = v11;
        v24 = 2160;
        v25 = 1752392040;
        v26 = 2112;
        v27 = v14;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: performing LQM window analysis for reason %@ (ending this analysis early because the BSSID has changed (%{mask.hash}@ -> %{mask.hash}@)", &v16, 0x3Eu);
      }

      [(WiFiUsageLQMWindowAnalysis *)self performAnalysis];
    }

    else
    {
      [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger addSample:v4];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)updateWithSubsequentTrigger:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8 = v4;
    v4 = [(NSMutableArray *)self->_subsequentTriggers addObject:v4];
    v5 = v8;
    if (!self->_firstSubsequentLinkDownReason)
    {
      v6 = [v8 trigger];

      v5 = v8;
      if (v6 == @"LinkDown")
      {
        v7 = [v8 reason];
        [(WiFiUsageLQMWindowAnalysis *)self setFirstSubsequentLinkDownReason:v7];

        v5 = v8;
      }
    }
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)computeFeaturesFor:(id)a3 WithLogLabel:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  lqmWindowsFeatures = self->_lqmWindowsFeatures;
  v10 = [v7 samples];

  [v8 computeFeatures:lqmWindowsFeatures For:v10 WithLogLabel:v6];
}

+ (void)computeFeatures:(id)a3 For:(id)a4 WithLogLabel:(id)a5
{
  v59 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v37 = a4;
  v38 = a5;
  v36 = [v37 firstObject];
  v8 = objc_opt_class();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = [v8 allLQMProperties];
  v41 = [obj countByEnumeratingWithState:&v44 objects:v58 count:16];
  if (v41)
  {
    v9 = &stru_28487EF20;
    v40 = *v45;
    v10 = 0x277CCA000uLL;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v45 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v44 + 1) + 8 * i);
        v13 = [v8 isPerSecond:v12];
        v14 = [v8 featureFromFieldName:v12];
        v15 = @"PerSecond";
        if (!v13)
        {
          v15 = v9;
        }

        v16 = [*(v10 + 3240) stringWithFormat:@"%@_%@%@", v14, v12, v15, v36];
        v43 = v16;
        if (v14)
        {
          v17 = v16;
          if ([v14 isEqualToString:@"mode"])
          {
            v18 = @"%@ValueForField:ScaledByDuration:OnSamples:";
          }

          else
          {
            v18 = @"%@IntegerValueForField:ScaledByDuration:OnSamples:";
          }

          v19 = [*(v10 + 3240) stringWithFormat:v18, v14];
          aSelector = NSSelectorFromString(v19);

          v20 = [v7 objectForKeyedSubscript:v17];
          if (!v20)
          {
            goto LABEL_14;
          }

          v21 = v20;
          [v7 objectForKeyedSubscript:v43];
          v22 = v9;
          v23 = v8;
          v25 = v24 = v7;
          v26 = [v25 objectForKeyedSubscript:v38];

          v7 = v24;
          v8 = v23;
          v9 = v22;

          if (!v26)
          {
LABEL_14:
            if (objc_opt_respondsToSelector())
            {
              v27 = [WiFiUsageLQMRollingWindow methodForSelector:aSelector];
              v28 = objc_opt_class();
              v29 = v27(v28, aSelector, v12, v13, v37);
              if (v29)
              {
                v30 = v29;
                v31 = [v7 valueForKey:v43];

                if (!v31)
                {
                  v32 = objc_opt_new();
                  [v7 setObject:v32 forKeyedSubscript:v43];
                }

                v33 = [v7 objectForKeyedSubscript:v43];
                [v33 setObject:v30 forKeyedSubscript:v38];
              }
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v34 = NSStringFromSelector(aSelector);
              *buf = 136316162;
              v49 = "+[WiFiUsageLQMWindowAnalysis computeFeatures:For:WithLogLabel:]";
              v50 = 2112;
              v51 = v34;
              v52 = 2112;
              v53 = v14;
              v54 = 2112;
              v55 = v12;
              v56 = 2112;
              v57 = v8;
              _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Undefined selector %@ for feature type %@ for %@ on sample %@", buf, 0x34u);
            }
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v49 = "+[WiFiUsageLQMWindowAnalysis computeFeatures:For:WithLogLabel:]";
          v50 = 2112;
          v51 = 0;
          v52 = 2112;
          v53 = v12;
          v54 = 2112;
          v55 = v8;
          _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Undefined feature type %@ for %@ on sample %@", buf, 0x2Au);
        }

        v10 = 0x277CCA000;
      }

      v41 = [obj countByEnumeratingWithState:&v44 objects:v58 count:16];
    }

    while (v41);
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)computeBins:(id)a3 WithSampleKind:(Class)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [v4 allKeys];
  v5 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v38;
    *&v6 = 136315394;
    v24 = v6;
    v25 = *v38;
    do
    {
      v9 = 0;
      v26 = v7;
      do
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v37 + 1) + 8 * v9);
        v11 = [v10 componentsSeparatedByString:{@"_", v24}];
        if ([v11 count] > 1)
        {
          v28 = v11;
          v29 = v9;
          v32 = [v11 objectAtIndex:1];
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v12 = [v4 objectForKeyedSubscript:v10];
          v13 = [v12 allKeys];

          v30 = v13;
          v14 = [v13 countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v34;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v34 != v16)
                {
                  objc_enumerationMutation(v30);
                }

                v18 = *(*(&v33 + 1) + 8 * i);
                v19 = [v4 objectForKeyedSubscript:v10];
                v20 = [v19 objectForKeyedSubscript:v18];
                v21 = -[objc_class binLabelfromFieldName:value:](a4, "binLabelfromFieldName:value:", v32, [v20 integerValue]);
                v22 = [v4 objectForKeyedSubscript:v10];
                [v22 setObject:v21 forKeyedSubscript:v18];
              }

              v15 = [v30 countByEnumeratingWithState:&v33 objects:v41 count:16];
            }

            while (v15);
          }

          v8 = v25;
          v7 = v26;
          v11 = v28;
          v9 = v29;
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = v24;
          v43 = "[WiFiUsageLQMWindowAnalysis computeBins:WithSampleKind:]";
          v44 = 2112;
          v45 = v10;
          _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - FeatureFieldName:%@ Unable to extract binFieldName", buf, 0x16u);
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v7);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)performAnalysis
{
  v79 = *MEMORY[0x277D85DE8];
  v3 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger samples];
  if (v3)
  {
    v4 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger samples];
    v5 = [v4 firstObject];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger samples];
  if (v6)
  {
    v7 = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger samples];
    v8 = [v7 lastObject];
  }

  else
  {
    v8 = 0;
  }

  if (!v5)
  {
    goto LABEL_32;
  }

  v56 = v8;
  if ([(NSMutableDictionary *)self->_lqmWindowsFeatures count]&& !+[WiFiUsageLQMKernelRollingWindow isOngoing])
  {
    v9 = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger interfaceName];

    v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v10)
      {
        *buf = 136315394;
        v58 = "[WiFiUsageLQMWindowAnalysis performAnalysis]";
        v59 = 2112;
        v60 = self;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Fetching after kernel rolling window for analysis: %@", buf, 0x16u);
      }

      v11 = objc_opt_new();
      v12 = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger interfaceName];
      v13 = [(WiFiUsageLQMWindowAnalysis *)self fetchKernelLQMRollingWindowForInterface:v12 into:v11];

      if (v13)
      {
        v14 = [WiFiUsageLQMKernelRollingWindow kernelLQMRollingWindow:v13 withReferenceWindow:self->_windowAfterTrigger andLqmFeatures:self->_lqmWindowsFeatures];
        lqmWindowsFeatures = self->_lqmWindowsFeatures;
        self->_lqmWindowsFeatures = v14;
      }

      goto LABEL_18;
    }

    if (v10)
    {
      v11 = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger interfaceName];
      *buf = 136315394;
      v58 = "[WiFiUsageLQMWindowAnalysis performAnalysis]";
      v59 = 2112;
      v60 = v11;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Cannot fetch the kernel rolling window (invalid interface name on windowAfterTrigger: %@)", buf, 0x16u);
LABEL_18:
    }
  }

  [(WiFiUsageLQMWindowAnalysis *)self computeFeaturesFor:self->_windowBeforeTrigger WithLogLabel:@"before"];
  [(WiFiUsageLQMWindowAnalysis *)self computeFeaturesFor:self->_windowAfterTrigger WithLogLabel:@"after"];
  v16 = objc_opt_new();
  dimensions = self->dimensions;
  self->dimensions = v16;

  v18 = [(WiFiUsageLQMWindowAnalysis *)self addDimensionsTo:self->dimensions];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v19 = _dateFormatter_1;
    v50 = [v5 timestamp];
    v55 = [v19 stringFromDate:?];
    v20 = _dateFormatter_1;
    v49 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger samples];
    v48 = [v49 lastObject];
    v47 = [v48 timestamp];
    v54 = [v20 stringFromDate:?];
    v21 = _dateFormatter_1;
    v46 = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger samples];
    v45 = [v46 firstObject];
    v22 = [v45 timestamp];
    v53 = [v21 stringFromDate:v22];
    v23 = _dateFormatter_1;
    v24 = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger samples];
    v25 = [v24 lastObject];
    v26 = [v25 timestamp];
    v52 = [v23 stringFromDate:v26];
    v27 = [v5 networkDetails];
    v51 = v5;
    if (v56)
    {
      v28 = [v56 networkDetails];
    }

    else
    {
      v28 = 0;
    }

    v29 = [(WiFiUsageLQMWindowAnalysis *)self dumpDimensions:self->dimensions];
    v30 = [(WiFiUsageLQMWindowAnalysis *)self dumpAnalysis:self->_lqmWindowsFeatures];
    *buf = 138414851;
    v58 = self;
    v59 = 2112;
    v60 = @"before";
    v61 = 2112;
    v62 = v55;
    v63 = 2112;
    v64 = v54;
    v65 = 2112;
    v66 = @"after";
    v67 = 2112;
    v68 = v53;
    v69 = 2112;
    v70 = v52;
    v71 = 2113;
    v72 = v27;
    v73 = 2113;
    v74 = v28;
    v75 = 2112;
    v76 = v29;
    v77 = 2112;
    v78 = v30;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LQM_RW - LQM window analysis for %@ (%@: %@ - %@ ; %@: %@ - %@)\n Network at trigger        : %{private}@\n Network at end of analysis: %{private}@\n Context:\n%@\n Features: %@", buf, 0x70u);
    if (v56)
    {
    }

    v5 = v51;
  }

  [(WiFiUsageLQMWindowAnalysis *)self computeBins:self->_lqmWindowsFeatures WithSampleKind:objc_opt_class()];
  v31 = objc_alloc(MEMORY[0x277CBEAC0]);
  v32 = 0x277CBE000uLL;
  v33 = MEMORY[0x277CBEB18];
  v34 = [(NSMutableDictionary *)self->_lqmWindowsFeatures allKeys];
  v35 = [v33 arrayWithArray:v34];
  metricNameCDF = self->_metricNameCDF;
  v37 = [(NSMutableDictionary *)self->_lqmWindowsFeatures allKeys];
  v38 = [v37 count];
  v39 = MEMORY[0x277CBEB18];
  if (v38)
  {
    v32 = objc_opt_new();
    v40 = [v39 arrayWithObject:v32];
  }

  else
  {
    v40 = objc_opt_new();
  }

  v41 = [v31 initWithObjectsAndKeys:{v35, metricNameCDF, v40, self->_metricNameSankey, 0}];
  summary = self->_summary;
  self->_summary = v41;

  if (v38)
  {

    v40 = v32;
  }

  v8 = v56;
LABEL_32:
  if (!self->_isDone)
  {
    completionHandler = self->_completionHandler;
    if (completionHandler)
    {
      self->_isDone = 1;
      completionHandler[2](completionHandler, self);
    }
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (os_state_data_s)_generateState
{
  v71 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v64 = "[WiFiUsageLQMWindowAnalysis _generateState]";
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: BEGIN", buf, 0xCu);
  }

  v3 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger samples];
  if (v3)
  {
    v4 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger samples];
    v5 = [v4 firstObject];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger samples];
  if (v6)
  {
    v7 = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger samples];
    v8 = [v7 lastObject];
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x277CBEB38] dictionary];
  v10 = [MEMORY[0x277CBEB38] dictionary];
  v11 = v10;
  if (!(v5 | v8))
  {
    v25 = 0;
LABEL_23:
    v43 = 0;
    v44 = 0;
    goto LABEL_24;
  }

  v62 = v10;
  v59 = v9;
  v12 = [MEMORY[0x277CBEB18] array];
  v53 = MEMORY[0x277CCACA8];
  v54 = v12;
  v13 = _dateFormatter_1;
  v58 = [v5 timestamp];
  v52 = [v13 stringFromDate:v58];
  v14 = _dateFormatter_1;
  v57 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger samples];
  v56 = [v57 lastObject];
  v55 = [v56 timestamp];
  [v14 stringFromDate:v55];
  v15 = v61 = v5;
  v16 = _dateFormatter_1;
  v17 = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger samples];
  v18 = [v17 firstObject];
  v19 = [v18 timestamp];
  v20 = [v16 stringFromDate:v19];
  v21 = _dateFormatter_1;
  v60 = v8;
  v22 = [v8 timestamp];
  v23 = [v21 stringFromDate:v22];
  v24 = [v53 stringWithFormat:@"LQM window analysis for %@ (%@: %@ - %@  %@: %@ - %@)\n", self, @"before", v52, v15, @"after", v20, v23];;
  v25 = v54;
  [v54 addObject:v24];

  v5 = v61;
  if (v61)
  {
    v26 = MEMORY[0x277CCACA8];
    v27 = [v61 networkDetails];
    v28 = [v26 stringWithFormat:@"Network at trigger: %@", v27];
    [v54 addObject:v28];
  }

  v9 = v59;
  v8 = v60;
  if (v60)
  {
    v29 = MEMORY[0x277CCACA8];
    v30 = [v60 networkDetails];
    v31 = [v29 stringWithFormat:@"Network at end of analysis: %@", v30];
    [v54 addObject:v31];
  }

  if (v59)
  {
    v32 = [(WiFiUsageLQMWindowAnalysis *)self addDimensionsTo:v59];
    v33 = MEMORY[0x277CCACA8];
    v34 = [(WiFiUsageLQMWindowAnalysis *)self dumpDimensions:v59];
    v35 = [v33 stringWithFormat:@"Context: %@", v34];
    [v54 addObject:v35];
  }

  v11 = v62;
  if (v62)
  {
    v36 = objc_opt_class();
    v37 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger samples];
    [v36 computeFeatures:v62 For:v37 WithLogLabel:@"before"];

    v38 = objc_opt_class();
    v39 = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger samples];
    [v38 computeFeatures:v62 For:v39 WithLogLabel:@"after"];

    v40 = MEMORY[0x277CCACA8];
    v41 = [(WiFiUsageLQMWindowAnalysis *)self dumpAnalysis:v62];
    v42 = [v40 stringWithFormat:@"Features: %@", v41];
    [v54 addObject:v42];

    v11 = v62;
  }

  if (!v54)
  {
    goto LABEL_23;
  }

  v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s %@", "-[WiFiUsageLQMWindowAnalysis _generateState]", self->_reason];
  v44 = v54;
  v45 = [MEMORY[0x277CCAC58] dataWithPropertyList:v54 format:100 options:0 error:0];
  v25 = v45;
  if (!v45)
  {
LABEL_24:
    v48 = 0;
    v46 = 0;
    goto LABEL_25;
  }

  v46 = [v45 length];
  v47 = malloc_type_calloc(1uLL, v46 + 200, 0x1000040BEF03554uLL);
  v48 = v47;
  if (v47)
  {
    v47->var0 = 1;
    v47->var1.var1 = v46;
    [v43 UTF8String];
    __strlcpy_chk();
    memcpy(v48->var4, [v25 bytes], v46);
  }

LABEL_25:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v49 = "success";
    *buf = 136315906;
    v64 = "[WiFiUsageLQMWindowAnalysis _generateState]";
    v65 = 2080;
    if (!v48)
    {
      v49 = "failed";
    }

    v66 = v49;
    v67 = 2048;
    v68 = v46;
    v69 = 1024;
    v70 = 0x8000;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: END (%s), bytes: %zu (limit: %d)", buf, 0x26u);
  }

  v50 = *MEMORY[0x277D85DE8];
  return v48;
}

+ (unint64_t)canCreateAnalysisFor:(id)a3
{
  v3 = a3;
  if ([_createAnalysisSamplingRates count])
  {
    v4 = [_createAnalysisSamplingRates objectForKeyedSubscript:v3];
    LODWORD(v5) = arc4random_uniform([v4 samplingBase]);

    v6 = [_createAnalysisSamplingRates objectForKeyedSubscript:v3];
    if (v6)
    {
      v7 = [_createAnalysisSamplingRates objectForKeyedSubscript:v3];
      if (v5 >= [v7 samplingRate])
      {
        v5 = 0;
      }

      else
      {
        v5 = v5;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)canSubmitToCA
{
  diceRoll = self->_diceRoll;
  if (![_submitToCASamplingRates count])
  {
    return 1;
  }

  v4 = [_createAnalysisSamplingRates objectForKeyedSubscript:self->_reason];
  v5 = [v4 samplingBase];
  v6 = [_submitToCASamplingRates objectForKeyedSubscript:self->_reason];
  v7 = [v6 samplingBase];

  if (v5 != v7)
  {
    v8 = [_submitToCASamplingRates objectForKeyedSubscript:self->_reason];
    diceRoll = arc4random_uniform([v8 samplingBase]);
  }

  v9 = [_submitToCASamplingRates objectForKeyedSubscript:self->_reason];
  if (v9)
  {
    v10 = [_submitToCASamplingRates objectForKeyedSubscript:self->_reason];
    v11 = diceRoll < [v10 samplingRate];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)metricCallbackForMetric:(id)a3 AndField:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  if ([v6 hasPrefix:self->_metricNameSankey])
  {
    v28 = v7;
    v29 = v6;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = self->_lqmWindowsFeatures;
    v9 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v31 = *v33;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v33 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v32 + 1) + 8 * i);
          v13 = [(NSMutableDictionary *)self->_lqmWindowsFeatures objectForKeyedSubscript:v12];
          v14 = [v13 objectForKeyedSubscript:@"before"];
          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v12, @"before"];
          [v8 setObject:v14 forKeyedSubscript:v15];

          v16 = [(NSMutableDictionary *)self->_lqmWindowsFeatures objectForKeyedSubscript:v12];
          v17 = [v16 objectForKeyedSubscript:@"after"];
          v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v12, @"after"];
          [v8 setObject:v17 forKeyedSubscript:v18];
        }

        v10 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v10);
    }

    v7 = v28;
    v6 = v29;
  }

  else
  {
    v19 = [v6 hasPrefix:self->_metricNameCDF];
    if (v7 && v19)
    {
      [v8 setObject:v7 forKeyedSubscript:@"fieldName"];
      v20 = [(NSMutableDictionary *)self->_lqmWindowsFeatures objectForKeyedSubscript:v7];
      v21 = [v20 objectForKeyedSubscript:@"before"];
      [v8 setObject:v21 forKeyedSubscript:@"before"];

      v22 = [(NSMutableDictionary *)self->_lqmWindowsFeatures objectForKeyedSubscript:v7];
      v23 = [v22 objectForKeyedSubscript:@"after"];
      [v8 setObject:v23 forKeyedSubscript:@"after"];
    }
  }

  v24 = [v8 allKeys];
  v25 = [v24 count];

  if (v25)
  {
    [v8 addEntriesFromDictionary:self->dimensions];
  }

  v26 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)addDimensionsTo:(id)a3
{
  v160 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 setObject:self->_reason forKeyedSubscript:@"trigger"];
  v5 = MEMORY[0x277CCACA8];
  [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger duration];
  v7 = [v5 stringWithFormat:@"%lu", v6];
  [v4 setObject:v7 forKeyedSubscript:@"duration"];

  [v4 setObject:self->_fgApp forKeyedSubscript:@"fgApp"];
  v8 = MEMORY[0x277CCACA8];
  v9 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger capabilities];
  v10 = [v8 stringWithFormat:@"%lu", objc_msgSend(v9, "maxInterfacePHYRate")];
  [v4 setObject:v10 forKeyedSubscript:@"deviceTheoreticalMaxRate"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_inCall];
  [v4 setObject:v11 forKeyedSubscript:@"inCall"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasKernel];
  [v4 setObject:v12 forKeyedSubscript:@"hasKernelStats"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_inA2dp];
  [v4 setObject:v13 forKeyedSubscript:@"inA2DP"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_inEsco];
  [v4 setObject:v14 forKeyedSubscript:@"ineSCO"];

  v15 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger samples];
  v16 = [v15 lastObject];
  v17 = [v16 networkDetails];

  v18 = MEMORY[0x277CCACA8];
  v19 = [v17 connectedBss];
  v20 = [v18 stringWithFormat:@"%ld", objc_msgSend(v19, "channel")];
  [v4 setObject:v20 forKeyedSubscript:@"channel"];

  v21 = [v17 connectedBss];
  v22 = +[WiFiUsagePrivacyFilter bandAsString:](WiFiUsagePrivacyFilter, "bandAsString:", [v21 band]);
  [v4 setObject:v22 forKeyedSubscript:@"band"];

  v23 = MEMORY[0x277CCACA8];
  v24 = [v17 connectedBss];
  v25 = [v23 stringWithFormat:@"%ld", objc_msgSend(v24, "channelWidth")];
  [v4 setObject:v25 forKeyedSubscript:@"channelWidth"];

  v26 = [v17 connectedBss];
  v27 = [v26 apProfile];
  [v4 setObject:v27 forKeyedSubscript:@"apProfile"];

  v28 = [v17 connectedBss];
  v29 = [v28 bssid];
  v30 = [WiFiUsagePrivacyFilter sanitizedOUI:v29];
  [v4 setObject:v30 forKeyedSubscript:@"oui"];

  v147 = v17;
  v31 = [v17 connectedBss];
  v32 = [v31 bssid];
  v33 = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger samples];
  v34 = [v33 lastObject];
  v35 = [v34 networkDetails];
  v36 = [v35 connectedBss];
  v37 = [v36 bssid];
  v38 = [v32 isEqualToString:v37];
  v39 = [MEMORY[0x277CCABB0] numberWithBool:v38];
  [v4 setObject:v39 forKeyedSubscript:@"sameBSSID"];

  v40 = [MEMORY[0x277CCABB0] numberWithBool:{-[WiFiUsageLQMRollingWindow hasChanged:](self->_windowBeforeTrigger, "hasChanged:", @"networkDetails.connectedBss.channel"}];
  [v4 setObject:v40 forKeyedSubscript:@"channel_hasChanged_inBefore"];

  v41 = [MEMORY[0x277CCABB0] numberWithBool:{-[WiFiUsageLQMRollingWindow hasChanged:](self->_windowAfterTrigger, "hasChanged:", @"networkDetails.connectedBss.channel"}];
  [v4 setObject:v41 forKeyedSubscript:@"channel_hasChanged_inAfter"];

  v42 = [MEMORY[0x277CCABB0] numberWithBool:{-[WiFiUsageLQMRollingWindow hasChanged:](self->_windowBeforeTrigger, "hasChanged:", @"networkDetails.connectedBss.band"}];
  [v4 setObject:v42 forKeyedSubscript:@"band_hasChanged_inBefore"];

  v43 = [MEMORY[0x277CCABB0] numberWithBool:{-[WiFiUsageLQMRollingWindow hasChanged:](self->_windowAfterTrigger, "hasChanged:", @"networkDetails.connectedBss.band"}];
  v148 = v4;
  [v4 setObject:v43 forKeyedSubscript:@"band_hasChanged_inAfter"];

  v44 = objc_opt_new();
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v45 = self->_preceedingTriggers;
  v46 = [(NSArray *)v45 countByEnumeratingWithState:&v154 objects:v159 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v155;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v155 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = [*(*(&v154 + 1) + 8 * i) trigger];
        [v44 appendFormat:@"&%@", v50];
      }

      v47 = [(NSArray *)v45 countByEnumeratingWithState:&v154 objects:v159 count:16];
    }

    while (v47);
  }

  v146 = v44;
  [v4 setObject:v44 forKeyedSubscript:@"preceedingTriggers"];
  v149 = objc_opt_new();
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v51 = self->_subsequentTriggers;
  v52 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v150 objects:v158 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v151;
    do
    {
      for (j = 0; j != v53; ++j)
      {
        if (*v151 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = *(*(&v150 + 1) + 8 * j);
        v57 = [v56 timestamp];
        timestamp = self->_timestamp;
        [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger duration];
        v59 = [(NSDate *)timestamp dateByAddingTimeInterval:?];
        v60 = [v57 compare:v59];

        if (v60 != 1)
        {
          v61 = [v56 trigger];
          [v149 appendFormat:@"&%@", v61];
        }
      }

      v53 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v150 objects:v158 count:16];
    }

    while (v53);
  }

  [v148 setObject:v149 forKeyedSubscript:@"subsequentTriggers"];
  [v148 setObject:self->_firstSubsequentLinkDownReason forKeyedSubscript:@"firstSubsequentLinkDownReason"];
  v62 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v147, "hasEnterpriseSecurity")}];
  [v148 setObject:v62 forKeyedSubscript:@"isEnterprise"];

  v63 = [WiFiUsagePrivacyFilter getLabelsForNetworkProperties:v147];
  [v148 addEntriesFromDictionary:v63];

  v64 = [v147 bssEnvironment];
  [v148 setObject:v64 forKeyedSubscript:@"bssEnvironment"];

  v65 = [v147 privateMacType];
  [v148 setObject:v65 forKeyedSubscript:@"privateMacType"];

  v66 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v147, "privateRelayEnabled")}];
  [v148 setObject:v66 forKeyedSubscript:@"privacyProxyEnabled"];

  v67 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger samples];
  v68 = [v67 lastObject];
  v69 = [v68 motionState];
  [v148 setObject:v69 forKeyedSubscript:@"motionStatus"];

  v70 = MEMORY[0x277CCABB0];
  v71 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger samples];
  v72 = [v71 lastObject];
  v73 = [v70 numberWithBool:{objc_msgSend(v72, "isAnyAppInFG")}];
  [v148 setObject:v73 forKeyedSubscript:@"isAnyAppInFG"];

  v74 = MEMORY[0x277CCABB0];
  v75 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger samples];
  v76 = [v75 lastObject];
  v77 = [v74 numberWithBool:{objc_msgSend(v76, "isFTactive")}];
  [v148 setObject:v77 forKeyedSubscript:@"isFTactive"];

  v78 = MEMORY[0x277CCABB0];
  v79 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger samples];
  v80 = [v79 lastObject];
  v81 = [v78 numberWithBool:{objc_msgSend(v80, "isTimeSensitiveAppRunning")}];
  [v148 setObject:v81 forKeyedSubscript:@"isTimeSensitiveAppRunning"];

  v82 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger samples];
  v83 = [v82 lastObject];
  v84 = +[WiFiUsageLQMTransformations getLabelTrafficState:](WiFiUsageLQMTransformations, "getLabelTrafficState:", [v83 trafficState]);
  [v148 setObject:v84 forKeyedSubscript:@"last_trafficState_before"];

  if (+[WiFiUsagePrivacyFilter isInternalInstall](WiFiUsagePrivacyFilter, "isInternalInstall") && [v147 isInternal])
  {
    v85 = [v147 networkName];
    [v148 setObject:v85 forKeyedSubscript:@"NetworkName"];

    v86 = [v147 connectedBss];
    v87 = [v86 bssid];
    v88 = [WiFiUsageAccessPointProfile apNameForBSSID:v87];

    v89 = [[WiFiUsageAppleWiFiNameBlocks alloc] initWithAPName:v88];
    [v148 setObject:v88 forKeyedSubscript:@"apName"];
    if (v89)
    {
      v90 = [(WiFiUsageAppleWiFiNameBlocks *)v89 building];
      [v148 setObject:v90 forKeyedSubscript:@"apNamePortionA"];

      v91 = [(WiFiUsageAppleWiFiNameBlocks *)v89 section];
      [v148 setObject:v91 forKeyedSubscript:@"apNamePortionB"];

      v92 = [(WiFiUsageAppleWiFiNameBlocks *)v89 floor];
      [v148 setObject:v92 forKeyedSubscript:@"apNamePortionC"];

      v93 = [(WiFiUsageAppleWiFiNameBlocks *)v89 pod];
      [v148 setObject:v93 forKeyedSubscript:@"apNamePortionD"];

      v94 = [(WiFiUsageAppleWiFiNameBlocks *)v89 other];
      [v148 setObject:v94 forKeyedSubscript:@"apNamePortionE"];
    }
  }

  v95 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger samples];
  v96 = [v95 lastObject];
  v97 = [v96 timestamp];
  v98 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger samples];
  v99 = [v98 firstObject];
  v100 = [v99 timestamp];
  [v97 timeIntervalSinceDate:v100];
  v102 = [WiFiUsagePrivacyFilter getBinEvery10Over100:v101 As:0];
  [v148 setObject:v102 forKeyedSubscript:@"windowSpan_before"];

  v103 = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger samples];
  v104 = [v103 lastObject];
  v105 = [v104 timestamp];
  v106 = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger samples];
  v107 = [v106 firstObject];
  v108 = [v107 timestamp];
  [v105 timeIntervalSinceDate:v108];
  v110 = [WiFiUsagePrivacyFilter getBinEvery10Over100:v109 As:0];
  [v148 setObject:v110 forKeyedSubscript:@"windowSpan_after"];

  v111 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger samples];
  v112 = +[WiFiUsagePrivacyFilter getBinEvery10Over100:As:](WiFiUsagePrivacyFilter, "getBinEvery10Over100:As:", [v111 count], 0);
  [v148 setObject:v112 forKeyedSubscript:@"samplesCount_before"];

  v113 = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger samples];
  v114 = +[WiFiUsagePrivacyFilter getBinEvery10Over100:As:](WiFiUsagePrivacyFilter, "getBinEvery10Over100:As:", [v113 count], 0);
  [v148 setObject:v114 forKeyedSubscript:@"samplesCount_after"];

  v115 = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger samples];
  v116 = [v115 lastObject];
  v117 = [v116 networkDetails];

  v118 = MEMORY[0x277CCACA8];
  v119 = [v117 connectedBss];
  v120 = [v118 stringWithFormat:@"%ld", objc_msgSend(v119, "channel")];
  [v148 setObject:v120 forKeyedSubscript:@"channel_after"];

  v121 = [v117 connectedBss];
  v122 = +[WiFiUsagePrivacyFilter bandAsString:](WiFiUsagePrivacyFilter, "bandAsString:", [v121 band]);
  [v148 setObject:v122 forKeyedSubscript:@"band_after"];

  v123 = MEMORY[0x277CCACA8];
  v124 = [v117 connectedBss];
  v125 = [v123 stringWithFormat:@"%ld", objc_msgSend(v124, "channelWidth")];
  [v148 setObject:v125 forKeyedSubscript:@"channelWidth_after"];

  v126 = [v117 connectedBss];
  v127 = [v126 apProfile];
  [v148 setObject:v127 forKeyedSubscript:@"apProfile_after"];

  v128 = [v117 connectedBss];
  v129 = [v128 bssid];
  v130 = [WiFiUsagePrivacyFilter sanitizedOUI:v129];
  [v148 setObject:v130 forKeyedSubscript:@"oui_after"];

  v131 = [WiFiUsagePrivacyFilter getLabelsForNetworkProperties:v117];
  [v148 addEntriesFromDictionary:v131];

  v132 = [v117 bssEnvironment];
  [v148 setObject:v132 forKeyedSubscript:@"bssEnvironment_after"];

  v133 = [v117 privateMacType];
  [v148 setObject:v133 forKeyedSubscript:@"privateMacType_after"];

  v134 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v117, "privateRelayEnabled")}];
  [v148 setObject:v134 forKeyedSubscript:@"privacyProxyEnabled_after"];

  if (+[WiFiUsagePrivacyFilter isInternalInstall](WiFiUsagePrivacyFilter, "isInternalInstall") && [v117 isInternal])
  {
    v135 = [v117 connectedBss];
    v136 = [v135 bssid];
    v137 = [WiFiUsageAccessPointProfile apNameForBSSID:v136];

    v138 = [[WiFiUsageAppleWiFiNameBlocks alloc] initWithAPName:v137];
    [v148 setObject:v137 forKeyedSubscript:@"apName_after"];
    if (v138)
    {
      v139 = [(WiFiUsageAppleWiFiNameBlocks *)v138 building];
      [v148 setObject:v139 forKeyedSubscript:@"apNamePortionA_after"];

      v140 = [(WiFiUsageAppleWiFiNameBlocks *)v138 section];
      [v148 setObject:v140 forKeyedSubscript:@"apNamePortionB_after"];

      v141 = [(WiFiUsageAppleWiFiNameBlocks *)v138 floor];
      [v148 setObject:v141 forKeyedSubscript:@"apNamePortionC_after"];

      v142 = [(WiFiUsageAppleWiFiNameBlocks *)v138 pod];
      [v148 setObject:v142 forKeyedSubscript:@"apNamePortionD_after"];

      v143 = [(WiFiUsageAppleWiFiNameBlocks *)v138 other];
      [v148 setObject:v143 forKeyedSubscript:@"apNamePortionE_after"];
    }
  }

  v144 = *MEMORY[0x277D85DE8];

  return v148;
}

- (id)dumpAnalysis:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAB68] stringWithFormat:@"(format: fieldName=<feature %@>|<feature %@>|<median change>)\n", @"before", @"after"];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = [v3 allKeys];
  v6 = [v5 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

  obj = v6;
  v28 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v28)
  {
    v27 = *v32;
    v23 = v3;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v32 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        [v4 appendFormat:@"%@=", v8];
        v30 = [v3 objectForKeyedSubscript:v8];
        v9 = [v30 objectForKeyedSubscript:@"before"];
        v29 = [v3 objectForKeyedSubscript:v8];
        v10 = [v29 objectForKeyedSubscript:@"after"];
        v11 = [v3 objectForKeyedSubscript:v8];
        v12 = [v11 objectForKeyedSubscript:@"after"];
        if (objc_opt_respondsToSelector())
        {
          v25 = MEMORY[0x277CCABB0];
          v26 = [v3 objectForKeyedSubscript:v8];
          v13 = [v26 objectForKeyedSubscript:@"after"];
          [v13 doubleValue];
          v15 = v14;
          v16 = [v3 objectForKeyedSubscript:v8];
          v17 = [v16 objectForKeyedSubscript:@"before"];
          [v17 doubleValue];
          [v25 numberWithDouble:v15 - v18];
          v20 = v19 = v4;
          [v19 appendFormat:@"%@|%@|%@", v9, v10, v20];

          v4 = v19;
          v3 = v23;
        }

        else
        {
          [v4 appendFormat:@"%@|%@|%@", v9, v10, &stru_28487EF20];
        }

        [v4 appendString:@";"];
      }

      v28 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v28);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)dumpDimensions:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v3 allKeys];
  v6 = [v5 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v3 objectForKeyedSubscript:v11];
        [v4 appendFormat:@"%@=%@;", v11, v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)fetchKernelLQMRollingWindowForInterface:(id)a3 into:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = Apple80211Open();
  if (v7)
  {
    [WiFiUsageLQMWindowAnalysis fetchKernelLQMRollingWindowForInterface:v7 into:?];
  }

  else
  {
    v8 = Apple80211BindToInterface();
    if (v8)
    {
      [WiFiUsageLQMWindowAnalysis fetchKernelLQMRollingWindowForInterface:v5 into:v8];
    }

    else
    {
      v9 = Apple80211Get();
      if (v9)
      {
        [WiFiUsageLQMWindowAnalysis fetchKernelLQMRollingWindowForInterface:v9 into:?];
      }

      else
      {
        v10 = [v6 objectForKeyedSubscript:&unk_2848BA7C0];
        if (v10)
        {
          v11 = v10;
          goto LABEL_6;
        }

        [WiFiUsageLQMWindowAnalysis fetchKernelLQMRollingWindowForInterface:into:];
      }
    }
  }

  v11 = 0;
LABEL_6:

  return v11;
}

- (BOOL)getBeforeKernelWindowWithLikelyhood
{
  v45 = *MEMORY[0x277D85DE8];
  diceRoll = self->_diceRoll;
  v4 = [_createAnalysisSamplingRates objectForKeyedSubscript:self->_reason];
  v5 = [v4 samplingBase];
  v6 = [_fetchKernelWindowSamplingRates objectForKeyedSubscript:self->_reason];
  v7 = [v6 samplingBase];

  if (v5 != v7)
  {
    v8 = [_fetchKernelWindowSamplingRates objectForKeyedSubscript:self->_reason];
    diceRoll = arc4random_uniform([v8 samplingBase]);
  }

  v9 = [_fetchKernelWindowSamplingRates objectForKeyedSubscript:self->_reason];
  if (!v9)
  {
    v13 = 0;
    goto LABEL_9;
  }

  v10 = v9;
  v11 = [_fetchKernelWindowSamplingRates objectForKeyedSubscript:self->_reason];
  v12 = [v11 samplingRate];
  v13 = diceRoll < v12;

  if (_isKernelParsingEnabled != 1 || diceRoll >= v12)
  {
LABEL_9:
    v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (_isKernelParsingEnabled)
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      if (v13)
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      v17 = self->_diceRoll;
      v18 = [_fetchKernelWindowSamplingRates objectForKeyedSubscript:self->_reason];
      v19 = [v18 samplingRate];
      v31 = 136316674;
      v32 = "[WiFiUsageLQMWindowAnalysis getBeforeKernelWindowWithLikelyhood]";
      if (+[WiFiUsageLQMKernelRollingWindow isOngoing])
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      v33 = 2112;
      v34 = self;
      v35 = 2112;
      v36 = v15;
      v37 = 2112;
      v38 = v16;
      v39 = 2048;
      v40 = v17;
      v41 = 1024;
      v42 = v19;
      v43 = 2112;
      v44 = v20;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Not fetching before kernel rolling window for analysis: %@ (enabled: %@ - sampling:%@(%lu>=%u) - ongoing kernel window parsing:%@)", &v31, 0x44u);

LABEL_20:
      LOBYTE(v14) = 0;
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  if (+[WiFiUsageLQMKernelRollingWindow isOngoing])
  {
    v13 = 1;
    goto LABEL_9;
  }

  v22 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger interfaceName];

  v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (!v22)
  {
    if (!v14)
    {
      goto LABEL_21;
    }

    v29 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger interfaceName];
    v31 = 136315394;
    v32 = "[WiFiUsageLQMWindowAnalysis getBeforeKernelWindowWithLikelyhood]";
    v33 = 2112;
    v34 = v29;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Cannot fetch the kernel rolling window (invalid interface name on windowBeforeTrigger: %@)", &v31, 0x16u);

    goto LABEL_20;
  }

  if (v14)
  {
    v23 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger interfaceName];
    v31 = 136315650;
    v32 = "[WiFiUsageLQMWindowAnalysis getBeforeKernelWindowWithLikelyhood]";
    v33 = 2112;
    v34 = self;
    v35 = 2112;
    v36 = v23;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Fetching before kernel rolling window for analysis %@ on interface %@", &v31, 0x20u);
  }

  v24 = objc_opt_new();
  v25 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger interfaceName];
  v26 = [(WiFiUsageLQMWindowAnalysis *)self fetchKernelLQMRollingWindowForInterface:v25 into:v24];

  if (v26)
  {
    v27 = [WiFiUsageLQMKernelRollingWindow kernelLQMRollingWindow:v26 withReferenceWindow:self->_windowBeforeTrigger andLqmFeatures:self->_lqmWindowsFeatures];
    lqmWindowsFeatures = self->_lqmWindowsFeatures;
    self->_lqmWindowsFeatures = v27;
  }

  if ([(NSMutableDictionary *)self->_lqmWindowsFeatures count])
  {
    self->_hasKernel = 1;
  }

  LOBYTE(v14) = 1;
LABEL_21:
  v21 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)fetchKernelLQMRollingWindowForInterface:(int)a1 into:.cold.1(int a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    strerror(a1);
    OUTLINED_FUNCTION_0_8();
    OUTLINED_FUNCTION_1_5();
    _os_log_impl(v2, v3, v4, v5, v6, 0x1Cu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)fetchKernelLQMRollingWindowForInterface:(uint64_t)a1 into:(int)a2 .cold.2(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    strerror(a2);
    OUTLINED_FUNCTION_1_5();
    _os_log_impl(v3, v4, v5, v6, v7, 0x26u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)fetchKernelLQMRollingWindowForInterface:(int)a1 into:.cold.3(int a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    strerror(a1);
    OUTLINED_FUNCTION_0_8();
    OUTLINED_FUNCTION_1_5();
    _os_log_impl(v2, v3, v4, v5, v6, 0x1Cu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)fetchKernelLQMRollingWindowForInterface:into:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1_5();
    _os_log_impl(v0, v1, v2, v3, v4, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end