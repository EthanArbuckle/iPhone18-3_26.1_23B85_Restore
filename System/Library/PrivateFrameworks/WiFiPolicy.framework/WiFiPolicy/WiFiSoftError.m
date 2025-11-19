@interface WiFiSoftError
+ (void)_cloudAssetsFetchHandler:(id)a3;
+ (void)_submitSummaryReportMetric;
+ (void)_updateHUDWithHost:(id)a3 messageDict:(id)a4;
+ (void)_updateHUDWithMessage:(id)a3;
- (BOOL)_maxNonUIActionsReachedFor:(id)a3;
- (BOOL)_maxUIActionsReachedFor:(id)a3;
- (BOOL)askToLaunchTapToRadarWithMessage:(id)a3 timeout:(double)a4;
- (BOOL)askToLaunchTapToRadarWithMessage:(id)a3 timeout:(double)a4 completionHandler:(id)a5;
- (NSMutableString)logMessage;
- (WiFiSoftError)initWithName:(id)a3 andParams:(id)a4;
- (id)appendLogMessage:(id)a3 includeTimestamp:(BOOL)a4;
- (id)incrementCount;
- (id)submitABCReportWithReason:(id)a3 event:(id)a4;
- (id)submitMetric;
- (id)submitMetricWithData:(id)a3;
- (id)tapToRadarWithURL:(id)a3 completionHandler:(id)a4;
- (id)updateHUDWithHost:(id)a3 messageDict:(id)a4;
- (id)updateHUDWithMessage:(id)a3;
- (int64_t)_countOf:(id)a3 withinInterval:(double)a4;
- (int64_t)count;
- (int64_t)recentCountWithinTimeInterval:(double)a3;
- (void)_addConfigurationData:(id)a3;
- (void)_addGenericMetricData:(id)a3;
- (void)_recordCurrentTimestampIn:(id)a3;
- (void)_resetCount;
- (void)clearLogMessage;
- (void)dealloc;
- (void)resetCount;
- (void)writeLogMessage;
@end

@implementation WiFiSoftError

- (WiFiSoftError)initWithName:(id)a3 andParams:(id)a4
{
  v123 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [WiFiSoftError initWithName:andParams:];
    }

    goto LABEL_9;
  }

  if ((os_variant_is_recovery() & 1) != 0 || (os_variant_is_darwinos() & 1) != 0 || MGGetBoolAnswer())
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [WiFiSoftError initWithName:andParams:];
    }

LABEL_9:
    v9 = 0;
    v10 = self;
    goto LABEL_10;
  }

  v92 = v7;
  p_info = TBTileMO.info;
  if (!queue)
  {
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.wifi.softerror", v14);
    v16 = queue;
    queue = v15;
  }

  if (!logPtr)
  {
    v17 = os_log_create("com.apple.wifi.softerror", "");
    v18 = logPtr;
    logPtr = v17;
  }

  if (!currentSoftErrors)
  {
    v19 = [MEMORY[0x277CBEB58] set];
    v20 = currentSoftErrors;
    currentSoftErrors = v19;
  }

  if (!metricTimer)
  {
    v21 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);
    v22 = metricTimer;
    metricTimer = v21;

    dispatch_source_set_event_handler(metricTimer, &__block_literal_global_11);
    v23 = metricTimer;
    v24 = dispatch_time(0, 86400000000000);
    dispatch_source_set_timer(v23, v24, 0x4E94914F0000uLL, 0);
    dispatch_activate(metricTimer);
  }

  objc_storeStrong(&self->_name, a3);
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v10 = [currentSoftErrors copy];
  v25 = [(WiFiSoftError *)v10 countByEnumeratingWithState:&v96 objects:v122 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = 0;
    v28 = *v97;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v97 != v28)
        {
          objc_enumerationMutation(v10);
        }

        v30 = [*(*(&v96 + 1) + 8 * i) pointerValue];
        v31 = [v30 name];
        v32 = [v31 isEqualToString:self->_name];

        v27 |= v32;
      }

      v26 = [(WiFiSoftError *)v10 countByEnumeratingWithState:&v96 objects:v122 count:16];
    }

    while (v26);

    p_info = (TBTileMO + 32);
    if (v27)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [WiFiSoftError initWithName:? andParams:?];
      }

      v9 = 0;
      v10 = self;
      v7 = v92;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v95.receiver = self;
  v95.super_class = WiFiSoftError;
  v33 = [(WiFiSoftError *)&v95 init];
  v34 = [v8 objectForKeyedSubscript:@"maxOccurrences"];
  v35 = [v34 integerValue];
  v36 = v35 <= -1 || v34 == 0;
  v37 = 100;
  if (!v36)
  {
    v37 = v35;
  }

  v33->_maxOccurrences = v37;
  v38 = [v8 objectForKeyedSubscript:@"metricSubmissionSamplingRate"];

  v39 = [v38 integerValue];
  v40 = v39 >= 0x65 || v38 == 0;
  v41 = 30;
  if (!v40)
  {
    v41 = v39;
  }

  v33->_metricSubmissionSamplingRate = v41;
  v42 = [v8 objectForKeyedSubscript:@"maxNonUIActions"];

  v43 = [v42 integerValue];
  v44 = v43 <= -1 || v42 == 0;
  v45 = 5;
  if (!v44)
  {
    v45 = v43;
  }

  v33->_maxNonUIActions = v45;
  v46 = [v8 objectForKeyedSubscript:@"intervalForMaxNonUIActions"];

  v47 = [v46 integerValue];
  v48 = v47 <= -1 || v46 == 0;
  v49 = 120;
  if (!v48)
  {
    v49 = v47;
  }

  v33->_intervalForMaxNonUIActions = v49;
  v50 = [v8 objectForKeyedSubscript:@"maxUIActions"];

  v51 = [v50 integerValue];
  v52 = v51 <= -1 || v50 == 0;
  v53 = 2;
  if (!v52)
  {
    v53 = v51;
  }

  v33->_maxUIActions = v53;
  v54 = [v8 objectForKeyedSubscript:@"intervalForMaxUIActions"];

  v55 = [v54 integerValue];
  v56 = v55 <= -1 || v54 == 0;
  v57 = 86400;
  if (!v56)
  {
    v57 = v55;
  }

  v33->_intervalForMaxUIActions = v57;
  v58 = [v8 objectForKeyedSubscript:@"maxLogMessageLength"];

  v59 = [v58 integerValue];
  v60 = v59 <= -1 || v58 == 0;
  v61 = 1000;
  if (!v60)
  {
    v61 = v59;
  }

  v33->_maxLogMessageLength = v61;
  v62 = p_info[147];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__WiFiSoftError_initWithName_andParams___block_invoke_34;
  block[3] = &unk_2789C6630;
  v9 = v33;
  v94 = v9;
  dispatch_sync(v62, block);
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v9->_creationDate = v63;
  *&v9->_enabled = vdupq_n_s64(1uLL);
  p_enabled = &v9->_enabled;
  v65 = [v8 objectForKeyedSubscript:@"isRecommendedPriority"];

  v91 = v65;
  v9->_isRecommendedPriority = (v65 != 0) & [v65 BOOLValue];
  v66 = MEMORY[0x277CCACA8];
  p_name = &v9->_name;
  name = v9->_name;
  v69 = [MEMORY[0x277CCA900] URLUserAllowedCharacterSet];
  v70 = [(NSString *)name stringByAddingPercentEncodingWithAllowedCharacters:v69];
  v71 = [v66 stringWithFormat:@"%@.%@", @"com.apple.wifi.softerror", v70];
  metricEventName = v9->_metricEventName;
  v9->_metricEventName = v71;

  if ((cloudAssetsQueried & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [WiFiSoftError initWithName:andParams:];
    }

    [WCAFetchWiFiBehaviorParameters fetchWiFiBehaviorWithCompletion:&__block_literal_global_52];
    cloudAssetsQueried = 1;
  }

  v7 = v92;
  if (cloudAssets)
  {
    v73 = [cloudAssets objectForKey:*p_name];
    v74 = v73;
    if (v73)
    {
      v75 = [v73 objectForKey:@"enabled"];
      v76 = [v75 integerValue];
      if (v75)
      {
        v77 = v76;
        if (v76 <= 1 && *p_enabled != v76)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [WiFiSoftError initWithName:? andParams:?];
          }

          *p_enabled = v77;
        }
      }

      v78 = [v74 objectForKey:@"metricsEnabled"];

      v79 = [v78 integerValue];
      if (v78)
      {
        v80 = v79;
        if (v79 <= 1 && v9->_metricsEnabled != v79)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [WiFiSoftError initWithName:? andParams:?];
          }

          v9->_metricsEnabled = v80;
        }
      }
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v81 = *p_name;
    v82 = *p_enabled;
    metricsEnabled = v9->_metricsEnabled;
    maxOccurrences = v33->_maxOccurrences;
    metricSubmissionSamplingRate = v33->_metricSubmissionSamplingRate;
    maxNonUIActions = v33->_maxNonUIActions;
    intervalForMaxNonUIActions = v33->_intervalForMaxNonUIActions;
    maxUIActions = v33->_maxUIActions;
    intervalForMaxUIActions = v33->_intervalForMaxUIActions;
    maxLogMessageLength = v33->_maxLogMessageLength;
    *buf = 136317698;
    v101 = "[WiFiSoftError initWithName:andParams:]";
    v102 = 2112;
    v103 = v81;
    v104 = 2048;
    v105 = v82;
    v106 = 2048;
    v107 = metricsEnabled;
    v108 = 2048;
    v109 = maxOccurrences;
    v110 = 2048;
    v111 = metricSubmissionSamplingRate;
    v112 = 2048;
    v113 = maxNonUIActions;
    v114 = 2048;
    v115 = intervalForMaxNonUIActions;
    v116 = 2048;
    v117 = maxUIActions;
    v118 = 2048;
    v119 = intervalForMaxUIActions;
    v120 = 2048;
    v121 = maxLogMessageLength;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Created SoftError <%@>, enabled <%ld>, metricsEnabled <%ld>, params <%ld, %ld, %ld, %ld, %ld, %ld, %ld>", buf, 0x70u);
  }

