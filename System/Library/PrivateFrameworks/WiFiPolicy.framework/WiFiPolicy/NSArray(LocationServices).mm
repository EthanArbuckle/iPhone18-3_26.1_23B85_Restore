@interface NSArray(LocationServices)
- (id)networksSortedBySignalStrengthWithMaxCount:()LocationServices;
@end

@implementation NSArray(LocationServices)

- (id)networksSortedBySignalStrengthWithMaxCount:()LocationServices
{
  v11[1] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  if ([self count])
  {
    v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"RSSI" ascending:0];
    v11[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v8 = [self sortedArrayUsingDescriptors:v7];

    [array addObjectsFromArray:v8];
    if ([array count] > a3)
    {
      [array removeObjectsInRange:{a3, objc_msgSend(array, "count") - a3}];
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return array;
}

@end