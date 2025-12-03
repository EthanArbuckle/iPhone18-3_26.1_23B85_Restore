@interface NSString(Grapheme)
- (id)graphemeArray;
- (id)graphemeAtIndex:()Grapheme;
- (id)splitGraphemeIntoCharacterArray;
- (uint64_t)graphemeCount;
@end

@implementation NSString(Grapheme)

- (uint64_t)graphemeCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [self length];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__NSString_Grapheme__graphemeCount__block_invoke;
  v5[3] = &unk_279DF4900;
  v5[4] = &v6;
  [self enumerateSubstringsInRange:0 options:v2 usingBlock:{514, v5}];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)graphemeAtIndex:()Grapheme
{
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__2;
  v13 = __Block_byref_object_dispose__2;
  v14 = 0;
  v5 = [self length];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__NSString_Grapheme__graphemeAtIndex___block_invoke;
  v8[3] = &unk_279DF4928;
  v8[5] = &v9;
  v8[6] = a3;
  v8[4] = v15;
  [self enumerateSubstringsInRange:0 options:v5 usingBlock:{2, v8}];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(v15, 8);

  return v6;
}

- (id)splitGraphemeIntoCharacterArray
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(self, "length")}];
  if ([self length])
  {
    v3 = 0;
    do
    {
      v4 = [self characterAtIndex:v3];
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", v4];
      [v2 addObject:v5];

      ++v3;
    }

    while (v3 < [self length]);
  }

  return v2;
}

- (id)graphemeArray
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(self, "graphemeCount")}];
  v3 = [self length];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__NSString_Grapheme__graphemeArray__block_invoke;
  v6[3] = &unk_279DF4950;
  v4 = v2;
  v7 = v4;
  [self enumerateSubstringsInRange:0 options:v3 usingBlock:{2, v6}];

  return v4;
}

@end