LABEL_10:
  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

void __40__WiFiSoftError_initWithName_andParams___block_invoke_34(uint64_t a1)
{
  v1 = currentSoftErrors;
  v2 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:*(a1 + 32)];
  [v1 addObject:v2];
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    name = self->_name;
    *buf = 136315394;
    v10 = "[WiFiSoftError dealloc]";
    v11 = 2112;
    v12 = name;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Dealloc SoftError <%@>", buf, 0x16u);
  }

  if (self->_hudTimestamps)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[WiFiSoftError dealloc]";
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Clearing HUD...", buf, 0xCu);
    }

    [WiFiSoftError _updateHUDWithMessage:0];
  }

  if (queue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __24__WiFiSoftError_dealloc__block_invoke;
    block[3] = &unk_2789C6630;
    block[4] = self;
    dispatch_sync(queue, block);
    if (![currentSoftErrors count])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v10 = "[WiFiSoftError dealloc]";
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Final dealloc", buf, 0xCu);
      }

      if (metricTimer)
      {
        dispatch_source_cancel(metricTimer);
        v4 = metricTimer;
        metricTimer = 0;
      }

      if (hudTimer)
      {
        dispatch_source_cancel(hudTimer);
        v5 = hudTimer;
        hudTimer = 0;
      }
    }
  }

  v7.receiver = self;
  v7.super_class = WiFiSoftError;
  [(WiFiSoftError *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

void __24__WiFiSoftError_dealloc__block_invoke(uint64_t a1)
{
  v1 = currentSoftErrors;
  v2 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:*(a1 + 32)];
  [v1 removeObject:v2];
}

- (id)incrementCount
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__6;
  v12 = __Block_byref_object_dispose__6;
  v13 = 0;
  if (_os_feature_enabled_impl() && !MGGetBoolAnswer())
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __31__WiFiSoftError_incrementCount__block_invoke;
    v7[3] = &unk_2789C73A8;
    v7[4] = self;
    v7[5] = &v8;
    dispatch_sync(queue, v7);
  }

  else
  {
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
    v4 = v9[5];
    v9[5] = v3;
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __31__WiFiSoftError_incrementCount__block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (*(v2 + 80))
  {
    v4 = [*(v2 + 104) count];
    v5 = *v3;
    if (v4 >= *(*v3 + 16))
    {
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:12 userInfo:0];
      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __31__WiFiSoftError_incrementCount__block_invoke_cold_1(v3);
      }
    }

    else
    {
      v6 = v5[13];
      if (!v6)
      {
        v7 = [MEMORY[0x277CBEB18] array];
        v8 = *(*v3 + 104);
        *(*v3 + 104) = v7;

        v5 = *v3;
        v6 = *(*v3 + 104);
      }

      [v5 _recordCurrentTimestampIn:v6];
    }
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:82 userInfo:0];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    MEMORY[0x2821F96F8](v9, v11);
  }
}

