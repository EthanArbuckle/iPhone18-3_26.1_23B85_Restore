@interface TSWPDataDetectors
+ (id)calculateScanRanges:(id)a3 changedRange:(_NSRange)a4;
+ (id)scanString:(id)a3 scanRanges:(id)a4;
+ (void)registerDataDetectorClass:(Class)a3;
@end

@implementation TSWPDataDetectors

+ (void)registerDataDetectorClass:(Class)a3
{
  if (class_conformsToProtocol(a3, &unk_287E62C40))
  {
    v4 = gRegisteredDataDetectors;
    if (!gRegisteredDataDetectors)
    {
      v4 = [MEMORY[0x277CBEB18] array];
      gRegisteredDataDetectors = v4;
    }

    [v4 addObject:a3];
  }
}

+ (id)calculateScanRanges:(id)a3 changedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v22 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = gRegisteredDataDetectors;
  v8 = [gRegisteredDataDetectors countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 calculateScanRangeForString:a3 changedRange:{location, length}];
        [v7 setObject:objc_msgSend(MEMORY[0x277CCAE60] forKeyedSubscript:{"valueWithRange:", v13, v14), objc_msgSend(v12, "detectorIdentifier")}];
      }

      v9 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  return v7;
}

+ (id)scanString:(id)a3 scanRanges:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = gRegisteredDataDetectors;
  v8 = [gRegisteredDataDetectors countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [objc_msgSend(a4 objectForKeyedSubscript:{objc_msgSend(v12, "detectorIdentifier")), "rangeValue"}];
        if (v13 != 0x7FFFFFFFFFFFFFFFLL && v14 != 0)
        {
          v16 = [v12 scanString:a3 scanRange:{v13, v14}];
          if (v16)
          {
            [v6 addObjectsFromArray:v16];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  return v6;
}

@end