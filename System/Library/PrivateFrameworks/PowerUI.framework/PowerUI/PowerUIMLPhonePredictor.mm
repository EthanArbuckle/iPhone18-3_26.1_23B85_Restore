@interface PowerUIMLPhonePredictor
- (id)getInputFeatures:(double)features events:(id)events pluginBatteryLevel:(unint64_t)level timeFromPlugin:(double)plugin pluginDate:(id)date withLog:(id)log;
- (id)getMultiArrayForFeatureDict:(id)dict;
@end

@implementation PowerUIMLPhonePredictor

- (id)getInputFeatures:(double)features events:(id)events pluginBatteryLevel:(unint64_t)level timeFromPlugin:(double)plugin pluginDate:(id)date withLog:(id)log
{
  v164 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  logCopy = log;
  eventsCopy = events;
  v12 = [PowerUIPredictorHelper filterEventsSortedByStartDateAscending:eventsCopy startsBefore:dateCopy dynamicallyAroundDate:dateCopy withHourBinWidth:1];
  v13 = [PowerUIPredictorHelper filterEventsSortedByStartDateAscending:eventsCopy startsBefore:dateCopy dynamicallyAroundDate:dateCopy withHourBinWidth:2];
  v14 = [PowerUIPredictorHelper filterEventsSortedByStartDateAscending:eventsCopy startsBefore:dateCopy dynamicallyAroundDate:dateCopy withHourBinWidth:4];
  v15 = [PowerUIPredictorHelper filterEventsSortedByStartDateAscending:eventsCopy startsBefore:dateCopy dynamicallyAroundDate:dateCopy withHourBinWidth:8];
  v16 = [PowerUIPredictorHelper filterEventsSortedByStartDateAscending:eventsCopy startsBefore:dateCopy dynamicallyAroundDate:dateCopy withHourBinWidth:16];
  v17 = [PowerUIPredictorHelper filterEventsSortedByStartDateAscending:eventsCopy startsBefore:dateCopy dynamicallyAroundDate:dateCopy withHourBinWidth:24];

  v18 = [PowerUIPredictorHelper filterEvents:v12 startOnSameWeekdayAs:dateCopy];
  v144 = v13;
  v148 = [PowerUIPredictorHelper filterEvents:v13 startOnSameWeekdayAs:dateCopy];
  v19 = v14;
  v116 = v14;
  v20 = [PowerUIPredictorHelper filterEvents:v14 startOnSameWeekdayAs:dateCopy];
  v147 = [PowerUIPredictorHelper filterEvents:v15 startOnSameWeekdayAs:dateCopy];
  v128 = dateCopy;
  v146 = [PowerUIPredictorHelper filterEvents:v17 startOnSameWeekdayAs:dateCopy];
  v145 = v12;
  v21 = [PowerUIPredictorHelper getDurationsFromEvents:v12 withUnit:3600.0 cappedAt:0.0];
  v22 = [PowerUIPredictorHelper getDurationsFromEvents:v13 withUnit:3600.0 cappedAt:0.0];
  v23 = [PowerUIPredictorHelper getDurationsFromEvents:v19 withUnit:3600.0 cappedAt:0.0];
  v151 = v15;
  v24 = [PowerUIPredictorHelper getDurationsFromEvents:v15 withUnit:3600.0 cappedAt:0.0];
  v150 = v16;
  v25 = [PowerUIPredictorHelper getDurationsFromEvents:v16 withUnit:3600.0 cappedAt:0.0];
  v149 = v17;
  v26 = [PowerUIPredictorHelper getDurationsFromEvents:v17 withUnit:3600.0 cappedAt:0.0];
  v130 = v18;
  v143 = [PowerUIPredictorHelper getDurationsFromEvents:v18 withUnit:3600.0 cappedAt:0.0];
  v142 = [PowerUIPredictorHelper getDurationsFromEvents:v148 withUnit:3600.0 cappedAt:0.0];
  v129 = v20;
  v27 = [PowerUIPredictorHelper getDurationsFromEvents:v20 withUnit:3600.0 cappedAt:0.0];
  v28 = [PowerUIPredictorHelper getDurationsFromEvents:v147 withUnit:3600.0 cappedAt:0.0];
  v29 = [PowerUIPredictorHelper getDurationsFromEvents:v146 withUnit:3600.0 cappedAt:0.0];
  [PowerUIPredictorHelper standardDeviationOf:v21];
  v136 = v30;
  [PowerUIPredictorHelper standardDeviationOf:v22];
  v137 = v31;
  [PowerUIPredictorHelper standardDeviationOf:v23];
  v140 = v32;
  [PowerUIPredictorHelper standardDeviationOf:v24];
  v34 = v33;
  [PowerUIPredictorHelper standardDeviationOf:v25];
  v36 = v35;
  [PowerUIPredictorHelper standardDeviationOf:v26];
  v38 = v37;
  [PowerUIPredictorHelper standardDeviationOf:v27];
  v40 = v39;
  [PowerUIPredictorHelper medianOf:v21];
  v42 = v41;
  v126 = v22;
  [PowerUIPredictorHelper medianOf:v22];
  v131 = v43;
  v125 = v23;
  v44 = v23;
  v45 = v116;
  [PowerUIPredictorHelper medianOf:v44];
  v132 = v46;
  v124 = v24;
  [PowerUIPredictorHelper medianOf:v24];
  v133 = v47;
  v123 = v25;
  [PowerUIPredictorHelper medianOf:v25];
  v134 = v48;
  v122 = v26;
  [PowerUIPredictorHelper medianOf:v26];
  v135 = v49;
  [PowerUIPredictorHelper medianOf:v143];
  v139 = v50;
  [PowerUIPredictorHelper medianOf:v142];
  v141 = v51;
  v121 = v27;
  [PowerUIPredictorHelper medianOf:v27];
  v53 = v52;
  v120 = v28;
  [PowerUIPredictorHelper medianOf:v28];
  v55 = v54;
  v119 = v29;
  [PowerUIPredictorHelper medianOf:v29];
  v57 = v56;
  v58 = logCopy;
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:level];
    v60 = [MEMORY[0x277CCABB0] numberWithDouble:features];
    v61 = [MEMORY[0x277CCABB0] numberWithDouble:plugin];
    *buf = 138412802;
    v159 = *&v59;
    v160 = 2112;
    v161 = *&v60;
    v162 = 2112;
    v163 = *&v61;
    _os_log_impl(&dword_21B766000, v58, OS_LOG_TYPE_DEFAULT, "Model inputs: PluginBatteryLevel=%@, Hour=%@, TimeFromPlugin=%@", buf, 0x20u);

    v45 = v116;
  }

  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
  {
    [PowerUIMLPhonePredictor getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:];
  }

  v62 = v58;
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
  {
    v63 = [v145 count];
    *buf = 134218496;
    v159 = *&v63;
    v160 = 2048;
    v161 = v136;
    v162 = 2048;
    v163 = v42;
    _os_log_impl(&dword_21B766000, v62, OS_LOG_TYPE_DEFAULT, "Model inputs for hourBin1: count %lu, std_dur_1: %f, med_dur_1: %lf", buf, 0x20u);
  }

  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
  {
    [PowerUIMLPhonePredictor getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:];
  }

  v64 = v62;
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    v65 = [v144 count];
    *buf = 134218496;
    v159 = *&v65;
    v160 = 2048;
    v161 = v137;
    v162 = 2048;
    v163 = v131;
    _os_log_impl(&dword_21B766000, v64, OS_LOG_TYPE_DEFAULT, "Model inputs for hourBin2: count %lu, std_dur_2: %f, med_dur_2: %lf", buf, 0x20u);
  }

  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
  {
    [PowerUIMLPhonePredictor getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:];
  }

  v66 = v64;
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
  {
    v67 = [v45 count];
    *buf = 134218496;
    v159 = *&v67;
    v160 = 2048;
    v161 = v140;
    v162 = 2048;
    v163 = v132;
    _os_log_impl(&dword_21B766000, v66, OS_LOG_TYPE_DEFAULT, "Model inputs for hourBin4: count %lu, std_dur_4: %f, med_dur_4: %lf", buf, 0x20u);
  }

  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
  {
    [PowerUIMLPhonePredictor getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:];
  }

  v68 = v66;
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
  {
    v69 = [v151 count];
    *buf = 134218496;
    v159 = *&v69;
    v160 = 2048;
    v161 = v34;
    v162 = 2048;
    v163 = v133;
    _os_log_impl(&dword_21B766000, v68, OS_LOG_TYPE_DEFAULT, "Model inputs for hourBin8: count %lu, std_dur_8: %f, med_dur_8: %lf", buf, 0x20u);
  }

  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
  {
    [PowerUIMLPhonePredictor getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:];
  }

  v70 = v68;
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
  {
    v71 = [v150 count];
    *buf = 134218496;
    v159 = *&v71;
    v160 = 2048;
    v161 = v36;
    v162 = 2048;
    v163 = v134;
    _os_log_impl(&dword_21B766000, v70, OS_LOG_TYPE_DEFAULT, "Model inputs for hourBin16: count %lu, std_dur_16: %f, med_dur_16: %lf", buf, 0x20u);
  }

  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
  {
    [PowerUIMLPhonePredictor getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:];
  }

  v72 = v70;
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    v73 = [v149 count];
    *buf = 134218496;
    v159 = *&v73;
    v160 = 2048;
    v161 = v38;
    v162 = 2048;
    v163 = v135;
    _os_log_impl(&dword_21B766000, v72, OS_LOG_TYPE_DEFAULT, "Model inputs for hourBin24: count %lu, std_dur_24: %f, med_dur_24: %lf", buf, 0x20u);
  }

  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
  {
    [PowerUIMLPhonePredictor getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:];
  }

  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v159 = v139;
    _os_log_impl(&dword_21B766000, v72, OS_LOG_TYPE_DEFAULT, "Model inputs for weekday1: weekday_med_dur_1: %lf", buf, 0xCu);
  }

  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
  {
    [PowerUIMLPhonePredictor getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:];
  }

  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v159 = v141;
    _os_log_impl(&dword_21B766000, v72, OS_LOG_TYPE_DEFAULT, "Model inputs for weekday2: weekday_med_dur_2: %lf", buf, 0xCu);
  }

  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
  {
    [PowerUIMLPhonePredictor getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:];
  }

  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v159 = v53;
    v160 = 2048;
    v161 = v40;
    _os_log_impl(&dword_21B766000, v72, OS_LOG_TYPE_DEFAULT, "Model inputs for weekday4: weekday_med_dur_4: %lf, weekday_std_dur_4: %lf", buf, 0x16u);
  }

  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
  {
    [PowerUIMLPhonePredictor getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:];
  }

  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v159 = v55;
    _os_log_impl(&dword_21B766000, v72, OS_LOG_TYPE_DEFAULT, "Model inputs for weekday8: weekday_med_dur_8: %lf", buf, 0xCu);
  }

  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
  {
    [PowerUIMLPhonePredictor getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:];
  }

  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v159 = v57;
    _os_log_impl(&dword_21B766000, v72, OS_LOG_TYPE_DEFAULT, "Model inputs for weekday24: weekday_med_dur_24: %lf", buf, 0xCu);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v75 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:level];
  [dictionary setObject:v75 forKeyedSubscript:@"plugin_battery_level"];

  v76 = [MEMORY[0x277CCABB0] numberWithDouble:plugin];
  [dictionary setObject:v76 forKeyedSubscript:@"time_from_plugin"];

  v77 = [MEMORY[0x277CCABB0] numberWithDouble:v42];
  [dictionary setObject:v77 forKeyedSubscript:@"med_dur_1"];

  v78 = [MEMORY[0x277CCABB0] numberWithDouble:v131];
  [dictionary setObject:v78 forKeyedSubscript:@"med_dur_2"];

  v79 = [MEMORY[0x277CCABB0] numberWithDouble:v132];
  [dictionary setObject:v79 forKeyedSubscript:@"med_dur_4"];

  v80 = [MEMORY[0x277CCABB0] numberWithDouble:v133];
  [dictionary setObject:v80 forKeyedSubscript:@"med_dur_8"];

  v81 = [MEMORY[0x277CCABB0] numberWithDouble:v134];
  [dictionary setObject:v81 forKeyedSubscript:@"med_dur_16"];

  v82 = [MEMORY[0x277CCABB0] numberWithDouble:v135];
  [dictionary setObject:v82 forKeyedSubscript:@"med_dur_24"];

  v83 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v145, "count")}];
  [dictionary setObject:v83 forKeyedSubscript:@"cnt_dur_1"];

  v84 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v144, "count")}];
  [dictionary setObject:v84 forKeyedSubscript:@"cnt_dur_2"];

  v85 = v45;
  v86 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v45, "count")}];
  [dictionary setObject:v86 forKeyedSubscript:@"cnt_dur_4"];

  v87 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v151, "count")}];
  [dictionary setObject:v87 forKeyedSubscript:@"cnt_dur_8"];

  v88 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v150, "count")}];
  [dictionary setObject:v88 forKeyedSubscript:@"cnt_dur_16"];

  v89 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v149, "count")}];
  [dictionary setObject:v89 forKeyedSubscript:@"cnt_dur_24"];

  v90 = [MEMORY[0x277CCABB0] numberWithDouble:v136];
  [dictionary setObject:v90 forKeyedSubscript:@"std_dur_1"];

  v91 = [MEMORY[0x277CCABB0] numberWithDouble:v137];
  [dictionary setObject:v91 forKeyedSubscript:@"std_dur_2"];

  v92 = [MEMORY[0x277CCABB0] numberWithDouble:v140];
  [dictionary setObject:v92 forKeyedSubscript:@"std_dur_4"];

  v93 = [MEMORY[0x277CCABB0] numberWithDouble:v34];
  [dictionary setObject:v93 forKeyedSubscript:@"std_dur_8"];

  v94 = [MEMORY[0x277CCABB0] numberWithDouble:v36];
  [dictionary setObject:v94 forKeyedSubscript:@"std_dur_16"];

  v95 = [MEMORY[0x277CCABB0] numberWithDouble:v38];
  [dictionary setObject:v95 forKeyedSubscript:@"std_dur_24"];

  v96 = [MEMORY[0x277CCABB0] numberWithDouble:v139];
  [dictionary setObject:v96 forKeyedSubscript:@"weekday_med_dur_1"];

  v97 = [MEMORY[0x277CCABB0] numberWithDouble:v141];
  [dictionary setObject:v97 forKeyedSubscript:@"weekday_med_dur_2"];

  v98 = [MEMORY[0x277CCABB0] numberWithDouble:v53];
  [dictionary setObject:v98 forKeyedSubscript:@"weekday_med_dur_4"];

  v99 = [MEMORY[0x277CCABB0] numberWithDouble:v55];
  [dictionary setObject:v99 forKeyedSubscript:@"weekday_med_dur_8"];

  v100 = [MEMORY[0x277CCABB0] numberWithDouble:v57];
  [dictionary setObject:v100 forKeyedSubscript:@"weekday_med_dur_24"];

  v101 = [MEMORY[0x277CCABB0] numberWithDouble:v40];
  [dictionary setObject:v101 forKeyedSubscript:@"weekday_std_dur_4"];

  v102 = [objc_alloc(MEMORY[0x277CBFED0]) initWithDictionary:dictionary error:0];
  [v128 timeIntervalSince1970];
  v104 = floor(v103);
  v156[0] = @"pluginDateAsInterval";
  v105 = [MEMORY[0x277CCABB0] numberWithDouble:v104];
  v157[0] = v105;
  v157[1] = dictionary;
  v156[1] = @"features";
  v156[2] = @"dataVersion";
  v157[2] = &unk_282D4E140;
  v106 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v157 forKeys:v156 count:3];

  v107 = MEMORY[0x277CBEBC0];
  v155[0] = @"/var/mobile/Library/PowerUI";
  v155[1] = @"obc_features";
  v108 = [MEMORY[0x277CBEA60] arrayWithObjects:v155 count:2];
  v109 = [v107 fileURLWithPathComponents:v108];

  v154 = 0;
  [v106 writeToURL:v109 error:&v154];
  v110 = v154;
  if (v110)
  {
    v153.receiver = self;
    v153.super_class = PowerUIMLPhonePredictor;
    v111 = [(PowerUIMLTwoStageModelPredictor *)&v153 log];
    if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
    {
      [PowerUIMLPhonePredictor getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:];
    }
  }

  else
  {
    v152.receiver = self;
    v152.super_class = PowerUIMLPhonePredictor;
    v111 = [(PowerUIMLTwoStageModelPredictor *)&v152 log];
    if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
    {
      v112 = [MEMORY[0x277CCABB0] numberWithDouble:v104];
      *buf = 138412290;
      v159 = *&v112;
      _os_log_impl(&dword_21B766000, v111, OS_LOG_TYPE_DEFAULT, "Feature dict saved for plugin: %@", buf, 0xCu);
    }
  }

  v113 = *MEMORY[0x277D85DE8];

  return v102;
}

