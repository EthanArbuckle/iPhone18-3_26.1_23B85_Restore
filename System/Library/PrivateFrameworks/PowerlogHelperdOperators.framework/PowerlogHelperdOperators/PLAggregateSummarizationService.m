@interface PLAggregateSummarizationService
+ (id)modelIdentifier;
+ (id)osVersion;
+ (void)load;
- (PLAggregateSummarizationService)init;
- (id)getAppMultipleVersionsData;
- (id)getCellularConditionSummarizer;
- (id)getDeviceMetadataInRange:(_PLTimeIntervalRange)a3 withSignpostData:(id)a4;
- (id)getDrainInfoInRange:(_PLTimeIntervalRange)a3;
- (id)getGenericSummarizer;
- (id)getInitCountInRange:(_PLTimeIntervalRange)a3;
- (id)getLocationActivitySummarizer;
- (id)getPluggedInDurationInRange:(_PLTimeIntervalRange)a3;
- (id)getQueryForAppMultipleVersions;
- (id)getQueryForAverageMemory;
- (id)getQueryForCellularCondition;
- (id)getQueryForCoalitionPowerData;
- (id)getQueryForDiskIO;
- (id)getQueryForDisplayAPL;
- (id)getQueryForLocationActivity;
- (id)getQueryForNetworkIOData;
- (id)getQueryForPeakMemory;
- (id)handleAggregationQueryWithPayload:(id)a3;
- (id)preformatMetricsForFormatter:(id)a3;
- (void)aggregateMetrics;
- (void)getAppList:(id)a3;
- (void)getAppMetadata;
- (void)initOperatorDependancies;
- (void)setupMetrics;
@end

@implementation PLAggregateSummarizationService

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLAggregateSummarizationService;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLAggregateSummarizationService)init
{
  if (+[PLUtilities isPowerlogHelperd])
  {
    v8.receiver = self;
    v8.super_class = PLAggregateSummarizationService;
    v3 = [(PLOperator *)&v8 init];
    if (v3)
    {
      v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
      metrics = v3->_metrics;
      v3->_metrics = v4;
    }

    self = v3;
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)initOperatorDependancies
{
  v3 = objc_alloc(MEMORY[0x277D3F278]);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__PLAggregateSummarizationService_initOperatorDependancies__block_invoke;
  v5[3] = &unk_279A5BEC8;
  v5[4] = self;
  v4 = [v3 initWithOperator:self withRegistration:&unk_287148068 withBlock:v5];
  [(PLAggregateSummarizationService *)self setAggregationResponder:v4];
}

- (id)preformatMetricsForFormatter:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(PLAggregateSummarizationService *)self getAppList:v4];
  appList = self->_appList;
  if (appList && [(NSArray *)appList count])
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    summarizedData = self->_summarizedData;
    self->_summarizedData = v6;

    [(PLAggregateSummarizationService *)self getAppMetadata];
    v8 = PLLogAggregateSummarizationService();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PLAggregateSummarizationService preformatMetricsForFormatter:?];
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v28 = v4;
    obj = v4;
    v9 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      do
      {
        v12 = 0;
        v29 = v10;
        do
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v31 + 1) + 8 * v12);
          v14 = [v13 objectForKey:@"PLBatteryUIAppBundleIDKey"];
          if (!v14 || ([(NSMutableDictionary *)self->_summarizedData objectForKeyedSubscript:v14], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
          {
            v21 = PLLogAggregateSummarizationService();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v36 = v14;
              _os_log_error_impl(&dword_25EE51000, v21, OS_LOG_TYPE_ERROR, "Bundle id error : %@", buf, 0xCu);
            }

            goto LABEL_18;
          }

          v16 = [v13 objectForKey:&unk_287145958];

          if (v16)
          {
            v17 = [(NSMutableDictionary *)self->_summarizedData objectForKeyedSubscript:v14];
            v18 = [v17 objectForKeyedSubscript:&unk_287145958];
            v19 = [v13 objectForKey:&unk_287145958];
            [v18 addEntriesFromDictionary:v19];

            v10 = v29;
          }

          v20 = [v13 objectForKey:&unk_287145970];

          if (v20)
          {
            v21 = [(NSMutableDictionary *)self->_summarizedData objectForKeyedSubscript:v14];
            v22 = [v21 objectForKeyedSubscript:&unk_287145970];
            v23 = [v13 objectForKey:&unk_287145970];
            [v22 addEntriesFromDictionary:v23];

            v10 = v29;
LABEL_18:
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v10);
    }

    v24 = self->_summarizedData;
    v4 = v28;
  }

  else
  {
    v25 = PLLogAggregateSummarizationService();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [PLAggregateSummarizationService preformatMetricsForFormatter:v25];
    }

    v24 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)handleAggregationQueryWithPayload:(id)a3
{
  v180 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogAggregateSummarizationService();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PLAggregateSummarizationService handleAggregationQueryWithPayload:];
  }

  if ([MEMORY[0x277D3F208] hasGenerativeModelSystems])
  {
    v164[0] = MEMORY[0x277D85DD0];
    v164[1] = 3221225472;
    v164[2] = __69__PLAggregateSummarizationService_handleAggregationQueryWithPayload___block_invoke;
    v164[3] = &unk_279A5CA58;
    v164[4] = self;
    [MEMORY[0x277CFB458] getGMOptInToggleWithCompletion:v164];
  }

  v136 = self;
  v6 = [v4 objectForKeyedSubscript:@"PLBatteryUIQueryTypeKey"];
  v7 = [v6 intValue];

  v8 = [v4 objectForKeyedSubscript:@"today"];
  v9 = [v8 BOOLValue];

  v10 = [v4 objectForKeyedSubscript:@"last24hrs"];
  v11 = [v10 BOOLValue];

  v12 = [v4 objectForKeyedSubscript:@"last1hr"];
  v13 = [v12 BOOLValue];

  v14 = [v4 objectForKeyedSubscript:@"AppAnalyticsEnabled"];
  v133 = [v14 BOOLValue];

  v138 = v4;
  v15 = [v4 objectForKeyedSubscript:@"MetrickitClientsAvailable"];
  v135 = [v15 BOOLValue];

  v16 = PLLogAggregateSummarizationService();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [(PLAggregateSummarizationService *)v9 handleAggregationQueryWithPayload:v7, v16];
  }

  v137 = objc_alloc_init(PLBatteryBreakdownService);
  [(PLOperator *)v137 initOperatorDependancies];
  v139 = [MEMORY[0x277CBEAA8] date];
  v17 = [MEMORY[0x277CBEAA8] nearestMidnightBeforeDate:?];
  if (v9)
  {
    v18 = PLLogAggregateSummarizationService();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25EE51000, v18, OS_LOG_TYPE_INFO, "Aggregating today", buf, 2u);
    }

    v19 = [MEMORY[0x277CBEAA8] nearestMidnightAfterDate:v139];
    v20 = 86400.0;
  }

  else if (v11)
  {
    v21 = PLLogAggregateSummarizationService();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EE51000, v21, OS_LOG_TYPE_DEFAULT, "Aggregating last 24hrs", buf, 2u);
    }

    v19 = v139;
    v20 = 86400.0;
  }

  else
  {
    if (!v13)
    {
      v20 = 86400.0;
      goto LABEL_20;
    }

    v22 = PLLogAggregateSummarizationService();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EE51000, v22, OS_LOG_TYPE_DEFAULT, "Aggregating last hour", buf, 2u);
    }

    v19 = v139;
    v20 = 3600.0;
  }

  v17 = v19;