- (void)resetCount
{
  if (_os_feature_enabled_impl())
  {
    if ((MGGetBoolAnswer() & 1) == 0)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __27__WiFiSoftError_resetCount__block_invoke;
      block[3] = &unk_2789C6630;
      block[4] = self;
      dispatch_sync(queue, block);
    }
  }
}

- (int64_t)count
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = -1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __22__WiFiSoftError_count__block_invoke;
  v4[3] = &unk_2789C73A8;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(queue, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void *__22__WiFiSoftError_count__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[10])
  {
    result = [result _countOf:result[13] withinInterval:9.22337204e18];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (int64_t)recentCountWithinTimeInterval:(double)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = -1;
  if (_os_feature_enabled_impl() && !MGGetBoolAnswer())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__WiFiSoftError_recentCountWithinTimeInterval___block_invoke;
    block[3] = &unk_2789C7C80;
    block[4] = self;
    block[5] = &v8;
    *&block[6] = a3;
    dispatch_sync(queue, block);
  }

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void *__47__WiFiSoftError_recentCountWithinTimeInterval___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[10])
  {
    result = [result _countOf:result[13] withinInterval:*(a1 + 48)];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (id)appendLogMessage:(id)a3 includeTimestamp:(BOOL)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__6;
  v20 = __Block_byref_object_dispose__6;
  v21 = 0;
  if (_os_feature_enabled_impl() && !MGGetBoolAnswer())
  {
    v10 = queue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __51__WiFiSoftError_appendLogMessage_includeTimestamp___block_invoke;
    v12[3] = &unk_2789C7CA8;
    v12[4] = self;
    v15 = a4;
    v13 = v6;
    v14 = &v16;
    dispatch_sync(v10, v12);
    v9 = v17[5];
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
    v8 = v17[5];
    v17[5] = v7;

    v9 = v17[5];
  }

  _Block_object_dispose(&v16, 8);

  return v9;
}

void __51__WiFiSoftError_appendLogMessage_includeTimestamp___block_invoke(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v2[10])
  {
    v4 = v2[15];
    if (!v4)
    {
      v5 = [MEMORY[0x277CCAB68] stringWithFormat:@"[name <%@>] ", v2[9]];
      v6 = *(*v3 + 120);
      *(*v3 + 120) = v5;

      v4 = *(*v3 + 120);
    }

    v7 = [v4 length];
    v8 = [*(a1 + 40) length];
    v9 = *(a1 + 32);
    if ((v8 + v7) >= *(v9 + 64))
    {
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:12 userInfo:0];
      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __51__WiFiSoftError_appendLogMessage_includeTimestamp___block_invoke_cold_1(v3);
      }
    }

    else if (*(a1 + 56) == 1)
    {
      v16 = [MEMORY[0x277CBEAA8] date];
      [*(*(a1 + 32) + 120) appendFormat:@"[date <%@> logStr <%@>] ", v16, *(a1 + 40)];
    }

    else
    {
      [*(v9 + 120) appendFormat:@"[logStr <%@>] ", *(a1 + 40)];
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:82 userInfo:0];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    MEMORY[0x2821F96F8](v10, v12);
  }
}

- (NSMutableString)logMessage
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  if (_os_feature_enabled_impl() && !MGGetBoolAnswer())
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __27__WiFiSoftError_logMessage__block_invoke;
    v5[3] = &unk_2789C73A8;
    v5[4] = self;
    v5[5] = &v6;
    dispatch_sync(queue, v5);
  }

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __27__WiFiSoftError_logMessage__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 80))
  {
    v2 = result;
    v3 = [*(v1 + 120) copy];
    v4 = *(*(v2 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8](v3, v5);
  }

  return result;
}

- (void)clearLogMessage
{
  if (_os_feature_enabled_impl())
  {
    if ((MGGetBoolAnswer() & 1) == 0)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __32__WiFiSoftError_clearLogMessage__block_invoke;
      block[3] = &unk_2789C6630;
      block[4] = self;
      dispatch_sync(queue, block);
    }
  }
}

void __32__WiFiSoftError_clearLogMessage__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 80))
  {
    v2 = *(v1 + 120);
    *(v1 + 120) = 0;
  }
}

- (void)writeLogMessage
{
  if (_os_feature_enabled_impl())
  {
    if ((MGGetBoolAnswer() & 1) == 0)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __32__WiFiSoftError_writeLogMessage__block_invoke;
      block[3] = &unk_2789C6630;
      block[4] = self;
      dispatch_sync(queue, block);
    }
  }
}

void __32__WiFiSoftError_writeLogMessage__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 80))
  {
    v2 = logPtr;
    if (os_log_type_enabled(logPtr, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = *(v3 + 120);
      v5 = *(v3 + 104);
      v6 = v2;
      v8 = 138412546;
      v9 = v4;
      v10 = 2048;
      v11 = [v5 count];
      _os_log_impl(&dword_2332D7000, v6, OS_LOG_TYPE_DEFAULT, "%@ [count <%ld>]", &v8, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)submitMetric
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__6;
  v13 = __Block_byref_object_dispose__6;
  v14 = 0;
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_5;
  }

  v3 = MGGetBoolAnswer() ^ 1;
  if (!MEMORY[0x2822170A0])
  {
    LOBYTE(v3) = 0;
  }

  if (v3)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __29__WiFiSoftError_submitMetric__block_invoke;
    v8[3] = &unk_2789C73A8;
    v8[4] = self;
    v8[5] = &v9;
    dispatch_sync(queue, v8);
  }

  else
  {
LABEL_5:
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
    v5 = v10[5];
    v10[5] = v4;
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __29__WiFiSoftError_submitMetric__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (*(v2 + 80) && *(v2 + 88))
  {
    if (*(*v3 + 3) <= arc4random_uniform(0x64u))
    {
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:35 userInfo:0];
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __29__WiFiSoftError_submitMetric__block_invoke_cold_1(v3);
      }
    }

    else
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.wifi.softerror", @"generic"];
      v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [*v3 _addGenericMetricData:v5];
      if ([v5 count])
      {
        [v5 setObject:*(*v3 + 9) forKey:@"name"];
        v15 = v5;
        AnalyticsSendEventLazy();
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(*v3 + 9);
          *buf = 136315650;
          v17 = "[WiFiSoftError submitMetric]_block_invoke_2";
          v18 = 2112;
          v19 = v6;
          v20 = 2112;
          v21 = v4;
          _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: SoftError <%@> submitted metric <%@>", buf, 0x20u);
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86228], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v17 = "[WiFiSoftError submitMetric]_block_invoke";
        v18 = 2112;
        v19 = v5;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86228], OS_LOG_TYPE_DEFAULT, "%s: SoftError metric dictionary <%@>", buf, 0x16u);
      }
    }

    v14 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:82 userInfo:0];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
    v10 = *MEMORY[0x277D85DE8];

    MEMORY[0x2821F96F8](v7, v9);
  }
}

