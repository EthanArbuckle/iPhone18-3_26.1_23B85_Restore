@interface HKSHSleepChartFormatter
- (HKSHSleepChartFormatter)initWithHealthStore:(id)a3;
- (id)_attributedValueString:(id)a3 valueFont:(id)a4;
- (id)_firstCalendarForSummaries:(id)a3;
- (id)_firstDateForSummaries:(id)a3;
- (id)_lastSleepGoalForSummaries:(id)a3;
- (id)_localizedSchedulesFromSummaries:(id)a3 timeFont:(id)a4 amPmFont:(id)a5;
- (id)_longTitleForSelectedRangeDataType:(int64_t)a3 statisticsType:(int64_t)a4;
- (id)_prefixColorForSleepValue:(int64_t)a3 isPrefixColorActive:(id)a4;
- (id)_rangeDataForAverageInBedStartTime:(id)a3 averageInBedEndTime:(id)a4 averageSleepStartTime:(id)a5 averageSleepEndTime:(id)a6 inBedDuration:(id)a7 sleepDuration:(id)a8 calendar:(id)a9 firstDayStart:(id)a10 timeFont:(id)a11 amPmFont:(id)a12 formatterOptions:(unint64_t)a13;
- (id)_rangeDataForDurationGoalWithSleepDaySummaries:(id)a3 valueFont:(id)a4 unitFont:(id)a5;
- (id)_rangeDataForDurationValue:(id)a3 dataType:(int64_t)a4 sleepValue:(int64_t)a5 isPrefixColorActive:(id)a6 valueFont:(id)a7 unitFont:(id)a8 statisticsType:(int64_t)a9 formatterOptions:(unint64_t)a10;
- (id)_rangeDataForInBedDuration:(id)a3 sleepDuration:(id)a4 awakeDuration:(id)a5 asleepCoreDuration:(id)a6 asleepDeepDuration:(id)a7 asleepREMDuration:(id)a8 overrideDuration:(id)a9 arePrefixColorsActive:(id)a10 statisticsType:(int64_t)a11 valueFont:(id)a12 unitFont:(id)a13 formatterOptions:(unint64_t)a14;
- (id)_rangeDataForSleepScheduleWithSleepDaySummaries:(id)a3 timeFont:(id)a4 amPmFont:(id)a5;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4;
- (int64_t)_statisticsTypeForSummaries:(id)a3 calendar:(id)a4;
@end

@implementation HKSHSleepChartFormatter

- (HKSHSleepChartFormatter)initWithHealthStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKSHSleepChartFormatter;
  v6 = [(HKSHSleepChartFormatter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, a3);
  }

  return v7;
}

- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4
{
  v129 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v112 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v124 objects:v128 count:16];
  if (v6)
  {
    v7 = v6;
    v119 = 0;
    v8 = 0;
    v9 = 0;
    v113 = 0;
    v117 = 0;
    v10 = 0;
    v11 = *v125;
    v109 = 131;
    v12 = 3;
    do
    {
      v13 = 0;
      v114 = v7;
      do
      {
        if (*v125 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v124 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v11;
          v16 = v8;
          v4 = v14;
          v17 = [v4 chartPointInfoProvider];
          if ([v17 isAveraged])
          {
            v18 = 1;
          }

          else
          {
            v19 = [v4 chartPointInfoProvider];
            v20 = [v19 sleepDaySummaries];
            v21 = [v20 firstObject];
            v22 = [v21 isWeeklyAggregatedSummary];

            v18 = v22 | v119;
          }

          v119 = v18;

          v23 = [v4 chartPointInfoProvider];
          v24 = [v23 sleepDaySummaries];
          [v112 addObjectsFromArray:v24];

          v10 = [v4 seriesType];
          v12 = [v4 annotationOptions];
          v25 = [v4 annotationOverrideDuration];

          v26 = [v4 annotationOverridePrefixColorsActive];

          if ([v4 currentValueViewOptionsPriority] >= v117)
          {
            v109 = [v4 currentValueViewOptions];
            v117 = [v4 currentValueViewOptionsPriority];
            v27 = [v4 currentValueViewOverridePrefixColorsActive];

            v113 = v27;
          }

          v11 = v15;

          v8 = v26;
          v9 = v25;
          v7 = v114;
        }

        ++v13;
      }

      while (v7 != v13);
      v7 = [obj countByEnumeratingWithState:&v124 objects:v128 count:16];
    }

    while (v7);
  }

  else
  {
    LOBYTE(v119) = 0;
    v8 = 0;
    v9 = 0;
    v113 = 0;
    v10 = 0;
    v109 = 131;
    v12 = 3;
  }

  v28 = v112;
  if (![v112 count])
  {
    v4 = MEMORY[0x277CBEBF8];
    goto LABEL_47;
  }

  v118 = v8;
  v29 = [MEMORY[0x277CCD9D0] sleepMetricsForDaySummaries:v112];
  v30 = [v29 averageInBedDuration];
  v31 = [MEMORY[0x277CCDAB0] secondUnit];
  [v30 doubleValueForUnit:v31];
  v33 = v32;

  v34 = [v29 averageAwakeDuration];
  v35 = [MEMORY[0x277CCDAB0] secondUnit];
  [v34 doubleValueForUnit:v35];
  v37 = v36;

  v38 = [v29 averageCoreSleepDuration];
  v39 = [MEMORY[0x277CCDAB0] secondUnit];
  [v38 doubleValueForUnit:v39];
  v41 = v40;

  v42 = [v29 averageREMSleepDuration];
  v43 = [MEMORY[0x277CCDAB0] secondUnit];
  [v42 doubleValueForUnit:v43];
  v45 = v44;

  v46 = [v29 averageDeepSleepDuration];
  v47 = [MEMORY[0x277CCDAB0] secondUnit];
  [v46 doubleValueForUnit:v47];
  v49 = v48;

  v50 = [v29 averageSleepDuration];
  v51 = [MEMORY[0x277CCDAB0] secondUnit];
  [v50 doubleValueForUnit:v51];
  v53 = v52;

  v54 = [v29 averageInBedStartTime];
  v55 = [v29 averageInBedEndTime];
  v115 = [v29 averageSleepStartTime];
  v103 = [v29 averageSleepEndTime];
  v56 = [(HKSHSleepChartFormatter *)self _firstCalendarForSummaries:v112];
  v101 = [(HKSHSleepChartFormatter *)self _firstDateForSummaries:v112];
  v102 = v56;
  v57 = [(HKSHSleepChartFormatter *)self _statisticsTypeForSummaries:v112 calendar:v56];
  if (v10 <= 2)
  {
    v8 = v118;
    if (!v10)
    {
      goto LABEL_32;
    }

    if (v10 != 1)
    {
      if (v10 != 2)
      {
        goto LABEL_46;
      }

      goto LABEL_41;
    }

LABEL_35:
    if (a4 != 1)
    {
      if (!a4)
      {
        v68 = [MEMORY[0x277CCABB0] numberWithDouble:v33];
        v122 = [MEMORY[0x277CCABB0] numberWithDouble:v53];
        [(HKInteractiveChartDataFormatter *)self majorFont];
        v69 = v55;
        v71 = v70 = v54;
        v72 = [(HKInteractiveChartDataFormatter *)self minorFont];
        v87 = v12;
        v62 = v68;
        v4 = [(HKSHSleepChartFormatter *)self _rangeDataForAverageInBedStartTime:v70 averageInBedEndTime:v69 averageSleepStartTime:v115 averageSleepEndTime:v103 inBedDuration:v68 sleepDuration:v122 calendar:v102 firstDayStart:v101 timeFont:v71 amPmFont:v72 formatterOptions:v87];

        v8 = v118;
        v54 = v70;
        v55 = v69;
        v59 = v122;
LABEL_45:

        goto LABEL_46;
      }

      goto LABEL_41;
    }

    goto LABEL_43;
  }

  if (v10 <= 4)
  {
    v8 = v118;
    if (v10 != 3)
    {
      if (a4 != 1)
      {
        if (!a4)
        {
          v92 = v57;
          v105 = v55;
          v98 = v54;
          v58 = v119 & ((v12 & 0x3C) == 0);
          v120 = [MEMORY[0x277CCABB0] numberWithDouble:v33];
          v59 = [MEMORY[0x277CCABB0] numberWithDouble:v53];
          if (v58 == 1)
          {
            v60 = [(HKInteractiveChartDataFormatter *)self majorFont];
            v61 = [(HKInteractiveChartDataFormatter *)self minorFont];
            v86 = v12;
            v62 = v120;
            v4 = [(HKSHSleepChartFormatter *)self _rangeDataForAverageInBedStartTime:v98 averageInBedEndTime:v55 averageSleepStartTime:v115 averageSleepEndTime:v103 inBedDuration:v120 sleepDuration:v59 calendar:v102 firstDayStart:v101 timeFont:v60 amPmFont:v61 formatterOptions:v86];

            v54 = v98;
            v28 = v112;
            v8 = v118;
          }

          else
          {
            v111 = [MEMORY[0x277CCABB0] numberWithDouble:v37];
            v80 = [MEMORY[0x277CCABB0] numberWithDouble:v41];
            v81 = [MEMORY[0x277CCABB0] numberWithDouble:v49];
            [MEMORY[0x277CCABB0] numberWithDouble:v45];
            v82 = v97 = v9;
            v83 = [(HKInteractiveChartDataFormatter *)self majorFont];
            v84 = [(HKInteractiveChartDataFormatter *)self minorFont];
            v89 = v12;
            v62 = v120;
            v4 = [(HKSHSleepChartFormatter *)self _rangeDataForInBedDuration:v120 sleepDuration:v59 awakeDuration:v111 asleepCoreDuration:v80 asleepDeepDuration:v81 asleepREMDuration:v82 overrideDuration:v97 arePrefixColorsActive:v118 statisticsType:v92 valueFont:v83 unitFont:v84 formatterOptions:v89];

            v8 = v118;
            v9 = v97;

            v28 = v112;
            v54 = v98;
            v55 = v105;
          }

          goto LABEL_45;
        }

        goto LABEL_41;
      }

      goto LABEL_43;
    }

    if (a4 != 1)
    {
      if (!a4)
      {
        v62 = [(HKInteractiveChartDataFormatter *)self majorFont];
        v59 = [(HKInteractiveChartDataFormatter *)self minorFont];
        v73 = [(HKSHSleepChartFormatter *)self _rangeDataForSleepScheduleWithSleepDaySummaries:v112 timeFont:v62 amPmFont:v59];
LABEL_42:
        v4 = v73;
        goto LABEL_45;
      }

      goto LABEL_41;
    }

    goto LABEL_43;
  }

  v8 = v118;
  if (v10 == 6)
  {
    goto LABEL_35;
  }

  if (v10 == 5)
  {
LABEL_32:
    if (a4 != 1)
    {
      if (!a4)
      {
        v93 = v57;
        v121 = [MEMORY[0x277CCABB0] numberWithDouble:v33];
        v59 = [MEMORY[0x277CCABB0] numberWithDouble:v53];
        v110 = [MEMORY[0x277CCABB0] numberWithDouble:v37];
        v99 = [MEMORY[0x277CCABB0] numberWithDouble:v41];
        v90 = [MEMORY[0x277CCABB0] numberWithDouble:v49];
        v95 = [MEMORY[0x277CCABB0] numberWithDouble:v45];
        [(HKInteractiveChartDataFormatter *)self majorFont];
        v106 = v55;
        v64 = v63 = v54;
        [(HKInteractiveChartDataFormatter *)self minorFont];
        v66 = v65 = v9;
        v88 = v12;
        v62 = v121;
        v4 = [(HKSHSleepChartFormatter *)self _rangeDataForInBedDuration:v121 sleepDuration:v59 awakeDuration:v110 asleepCoreDuration:v99 asleepDeepDuration:v90 asleepREMDuration:v95 overrideDuration:v65 arePrefixColorsActive:v118 statisticsType:v93 valueFont:v64 unitFont:v66 formatterOptions:v88];

        v9 = v65;
        v54 = v63;
        v55 = v106;

        v8 = v118;
        v67 = v110;
LABEL_44:

        goto LABEL_45;
      }

LABEL_41:
      v62 = [(HKInteractiveChartDataFormatter *)self majorFont];
      v59 = [(HKInteractiveChartDataFormatter *)self minorFont];
      v73 = [(HKSHSleepChartFormatter *)self _rangeDataForDurationGoalWithSleepDaySummaries:v112 valueFont:v62 unitFont:v59];
      goto LABEL_42;
    }

LABEL_43:
    v74 = v57;
    v123 = [MEMORY[0x277CCABB0] numberWithDouble:v33];
    v59 = [MEMORY[0x277CCABB0] numberWithDouble:v53];
    v94 = [MEMORY[0x277CCABB0] numberWithDouble:v37];
    v91 = [MEMORY[0x277CCABB0] numberWithDouble:v41];
    [MEMORY[0x277CCABB0] numberWithDouble:v49];
    v107 = v55;
    v75 = v100 = v54;
    v76 = [MEMORY[0x277CCABB0] numberWithDouble:v45];
    [(HKInteractiveChartDataFormatter *)self majorFont];
    v77 = v96 = v9;
    v78 = [(HKInteractiveChartDataFormatter *)self minorFont];
    v85 = v74;
    v62 = v123;
    v4 = [(HKSHSleepChartFormatter *)self _rangeDataForInBedDuration:v123 sleepDuration:v59 awakeDuration:v94 asleepCoreDuration:v91 asleepDeepDuration:v75 asleepREMDuration:v76 overrideDuration:0 arePrefixColorsActive:v113 statisticsType:v85 valueFont:v77 unitFont:v78 formatterOptions:v109];

    v9 = v96;
    v8 = v118;

    v54 = v100;
    v55 = v107;

    v67 = v94;
    goto LABEL_44;
  }

