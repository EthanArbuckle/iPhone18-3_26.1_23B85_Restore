@interface RadioRecentStationsResponse
- (NSArray)stationDictionaries;
- (NSArray)stationGroups;
- (RadioRecentStationsResponse)initWithResponseDictionary:(id)a3;
@end

@implementation RadioRecentStationsResponse

- (NSArray)stationGroups
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"station-groups"];
  if ([v2 isNSArray])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          if ([v9 isNSDictionary])
          {
            v10 = [[RadioRecentStationsResponseStationGroup alloc] initWithResponseDictionary:v9];
            if (v10)
            {
              if (!v6)
              {
                v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
              }

              [v6 addObject:v10];
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NSArray)stationDictionaries
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"stations"];
  if ([(NSArray *)v2 isNSArray])
  {
    if ([(NSArray *)v2 count])
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (RadioRecentStationsResponse)initWithResponseDictionary:(id)a3
{
  v4 = a3;
  v5 = [(RadioRecentStationsResponse *)self init];
  if (v5)
  {
    v6 = [v4 copy];
    responseDictionary = v5->_responseDictionary;
    v5->_responseDictionary = v6;
  }

  return v5;
}

@end