- (id)submitMetricWithData:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__6;
  v18 = __Block_byref_object_dispose__6;
  v19 = 0;
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_5;
  }

  v5 = MGGetBoolAnswer() ^ 1;
  if (!MEMORY[0x2822170A0])
  {
    LOBYTE(v5) = 0;
  }

  if (v5)
  {
    v9 = queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__WiFiSoftError_submitMetricWithData___block_invoke;
    block[3] = &unk_2789C7CD0;
    block[4] = self;
    v13 = &v14;
    v12 = v4;
    dispatch_sync(v9, block);
    v8 = v15[5];
  }

  else
  {
LABEL_5:
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
    v7 = v15[5];
    v15[5] = v6;

    v8 = v15[5];
  }

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __38__WiFiSoftError_submitMetricWithData___block_invoke(void *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 4);
  v2 = a1[4];
  if (*(v2 + 80) && *(v2 + 88))
  {
    if (*(*v3 + 3) <= arc4random_uniform(0x64u))
    {
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:35 userInfo:0];
      v10 = *(a1[6] + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __38__WiFiSoftError_submitMetricWithData___block_invoke_cold_1(v3);
      }
    }

    else
    {
      if (a1[5])
      {
        v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:a1[5]];
      }

      else
      {
        v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      v12 = v4;
      [*v3 _addGenericMetricData:v4];
      if ([v12 count])
      {
        [v12 setObject:*(*v3 + 9) forKey:@"name"];
        v13 = *(*v3 + 16);
        v17 = v12;
        AnalyticsSendEventLazy();
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(*v3 + 9);
          v15 = *(*v3 + 16);
          *buf = 136315650;
          v19 = "[WiFiSoftError submitMetricWithData:]_block_invoke_2";
          v20 = 2112;
          v21 = v14;
          v22 = 2112;
          v23 = v15;
          _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: SoftError <%@> submitted metric <%@>", buf, 0x20u);
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86228], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v19 = "[WiFiSoftError submitMetricWithData:]_block_invoke";
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86228], OS_LOG_TYPE_DEFAULT, "%s: SoftError metric dictionary <%@>", buf, 0x16u);
      }
    }

    v16 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:82 userInfo:0];
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
    v8 = *MEMORY[0x277D85DE8];

    MEMORY[0x2821F96F8](v5, v7);
  }
}

- (id)submitABCReportWithReason:(id)a3 event:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__6;
  v21 = __Block_byref_object_dispose__6;
  v22 = 0;
  if (_os_feature_enabled_impl() && (MGGetBoolAnswer() & 1) == 0 && objc_opt_class())
  {
    v8 = queue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __49__WiFiSoftError_submitABCReportWithReason_event___block_invoke;
    v13[3] = &unk_2789C7CF8;
    v13[4] = self;
    v16 = &v17;
    v14 = v6;
    v15 = v7;
    dispatch_sync(v8, v13);
    v9 = v18[5];
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
    v11 = v18[5];
    v18[5] = v10;

    v9 = v18[5];
  }

  _Block_object_dispose(&v17, 8);

  return v9;
}

void __49__WiFiSoftError_submitABCReportWithReason_event___block_invoke(void *a1)
{
  v3 = a1 + 4;
  v2 = a1[4];
  if (v2[10])
  {
    if ([v2 _maxNonUIActionsReachedFor:v2[18]])
    {
      v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:35 userInfo:0];
      v5 = *(a1[7] + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __49__WiFiSoftError_submitABCReportWithReason_event___block_invoke_cold_2(v3);
      }
    }

    else
    {
      v10 = *v3;
      v11 = *(*v3 + 136);
      if (!v11)
      {
        v12 = objc_alloc_init(MEMORY[0x277D6AFC0]);
        v13 = *(*v3 + 136);
        *(*v3 + 136) = v12;

        v10 = *v3;
        v11 = *(*v3 + 136);
      }

      v14 = *(v10 + 72);
      v15 = a1[5];
      v16 = [MEMORY[0x277CCAC38] processInfo];
      v17 = [v16 processName];
      v18 = [v11 signatureWithDomain:@"WiFi" type:@"SoftError" subType:v14 subtypeContext:v15 detectedProcess:v17 triggerThresholdValues:0];

      v19 = a1[4];
      v20 = *(v19 + 136);
      v21 = a1[6];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __49__WiFiSoftError_submitABCReportWithReason_event___block_invoke_93;
      v26[3] = &unk_2789C6998;
      v26[4] = v19;
      if (([v20 snapshotWithSignature:v18 duration:v21 events:0 payload:0 actions:v26 reply:0.0] & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __49__WiFiSoftError_submitABCReportWithReason_event___block_invoke_cold_1(v3);
      }

      v22 = *v3;
      v23 = *(*v3 + 144);
      if (!v23)
      {
        v24 = [MEMORY[0x277CBEB18] array];
        v25 = *(*v3 + 144);
        *(*v3 + 144) = v24;

        v22 = *v3;
        v23 = *(*v3 + 144);
      }

      [v22 _recordCurrentTimestampIn:v23];
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:82 userInfo:0];
    v8 = *(a1[7] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    MEMORY[0x2821F96F8](v7, v9);
  }
}

void __49__WiFiSoftError_submitABCReportWithReason_event___block_invoke_93(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(*(a1 + 32) + 72);
    v4 = 136315394;
    v5 = "[WiFiSoftError submitABCReportWithReason:event:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: SoftError <%@> submitted an ABC report", &v4, 0x16u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (id)updateHUDWithHost:(id)a3 messageDict:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__6;
  v35 = __Block_byref_object_dispose__6;
  v36 = 0;
  if (!_os_feature_enabled_impl() || (MGGetBoolAnswer() & 1) != 0 || !MGGetBoolAnswer())
  {
    goto LABEL_8;
  }

  v8 = MGGetBoolAnswer() ^ 1;
  if (!MEMORY[0x28220D318])
  {
    LOBYTE(v8) = 1;
  }

  if ((v8 & 1) != 0 || isDisplayOff())
  {
LABEL_8:
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
    v10 = v32[5];
    v32[5] = v9;

LABEL_9:
    v11 = v32;
LABEL_10:
    v12 = v11[5];
    goto LABEL_11;
  }

  if (![v7 count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v38 = "[WiFiSoftError updateHUDWithHost:messageDict:]";
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Clearing HUD and HUD timer...", buf, 0xCu);
    }

    [WiFiSoftError _updateHUDWithMessage:0];
    if (hudTimer)
    {
      dispatch_source_set_timer(hudTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    }

    v11 = v32;
    goto LABEL_10;
  }

  v15 = hudTimer;
  if (!hudTimer)
  {
    v16 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);
    v17 = hudTimer;
    hudTimer = v16;

    dispatch_source_set_event_handler(hudTimer, &__block_literal_global_102);
    dispatch_activate(hudTimer);
    v15 = hudTimer;
  }

  v18 = dispatch_time(0, 2000000000);
  dispatch_source_set_timer(v15, v18, 0xFFFFFFFFFFFFFFFFLL, 0);
  v19 = _os_feature_enabled_impl();
  v20 = CFPreferencesCopyValue(@"kWiFiSoftErrorHUDPreference", @"com.apple.settings.airport", @"mobile", *MEMORY[0x277CBF010]);
  v21 = v20;
  if (v20)
  {
    v22 = CFGetTypeID(v20);
    if (v22 == CFStringGetTypeID())
    {
      if (CFStringCompare(v21, @"Never", 0))
      {
        if (CFStringCompare(v21, @"Recommended", 0))
        {
          if (CFStringCompare(v21, @"Limited", 0))
          {
            if (CFStringCompare(v21, @"Unlimited", 0) == kCFCompareEqualTo)
            {
              v19 = 3;
            }
          }

          else
          {
            v19 = 2;
          }
        }
      }

      else
      {
        v19 = 0;
      }
    }

    CFRelease(v21);
  }

  if (v19 == 1)
  {
    if (!self->_isRecommendedPriority)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [WiFiSoftError updateHUDWithHost:messageDict:];
      }

      goto LABEL_37;
    }
  }

  else if (!v19)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [WiFiSoftError updateHUDWithHost:messageDict:];
    }