LABEL_20:
  v23 = [v4 objectForKey:@"off1"];
  if (v23 && (v24 = v23, [v4 objectForKey:@"off2"], v25 = objc_claimAutoreleasedReturnValue(), v25, v24, v25))
  {
    v26 = [v4 objectForKey:@"off1"];
    [v26 doubleValue];
    v28 = v27;

    v29 = [v4 objectForKey:@"off2"];
    [v29 doubleValue];
    v20 = v30;

    v31 = [v139 dateByAddingTimeInterval:-v28];

    v32 = PLLogAggregateSummarizationService();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v166 = v28;
      v167 = 2048;
      *v168 = v20;
      _os_log_impl(&dword_25EE51000, v32, OS_LOG_TYPE_DEFAULT, "Overriding offsets: %f %f", buf, 0x16u);
    }

    v33 = PLLogAggregateSummarizationService();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v166 = v20;
      v167 = 2112;
      *v168 = v31;
      _os_log_impl(&dword_25EE51000, v33, OS_LOG_TYPE_DEFAULT, "New range: %f seconds before %@", buf, 0x16u);
    }
  }

  else
  {
    v31 = v17;
  }

  v34 = [v31 convertFromSystemToMonotonic];
  v35 = -v20;
  v36 = [v34 dateByAddingTimeInterval:-v20];
  v37 = v34;
  [v36 timeIntervalSince1970];
  v39 = v38;
  [v37 timeIntervalSince1970];
  v41 = v40;

  v42 = v41 - v39;
  v132 = v37;
  [v37 timeIntervalSince1970];
  v136->_maxTimestamp = v43;
  v140 = v31;
  v134 = [v31 dateByAddingTimeInterval:v35];
  v44 = PLLogAggregateSummarizationService();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v166 = v39;
    v167 = 2048;
    *v168 = v39 + v42;
    _os_log_impl(&dword_25EE51000, v44, OS_LOG_TYPE_DEFAULT, "aggregation range: %f %f", buf, 0x16u);
  }

  v129 = v42;
  v130 = v39;
  v131 = [(PLBatteryBreakdownService *)v137 batteryBreakdownWithTimeRange:4 withDataRange:v39 withEntryTimeInterval:v42 withQueryType:v39 withTotalSumEnergyRatioCutOff:v42, 3600.0, 0.0];
  v45 = [v131 objectForKey:@"PLBatteryUIAppArrayKey"];
  v142 = objc_opt_new();
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  obj = v45;
  v144 = [obj countByEnumeratingWithState:&v160 objects:v179 count:16];
  if (v144)
  {
    v143 = *v161;
    do
    {
      for (i = 0; i != v144; ++i)
      {
        if (*v161 != v143)
        {
          objc_enumerationMutation(obj);
        }

        v47 = *(*(&v160 + 1) + 8 * i);
        v48 = [v47 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        if (v48)
        {
          v146 = i;
          v49 = objc_opt_new();
          v50 = objc_opt_new();
          v145 = v49;
          v150 = v48;
          [v49 setObject:v48 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          v51 = [v47 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
          v52 = [v51 intValue];

          v53 = [v47 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
          v54 = [v53 intValue];

          v55 = [v47 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundAudioRuntimeKey"];
          v154 = [v55 intValue];

          v56 = [v47 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundLocationRuntimeKey"];
          v148 = [v56 intValue];

          v57 = [v47 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundLocationAudioRuntimeKey"];
          v58 = [v57 intValue];

          v59 = [v47 objectForKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];
          LODWORD(v57) = [v59 intValue];

          v60 = [v47 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundPluggedInRuntimeKey"];
          v61 = [v60 intValue];

          v62 = [v47 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundAudioPluggedInRuntimeKey"];
          v63 = [v62 intValue];

          v64 = [v47 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundLocationPluggedInRuntimeKey"];
          LODWORD(v49) = [v64 intValue];

          v153 = v47;
          v65 = [v47 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundLocationAudioPluggedInRuntimeKey"];
          v66 = [v65 intValue];

          v152 = v54 - v61;
          v67 = (v54 - v61) & ~((v54 - v61) >> 31);
          v156 = (v148 - v49) & ~((v148 - v49) >> 31);
          v158 = (v58 - v66) & ~((v58 - v66) >> 31);
          v68 = [MEMORY[0x277CCABB0] numberWithInt:v52];
          [v50 setObject:v68 forKeyedSubscript:@"fgTime_Total"];

          v69 = [MEMORY[0x277CCABB0] numberWithInt:v54];
          [v50 setObject:v69 forKeyedSubscript:@"bgTime_Total"];

          v70 = [MEMORY[0x277CCABB0] numberWithInt:v154];
          [v50 setObject:v70 forKeyedSubscript:@"bgTime_Audio"];

          v71 = [MEMORY[0x277CCABB0] numberWithInt:v148];
          [v50 setObject:v71 forKeyedSubscript:@"bgTime_Location"];

          v72 = [MEMORY[0x277CCABB0] numberWithInt:v58];
          [v50 setObject:v72 forKeyedSubscript:@"bgLocationAudioTime"];

          v73 = [MEMORY[0x277CCABB0] numberWithInt:(v52 - v57) & ~((v52 - v57) >> 31)];
          [v50 setObject:v73 forKeyedSubscript:@"fgTime_Unplugged"];

          v74 = [MEMORY[0x277CCABB0] numberWithInt:v67];
          [v50 setObject:v74 forKeyedSubscript:@"bgTime_Unplugged"];

          LODWORD(v57) = (v154 - v63) & ~((v154 - v63) >> 31);
          v75 = [MEMORY[0x277CCABB0] numberWithInt:v57];
          [v50 setObject:v75 forKeyedSubscript:@"bgAudioTime_Unplugged"];

          v76 = [MEMORY[0x277CCABB0] numberWithInt:v156];
          [v50 setObject:v76 forKeyedSubscript:@"bgLocationTime_Unplugged"];

          v77 = [MEMORY[0x277CCABB0] numberWithInt:v158];
          v155 = v50;
          [v50 setObject:v77 forKeyedSubscript:@"bgLocationAudioTime_Unplugged"];

          v78 = v158;
          v147 = v156;
          v149 = v57;
          v79 = v57 / v67;
          v151 = (v54 - v61) & ~((v54 - v61) >> 31);
          v80 = v158 / (2 * v67);
          v81 = 1;
          v82 = v156 / v67;
          do
          {
            v83 = MEMORY[0x277CCACA8];
            v84 = [MEMORY[0x277CCABB0] numberWithShort:v81];
            v85 = [v83 stringWithFormat:@"%@", v84];

            v86 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"fg", v85];
            v87 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"bg", v85];
            v88 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"bgAudio", v85];
            v89 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"bgLocation", v85];
            v90 = [v153 objectForKeyedSubscript:v85];
            v91 = [v90 intValue];

            v159 = v86;
            v92 = [v153 objectForKeyedSubscript:v86];
            v93 = [v92 intValue];

            v157 = v87;
            v94 = [v153 objectForKeyedSubscript:v87];
            v95 = [v94 intValue];

            v96 = [v153 objectForKeyedSubscript:v88];
            v97 = [v96 intValue];

            v98 = [v153 objectForKeyedSubscript:v89];
            v99 = [v98 intValue];

            if (v152 <= 0)
            {
              v105 = PLLogAggregateSummarizationService();
              if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
              {
                *buf = 67109120;
                LODWORD(v166) = v151;
                _os_log_impl(&dword_25EE51000, v105, OS_LOG_TYPE_INFO, "Can't reweigh based on BG time: %d", buf, 8u);
              }
            }

            else
            {
              v100 = v95;
              v101 = PLLogAggregateSummarizationService();
              if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412802;
                v166 = *&v150;
                v167 = 1024;
                *v168 = v81;
                *&v168[4] = 2048;
                *&v168[6] = v95;
                _os_log_debug_impl(&dword_25EE51000, v101, OS_LOG_TYPE_DEBUG, "%@: bucket:%d BEFORE E_B:%f", buf, 0x1Cu);
              }

              v102 = v80 * v100 + v100 * v79;
              v103 = v80 * v100 + v100 * v82;
              if (v100 - v102 - v103 >= 0.0)
              {
                v104 = v100 - v102 - v103;
              }

              else
              {
                v104 = 0.0;
              }

              v95 = v104;
              v97 = v102;
              v99 = v103;
              v105 = PLLogAggregateSummarizationService();
              if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138414082;
                v166 = *&v150;
                v167 = 1024;
                *v168 = v81;
                *&v168[4] = 2048;
                *&v168[6] = v104;
                v169 = 2048;
                v170 = v102;
                v171 = 2048;
                v172 = v103;
                v173 = 2048;
                v174 = v149;
                v175 = 2048;
                v176 = v147;
                v177 = 2048;
                v178 = v78;
                _os_log_debug_impl(&dword_25EE51000, v105, OS_LOG_TYPE_DEBUG, "%@: bucket:%d AFTER E_B:%f E_BA:%f E_BL:%f T_BA:%f T_BL:%f T_BABL:%f", buf, 0x4Eu);
              }
            }

            if (v91 >= 1)
            {
              v106 = [MEMORY[0x277CCABB0] numberWithInt:v91];
              [v155 setObject:v106 forKeyedSubscript:v85];
            }

            if (v93 >= 1)
            {
              v107 = [MEMORY[0x277CCABB0] numberWithInt:v93];
              [v155 setObject:v107 forKeyedSubscript:v159];
            }

            if (v95 >= 1)
            {
              v108 = [MEMORY[0x277CCABB0] numberWithInt:v95];
              [v155 setObject:v108 forKeyedSubscript:v157];
            }

            if (v97 >= 1)
            {
              v109 = [MEMORY[0x277CCABB0] numberWithInt:v97];
              [v155 setObject:v109 forKeyedSubscript:v88];
            }

            if (v99 >= 1)
            {
              v110 = [MEMORY[0x277CCABB0] numberWithInt:v99];
              [v155 setObject:v110 forKeyedSubscript:v89];
            }

            ++v81;
          }

          while (v81 != 18);
          [v145 setObject:v155 forKey:&unk_287145958];
          v111 = PLLogAggregateSummarizationService();
          if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v166 = *&v145;
            _os_log_debug_impl(&dword_25EE51000, v111, OS_LOG_TYPE_DEBUG, "Adding to newApps: %@", buf, 0xCu);
          }

          [v142 addObject:v145];
          i = v146;
          v48 = v150;
        }
      }

      v144 = [obj countByEnumeratingWithState:&v160 objects:v179 count:16];
    }

    while (v144);
  }

  v112 = objc_alloc_init(SignpostReaderHelper);
  v113 = [(SignpostReaderHelper *)v112 getSignpostMetricsWithStartDate:v134 withEndDate:v140 processMXSignpost:v135];
  v114 = [(PLAggregateSummarizationService *)v136 preformatMetricsForFormatter:v142];
  v115 = PLLogAggregateSummarizationService();
  if (os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
  {
    [PLAggregateSummarizationService handleAggregationQueryWithPayload:];
  }

  [(PLAggregateSummarizationService *)v136 setupMetrics];
  [(PLAggregateSummarizationService *)v136 aggregateMetrics];
  if (v133)
  {
    v116 = [(PLAggregateSummarizationService *)v136 getDeviceMetadataInRange:v113 withSignpostData:v130, v129];
    v117 = objc_alloc_init(PLMetricsFormatterJSON);
    [(PLMetricsFormatterJSON *)v117 addGlobalMetaData:v116];
    [(PLMetricsFormatterJSON *)v117 addAllMetrics:v114 signpostData:v113];
    v118 = [(PLMetricsFormatterJSON *)v117 writeSessionFile];
    v119 = PLLogAggregateSummarizationService();
    if (os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
    {
      [PLAggregateSummarizationService handleAggregationQueryWithPayload:];
    }
  }

  else
  {
    v118 = 1;
  }

  if (v135)
  {
    v120 = PLLogAggregateSummarizationService();
    if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
    {
      [PLAggregateSummarizationService handleAggregationQueryWithPayload:];
    }

    v121 = objc_alloc_init(PLMetricsFormatterMetricKit);
    v122 = [v140 dateByAddingTimeInterval:-86400.0];
    [(PLMetricsFormatterMetricKit *)v121 publishMetrics:v114 andSignpostData:v113 forDate:v122];
  }

  v123 = objc_opt_new();
  v124 = [MEMORY[0x277CCABB0] numberWithBool:v118];
  [v123 setObject:v124 forKeyedSubscript:@"success"];

  v125 = [v113 objectForKeyedSubscript:@"launchesTimeSeries"];

  if (v125)
  {
    v126 = [v113 objectForKeyedSubscript:@"launchesTimeSeries"];
    [v123 setObject:v126 forKeyedSubscript:@"launchesTimeSeries"];
  }

  v127 = *MEMORY[0x277D85DE8];

  return v123;
}

void __69__PLAggregateSummarizationService_handleAggregationQueryWithPayload___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = PLLogAggregateSummarizationService();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_25EE51000, v6, OS_LOG_TYPE_INFO, "Error retrieving opt-in state, %@", &v9, 0xCu);
    }

    a2 = 0;
  }

  else if (v7)
  {
    v9 = 67109120;
    LODWORD(v10) = a2;
    _os_log_impl(&dword_25EE51000, v6, OS_LOG_TYPE_INFO, "GMS opt in state: %d", &v9, 8u);
  }

  [*(a1 + 32) setGmsOptInState:a2];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setupMetrics
{
  v3 = [(PLAggregateSummarizationService *)self metrics];
  v4 = [PLASMetric alloc];
  v5 = [(PLAggregateSummarizationService *)self getQueryForNetworkIOData];
  v6 = [(PLAggregateSummarizationService *)self getGenericSummarizer];
  v7 = [(PLASMetric *)v4 initMetric:@"NetworkIOStats" withType:1 withProperties:&unk_28714C7A0 withQuery:v5 andSummarizerBlock:v6];
  [v3 addObject:v7];

  v8 = [(PLAggregateSummarizationService *)self metrics];
  v9 = [PLASMetric alloc];
  v10 = [(PLAggregateSummarizationService *)self getQueryForCoalitionPowerData];
  v11 = [(PLAggregateSummarizationService *)self getGenericSummarizer];
  v12 = [(PLASMetric *)v9 initMetric:@"CoalitionPowerStats" withType:1 withProperties:&unk_28714C7B8 withQuery:v10 andSummarizerBlock:v11];
  [v8 addObject:v12];

  v13 = [(PLAggregateSummarizationService *)self metrics];
  v14 = [PLASMetric alloc];
  v15 = [(PLAggregateSummarizationService *)self getQueryForAverageMemory];
  v16 = [(PLAggregateSummarizationService *)self getGenericSummarizer];
  v17 = [(PLASMetric *)v14 initMetric:@"AverageMemory" withType:2 withProperties:&unk_28714C7D0 withQuery:v15 andSummarizerBlock:v16];
  [v13 addObject:v17];

  v18 = [(PLAggregateSummarizationService *)self metrics];
  v19 = [PLASMetric alloc];
  v20 = [(PLAggregateSummarizationService *)self getQueryForPeakMemory];
  v21 = [(PLAggregateSummarizationService *)self getGenericSummarizer];
  v22 = [(PLASMetric *)v19 initMetric:@"PeakMemory" withType:2 withProperties:&unk_28714C7E8 withQuery:v20 andSummarizerBlock:v21];
  [v18 addObject:v22];

  v23 = [(PLAggregateSummarizationService *)self metrics];
  v24 = [PLASMetric alloc];
  v25 = [(PLAggregateSummarizationService *)self getQueryForDiskIO];
  v26 = [(PLAggregateSummarizationService *)self getGenericSummarizer];
  v27 = [(PLASMetric *)v24 initMetric:@"DiskIO" withType:2 withProperties:&unk_28714C800 withQuery:v25 andSummarizerBlock:v26];
  [v23 addObject:v27];

  v28 = [(PLAggregateSummarizationService *)self metrics];
  v29 = [PLASMetric alloc];
  v30 = [(PLAggregateSummarizationService *)self getQueryForLocationActivity];
  v31 = [(PLAggregateSummarizationService *)self getLocationActivitySummarizer];
  v32 = [(PLASMetric *)v29 initMetric:@"LocationActivity" withType:1 withProperties:&unk_28714C818 withQuery:v30 andSummarizerBlock:v31];
  [v28 addObject:v32];

  v33 = [(PLAggregateSummarizationService *)self metrics];
  v34 = [PLASMetric alloc];
  v35 = [(PLAggregateSummarizationService *)self getQueryForDisplayAPL];
  v36 = [(PLAggregateSummarizationService *)self getGenericSummarizer];
  v37 = [(PLASMetric *)v34 initMetric:@"DisplayAPL" withType:1 withProperties:&unk_28714C830 withQuery:v35 andSummarizerBlock:v36];
  [v33 addObject:v37];

  v42 = [(PLAggregateSummarizationService *)self metrics];
  v38 = [PLASMetric alloc];
  v39 = [(PLAggregateSummarizationService *)self getQueryForCellularCondition];
  v40 = [(PLAggregateSummarizationService *)self getCellularConditionSummarizer];
  v41 = [(PLASMetric *)v38 initMetric:@"CellularCondition" withType:1 withProperties:&unk_28714C848 withQuery:v39 andSummarizerBlock:v40];
  [v42 addObject:v41];
}

- (void)aggregateMetrics
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(PLAggregateSummarizationService *)self metrics];
  v3 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    v6 = &OBJC_IVAR___PLBatteryBreakdownService__totalEnergyWeek;
    do
    {
      v7 = 0;
      v18 = v4;
      do
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [v8 query];
        v11 = v10[2](*(&self->super.super.super.isa + v6[114]));

        if (v11 && [v11 count])
        {
          v12 = [v8 summarizer];
          [v8 metricProperties];
          v14 = v13 = v6;
          (v12)[2](v12, v11, v14);
          v16 = v15 = v5;

          v6 = v13;
          -[PLAggregateSummarizationService addMetrics:withType:](self, "addMetrics:withType:", v16, [v8 metricType]);

          v5 = v15;
          v4 = v18;
        }

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v4 != v7);
      v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v4);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)getAppList:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) objectForKey:{@"PLBatteryUIAppBundleIDKey", v14}];
        if (v11)
        {
          [(NSArray *)v5 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  appList = self->_appList;
  self->_appList = v5;

  v13 = *MEMORY[0x277D85DE8];
}

- (id)getDeviceMetadataInRange:(_PLTimeIntervalRange)a3 withSignpostData:(id)a4
{
  length = a3.length;
  location = a3.location;
  v37[12] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = CFPreferencesCopyValue(@"AppleLanguages", @"Apple Global Domain", @"mobile", *MEMORY[0x277CBF030]);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 count])
  {
    v9 = [v8 objectAtIndexedSubscript:0];
  }

  else
  {
    v9 = @"<unknown>";
  }

  v10 = [MEMORY[0x277CBEAF8] currentLocale];
  v31 = v8;
  v29 = v10;
  if (v10)
  {
    v11 = [v10 objectForKey:*MEMORY[0x277CBE690]];
  }

  else
  {
    v11 = @"<unknown>";
  }

  v12 = [v7 objectForKeyedSubscript:@"hangtracer_enabled"];
  v32 = v7;
  if (v12)
  {
    v35 = [v7 objectForKeyedSubscript:@"hangtracer_enabled"];
  }

  else
  {
    v35 = &unk_287145988;
  }

  v34 = [(PLAggregateSummarizationService *)self getPluggedInDurationInRange:location, length];
  v13 = [(PLAggregateSummarizationService *)self getDrainInfoInRange:location, length];
  v33 = [v13 objectAtIndexedSubscript:0];
  v14 = [v13 objectAtIndexedSubscript:1];
  v15 = [(PLAggregateSummarizationService *)self getInitCountInRange:location, length];
  v16 = 0;
  if ([MEMORY[0x277D3F208] hasGenerativeModelSystems])
  {
    v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[PLAggregateSummarizationService gmsOptInState](self, "gmsOptInState")}];
  }

  v36[0] = @"log_version";
  v36[1] = @"region_format";
  v17 = @"<none>";
  if (v11)
  {
    v18 = v11;
  }

  else
  {
    v18 = @"<none>";
  }

  v37[0] = &unk_2871459A0;
  v37[1] = v18;
  v30 = v9;
  if (v9)
  {
    v17 = v9;
  }

  v37[2] = v17;
  v36[2] = @"language";
  v36[3] = @"os_version";
  v19 = [objc_opt_class() osVersion];
  v27 = v11;
  if (v19)
  {
    v20 = [objc_opt_class() osVersion];
  }

  else
  {
    v20 = @"<unknown>";
  }

  v37[3] = v20;
  v36[4] = @"machine_config";
  v21 = [objc_opt_class() modelIdentifier];
  v37[4] = v21;
  v36[5] = @"os_variant";
  v22 = [MEMORY[0x277CCABB0] numberWithShort:{objc_msgSend(objc_opt_class(), "buildType")}];
  v37[5] = v22;
  v37[6] = v35;
  v36[6] = @"hangtracer_enabled";
  v36[7] = @"plugged_in_duration";
  v36[8] = @"total_drain";
  v36[9] = @"energy_consumed";
  v37[7] = v34;
  v37[8] = v33;
  v37[9] = v14;
  v36[10] = @"init_count";
  v36[11] = @"gms_opt_in";
  v23 = v16;
  v37[10] = v15;
  if (!v16)
  {
    v23 = [MEMORY[0x277CCABB0] numberWithBool:{-[PLAggregateSummarizationService gmsOptInState](self, "gmsOptInState")}];
  }

  v37[11] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:{12, v27}];
  if (!v16)
  {
  }

  if (v19)
  {
  }

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)getDrainInfoInRange:(_PLTimeIntervalRange)a3
{
  length = a3.length;
  location = a3.location;
  v32 = *MEMORY[0x277D85DE8];
  v6 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"UILevel"];
  v7 = [(PLOperator *)self storage];
  v24 = v6;
  v8 = [v7 aggregateEntriesForKey:v6 withBucketLength:3600.0 inTimeIntervalRange:{location, length}];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    LODWORD(v11) = 0;
    LODWORD(v12) = 0;
    v13 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        v16 = [v15 objectForKeyedSubscript:@"Level"];
        v17 = [v16 intValue];

        v12 = (v17 + v12);
        v18 = [v15 objectForKeyedSubscript:@"energyConsumed"];
        LODWORD(v16) = [v18 intValue];

        v11 = (v16 + v11);
      }

      v10 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v19 = [MEMORY[0x277CCABB0] numberWithInt:v12];
  v30[0] = v19;
  v20 = [MEMORY[0x277CCABB0] numberWithInt:v11];
  v30[1] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)getPluggedInDurationInRange:(_PLTimeIntervalRange)a3
{
  length = a3.length;
  location = a3.location;
  v25 = *MEMORY[0x277D85DE8];
  v6 = [(PLOperator *)PLAppTimeService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"UsageTime"];
  v7 = [(PLOperator *)self storage];
  v8 = [v7 aggregateEntriesForKey:v6 withBucketLength:3600.0 inTimeIntervalRange:{location, length}];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    LODWORD(v12) = 0;
    v13 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = [*(*(&v20 + 1) + 8 * i) objectForKeyedSubscript:{@"PluggedIn", v20}];
        v16 = [v15 intValue];

        v12 = (v16 + v12);
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v17 = [MEMORY[0x277CCABB0] numberWithInt:v12];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)getInitCountInRange:(_PLTimeIntervalRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [MEMORY[0x277D3F230] entryKeyForType:*MEMORY[0x277D3F5D0] andName:*MEMORY[0x277D3F610]];
  v7 = [(PLOperator *)self storage];
  v8 = [v7 entriesForKey:v6 inTimeRange:0 withFilters:{location, length}];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];

  return v9;
}

