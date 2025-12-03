@interface WFNextHourPrecipitationCondition(WeatherAdditions)
- (__CFString)stringForType:()WeatherAdditions;
- (id)dictionaryRepresentation;
- (uint64_t)initWithDictionary:()WeatherAdditions;
@end

@implementation WFNextHourPrecipitationCondition(WeatherAdditions)

- (uint64_t)initWithDictionary:()WeatherAdditions
{
  v4 = a3;
  v5 = [v4 objectForKey:0x28822C4E8];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  v7 = [self stringForType:unsignedIntegerValue];
  v8 = [v4 objectForKey:0x28822C3E8];
  [v8 doubleValue];
  v10 = v9;

  v11 = [v4 objectForKey:0x28822C508];
  [v11 doubleValue];
  v13 = v12;

  v14 = [v4 objectForKey:0x28822C528];

  unsignedIntegerValue2 = [v14 unsignedIntegerValue];
  if (unsignedIntegerValue2)
  {
    unsignedIntegerValue2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:unsignedIntegerValue2];
  }

  v16 = [self initWithType:v7 intensity:unsignedIntegerValue2 probability:v10 validUntil:v13];

  return v16;
}

- (__CFString)stringForType:()WeatherAdditions
{
  if ((a3 - 1) > 5)
  {
    return &stru_2882270E8;
  }

  else
  {
    return off_279E68118[a3 - 1];
  }
}

- (id)dictionaryRepresentation
{
  v14[4] = *MEMORY[0x277D85DE8];
  v13[0] = 0x28822C4E8;
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "type")}];
  v14[0] = v2;
  v13[1] = 0x28822C3E8;
  v3 = MEMORY[0x277CCABB0];
  [self intensity];
  v4 = [v3 numberWithDouble:?];
  v14[1] = v4;
  v13[2] = 0x28822C508;
  v5 = MEMORY[0x277CCABB0];
  [self probability];
  v6 = [v5 numberWithDouble:?];
  v14[2] = v6;
  v13[3] = 0x28822C528;
  v7 = MEMORY[0x277CCABB0];
  validUntil = [self validUntil];
  [validUntil timeIntervalSince1970];
  v9 = [v7 numberWithDouble:?];
  v14[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end