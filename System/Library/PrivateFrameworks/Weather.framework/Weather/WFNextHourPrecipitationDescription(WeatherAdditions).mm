@interface WFNextHourPrecipitationDescription(WeatherAdditions)
- (id)dictionaryRepresentation;
- (uint64_t)initWithDictionary:()WeatherAdditions;
@end

@implementation WFNextHourPrecipitationDescription(WeatherAdditions)

- (uint64_t)initWithDictionary:()WeatherAdditions
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKey:0x28822C468];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  if (unsignedIntegerValue)
  {
    v22 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:unsignedIntegerValue];
  }

  else
  {
    v22 = 0;
  }

  v21 = [v3 objectForKey:0x28822C488];
  v20 = [v3 objectForKey:0x28822C4A8];
  v6 = [v3 objectForKey:0x28822C4C8];
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [v8 objectForKey:v13];
        unsignedIntegerValue2 = [v14 unsignedIntegerValue];

        if (unsignedIntegerValue2)
        {
          [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:unsignedIntegerValue2];
        }

        else
        {
          [MEMORY[0x277CBEAA8] distantPast];
        }
        v16 = ;
        [v7 setObject:v16 forKey:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  v17 = [self initWithShortTemplate:v21 longTemplate:v20 parameters:v7 validUntil:v22];
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)dictionaryRepresentation
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  parameters = [self parameters];
  v4 = [parameters countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(parameters);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        parameters2 = [self parameters];
        v10 = [parameters2 objectForKey:v8];

        v11 = MEMORY[0x277CCABB0];
        [v10 timeIntervalSince1970];
        v12 = [v11 numberWithDouble:?];
        [v2 setObject:v12 forKey:v8];
      }

      v5 = [parameters countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v5);
  }

  v27[0] = 0x28822C488;
  shortTemplate = [self shortTemplate];
  v27[1] = 0x28822C4A8;
  v28[0] = shortTemplate;
  longTemplate = [self longTemplate];
  v28[1] = longTemplate;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
  v16 = [v15 mutableCopy];

  validUntil = [self validUntil];

  if (validUntil)
  {
    v18 = MEMORY[0x277CCABB0];
    validUntil2 = [self validUntil];
    [validUntil2 timeIntervalSince1970];
    v20 = [v18 numberWithDouble:?];
    [v16 setObject:v20 forKey:0x28822C468];
  }

  if ([v2 count])
  {
    [v16 setObject:v2 forKey:0x28822C4C8];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v16;
}

@end