LABEL_37:
    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:1 userInfo:0];
    v24 = v32[5];
    v32[5] = v23;

    goto LABEL_9;
  }

  v25 = queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__WiFiSoftError_updateHUDWithHost_messageDict___block_invoke_125;
  block[3] = &unk_2789C7D20;
  v30 = v19;
  block[4] = self;
  v29 = &v31;
  v27 = v6;
  v28 = v7;
  dispatch_sync(v25, block);
  v12 = v32[5];

LABEL_11:
  _Block_object_dispose(&v31, 8);

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __47__WiFiSoftError_updateHUDWithHost_messageDict___block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[WiFiSoftError updateHUDWithHost:messageDict:]_block_invoke";
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Clearing HUD...", &v2, 0xCu);
  }

  result = [WiFiSoftError _updateHUDWithMessage:0];
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void __47__WiFiSoftError_updateHUDWithHost_messageDict___block_invoke_125(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (v2[10])
  {
    if ([v2 _maxUIActionsReachedFor:v2[20]] && (*(a1 + 64) - 1) <= 1)
    {
      v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:35 userInfo:0];
      v5 = *(*(a1 + 56) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __47__WiFiSoftError_updateHUDWithHost_messageDict___block_invoke_125_cold_1(v3);
      }
    }

    else
    {
      [WiFiSoftError _updateHUDWithHost:*(a1 + 40) messageDict:*(a1 + 48)];
      v7 = *(a1 + 32);
      v8 = v7[20];
      if (!v8)
      {
        v9 = [MEMORY[0x277CBEB18] array];
        v10 = *(*v3 + 160);
        *(*v3 + 160) = v9;

        v7 = *v3;
        v8 = *(*v3 + 160);
      }

      [v7 _recordCurrentTimestampIn:v8];
    }
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:82 userInfo:0];
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    MEMORY[0x2821F96F8](v11, v13);
  }
}

- (id)updateHUDWithMessage:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v10 = @"content";
    v11[0] = a3;
    v4 = MEMORY[0x277CBEAC0];
    v5 = a3;
    v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  else
  {
    v6 = MEMORY[0x277CBEC10];
  }

  v7 = [(WiFiSoftError *)self updateHUDWithHost:@"banner" messageDict:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)askToLaunchTapToRadarWithMessage:(id)a3 timeout:(double)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (!_os_feature_enabled_impl() || (MGGetBoolAnswer() & 1) != 0 || !MGGetBoolAnswer() || !MGGetBoolAnswer() || !objc_opt_class() || MKBGetDeviceLockState() == 1)
  {
    goto LABEL_10;
  }

  v7 = isDisplayOff() ^ 1;
  if (!v6)
  {
    LOBYTE(v7) = 0;
  }

  if (v7)
  {
    v10 = queue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __58__WiFiSoftError_askToLaunchTapToRadarWithMessage_timeout___block_invoke;
    v11[3] = &unk_2789C7200;
    v11[4] = self;
    v14 = a4;
    v12 = v6;
    v13 = &v15;
    dispatch_sync(v10, v11);
    v8 = *(v16 + 24);
  }

  else
  {
LABEL_10:
    v8 = *(v16 + 24);
  }

  _Block_object_dispose(&v15, 8);

  return v8 & 1;
}

void __58__WiFiSoftError_askToLaunchTapToRadarWithMessage_timeout___block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (v2[10])
  {
    if ([v2 _maxUIActionsReachedFor:v2[21]])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __58__WiFiSoftError_askToLaunchTapToRadarWithMessage_timeout___block_invoke_cold_1(v3);
      }
    }

    else
    {
      v8 = 0;
      CFUserNotificationDisplayAlert(*(a1 + 56), 0, 0, 0, 0, *(a1 + 40), @"File a radar now?", @"No", @"Yes", 0, &v8);
      if (v8 == 1)
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }

      v4 = *v3;
      v5 = *(*v3 + 168);
      if (!v5)
      {
        v6 = [MEMORY[0x277CBEB18] array];
        v7 = *(*v3 + 168);
        *(*v3 + 168) = v6;

        v4 = *v3;
        v5 = *(*v3 + 168);
      }

      [v4 _recordCurrentTimestampIn:v5];
    }
  }
}

