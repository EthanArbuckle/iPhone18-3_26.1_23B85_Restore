@interface PLCoreDuetEventInterval
- (BOOL)intersects:(id)a3;
- (id)description;
- (id)joinWithInterval:(id)a3;
@end

@implementation PLCoreDuetEventInterval

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PLCoreDuetEventInterval *)self startDate];
  [v4 timeIntervalSince1970];
  v6 = v5;
  v7 = [(PLCoreDuetEventInterval *)self endDate];
  [v7 timeIntervalSince1970];
  v9 = [v3 stringWithFormat:@"(%f, %f)", v6, v8];

  return v9;
}

- (BOOL)intersects:(id)a3
{
  v4 = a3;
  v5 = [(PLCoreDuetEventInterval *)self startDate];
  v6 = [v4 endDate];
  [v5 timeIntervalSinceDate:v6];
  if (v7 >= 5.0)
  {
    v11 = 0;
  }

  else
  {
    v8 = [v4 startDate];
    v9 = [(PLCoreDuetEventInterval *)self endDate];
    [v8 timeIntervalSinceDate:v9];
    v11 = v10 < 5.0;
  }

  return v11;
}

- (id)joinWithInterval:(id)a3
{
  v4 = a3;
  if ([(PLCoreDuetEventInterval *)self intersects:v4])
  {
    v5 = objc_opt_new();
    v6 = [(PLCoreDuetEventInterval *)self startDate];
    v7 = [v4 startDate];
    v8 = [v6 earlierDate:v7];
    [v5 setStartDate:v8];

    v9 = [(PLCoreDuetEventInterval *)self endDate];
    v10 = [v4 endDate];
    v11 = [v9 laterDate:v10];
    [v5 setEndDate:v11];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end