- (id)getQueryForAppMultipleVersions
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__PLAggregateSummarizationService_getQueryForAppMultipleVersions__block_invoke;
  v5[3] = &unk_279A5CA80;
  v5[4] = self;
  v2 = MEMORY[0x25F8D2750](v5, a2);
  v3 = MEMORY[0x25F8D2750]();

  return v3;
}

id __65__PLAggregateSummarizationService_getQueryForAppMultipleVersions__block_invoke(uint64_t a1, double a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"                           SELECT AppBundleId AS %@, COUNT(DISTINCT AppBundleVersion) > 1 AS %@                           FROM PLApplicationAgent_EventNone_AllApps                           WHERE timestamp >= %f AND timestamp < %f GROUP BY %@", @"BundleId", @"app_multiple_versions", a2 + -86400.0, *&a2, @"BundleId"];;
  v4 = [*(a1 + 32) storage];
  v5 = [v4 connection];
  v6 = [v5 performQuery:v3];

  return v6;
}

- (id)getQueryForNetworkIOData
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__PLAggregateSummarizationService_getQueryForNetworkIOData__block_invoke;
  v5[3] = &unk_279A5CA80;
  v5[4] = self;
  v2 = MEMORY[0x25F8D2750](v5, a2);
  v3 = MEMORY[0x25F8D2750]();

  return v3;
}