- (BOOL)askToLaunchTapToRadarWithMessage:(id)a3 timeout:(double)a4 completionHandler:(id)a5
{
  v29[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  if (MKBGetDeviceLockState() == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = isDisplayOff();
  }

  if (!_os_feature_enabled_impl() || !MGGetBoolAnswer() || !MGGetBoolAnswer() || (objc_opt_class() == 0) | v10 & 1)
  {
    goto LABEL_11;
  }

  v11 = MGGetBoolAnswer() ^ 1;
  if (!v8)
  {
    LOBYTE(v11) = 0;
  }

  if (v11)
  {
    v19 = queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__WiFiSoftError_askToLaunchTapToRadarWithMessage_timeout_completionHandler___block_invoke;
    block[3] = &unk_2789C7200;
    block[4] = self;
    v23 = a4;
    v21 = v8;
    v22 = &v24;
    dispatch_sync(v19, block);
    if (v9)
    {
      (*(v9 + 2))(v9, 0, 0);
    }

    v16 = *(v25 + 24);
  }

  else
  {
LABEL_11:
    v12 = MEMORY[0x277CCA9B8];
    v28 = @"deviceNotInteractive";
    v13 = [MEMORY[0x277CCABB0] numberWithBool:v10];
    v29[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v15 = [v12 errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:v14];

    if (v9)
    {
      (*(v9 + 2))(v9, 0, v15);
    }

    v16 = *(v25 + 24);
  }

  _Block_object_dispose(&v24, 8);

  v17 = *MEMORY[0x277D85DE8];
  return v16 & 1;
}

void __76__WiFiSoftError_askToLaunchTapToRadarWithMessage_timeout_completionHandler___block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (v2[10])
  {
    if ([v2 _maxUIActionsReachedFor:v2[21]])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __76__WiFiSoftError_askToLaunchTapToRadarWithMessage_timeout_completionHandler___block_invoke_cold_1(v3);
      }
    }

    else
    {
      v8 = 0;
      CFUserNotificationDisplayAlert(*(a1 + 56), 0, 0, 0, 0, *(a1 + 40), @"File a radar now?", @"No", @"Yes", 0, &v8);
      if (v8 == 1)
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }

      v4 = *v3;
      v5 = *(*v3 + 168);
      if (!v5)
      {
        v6 = [MEMORY[0x277CBEB18] array];
        v7 = *(*v3 + 168);
        *(*v3 + 168) = v6;

        v4 = *v3;
        v5 = *(*v3 + 168);
      }

      [v4 _recordCurrentTimestampIn:v5];
    }
  }
}

- (id)tapToRadarWithURL:(id)a3 completionHandler:(id)a4
{
  v30[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__6;
  v27 = __Block_byref_object_dispose__6;
  v28 = 0;
  if (MKBGetDeviceLockState() == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = isDisplayOff();
  }

  if (_os_feature_enabled_impl() && ((MGGetBoolAnswer() | v8) & 1) == 0 && MGGetBoolAnswer() && MGGetBoolAnswer() && (v9 = objc_opt_class(), v6) && v9)
  {
    v10 = queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__WiFiSoftError_tapToRadarWithURL_completionHandler___block_invoke;
    block[3] = &unk_2789C7D70;
    block[4] = self;
    v22 = &v23;
    v21 = v7;
    v20 = v6;
    dispatch_sync(v10, block);
    v11 = v24[5];
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    v29 = @"deviceNotInteractive";
    v13 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    v30[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v15 = [v12 errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:v14];
    v16 = v24[5];
    v24[5] = v15;

    if (v7)
    {
      (*(v7 + 2))(v7, 0, v24[5]);
    }

    v11 = v24[5];
  }

  _Block_object_dispose(&v23, 8);

  v17 = *MEMORY[0x277D85DE8];

  return v11;
}

void __53__WiFiSoftError_tapToRadarWithURL_completionHandler___block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (v2[10])
  {
    if ([v2 _maxUIActionsReachedFor:v2[22]])
    {
      v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:35 userInfo:0];
      v5 = *(*(a1 + 56) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __53__WiFiSoftError_tapToRadarWithURL_completionHandler___block_invoke_cold_1(v3);
      }

      v7 = *(a1 + 48);
      if (v7)
      {
        (*(v7 + 16))(v7, 0, *(*(*(a1 + 56) + 8) + 40));
      }
    }

    else
    {
      v11 = [MEMORY[0x277CC1E80] defaultWorkspace];
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __53__WiFiSoftError_tapToRadarWithURL_completionHandler___block_invoke_147;
      v20 = &unk_2789C7D48;
      v12 = *(a1 + 40);
      v21 = *(a1 + 32);
      v22 = *(a1 + 48);
      [v11 openURL:v12 configuration:0 completionHandler:&v17];

      v13 = *(a1 + 32);
      v14 = v13[22];
      if (!v14)
      {
        v15 = [MEMORY[0x277CBEB18] array];
        v16 = *(*v3 + 176);
        *(*v3 + 176) = v15;

        v13 = *v3;
        v14 = *(*v3 + 176);
      }

      [v13 _recordCurrentTimestampIn:{v14, v17, v18, v19, v20, v21}];
    }
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:82 userInfo:0];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    MEMORY[0x2821F96F8](v8, v10);
  }
}

void __53__WiFiSoftError_tapToRadarWithURL_completionHandler___block_invoke_147(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __53__WiFiSoftError_tapToRadarWithURL_completionHandler___block_invoke_147_cold_1(a1);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }
}

- (void)_recordCurrentTimestampIn:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  [v4 timeIntervalSinceReferenceDate];
  v6 = [v3 numberWithDouble:?];
  [v5 addObject:v6];
}

- (int64_t)_countOf:(id)a3 withinInterval:(double)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if (a4 == 9.22337204e18)
    {
      v7 = [v5 count];
    }

    else
    {
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v9 = v8;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = v6;
      v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        v12 = v11;
        v7 = 0;
        v13 = *v19;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [*(*(&v18 + 1) + 8 * i) doubleValue];
            if (v9 - v15 < a4)
            {
              ++v7;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v12);
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)_maxNonUIActionsReachedFor:(id)a3
{
  v4 = a3;
  v7 = 0;
  if (v4)
  {
    v5 = [(WiFiSoftError *)self _countOf:v4 withinInterval:self->_intervalForMaxNonUIActions];
    v6 = [(WiFiSoftError *)self _countOf:v4 withinInterval:9.22337204e18];
    if (v5 >= self->_maxNonUIActions || v6 >= self->_maxOccurrences)
    {
      v7 = 1;
    }
  }

  return v7;
}

