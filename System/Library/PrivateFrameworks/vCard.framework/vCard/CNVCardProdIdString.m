@interface CNVCardProdIdString
+ (id)stringForCurrentBuild;
+ (id)stringWithProduct:(id)a3 version:(id)a4 language:(id)a5;
@end

@implementation CNVCardProdIdString

+ (id)stringForCurrentBuild
{
  v3 = _CFCopySystemVersionDictionary();
  v4 = [v3 objectForKey:*MEMORY[0x277CBEC78]];
  v5 = [v3 objectForKey:*MEMORY[0x277CBEC88]];
  v6 = [a1 defaultLanguage];
  v7 = [a1 stringWithProduct:v4 version:v5 language:v6];

  return v7;
}

+ (id)stringWithProduct:(id)a3 version:(id)a4 language:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CCAB68] stringWithString:@"-//Apple Inc."];
  v11 = *MEMORY[0x277CFBD30];
  if (((*(*MEMORY[0x277CFBD30] + 16))(*MEMORY[0x277CFBD30], v7) & 1) == 0)
  {
    [v10 appendFormat:@"//%@", v7];
    if (((*(v11 + 16))(v11, v8) & 1) == 0)
    {
      [v10 appendFormat:@" %@", v8];
    }
  }

  if (((*(v11 + 16))(v11, v9) & 1) == 0)
  {
    [v10 appendFormat:@"//%@", v9];
  }

  return v10;
}

@end