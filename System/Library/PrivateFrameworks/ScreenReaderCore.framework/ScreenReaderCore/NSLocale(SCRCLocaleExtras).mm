@interface NSLocale(SCRCLocaleExtras)
- (uint64_t)usesRomanTextProcessing;
@end

@implementation NSLocale(SCRCLocaleExtras)

- (uint64_t)usesRomanTextProcessing
{
  v1 = [self objectForKey:*MEMORY[0x277CBE6C8]];
  if (v1)
  {
    _nonRomanLanguages = [MEMORY[0x277CBEAF8] _nonRomanLanguages];
    v3 = [_nonRomanLanguages containsObject:v1] ^ 1;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

@end