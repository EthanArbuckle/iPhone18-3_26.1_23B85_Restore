@interface TVPDateRange
- (BOOL)containsDate:(id)a3;
- (BOOL)isEqual:(id)a3;
- (TVPDateRange)initWithStartDate:(id)a3 duration:(double)a4;
- (id)dateRangeByIntersectingDateRange:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation TVPDateRange

- (TVPDateRange)initWithStartDate:(id)a3 duration:(double)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = TVPDateRange;
  v8 = [(TVPDateRange *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_startDate, a3);
    v9->_durationInSeconds = a4;
    v10 = [v7 dateByAddingTimeInterval:a4];
    endDate = v9->_endDate;
    v9->_endDate = v10;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(TVPDateRange *)self startDate];
    v7 = [v5 startDate];
    if ([v6 isEqualToDate:v7])
    {
      v8 = [(TVPDateRange *)self endDate];
      v9 = [v5 endDate];
      v10 = [v8 isEqualToDate:v9];
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
  v3 = [(TVPDateRange *)self startDate];
  v4 = [v3 hash];
  v5 = [(TVPDateRange *)self endDate];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(TVPDateRange *)self startDate];
  v5 = [(TVPDateRange *)self endDate];
  [(TVPDateRange *)self durationInSeconds];
  v7 = [v3 stringWithFormat:@"Start date: %@ End Date:%@ Duration: %f ", v4, v5, v6];

  return v7;
}

- (id)dateRangeByIntersectingDateRange:(id)a3
{
  v4 = a3;
  v5 = [(TVPDateRange *)self startDate];
  v6 = [v4 startDate];
  [v5 timeIntervalSinceReferenceDate];
  v8 = v7;
  [(TVPDateRange *)self durationInSeconds];
  v10 = v8 + v9;
  [v6 timeIntervalSinceReferenceDate];
  v12 = v11;
  [v4 durationInSeconds];
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
  v18 = v5;
  if (v17 || (v8 <= v12 ? (v19 = v12 < v10) : (v19 = 0), v8 = v12, v18 = v6, v19))
  {
    v20 = [[TVPDateRange alloc] initWithStartDate:v18 duration:v16 - v8];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)containsDate:(id)a3
{
  v4 = a3;
  v5 = [(TVPDateRange *)self startDate];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;

  [(TVPDateRange *)self durationInSeconds];
  v9 = v7 + v8;
  [v4 timeIntervalSinceReferenceDate];
  v11 = v10;

  return v11 <= v9 && v11 >= v7;
}

@end