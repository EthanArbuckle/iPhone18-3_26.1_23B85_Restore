@interface NSLocale(SCRCLocaleExtras)
- (uint64_t)usesRomanTextProcessing;
@end

@implementation NSLocale(SCRCLocaleExtras)

- (uint64_t)usesRomanTextProcessing
{
  v1 = [a1 objectForKey:*MEMORY[0x277CBE6C8]];
  if (v1)
  {
    v2 = [MEMORY[0x277CBEAF8] _nonRomanLanguages];
    v3 = [v2 containsObject:v1] ^ 1;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

@end