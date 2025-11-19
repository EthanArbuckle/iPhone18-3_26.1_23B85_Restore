@interface CMMotionActivity(RTMotionActivity)
- (id)description;
- (uint64_t)rtMotionActivityType;
- (unint64_t)rtMotionActivityConfidence;
@end

@implementation CMMotionActivity(RTMotionActivity)

- (id)description
{
  v2 = [MEMORY[0x277CBEB18] array];
  if ([a1 cycling])
  {
    [v2 addObject:@"cycling"];
  }

  if ([a1 automotive])
  {
    [v2 addObject:@"automotive"];
  }

  if ([a1 running])
  {
    [v2 addObject:@"running"];
  }

  if ([a1 walking])
  {
    [v2 addObject:@"walking"];
  }

  if ([a1 stationary])
  {
    [v2 addObject:@"stationary"];
  }

  if ([a1 unknown])
  {
    [v2 addObject:@"unknown"];
  }

  if (![v2 count])
  {
    [v2 addObject:@"moving"];
  }

  v3 = MEMORY[0x277CCACA8];
  v4 = [v2 componentsJoinedByString:{@", "}];
  v5 = [a1 confidence];
  v6 = [a1 startDate];
  v7 = [v6 stringFromDate];
  v8 = [v3 stringWithFormat:@"type, <%@>, confidence %ld, startDate, %@", v4, v5, v7];

  return v8;
}

- (uint64_t)rtMotionActivityType
{
  if ([a1 cycling])
  {
    return 5;
  }

  if ([a1 automotive])
  {
    return 4;
  }

  if ([a1 running])
  {
    return 3;
  }

  if ([a1 walking])
  {
    return 2;
  }

  if ([a1 stationary])
  {
    return 1;
  }

  if ([a1 unknown])
  {
    return 0;
  }

  return 6;
}

- (unint64_t)rtMotionActivityConfidence
{
  v1 = [a1 confidence];
  if (v1 < 3)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

@end