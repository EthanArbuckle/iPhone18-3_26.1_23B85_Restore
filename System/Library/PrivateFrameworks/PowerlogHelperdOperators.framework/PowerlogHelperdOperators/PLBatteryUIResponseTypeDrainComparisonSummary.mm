@interface PLBatteryUIResponseTypeDrainComparisonSummary
- (BOOL)shouldShowAnomalousQualifier:(int64_t)a3 forBundleID:(id)a4;
- (id)bundleIDsToSkipMapping;
- (id)comparisonDateIntervalsWithTargetStartTime:(double)a3 withEndTime:(double)a4 withIndex:(int)a5;
- (id)createAnomalousAppEntriesFrom:(id)a3;
- (id)createAppDataMapForComparisonDateIntervals:(id)a3 currentDateInterval:(id)a4 targetTopApps:(id)a5;
- (id)dependencies;
- (id)getAnomalousAppsForTargetComparison:(id)a3 comparedTo:(id)a4;
- (id)getBundleIDToDisplayNameMap;
- (id)getEnergyForAppWithBundleID:(id)a3 inDateInterval:(id)a4;
- (id)getEnergyForAppWithBundleID:(id)a3 inDateInterval:(id)a4 forRootNodes:(id)a5;
- (id)getEnergyForAppWithBundleID:(id)a3 inDateIntervals:(id)a4;
- (id)getInstalledPluginToParentIDMap;
- (id)getNodeIDToNodeNameMap;
- (id)getParentBundleIDForBundleID:(id)a3;
- (id)getUsageTimesForAppWithBundleID:(id)a3 inDateInterval:(id)a4;
- (id)getUsageTimesForAppWithBundleID:(id)a3 inDateIntervals:(id)a4;
- (id)intervalSummaryItems:(id)a3;
- (id)noBackgroundBundleIDs;
- (id)result;
- (id)sortedAppEnergyArrayFromAppDataMap:(id)a3;
- (id)targetDateIntervalWithBucketStartTime:(double)a3 withEndTime:(double)a4 withIndex:(int)a5;
- (int)isDateIntervalAnomalous:(id)a3 comparedTo:(id)a4;
- (void)configure:(id)a3;
- (void)getBundleIDToDisplayNameMap;
- (void)getDrainPerBucketForDays:(int)a3;
- (void)run;
@end

@implementation PLBatteryUIResponseTypeDrainComparisonSummary

- (id)dependencies
{
  v2 = [&unk_28714DCA0 mutableCopy];
  if (_os_feature_enabled_impl())
  {
    [v2 addObject:&unk_287147290];
  }

  v3 = [v2 copy];

  return v3;
}

- (void)configure:(id)a3
{
  v81[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"start"];
  [v5 doubleValue];
  v7 = v6;

  v8 = 0x277CBE000uLL;
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v7];
  v10 = [v4 objectForKeyedSubscript:@"end"];
  [v10 doubleValue];
  v12 = v11;

  v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v12];
  v75 = v4;
  v14 = [v4 objectForKeyedSubscript:@"bucket"];
  [v14 doubleValue];
  LODWORD(v4) = v15;

  v73 = v13;
  v74 = v9;
  [v13 timeIntervalSinceDate:v9];
  v17 = llround(v16 / v4);
  v72 = objc_opt_new();
  [(PLBatteryUIResponseTypeDrainComparisonSummary *)self getDrainPerBucketForDays:v17 + 7];
  if (_os_feature_enabled_impl())
  {
    v78 = PLBatteryUsageUIKeyFromConfiguration();
    v18 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
    v19 = [v18 responseCache];
    v20 = [v19 objectForKeyedSubscript:&unk_2871472C0];
    v21 = [v20 objectForKeyedSubscript:v78];
    v22 = [v21 objectForKeyedSubscript:@"result"];
    [v22 objectForKeyedSubscript:@"PLBatteryUIBreakdownKey"];
    v23 = v76 = v17;
    v24 = [v23 reverseObjectEnumerator];
    v25 = [v24 allObjects];
    dynamicBreakdownFromCache = self->_dynamicBreakdownFromCache;
    self->_dynamicBreakdownFromCache = v25;

    v27 = PLBatteryUsageUIKeyFromConfiguration();
    v28 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
    v29 = [v28 responseCache];
    v30 = [v29 objectForKeyedSubscript:&unk_2871472C0];
    v31 = [v30 objectForKeyedSubscript:v27];
    v32 = [v31 objectForKeyedSubscript:@"result"];
    v33 = [v32 objectForKeyedSubscript:@"PLBatteryUIBreakdownKey"];
    v34 = [v33 reverseObjectEnumerator];
    v35 = [v34 allObjects];
    breakdownFromCache = self->_breakdownFromCache;
    self->_breakdownFromCache = v35;

    v17 = v76;
  }

  v37 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
  v38 = [v37 storage];
  v79 = [v38 firstEntryForKey:@"PLBatteryAgent_Aggregate_UILevel"];

  v39 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
  v40 = [v39 storage];
  v41 = [v40 lastEntryForKey:@"PLBatteryAgent_Aggregate_UILevel"];

  v42 = self;
  if ((v17 & 0x80000000) == 0)
  {
    v43 = 0;
    v77 = v17 + 1;
    v44 = 0.0;
    do
    {
      v45 = *(v8 + 2728);
      v46 = [v41 entryDate];
      [v46 timeIntervalSince1970];
      v48 = v47;

      v49 = v12 + v44 * -86400.0;
      if (v48 < v49)
      {
        v49 = v48;
      }

      v50 = [v45 dateWithTimeIntervalSince1970:v49];
      v51 = *(v8 + 2728);
      v44 = v44 + 1.0;
      v52 = v8;
      v53 = (v43 + 1);
      v54 = [v79 entryDate];
      [v54 timeIntervalSince1970];
      v56 = v55;

      if (v12 + v53 * -86400.0 >= v56)
      {
        v57 = v12 + v53 * -86400.0;
      }

      else
      {
        v57 = v56;
      }

      v58 = [v51 dateWithTimeIntervalSince1970:v57];
      [v58 timeIntervalSince1970];
      v60 = v59;
      [v50 timeIntervalSince1970];
      v62 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)v42 targetDateIntervalWithBucketStartTime:v43 withEndTime:v60 withIndex:v61];
      [v58 timeIntervalSince1970];
      v64 = v63;
      [v50 timeIntervalSince1970];
      v66 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)v42 comparisonDateIntervalsWithTargetStartTime:v43 withEndTime:v64 withIndex:v65];
      v80[0] = @"CurrentInterval";
      v80[1] = @"ComparisonDateIntervals";
      v81[0] = v62;
      v81[1] = v66;
      v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:2];
      [v72 addObject:v67];

      v43 = v53;
      v68 = v77 == v53;
      v8 = v52;
    }

    while (!v68);
  }

  v69 = [MEMORY[0x277CBEA60] arrayWithArray:v72];
  buckets = v42->_buckets;
  v42->_buckets = v69;

  v71 = *MEMORY[0x277D85DE8];
}

