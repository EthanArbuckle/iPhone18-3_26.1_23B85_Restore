@interface HKWorkout(RTExtensions)
- (id)startingLocation;
- (uint64_t)sessionLocation;
- (uint64_t)swimmingLocation;
@end

@implementation HKWorkout(RTExtensions)

- (uint64_t)sessionLocation
{
  v1 = [a1 metadata];
  v2 = [v1 valueForKey:*MEMORY[0x277CCC4C0]];

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
  v1 = [a1 metadata];
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x277CCC510]];
  v3 = [v2 integerValue];

  if (v3 == 2)
  {
    return 2;
  }

  else
  {
    return v3 == 1;
  }
}

- (id)startingLocation
{
  v2 = [a1 metadata];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CCE1A8]];

  v4 = [a1 metadata];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCE1B0]];

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