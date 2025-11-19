@interface WFNextHourPrecipitationMinute(WeatherAdditions)
- (id)dictionaryRepresentation;
- (uint64_t)initWithDictionary:()WeatherAdditions;
@end

@implementation WFNextHourPrecipitationMinute(WeatherAdditions)

- (uint64_t)initWithDictionary:()WeatherAdditions
{
  v4 = a3;
  v5 = [v4 objectForKey:0x28822C3E8];
  [v5 doubleValue];
  v7 = v6;

  v8 = [v4 objectForKey:0x28822C408];
  [v8 doubleValue];
  v10 = v9;

  v11 = [v4 objectForKey:0x28822C428];
  [v11 doubleValue];
  v13 = v12;

  v14 = [v4 objectForKey:0x28822C448];

  v15 = [v14 unsignedIntegerValue];
  if (v15)
  {
    [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v15];
  }

  else
  {
    [MEMORY[0x277CBEAA8] distantPast];
  }
  v16 = ;
  v17 = [a1 initWithIntensity:v16 chance:v7 perceivedIntensity:v10 date:v13];

  return v17;
}

- (id)dictionaryRepresentation
{
  v15[4] = *MEMORY[0x277D85DE8];
  v14[0] = 0x28822C3E8;
  v2 = MEMORY[0x277CCABB0];
  [a1 intensity];
  v3 = [v2 numberWithDouble:?];
  v15[0] = v3;
  v14[1] = 0x28822C408;
  v4 = MEMORY[0x277CCABB0];
  [a1 chance];
  v5 = [v4 numberWithDouble:?];
  v15[1] = v5;
  v14[2] = 0x28822C428;
  v6 = MEMORY[0x277CCABB0];
  [a1 perceivedIntensity];
  v7 = [v6 numberWithDouble:?];
  v15[2] = v7;
  v14[3] = 0x28822C448;
  v8 = MEMORY[0x277CCABB0];
  v9 = [a1 date];
  [v9 timeIntervalSince1970];
  v10 = [v8 numberWithDouble:?];
  v15[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end