LABEL_46:

LABEL_47:

  return v4;
}

- (int64_t)_statisticsTypeForSummaries:(id)a3 calendar:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x277CBEB98] setWithArray:a3];
  v7 = [v6 count];
  if (v7 == 1)
  {
    v8 = [v6 allObjects];
    v9 = [v8 firstObject];

    v10 = [v9 dateInterval];
    v11 = [v10 startDate];
    v12 = [v11 hk_morningIndexWithCalendar:v5];

    v13 = [v9 dateInterval];
    v14 = [v13 endDate];
    v15 = [v14 hk_morningIndexWithCalendar:v5];

    v7 = v15 - v12;
  }

  if (v7 <= 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = 3;
  }

  return v16;
}

- (id)_rangeDataForInBedDuration:(id)a3 sleepDuration:(id)a4 awakeDuration:(id)a5 asleepCoreDuration:(id)a6 asleepDeepDuration:(id)a7 asleepREMDuration:(id)a8 overrideDuration:(id)a9 arePrefixColorsActive:(id)a10 statisticsType:(int64_t)a11 valueFont:(id)a12 unitFont:(id)a13 formatterOptions:(unint64_t)a14
{
  v19 = a3;
  v48 = a4;
  v47 = a5;
  v46 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a12;
  v25 = a13;
  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v19 doubleValue];
  if ((a14 & 1) != 0 && v27 > 0.0)
  {
    if (v22)
    {
      v28 = v22;
    }

    else
    {
      v28 = v19;
    }

    v29 = [(HKSHSleepChartFormatter *)self _rangeDataForDurationValue:v28 dataType:9 sleepValue:0 isPrefixColorActive:v23 valueFont:v24 unitFont:v25 statisticsType:a11 formatterOptions:a14];
    [v26 addObject:v29];
  }

  [v48 doubleValue];
  if ((a14 & 2) != 0 && v30 > 0.0)
  {
    if (v22)
    {
      v31 = v22;
    }

    else
    {
      v31 = v48;
    }

    v32 = [(HKSHSleepChartFormatter *)self _rangeDataForDurationValue:v31 dataType:10 sleepValue:_HKCategoryValueSleepAnalysisDefaultAsleepValue() isPrefixColorActive:v23 valueFont:v24 unitFont:v25 statisticsType:a11 formatterOptions:a14];
    [v26 addObject:v32];
  }

  [v47 doubleValue];
  if ((a14 & 4) != 0 && v33 > 0.0)
  {
    if (v22)
    {
      v34 = v22;
    }

    else
    {
      v34 = v47;
    }

    v35 = [(HKSHSleepChartFormatter *)self _rangeDataForDurationValue:v34 dataType:24 sleepValue:2 isPrefixColorActive:v23 valueFont:v24 unitFont:v25 statisticsType:a11 formatterOptions:a14];
    [v26 addObject:v35];
  }

  [v46 doubleValue];
  if ((a14 & 0x10) != 0 && v36 > 0.0)
  {
    if (v22)
    {
      v37 = v22;
    }

    else
    {
      v37 = v46;
    }

    v38 = [(HKSHSleepChartFormatter *)self _rangeDataForDurationValue:v37 dataType:25 sleepValue:3 isPrefixColorActive:v23 valueFont:v24 unitFont:v25 statisticsType:a11 formatterOptions:a14];
    [v26 addObject:v38];
  }

  [v20 doubleValue];
  if ((a14 & 0x20) != 0 && v39 > 0.0)
  {
    if (v22)
    {
      v40 = v22;
    }

    else
    {
      v40 = v20;
    }

    v41 = [(HKSHSleepChartFormatter *)self _rangeDataForDurationValue:v40 dataType:26 sleepValue:4 isPrefixColorActive:v23 valueFont:v24 unitFont:v25 statisticsType:a11 formatterOptions:a14];
    [v26 addObject:v41];
  }

  [v21 doubleValue];
  if ((a14 & 8) != 0 && v42 > 0.0)
  {
    if (v22)
    {
      v43 = v22;
    }

    else
    {
      v43 = v21;
    }

    v44 = [(HKSHSleepChartFormatter *)self _rangeDataForDurationValue:v43 dataType:27 sleepValue:5 isPrefixColorActive:v23 valueFont:v24 unitFont:v25 statisticsType:a11 formatterOptions:a14];
    [v26 addObject:v44];
  }

  return v26;
}

