@interface HKWorkout(RTExtensions)
- (id)startingLocation;
- (uint64_t)sessionLocation;
- (uint64_t)swimmingLocation;
@end

@implementation HKWorkout(RTExtensions)

- (uint64_t)sessionLocation
{
  metadata = [self metadata];
  v2 = [metadata valueForKey:*MEMORY[0x277CCC4C0]];

  if (v2)
  {
    if ([v2 BOOLValue])
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (uint64_t)swimmingLocation
{
  metadata = [self metadata];
  v2 = [metadata objectForKeyedSubscript:*MEMORY[0x277CCC510]];
  integerValue = [v2 integerValue];

  if (integerValue == 2)
  {
    return 2;
  }

  else
  {
    return integerValue == 1;
  }
}

- (id)startingLocation
{
  metadata = [self metadata];
  v3 = [metadata objectForKeyedSubscript:*MEMORY[0x277CCE1A8]];

  metadata2 = [self metadata];
  v5 = [metadata2 objectForKeyedSubscript:*MEMORY[0x277CCE1B0]];

  if (v3)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v11 = 0;
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277CE41F8]);
    [v3 doubleValue];
    v9 = v8;
    [v5 doubleValue];
    v11 = [v7 initWithLatitude:v9 longitude:v10];
  }

  return v11;
}

@end