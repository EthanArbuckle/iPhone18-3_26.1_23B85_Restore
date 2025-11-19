@interface RTLearnedPlaceTypeInferenceDailyStats
- (RTLearnedPlaceTypeInferenceDailyStats)initWithStart:(id)a3 end:(id)a4 visitCount:(unint64_t)a5 aggregateDwellTimeBetweenDateRange:(double)a6;
- (id)description;
@end

@implementation RTLearnedPlaceTypeInferenceDailyStats

- (RTLearnedPlaceTypeInferenceDailyStats)initWithStart:(id)a3 end:(id)a4 visitCount:(unint64_t)a5 aggregateDwellTimeBetweenDateRange:(double)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = RTLearnedPlaceTypeInferenceDailyStats;
  v13 = [(RTLearnedPlaceTypeInferenceDailyStats *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_start, a3);
    objc_storeStrong(&v14->_end, a4);
    v14->_visitCount = a5;
    v14->_aggregateDwellTimeBetweenDateRange = a6;
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NSDate *)self->_start stringFromDate];
  v5 = [(NSDate *)self->_end stringFromDate];
  v6 = [v3 stringWithFormat:@"start, %@, end, %@, visitCount, %lu, aggregateDwellTimeBetweenDateRange, %.2f", v4, v5, self->_visitCount, *&self->_aggregateDwellTimeBetweenDateRange];

  return v6;
}

@end