- (void)run
{
  v2 = self;
  v96 = *MEMORY[0x277D85DE8];
  self->_suggest = 0;
  v67 = objc_opt_new();
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = v2->_buckets;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v78 objects:v95 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v79;
    v68 = *v79;
    do
    {
      v6 = 0;
      v70 = v4;
      do
      {
        if (*v79 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v78 + 1) + 8 * v6);
        v8 = [v7 objectForKeyedSubscript:@"CurrentInterval"];
        v9 = [v7 objectForKeyedSubscript:@"ComparisonDateIntervals"];
        v10 = v9;
        if (v8)
        {
          v11 = v9 == 0;
        }

        else
        {
          v11 = 1;
        }

        if (!v11)
        {
          v12 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)v2 isDateIntervalAnomalous:v8 comparedTo:v9];
          v93[0] = @"SummaryComparisonType";
          v13 = [MEMORY[0x277CCABB0] numberWithInt:v12];
          v94[0] = v13;
          v93[1] = @"SummaryDrainToday";
          v14 = [v8 accumulatedDrainLevel];
          v94[1] = v14;
          v93[2] = @"SummaryDrainAverage";
          v15 = v2;
          v16 = [MEMORY[0x277CCABB0] numberWithInt:{-[NSNumber intValue](v2->_averageDrainRate, "intValue")}];
          v94[2] = v16;
          v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:v93 count:3];
          v18 = [v17 mutableCopy];

          if (v12 != 3)
          {
            goto LABEL_27;
          }

          if (_os_feature_enabled_impl())
          {
            v19 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)v15 getAnomalousAppsForTargetComparison:v8 comparedTo:v10];
            v20 = v19;
            if (v19)
            {
              v91 = @"SummaryList";
              v92 = v19;
              v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
              [v18 addEntriesFromDictionary:v21];
            }

            goto LABEL_27;
          }

          v22 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)v15 intervalSummaryItems:v8];
          if (v22)
          {
            v23 = v22;
            v24 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)v15 createAppDataMapForComparisonDateIntervals:v10 currentDateInterval:v8 targetTopApps:v22];
            if (v24)
            {
              v25 = v24;
              v26 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)v15 sortedAppEnergyArrayFromAppDataMap:v24];
              if (v26)
              {
                v27 = v26;
                v28 = [v26 count];
                if (v28 >= 5)
                {
                  v29 = 5;
                }

                else
                {
                  v29 = v28;
                }

                v30 = [v27 subarrayWithRange:{0, v29}];

                v66 = v30;
                v31 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)v15 createAnomalousAppEntriesFrom:v30];
                v32 = v31;
                v33 = v31 == 0;
                if (v31)
                {
                  v89 = @"SummaryList";
                  v90 = v31;
                  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
                  [v18 addEntriesFromDictionary:v34];
                }
              }

              else
              {
                v33 = 1;
              }

              if (!v33)
              {
LABEL_27:
                if (v18)
                {
                  [v67 addObject:v18];
                }
              }
            }

            else
            {
            }
          }

          v2 = v15;
          v5 = v68;
          v4 = v70;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSArray *)obj countByEnumeratingWithState:&v78 objects:v95 count:16];
    }

    while (v4);
  }

  v35 = objc_opt_new();
  v36 = [(NSArray *)v2->_buckets firstObject];
  v37 = [v36 objectForKeyedSubscript:@"CurrentInterval"];

  v38 = [(NSArray *)v2->_buckets firstObject];
  v39 = [v38 objectForKeyedSubscript:@"ComparisonDateIntervals"];

  v87[0] = @"Drain";
  v40 = v2;
  v41 = MEMORY[0x277CCABB0];
  v42 = [v37 accumulatedDrainLevel];
  v43 = [v41 numberWithInt:{objc_msgSend(v42, "intValue")}];
  v87[1] = @"Date";
  v88[0] = v43;
  v44 = MEMORY[0x277CCABB0];
  v69 = v37;
  v45 = [v37 startDate];
  v46 = [v45 convertFromMonotonicToSystem];
  obja = &v40->super.isa;
  [(PLBatteryUIResponseTypeDrainComparisonSummary *)v40 middayFromMidnight:v46];
  v47 = [v44 numberWithDouble:?];
  v88[1] = v47;
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:2];
  v49 = v35;
  [v35 addObject:v48];

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v71 = v39;
  v50 = [v71 countByEnumeratingWithState:&v74 objects:v86 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v75;
    do
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v75 != v52)
        {
          objc_enumerationMutation(v71);
        }

        v54 = *(*(&v74 + 1) + 8 * i);
        v84[0] = @"Drain";
        v55 = MEMORY[0x277CCABB0];
        v56 = [v54 accumulatedDrainLevel];
        v57 = [v55 numberWithInt:{objc_msgSend(v56, "intValue")}];
        v84[1] = @"Date";
        v85[0] = v57;
        v58 = MEMORY[0x277CCABB0];
        v59 = [v54 startDate];
        v60 = [v59 convertFromMonotonicToSystem];
        [obja middayFromMidnight:v60];
        v61 = [v58 numberWithDouble:?];
        v85[1] = v61;
        v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:2];
        [v49 addObject:v62];
      }

      v51 = [v71 countByEnumeratingWithState:&v74 objects:v86 count:16];
    }

    while (v51);
  }

  v63 = [v67 objectAtIndexedSubscript:0];
  v82 = @"SummaryChart";
  v83 = v49;
  v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
  [v63 addEntriesFromDictionary:v64];

  if ([v67 count])
  {
    *(obja + 8) = 1;
    objc_storeStrong(obja + 12, v67);
  }

  v65 = *MEMORY[0x277D85DE8];
}

- (id)result
{
  v8[1] = *MEMORY[0x277D85DE8];
  [(PLBatteryUIResponseTypeDrainComparisonSummary *)self setAccumulatedDrainFromCache:0];
  [(PLBatteryUIResponseTypeDrainComparisonSummary *)self setAccumulatedDynamicDrainFromCache:0];
  if (self->_suggest)
  {
    resultArray = self->_resultArray;
    v7 = @"PLBatteryUIUsageSummaryKey";
    v8[0] = resultArray;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)getDrainPerBucketForDays:(int)a3
{
  v5 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
  v6 = (86400 * a3);
  v7 = [v5 getUISOCDrainByBuckets:v6 fromCachedLength:1296000 forBucketSize:86400];

  if (v7)
  {
    v8 = [v7 reverseObjectEnumerator];
    v13 = [v8 allObjects];

    [(PLBatteryUIResponseTypeDrainComparisonSummary *)self setAccumulatedDrainFromCache:v13];
    v9 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
    v10 = [v9 getDynamicEndUISOCDrainByBuckets:v6 fromCachedLength:1296000 forBucketSize:86400];

    if (v10)
    {
      v11 = [v10 reverseObjectEnumerator];
      v12 = [v11 allObjects];

      [(PLBatteryUIResponseTypeDrainComparisonSummary *)self setAccumulatedDynamicDrainFromCache:v12];
    }
  }
}

- (int)isDateIntervalAnomalous:(id)a3 comparedTo:(id)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v13 = PLLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(PLBatteryUIResponseTypeDrainComparisonSummary *)v13 isDateIntervalAnomalous:v21 comparedTo:v22, v23, v24, v25, v26, v27];
    }

    goto LABEL_10;
  }

  if (!v7)
  {
    v13 = PLLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(PLBatteryUIResponseTypeDrainComparisonSummary *)v13 isDateIntervalAnomalous:v28 comparedTo:v29, v30, v31, v32, v33, v34];
    }

    goto LABEL_10;
  }

  v9 = [v6 accumulatedDrainLevel];
  [v9 doubleValue];
  v11 = v10;

  v12 = [v8 count];
  if (v12 <= 1)
  {
    v13 = PLLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(PLBatteryUIResponseTypeDrainComparisonSummary *)v13 isDateIntervalAnomalous:v14 comparedTo:v15, v16, v17, v18, v19, v20];
    }

LABEL_10:

LABEL_11:
    v35 = 0;
    goto LABEL_12;
  }

  v38 = v12;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v39 = v8;
  v40 = [v39 countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v55;
    v43 = 0.0;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v55 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v45 = [*(*(&v54 + 1) + 8 * i) accumulatedDrainLevel];
        [v45 doubleValue];
        v43 = v43 + v46;
      }

      v41 = [v39 countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v41);
  }

  else
  {
    v43 = 0.0;
  }

  v47 = v43 / v38;
  v48 = [MEMORY[0x277CCABB0] numberWithDouble:v47];
  averageDrainRate = self->_averageDrainRate;
  self->_averageDrainRate = v48;

  if (v47 == 0.0)
  {
    goto LABEL_11;
  }

  v50 = llround(v11 - v47);
  v51 = (v50 / v47 * 100.0);
  if (v50 <= 4 || v51 <= 20)
  {
    v53 = 2;
  }

  else
  {
    v53 = 3;
  }

  if (v51 < -20)
  {
    v35 = 1;
  }

  else
  {
    v35 = v53;
  }

LABEL_12:

  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

