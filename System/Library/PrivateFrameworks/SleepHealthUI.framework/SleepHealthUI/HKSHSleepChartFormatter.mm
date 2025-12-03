@interface HKSHSleepChartFormatter
- (HKSHSleepChartFormatter)initWithHealthStore:(id)store;
- (id)_attributedValueString:(id)string valueFont:(id)font;
- (id)_firstCalendarForSummaries:(id)summaries;
- (id)_firstDateForSummaries:(id)summaries;
- (id)_lastSleepGoalForSummaries:(id)summaries;
- (id)_localizedSchedulesFromSummaries:(id)summaries timeFont:(id)font amPmFont:(id)pmFont;
- (id)_longTitleForSelectedRangeDataType:(int64_t)type statisticsType:(int64_t)statisticsType;
- (id)_prefixColorForSleepValue:(int64_t)value isPrefixColorActive:(id)active;
- (id)_rangeDataForAverageInBedStartTime:(id)time averageInBedEndTime:(id)endTime averageSleepStartTime:(id)startTime averageSleepEndTime:(id)sleepEndTime inBedDuration:(id)duration sleepDuration:(id)sleepDuration calendar:(id)calendar firstDayStart:(id)self0 timeFont:(id)self1 amPmFont:(id)self2 formatterOptions:(unint64_t)self3;
- (id)_rangeDataForDurationGoalWithSleepDaySummaries:(id)summaries valueFont:(id)font unitFont:(id)unitFont;
- (id)_rangeDataForDurationValue:(id)value dataType:(int64_t)type sleepValue:(int64_t)sleepValue isPrefixColorActive:(id)active valueFont:(id)font unitFont:(id)unitFont statisticsType:(int64_t)statisticsType formatterOptions:(unint64_t)self0;
- (id)_rangeDataForInBedDuration:(id)duration sleepDuration:(id)sleepDuration awakeDuration:(id)awakeDuration asleepCoreDuration:(id)coreDuration asleepDeepDuration:(id)deepDuration asleepREMDuration:(id)mDuration overrideDuration:(id)overrideDuration arePrefixColorsActive:(id)self0 statisticsType:(int64_t)self1 valueFont:(id)self2 unitFont:(id)self3 formatterOptions:(unint64_t)self4;
- (id)_rangeDataForSleepScheduleWithSleepDaySummaries:(id)summaries timeFont:(id)font amPmFont:(id)pmFont;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context;
- (int64_t)_statisticsTypeForSummaries:(id)summaries calendar:(id)calendar;
@end

@implementation HKSHSleepChartFormatter

- (HKSHSleepChartFormatter)initWithHealthStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = HKSHSleepChartFormatter;
  v6 = [(HKSHSleepChartFormatter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, store);
  }

  return v7;
}

- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context
{
  v129 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v112 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  obj = dataCopy;
  v6 = [obj countByEnumeratingWithState:&v124 objects:v128 count:16];
  if (v6)
  {
    v7 = v6;
    v119 = 0;
    v8 = 0;
    v9 = 0;
    v113 = 0;
    currentValueViewOptionsPriority = 0;
    seriesType = 0;
    v11 = *v125;
    currentValueViewOptions = 131;
    annotationOptions = 3;
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
          chartPointInfoProvider = [v4 chartPointInfoProvider];
          if ([chartPointInfoProvider isAveraged])
          {
            v18 = 1;
          }

          else
          {
            chartPointInfoProvider2 = [v4 chartPointInfoProvider];
            sleepDaySummaries = [chartPointInfoProvider2 sleepDaySummaries];
            firstObject = [sleepDaySummaries firstObject];
            isWeeklyAggregatedSummary = [firstObject isWeeklyAggregatedSummary];

            v18 = isWeeklyAggregatedSummary | v119;
          }

          v119 = v18;

          chartPointInfoProvider3 = [v4 chartPointInfoProvider];
          sleepDaySummaries2 = [chartPointInfoProvider3 sleepDaySummaries];
          [v112 addObjectsFromArray:sleepDaySummaries2];

          seriesType = [v4 seriesType];
          annotationOptions = [v4 annotationOptions];
          annotationOverrideDuration = [v4 annotationOverrideDuration];

          annotationOverridePrefixColorsActive = [v4 annotationOverridePrefixColorsActive];

          if ([v4 currentValueViewOptionsPriority] >= currentValueViewOptionsPriority)
          {
            currentValueViewOptions = [v4 currentValueViewOptions];
            currentValueViewOptionsPriority = [v4 currentValueViewOptionsPriority];
            currentValueViewOverridePrefixColorsActive = [v4 currentValueViewOverridePrefixColorsActive];

            v113 = currentValueViewOverridePrefixColorsActive;
          }

          v11 = v15;

          v8 = annotationOverridePrefixColorsActive;
          v9 = annotationOverrideDuration;
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
    seriesType = 0;
    currentValueViewOptions = 131;
    annotationOptions = 3;
  }

  v28 = v112;
  if (![v112 count])
  {
    v4 = MEMORY[0x277CBEBF8];
    goto LABEL_47;
  }

  v118 = v8;
  v29 = [MEMORY[0x277CCD9D0] sleepMetricsForDaySummaries:v112];
  averageInBedDuration = [v29 averageInBedDuration];
  secondUnit = [MEMORY[0x277CCDAB0] secondUnit];
  [averageInBedDuration doubleValueForUnit:secondUnit];
  v33 = v32;

  averageAwakeDuration = [v29 averageAwakeDuration];
  secondUnit2 = [MEMORY[0x277CCDAB0] secondUnit];
  [averageAwakeDuration doubleValueForUnit:secondUnit2];
  v37 = v36;

  averageCoreSleepDuration = [v29 averageCoreSleepDuration];
  secondUnit3 = [MEMORY[0x277CCDAB0] secondUnit];
  [averageCoreSleepDuration doubleValueForUnit:secondUnit3];
  v41 = v40;

  averageREMSleepDuration = [v29 averageREMSleepDuration];
  secondUnit4 = [MEMORY[0x277CCDAB0] secondUnit];
  [averageREMSleepDuration doubleValueForUnit:secondUnit4];
  v45 = v44;

  averageDeepSleepDuration = [v29 averageDeepSleepDuration];
  secondUnit5 = [MEMORY[0x277CCDAB0] secondUnit];
  [averageDeepSleepDuration doubleValueForUnit:secondUnit5];
  v49 = v48;

  averageSleepDuration = [v29 averageSleepDuration];
  secondUnit6 = [MEMORY[0x277CCDAB0] secondUnit];
  [averageSleepDuration doubleValueForUnit:secondUnit6];
  v53 = v52;

  averageInBedStartTime = [v29 averageInBedStartTime];
  averageInBedEndTime = [v29 averageInBedEndTime];
  averageSleepStartTime = [v29 averageSleepStartTime];
  averageSleepEndTime = [v29 averageSleepEndTime];
  v56 = [(HKSHSleepChartFormatter *)self _firstCalendarForSummaries:v112];
  v101 = [(HKSHSleepChartFormatter *)self _firstDateForSummaries:v112];
  v102 = v56;
  v57 = [(HKSHSleepChartFormatter *)self _statisticsTypeForSummaries:v112 calendar:v56];
  if (seriesType <= 2)
  {
    v8 = v118;
    if (!seriesType)
    {
      goto LABEL_32;
    }

    if (seriesType != 1)
    {
      if (seriesType != 2)
      {
        goto LABEL_46;
      }

      goto LABEL_41;
    }

LABEL_35:
    if (context != 1)
    {
      if (!context)
      {
        v68 = [MEMORY[0x277CCABB0] numberWithDouble:v33];
        v122 = [MEMORY[0x277CCABB0] numberWithDouble:v53];
        [(HKInteractiveChartDataFormatter *)self majorFont];
        v69 = averageInBedEndTime;
        v71 = v70 = averageInBedStartTime;
        minorFont = [(HKInteractiveChartDataFormatter *)self minorFont];
        v87 = annotationOptions;
        majorFont3 = v68;
        v4 = [(HKSHSleepChartFormatter *)self _rangeDataForAverageInBedStartTime:v70 averageInBedEndTime:v69 averageSleepStartTime:averageSleepStartTime averageSleepEndTime:averageSleepEndTime inBedDuration:v68 sleepDuration:v122 calendar:v102 firstDayStart:v101 timeFont:v71 amPmFont:minorFont formatterOptions:v87];

        v8 = v118;
        averageInBedStartTime = v70;
        averageInBedEndTime = v69;
        minorFont4 = v122;
LABEL_45:

        goto LABEL_46;
      }

      goto LABEL_41;
    }

    goto LABEL_43;
  }

  if (seriesType <= 4)
  {
    v8 = v118;
    if (seriesType != 3)
    {
      if (context != 1)
      {
        if (!context)
        {
          v92 = v57;
          v105 = averageInBedEndTime;
          v98 = averageInBedStartTime;
          v58 = v119 & ((annotationOptions & 0x3C) == 0);
          v120 = [MEMORY[0x277CCABB0] numberWithDouble:v33];
          minorFont4 = [MEMORY[0x277CCABB0] numberWithDouble:v53];
          if (v58 == 1)
          {
            majorFont = [(HKInteractiveChartDataFormatter *)self majorFont];
            minorFont2 = [(HKInteractiveChartDataFormatter *)self minorFont];
            v86 = annotationOptions;
            majorFont3 = v120;
            v4 = [(HKSHSleepChartFormatter *)self _rangeDataForAverageInBedStartTime:v98 averageInBedEndTime:averageInBedEndTime averageSleepStartTime:averageSleepStartTime averageSleepEndTime:averageSleepEndTime inBedDuration:v120 sleepDuration:minorFont4 calendar:v102 firstDayStart:v101 timeFont:majorFont amPmFont:minorFont2 formatterOptions:v86];

            averageInBedStartTime = v98;
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
            majorFont2 = [(HKInteractiveChartDataFormatter *)self majorFont];
            minorFont3 = [(HKInteractiveChartDataFormatter *)self minorFont];
            v89 = annotationOptions;
            majorFont3 = v120;
            v4 = [(HKSHSleepChartFormatter *)self _rangeDataForInBedDuration:v120 sleepDuration:minorFont4 awakeDuration:v111 asleepCoreDuration:v80 asleepDeepDuration:v81 asleepREMDuration:v82 overrideDuration:v97 arePrefixColorsActive:v118 statisticsType:v92 valueFont:majorFont2 unitFont:minorFont3 formatterOptions:v89];

            v8 = v118;
            v9 = v97;

            v28 = v112;
            averageInBedStartTime = v98;
            averageInBedEndTime = v105;
          }

          goto LABEL_45;
        }

        goto LABEL_41;
      }

      goto LABEL_43;
    }

    if (context != 1)
    {
      if (!context)
      {
        majorFont3 = [(HKInteractiveChartDataFormatter *)self majorFont];
        minorFont4 = [(HKInteractiveChartDataFormatter *)self minorFont];
        v73 = [(HKSHSleepChartFormatter *)self _rangeDataForSleepScheduleWithSleepDaySummaries:v112 timeFont:majorFont3 amPmFont:minorFont4];
LABEL_42:
        v4 = v73;
        goto LABEL_45;
      }

      goto LABEL_41;
    }

    goto LABEL_43;
  }

  v8 = v118;
  if (seriesType == 6)
  {
    goto LABEL_35;
  }

  if (seriesType == 5)
  {
LABEL_32:
    if (context != 1)
    {
      if (!context)
      {
        v93 = v57;
        v121 = [MEMORY[0x277CCABB0] numberWithDouble:v33];
        minorFont4 = [MEMORY[0x277CCABB0] numberWithDouble:v53];
        v110 = [MEMORY[0x277CCABB0] numberWithDouble:v37];
        v99 = [MEMORY[0x277CCABB0] numberWithDouble:v41];
        v90 = [MEMORY[0x277CCABB0] numberWithDouble:v49];
        v95 = [MEMORY[0x277CCABB0] numberWithDouble:v45];
        [(HKInteractiveChartDataFormatter *)self majorFont];
        v106 = averageInBedEndTime;
        v64 = v63 = averageInBedStartTime;
        [(HKInteractiveChartDataFormatter *)self minorFont];
        v66 = v65 = v9;
        v88 = annotationOptions;
        majorFont3 = v121;
        v4 = [(HKSHSleepChartFormatter *)self _rangeDataForInBedDuration:v121 sleepDuration:minorFont4 awakeDuration:v110 asleepCoreDuration:v99 asleepDeepDuration:v90 asleepREMDuration:v95 overrideDuration:v65 arePrefixColorsActive:v118 statisticsType:v93 valueFont:v64 unitFont:v66 formatterOptions:v88];

        v9 = v65;
        averageInBedStartTime = v63;
        averageInBedEndTime = v106;

        v8 = v118;
        v67 = v110;
LABEL_44:

        goto LABEL_45;
      }

LABEL_41:
      majorFont3 = [(HKInteractiveChartDataFormatter *)self majorFont];
      minorFont4 = [(HKInteractiveChartDataFormatter *)self minorFont];
      v73 = [(HKSHSleepChartFormatter *)self _rangeDataForDurationGoalWithSleepDaySummaries:v112 valueFont:majorFont3 unitFont:minorFont4];
      goto LABEL_42;
    }

LABEL_43:
    v74 = v57;
    v123 = [MEMORY[0x277CCABB0] numberWithDouble:v33];
    minorFont4 = [MEMORY[0x277CCABB0] numberWithDouble:v53];
    v94 = [MEMORY[0x277CCABB0] numberWithDouble:v37];
    v91 = [MEMORY[0x277CCABB0] numberWithDouble:v41];
    [MEMORY[0x277CCABB0] numberWithDouble:v49];
    v107 = averageInBedEndTime;
    v75 = v100 = averageInBedStartTime;
    v76 = [MEMORY[0x277CCABB0] numberWithDouble:v45];
    [(HKInteractiveChartDataFormatter *)self majorFont];
    v77 = v96 = v9;
    minorFont5 = [(HKInteractiveChartDataFormatter *)self minorFont];
    v85 = v74;
    majorFont3 = v123;
    v4 = [(HKSHSleepChartFormatter *)self _rangeDataForInBedDuration:v123 sleepDuration:minorFont4 awakeDuration:v94 asleepCoreDuration:v91 asleepDeepDuration:v75 asleepREMDuration:v76 overrideDuration:0 arePrefixColorsActive:v113 statisticsType:v85 valueFont:v77 unitFont:minorFont5 formatterOptions:currentValueViewOptions];

    v9 = v96;
    v8 = v118;

    averageInBedStartTime = v100;
    averageInBedEndTime = v107;

    v67 = v94;
    goto LABEL_44;
  }

LABEL_46:

LABEL_47:

  return v4;
}