id __59__PLAggregateSummarizationService_getQueryForNetworkIOData__block_invoke(uint64_t a1, double a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"                             SELECT BundleName AS %@, SUM(CellIn) %@, SUM(CellOut) %@, SUM(WifiIn) %@, SUM(WifiOut) %@                             FROM PLProcessNetworkAgent_EventInterval_UsageDiff                             WHERE timestamp >= %f AND timestamp < %f GROUP BY %@", @"BundleId", @"bytesCellularIn", @"bytesCellularOut", @"bytesWifiIn", @"bytesWifiOut", a2 + -86400.0, *&a2, @"BundleId"];;
  v4 = [*(a1 + 32) storage];
  v5 = [v4 connection];
  v6 = [v5 performQuery:v3];

  return v6;
}

- (id)getQueryForCoalitionPowerData
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__PLAggregateSummarizationService_getQueryForCoalitionPowerData__block_invoke;
  v5[3] = &unk_279A5CA80;
  v5[4] = self;
  v2 = MEMORY[0x25F8D2750](v5, a2);
  v3 = MEMORY[0x25F8D2750]();

  return v3;
}

id __64__PLAggregateSummarizationService_getQueryForCoalitionPowerData__block_invoke(uint64_t a1, double a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"                             SELECT BundleID AS %@, SUM(cpu_time) %@, SUM(gpu_time) %@, SUM(cpu_instructions) %@                             FROM PLCoalitionAgent_EventInterval_CoalitionInterval                             WHERE timestamp >= %f AND timestamp < %f GROUP BY %@", @"BundleId", @"CPUTime", @"GPUTime", @"CPUInstructions", a2 + -86400.0, *&a2, @"BundleId"];;
  v4 = [*(a1 + 32) storage];
  v5 = [v4 connection];
  v6 = [v5 performQuery:v3];

  return v6;
}