- (BOOL)_maxUIActionsReachedFor:(id)a3
{
  v4 = a3;
  v7 = 0;
  if (v4)
  {
    v5 = [(WiFiSoftError *)self _countOf:v4 withinInterval:self->_intervalForMaxUIActions];
    v6 = [(WiFiSoftError *)self _countOf:v4 withinInterval:9.22337204e18];
    if (v5 >= self->_maxUIActions || v6 >= self->_maxOccurrences)
    {
      v7 = 1;
    }
  }

  return v7;
}

- (void)_resetCount
{
  if (self->_enabled)
  {
    [(NSMutableArray *)self->_occurrenceTimestamps removeAllObjects];
  }
}

- (void)_addConfigurationData:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  metricSubmissionSamplingRate = self->_metricSubmissionSamplingRate;
  v6 = a3;
  v7 = [v4 numberWithInteger:metricSubmissionSamplingRate];
  [v6 setObject:v7 forKey:@"samplingRate"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_maxOccurrences];
  [v6 setObject:v8 forKey:@"maxOccurrences"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[NSMutableArray count](self->_occurrenceTimestamps, "count") == self->_maxOccurrences}];
  [v6 setObject:v9 forKey:@"reachedMaxDailyOccurrences"];
}

- (void)_addGenericMetricData:(id)a3
{
  v15 = a3;
  v4 = [(WiFiSoftError *)self _countOf:self->_occurrenceTimestamps withinInterval:9.22337204e18];
  v5 = v4;
  if (v4 > 1 || v4 == 1 && self->_lastTimestamp)
  {
    v6 = [(NSMutableArray *)self->_occurrenceTimestamps objectAtIndexedSubscript:v4 - 1];
    [v6 doubleValue];
    v8 = v7;

    if (v5 <= 1)
    {
      [(NSNumber *)self->_lastTimestamp doubleValue];
      v11 = v12;
    }

    else
    {
      v9 = [(NSMutableArray *)self->_occurrenceTimestamps objectAtIndexedSubscript:v5 - 2];
      [v9 doubleValue];
      v11 = v10;
    }

    v13 = [WiFiUsagePrivacyFilter getBinTimeInterval:1 As:v8 - v11];
    if (v13)
    {
      v14 = v13;
      [v15 setObject:v13 forKey:@"timeSinceLastOccurrenceBin"];
      [(WiFiSoftError *)self _addConfigurationData:v15];
    }
  }
}

+ (void)_submitSummaryReportMetric
{
  v45 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl() && (v2 = MGGetBoolAnswer(), MEMORY[0x2822170A0]) && !v2)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v4 = v3;
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.wifi.softerror", @"generic"];
    v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = currentSoftErrors;
    v7 = [obj countByEnumeratingWithState:&v33 objects:v44 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v34;
      v27 = *v34;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v34 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = [*(*(&v33 + 1) + 8 * i) pointerValue];
          [v11 creationDate];
          if (v4 - v12 >= 86400.0 && [v11 metricsEnabled])
          {
            v13 = [v11 name];
            [v6 setObject:v13 forKey:@"name"];

            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v14 = [v11 occurrenceTimestamps];
            v15 = [v14 countByEnumeratingWithState:&v29 objects:v43 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = 0;
              v18 = *v30;
              do
              {
                for (j = 0; j != v16; ++j)
                {
                  if (*v30 != v18)
                  {
                    objc_enumerationMutation(v14);
                  }

                  [*(*(&v29 + 1) + 8 * j) doubleValue];
                  if (v4 - v20 < 86400.0)
                  {
                    ++v17;
                  }
                }

                v16 = [v14 countByEnumeratingWithState:&v29 objects:v43 count:16];
              }

              while (v16);
            }

            else
            {
              v17 = 0;
            }

            v21 = [MEMORY[0x277CCABB0] numberWithInteger:v17];
            [v6 setObject:v21 forKey:@"occurrenceCountIn24hr"];

            [v11 _addConfigurationData:v6];
            v22 = [v11 occurrenceTimestamps];
            v23 = [v22 lastObject];
            [v11 setLastTimestamp:v23];

            [v11 _resetCount];
            v24 = v6;
            AnalyticsSendEventLazy();
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v25 = [v11 name];
              *buf = 136315650;
              v38 = "+[WiFiSoftError _submitSummaryReportMetric]";
              v39 = 2112;
              v40 = v25;
              v41 = 2112;
              v42 = v5;
              _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: SoftError <%@> submitted a summary in metric <%@>", buf, 0x20u);
            }

            v9 = v27;
            if (os_log_type_enabled(MEMORY[0x277D86228], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v38 = "+[WiFiSoftError _submitSummaryReportMetric]";
              v39 = 2112;
              v40 = v6;
              _os_log_impl(&dword_2332D7000, MEMORY[0x277D86228], OS_LOG_TYPE_DEFAULT, "%s: SoftError metric dictionary <%@>", buf, 0x16u);
            }

            [v24 removeAllObjects];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v33 objects:v44 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
  }

  v26 = *MEMORY[0x277D85DE8];
}

+ (void)_cloudAssetsFetchHandler:(id)a3
{
  v3 = a3;
  v4 = queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__WiFiSoftError__cloudAssetsFetchHandler___block_invoke;
  block[3] = &unk_2789C6630;
  v7 = v3;
  v5 = v3;
  dispatch_sync(v4, block);
}