- (int64_t)_statisticsTypeForSummaries:(id)summaries calendar:(id)calendar
{
  calendarCopy = calendar;
  v6 = [MEMORY[0x277CBEB98] setWithArray:summaries];
  v7 = [v6 count];
  if (v7 == 1)
  {
    allObjects = [v6 allObjects];
    firstObject = [allObjects firstObject];

    dateInterval = [firstObject dateInterval];
    startDate = [dateInterval startDate];
    v12 = [startDate hk_morningIndexWithCalendar:calendarCopy];

    dateInterval2 = [firstObject dateInterval];
    endDate = [dateInterval2 endDate];
    v15 = [endDate hk_morningIndexWithCalendar:calendarCopy];

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

- (id)_rangeDataForInBedDuration:(id)duration sleepDuration:(id)sleepDuration awakeDuration:(id)awakeDuration asleepCoreDuration:(id)coreDuration asleepDeepDuration:(id)deepDuration asleepREMDuration:(id)mDuration overrideDuration:(id)overrideDuration arePrefixColorsActive:(id)self0 statisticsType:(int64_t)self1 valueFont:(id)self2 unitFont:(id)self3 formatterOptions:(unint64_t)self4
{
  durationCopy = duration;
  sleepDurationCopy = sleepDuration;
  awakeDurationCopy = awakeDuration;
  coreDurationCopy = coreDuration;
  deepDurationCopy = deepDuration;
  mDurationCopy = mDuration;
  overrideDurationCopy = overrideDuration;
  activeCopy = active;
  fontCopy = font;
  unitFontCopy = unitFont;
  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [durationCopy doubleValue];
  if ((options & 1) != 0 && v27 > 0.0)
  {
    if (overrideDurationCopy)
    {
      v28 = overrideDurationCopy;
    }

    else
    {
      v28 = durationCopy;
    }

    v29 = [(HKSHSleepChartFormatter *)self _rangeDataForDurationValue:v28 dataType:9 sleepValue:0 isPrefixColorActive:activeCopy valueFont:fontCopy unitFont:unitFontCopy statisticsType:type formatterOptions:options];
    [v26 addObject:v29];
  }

  [sleepDurationCopy doubleValue];
  if ((options & 2) != 0 && v30 > 0.0)
  {
    if (overrideDurationCopy)
    {
      v31 = overrideDurationCopy;
    }

    else
    {
      v31 = sleepDurationCopy;
    }

    v32 = [(HKSHSleepChartFormatter *)self _rangeDataForDurationValue:v31 dataType:10 sleepValue:_HKCategoryValueSleepAnalysisDefaultAsleepValue() isPrefixColorActive:activeCopy valueFont:fontCopy unitFont:unitFontCopy statisticsType:type formatterOptions:options];
    [v26 addObject:v32];
  }

  [awakeDurationCopy doubleValue];
  if ((options & 4) != 0 && v33 > 0.0)
  {
    if (overrideDurationCopy)
    {
      v34 = overrideDurationCopy;
    }

    else
    {
      v34 = awakeDurationCopy;
    }

    v35 = [(HKSHSleepChartFormatter *)self _rangeDataForDurationValue:v34 dataType:24 sleepValue:2 isPrefixColorActive:activeCopy valueFont:fontCopy unitFont:unitFontCopy statisticsType:type formatterOptions:options];
    [v26 addObject:v35];
  }

  [coreDurationCopy doubleValue];
  if ((options & 0x10) != 0 && v36 > 0.0)
  {
    if (overrideDurationCopy)
    {
      v37 = overrideDurationCopy;
    }

    else
    {
      v37 = coreDurationCopy;
    }

    v38 = [(HKSHSleepChartFormatter *)self _rangeDataForDurationValue:v37 dataType:25 sleepValue:3 isPrefixColorActive:activeCopy valueFont:fontCopy unitFont:unitFontCopy statisticsType:type formatterOptions:options];
    [v26 addObject:v38];
  }

  [deepDurationCopy doubleValue];
  if ((options & 0x20) != 0 && v39 > 0.0)
  {
    if (overrideDurationCopy)
    {
      v40 = overrideDurationCopy;
    }

    else
    {
      v40 = deepDurationCopy;
    }

    v41 = [(HKSHSleepChartFormatter *)self _rangeDataForDurationValue:v40 dataType:26 sleepValue:4 isPrefixColorActive:activeCopy valueFont:fontCopy unitFont:unitFontCopy statisticsType:type formatterOptions:options];
    [v26 addObject:v41];
  }

  [mDurationCopy doubleValue];
  if ((options & 8) != 0 && v42 > 0.0)
  {
    if (overrideDurationCopy)
    {
      v43 = overrideDurationCopy;
    }

    else
    {
      v43 = mDurationCopy;
    }

    v44 = [(HKSHSleepChartFormatter *)self _rangeDataForDurationValue:v43 dataType:27 sleepValue:5 isPrefixColorActive:activeCopy valueFont:fontCopy unitFont:unitFontCopy statisticsType:type formatterOptions:options];
    [v26 addObject:v44];
  }

  return v26;
}

- (id)_rangeDataForDurationValue:(id)value dataType:(int64_t)type sleepValue:(int64_t)sleepValue isPrefixColorActive:(id)active valueFont:(id)font unitFont:(id)unitFont statisticsType:(int64_t)statisticsType formatterOptions:(unint64_t)self0
{
  activeCopy = active;
  valueCopy = value;
  v16 = HKTimePeriodStringWithFonts();
  v17 = [v16 mutableCopy];

  v18 = [objc_alloc(MEMORY[0x277D12A38]) initWithStatisticsType:statisticsType];
  [v18 setDataType:type];
  [v18 setAttributedString:v17];
  [v18 setValueAsNumber:valueCopy];

  [v18 setPrefersImageAffixes:(options & 0x40) == 0];
  v19 = [(HKSHSleepChartFormatter *)self _prefixColorForSleepValue:sleepValue isPrefixColorActive:activeCopy];

  [v18 setPrefixColor:v19];
  if ((options & 0x80) != 0)
  {
    v20 = [(HKSHSleepChartFormatter *)self _longTitleForSelectedRangeDataType:type statisticsType:statisticsType];
    [v18 setTitleOverride:v20];
  }

  return v18;
}

- (id)_rangeDataForDurationGoalWithSleepDaySummaries:(id)summaries valueFont:(id)font unitFont:(id)unitFont
{
  v18[1] = *MEMORY[0x277D85DE8];
  fontCopy = font;
  unitFontCopy = unitFont;
  v10 = [(HKSHSleepChartFormatter *)self _lastSleepGoalForSummaries:summaries];
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
    v15 = [(HKSHSleepChartFormatter *)self _attributedValueString:v14 valueFont:fontCopy];
    [v11 setAttributedString:v15];
  }

  v18[0] = v11;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];

  return v16;
}