- (id)getQueryForDiskIO
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__PLAggregateSummarizationService_getQueryForDiskIO__block_invoke;
  v5[3] = &unk_279A5CA80;
  v5[4] = self;
  v2 = MEMORY[0x25F8D2750](v5, a2);
  v3 = MEMORY[0x25F8D2750]();

  return v3;
}

id __52__PLAggregateSummarizationService_getQueryForDiskIO__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:?];
  v3 = [v2 dateByAddingTimeInterval:-86400.0];
  v4 = v2;
  [v3 timeIntervalSince1970];
  v6 = v5;
  [v4 timeIntervalSince1970];
  v8 = v7;

  v9 = [(PLOperator *)PLAppTimeService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"Metrics"];
  v10 = [*(a1 + 32) storage];
  v11 = [v10 aggregateEntriesForKey:v9 withBucketLength:3600.0 inTimeIntervalRange:{v6, v8 - v6}];

  v12 = [MEMORY[0x277D3F190] summarizeAggregateEntries:v11];

  return v12;
}

- (id)getQueryForAverageMemory
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__PLAggregateSummarizationService_getQueryForAverageMemory__block_invoke;
  v5[3] = &unk_279A5CA80;
  v5[4] = self;
  v2 = MEMORY[0x25F8D2750](v5, a2);
  v3 = MEMORY[0x25F8D2750]();

  return v3;
}

id __59__PLAggregateSummarizationService_getQueryForAverageMemory__block_invoke(uint64_t a1, double a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"                           SELECT Q.A %@, Q.B %@, Q.C %@, AVG((SuspendedMemory - Q.B)*(SuspendedMemory - Q.B)) %@ from PLApplicationAgent_EventBackward_ApplicationMemory as T, (SELECT AppBundleId AS A, AVG(SuspendedMemory) AS B, COUNT(SuspendedMemory) AS C from PLApplicationAgent_EventBackward_ApplicationMemory                              WHERE timestamp >= %f AND timestamp < %f GROUP BY AppBundleId                            ) AS Q WHERE Q.A = T.AppBundleId AND timestamp >= %f AND timestamp < %f GROUP BY %@", @"BundleId", @"AverageMemory", @"AverageMemoryCount", @"AverageMemoryVariance", a2 + -86400.0, *&a2, a2 + -86400.0, *&a2, @"BundleId"];;
  v4 = [*(a1 + 32) storage];
  v5 = [v4 connection];
  v6 = [v5 performQuery:v3];

  return v6;
}

- (id)getQueryForPeakMemory
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__PLAggregateSummarizationService_getQueryForPeakMemory__block_invoke;
  v5[3] = &unk_279A5CA80;
  v5[4] = self;
  v2 = MEMORY[0x25F8D2750](v5, a2);
  v3 = MEMORY[0x25F8D2750]();

  return v3;
}

