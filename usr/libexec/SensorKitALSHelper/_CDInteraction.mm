@interface _CDInteraction
- (id)sr_dateIntervalsInBucketsOf:(double)a3 duringQueryInterval:(id)a4;
- (id)sr_startDateWithQueryInterval:(id)a3;
@end

@implementation _CDInteraction

- (id)sr_startDateWithQueryInterval:(id)a3
{
  v4 = [(_CDInteraction *)self startDate];
  v5 = [a3 startDate];

  return [v4 laterDate:v5];
}

- (id)sr_dateIntervalsInBucketsOf:(double)a3 duringQueryInterval:(id)a4
{
  v7 = [(_CDInteraction *)self startDate];
  v8 = [(_CDInteraction *)self endDate];

  return sub_10000CAD8(v7, v8, a4, a3);
}

@end