- (id)getAnomalousAppsForTargetComparison:(id)a3 comparedTo:(id)a4
{
  v143 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 sortedAppList];
  v9 = v8;
  if (v8 && [v8 count])
  {
    v121 = self;
    v119 = objc_opt_new();
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v113 = v9;
    obj = v9;
    v117 = [obj countByEnumeratingWithState:&v132 objects:v142 count:16];
    if (!v117)
    {
      goto LABEL_47;
    }

    v116 = *v133;
    v115 = v6;
    v120 = v7;
    while (1)
    {
      for (i = 0; i != v117; ++i)
      {
        if (*v133 != v116)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v132 + 1) + 8 * i);
        v12 = [v6 appBreakdown];
        v13 = [v12 objectForKeyedSubscript:v11];
        v14 = [v13 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
        [v14 doubleValue];
        v16 = v15;

        if ([v7 count])
        {
          v118 = v16;
          v19 = 0;
          v20 = 0.0;
          v21 = 0.0;
          v22 = 0.0;
          v23 = 0.0;
          v24 = 0.0;
          v122 = 0.0;
          v124 = 0.0;
          v126 = 0.0;
          do
          {
            v25 = [v7 objectAtIndexedSubscript:v19];
            v26 = [v25 appBreakdown];
            v27 = [v26 objectForKeyedSubscript:v11];
            v28 = [v27 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
            [v28 doubleValue];
            v130 = v29;

            v30 = [v25 appBreakdown];
            v31 = [v30 objectForKeyedSubscript:v11];
            v32 = [v31 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
            [v32 doubleValue];
            v128 = v33;

            v34 = [v25 appBreakdown];
            v35 = [v34 objectForKeyedSubscript:v11];
            v36 = [v35 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
            [v36 doubleValue];
            v38 = v37;

            v39 = [v25 appBreakdown];
            v40 = [v39 objectForKeyedSubscript:v11];
            v41 = [v40 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundAudioRuntimeKey"];
            [v41 doubleValue];
            v43 = v42;

            v44 = [v25 appBreakdown];
            v45 = [v44 objectForKeyedSubscript:v11];
            v46 = [&unk_28714DCB8 objectAtIndexedSubscript:1];
            v47 = [v45 objectForKeyedSubscript:v46];
            [v47 doubleValue];
            v49 = v48;

            if ([(NSArray *)v121->_breakdownFromCache count]- 1 <= v19)
            {
              ++v19;
            }

            else
            {
              v50 = [(NSArray *)v121->_breakdownFromCache objectAtIndexedSubscript:++v19];
              v51 = [v50 objectForKeyedSubscript:@"PLBatteryUIPerAppBreakdownKey"];
              v52 = [v51 objectForKeyedSubscript:v11];
              v53 = [v52 objectForKeyedSubscript:@"PLBatteryUIAppEnergyUsedKey"];
              [v53 doubleValue];
              v122 = v122 + v54;

              v55 = [(NSArray *)v121->_breakdownFromCache objectAtIndexedSubscript:v19];
              v56 = [v55 objectForKeyedSubscript:@"PLBatteryUIPerAppBreakdownKey"];
              v57 = [v56 objectForKeyedSubscript:v11];
              v58 = [v57 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
              [v58 doubleValue];
              v124 = v124 + v59;

              v60 = [(NSArray *)v121->_breakdownFromCache objectAtIndexedSubscript:v19];
              v61 = [v60 objectForKeyedSubscript:@"PLBatteryUIPerAppBreakdownKey"];
              v62 = [v61 objectForKeyedSubscript:v11];
              v63 = [v62 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
              [v63 doubleValue];
              v126 = v126 + v64;
            }

            v20 = v20 + v130;
            v21 = v21 + v128;
            v22 = v22 + v38;
            v23 = v23 + v43;
            v24 = v24 + v49;

            v7 = v120;
          }

          while ([v120 count] > v19);
          v18 = v122;
          v65 = v122 == 0.0;
          if (v124 != 0.0)
          {
            v65 = 0;
          }

          v17 = v126;
          v66 = v126 == 0.0 && v65;
          v6 = v115;
          v16 = v118;
        }

        else
        {
          v24 = 0.0;
          v66 = 1;
          v23 = 0.0;
          v22 = 0.0;
          v21 = 0.0;
          v20 = 0.0;
        }

        if (v16 > v20 / [v7 count])
        {
          v67 = [v6 appBreakdown];
          v68 = [v67 objectForKeyedSubscript:v11];

          v69 = [v68 objectForKeyedSubscript:@"PLBatteryUIAppNameKey"];
          v70 = [v69 stringValue];

          v71 = v68;
          v72 = [v68 objectForKeyedSubscript:@"PLBatteryUIAppTypeKey"];
          v73 = [v72 intValue];

          v74 = MEMORY[0x277CBEB38];
          v140[0] = @"Title";
          v140[1] = @"BundleID";
          v131 = v70;
          v141[0] = v70;
          v141[1] = v11;
          v140[2] = @"AppType";
          v75 = [MEMORY[0x277CCABB0] numberWithInt:v73];
          v141[2] = v75;
          v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v141 forKeys:v140 count:3];
          v129 = [v74 dictionaryWithDictionary:v76];

          v77 = [v6 appBreakdown];
          v78 = [v77 objectForKeyedSubscript:v11];
          v79 = [v78 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
          [v79 doubleValue];
          v81 = v80;
          v125 = [v7 count];

          v82 = [v6 appBreakdown];
          v83 = [v82 objectForKeyedSubscript:v11];
          v84 = [v83 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
          [v84 doubleValue];
          v86 = v85;
          v123 = [v7 count];

          v87 = [v6 appBreakdown];
          v88 = [v87 objectForKeyedSubscript:v11];
          v89 = [v88 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundAudioRuntimeKey"];
          [v89 doubleValue];
          v91 = v90;
          v127 = [v7 count];

          v92 = [v6 appBreakdown];
          v93 = [v92 objectForKeyedSubscript:v11];
          v94 = [&unk_28714DCD0 objectAtIndexedSubscript:1];
          v95 = [v93 objectForKeyedSubscript:v94];
          [v95 doubleValue];
          v97 = v96;

          v98 = v24 / [v7 count];
          v99 = [v6 appBreakdown];
          v100 = [v99 objectForKeyedSubscript:v11];
          v101 = [v100 objectForKeyedSubscript:@"PLBatteryUIAppQualifiersKey"];

          if (v97 > v98 && v101)
          {
            v102 = [v101 containsObject:&unk_2871472D8];
            if (v102)
            {
              v103 = 24;
            }

            else
            {
              v103 = 22;
            }

            if ((v102 | v66))
            {
              v104 = -1.0;
              goto LABEL_35;
            }

LABEL_31:
            v104 = v91 - v23 / v127;
            if (v104 >= 600.0 && v101 && ([v101 containsObject:&unk_2871472F0] & 1) != 0)
            {
              v103 = 23;
              goto LABEL_35;
            }

            v104 = v81 - v21 / v125;
            v106 = v129;
            v105 = v131;
            if (v104 < 600.0)
            {
              v104 = v86 - v22 / v123;
              if (v104 >= 600.0)
              {
                v103 = 21;
                goto LABEL_40;
              }

LABEL_43:
              [v119 addObject:v106];

              goto LABEL_44;
            }

            v103 = 20;
          }

          else
          {
            if ((v66 & 1) == 0)
            {
              goto LABEL_31;
            }

            v104 = -1.0;
            v103 = 22;
LABEL_35:
            v106 = v129;
            v105 = v131;
          }

LABEL_40:
          if ([(PLBatteryUIResponseTypeDrainComparisonSummary *)v121 shouldShowAnomalousQualifier:v103 forBundleID:v11])
          {
            v138 = @"qualifierType";
            v107 = [MEMORY[0x277CCABB0] numberWithInteger:v103];
            v139 = v107;
            v108 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
            [v106 addEntriesFromDictionary:v108];

            if (v104 != -1.0)
            {
              v136 = @"qualifierDuration";
              v109 = [MEMORY[0x277CCABB0] numberWithDouble:v104];
              v137 = v109;
              v110 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
              [v106 addEntriesFromDictionary:v110];
            }
          }

          goto LABEL_43;
        }

LABEL_44:
        if ([v119 count] == 5)
        {
          goto LABEL_47;
        }
      }

      v117 = [obj countByEnumeratingWithState:&v132 objects:v142 count:16];
      if (!v117)
      {
LABEL_47:

        v9 = v113;
        goto LABEL_49;
      }
    }
  }

  v119 = 0;
LABEL_49:

  v111 = *MEMORY[0x277D85DE8];

  return v119;
}

- (id)intervalSummaryItems:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
  v6 = [v5 storage];
  v7 = MEMORY[0x277CCACA8];
  v8 = [v4 startDate];
  [v8 timeIntervalSince1970];
  v10 = v9;
  v32 = v4;
  v11 = [v4 endDate];
  [v11 timeIntervalSince1970];
  v13 = [v7 stringWithFormat:@"SELECT SUM(Energy/1000.0) AS Energy, NodeID, RootNodeID FROM PLAccountingOperator_Aggregate_RootNodeEnergy WHERE timestamp >= %f AND timestamp <= %f AND timeInterval = 3600.0 GROUP BY NodeID ORDER BY Energy DESC LIMIT 30", v10, v12];
  v14 = [v6 entriesForKey:@"PLAccountingOperator_Aggregate_RootNodeEnergy" withQuery:v13];

  v15 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self getNodeIDToNodeNameMap];
  v16 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v14;
  v17 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v35;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v35 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v34 + 1) + 8 * i);
        v22 = [v21 objectForKeyedSubscript:@"NodeID"];
        v23 = [v15 objectForKeyedSubscript:v22];

        v24 = [v21 objectForKeyedSubscript:@"Energy"];
        [v24 doubleValue];
        v26 = v25;

        if (v23)
        {
          v38[1] = @"Energy";
          v39[0] = v23;
          v38[0] = @"BundleID";
          v27 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
          v39[1] = v27;
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
          [v16 addObject:v28];
        }
      }

      v18 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v18);
  }

  v29 = [v16 copy];
  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)sortedAppEnergyArrayFromAppDataMap:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__PLBatteryUIResponseTypeDrainComparisonSummary_sortedAppEnergyArrayFromAppDataMap___block_invoke;
  v8[3] = &unk_279A5E430;
  v9 = v4;
  v5 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v8];

  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_37];

  return v6;
}