id __56__PLAggregateSummarizationService_getQueryForPeakMemory__block_invoke(uint64_t a1, double a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"                           SELECT AppBundleId AS %@, MAX(PeakMemory) %@ from PLApplicationAgent_EventBackward_ApplicationMemory WHERE timestamp >= %f AND timestamp < %f                           GROUP BY %@", @"BundleId", @"PeakMemory", a2 + -86400.0, *&a2, @"BundleId"];;
  v4 = [*(a1 + 32) storage];
  v5 = [v4 connection];
  v6 = [v5 performQuery:v3];

  return v6;
}

- (id)getQueryForLocationActivity
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__PLAggregateSummarizationService_getQueryForLocationActivity__block_invoke;
  v5[3] = &unk_279A5CA80;
  v5[4] = self;
  v2 = MEMORY[0x25F8D2750](v5, a2);
  v3 = MEMORY[0x25F8D2750]();

  return v3;
}

id __62__PLAggregateSummarizationService_getQueryForLocationActivity__block_invoke(uint64_t a1, double a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"                           SELECT Q.A %@, Q.B LocationDesiredAccuracy, SUM(tE - t) TotalTime FROM                             (SELECT BundleID AS A, LocationDesiredAccuracy AS B, CASE WHEN (timestampEnd > %f OR timestampEnd is NULL) THEN %f ELSE timestampEnd END as tE, CASE WHEN timestamp < %f THEN %f ELSE timestamp END as t                             FROM PLLocationAgent_EventForward_ClientStatus WHERE Type='Location' AND tE >= %f AND t < %f AND tE > t                           ) AS Q GROUP BY %@, LocationDesiredAccuracy", @"BundleId", *&a2, *&a2, a2 + -86400.0, a2 + -86400.0, a2 + -86400.0, *&a2, @"BundleId"];;
  v4 = [*(a1 + 32) storage];
  v5 = [v4 connection];
  v6 = [v5 performQuery:v3];

  return v6;
}

- (id)getQueryForDisplayAPL
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__PLAggregateSummarizationService_getQueryForDisplayAPL__block_invoke;
  v5[3] = &unk_279A5CA80;
  v5[4] = self;
  v2 = MEMORY[0x25F8D2750](v5, a2);
  v3 = MEMORY[0x25F8D2750]();

  return v3;
}

id __56__PLAggregateSummarizationService_getQueryForDisplayAPL__block_invoke(uint64_t a1, double a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"                           SELECT bundleID AS %@, SUM(%f * Frames * (%f*AvgRed + %f*AvgGreen + %f*AvgBlue))/SUM(Frames) %@, SUM(Frames) %@ FROM PLDisplayAgent_EventBackward_APLStats                           WHERE timestamp >= %f AND timestamp < %f                           GROUP BY %@", @"BundleId", 0x3FD9191919191919, 0x3FD3D70A3D70A3D7, 0x3FD0000000000000, 0x3FDC28F5C28F5C29, @"AveragePictureLevel", @"TotalFrameCount", a2 + -86400.0, *&a2, @"BundleId"];;
  v4 = [*(a1 + 32) storage];
  v5 = [v4 connection];
  v6 = [v5 performQuery:v3];

  return v6;
}

- (id)getQueryForCellularCondition
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__PLAggregateSummarizationService_getQueryForCellularCondition__block_invoke;
  v5[3] = &unk_279A5CA80;
  v5[4] = self;
  v2 = MEMORY[0x25F8D2750](v5, a2);
  v3 = MEMORY[0x25F8D2750]();

  return v3;
}

id __63__PLAggregateSummarizationService_getQueryForCellularCondition__block_invoke(uint64_t a1, double a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"                           SELECT BundleID AS %@, SignalBars, SUM(CellUsageTime) AS TotalTime FROM PLAppTimeService_Aggregate_CellularCondition                           WHERE timestamp >= %f AND timestamp < %f                           GROUP BY %@, SignalBars", @"BundleId", a2 + -86400.0, *&a2, @"BundleId"];;
  v4 = [*(a1 + 32) storage];
  v5 = [v4 connection];
  v6 = [v5 performQuery:v3];

  return v6;
}

