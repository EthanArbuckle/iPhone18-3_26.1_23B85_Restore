@interface RTLearnedPlaceTypeInferenceDailyStats
- (RTLearnedPlaceTypeInferenceDailyStats)initWithStart:(id)start end:(id)end visitCount:(unint64_t)count aggregateDwellTimeBetweenDateRange:(double)range;
- (id)description;
@end

@implementation RTLearnedPlaceTypeInferenceDailyStats

- (RTLearnedPlaceTypeInferenceDailyStats)initWithStart:(id)start end:(id)end visitCount:(unint64_t)count aggregateDwellTimeBetweenDateRange:(double)range
{
  startCopy = start;
  endCopy = end;
  v16.receiver = self;
  v16.super_class = RTLearnedPlaceTypeInferenceDailyStats;
  v13 = [(RTLearnedPlaceTypeInferenceDailyStats *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_start, start);
    objc_storeStrong(&v14->_end, end);
    v14->_visitCount = count;
    v14->_aggregateDwellTimeBetweenDateRange = range;
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  stringFromDate = [(NSDate *)self->_start stringFromDate];
  stringFromDate2 = [(NSDate *)self->_end stringFromDate];
  v6 = [v3 stringWithFormat:@"start, %@, end, %@, visitCount, %lu, aggregateDwellTimeBetweenDateRange, %.2f", stringFromDate, stringFromDate2, self->_visitCount, *&self->_aggregateDwellTimeBetweenDateRange];

  return v6;
}

@end