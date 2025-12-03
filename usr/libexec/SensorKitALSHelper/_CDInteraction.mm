@interface _CDInteraction
- (id)sr_dateIntervalsInBucketsOf:(double)of duringQueryInterval:(id)interval;
- (id)sr_startDateWithQueryInterval:(id)interval;
@end

@implementation _CDInteraction

- (id)sr_startDateWithQueryInterval:(id)interval
{
  startDate = [(_CDInteraction *)self startDate];
  startDate2 = [interval startDate];

  return [startDate laterDate:startDate2];
}

- (id)sr_dateIntervalsInBucketsOf:(double)of duringQueryInterval:(id)interval
{
  startDate = [(_CDInteraction *)self startDate];
  endDate = [(_CDInteraction *)self endDate];

  return sub_10000CAD8(startDate, endDate, interval, of);
}

@end