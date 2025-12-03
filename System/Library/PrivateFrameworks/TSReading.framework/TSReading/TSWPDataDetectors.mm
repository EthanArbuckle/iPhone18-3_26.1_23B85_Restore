@interface TSWPDataDetectors
+ (id)calculateScanRanges:(id)ranges changedRange:(_NSRange)range;
+ (id)scanString:(id)string scanRanges:(id)ranges;
+ (void)registerDataDetectorClass:(Class)class;
@end

@implementation TSWPDataDetectors

+ (void)registerDataDetectorClass:(Class)class
{
  if (class_conformsToProtocol(class, &unk_287E62C40))
  {
    array = gRegisteredDataDetectors;
    if (!gRegisteredDataDetectors)
    {
      array = [MEMORY[0x277CBEB18] array];
      gRegisteredDataDetectors = array;
    }

    [array addObject:class];
  }
}

+ (id)calculateScanRanges:(id)ranges changedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v22 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
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
        v13 = [v12 calculateScanRangeForString:ranges changedRange:{location, length}];
        [dictionary setObject:objc_msgSend(MEMORY[0x277CCAE60] forKeyedSubscript:{"valueWithRange:", v13, v14), objc_msgSend(v12, "detectorIdentifier")}];
      }

      v9 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  return dictionary;
}

+ (id)scanString:(id)string scanRanges:(id)ranges
{
  v23 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
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
        v13 = [objc_msgSend(ranges objectForKeyedSubscript:{objc_msgSend(v12, "detectorIdentifier")), "rangeValue"}];
        if (v13 != 0x7FFFFFFFFFFFFFFFLL && v14 != 0)
        {
          v16 = [v12 scanString:string scanRange:{v13, v14}];
          if (v16)
          {
            [array addObjectsFromArray:v16];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  return array;
}

@end