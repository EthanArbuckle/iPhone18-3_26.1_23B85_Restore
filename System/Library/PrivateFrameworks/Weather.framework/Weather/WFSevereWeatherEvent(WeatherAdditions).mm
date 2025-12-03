@interface WFSevereWeatherEvent(WeatherAdditions)
- (id)dictionaryRepresentation;
- (uint64_t)initWithDictionary:()WeatherAdditions;
@end

@implementation WFSevereWeatherEvent(WeatherAdditions)

- (uint64_t)initWithDictionary:()WeatherAdditions
{
  v3 = a3;
  v4 = [v3 objectForKey:0x28822C548];
  v5 = [v3 objectForKey:0x28822C568];
  v6 = [v3 objectForKey:0x28822C588];
  v7 = [v3 objectForKey:0x28822C5A8];
  v8 = [v3 objectForKey:0x28822C368];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  if (unsignedIntegerValue)
  {
    unsignedIntegerValue = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:unsignedIntegerValue];
  }

  v10 = [v3 objectForKey:0x28822C5C8];
  if (v10)
  {
    v11 = [MEMORY[0x277CBEBC0] URLWithString:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v3 objectForKey:0x28822C5E8];
  unsignedIntegerValue2 = [v12 unsignedIntegerValue];

  v14 = [self initWithIdentifier:v4 areaName:v5 eventDescription:v6 source:v7 expirationDate:unsignedIntegerValue URL:v11 importance:unsignedIntegerValue2];
  return v14;
}

- (id)dictionaryRepresentation
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17[0] = 0x28822C548;
  identifier = [self identifier];
  v17[1] = 0x28822C5E8;
  v18[0] = identifier;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "importance")}];
  v18[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v5 = [v4 mutableCopy];

  areaName = [self areaName];
  [v5 na_safeSetObject:areaName forKey:0x28822C568];

  eventDescription = [self eventDescription];
  [v5 na_safeSetObject:eventDescription forKey:0x28822C588];

  source = [self source];
  [v5 na_safeSetObject:source forKey:0x28822C5A8];

  v9 = [self URL];
  absoluteString = [v9 absoluteString];
  [v5 na_safeSetObject:absoluteString forKey:0x28822C5C8];

  expirationDate = [self expirationDate];

  if (expirationDate)
  {
    v12 = MEMORY[0x277CCABB0];
    expirationDate2 = [self expirationDate];
    [expirationDate2 timeIntervalSince1970];
    v14 = [v12 numberWithDouble:?];
    [v5 setObject:v14 forKey:0x28822C368];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

@end