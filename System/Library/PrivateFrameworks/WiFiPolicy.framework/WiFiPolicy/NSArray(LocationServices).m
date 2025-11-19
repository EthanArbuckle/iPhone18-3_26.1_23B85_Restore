@interface NSArray(LocationServices)
- (id)networksSortedBySignalStrengthWithMaxCount:()LocationServices;
@end

@implementation NSArray(LocationServices)

- (id)networksSortedBySignalStrengthWithMaxCount:()LocationServices
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  if ([a1 count])
  {
    v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"RSSI" ascending:0];
    v11[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v8 = [a1 sortedArrayUsingDescriptors:v7];

    [v5 addObjectsFromArray:v8];
    if ([v5 count] > a3)
    {
      [v5 removeObjectsInRange:{a3, objc_msgSend(v5, "count") - a3}];
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

@end