void __84__PLBatteryUIResponseTypeDrainComparisonSummary_sortedAppEnergyArrayFromAppDataMap___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v10[0] = @"BundleID";
  v10[1] = @"AppInfo";
  v11[0] = a2;
  v11[1] = a3;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a3;
  v7 = a2;
  v8 = [v5 dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v4 addObject:v8];

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __84__PLBatteryUIResponseTypeDrainComparisonSummary_sortedAppEnergyArrayFromAppDataMap___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"AppInfo"];
  v6 = [v4 objectForKeyedSubscript:@"AppInfo"];

  if (!v5)
  {
    v7 = 0;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_10:
    v9 = 0;
    if (v7)
    {
      v10 = -1;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_13;
  }

  v7 = [v5 objectForKeyedSubscript:@"EnergyDifference"];
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_3:
  v8 = [v6 objectForKeyedSubscript:@"EnergyDifference"];
  v9 = v8;
  if (v7)
  {
    v10 = -1;
  }

  else
  {
    v10 = v8 != 0;
  }

  if (v7 && v8)
  {
    v10 = [v8 compare:v7];
  }

LABEL_13:

  return v10;
}

- (id)targetDateIntervalWithBucketStartTime:(double)a3 withEndTime:(double)a4 withIndex:(int)a5
{
  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:a3];
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:a4];
  v10 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self accumulatedDrainFromCache];
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  v12 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self accumulatedDrainFromCache];
  if ([v12 count] <= a5 || (-[PLBatteryUIResponseTypeDrainComparisonSummary accumulatedDynamicDrainFromCache](self, "accumulatedDynamicDrainFromCache"), (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_10;
  }

  v14 = v13;
  v15 = a5;
  v16 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self accumulatedDynamicDrainFromCache];
  v17 = [v16 count];

  if (v17 <= a5)
  {
LABEL_10:
    v26 = MEMORY[0x277CCACA8];
    [v8 timeIntervalSince1970];
    v28 = v27;
    [v9 timeIntervalSince1970];
    v30 = [v26 stringWithFormat:@"SELECT SUM(Level) AS Level FROM PLBatteryAgent_Aggregate_UILevel WHERE timestamp >= %f AND timestamp <= %f", v28, v29];
    v31 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
    v32 = [v31 storage];
    v33 = [v32 entriesForKey:@"PLBatteryAgent_Aggregate_UILevel" withQuery:v30];
    v34 = [v33 firstObject];
    v35 = [v34 objectForKeyedSubscript:@"Level"];
    [v35 doubleValue];
    v21 = v36;

    v37 = 0;
    v24 = 0;
LABEL_11:

    goto LABEL_12;
  }

  if (a5 < 1)
  {
    v44 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self accumulatedDynamicDrainFromCache];
    v45 = [v44 objectAtIndexedSubscript:v15];
    [v45 doubleValue];
    v21 = v46;

    if (_os_feature_enabled_impl() && self->_dynamicBreakdownFromCache)
    {
      v47 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self dynamicBreakdownFromCache];
      v48 = [v47 objectAtIndexedSubscript:v15];
      v24 = [v48 objectForKeyedSubscript:@"PLBatteryUIAppBreakdownSortOrderKey"];

      v25 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self dynamicBreakdownFromCache];
      goto LABEL_21;
    }
  }

  else
  {
    v18 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self accumulatedDrainFromCache];
    v15 = a5;
    v19 = [v18 objectAtIndexedSubscript:a5];
    [v19 doubleValue];
    v21 = v20;

    if (_os_feature_enabled_impl() && self->_breakdownFromCache)
    {
      v22 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self breakdownFromCache];
      v23 = [v22 objectAtIndexedSubscript:v15];
      v24 = [v23 objectForKeyedSubscript:@"PLBatteryUIAppBreakdownSortOrderKey"];

      v25 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self breakdownFromCache];
LABEL_21:
      v30 = v25;
      v31 = [v25 objectAtIndexedSubscript:v15];
      v37 = [v31 objectForKeyedSubscript:@"PLBatteryUIPerAppBreakdownKey"];
      goto LABEL_11;
    }
  }

  v37 = 0;
  v24 = 0;
LABEL_12:
  v38 = _os_feature_enabled_impl();
  v39 = [PLBatteryUIDrainDateInterval alloc];
  v40 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
  if (v38)
  {
    v41 = [(PLBatteryUIDrainDateInterval *)v39 initWithStartDate:v8 endDate:v9 accumulatedDrain:v40 sortedAppList:v24 appBreakdown:v37];
  }

  else
  {
    v41 = [(PLBatteryUIDrainDateInterval *)v39 initWithStartDate:v8 endDate:v9 accumulatedDrain:v40];
  }

  v42 = v41;

  return v42;
}

- (id)comparisonDateIntervalsWithTargetStartTime:(double)a3 withEndTime:(double)a4 withIndex:(int)a5
{
  v69 = objc_opt_new();
  v9 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
  v10 = [v9 storage];
  v11 = [v10 firstEntryForKey:@"PLBatteryAgent_Aggregate_UILevel"];

  v12 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
  v13 = [v12 storage];
  v14 = [v13 lastEntryForKey:@"PLBatteryAgent_Aggregate_UILevel"];

  v15 = [v11 entryDate];
  [v15 timeIntervalSince1970];
  if (v16 >= a3 || ([v11 entryDate], (v17 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_30;
  }

  v18 = v17;
  v19 = [v14 entryDate];

  if (!v19)
  {
LABEL_30:
    v63 = MEMORY[0x277CBEBF8];
    goto LABEL_31;
  }

  v67 = a5;
  v20 = objc_alloc(MEMORY[0x277CCA970]);
  v66 = v11;
  v21 = [v11 entryDate];
  v65 = v14;
  v22 = [v14 entryDate];
  v23 = [v20 initWithStartDate:v21 endDate:v22];
  [v23 duration];
  v25 = (v24 / 86400.0);

  if (v25 >= 1)
  {
    v26 = a5 + 1;
    if (v25 >= 7)
    {
      v25 = 7;
    }

    v27 = 1;
    v68 = self;
    while (1)
    {
      v28 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self accumulatedDrainFromCache];
      if (!v28)
      {
        goto LABEL_17;
      }

      v29 = v28;
      v30 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self accumulatedDrainFromCache];
      if ([v30 count] <= v26)
      {
        break;
      }

      v31 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self accumulatedDynamicDrainFromCache];
      if (!v31)
      {
        break;
      }

      v32 = v31;
      v33 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self accumulatedDynamicDrainFromCache];
      v34 = [v33 count];

      if (v34 <= v26)
      {
        goto LABEL_17;
      }

      if (v67 < 1)
      {
        v58 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self accumulatedDynamicDrainFromCache];
        v59 = [v58 objectAtIndexedSubscript:v26];
        [v59 doubleValue];
        v38 = v60;

        if (!_os_feature_enabled_impl() || !self->_dynamicBreakdownFromCache)
        {
LABEL_28:
          v50 = 0;
          v41 = 0;
          goto LABEL_19;
        }

        v61 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self dynamicBreakdownFromCache];
        v62 = [v61 objectAtIndexedSubscript:v26];
        v41 = [v62 objectForKeyedSubscript:@"PLBatteryUIAppBreakdownSortOrderKey"];

        v42 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self dynamicBreakdownFromCache];
      }

      else
      {
        v35 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self accumulatedDrainFromCache];
        v36 = [v35 objectAtIndexedSubscript:v26];
        [v36 doubleValue];
        v38 = v37;

        if (!_os_feature_enabled_impl() || !self->_breakdownFromCache)
        {
          goto LABEL_28;
        }

        v39 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self breakdownFromCache];
        v40 = [v39 objectAtIndexedSubscript:v26];
        v41 = [v40 objectForKeyedSubscript:@"PLBatteryUIAppBreakdownSortOrderKey"];

        v42 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self breakdownFromCache];
      }

      v43 = v42;
      v44 = [v42 objectAtIndexedSubscript:v26];
      v50 = [v44 objectForKeyedSubscript:@"PLBatteryUIPerAppBreakdownKey"];
LABEL_18:

LABEL_19:
      v51 = _os_feature_enabled_impl();
      v52 = [PLBatteryUIDrainDateInterval alloc];
      v53 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:a3 + v27 * -86400.0];
      v54 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:a4 + v27 * -86400.0];
      v55 = [MEMORY[0x277CCABB0] numberWithDouble:v38];
      if (v51)
      {
        v56 = [(PLBatteryUIDrainDateInterval *)v52 initWithStartDate:v53 endDate:v54 accumulatedDrain:v55 sortedAppList:v41 appBreakdown:v50];
      }

      else
      {
        v56 = [(PLBatteryUIDrainDateInterval *)v52 initWithStartDate:v53 endDate:v54 accumulatedDrain:v55];
      }

      v57 = v56;

      [v69 addObject:v57];
      ++v26;
      ++v27;
      --v25;
      self = v68;
      if (!v25)
      {
        goto LABEL_34;
      }
    }

