@interface PowerUIMLMacPredictor
- (id)getInputFeatures:(double)features events:(id)events pluginBatteryLevel:(unint64_t)level timeFromPlugin:(double)plugin pluginDate:(id)date withLog:(id)log;
@end

@implementation PowerUIMLMacPredictor

- (id)getInputFeatures:(double)features events:(id)events pluginBatteryLevel:(unint64_t)level timeFromPlugin:(double)plugin pluginDate:(id)date withLog:(id)log
{
  v126 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  dateCopy = date;
  logCopy = log;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v111 = [currentCalendar components:96 fromDate:dateCopy];

  hour = [v111 hour];
  v16 = 0.0;
  v17 = [PowerUIPredictorHelper events:eventsCopy forHourBin:1 date:dateCopy withMaxDuration:0.0];
  v18 = [PowerUIPredictorHelper events:eventsCopy forHourBin:2 date:dateCopy withMaxDuration:0.0];
  v19 = [PowerUIPredictorHelper events:eventsCopy forHourBin:4 date:dateCopy withMaxDuration:0.0];
  v20 = [PowerUIPredictorHelper events:eventsCopy forHourBin:8 date:dateCopy withMaxDuration:0.0];
  v21 = [PowerUIPredictorHelper events:eventsCopy forHourBin:16 date:dateCopy withMaxDuration:0.0];
  v22 = [PowerUIPredictorHelper events:eventsCopy forHourBin:24 date:dateCopy withMaxDuration:0.0];
  [PowerUIPredictorHelper standardDeviationOf:v17];
  v95 = v23;
  [PowerUIPredictorHelper standardDeviationOf:v18];
  v96 = v24;
  [PowerUIPredictorHelper standardDeviationOf:v19];
  v97 = v25;
  [PowerUIPredictorHelper standardDeviationOf:v20];
  v98 = v26;
  [PowerUIPredictorHelper standardDeviationOf:v21];
  v99 = v27;
  [PowerUIPredictorHelper standardDeviationOf:v22];
  v112 = v28;
  v105 = v17;
  [PowerUIPredictorHelper medianOf:v17];
  v30 = v29;
  v110 = v18;
  [PowerUIPredictorHelper medianOf:v18];
  v32 = v31;
  v104 = v19;
  [PowerUIPredictorHelper medianOf:v19];
  v34 = v33;
  v103 = v20;
  [PowerUIPredictorHelper medianOf:v20];
  v36 = v35;
  v102 = v21;
  [PowerUIPredictorHelper medianOf:v21];
  v38 = v37;
  v109 = v22;
  [PowerUIPredictorHelper medianOf:v22];
  v94 = v39;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:level];
  [dictionary setObject:v41 forKeyedSubscript:@"plugin_battery_level"];

  v42 = [MEMORY[0x277CCABB0] numberWithDouble:hour];
  [dictionary setObject:v42 forKeyedSubscript:@"hour"];

  v43 = MEMORY[0x277CCABB0];
  lastObject = [eventsCopy lastObject];
  endDate = [lastObject endDate];
  lastObject2 = [eventsCopy lastObject];
  startDate = [lastObject2 startDate];
  [endDate timeIntervalSinceDate:startDate];
  v49 = [v43 numberWithDouble:v48 / 3600.0];
  [dictionary setObject:v49 forKeyedSubscript:@"prev_charge_duration_1"];

  v106 = dateCopy;
  v108 = eventsCopy;
  v50 = [PowerUIPredictorHelper getUsageBucketsForEvents:eventsCopy forDate:dateCopy withLog:logCopy];
  +[PowerUIPredictorHelper hoursUntilUseFromBucketedUsage:withCurrentHour:withComponentsMinutes:](PowerUIPredictorHelper, "hoursUntilUseFromBucketedUsage:withCurrentHour:withComponentsMinutes:", v50, features, [v111 minute]);
  v51 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [dictionary setObject:v51 forKeyedSubscript:@"hours_until_use"];

  v52 = 0;
  do
  {
    v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"hour_plus_%d", v52];
    v54 = (v16 + features);
    if (v54 > 23)
    {
      v54 -= 24;
    }

    v55 = MEMORY[0x277CCABB0];
    v56 = [v50 objectAtIndexedSubscript:v54];
    [v56 doubleValue];
    v57 = [v55 numberWithDouble:?];
    [dictionary setObject:v57 forKeyedSubscript:v53];

    v16 = v16 + 1.0;
    v52 = (v52 + 1);
  }

  while (v52 != 6);
  v101 = v50;
  v58 = [MEMORY[0x277CCABB0] numberWithDouble:v30];
  [dictionary setObject:v58 forKeyedSubscript:@"med_dur_1"];

  v59 = [MEMORY[0x277CCABB0] numberWithDouble:v32];
  [dictionary setObject:v59 forKeyedSubscript:@"med_dur_2"];

  v60 = [MEMORY[0x277CCABB0] numberWithDouble:v34];
  [dictionary setObject:v60 forKeyedSubscript:@"med_dur_4"];

  v61 = [MEMORY[0x277CCABB0] numberWithDouble:v36];
  [dictionary setObject:v61 forKeyedSubscript:@"med_dur_8"];

  v62 = [MEMORY[0x277CCABB0] numberWithDouble:v38];
  [dictionary setObject:v62 forKeyedSubscript:@"med_dur_16"];

  v63 = [MEMORY[0x277CCABB0] numberWithDouble:v94];
  [dictionary setObject:v63 forKeyedSubscript:@"med_dur_24"];

  v64 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v110, "count")}];
  [dictionary setObject:v64 forKeyedSubscript:@"cnt_dur_2"];

  v65 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v109, "count")}];
  [dictionary setObject:v65 forKeyedSubscript:@"cnt_dur_24"];

  v66 = [MEMORY[0x277CCABB0] numberWithDouble:v95];
  [dictionary setObject:v66 forKeyedSubscript:@"std_dur_1"];

  v67 = [MEMORY[0x277CCABB0] numberWithDouble:v96];
  [dictionary setObject:v67 forKeyedSubscript:@"std_dur_2"];

  v68 = [MEMORY[0x277CCABB0] numberWithDouble:v97];
  [dictionary setObject:v68 forKeyedSubscript:@"std_dur_4"];

  v69 = [MEMORY[0x277CCABB0] numberWithDouble:v98];
  [dictionary setObject:v69 forKeyedSubscript:@"std_dur_8"];

  v70 = [MEMORY[0x277CCABB0] numberWithDouble:*&v99];
  [dictionary setObject:v70 forKeyedSubscript:@"std_dur_16"];

  v71 = [MEMORY[0x277CCABB0] numberWithDouble:v112];
  [dictionary setObject:v71 forKeyedSubscript:@"std_dur_24"];

  v100 = [objc_alloc(MEMORY[0x277CBFED0]) initWithDictionary:dictionary error:0];
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v72 = dictionary;
  allKeys = [dictionary allKeys];
  v74 = [allKeys countByEnumeratingWithState:&v114 objects:v125 count:16];
  if (v74)
  {
    v75 = v74;
    v76 = *v115;
    do
    {
      v77 = 0;
      do
      {
        if (*v115 != v76)
        {
          objc_enumerationMutation(allKeys);
        }

        v78 = *(*(&v114 + 1) + 8 * v77);
        v79 = logCopy;
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
        {
          v80 = [v72 objectForKeyedSubscript:v78];
          *buf = 138412546;
          v122 = v78;
          v123 = 2112;
          v124 = v80;
          _os_log_debug_impl(&dword_21B766000, v79, OS_LOG_TYPE_DEBUG, "input for feature '%@': %@", buf, 0x16u);
        }

        ++v77;
      }

      while (v75 != v77);
      v75 = [allKeys countByEnumeratingWithState:&v114 objects:v125 count:16];
    }

    while (v75);
  }

  [v106 timeIntervalSince1970];
  v82 = floor(v81);
  v119[0] = @"pluginDateAsInterval";
  v83 = [MEMORY[0x277CCABB0] numberWithDouble:v82];
  v120[0] = v83;
  v120[1] = v72;
  v84 = v72;
  v119[1] = @"features";
  v119[2] = @"dataVersion";
  v120[2] = &unk_282D4E188;
  v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v120 forKeys:v119 count:3];

  v86 = MEMORY[0x277CBEBC0];
  v118[0] = @"/var/mobile/Library/PowerUI";
  v118[1] = @"obc_features";
  v87 = [MEMORY[0x277CBEA60] arrayWithObjects:v118 count:2];
  v88 = [v86 fileURLWithPathComponents:v87];

  v113 = 0;
  [v85 writeToURL:v88 error:&v113];
  v89 = v113;
  if (v89)
  {
    if (os_log_type_enabled(logCopy, OS_LOG_TYPE_ERROR))
    {
      [PowerUIMLMacPredictor getInputFeatures:v89 events:logCopy pluginBatteryLevel:? timeFromPlugin:? pluginDate:? withLog:?];
    }
  }

  else
  {
    v90 = logCopy;
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
    {
      v91 = [MEMORY[0x277CCABB0] numberWithDouble:v82];
      *buf = 138412290;
      v122 = v91;
      _os_log_impl(&dword_21B766000, v90, OS_LOG_TYPE_DEFAULT, "Feature dict saved for plugin: %@", buf, 0xCu);
    }
  }

  v92 = *MEMORY[0x277D85DE8];

  return v100;
}

- (void)getInputFeatures:(uint64_t)a1 events:(NSObject *)a2 pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_21B766000, a2, OS_LOG_TYPE_ERROR, "Error saving latest features: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end