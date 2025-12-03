@interface STUsageReportGraphDataPoint
- (NSDate)date;
- (STUsageReportGraphDataPoint)initWithTimePeriod:(unint64_t)period itemType:(unint64_t)type dateInterval:(id)interval total:(id)total totalAsPercentageOfMax:(double)max segments:(id)segments;
- (id)description;
@end

@implementation STUsageReportGraphDataPoint

- (NSDate)date
{
  dateInterval = [(STUsageReportGraphDataPoint *)self dateInterval];
  startDate = [dateInterval startDate];

  return startDate;
}

- (STUsageReportGraphDataPoint)initWithTimePeriod:(unint64_t)period itemType:(unint64_t)type dateInterval:(id)interval total:(id)total totalAsPercentageOfMax:(double)max segments:(id)segments
{
  intervalCopy = interval;
  totalCopy = total;
  segmentsCopy = segments;
  v25.receiver = self;
  v25.super_class = STUsageReportGraphDataPoint;
  v18 = [(STUsageReportGraphDataPoint *)&v25 init];
  v19 = v18;
  if (v18)
  {
    v18->_timePeriod = period;
    v18->_itemType = type;
    objc_storeStrong(&v18->_dateInterval, interval);
    v20 = [totalCopy copy];
    total = v19->_total;
    v19->_total = v20;

    v19->_totalAsPercentageOfMax = max;
    v22 = [segmentsCopy copy];
    segments = v19->_segments;
    v19->_segments = v22;
  }

  return v19;
}

- (id)description
{
  segments = [(STUsageReportGraphDataPoint *)self segments];
  v4 = [segments valueForKey:@"amountAsPercentageOfDataPointTotal"];
  v5 = [v4 componentsJoinedByString:{@", "}];

  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  timePeriod = [(STUsageReportGraphDataPoint *)self timePeriod];
  itemType = [(STUsageReportGraphDataPoint *)self itemType];
  dateInterval = [(STUsageReportGraphDataPoint *)self dateInterval];
  total = [(STUsageReportGraphDataPoint *)self total];
  v12 = [v6 stringWithFormat:@"<%@: %p { timePeriod = %lu, itemType = %lu, dateInterval = %@, total = %@, segments = %@ }>", v7, self, timePeriod, itemType, dateInterval, total, v5];

  return v12;
}

@end