@interface NSSet(WiFiKit)
- (id)hiddenNetworkProfiles;
- (id)hs20Networks;
- (id)logStringWithScanRecords;
- (id)scanRecordWithSSID:()WiFiKit;
@end

@implementation NSSet(WiFiKit)

- (id)hs20Networks
{
  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"isHotspot20 == YES"];
  v3 = [a1 filteredSetUsingPredicate:v2];

  return v3;
}

- (id)scanRecordWithSSID:()WiFiKit
{
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"ssid == %@", a3];
  v5 = [a1 filteredSetUsingPredicate:v4];

  if (v5)
  {
    v6 = [v5 anyObject];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)hiddenNetworkProfiles
{
  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"isHidden == YES"];
  v3 = [a1 filteredSetUsingPredicate:v2];

  return v3;
}

- (id)logStringWithScanRecords
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB68] string];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v17 = a1;
  v3 = [a1 allObjects];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          v11 = [v10 ssid];
          if (v11)
          {
            v12 = v11;
          }

          else
          {
            v12 = @"NULL";
          }

          v13 = [v10 channel];

          if (v13)
          {
            v14 = v13;
          }

          else
          {
            v14 = &unk_288304E70;
          }

          [v2 appendFormat:@"%@ (%d)", v12, objc_msgSend(v14, "intValue")];
          if (++v6 < [v17 count])
          {
            [v2 appendString:{@", "}];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v2;
}

@end