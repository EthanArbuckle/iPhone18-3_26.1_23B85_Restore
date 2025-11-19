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
  v9 = [v8 unsignedIntegerValue];

  if (v9)
  {
    v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v9];
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
  v13 = [v12 unsignedIntegerValue];

  v14 = [a1 initWithIdentifier:v4 areaName:v5 eventDescription:v6 source:v7 expirationDate:v9 URL:v11 importance:v13];
  return v14;
}

- (id)dictionaryRepresentation
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17[0] = 0x28822C548;
  v2 = [a1 identifier];
  v17[1] = 0x28822C5E8;
  v18[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "importance")}];
  v18[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v5 = [v4 mutableCopy];

  v6 = [a1 areaName];
  [v5 na_safeSetObject:v6 forKey:0x28822C568];

  v7 = [a1 eventDescription];
  [v5 na_safeSetObject:v7 forKey:0x28822C588];

  v8 = [a1 source];
  [v5 na_safeSetObject:v8 forKey:0x28822C5A8];

  v9 = [a1 URL];
  v10 = [v9 absoluteString];
  [v5 na_safeSetObject:v10 forKey:0x28822C5C8];

  v11 = [a1 expirationDate];

  if (v11)
  {
    v12 = MEMORY[0x277CCABB0];
    v13 = [a1 expirationDate];
    [v13 timeIntervalSince1970];
    v14 = [v12 numberWithDouble:?];
    [v5 setObject:v14 forKey:0x28822C368];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

@end