LABEL_17:
    v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT SUM(Level) AS Level FROM PLBatteryAgent_Aggregate_UILevel WHERE timestamp >= %f AND timestamp <= %f", a3 + v27 * -86400.0, a4 + v27 * -86400.0];
    v44 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
    v45 = [v44 storage];
    v46 = [v45 entriesForKey:@"PLBatteryAgent_Aggregate_UILevel" withQuery:v43];
    v47 = [v46 firstObject];
    v48 = [v47 objectForKeyedSubscript:@"Level"];
    [v48 doubleValue];
    v38 = v49;

    v50 = 0;
    v41 = 0;
    goto LABEL_18;
  }

LABEL_34:
  v63 = v69;
  v14 = v65;
  v11 = v66;
LABEL_31:

  return v63;
}

- (id)createAppDataMapForComparisonDateIntervals:(id)a3 currentDateInterval:(id)a4 targetTopApps:(id)a5
{
  v180 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v167 = a4;
  v8 = a5;
  v163 = v7;
  v9 = [v7 count];
  if (v9)
  {
    v10 = v9;
    v169 = objc_opt_new();
    v173 = 0u;
    v174 = 0u;
    v175 = 0u;
    v176 = 0u;
    v132 = v8;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v173 objects:v179 count:16];
    if (!v12)
    {
      goto LABEL_29;
    }

    v13 = v12;
    v14 = *v174;
    v168 = *MEMORY[0x277D3F320];
    v133 = v10;
    v166 = *MEMORY[0x277D3F2F8];
    v134 = *v174;
    v135 = v11;
    while (1)
    {
      v15 = 0;
      v164 = v13;
      do
      {
        if (*v174 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v173 + 1) + 8 * v15);
        v17 = [v16 objectForKeyedSubscript:@"BundleID"];
        v18 = [v16 objectForKeyedSubscript:@"Energy"];
        v19 = v18;
        if (v17)
        {
          v20 = v18 == 0;
        }

        else
        {
          v20 = 1;
        }

        if (!v20)
        {
          v171 = v17;
          v21 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self getParentBundleIDForBundleID:v17];
          if (v21)
          {
            v22 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self getBundleIDToDisplayNameMap];
            v23 = [v22 objectForKeyedSubscript:v21];

            if (v23)
            {
              goto LABEL_15;
            }

            v24 = +[PLBatteryUIResponseTypeUtilities getNonAppBundleIDs];
            v25 = [v24 containsObject:v21];

            if (v25)
            {
              v23 = v171;
LABEL_15:
              v162 = v23;
              v165 = v19;
              v26 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self getUsageTimesForAppWithBundleID:v171 inDateInterval:v167];
              v27 = [v26 objectForKeyedSubscript:@"ScreenOnTime"];
              [v27 doubleValue];
              v29 = v28;

              v30 = [v26 objectForKeyedSubscript:@"BackgroundTime"];
              [v30 doubleValue];
              v157 = v31;

              v161 = v26;
              v32 = [v26 objectForKeyedSubscript:@"BackgroundAudioPlayingTime"];
              [v32 doubleValue];
              v155 = v33;

              v34 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self getEnergyForAppWithBundleID:v171 inDateIntervals:v163];
              v35 = [v34 objectForKeyedSubscript:v168];
              [v35 doubleValue];
              v37 = v36;

              v38 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self getUsageTimesForAppWithBundleID:v171 inDateIntervals:v163];
              v39 = [v38 objectForKeyedSubscript:@"ScreenOnTime"];
              [v39 doubleValue];
              v152 = v40;

              v41 = [v38 objectForKeyedSubscript:@"BackgroundTime"];
              [v41 doubleValue];
              v150 = v42;

              v160 = v38;
              v43 = [v38 objectForKeyedSubscript:@"BackgroundAudioPlayingTime"];
              [v43 doubleValue];
              v149 = v44;

              [v19 doubleValue];
              v146 = v45;
              v46 = [v169 objectForKeyedSubscript:v21];
              v47 = [v46 objectForKeyedSubscript:@"EnergyDifference"];
              [v47 doubleValue];
              v144 = v48;

              v49 = [v169 objectForKeyedSubscript:v21];
              v50 = [v49 objectForKeyedSubscript:@"ScreenOnTimeDifference"];
              [v50 doubleValue];
              v142 = v51;

              v52 = [v169 objectForKeyedSubscript:v21];
              v53 = [v52 objectForKeyedSubscript:@"BackgroundTimeDifference"];
              [v53 doubleValue];
              v55 = v54;

              v170 = v21;
              v56 = [v169 objectForKeyedSubscript:v21];
              v57 = [v56 objectForKeyedSubscript:@"AudioTimeDifference"];
              [v57 doubleValue];
              v140 = v58;

              v59 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self getEnergyForQualificationID:1 withAppWithBundleID:v171 inDateInterval:v167];
              v60 = [v59 objectForKeyedSubscript:v166];
              [v60 doubleValue];
              v61 = 0.0;
              v62 = 0.0;
              if (v63 >= 0.0)
              {
                v64 = [v59 objectForKeyedSubscript:v166];
                [v64 doubleValue];
                v62 = v65;
              }

              v138 = v62;
              v159 = v59;

              v66 = [v169 objectForKeyedSubscript:v170];
              v67 = [v66 objectForKeyedSubscript:@"BBPoorEnergy"];
              [v67 doubleValue];
              v137 = v68;

              v69 = [PLBatteryUIDrainDateInterval alloc];
              v70 = [v163 lastObject];
              v71 = [v70 startDate];
              v72 = [v163 firstObject];
              v73 = [v72 endDate];
              v74 = [(PLBatteryUIDrainDateInterval *)v69 initWithStartDate:v71 endDate:v73];

              v75 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self getEnergyForAppWithBundleID:v171 inDateInterval:v74];
              v76 = [v75 objectForKeyedSubscript:v168];
              [v76 doubleValue];
              if (v77 >= 0.0)
              {
                v78 = [v75 objectForKeyedSubscript:v168];
                [v78 doubleValue];
                v61 = v79;
              }

              v139 = v61;
              v153 = v75;

              v80 = [v169 objectForKeyedSubscript:v170];
              v81 = [v80 objectForKeyedSubscript:@"TotalPastAppEnergy"];
              [v81 doubleValue];
              v136 = v82;

              v83 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self getEnergyForQualificationID:1 withAppWithBundleID:v171 inDateInterval:v74];
              v84 = [v83 objectForKeyedSubscript:v166];
              [v84 doubleValue];
              v85 = 0.0;
              v86 = 0.0;
              if (v87 >= 0.0)
              {
                v88 = [v83 objectForKeyedSubscript:v166];
                [v88 doubleValue];
                v86 = v89;
              }

              v90 = [v169 objectForKeyedSubscript:v170];
              v91 = [v90 objectForKeyedSubscript:@"PastAverageBBPoorEnergy"];
              [v91 doubleValue];
              v93 = v92;

              v94 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self getUsageTimesForAppWithBundleID:v171 inDateInterval:v74];
              v95 = [v94 objectForKeyedSubscript:@"ScreenOnTime"];
              [v95 doubleValue];
              if (v96 >= 0.0)
              {
                v97 = [v94 objectForKeyedSubscript:@"ScreenOnTime"];
                [v97 doubleValue];
                v85 = v98;
              }

              v154 = v74;

              v99 = [v94 objectForKeyedSubscript:@"BackgroundTime"];
              [v99 doubleValue];
              v100 = 0.0;
              if (v101 >= 0.0)
              {
                v102 = [v94 objectForKeyedSubscript:@"BackgroundTime"];
                [v102 doubleValue];
                v100 = v103;
              }

              v104 = v146 - v37 / v133 + v144;
              v105 = v157 - v150 / v133 + v55;
              v147 = v155 - v149 / v133 + v140;
              v151 = v86 + v93;

              v158 = v94;
              v106 = [v169 objectForKeyedSubscript:v170];
              v107 = [v106 objectForKeyedSubscript:@"TotalPastAppUsage"];
              [v107 doubleValue];
              v109 = v85 + v100 + v108;

              v156 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self getEnergyForAppWithBundleID:v171 inDateInterval:v167 forRootNodes:&unk_28714DCE8];
              v110 = [v169 objectForKeyedSubscript:v170];
              v111 = [v110 objectForKeyedSubscript:@"totalAudioEnergy"];
              [v111 doubleValue];
              v113 = v112;
              v114 = [v156 objectForKeyedSubscript:v168];
              [v114 doubleValue];
              v116 = v113 + v115;

              v117 = [v169 objectForKeyedSubscript:v170];
              v118 = [v117 objectForKeyedSubscript:@"totalAppEnergyToday"];
              [v118 doubleValue];
              v120 = v119;
              [v19 doubleValue];
              v122 = v120 + v121;

              v177[0] = @"EnergyDifference";
              v145 = [MEMORY[0x277CCABB0] numberWithDouble:v104];
              v178[0] = v145;
              v177[1] = @"ScreenOnTimeDifference";
              v143 = [MEMORY[0x277CCABB0] numberWithDouble:v29 - v152 / v133 + v142];
              v178[1] = v143;
              v177[2] = @"BackgroundTimeDifference";
              v141 = [MEMORY[0x277CCABB0] numberWithDouble:v105];
              v178[2] = v141;
              v177[3] = @"AudioTimeDifference";
              v148 = [MEMORY[0x277CCABB0] numberWithDouble:v147];
              v178[3] = v148;
              v177[4] = @"BBPoorEnergy";
              v123 = [MEMORY[0x277CCABB0] numberWithDouble:v138 + v137];
              v178[4] = v123;
              v177[5] = @"PastAverageBBPoorEnergy";
              v124 = [MEMORY[0x277CCABB0] numberWithDouble:v151 / v133];
              v178[5] = v124;
              v177[6] = @"TotalPastAppEnergy";
              v125 = [MEMORY[0x277CCABB0] numberWithDouble:v139 + v136];
              v178[6] = v125;
              v177[7] = @"TotalPastAppUsage";
              v126 = [MEMORY[0x277CCABB0] numberWithDouble:v109];
              v178[7] = v126;
              v177[8] = @"totalAudioEnergy";
              v127 = [MEMORY[0x277CCABB0] numberWithDouble:v116];
              v178[8] = v127;
              v177[9] = @"totalAppEnergyToday";
              v128 = [MEMORY[0x277CCABB0] numberWithDouble:v122];
              v178[9] = v128;
              v129 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v178 forKeys:v177 count:10];
              [v169 setObject:v129 forKeyedSubscript:v170];

              v19 = v165;
              v21 = v170;

              v14 = v134;
              v11 = v135;
            }
          }

          v13 = v164;
          v17 = v171;
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v173 objects:v179 count:16];
      if (!v13)
      {
LABEL_29:

        v8 = v132;
        goto LABEL_31;
      }
    }
  }

  v169 = 0;
