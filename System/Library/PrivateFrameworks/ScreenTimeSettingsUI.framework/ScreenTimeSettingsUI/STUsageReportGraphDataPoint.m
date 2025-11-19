@interface STUsageReportGraphDataPoint
- (NSDate)date;
- (STUsageReportGraphDataPoint)initWithTimePeriod:(unint64_t)a3 itemType:(unint64_t)a4 dateInterval:(id)a5 total:(id)a6 totalAsPercentageOfMax:(double)a7 segments:(id)a8;
- (id)description;
@end

@implementation STUsageReportGraphDataPoint

- (NSDate)date
{
  v2 = [(STUsageReportGraphDataPoint *)self dateInterval];
  v3 = [v2 startDate];

  return v3;
}

- (STUsageReportGraphDataPoint)initWithTimePeriod:(unint64_t)a3 itemType:(unint64_t)a4 dateInterval:(id)a5 total:(id)a6 totalAsPercentageOfMax:(double)a7 segments:(id)a8
{
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v25.receiver = self;
  v25.super_class = STUsageReportGraphDataPoint;
  v18 = [(STUsageReportGraphDataPoint *)&v25 init];
  v19 = v18;
  if (v18)
  {
    v18->_timePeriod = a3;
    v18->_itemType = a4;
    objc_storeStrong(&v18->_dateInterval, a5);
    v20 = [v16 copy];
    total = v19->_total;
    v19->_total = v20;

    v19->_totalAsPercentageOfMax = a7;
    v22 = [v17 copy];
    segments = v19->_segments;
    v19->_segments = v22;
  }

  return v19;
}

- (id)description
{
  v3 = [(STUsageReportGraphDataPoint *)self segments];
  v4 = [v3 valueForKey:@"amountAsPercentageOfDataPointTotal"];
  v5 = [v4 componentsJoinedByString:{@", "}];

  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v8 = [(STUsageReportGraphDataPoint *)self timePeriod];
  v9 = [(STUsageReportGraphDataPoint *)self itemType];
  v10 = [(STUsageReportGraphDataPoint *)self dateInterval];
  v11 = [(STUsageReportGraphDataPoint *)self total];
  v12 = [v6 stringWithFormat:@"<%@: %p { timePeriod = %lu, itemType = %lu, dateInterval = %@, total = %@, segments = %@ }>", v7, self, v8, v9, v10, v11, v5];

  return v12;
}

@end