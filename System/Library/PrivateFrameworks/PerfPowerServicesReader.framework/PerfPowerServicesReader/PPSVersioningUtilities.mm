@interface PPSVersioningUtilities
+ (id)_groupMetricsByBuild:(id)a3 withFilepath:(id)a4;
+ (id)buildEventsWithFilepath:(id)a3;
+ (id)timelineWithFilepath:(id)a3 andMetrics:(id)a4;
@end

@implementation PPSVersioningUtilities

+ (id)buildEventsWithFilepath:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__PPSVersioningUtilities_buildEventsWithFilepath___block_invoke;
  block[3] = &unk_279A11428;
  v10 = v3;
  v4 = buildEventsWithFilepath__onceToken;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&buildEventsWithFilepath__onceToken, block);
  }

  v6 = buildEventsWithFilepath__result;
  v7 = buildEventsWithFilepath__result;

  return v6;
}

void __50__PPSVersioningUtilities_buildEventsWithFilepath___block_invoke(uint64_t a1)
{
  v2 = PPSReaderLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __50__PPSVersioningUtilities_buildEventsWithFilepath___block_invoke_cold_1();
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = @"Build";
    v5 = [PPSOffDeviceIngesterUtilities metricDefinitionForFilepath:*(a1 + 32) subsystem:@"ConfigMetrics" category:@"DeviceConfig" metricName:@"Build"];
    if (v5)
    {
LABEL_11:
      v8 = v5;
      v9 = *(a1 + 32);
      goto LABEL_14;
    }
  }

  else
  {
    v4 = @"Build";
    v6 = [PPSOnDeviceIngesterUtilities metricDefinitionForSubsystem:@"ConfigMetrics" category:@"DeviceConfig" metricName:@"Build"];
    if (v6)
    {
      goto LABEL_13;
    }
  }

  v7 = PPSReaderLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __50__PPSVersioningUtilities_buildEventsWithFilepath___block_invoke_cold_2();
  }

  if (v3)
  {
    v4 = @"build";
    v5 = [PPSOffDeviceIngesterUtilities metricDefinitionForFilepath:*(a1 + 32) subsystem:@"PPTStorageOperator" category:@"Config" metricName:@"build"];
    goto LABEL_11;
  }

  v4 = @"build";
  v6 = [PPSOnDeviceIngesterUtilities metricDefinitionForSubsystem:@"PPTStorageOperator" category:@"Config" metricName:@"build"];
LABEL_13:
  v8 = v6;
  v9 = [PPSOnDeviceIngesterUtilities filepathForMetricDefinition:v6];
LABEL_14:
  v10 = v9;
  v11 = [PPSDataIngesterCommonUtilities dataSourceForMetricDefinition:v8];
  if (v8)
  {
LABEL_20:
    v16 = [PPSDataIngesterRegistry dataIngesterForFilepath:v10 requestType:0];
    v17 = [MEMORY[0x277CBEB98] setWithObject:v4];
    v18 = [[PPSTimeSeriesRequest alloc] initWithMetrics:v17 predicate:0 timeFilter:0 limitCount:0 offsetCount:0 readDirection:1];
    v24 = 0;
    v19 = [v16 parseDataForRequest:v18 outError:&v24];
    v20 = v24;
    v21 = buildEventsWithFilepath__result;
    buildEventsWithFilepath__result = v19;

    v22 = PPSReaderLog();
    v23 = v22;
    if (v20)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        __50__PPSVersioningUtilities_buildEventsWithFilepath___block_invoke_cold_3();
      }
    }

    else if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      __50__PPSVersioningUtilities_buildEventsWithFilepath___block_invoke_cold_4(v23);
    }

    goto LABEL_26;
  }

  v12 = [PPSDataIngesterCommonUtilities fileTypeForFilepath:v10];
  if (v12 == 2)
  {
    v13 = @"PPTStorageOperator";
    v14 = @"Config_1095_1";
    goto LABEL_19;
  }

  if (v12 == 1)
  {
    v13 = @"PLConfigAgent";
    v14 = @"EventNone_Config";
LABEL_19:
    v15 = [PPSOffDeviceIngesterUtilities dataSourceForFilepath:v10 subsystem:v13 category:v14];

    v11 = v15;
    goto LABEL_20;
  }

  v16 = PPSReaderLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    __50__PPSVersioningUtilities_buildEventsWithFilepath___block_invoke_cold_5();
  }

LABEL_26:
}

+ (id)timelineWithFilepath:(id)a3 andMetrics:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (a1)
  {
    v31 = v7;
    v34 = [PPSVersioningUtilities _groupMetricsByBuild:v7 withFilepath:v6];
    v8 = [v34 allKeys];
    v9 = [v8 sortedArrayUsingSelector:sel_compare_];

    v32 = v6;
    v10 = [PPSTimestampConverterRegistry converterForFilepath:v6];
    v11 = MEMORY[0x277CCABB0];
    v12 = [MEMORY[0x277CBEAA8] date];
    [v12 timeIntervalSince1970];
    v29 = v10;
    [v10 monotonicTimeFromEpochTime:?];
    v13 = [v11 numberWithDouble:?];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v30 = v9;
    obj = [v9 reverseObjectEnumerator];
    v14 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v37;
      do
      {
        v17 = 0;
        v18 = v13;
        do
        {
          if (*v37 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v36 + 1) + 8 * v17);
          v20 = [v34 objectForKeyedSubscript:v19];
          v21 = objc_alloc(MEMORY[0x277CCA970]);
          v22 = MEMORY[0x277CBEAA8];
          [v19 doubleValue];
          v23 = [v22 dateWithTimeIntervalSince1970:?];
          v24 = MEMORY[0x277CBEAA8];
          [v18 doubleValue];
          v25 = [v24 dateWithTimeIntervalSince1970:?];
          v26 = [v21 initWithStartDate:v23 endDate:v25];

          [v35 setObject:v20 forKeyedSubscript:v26];
          v13 = v19;

          ++v17;
          v18 = v13;
        }

        while (v15 != v17);
        v15 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v15);
    }

    v7 = v31;
    v6 = v32;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v35;
}

