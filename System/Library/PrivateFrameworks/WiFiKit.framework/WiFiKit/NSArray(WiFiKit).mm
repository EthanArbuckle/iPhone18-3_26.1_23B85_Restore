@interface NSArray(WiFiKit)
- (__CFString)numberArrayToJsonString;
- (id)_matchingItem:()WiFiKit;
- (id)awdlDiagnosticsResults;
- (id)btDiagnosticsResults;
- (id)congestionDiagnosticsResults;
- (id)displayableHealthRecommendations;
- (id)noInternetDiagnosticsResults;
- (uint64_t)dnsSettings;
- (uint64_t)ipv4Settings;
- (uint64_t)ipv6Settings;
- (uint64_t)proxySettings;
@end

@implementation NSArray(WiFiKit)

- (id)_matchingItem:()WiFiKit
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  selfCopy = self;
  v2 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(selfCopy);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;

          v4 = v8;
        }
      }

      v3 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v4;
}

- (uint64_t)ipv4Settings
{
  v2 = objc_opt_class();

  return [self _matchingItem:v2];
}

- (uint64_t)ipv6Settings
{
  v2 = objc_opt_class();

  return [self _matchingItem:v2];
}

- (uint64_t)dnsSettings
{
  v2 = objc_opt_class();

  return [self _matchingItem:v2];
}

- (uint64_t)proxySettings
{
  v2 = objc_opt_class();

  return [self _matchingItem:v2];
}

- (id)btDiagnosticsResults
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 testID] == 19 || objc_msgSend(v8, "testID") == 18 || objc_msgSend(v8, "testID") == 20)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)awdlDiagnosticsResults
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 testID] == 21 || objc_msgSend(v8, "testID") == 22)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)congestionDiagnosticsResults
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 testID] == 23 || objc_msgSend(v8, "testID") == 24 || objc_msgSend(v8, "testID") == 25 || objc_msgSend(v8, "testID") == 26)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)noInternetDiagnosticsResults
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 testID] == 9 || objc_msgSend(v8, "testID") == 11)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)displayableHealthRecommendations
{
  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"subtitleOnlyIssue == NO"];
  v3 = [self filteredArrayUsingPredicate:v2];

  return v3;
}

- (__CFString)numberArrayToJsonString
{
  v20 = *MEMORY[0x277D85DE8];
  if ([self count])
  {
    array = [MEMORY[0x277CBEB18] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    selfCopy = self;
    v4 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v16;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(selfCopy);
          }

          stringValue = [*(*(&v15 + 1) + 8 * i) stringValue];
          if (stringValue)
          {
            [array addObject:stringValue];
          }
        }

        v5 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v5);
    }

    v14 = 0;
    v9 = [MEMORY[0x277CCAAA0] dataWithJSONObject:array options:0 error:&v14];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];
    }

    else
    {
      v10 = &stru_2882E4AD8;
    }

    v11 = v10;
  }

  else
  {
    v11 = &stru_2882E4AD8;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end