@interface NSDictionary(BRCAdditions)
- (id)brc_uniqueValues;
- (uint64_t)brc_BOOLeanValueForKey:()BRCAdditions;
@end

@implementation NSDictionary(BRCAdditions)

- (uint64_t)brc_BOOLeanValueForKey:()BRCAdditions
{
  v1 = [self objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)brc_uniqueValues
{
  v1 = MEMORY[0x277CBEB98];
  allValues = [self allValues];
  v3 = [v1 setWithArray:allValues];

  return v3;
}

@end