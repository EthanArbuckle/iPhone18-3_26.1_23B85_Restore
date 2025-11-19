@interface PowerUIMLMacPredictor
- (id)getInputFeatures:(double)a3 events:(id)a4 pluginBatteryLevel:(unint64_t)a5 timeFromPlugin:(double)a6 pluginDate:(id)a7 withLog:(id)a8;
@end

@implementation PowerUIMLMacPredictor

- (id)getInputFeatures:(double)a3 events:(id)a4 pluginBatteryLevel:(unint64_t)a5 timeFromPlugin:(double)a6 pluginDate:(id)a7 withLog:(id)a8
{
  v126 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a7;
  v13 = a8;
  v14 = [MEMORY[0x277CBEA80] currentCalendar];
  v111 = [v14 components:96 fromDate:v12];

  v15 = [v111 hour];
  v16 = 0.0;
  v17 = [PowerUIPredictorHelper events:v11 forHourBin:1 date:v12 withMaxDuration:0.0];
  v18 = [PowerUIPredictorHelper events:v11 forHourBin:2 date:v12 withMaxDuration:0.0];
  v19 = [PowerUIPredictorHelper events:v11 forHourBin:4 date:v12 withMaxDuration:0.0];
  v20 = [PowerUIPredictorHelper events:v11 forHourBin:8 date:v12 withMaxDuration:0.0];
  v21 = [PowerUIPredictorHelper events:v11 forHourBin:16 date:v12 withMaxDuration:0.0];
  v22 = [PowerUIPredictorHelper events:v11 forHourBin:24 date:v12 withMaxDuration:0.0];
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
  v40 = [MEMORY[0x277CBEB38] dictionary];
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  [v40 setObject:v41 forKeyedSubscript:@"plugin_battery_level"];

  v42 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
  [v40 setObject:v42 forKeyedSubscript:@"hour"];

  v43 = MEMORY[0x277CCABB0];
  v44 = [v11 lastObject];
  v45 = [v44 endDate];
  v46 = [v11 lastObject];
  v47 = [v46 startDate];
  [v45 timeIntervalSinceDate:v47];
  v49 = [v43 numberWithDouble:v48 / 3600.0];
  [v40 setObject:v49 forKeyedSubscript:@"prev_charge_duration_1"];

  v106 = v12;
  v108 = v11;
  v50 = [PowerUIPredictorHelper getUsageBucketsForEvents:v11 forDate:v12 withLog:v13];
  +[PowerUIPredictorHelper hoursUntilUseFromBucketedUsage:withCurrentHour:withComponentsMinutes:](PowerUIPredictorHelper, "hoursUntilUseFromBucketedUsage:withCurrentHour:withComponentsMinutes:", v50, a3, [v111 minute]);
  v51 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [v40 setObject:v51 forKeyedSubscript:@"hours_until_use"];

  v52 = 0;
  do
  {
    v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"hour_plus_%d", v52];
    v54 = (v16 + a3);
    if (v54 > 23)
    {
      v54 -= 24;
    }

    v55 = MEMORY[0x277CCABB0];
    v56 = [v50 objectAtIndexedSubscript:v54];
    [v56 doubleValue];
    v57 = [v55 numberWithDouble:?];
    [v40 setObject:v57 forKeyedSubscript:v53];

    v16 = v16 + 1.0;
    v52 = (v52 + 1);
  }

  while (v52 != 6);
  v101 = v50;
  v58 = [MEMORY[0x277CCABB0] numberWithDouble:v30];
  [v40 setObject:v58 forKeyedSubscript:@"med_dur_1"];

  v59 = [MEMORY[0x277CCABB0] numberWithDouble:v32];
  [v40 setObject:v59 forKeyedSubscript:@"med_dur_2"];

  v60 = [MEMORY[0x277CCABB0] numberWithDouble:v34];
  [v40 setObject:v60 forKeyedSubscript:@"med_dur_4"];

  v61 = [MEMORY[0x277CCABB0] numberWithDouble:v36];
  [v40 setObject:v61 forKeyedSubscript:@"med_dur_8"];

  v62 = [MEMORY[0x277CCABB0] numberWithDouble:v38];
  [v40 setObject:v62 forKeyedSubscript:@"med_dur_16"];

  v63 = [MEMORY[0x277CCABB0] numberWithDouble:v94];
  [v40 setObject:v63 forKeyedSubscript:@"med_dur_24"];

  v64 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v110, "count")}];
  [v40 setObject:v64 forKeyedSubscript:@"cnt_dur_2"];

  v65 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v109, "count")}];
  [v40 setObject:v65 forKeyedSubscript:@"cnt_dur_24"];

  v66 = [MEMORY[0x277CCABB0] numberWithDouble:v95];
  [v40 setObject:v66 forKeyedSubscript:@"std_dur_1"];

  v67 = [MEMORY[0x277CCABB0] numberWithDouble:v96];
  [v40 setObject:v67 forKeyedSubscript:@"std_dur_2"];

  v68 = [MEMORY[0x277CCABB0] numberWithDouble:v97];
  [v40 setObject:v68 forKeyedSubscript:@"std_dur_4"];

  v69 = [MEMORY[0x277CCABB0] numberWithDouble:v98];
  [v40 setObject:v69 forKeyedSubscript:@"std_dur_8"];

  v70 = [MEMORY[0x277CCABB0] numberWithDouble:*&v99];
  [v40 setObject:v70 forKeyedSubscript:@"std_dur_16"];

  v71 = [MEMORY[0x277CCABB0] numberWithDouble:v112];
  [v40 setObject:v71 forKeyedSubscript:@"std_dur_24"];

  v100 = [objc_alloc(MEMORY[0x277CBFED0]) initWithDictionary:v40 error:0];
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v72 = v40;
  v73 = [v40 allKeys];
  v74 = [v73 countByEnumeratingWithState:&v114 objects:v125 count:16];
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
          objc_enumerationMutation(v73);
        }

        v78 = *(*(&v114 + 1) + 8 * v77);
        v79 = v13;
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
      v75 = [v73 countByEnumeratingWithState:&v114 objects:v125 count:16];
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
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [PowerUIMLMacPredictor getInputFeatures:v89 events:v13 pluginBatteryLevel:? timeFromPlugin:? pluginDate:? withLog:?];
    }
  }

  else
  {
    v90 = v13;
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