- (id)_rangeDataForSleepScheduleWithSleepDaySummaries:(id)summaries timeFont:(id)font amPmFont:(id)pmFont
{
  v27[1] = *MEMORY[0x277D85DE8];
  fontCopy = font;
  v9 = [(HKSHSleepChartFormatter *)self _localizedSchedulesFromSummaries:summaries timeFont:fontCopy amPmFont:pmFont];
  if (![v9 count])
  {
    anyObject = [objc_alloc(MEMORY[0x277D12A38]) initWithStatisticsType:0];
    [anyObject setDataType:0];
    v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v17 = [v16 localizedStringForKey:@"SLEEP_NO_SCHEDULE" value:&stru_287AAA530 table:@"HealthUI-Localizable-Eucalyptus"];
    v18 = [(HKSHSleepChartFormatter *)self _attributedValueString:v17 valueFont:fontCopy];
    [anyObject setAttributedString:v18];

    v27[0] = anyObject;
    v14 = MEMORY[0x277CBEA60];
    v15 = v27;
    goto LABEL_5;
  }

  if ([v9 count] >= 2)
  {
    anyObject = [objc_alloc(MEMORY[0x277D12A38]) initWithStatisticsType:0];
    [anyObject setDataType:0];
    v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v12 = [v11 localizedStringForKey:@"SLEEP_MULTIPLE_SCHEDULES" value:&stru_287AAA530 table:@"HealthUI-Localizable-Eucalyptus"];
    v13 = [(HKSHSleepChartFormatter *)self _attributedValueString:v12 valueFont:fontCopy];
    [anyObject setAttributedString:v13];

    v26 = anyObject;
    v14 = MEMORY[0x277CBEA60];
    v15 = &v26;
LABEL_5:
    v19 = [v14 arrayWithObjects:v15 count:1];
    goto LABEL_7;
  }

  anyObject = [v9 anyObject];
  v20 = [objc_alloc(MEMORY[0x277D12A38]) initWithStatisticsType:0];
  [v20 setDataType:14];
  localizedBedTime = [anyObject localizedBedTime];
  [v20 setAttributedString:localizedBedTime];

  v22 = [objc_alloc(MEMORY[0x277D12A38]) initWithStatisticsType:0];
  [v22 setDataType:15];
  localizedWakeTime = [anyObject localizedWakeTime];
  [v22 setAttributedString:localizedWakeTime];

  v25[0] = v20;
  v25[1] = v22;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];