LABEL_31:

  v130 = *MEMORY[0x277D85DE8];

  return v169;
}

- (id)createAnomalousAppEntriesFrom:(id)a3
{
  v84 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v69 = objc_opt_new();
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v73 objects:v83 count:16];
  if (!v4)
  {
    goto LABEL_37;
  }

  v5 = v4;
  v71 = *v74;
  v68 = 600.0;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v74 != v71)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v73 + 1) + 8 * i);
      v8 = [v7 objectForKeyedSubscript:{@"BundleID", *&v68}];
      v9 = [v7 objectForKeyedSubscript:@"AppInfo"];
      v10 = [v9 objectForKeyedSubscript:@"EnergyDifference"];
      [v10 doubleValue];
      v12 = v11;

      v13 = [v7 objectForKeyedSubscript:@"AppInfo"];
      v14 = [v13 objectForKeyedSubscript:@"ScreenOnTimeDifference"];
      [v14 doubleValue];
      v16 = v15;

      v17 = [v7 objectForKeyedSubscript:@"AppInfo"];
      v18 = [v17 objectForKeyedSubscript:@"BackgroundTimeDifference"];
      [v18 doubleValue];
      v20 = v19;

      v21 = [v7 objectForKeyedSubscript:@"AppInfo"];
      v22 = [v21 objectForKeyedSubscript:@"AudioTimeDifference"];
      [v22 doubleValue];
      v24 = v23;

      v25 = [v7 objectForKeyedSubscript:@"AppInfo"];
      v26 = [v25 objectForKeyedSubscript:@"BBPoorEnergy"];
      [v26 doubleValue];
      v28 = v27;

      v29 = [v7 objectForKeyedSubscript:@"AppInfo"];
      v30 = [v29 objectForKeyedSubscript:@"PastAverageBBPoorEnergy"];
      [v30 doubleValue];
      v32 = v31;

      v33 = [v7 objectForKeyedSubscript:@"AppInfo"];
      v34 = [v33 objectForKeyedSubscript:@"TotalPastAppEnergy"];
      [v34 doubleValue];
      if (v35 == 0.0)
      {
        v36 = [v7 objectForKeyedSubscript:@"AppInfo"];
        v37 = [v36 objectForKeyedSubscript:@"TotalPastAppUsage"];
        [v37 doubleValue];
        v39 = v38 == 0.0;
      }

      else
      {
        v39 = 0;
      }

      v40 = [v7 objectForKeyedSubscript:@"AppInfo"];
      v41 = [v40 objectForKeyedSubscript:@"totalAudioEnergy"];
      [v41 doubleValue];
      v43 = v42;

      v44 = [v7 objectForKeyedSubscript:@"AppInfo"];
      v45 = [v44 objectForKeyedSubscript:@"totalAppEnergyToday"];
      [v45 doubleValue];
      v47 = v46;

      v48 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self getBundleIDToDisplayNameMap];
      v49 = [v48 objectForKeyedSubscript:v8];

      if (v49)
      {
        v50 = &unk_2871472A8;
        if (!v8)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v51 = +[PLBatteryUIResponseTypeUtilities getNonAppBundleIDs];
        v52 = [v51 containsObject:v8];

        if (!v52)
        {
          v49 = 0;
          goto LABEL_35;
        }

        v49 = v8;
        v50 = &unk_287147350;
        if (!v8)
        {
          goto LABEL_35;
        }
      }

      if (v49 && v12 > 0.0)
      {
        v53 = v28 / v47;
        if (v28 > v32 && v28 / v47 > 0.33)
        {
          v54 = 24;
        }

        else
        {
          v54 = 22;
        }

        v55 = -1.0;
        if (v28 > v32 && v28 / v47 > 0.33 || v39)
        {
          v56 = 0;
        }

        else if (v24 < v68 || (v53 = v43 / v47, v43 / v47 <= 0.33))
        {
          v53 = v68;
          if (v16 >= v68)
          {
            v56 = 0;
            v54 = 20;
            v55 = v16;
          }

          else if (v20 >= v68)
          {
            v56 = 0;
            v54 = 21;
            v55 = v20;
          }

          else
          {
            v54 = 0;
            v56 = 1;
          }
        }

        else
        {
          v56 = 0;
          v54 = 23;
          v55 = v24;
        }

        v57 = MEMORY[0x277CBEB38];
        v81[0] = @"Title";
        v81[1] = @"BundleID";
        v82[0] = v49;
        v82[1] = v8;
        v81[2] = @"AppType";
        v82[2] = v50;
        v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:{3, v53}];
        v59 = [v57 dictionaryWithDictionary:v58];

        if ((v56 & 1) == 0)
        {
          if ([(PLBatteryUIResponseTypeDrainComparisonSummary *)self shouldShowAnomalousQualifier:v54 forBundleID:v8])
          {
            v79 = @"qualifierType";
            v60 = [MEMORY[0x277CCABB0] numberWithInteger:v54];
            v80 = v60;
            v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
            [v59 addEntriesFromDictionary:v61];

            if (v55 != -1.0)
            {
              v77 = @"qualifierDuration";
              v62 = [MEMORY[0x277CCABB0] numberWithDouble:v55];
              v78 = v62;
              v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
              [v59 addEntriesFromDictionary:v63];
            }
          }
        }

        [v69 addObject:v59];
      }

LABEL_35:
    }

    v5 = [obj countByEnumeratingWithState:&v73 objects:v83 count:16];
  }

  while (v5);
LABEL_37:

  if ([v69 count])
  {
    v64 = v69;
  }

  else
  {
    v64 = 0;
  }

  v65 = v64;

  v66 = *MEMORY[0x277D85DE8];
  return v64;
}

