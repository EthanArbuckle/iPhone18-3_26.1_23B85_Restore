@interface AVMediaSelection(TVPAdditions)
- (id)tvp_description;
@end

@implementation AVMediaSelection(TVPAdditions)

- (id)tvp_description
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [a1 asset];
  v21 = 0;
  v3 = [v2 statusOfValueForKey:@"availableMediaCharacteristicsWithMediaSelectionOptions" error:&v21];
  v4 = v21;
  if (v3 == 2 || v3 == 3 && [MEMORY[0x277CE63D8] tvp_shouldIgnoreLoadFailureForKey:@"availableMediaCharacteristicsWithMediaSelectionOptions" error:v4 logObject:0])
  {
    v15 = v4;
    v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = [v2 availableMediaCharacteristicsWithMediaSelectionOptions];
    v6 = [obj countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [v2 tvp_mediaSelectionGroupForMediaCharacteristic:v10];
          v12 = [a1 selectedMediaOptionInMediaSelectionGroup:v11];
          [v5 appendFormat:@"%@: %@ ", v10, v12];
        }

        v7 = [obj countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v7);
    }

    v4 = v15;
  }

  else
  {
    v5 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

@end