LABEL_7:

  return v19;
}

- (id)_rangeDataForAverageInBedStartTime:(id)time averageInBedEndTime:(id)endTime averageSleepStartTime:(id)startTime averageSleepEndTime:(id)sleepEndTime inBedDuration:(id)duration sleepDuration:(id)sleepDuration calendar:(id)calendar firstDayStart:(id)self0 timeFont:(id)self1 amPmFont:(id)self2 formatterOptions:(unint64_t)self3
{
  v60[1] = *MEMORY[0x277D85DE8];
  timeCopy = time;
  endTimeCopy = endTime;
  startTimeCopy = startTime;
  sleepEndTimeCopy = sleepEndTime;
  durationCopy = duration;
  sleepDurationCopy = sleepDuration;
  calendarCopy = calendar;
  startCopy = start;
  fontCopy = font;
  pmFontCopy = pmFont;
  v56 = durationCopy;
  v57 = timeCopy;
  v27 = endTimeCopy;
  if (timeCopy | endTimeCopy && ([durationCopy doubleValue], v28 > 0.0))
  {
    v29 = options & 1;
  }

  else
  {
    v29 = 0;
  }

  v30 = sleepEndTimeCopy;
  v31 = startTimeCopy | sleepEndTimeCopy;
  v32 = v27;
  v58 = startTimeCopy;
  if (v31 && ([sleepDurationCopy doubleValue], v33 > 0.0))
  {
    v34 = (options >> 1) & 1;
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
      if (calendarCopy)
      {
        v35 = startCopy == 0;
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

  if (!calendarCopy || !startCopy)
  {
LABEL_21:
    v42 = sleepDurationCopy;
    v43 = [objc_alloc(MEMORY[0x277D12A38]) initWithStatisticsType:0];
    [v43 setDataType:0];
    v44 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v45 = [v44 localizedStringForKey:@"SLEEP_NO_TIMES" value:&stru_287AAA530 table:@"HealthUI-Localizable-Eucalyptus"];
    v46 = [(HKSHSleepChartFormatter *)self _attributedValueString:v45 valueFont:fontCopy];
    [v43 setAttributedString:v46];

    v60[0] = v43;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:1];

    sleepDurationCopy = v42;
    timeCopy = v57;
LABEL_22:
    v47 = v58;
    v48 = v56;
    goto LABEL_28;
  }

LABEL_19:
  v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v34)
  {
    v55 = sleepDurationCopy;
    v38 = [objc_alloc(MEMORY[0x277D12A38]) initWithStatisticsType:0];
    [v38 setDataType:16];
    v39 = HKSHLocalizedTimeForComponents(v58, calendarCopy, startCopy, fontCopy, pmFontCopy);
    [v38 setAttributedString:v39];

    [v37 addObject:v38];
    v40 = [objc_alloc(MEMORY[0x277D12A38]) initWithStatisticsType:0];
    [v40 setDataType:17];
    v41 = HKSHLocalizedTimeForComponents(v30, calendarCopy, startCopy, fontCopy, pmFontCopy);
    [v40 setAttributedString:v41];

    [v37 addObject:v40];
    timeCopy = v57;
  }

  else
  {
    if (timeCopy)
    {
      v49 = [objc_alloc(MEMORY[0x277D12A38]) initWithStatisticsType:0];
      [v49 setDataType:18];
      HKSHLocalizedTimeForComponents(timeCopy, calendarCopy, startCopy, fontCopy, pmFontCopy);
      v51 = v50 = sleepDurationCopy;
      [v49 setAttributedString:v51];

      sleepDurationCopy = v50;
      [v37 addObject:v49];
    }

    if (!v32)
    {
      goto LABEL_22;
    }

    v55 = sleepDurationCopy;
    v38 = [objc_alloc(MEMORY[0x277D12A38]) initWithStatisticsType:0];
    [v38 setDataType:19];
    v52 = HKSHLocalizedTimeForComponents(v32, calendarCopy, startCopy, fontCopy, pmFontCopy);
    [v38 setAttributedString:v52];

    [v37 addObject:v38];
  }

  v47 = v58;
  sleepDurationCopy = v55;
  v48 = v56;
LABEL_28:

  return v37;
}

