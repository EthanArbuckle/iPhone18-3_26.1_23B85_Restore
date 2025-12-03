@interface CMMotionActivity(RTMotionActivity)
- (id)description;
- (uint64_t)rtMotionActivityType;
- (unint64_t)rtMotionActivityConfidence;
@end

@implementation CMMotionActivity(RTMotionActivity)

- (id)description
{
  array = [MEMORY[0x277CBEB18] array];
  if ([self cycling])
  {
    [array addObject:@"cycling"];
  }

  if ([self automotive])
  {
    [array addObject:@"automotive"];
  }

  if ([self running])
  {
    [array addObject:@"running"];
  }

  if ([self walking])
  {
    [array addObject:@"walking"];
  }

  if ([self stationary])
  {
    [array addObject:@"stationary"];
  }

  if ([self unknown])
  {
    [array addObject:@"unknown"];
  }

  if (![array count])
  {
    [array addObject:@"moving"];
  }

  v3 = MEMORY[0x277CCACA8];
  v4 = [array componentsJoinedByString:{@", "}];
  confidence = [self confidence];
  startDate = [self startDate];
  stringFromDate = [startDate stringFromDate];
  v8 = [v3 stringWithFormat:@"type, <%@>, confidence %ld, startDate, %@", v4, confidence, stringFromDate];

  return v8;
}

- (uint64_t)rtMotionActivityType
{
  if ([self cycling])
  {
    return 5;
  }

  if ([self automotive])
  {
    return 4;
  }

  if ([self running])
  {
    return 3;
  }

  if ([self walking])
  {
    return 2;
  }

  if ([self stationary])
  {
    return 1;
  }

  if ([self unknown])
  {
    return 0;
  }

  return 6;
}

- (unint64_t)rtMotionActivityConfidence
{
  confidence = [self confidence];
  if (confidence < 3)
  {
    return confidence + 1;
  }

  else
  {
    return 0;
  }
}

@end