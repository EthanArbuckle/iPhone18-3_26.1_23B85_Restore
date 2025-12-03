@interface NSArray(WLKDifference)
- (id)wlk_arrayDifference:()WLKDifference;
@end

@implementation NSArray(WLKDifference)

- (id)wlk_arrayDifference:()WLKDifference
{
  v4 = a3;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT SELF IN %@", v4];
  v7 = [self filteredArrayUsingPredicate:v6];
  if ([v7 count])
  {
    [dictionary setObject:v7 forKeyedSubscript:@"deletions"];
  }

  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT SELF IN %@", self];
  v9 = [v4 filteredArrayUsingPredicate:v8];
  if ([v9 count])
  {
    [dictionary setObject:v9 forKeyedSubscript:@"additions"];
  }

  return dictionary;
}

@end