- (id)_lastSleepGoalForSummaries:(id)summaries
{
  v21 = *MEMORY[0x277D85DE8];
  summariesCopy = summaries;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [summariesCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(summariesCopy);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        sleepDurationGoal = [v9 sleepDurationGoal];

        if (sleepDurationGoal)
        {
          v11 = MEMORY[0x277CCABB0];
          sleepDurationGoal2 = [v9 sleepDurationGoal];
          secondUnit = [MEMORY[0x277CCDAB0] secondUnit];
          [sleepDurationGoal2 doubleValueForUnit:secondUnit];
          v14 = [v11 numberWithDouble:?];

          v6 = v14;
        }
      }

      v5 = [summariesCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_firstCalendarForSummaries:(id)summaries
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  summariesCopy = summaries;
  calendar2 = [summariesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (calendar2)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != calendar2; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(summariesCopy);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        calendar = [v7 calendar];

        if (calendar)
        {
          calendar2 = [v7 calendar];
          goto LABEL_11;
        }
      }

      calendar2 = [summariesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (calendar2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return calendar2;
}

- (id)_firstDateForSummaries:(id)summaries
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  summariesCopy = summaries;
  startDate2 = [summariesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (startDate2)
  {
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != startDate2; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(summariesCopy);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        dateInterval = [v7 dateInterval];
        startDate = [dateInterval startDate];

        if (startDate)
        {
          dateInterval2 = [v7 dateInterval];
          startDate2 = [dateInterval2 startDate];

          goto LABEL_11;
        }
      }

      startDate2 = [summariesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (startDate2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return startDate2;
}

- (id)_localizedSchedulesFromSummaries:(id)summaries timeFont:(id)font amPmFont:(id)pmFont
{
  v42 = *MEMORY[0x277D85DE8];
  summariesCopy = summaries;
  fontCopy = font;
  pmFontCopy = pmFont;
  v30 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = summariesCopy;
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
        dateInterval = [v10 dateInterval];
        startDate = [dateInterval startDate];

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        schedules = [v10 schedules];
        v14 = [schedules countByEnumeratingWithState:&v32 objects:v40 count:16];
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
                objc_enumerationMutation(schedules);
              }

              v18 = *(*(&v32 + 1) + 8 * i);
              bedTimeComponents = [v18 bedTimeComponents];
              if (bedTimeComponents)
              {
                v20 = bedTimeComponents;
                wakeTimeComponents = [v18 wakeTimeComponents];

                if (wakeTimeComponents)
                {
                  v22 = [_HKSHLocalizedSleepSchedule alloc];
                  calendar = [v10 calendar];
                  v24 = [(_HKSHLocalizedSleepSchedule *)v22 initWithSleepSchedule:v18 calendar:calendar dayStart:startDate timeFont:fontCopy amPmFont:pmFontCopy];

                  [v30 addObject:v24];
                }
              }
            }

            v15 = [schedules countByEnumeratingWithState:&v32 objects:v40 count:16];
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

- (id)_attributedValueString:(id)string valueFont:(id)font
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = *MEMORY[0x277D740A8];
  v13[0] = font;
  v5 = MEMORY[0x277CBEAC0];
  fontCopy = font;
  stringCopy = string;
  v8 = [v5 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = objc_alloc(MEMORY[0x277CCA898]);

  v10 = [v9 initWithString:stringCopy attributes:v8];

  return v10;
}

- (id)_longTitleForSelectedRangeDataType:(int64_t)type statisticsType:(int64_t)statisticsType
{
  if (statisticsType)
  {
    goto LABEL_2;
  }

  if (type == 9)
  {
    v5 = @"TIME_IN_BED";
  }

  else
  {
    if (type != 10)
    {
LABEL_2:
      localizedUppercaseString = 0;
      goto LABEL_8;
    }

    v5 = @"TIME_ASLEEP";
  }

  v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:v5 value:&stru_287AAA530 table:@"HealthUI-Localizable"];
  localizedUppercaseString = [v7 localizedUppercaseString];

LABEL_8:

  return localizedUppercaseString;
}

- (id)_prefixColorForSleepValue:(int64_t)value isPrefixColorActive:(id)active
{
  activeCopy = active;
  v6 = activeCopy;
  if (activeCopy)
  {
    if ([activeCopy BOOLValue])
    {
      [MEMORY[0x277D75348] hk_sleepColorForSleepAnalysis:value];
    }

    else
    {
      [MEMORY[0x277D75348] hk_sleepInactiveColorForSleepAnalysis:value];
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