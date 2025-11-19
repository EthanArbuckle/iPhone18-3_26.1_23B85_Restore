@interface RTLearnedPlaceTypeInferenceStats
- (RTLearnedPlaceTypeInferenceStats)initWithWeeklyStats:(id)a3 topMedianDwellTime:(double)a4;
- (id)description;
@end

@implementation RTLearnedPlaceTypeInferenceStats

- (RTLearnedPlaceTypeInferenceStats)initWithWeeklyStats:(id)a3 topMedianDwellTime:(double)a4
{
  v7 = a3;
  v29.receiver = self;
  v29.super_class = RTLearnedPlaceTypeInferenceStats;
  v8 = [(RTLearnedPlaceTypeInferenceStats *)&v29 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_weeklyStats, a3);
    v9->_topMedianDwellTime = a4;
    *&v9->_weeklyAggregateDwellTimeBetweenDateRangeAverage = 0u;
    *&v9->_weeklyTotalDailyVisitCountAverage = 0u;
    v10 = [v7 valueForKeyPath:@"@sum.totalDailyVisitCount"];
    v9->_totalDailyVisitCount = [v10 unsignedIntegerValue];

    v9->_weeksWithNonZeroDwellTime = 0;
    v11 = [v7 valueForKeyPath:@"@sum.dailyAggregateDwellTimeBetweenDateRangeAverage"];
    [v11 doubleValue];
    v13 = v12;

    v14 = [v7 valueForKeyPath:@"@sum.dailyAggregateDwellTimeBetweenDateRangeStandardDeviation"];
    [v14 doubleValue];
    v16 = v15;

    v17 = [v7 valueForKeyPath:@"@sum.totalDailyVisitCount"];
    [v17 doubleValue];
    v19 = v18;

    v20 = [v7 valueForKeyPath:@"@sum.daysWithNonZeroDwellTime"];
    [v20 doubleValue];
    v22 = v21;

    weeklyStats = v9->_weeklyStats;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __75__RTLearnedPlaceTypeInferenceStats_initWithWeeklyStats_topMedianDwellTime___block_invoke;
    v27[3] = &unk_2788D2AE0;
    v24 = v9;
    v28 = v24;
    [(NSArray *)weeklyStats enumerateObjectsUsingBlock:v27];
    weeksWithNonZeroDwellTime = v9->_weeksWithNonZeroDwellTime;
    if (weeksWithNonZeroDwellTime >= 1)
    {
      v9->_weeklyAggregateDwellTimeBetweenDateRangeAverage = v13 / weeksWithNonZeroDwellTime;
      v24[3] = v16 / weeksWithNonZeroDwellTime;
      v24[4] = v19 / weeksWithNonZeroDwellTime;
      v24[5] = v22 / weeksWithNonZeroDwellTime;
    }
  }

  return v9;
}

uint64_t __75__RTLearnedPlaceTypeInferenceStats_initWithWeeklyStats_topMedianDwellTime___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 daysWithNonZeroDwellTime];
  if (result >= 1)
  {
    ++*(*(a1 + 32) + 56);
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(RTLearnedPlaceTypeInferenceStats *)self weeklyStats];
  v5 = [v4 count];
  v6 = [(RTLearnedPlaceTypeInferenceStats *)self totalDailyVisitCount];
  v7 = [(RTLearnedPlaceTypeInferenceStats *)self weeksWithNonZeroDwellTime];
  [(RTLearnedPlaceTypeInferenceStats *)self weeklyAggregateDwellTimeBetweenDateRangeAverage];
  v9 = v8;
  [(RTLearnedPlaceTypeInferenceStats *)self weeklyAggregateDwellTimeBetweenDateRangeStandardDeviation];
  v11 = v10;
  [(RTLearnedPlaceTypeInferenceStats *)self weeklyTotalDailyVisitCountAverage];
  v13 = v12;
  [(RTLearnedPlaceTypeInferenceStats *)self weeklyDaysWithNonZeroDwellTimeAverage];
  v15 = v14;
  [(RTLearnedPlaceTypeInferenceStats *)self topMedianDwellTime];
  v17 = [v3 stringWithFormat:@"weeklyStats, %lu, totalWeeklyVisitCount, %lu, weeksWithNonZeroDwellTime, %lu, weeklyAggregateDwellTimeBetweenDateRangeAverage, %.2f, weeklyAggregateDwellTimeBetweenDateRangeStandardDeviation, %.2f, weeklyTotalDailyVisitCountAverage, %.2f, weeklyDaysWithNonZeroDwellTimeAverage, %.2f, topMedianDwellTime, %.2f", v5, v6, v7, v9, v11, v13, v15, v16];

  return v17;
}

@end