void __42__WiFiSoftError__cloudAssetsFetchHandler___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __42__WiFiSoftError__cloudAssetsFetchHandler___block_invoke_cold_1();
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 softErrors];
    v4 = [v3 copy];
    v5 = cloudAssets;
    cloudAssets = v4;
  }

  if (cloudAssets)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v6 = currentSoftErrors;
    v7 = [v6 countByEnumeratingWithState:&v30 objects:v42 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v31;
      *&v8 = 136315906;
      v27 = v8;
      do
      {
        v11 = 0;
        do
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = [*(*(&v30 + 1) + 8 * v11) pointerValue];
          v13 = cloudAssets;
          v14 = [v12 name];
          v15 = [v13 objectForKey:v14];

          if (v15)
          {
            v16 = [v15 objectForKey:@"enabled"];
            v17 = [v16 integerValue];
            if (v16)
            {
              v18 = v17 > 1;
            }

            else
            {
              v18 = 1;
            }

            if (!v18)
            {
              v19 = v17;
              if ([v12 enabled] != v17)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  v28 = [v12 name];
                  v24 = [v12 enabled];
                  *buf = v27;
                  v35 = "+[WiFiSoftError _cloudAssetsFetchHandler:]_block_invoke";
                  v36 = 2112;
                  v37 = v28;
                  v38 = 2048;
                  v39 = v24;
                  v40 = 2048;
                  v41 = v19;
                  _os_log_error_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: Updating SoftError <%@> property <enabled> from %ld => %ld", buf, 0x2Au);
                }

                [v12 setEnabled:v19];
              }
            }

            v20 = [v15 objectForKey:@"metricsEnabled"];

            v21 = [v20 integerValue];
            if (v20)
            {
              v22 = v21 > 1;
            }

            else
            {
              v22 = 1;
            }

            if (!v22)
            {
              v23 = v21;
              if ([v12 metricsEnabled] != v21)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  v29 = [v12 name];
                  v25 = [v12 metricsEnabled];
                  *buf = v27;
                  v35 = "+[WiFiSoftError _cloudAssetsFetchHandler:]_block_invoke";
                  v36 = 2112;
                  v37 = v29;
                  v38 = 2048;
                  v39 = v25;
                  v40 = 2048;
                  v41 = v23;
                  _os_log_error_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: Updating SoftError <%@> property <metricsEnabled> from %ld => %ld", buf, 0x2Au);
                }

                [v12 setMetricsEnabled:v23];
              }
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v6 countByEnumeratingWithState:&v30 objects:v42 count:16];
      }

      while (v9);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

+ (void)_updateHUDWithHost:(id)a3 messageDict:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v6 count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v35 = v6;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[HUD]: HUD message info: %@", buf, 0xCu);
    }

    if (objc_opt_class() && objc_opt_class() && objc_opt_class() && objc_opt_class())
    {
      v27 = v5;
      v7 = [MEMORY[0x277CBEB18] array];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v30;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v30 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v29 + 1) + 8 * i);
            v14 = [v8 objectForKeyedSubscript:v13];
            v15 = [v14 description];

            v16 = [MEMORY[0x277CCAD18] queryItemWithName:v13 value:v15];
            [v7 addObject:v16];
          }

          v10 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v10);
      }

      v17 = objc_alloc_init(MEMORY[0x277CCACE0]);
      [v17 setScheme:@"wifiapp"];
      v5 = v27;
      [v17 setHost:v27];
      v18 = [v7 copy];
      [v17 setQueryItems:v18];

      v19 = [v17 URL];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v20 = [v19 absoluteString];
        *buf = 138412290;
        v35 = v20;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[HUD]: attempted to open url: %@", buf, 0xCu);
      }

      v21 = objc_alloc_init(MEMORY[0x277CC1F00]);
      v22 = objc_opt_new();
      [v22 setValue:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D0ABE8]];
      [v21 setFrontBoardOptions:v22];
      v23 = [MEMORY[0x277CC1E80] defaultWorkspace];
      v28 = 0;
      v24 = [v23 openURL:v19 configuration:v21 error:&v28];
      v25 = v28;

      if (v25 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        +[WiFiSoftError _updateHUDWithHost:messageDict:];
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[WiFiSoftError _updateHUDWithHost:messageDict:];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[WiFiSoftError _updateHUDWithHost:messageDict:];
  }

  v26 = *MEMORY[0x277D85DE8];
}

+ (void)_updateHUDWithMessage:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v7 = @"content";
    v8[0] = v3;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x277CBEC10];
  }

  [WiFiSoftError _updateHUDWithHost:@"banner" messageDict:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithName:andParams:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithName:(uint64_t *)a1 andParams:.cold.2(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithName:andParams:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithName:(uint64_t *)a1 andParams:.cold.4(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_1(a1, *MEMORY[0x277D85DE8]);
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Au);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithName:(uint64_t *)a1 andParams:.cold.5(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_1(a1, *MEMORY[0x277D85DE8]);
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Au);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithName:andParams:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __31__WiFiSoftError_incrementCount__block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_1(a1, *MEMORY[0x277D85DE8]);
  v2 = *(v1 + 16);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

void __51__WiFiSoftError_appendLogMessage_includeTimestamp___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_1(a1, *MEMORY[0x277D85DE8]);
  v3 = v1 + 64;
  v4 = *(v1 + 64);
  v2 = *(v3 + 8);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
  v10 = *MEMORY[0x277D85DE8];
}

void __29__WiFiSoftError_submitMetric__block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_1(a1, *MEMORY[0x277D85DE8]);
  v2 = *(v1 + 24);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

void __38__WiFiSoftError_submitMetricWithData___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_1(a1, *MEMORY[0x277D85DE8]);
  v2 = *(v1 + 24);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

void __49__WiFiSoftError_submitABCReportWithReason_event___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_1(a1, *MEMORY[0x277D85DE8]);
  v2 = *(v1 + 72);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void __49__WiFiSoftError_submitABCReportWithReason_event___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2_1(a1, *MEMORY[0x277D85DE8]);
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateHUDWithHost:messageDict:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateHUDWithHost:messageDict:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __47__WiFiSoftError_updateHUDWithHost_messageDict___block_invoke_125_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_1(a1, *MEMORY[0x277D85DE8]);
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
  v9 = *MEMORY[0x277D85DE8];
}

void __58__WiFiSoftError_askToLaunchTapToRadarWithMessage_timeout___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_1(a1, *MEMORY[0x277D85DE8]);
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
  v9 = *MEMORY[0x277D85DE8];
}

void __76__WiFiSoftError_askToLaunchTapToRadarWithMessage_timeout_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_1(a1, *MEMORY[0x277D85DE8]);
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
  v9 = *MEMORY[0x277D85DE8];
}

void __53__WiFiSoftError_tapToRadarWithURL_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_1(a1, *MEMORY[0x277D85DE8]);
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
  v9 = *MEMORY[0x277D85DE8];
}

void __53__WiFiSoftError_tapToRadarWithURL_completionHandler___block_invoke_147_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(*(a1 + 32) + 72);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

void __42__WiFiSoftError__cloudAssetsFetchHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_updateHUDWithHost:messageDict:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end