- (id)getNodeIDToNodeNameMap
{
  v32[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ NOT NULL) AND (%@ NOT LIKE '%%%@%%') AND (%@ NOT LIKE '%%%@%%')", *MEMORY[0x277D3F3E0], *MEMORY[0x277D3F3E0], @"null", *MEMORY[0x277D3F3E0], @"unknown"];
  v4 = MEMORY[0x277CCACA8];
  v5 = *MEMORY[0x277D3F300];
  v6 = [MEMORY[0x277D3F0C8] entryKey];
  v25 = v3;
  v7 = [v4 stringWithFormat:@"%@ IN (SELECT ID FROM '%@' WHERE %@)", v5, v6, v3];

  v8 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
  v9 = [v8 storage];
  v10 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5E0] andName:*MEMORY[0x277D3F3D0]];
  v31 = @"WHERE";
  v32[0] = v7;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  v12 = [v9 entriesForKey:v10 withProperties:v11];

  v13 = [MEMORY[0x277CBEB38] dictionary];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v26 + 1) + 8 * i);
        v20 = [v19 name];
        v21 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v19, "entryID")}];
        [v13 setObject:v20 forKeyedSubscript:v21];
      }

      v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v16);
  }

  v22 = [v13 copy];
  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)getUsageTimesForAppWithBundleID:(id)a3 inDateInterval:(id)a4
{
  v5 = *MEMORY[0x277D3F5B8];
  v6 = a4;
  v7 = a3;
  v19 = [(PLOperator *)PLAppTimeService entryKeyForType:v5 andName:@"AppRunTime"];
  v20 = MEMORY[0x277CCACA8];
  v8 = [v6 startDate];
  [v8 timeIntervalSince1970];
  v10 = v9;
  v11 = [v6 endDate];

  [v11 timeIntervalSince1970];
  v13 = [v20 stringWithFormat:@"SELECT (SUM(%@) - SUM(%@)) as %@, (SUM(%@) - SUM(%@)) as %@, (SUM(%@) - SUM(%@)) as %@, %@ FROM %@ WHERE %@ LIKE %@ AND timestamp >= %f AND timestamp <= %f  AND timeInterval = 3600.0 GROUP BY %@", @"ScreenOnTime", @"ScreenOnPluggedInTime", @"ScreenOnTime", @"BackgroundTime", @"BackgroundPluggedInTime", @"BackgroundTime", @"BackgroundAudioPlayingTime", @"BackgroundAudioPlayingTimePluggedIn", @"BackgroundAudioPlayingTime", @"BundleID", v19, @"BundleID", v7, v10, v12, @"BundleID"];

  v14 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
  v15 = [v14 storage];
  v16 = [v15 entriesForKey:v19 withQuery:v13];
  v17 = [v16 firstObject];

  return v17;
}

- (id)getUsageTimesForAppWithBundleID:(id)a3 inDateIntervals:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v31 = a3;
  v5 = a4;
  v30 = [(PLOperator *)PLAppTimeService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"AppRunTime"];
  v6 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        v13 = MEMORY[0x277CCACA8];
        v14 = [v12 startDate];
        [v14 timeIntervalSince1970];
        v16 = v15;
        v17 = [v12 endDate];
        [v17 timeIntervalSince1970];
        v19 = [v13 stringWithFormat:@"timestamp >=%f AND timestamp <= %f", v16, v18];

        [v6 addObject:v19];
      }

      v9 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v9);
  }

  v28 = MEMORY[0x277CCACA8];
  v20 = [v6 componentsJoinedByString:@" OR "];
  v21 = [v28 stringWithFormat:@"SELECT (SUM(%@) - SUM(%@)) as %@, (SUM(%@) - SUM(%@)) as %@, (SUM(%@) - SUM(%@)) as %@, %@ FROM %@ WHERE %@ LIKE %@ AND (%@) AND timeInterval = 3600.0 GROUP BY %@", @"ScreenOnTime", @"ScreenOnPluggedInTime", @"ScreenOnTime", @"BackgroundTime", @"BackgroundPluggedInTime", @"BackgroundTime", @"BackgroundAudioPlayingTime", @"BackgroundAudioPlayingTimePluggedIn", @"BackgroundAudioPlayingTime", @"BundleID", v30, @"BundleID", v31, v20, @"BundleID"];

  v22 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
  v23 = [v22 storage];
  v24 = [v23 entriesForKey:v30 withQuery:v21];
  v25 = [v24 firstObject];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)getEnergyForAppWithBundleID:(id)a3 inDateInterval:(id)a4
{
  v6 = MEMORY[0x277D3F128];
  v7 = *MEMORY[0x277D3F5B8];
  v8 = *MEMORY[0x277D3F318];
  v9 = a4;
  v10 = a3;
  v11 = [v6 entryKeyForType:v7 andName:v8];
  v12 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5E0] andName:*MEMORY[0x277D3F3D0]];
  v13 = MEMORY[0x277CCACA8];
  v14 = *MEMORY[0x277D3F3E0];
  v15 = *MEMORY[0x277D3F320];
  v16 = [v9 startDate];
  [v16 timeIntervalSince1970];
  v18 = v17;
  v19 = [v9 endDate];

  [v19 timeIntervalSince1970];
  v21 = [v13 stringWithFormat:@"SELECT %@, SUM(%@/1000.0) AS %@ FROM %@ RNE JOIN %@ N ON RNE.NodeID = N.ID WHERE %@ LIKE %@ AND RNE.timestamp >= %f AND RNE.timestamp <= %f  AND timeInterval = 3600.0 GROUP BY %@", v14, v15, v15, v11, v12, v14, v10, v18, v20, v14];

  v22 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
  v23 = [v22 storage];
  v24 = [v23 entriesForKey:v11 withQuery:v21];
  v25 = [v24 firstObject];

  return v25;
}

- (id)getEnergyForAppWithBundleID:(id)a3 inDateIntervals:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v34 = a3;
  v5 = a4;
  v32 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5B8] andName:*MEMORY[0x277D3F318]];
  v33 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5E0] andName:*MEMORY[0x277D3F3D0]];
  v6 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v36;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        v13 = MEMORY[0x277CCACA8];
        v14 = [v12 startDate];
        [v14 timeIntervalSince1970];
        v16 = v15;
        v17 = [v12 endDate];
        [v17 timeIntervalSince1970];
        v19 = [v13 stringWithFormat:@"RNE.timestamp >=%f AND RNE.timestamp <= %f", v16, v18];

        [v6 addObject:v19];
      }

      v9 = [v7 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v9);
  }

  v20 = MEMORY[0x277CCACA8];
  v21 = *MEMORY[0x277D3F3E0];
  v22 = *MEMORY[0x277D3F320];
  v23 = [v6 componentsJoinedByString:@" OR "];
  v24 = [v20 stringWithFormat:@"SELECT %@, SUM(%@/1000.0) AS %@ FROM %@ RNE JOIN %@ N ON RNE.NodeID = N.ID WHERE %@ LIKE %@ AND (%@) AND timeInterval = 3600.0 GROUP BY %@", v21, v22, v22, v32, v33, v21, v34, v23, v21];

  v25 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
  v26 = [v25 storage];
  v27 = [v26 entriesForKey:v32 withQuery:v24];
  v28 = [v27 firstObject];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)getEnergyForAppWithBundleID:(id)a3 inDateInterval:(id)a4 forRootNodes:(id)a5
{
  v7 = MEMORY[0x277D3F128];
  v8 = *MEMORY[0x277D3F5B8];
  v9 = *MEMORY[0x277D3F318];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v7 entryKeyForType:v8 andName:v9];
  v14 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5E0] andName:*MEMORY[0x277D3F3D0]];
  v15 = [v10 componentsJoinedByString:{@", "}];

  v16 = MEMORY[0x277CCACA8];
  v17 = *MEMORY[0x277D3F3E0];
  v18 = *MEMORY[0x277D3F320];
  v19 = [v11 startDate];
  [v19 timeIntervalSince1970];
  v21 = v20;
  v22 = [v11 endDate];

  [v22 timeIntervalSince1970];
  v24 = [v16 stringWithFormat:@"SELECT %@, SUM(%@/1000.0) AS %@ FROM %@ RNE JOIN %@ N ON RNE.NodeID = N.ID WHERE %@ LIKE %@ AND RNE.timestamp >= %f AND RNE.timestamp <= %f %@ IN (%@) AND timeInterval = 3600.0 GROUP BY %@", v17, v18, v18, v13, v14, v17, v12, v21, v23, *MEMORY[0x277D3F330], v15, v17];

  v25 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
  v26 = [v25 storage];
  v27 = [v26 entriesForKey:v13 withQuery:v24];
  v28 = [v27 firstObject];

  return v28;
}