- (void)getAppMetadata
{
  v70 = *MEMORY[0x277D85DE8];
  [(PLAggregateSummarizationService *)self getAppMultipleVersionsData];
  v41 = v40 = self;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = [(PLAggregateSummarizationService *)self appList];
  v42 = [obj countByEnumeratingWithState:&v62 objects:v69 count:16];
  if (v42)
  {
    v39 = *v63;
    do
    {
      v3 = 0;
      do
      {
        if (*v63 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v61 = v3;
        v4 = *(*(&v62 + 1) + 8 * v3);
        v5 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"AppBundleId" withValue:v4 withComparisonOperation:0];
        v6 = [MEMORY[0x277D3F2A0] sharedCore];
        v7 = [v6 storage];
        v60 = v5;
        v68 = v5;
        v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v68 count:1];
        v9 = [v7 lastEntryForKey:@"PLApplicationAgent_EventNone_AllApps" withComparisons:v8 isSingleton:1];

        v67[0] = v4;
        v66[0] = @"app_bundleid";
        v66[1] = @"app_is_clip";
        v59 = [v9 objectForKeyedSubscript:@"AppIsClip"];
        if ([v59 BOOLValue])
        {
          v10 = @"true";
        }

        else
        {
          v10 = @"false";
        }

        v67[1] = v10;
        v66[2] = @"app_build_version";
        v58 = [v9 objectForKeyedSubscript:@"AppBuildVersion"];
        if (v58)
        {
          v53 = [v9 objectForKeyedSubscript:@"AppBuildVersion"];
          v11 = v53;
        }

        else
        {
          v11 = &stru_287103958;
        }

        v67[2] = v11;
        v66[3] = @"app_version";
        v57 = [v9 objectForKeyedSubscript:@"AppBundleVersion"];
        if (v57)
        {
          v52 = [v9 objectForKeyedSubscript:@"AppBundleVersion"];
          v12 = v52;
        }

        else
        {
          v12 = &stru_287103958;
        }

        v67[3] = v12;
        v66[4] = @"app_sessionreporter_key";
        v55 = [v9 objectForKeyedSubscript:@"AppVendorID"];
        if (v55)
        {
          v51 = [v9 objectForKeyedSubscript:@"AppVendorID"];
          v13 = v51;
        }

        else
        {
          v13 = &stru_287103958;
        }

        v67[4] = v13;
        v66[5] = @"app_adamid";
        v54 = [v9 objectForKeyedSubscript:@"AppItemID"];
        if (v54)
        {
          v50 = [v9 objectForKeyedSubscript:@"AppItemID"];
          v14 = v50;
        }

        else
        {
          v14 = &stru_287103958;
        }

        v67[5] = v14;
        v66[6] = @"app_cohort";
        v15 = [v9 objectForKeyedSubscript:@"AppCohort"];
        if (v15)
        {
          v49 = [v9 objectForKeyedSubscript:@"AppCohort"];
          v16 = v49;
        }

        else
        {
          v16 = &stru_287103958;
        }

        v67[6] = v16;
        v66[7] = @"app_storefront";
        v17 = [v9 objectForKeyedSubscript:@"AppStoreFront"];
        if (v17)
        {
          v48 = [v9 objectForKeyedSubscript:@"AppStoreFront"];
          v18 = v48;
        }

        else
        {
          v18 = &stru_287103958;
        }

        v67[7] = v18;
        v66[8] = @"app_is_beta";
        v19 = [v9 objectForKeyedSubscript:@"AppIsBeta"];
        if ([v19 BOOLValue])
        {
          v20 = @"true";
        }

        else
        {
          v20 = @"false";
        }

        v67[8] = v20;
        v66[9] = @"app_arch";
        v21 = [v9 objectForKeyedSubscript:@"AppArchitecture"];
        if (v21)
        {
          v47 = [v9 objectForKeyedSubscript:@"AppArchitecture"];
          v22 = v47;
        }

        else
        {
          v22 = &stru_287103958;
        }

        v67[9] = v22;
        v66[10] = @"slice_uuid";
        v23 = [v9 objectForKeyedSubscript:@"AppUUID"];
        if (v23)
        {
          v46 = [v9 objectForKeyedSubscript:@"AppUUID"];
          v24 = v46;
        }

        else
        {
          v24 = &stru_287103958;
        }

        v67[10] = v24;
        v66[11] = @"app_multiple_versions";
        v25 = [v41 objectForKeyedSubscript:v4];
        if (v25)
        {
          v45 = [v41 objectForKeyedSubscript:v4];
          v43 = [v45 objectForKeyedSubscript:@"app_multiple_versions"];
          v26 = v43;
        }

        else
        {
          v26 = &unk_2871459B8;
        }

        v67[11] = v26;
        v66[12] = @"app_distributorid";
        v27 = [v9 objectForKeyedSubscript:@"AppDistributorID"];
        if (v27)
        {
          v44 = [v9 objectForKeyedSubscript:@"AppDistributorID"];
          v28 = v44;
        }

        else
        {
          v28 = &stru_287103958;
        }

        v29 = v55;
        v67[12] = v28;
        v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:13];
        if (v27)
        {
        }

        if (v25)
        {
        }

        if (v23)
        {
        }

        if (v21)
        {
        }

        if (v17)
        {
        }

        if (v15)
        {
        }

        if (v54)
        {
        }

        if (v29)
        {
        }

        if (v57)
        {
        }

        if (v58)
        {
        }

        summarizedData = v40->_summarizedData;
        v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [(NSMutableDictionary *)summarizedData setObject:v31 forKey:v4];

        v32 = [(NSMutableDictionary *)v40->_summarizedData objectForKeyedSubscript:v4];
        v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v32 setObject:v33 forKey:&unk_287145958];

        v34 = [(NSMutableDictionary *)v40->_summarizedData objectForKeyedSubscript:v4];
        v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v34 setObject:v35 forKey:&unk_287145970];

        v36 = [(NSMutableDictionary *)v40->_summarizedData objectForKeyedSubscript:v4];
        [v36 setObject:v56 forKey:&unk_2871459D0];

        v3 = v61 + 1;
      }

      while (v42 != v61 + 1);
      v42 = [obj countByEnumeratingWithState:&v62 objects:v69 count:16];
    }

    while (v42);
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (id)getAppMultipleVersionsData
{
  v3 = [PLASMetric alloc];
  v4 = [(PLAggregateSummarizationService *)self getQueryForAppMultipleVersions];
  v5 = [(PLAggregateSummarizationService *)self getGenericSummarizer];
  v6 = [(PLASMetric *)v3 initMetric:@"app_multiple_versions" withType:0 withProperties:&unk_28714C860 withQuery:v4 andSummarizerBlock:v5];

  v7 = [v6 query];
  v8 = v7[2](self->_maxTimestamp);

  if (v8 && [v8 count])
  {
    v9 = [v6 summarizer];
    v10 = [v6 metricProperties];
    v11 = (v9)[2](v9, v8, v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)getGenericSummarizer
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__PLAggregateSummarizationService_getGenericSummarizer__block_invoke;
  v5[3] = &unk_279A5CAA8;
  v5[4] = self;
  v2 = MEMORY[0x25F8D2750](v5, a2);
  v3 = MEMORY[0x25F8D2750]();

  return v3;
}

id __55__PLAggregateSummarizationService_getGenericSummarizer__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v32 = a3;
  v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v43;
    v30 = *v43;
    v31 = a1;
    do
    {
      v9 = 0;
      v34 = v7;
      do
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v42 + 1) + 8 * v9);
        if (v10)
        {
          v11 = [*(*(&v42 + 1) + 8 * v9) objectForKey:@"BundleId"];
          v12 = [*(a1 + 32) appList];
          v13 = [v12 containsObject:v11];

          if (v13)
          {
            v36 = v11;
            v37 = v9;
            v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            v41 = 0u;
            v15 = v32;
            v16 = [v15 countByEnumeratingWithState:&v38 objects:v46 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v39;
              do
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v39 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v20 = *(*(&v38 + 1) + 8 * i);
                  v21 = [v10 objectForKeyedSubscript:{v20, v30, v31}];
                  if (v21)
                  {
                    v22 = v21;
                    v23 = [v10 objectForKeyedSubscript:v20];
                    v24 = [MEMORY[0x277CBEB68] null];

                    if (v23 != v24)
                    {
                      v25 = MEMORY[0x277CCABB0];
                      v26 = [v10 objectForKeyedSubscript:v20];
                      v27 = [v25 numberWithUnsignedInteger:{objc_msgSend(v26, "unsignedIntegerValue")}];
                      [v14 setObject:v27 forKey:v20];
                    }
                  }
                }

                v17 = [v15 countByEnumeratingWithState:&v38 objects:v46 count:16];
              }

              while (v17);
            }

            v11 = v36;
            [v33 setObject:v14 forKey:v36];

            v8 = v30;
            a1 = v31;
            v7 = v34;
            v9 = v37;
          }
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v7);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v33;
}

- (id)getLocationActivitySummarizer
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__PLAggregateSummarizationService_getLocationActivitySummarizer__block_invoke;
  v5[3] = &unk_279A5CAA8;
  v5[4] = self;
  v2 = MEMORY[0x25F8D2750](v5, a2);
  v3 = MEMORY[0x25F8D2750]();

  return v3;
}

