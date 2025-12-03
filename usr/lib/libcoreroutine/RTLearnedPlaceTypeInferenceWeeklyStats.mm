@interface RTLearnedPlaceTypeInferenceWeeklyStats
- (RTLearnedPlaceTypeInferenceWeeklyStats)initWithDailyStats:(id)stats;
- (id)description;
@end

@implementation RTLearnedPlaceTypeInferenceWeeklyStats

- (RTLearnedPlaceTypeInferenceWeeklyStats)initWithDailyStats:(id)stats
{
  statsCopy = stats;
  v23.receiver = self;
  v23.super_class = RTLearnedPlaceTypeInferenceWeeklyStats;
  v5 = [(RTLearnedPlaceTypeInferenceWeeklyStats *)&v23 init];
  v6 = v5;
  if (v5)
  {
    v5->_dailyAggregateDwellTimeBetweenDateRangeAverage = 0.0;
    v5->_dailyAggregateDwellTimeBetweenDateRangeStandardDeviation = 0.0;
    v7 = [statsCopy valueForKeyPath:@"@sum.visitCount"];
    v6->_totalDailyVisitCount = [v7 unsignedIntegerValue];

    v6->_daysWithNonZeroDwellTime = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __61__RTLearnedPlaceTypeInferenceWeeklyStats_initWithDailyStats___block_invoke;
    v11[3] = &unk_2788D2AB8;
    v12 = v6;
    v13 = &v19;
    v14 = &v15;
    [statsCopy enumerateObjectsUsingBlock:v11];
    daysWithNonZeroDwellTime = v6->_daysWithNonZeroDwellTime;
    if (daysWithNonZeroDwellTime >= 1)
    {
      v9 = v20[3] / daysWithNonZeroDwellTime;
      v6->_dailyAggregateDwellTimeBetweenDateRangeAverage = v9;
      v6->_dailyAggregateDwellTimeBetweenDateRangeStandardDeviation = sqrt(v16[3] / daysWithNonZeroDwellTime - v9 * v9);
    }

    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v19, 8);
  }

  return v6;
}

void __61__RTLearnedPlaceTypeInferenceWeeklyStats_initWithDailyStats___block_invoke(void *a1, void *a2)
{
  v8 = a2;
  [v8 aggregateDwellTimeBetweenDateRange];
  if (v3 > 0.0)
  {
    ++*(a1[4] + 32);
    [v8 aggregateDwellTimeBetweenDateRange];
    *(*(a1[5] + 8) + 24) = v4 + *(*(a1[5] + 8) + 24);
    [v8 aggregateDwellTimeBetweenDateRange];
    v6 = v5;
    [v8 aggregateDwellTimeBetweenDateRange];
    *(*(a1[6] + 8) + 24) = *(*(a1[6] + 8) + 24) + v6 * v7;
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  daysWithNonZeroDwellTime = [(RTLearnedPlaceTypeInferenceWeeklyStats *)self daysWithNonZeroDwellTime];
  totalDailyVisitCount = [(RTLearnedPlaceTypeInferenceWeeklyStats *)self totalDailyVisitCount];
  [(RTLearnedPlaceTypeInferenceWeeklyStats *)self dailyAggregateDwellTimeBetweenDateRangeAverage];
  v7 = v6;
  [(RTLearnedPlaceTypeInferenceWeeklyStats *)self dailyAggregateDwellTimeBetweenDateRangeStandardDeviation];
  return [v3 stringWithFormat:@"daysWithNonZeroDwellTime, %lu, totalDailyVisitCount, %lu, dailyAggregateDwellTimeBetweenDateRangeAverage, %.2f, dailyAggregateDwellTimeBetweenDateRangeStandardDeviation, %.2f", daysWithNonZeroDwellTime, totalDailyVisitCount, v7, v8];
}

@end