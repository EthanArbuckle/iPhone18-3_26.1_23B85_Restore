@interface PLDuetState
- (PLDuetState)init;
- (double)duration;
- (id)description;
@end

@implementation PLDuetState

- (PLDuetState)init
{
  v6.receiver = self;
  v6.super_class = PLDuetState;
  v2 = [(PLDuetState *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    overlappingStates = v2->_overlappingStates;
    v2->_overlappingStates = v3;
  }

  return v2;
}

- (double)duration
{
  v3 = [(PLDuetState *)self startDate];
  if (v3)
  {
    v4 = [(PLDuetState *)self endDate];
    if (v4)
    {
      v5 = [(PLDuetState *)self endDate];
      v6 = [(PLDuetState *)self startDate];
      [v5 timeIntervalSinceDate:v6];
      v8 = v7;
    }

    else
    {
      v8 = 0.0;
    }
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PLDuetState *)self startDate];
  v5 = [(PLDuetState *)self endDate];
  [(PLDuetState *)self cpuSeconds];
  v7 = v6;
  v8 = [(PLDuetState *)self info];
  v9 = [v3 stringWithFormat:@"startDate=%@, endDate=%@, cpuSeconds=%f, info=%@", v4, v5, v7, v8];

  return v9;
}

@end