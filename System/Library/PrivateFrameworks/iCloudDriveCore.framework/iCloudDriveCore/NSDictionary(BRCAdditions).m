@interface NSDictionary(BRCAdditions)
- (id)brc_uniqueValues;
- (uint64_t)brc_BOOLeanValueForKey:()BRCAdditions;
@end

@implementation NSDictionary(BRCAdditions)

- (uint64_t)brc_BOOLeanValueForKey:()BRCAdditions
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)brc_uniqueValues
{
  v1 = MEMORY[0x277CBEB98];
  v2 = [a1 allValues];
  v3 = [v1 setWithArray:v2];

  return v3;
}

@end