- (id)_rangeDataForDurationValue:(id)a3 dataType:(int64_t)a4 sleepValue:(int64_t)a5 isPrefixColorActive:(id)a6 valueFont:(id)a7 unitFont:(id)a8 statisticsType:(int64_t)a9 formatterOptions:(unint64_t)a10
{
  v14 = a6;
  v15 = a3;
  v16 = HKTimePeriodStringWithFonts();
  v17 = [v16 mutableCopy];

  v18 = [objc_alloc(MEMORY[0x277D12A38]) initWithStatisticsType:a9];
  [v18 setDataType:a4];
  [v18 setAttributedString:v17];
  [v18 setValueAsNumber:v15];

  [v18 setPrefersImageAffixes:(a10 & 0x40) == 0];
  v19 = [(HKSHSleepChartFormatter *)self _prefixColorForSleepValue:a5 isPrefixColorActive:v14];

  [v18 setPrefixColor:v19];
  if ((a10 & 0x80) != 0)
  {
    v20 = [(HKSHSleepChartFormatter *)self _longTitleForSelectedRangeDataType:a4 statisticsType:a9];
    [v18 setTitleOverride:v20];
  }

  return v18;
}

- (id)_rangeDataForDurationGoalWithSleepDaySummaries:(id)a3 valueFont:(id)a4 unitFont:(id)a5
{
  v18[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(HKSHSleepChartFormatter *)self _lastSleepGoalForSummaries:a3];
  v11 = [objc_alloc(MEMORY[0x277D12A38]) initWithStatisticsType:0];
  [v11 setDataType:13];
  if (v10)
  {
    v12 = HKTimePeriodStringWithFonts();
    [v11 setAttributedString:v12];

    [v11 setValueAsNumber:v10];
  }

  else
  {
    v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v14 = [v13 localizedStringForKey:@"SLEEP_NO_GOAL_CONTEXT" value:&stru_287AAA530 table:@"HealthUI-Localizable-Eucalyptus"];
    v15 = [(HKSHSleepChartFormatter *)self _attributedValueString:v14 valueFont:v8];
    [v11 setAttributedString:v15];
  }

  v18[0] = v11;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];

  return v16;
}