id __64__PLAggregateSummarizationService_getLocationActivitySummarizer__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v44 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v55;
    v10 = *MEMORY[0x277CE4208];
    v11 = *MEMORY[0x277CE4210];
    v12 = *MEMORY[0x277CE4250];
    v13 = *MEMORY[0x277CE4228];
    v14 = *MEMORY[0x277CE4238];
    v15 = *MEMORY[0x277CE4270];
    v47 = *v55;
    v48 = a1;
    do
    {
      v16 = 0;
      v46 = v8;
      do
      {
        if (*v55 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v54 + 1) + 8 * v16);
        if (v17)
        {
          v18 = [*(*(&v54 + 1) + 8 * v16) objectForKey:@"BundleId"];
          v19 = [*(a1 + 32) appList];
          v20 = [v19 containsObject:v18];

          if (v20)
          {
            v21 = [v17 objectForKeyedSubscript:@"LocationDesiredAccuracy"];
            v22 = [MEMORY[0x277CBEB68] null];
            if (v21 == v22)
            {
              a1 = v48;
LABEL_27:

              goto LABEL_28;
            }

            v23 = [v17 objectForKeyedSubscript:@"TotalTime"];
            v24 = [MEMORY[0x277CBEB68] null];

            v25 = v23 == v24;
            v8 = v46;
            v9 = v47;
            a1 = v48;
            if (!v25)
            {
              v26 = [v6 objectForKey:v18];

              if (!v26)
              {
                v45 = v17;
                v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
                [v6 setObject:v27 forKey:v18];

                v52 = 0u;
                v53 = 0u;
                v50 = 0u;
                v51 = 0u;
                v28 = v44;
                v29 = [v28 countByEnumeratingWithState:&v50 objects:v58 count:16];
                if (v29)
                {
                  v30 = v29;
                  v31 = *v51;
                  do
                  {
                    for (i = 0; i != v30; ++i)
                    {
                      if (*v51 != v31)
                      {
                        objc_enumerationMutation(v28);
                      }

                      v33 = *(*(&v50 + 1) + 8 * i);
                      v34 = [v6 objectForKeyedSubscript:{v18, v44}];
                      [v34 setObject:&unk_2871459B8 forKey:v33];
                    }

                    v30 = [v28 countByEnumeratingWithState:&v50 objects:v58 count:16];
                  }

                  while (v30);
                }

                a1 = v48;
                v17 = v45;
                v8 = v46;
              }

              v35 = [v17 objectForKeyedSubscript:{@"LocationDesiredAccuracy", v44}];
              [v35 doubleValue];
              v37 = v36;

              v38 = MEMORY[0x277CCABB0];
              v39 = [v17 objectForKeyedSubscript:@"TotalTime"];
              v21 = [v38 numberWithUnsignedInteger:{objc_msgSend(v39, "unsignedIntegerValue")}];

              v40 = @"BestAccuracy";
              if (v37 == v10 || (v40 = @"BestAccuracyForNavigation", v37 == v11) || (v40 = @"NearestTenMetersAccuracy", v37 == v12) || (v40 = @"HundredMetersAccuracy", v37 == v13) || (v40 = @"KilometerAccuracy", v37 == v14) || (v40 = @"ThreeKilometersAccuracy", v37 == v15))
              {
                v22 = [v6 objectForKeyedSubscript:v18];
                [v22 setObject:v21 forKey:v40];
                v9 = v47;
                goto LABEL_27;
              }

              v9 = v47;
LABEL_28:
            }
          }
        }

        ++v16;
      }

      while (v16 != v8);
      v41 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
      v8 = v41;
    }

    while (v41);
  }

  v42 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)getCellularConditionSummarizer
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__PLAggregateSummarizationService_getCellularConditionSummarizer__block_invoke;
  v5[3] = &unk_279A5CAA8;
  v5[4] = self;
  v2 = MEMORY[0x25F8D2750](v5, a2);
  v3 = MEMORY[0x25F8D2750]();

  return v3;
}

id __65__PLAggregateSummarizationService_getCellularConditionSummarizer__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v39 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v49 objects:v58 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v50;
    *&v8 = 134218242;
    v38 = v8;
    v42 = *v50;
    v43 = a1;
    do
    {
      v11 = 0;
      v41 = v9;
      do
      {
        if (*v50 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v49 + 1) + 8 * v11);
        if (v12)
        {
          v13 = [*(*(&v49 + 1) + 8 * v11) objectForKey:@"BundleId"];
          v14 = [*(a1 + 32) appList];
          v15 = [v14 containsObject:v13];

          if (v15)
          {
            v16 = [v12 objectForKeyedSubscript:@"SignalBars"];
            v17 = [MEMORY[0x277CBEB68] null];
            if (v16 == v17)
            {
              a1 = v43;
              goto LABEL_26;
            }

            v18 = [v12 objectForKeyedSubscript:@"TotalTime"];
            v19 = [MEMORY[0x277CBEB68] null];

            v20 = v18 == v19;
            v9 = v41;
            v10 = v42;
            a1 = v43;
            if (!v20)
            {
              v21 = [v6 objectForKey:v13];

              if (!v21)
              {
                v40 = v12;
                v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
                [v6 setObject:v22 forKey:v13];

                v47 = 0u;
                v48 = 0u;
                v45 = 0u;
                v46 = 0u;
                v23 = v39;
                v24 = [v23 countByEnumeratingWithState:&v45 objects:v57 count:16];
                if (v24)
                {
                  v25 = v24;
                  v26 = *v46;
                  do
                  {
                    for (i = 0; i != v25; ++i)
                    {
                      if (*v46 != v26)
                      {
                        objc_enumerationMutation(v23);
                      }

                      v28 = *(*(&v45 + 1) + 8 * i);
                      v29 = [v6 objectForKeyedSubscript:{v13, v38}];
                      [v29 setObject:&unk_2871459B8 forKey:v28];
                    }

                    v25 = [v23 countByEnumeratingWithState:&v45 objects:v57 count:16];
                  }

                  while (v25);
                }

                a1 = v43;
                v12 = v40;
                v9 = v41;
              }

              v30 = [v12 objectForKeyedSubscript:{@"SignalBars", v38}];
              v31 = [v30 integerValue];

              v32 = MEMORY[0x277CCABB0];
              v33 = [v12 objectForKeyedSubscript:@"TotalTime"];
              v16 = [v32 numberWithUnsignedInteger:{objc_msgSend(v33, "unsignedIntegerValue")}];

              if (v31 >= 5)
              {
                v35 = PLLogAggregateSummarizationService();
                v10 = v42;
                if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  *buf = v38;
                  v54 = v31;
                  v55 = 2112;
                  v56 = v13;
                  _os_log_error_impl(&dword_25EE51000, v35, OS_LOG_TYPE_ERROR, "Invalid signal bar: %ld for bundleID: %@", buf, 0x16u);
                }

                v34 = @"SignalBarUnknown";
              }

              else
              {
                v34 = off_279A5CAC8[v31];
                v10 = v42;
              }

              v17 = [v6 objectForKeyedSubscript:v13];
              [v17 setObject:v16 forKey:v34];
LABEL_26:
            }
          }
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v49 objects:v58 count:16];
    }

    while (v9);
  }

  v36 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)osVersion
{
  if (osVersion_onceToken != -1)
  {
    +[PLAggregateSummarizationService osVersion];
  }

  v3 = osVersion_osVersion;

  return v3;
}

void __44__PLAggregateSummarizationService_osVersion__block_invoke()
{
  v6 = _CFCopySupplementalVersionDictionary();
  if (v6)
  {
    v0 = objc_alloc(MEMORY[0x277CCACA8]);
    v1 = [v6 objectForKeyedSubscript:@"ProductName"];
    v2 = [v6 objectForKeyedSubscript:@"ProductVersion"];
    v3 = [v6 objectForKeyedSubscript:@"ProductBuildVersion"];
    v4 = [v0 initWithFormat:@"%@ %@ (%@)", v1, v2, v3];
    v5 = osVersion_osVersion;
    osVersion_osVersion = v4;
  }

  else
  {
    v1 = osVersion_osVersion;
    osVersion_osVersion = 0;
  }
}

+ (id)modelIdentifier
{
  if (modelIdentifier_onceToken != -1)
  {
    +[PLAggregateSummarizationService modelIdentifier];
  }

  v3 = modelIdentifier_modelIdentifier;

  return v3;
}

void __50__PLAggregateSummarizationService_modelIdentifier__block_invoke()
{
  v6 = *MEMORY[0x277D85DE8];
  *v5 = 0x100000006;
  memset(v4, 0, sizeof(v4));
  v3 = 64;
  sysctl(v5, 2u, v4, &v3, 0, 0);
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:v4 encoding:1];
  v1 = modelIdentifier_modelIdentifier;
  modelIdentifier_modelIdentifier = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (void)preformatMetricsForFormatter:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleAggregationQueryWithPayload:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleAggregationQueryWithPayload:(os_log_t)log .cold.2(char a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109376;
  v4[1] = a2;
  v5 = 1024;
  v6 = a1 & 1;
  _os_log_debug_impl(&dword_25EE51000, log, OS_LOG_TYPE_DEBUG, "handleAggregationQuery with queryType:%d today:%d", v4, 0xEu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)handleAggregationQueryWithPayload:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end