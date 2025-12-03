@interface NSString(TSDAdditions)
- (uint64_t)endingCharIndexForWordLimit:()TSDAdditions;
- (uint64_t)tsdWordCount;
@end

@implementation NSString(TSDAdditions)

- (uint64_t)tsdWordCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [self length];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__NSString_TSDAdditions__tsdWordCount__block_invoke;
  v5[3] = &unk_279D48B60;
  v5[4] = &v6;
  [self enumerateSubstringsInRange:0 options:v2 usingBlock:{3, v5}];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (uint64_t)endingCharIndexForWordLimit:()TSDAdditions
{
  v15[1] = *MEMORY[0x277D85DE8];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v6 = [self length];
  MEMORY[0x28223BE20]();
  v8 = (v15 - v7);
  [self getCharacters:v15 - v7 range:{0, v6}];
  if (!v6)
  {
    return 0;
  }

  v9 = 0;
  v10 = -1;
  do
  {
    v11 = *v8++;
    v9 += [whitespaceAndNewlineCharacterSet characterIsMember:v11];
    v12 = v10 + 2;
    ++v10;
  }

  while (v9 < a3 && v12 < v6);
  return v10;
}

@end