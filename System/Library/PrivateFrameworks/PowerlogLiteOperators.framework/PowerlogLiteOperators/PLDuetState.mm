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
    array = [MEMORY[0x277CBEB18] array];
    overlappingStates = v2->_overlappingStates;
    v2->_overlappingStates = array;
  }

  return v2;
}

- (double)duration
{
  startDate = [(PLDuetState *)self startDate];
  if (startDate)
  {
    endDate = [(PLDuetState *)self endDate];
    if (endDate)
    {
      endDate2 = [(PLDuetState *)self endDate];
      startDate2 = [(PLDuetState *)self startDate];
      [endDate2 timeIntervalSinceDate:startDate2];
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
  startDate = [(PLDuetState *)self startDate];
  endDate = [(PLDuetState *)self endDate];
  [(PLDuetState *)self cpuSeconds];
  v7 = v6;
  info = [(PLDuetState *)self info];
  v9 = [v3 stringWithFormat:@"startDate=%@, endDate=%@, cpuSeconds=%f, info=%@", startDate, endDate, v7, info];

  return v9;
}

@end