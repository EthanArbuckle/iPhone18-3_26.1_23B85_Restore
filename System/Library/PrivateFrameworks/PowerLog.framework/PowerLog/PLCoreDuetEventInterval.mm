@interface PLCoreDuetEventInterval
- (BOOL)intersects:(id)intersects;
- (id)description;
- (id)joinWithInterval:(id)interval;
@end

@implementation PLCoreDuetEventInterval

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  startDate = [(PLCoreDuetEventInterval *)self startDate];
  [startDate timeIntervalSince1970];
  v6 = v5;
  endDate = [(PLCoreDuetEventInterval *)self endDate];
  [endDate timeIntervalSince1970];
  v9 = [v3 stringWithFormat:@"(%f, %f)", v6, v8];

  return v9;
}

- (BOOL)intersects:(id)intersects
{
  intersectsCopy = intersects;
  startDate = [(PLCoreDuetEventInterval *)self startDate];
  endDate = [intersectsCopy endDate];
  [startDate timeIntervalSinceDate:endDate];
  if (v7 >= 5.0)
  {
    v11 = 0;
  }

  else
  {
    startDate2 = [intersectsCopy startDate];
    endDate2 = [(PLCoreDuetEventInterval *)self endDate];
    [startDate2 timeIntervalSinceDate:endDate2];
    v11 = v10 < 5.0;
  }

  return v11;
}

- (id)joinWithInterval:(id)interval
{
  intervalCopy = interval;
  if ([(PLCoreDuetEventInterval *)self intersects:intervalCopy])
  {
    v5 = objc_opt_new();
    startDate = [(PLCoreDuetEventInterval *)self startDate];
    startDate2 = [intervalCopy startDate];
    v8 = [startDate earlierDate:startDate2];
    [v5 setStartDate:v8];

    endDate = [(PLCoreDuetEventInterval *)self endDate];
    endDate2 = [intervalCopy endDate];
    v11 = [endDate laterDate:endDate2];
    [v5 setEndDate:v11];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end