- (id)_rangeDataForSleepScheduleWithSleepDaySummaries:(id)a3 timeFont:(id)a4 amPmFont:(id)a5
{
  v27[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [(HKSHSleepChartFormatter *)self _localizedSchedulesFromSummaries:a3 timeFont:v8 amPmFont:a5];
  if (![v9 count])
  {
    v10 = [objc_alloc(MEMORY[0x277D12A38]) initWithStatisticsType:0];
    [v10 setDataType:0];
    v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v17 = [v16 localizedStringForKey:@"SLEEP_NO_SCHEDULE" value:&stru_287AAA530 table:@"HealthUI-Localizable-Eucalyptus"];
    v18 = [(HKSHSleepChartFormatter *)self _attributedValueString:v17 valueFont:v8];
    [v10 setAttributedString:v18];

    v27[0] = v10;
    v14 = MEMORY[0x277CBEA60];
    v15 = v27;
    goto LABEL_5;
  }

  if ([v9 count] >= 2)
  {
    v10 = [objc_alloc(MEMORY[0x277D12A38]) initWithStatisticsType:0];
    [v10 setDataType:0];
    v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v12 = [v11 localizedStringForKey:@"SLEEP_MULTIPLE_SCHEDULES" value:&stru_287AAA530 table:@"HealthUI-Localizable-Eucalyptus"];
    v13 = [(HKSHSleepChartFormatter *)self _attributedValueString:v12 valueFont:v8];
    [v10 setAttributedString:v13];

    v26 = v10;
    v14 = MEMORY[0x277CBEA60];
    v15 = &v26;
LABEL_5:
    v19 = [v14 arrayWithObjects:v15 count:1];
    goto LABEL_7;
  }

  v10 = [v9 anyObject];
  v20 = [objc_alloc(MEMORY[0x277D12A38]) initWithStatisticsType:0];
  [v20 setDataType:14];
  v21 = [v10 localizedBedTime];
  [v20 setAttributedString:v21];

  v22 = [objc_alloc(MEMORY[0x277D12A38]) initWithStatisticsType:0];
  [v22 setDataType:15];
  v23 = [v10 localizedWakeTime];
  [v22 setAttributedString:v23];

  v25[0] = v20;
  v25[1] = v22;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];

LABEL_7:

  return v19;
}

