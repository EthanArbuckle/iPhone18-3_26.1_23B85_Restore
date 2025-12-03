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
  v3 = [self filteredSetUsingPredicate:v2];

  return v3;
}

- (id)scanRecordWithSSID:()WiFiKit
{
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"ssid == %@", a3];
  v5 = [self filteredSetUsingPredicate:v4];

  if (v5)
  {
    anyObject = [v5 anyObject];
  }

  else
  {
    anyObject = 0;
  }

  return anyObject;
}

- (id)hiddenNetworkProfiles
{
  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"isHidden == YES"];
  v3 = [self filteredSetUsingPredicate:v2];

  return v3;
}

- (id)logStringWithScanRecords
{
  v23 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  selfCopy = self;
  allObjects = [self allObjects];
  v4 = [allObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          ssid = [v10 ssid];
          if (ssid)
          {
            v12 = ssid;
          }

          else
          {
            v12 = @"NULL";
          }

          channel = [v10 channel];

          if (channel)
          {
            v14 = channel;
          }

          else
          {
            v14 = &unk_288304E70;
          }

          [string appendFormat:@"%@ (%d)", v12, objc_msgSend(v14, "intValue")];
          if (++v6 < [selfCopy count])
          {
            [string appendString:{@", "}];
          }
        }
      }

      v5 = [allObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v15 = *MEMORY[0x277D85DE8];

  return string;
}

@end