- (id)getMultiArrayForFeatureDict:(id)dict
{
  v32 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  array = [MEMORY[0x277CBEB18] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [&unk_282D4EA10 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (!v5)
  {
    goto LABEL_15;
  }

  v7 = v5;
  v8 = array;
  v21 = 0;
  v9 = *v26;
  *&v6 = 138412290;
  v20 = v6;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v26 != v9)
      {
        objc_enumerationMutation(&unk_282D4EA10);
      }

      v11 = *(*(&v25 + 1) + 8 * i);
      v12 = MEMORY[0x277CCABB0];
      v13 = [dictCopy objectForKeyedSubscript:{v11, v20}];
      [v13 doubleValue];
      v14 = [v12 numberWithDouble:?];

      if (v14)
      {
        [v8 addObject:v14];
      }

      else
      {
        v24.receiver = self;
        v24.super_class = PowerUIMLPhonePredictor;
        v15 = [(PowerUIMLTwoStageModelPredictor *)&v24 log];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = v20;
          v30 = v11;
          _os_log_error_impl(&dword_21B766000, v15, OS_LOG_TYPE_ERROR, "Error: feature value for key '%@' is nil", buf, 0xCu);
        }

        v21 = 1;
      }
    }

    v7 = [&unk_282D4EA10 countByEnumeratingWithState:&v25 objects:v31 count:16];
  }

  while (v7);
  array = v8;
  if (v21)
  {
    v16 = 0;
  }

  else
  {
LABEL_15:
    v17 = [MEMORY[0x277CBEA60] arrayWithArray:array];
    v23.receiver = self;
    v23.super_class = PowerUIMLPhonePredictor;
    v16 = [(PowerUIMLTwoStageModelPredictor *)&v23 arrayWithShape:&unk_282D4EA28 values:v17 type:65568];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4(&dword_21B766000, v0, v1, "hourBin1 events: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4(&dword_21B766000, v0, v1, "hourBin2 events: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4(&dword_21B766000, v0, v1, "hourBin4 events: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4(&dword_21B766000, v0, v1, "hourBin8 events: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4(&dword_21B766000, v0, v1, "hourBin16 events: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4(&dword_21B766000, v0, v1, "hourBin24 events: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:.cold.7()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4(&dword_21B766000, v0, v1, "weekday1 events: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:.cold.8()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4(&dword_21B766000, v0, v1, "weekday2 events: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:.cold.9()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4(&dword_21B766000, v0, v1, "weekday4 events: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:.cold.10()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4(&dword_21B766000, v0, v1, "weekday8 events: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:.cold.11()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4(&dword_21B766000, v0, v1, "weekday24 events: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getInputFeatures:events:pluginBatteryLevel:timeFromPlugin:pluginDate:withLog:.cold.12()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_21B766000, v0, OS_LOG_TYPE_ERROR, "Error saving latest features: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end