- (id)getBundleIDToDisplayNameMap
{
  v76[1] = *MEMORY[0x277D85DE8];
  v3 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self bundleIDToDisplayNameMap];

  if (v3)
  {
    v4 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self bundleIDToDisplayNameMap];
    goto LABEL_46;
  }

  v5 = objc_opt_new();
  v6 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
  v7 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"AppDeletedDate" withValue:&unk_2871472A8 withComparisonOperation:0];
  v56 = self;
  v8 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self responderService];
  v9 = [v8 storage];
  v52 = v7;
  v76[0] = v7;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:1];
  v53 = v6;
  v11 = [v9 entriesForKey:v6 withComparisons:v10];

  v12 = PLLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(PLBatteryUIResponseTypeDrainComparisonSummary *)v11 getBundleIDToDisplayNameMap];
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v64 objects:v75 count:16];
  v57 = v5;
  v55 = v13;
  if (v14)
  {
    v15 = v14;
    v16 = *v65;
    do
    {
      v17 = 0;
      do
      {
        if (*v65 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v64 + 1) + 8 * v17);
        v19 = [v18 objectForKeyedSubscript:@"AppType"];
        v20 = [v19 intValue];

        if (v20 == 101 || ([v18 objectForKeyedSubscript:@"AppBundleId"], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqualToString:", @"com.apple.NanoUniverse.AegirProxyApp"), v21, v22))
        {
          v23 = [v18 objectForKeyedSubscript:@"AppBundleId"];
          v24 = [v18 objectForKeyedSubscript:@"AppName"];
          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v25 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __76__PLBatteryUIResponseTypeDrainComparisonSummary_getBundleIDToDisplayNameMap__block_invoke;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v25;
            if (getBundleIDToDisplayNameMap_defaultOnce_0 != -1)
            {
              dispatch_once(&getBundleIDToDisplayNameMap_defaultOnce_0, block);
            }

            if (getBundleIDToDisplayNameMap_classDebugEnabled_0 == 1)
            {
              v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleID=%@, displayName=%@", v23, v24];
              v27 = MEMORY[0x277D3F178];
              v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeDrainComparisonSummary.m"];
              v29 = [v28 lastPathComponent];
              v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIResponseTypeDrainComparisonSummary getBundleIDToDisplayNameMap]"];
              [v27 logMessage:v26 fromFile:v29 fromFunction:v30 fromLineNumber:924];

              v31 = PLLogCommon();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v74 = v26;
                _os_log_debug_impl(&dword_25EE51000, v31, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v5 = v57;
              v13 = v55;
            }
          }

          [v5 setObject:v24 forKeyedSubscript:v23];
        }

        else
        {
          v23 = PLLogCommon();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            [(PLBatteryUIResponseTypeBatteryBreakdown(Utilities) *)&v71 getBundleIDToDisplayNameMap];
          }
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v64 objects:v75 count:16];
    }

    while (v15);
  }

  v32 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v33 = [v32 countByEnumeratingWithState:&v59 objects:v70 count:16];
  v34 = 0x279A5A000uLL;
  if (v33)
  {
    v35 = v33;
    v36 = *v60;
    do
    {
      v37 = 0;
      do
      {
        if (*v60 != v36)
        {
          objc_enumerationMutation(v32);
        }

        v38 = *(*(&v59 + 1) + 8 * v37);
        if ([v38 mayBeBUIVisible])
        {
          if (![*(v34 + 3200) hasScreenPresence:v38])
          {
            goto LABEL_43;
          }

          v39 = [v38 bundleIdentifier];
          v40 = [v5 objectForKeyedSubscript:v39];

          if (!v40)
          {
            v41 = [v38 localizedName];
            if ([MEMORY[0x277D3F180] debugEnabled])
            {
              v42 = objc_opt_class();
              v58[0] = MEMORY[0x277D85DD0];
              v58[1] = 3221225472;
              v58[2] = __76__PLBatteryUIResponseTypeDrainComparisonSummary_getBundleIDToDisplayNameMap__block_invoke_332;
              v58[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v58[4] = v42;
              if (getBundleIDToDisplayNameMap_defaultOnce_330 != -1)
              {
                dispatch_once(&getBundleIDToDisplayNameMap_defaultOnce_330, v58);
              }

              if (getBundleIDToDisplayNameMap_classDebugEnabled_331 == 1)
              {
                v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleID=%@, displayName=%@", v39, v41];
                v54 = MEMORY[0x277D3F178];
                v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeDrainComparisonSummary.m"];
                v45 = [v44 lastPathComponent];
                v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIResponseTypeDrainComparisonSummary getBundleIDToDisplayNameMap]"];
                [v54 logMessage:v43 fromFile:v45 fromFunction:v46 fromLineNumber:942];

                v47 = v43;
                v48 = PLLogCommon();
                if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v74 = v47;
                  _os_log_debug_impl(&dword_25EE51000, v48, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v34 = 0x279A5A000;
              }
            }

            [v57 setObject:v41 forKeyedSubscript:v39];

            v5 = v57;
          }
        }

        else
        {
          v39 = PLLogCommon();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            [(PLBatteryUIResponseTypeBatteryBreakdown(Utilities) *)&v68 getBundleIDToDisplayNameMap];
          }
        }

LABEL_43:
        ++v37;
      }

      while (v35 != v37);
      v35 = [v32 countByEnumeratingWithState:&v59 objects:v70 count:16];
    }

    while (v35);
  }

  v49 = [v5 copy];
  [(PLBatteryUIResponseTypeDrainComparisonSummary *)v56 setBundleIDToDisplayNameMap:v49];

  v4 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)v56 bundleIDToDisplayNameMap];

LABEL_46:
  v50 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t __76__PLBatteryUIResponseTypeDrainComparisonSummary_getBundleIDToDisplayNameMap__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getBundleIDToDisplayNameMap_classDebugEnabled_0 = result;
  return result;
}

uint64_t __76__PLBatteryUIResponseTypeDrainComparisonSummary_getBundleIDToDisplayNameMap__block_invoke_332(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getBundleIDToDisplayNameMap_classDebugEnabled_331 = result;
  return result;
}

- (id)getInstalledPluginToParentIDMap
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self installedPluginToParentIDMap];

  if (v3)
  {
    v4 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self installedPluginToParentIDMap];
  }

  else
  {
    v5 = objc_opt_new();
    v6 = +[PLBatteryUIResponseTypeUtilities getInstalledPluginEntries];
    v7 = v6;
    if (v6)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v21;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v21 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v20 + 1) + 8 * i);
            v13 = [v12 objectForKeyedSubscript:@"PluginId"];
            v14 = [v12 objectForKeyedSubscript:@"PluginParentApp"];
            v15 = v14;
            if (v13)
            {
              v16 = v14 == 0;
            }

            else
            {
              v16 = 1;
            }

            if (!v16)
            {
              [v5 setObject:v14 forKeyedSubscript:v13];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v9);
      }

      v17 = [v5 copy];
      [(PLBatteryUIResponseTypeDrainComparisonSummary *)self setInstalledPluginToParentIDMap:v17];
    }

    else
    {
      [(PLBatteryUIResponseTypeDrainComparisonSummary *)self setInstalledPluginToParentIDMap:MEMORY[0x277CBEC10]];
    }

    v4 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self installedPluginToParentIDMap];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)getParentBundleIDForBundleID:(id)a3
{
  v4 = a3;
  if (v4 && (-[PLBatteryUIResponseTypeDrainComparisonSummary bundleIDsToSkipMapping](self, "bundleIDsToSkipMapping"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 containsString:v4], v5, (v6 & 1) == 0))
  {
    v8 = +[PLBatteryUIResponseTypeUtilities getBundleIDToReplacementBundleIDMap];
    v7 = [v8 objectForKeyedSubscript:v4];

    if (!v7)
    {
      v9 = [(PLBatteryUIResponseTypeDrainComparisonSummary *)self getInstalledPluginToParentIDMap];
      v7 = [v9 objectForKeyedSubscript:v4];

      if (!v7)
      {
        v7 = v4;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)shouldShowAnomalousQualifier:(int64_t)a3 forBundleID:(id)a4
{
  v6 = a4;
  v7 = [v6 isEqualToString:@"HLS"];
  if (a3 != 20 && (v7 & 1) != 0 || a3 == 21 && (-[PLBatteryUIResponseTypeDrainComparisonSummary noBackgroundBundleIDs](self, "noBackgroundBundleIDs"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 containsString:v6], v8, (v9 & 1) != 0) || (objc_msgSend(v6, "isEqualToString:", @"PowerOutAccessories") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"DeletedApp") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"DeletedAppClip") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"DeletedAppAndAppClip") & 1) != 0)
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v10 = [v6 isEqualToString:@"EN"] ^ 1;
  }

  return v10;
}

- (id)noBackgroundBundleIDs
{
  if (noBackgroundBundleIDs_onceToken != -1)
  {
    [PLBatteryUIResponseTypeDrainComparisonSummary noBackgroundBundleIDs];
  }

  v3 = noBackgroundBundleIDs_noBackgroundTimeBundleIDs;

  return v3;
}

void __70__PLBatteryUIResponseTypeDrainComparisonSummary_noBackgroundBundleIDs__block_invoke()
{
  v0 = noBackgroundBundleIDs_noBackgroundTimeBundleIDs;
  noBackgroundBundleIDs_noBackgroundTimeBundleIDs = &unk_28714DD00;
}

- (id)bundleIDsToSkipMapping
{
  if (bundleIDsToSkipMapping_onceToken != -1)
  {
    [PLBatteryUIResponseTypeDrainComparisonSummary bundleIDsToSkipMapping];
  }

  v3 = bundleIDsToSkipMapping_bundleIDsToSkipQualifierEvaluation;

  return v3;
}

void __71__PLBatteryUIResponseTypeDrainComparisonSummary_bundleIDsToSkipMapping__block_invoke()
{
  v0 = bundleIDsToSkipMapping_bundleIDsToSkipQualifierEvaluation;
  bundleIDsToSkipMapping_bundleIDsToSkipQualifierEvaluation = &unk_28714DD18;
}

- (void)getBundleIDToDisplayNameMap
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_25EE51000, a2, OS_LOG_TYPE_DEBUG, "installedAppEntries=%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end