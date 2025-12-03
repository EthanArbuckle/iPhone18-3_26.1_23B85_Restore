@interface TVPDateRange
- (BOOL)containsDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (TVPDateRange)initWithStartDate:(id)date duration:(double)duration;
- (id)dateRangeByIntersectingDateRange:(id)range;
- (id)description;
- (unint64_t)hash;
@end

@implementation TVPDateRange

- (TVPDateRange)initWithStartDate:(id)date duration:(double)duration
{
  dateCopy = date;
  v13.receiver = self;
  v13.super_class = TVPDateRange;
  v8 = [(TVPDateRange *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_startDate, date);
    v9->_durationInSeconds = duration;
    v10 = [dateCopy dateByAddingTimeInterval:duration];
    endDate = v9->_endDate;
    v9->_endDate = v10;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    startDate = [(TVPDateRange *)self startDate];
    startDate2 = [v5 startDate];
    if ([startDate isEqualToDate:startDate2])
    {
      endDate = [(TVPDateRange *)self endDate];
      endDate2 = [v5 endDate];
      v10 = [endDate isEqualToDate:endDate2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  startDate = [(TVPDateRange *)self startDate];
  v4 = [startDate hash];
  endDate = [(TVPDateRange *)self endDate];
  v6 = [endDate hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  startDate = [(TVPDateRange *)self startDate];
  endDate = [(TVPDateRange *)self endDate];
  [(TVPDateRange *)self durationInSeconds];
  v7 = [v3 stringWithFormat:@"Start date: %@ End Date:%@ Duration: %f ", startDate, endDate, v6];

  return v7;
}

- (id)dateRangeByIntersectingDateRange:(id)range
{
  rangeCopy = range;
  startDate = [(TVPDateRange *)self startDate];
  startDate2 = [rangeCopy startDate];
  [startDate timeIntervalSinceReferenceDate];
  v8 = v7;
  [(TVPDateRange *)self durationInSeconds];
  v10 = v8 + v9;
  [startDate2 timeIntervalSinceReferenceDate];
  v12 = v11;
  [rangeCopy durationInSeconds];
  v14 = v13;

  v15 = v12 + v14;
  if (v10 >= v12 + v14)
  {
    v16 = v12 + v14;
  }

  else
  {
    v16 = v10;
  }

  v17 = v12 <= v8 && v8 < v15;
  v18 = startDate;
  if (v17 || (v8 <= v12 ? (v19 = v12 < v10) : (v19 = 0), v8 = v12, v18 = startDate2, v19))
  {
    v20 = [[TVPDateRange alloc] initWithStartDate:v18 duration:v16 - v8];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)containsDate:(id)date
{
  dateCopy = date;
  startDate = [(TVPDateRange *)self startDate];
  [startDate timeIntervalSinceReferenceDate];
  v7 = v6;

  [(TVPDateRange *)self durationInSeconds];
  v9 = v7 + v8;
  [dateCopy timeIntervalSinceReferenceDate];
  v11 = v10;

  return v11 <= v9 && v11 >= v7;
}

@end