+ (id)_groupMetricsByBuild:(id)a3 withFilepath:(id)a4
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v5;
  v47 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
  if (v47)
  {
    v46 = *v57;
    v49 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v57 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v48 = v9;
        v10 = *(*(&v56 + 1) + 8 * v9);
        v11 = [v10 subsystem];
        v12 = [v10 category];
        v13 = [v10 name];
        if (v6)
        {
          [PPSOffDeviceIngesterUtilities metricDefinitionHistoryForFilepath:v6 subsystem:v11 category:v12 metricName:v13];
        }

        else
        {
          [PPSOnDeviceIngesterUtilities metricDefinitionHistoryForSubsystem:v11 category:v12 metricName:v13];
        }
        v14 = ;

        v15 = v14;
        if (v14)
        {
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v50 = v14;
          v16 = [v50 countByEnumeratingWithState:&v52 objects:v62 count:16];
          if (v16)
          {
            v17 = v16;
            v45 = v14;
            v51 = *v53;
            while (1)
            {
              v18 = 0;
              do
              {
                if (*v53 != v51)
                {
                  objc_enumerationMutation(v50);
                }

                v19 = *(*(&v52 + 1) + 8 * v18);
                v20 = [v19 build];
                v21 = [v8 objectForKeyedSubscript:v20];

                if (v21)
                {
                  goto LABEL_20;
                }

                v22 = MEMORY[0x277CCAC30];
                v23 = [v19 build];
                v24 = [v19 build];
                v25 = [v22 predicateWithFormat:@"(build == %@ OR Build == %@)", v23, v24];

                v26 = [PPSVersioningUtilities buildEventsWithFilepath:v49];
                v27 = [v26 filteredTimeSeriesUsingPredicate:v25];

                v28 = MEMORY[0x277CCABB0];
                v29 = [v27 firstObject];
                [v29 monotonicTimestamp];
                v30 = [v28 numberWithDouble:?];

                v31 = PPSReaderLog();
                v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);
                if (v30)
                {
                  if (v32)
                  {
                    v37 = [v19 build];
                    *buf = 138412546;
                    v64 = v37;
                    v65 = 2112;
                    v66 = v30;
                    _os_log_debug_impl(&dword_25E225000, v31, OS_LOG_TYPE_DEBUG, "Found build timestamp for build '%@': '%@'", buf, 0x16u);
                  }

                  v33 = [v19 build];
                  [v8 setObject:v30 forKey:v33];

LABEL_20:
                  v34 = [v19 build];
                  v25 = [v8 objectForKeyedSubscript:v34];

                  v35 = [v7 objectForKeyedSubscript:v25];

                  if (!v35)
                  {
                    v36 = objc_opt_new();
                    [v7 setObject:v36 forKeyedSubscript:v25];
                  }

                  v27 = [v7 objectForKeyedSubscript:v25];
                  v30 = [v19 name];
                  [v27 setObject:v19 forKeyedSubscript:v30];
                  goto LABEL_23;
                }

                if (v32)
                {
                  [(PPSVersioningUtilities *)v60 _groupMetricsByBuild:v19 withFilepath:&v61, v31];
                }

LABEL_23:
                ++v18;
              }

              while (v17 != v18);
              v38 = [v50 countByEnumeratingWithState:&v52 objects:v62 count:16];
              v17 = v38;
              if (!v38)
              {
                v6 = v49;
                v15 = v45;
                goto LABEL_33;
              }
            }
          }

          v6 = v49;
        }

        else
        {
          v50 = PPSReaderLog();
          v6 = v49;
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            v39 = [v10 subsystem];
            v40 = [v10 category];
            *buf = 138412546;
            v64 = v39;
            v65 = 2112;
            v66 = v40;
            _os_log_error_impl(&dword_25E225000, v50, OS_LOG_TYPE_ERROR, "No metric history found for '%@::%@'", buf, 0x16u);
          }
        }

LABEL_33:

        v9 = v48 + 1;
      }

      while (v48 + 1 != v47);
      v47 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
    }

    while (v47);
  }

  v41 = [v7 copy];
  v42 = *MEMORY[0x277D85DE8];

  return v41;
}

void __50__PPSVersioningUtilities_buildEventsWithFilepath___block_invoke_cold_4(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = buildEventsWithFilepath__result;
  _os_log_debug_impl(&dword_25E225000, log, OS_LOG_TYPE_DEBUG, "Successfully read build events = %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)_groupMetricsByBuild:(void *)a3 withFilepath:(NSObject *)a4 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 build];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_25E225000, a4, OS_LOG_TYPE_DEBUG, "Failed to find timestamp for build '%@', skipping...", a1, 0xCu);
}

@end