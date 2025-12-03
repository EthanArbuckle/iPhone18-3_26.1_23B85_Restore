@interface RPCompanionLinkClient(DeviceFiltration)
- (id)sl_phoneAndPadDevices;
@end

@implementation RPCompanionLinkClient(DeviceFiltration)

- (id)sl_phoneAndPadDevices
{
  v20 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [self activeDevices];
  v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        model = [v7 model];
        if ([model rangeOfString:@"iPad"] != 0x7FFFFFFFFFFFFFFFLL)
        {

LABEL_10:
          [array addObject:v7];
          continue;
        }

        model2 = [v7 model];
        v10 = [model2 rangeOfString:@"iPhone"];

        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_10;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v11 = [array copy];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end