- (id)_rangeDataForAverageInBedStartTime:(id)a3 averageInBedEndTime:(id)a4 averageSleepStartTime:(id)a5 averageSleepEndTime:(id)a6 inBedDuration:(id)a7 sleepDuration:(id)a8 calendar:(id)a9 firstDayStart:(id)a10 timeFont:(id)a11 amPmFont:(id)a12 formatterOptions:(unint64_t)a13
{
  v60[1] = *MEMORY[0x277D85DE8];
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v25 = a10;
  v26 = a11;
  v59 = a12;
  v56 = v22;
  v57 = v18;
  v27 = v19;
  if (v18 | v19 && ([v22 doubleValue], v28 > 0.0))
  {
    v29 = a13 & 1;
  }

  else
  {
    v29 = 0;
  }

  v30 = v21;
  v31 = v20 | v21;
  v32 = v27;
  v58 = v20;
  if (v31 && ([v23 doubleValue], v33 > 0.0))
  {
    v34 = (a13 >> 1) & 1;
    if ((v29 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    LODWORD(v34) = 0;
    if ((v29 & 1) == 0)
    {
LABEL_8:
      if (v24)
      {
        v35 = v25 == 0;
      }

      else
      {
        v35 = 1;
      }

      if (v35)
      {
        v36 = 0;
      }

      else
      {
        v36 = v34;
      }

      if ((v36 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  if (!v24 || !v25)
  {
LABEL_21:
    v42 = v23;
    v43 = [objc_alloc(MEMORY[0x277D12A38]) initWithStatisticsType:0];
    [v43 setDataType:0];
    v44 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v45 = [v44 localizedStringForKey:@"SLEEP_NO_TIMES" value:&stru_287AAA530 table:@"HealthUI-Localizable-Eucalyptus"];
    v46 = [(HKSHSleepChartFormatter *)self _attributedValueString:v45 valueFont:v26];
    [v43 setAttributedString:v46];

    v60[0] = v43;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:1];

    v23 = v42;
    v18 = v57;
LABEL_22:
    v47 = v58;
    v48 = v56;
    goto LABEL_28;
  }

LABEL_19:
  v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v34)
  {
    v55 = v23;
    v38 = [objc_alloc(MEMORY[0x277D12A38]) initWithStatisticsType:0];
    [v38 setDataType:16];
    v39 = HKSHLocalizedTimeForComponents(v58, v24, v25, v26, v59);
    [v38 setAttributedString:v39];

    [v37 addObject:v38];
    v40 = [objc_alloc(MEMORY[0x277D12A38]) initWithStatisticsType:0];
    [v40 setDataType:17];
    v41 = HKSHLocalizedTimeForComponents(v30, v24, v25, v26, v59);
    [v40 setAttributedString:v41];

    [v37 addObject:v40];
    v18 = v57;
  }

  else
  {
    if (v18)
    {
      v49 = [objc_alloc(MEMORY[0x277D12A38]) initWithStatisticsType:0];
      [v49 setDataType:18];
      HKSHLocalizedTimeForComponents(v18, v24, v25, v26, v59);
      v51 = v50 = v23;
      [v49 setAttributedString:v51];

      v23 = v50;
      [v37 addObject:v49];
    }

    if (!v32)
    {
      goto LABEL_22;
    }

    v55 = v23;
    v38 = [objc_alloc(MEMORY[0x277D12A38]) initWithStatisticsType:0];
    [v38 setDataType:19];
    v52 = HKSHLocalizedTimeForComponents(v32, v24, v25, v26, v59);
    [v38 setAttributedString:v52];

    [v37 addObject:v38];
  }

  v47 = v58;
  v23 = v55;
  v48 = v56;
LABEL_28:

  return v37;
}

- (id)_lastSleepGoalForSummaries:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 sleepDurationGoal];

        if (v10)
        {
          v11 = MEMORY[0x277CCABB0];
          v12 = [v9 sleepDurationGoal];
          v13 = [MEMORY[0x277CCDAB0] secondUnit];
          [v12 doubleValueForUnit:v13];
          v14 = [v11 numberWithDouble:?];

          v6 = v14;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_firstCalendarForSummaries:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [v7 calendar];

        if (v8)
        {
          v4 = [v7 calendar];
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)_firstDateForSummaries:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 dateInterval];
        v9 = [v8 startDate];

        if (v9)
        {
          v10 = [v7 dateInterval];
          v4 = [v10 startDate];

          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)_localizedSchedulesFromSummaries:(id)a3 timeFont:(id)a4 amPmFont:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v31 = a4;
  v8 = a5;
  v30 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v7;
  v28 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v28)
  {
    v27 = *v37;
    do
    {
      v9 = 0;
      do
      {
        if (*v37 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v9;
        v10 = *(*(&v36 + 1) + 8 * v9);
        v11 = [v10 dateInterval];
        v12 = [v11 startDate];

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v13 = [v10 schedules];
        v14 = [v13 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v33;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v33 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v32 + 1) + 8 * i);
              v19 = [v18 bedTimeComponents];
              if (v19)
              {
                v20 = v19;
                v21 = [v18 wakeTimeComponents];

                if (v21)
                {
                  v22 = [_HKSHLocalizedSleepSchedule alloc];
                  v23 = [v10 calendar];
                  v24 = [(_HKSHLocalizedSleepSchedule *)v22 initWithSleepSchedule:v18 calendar:v23 dayStart:v12 timeFont:v31 amPmFont:v8];

                  [v30 addObject:v24];
                }
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v15);
        }

        v9 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v28);
  }

  return v30;
}

- (id)_attributedValueString:(id)a3 valueFont:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = *MEMORY[0x277D740A8];
  v13[0] = a4;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = objc_alloc(MEMORY[0x277CCA898]);

  v10 = [v9 initWithString:v7 attributes:v8];

  return v10;
}

- (id)_longTitleForSelectedRangeDataType:(int64_t)a3 statisticsType:(int64_t)a4
{
  if (a4)
  {
    goto LABEL_2;
  }

  if (a3 == 9)
  {
    v5 = @"TIME_IN_BED";
  }

  else
  {
    if (a3 != 10)
    {
LABEL_2:
      v4 = 0;
      goto LABEL_8;
    }

    v5 = @"TIME_ASLEEP";
  }

  v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:v5 value:&stru_287AAA530 table:@"HealthUI-Localizable"];
  v4 = [v7 localizedUppercaseString];

LABEL_8:

  return v4;
}

- (id)_prefixColorForSleepValue:(int64_t)a3 isPrefixColorActive:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    if ([v5 BOOLValue])
    {
      [MEMORY[0x277D75348] hk_sleepColorForSleepAnalysis:a3];
    }

    else
    {
      [MEMORY[0x277D75348] hk_sleepInactiveColorForSleepAnalysis:a3];
    }
    v7 = ;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end