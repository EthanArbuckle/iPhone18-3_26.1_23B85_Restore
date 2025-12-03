@interface CNVCardProdIdString
+ (id)stringForCurrentBuild;
+ (id)stringWithProduct:(id)product version:(id)version language:(id)language;
@end

@implementation CNVCardProdIdString

+ (id)stringForCurrentBuild
{
  v3 = _CFCopySystemVersionDictionary();
  v4 = [v3 objectForKey:*MEMORY[0x277CBEC78]];
  v5 = [v3 objectForKey:*MEMORY[0x277CBEC88]];
  defaultLanguage = [self defaultLanguage];
  v7 = [self stringWithProduct:v4 version:v5 language:defaultLanguage];

  return v7;
}

+ (id)stringWithProduct:(id)product version:(id)version language:(id)language
{
  productCopy = product;
  versionCopy = version;
  languageCopy = language;
  v10 = [MEMORY[0x277CCAB68] stringWithString:@"-//Apple Inc."];
  v11 = *MEMORY[0x277CFBD30];
  if (((*(*MEMORY[0x277CFBD30] + 16))(*MEMORY[0x277CFBD30], productCopy) & 1) == 0)
  {
    [v10 appendFormat:@"//%@", productCopy];
    if (((*(v11 + 16))(v11, versionCopy) & 1) == 0)
    {
      [v10 appendFormat:@" %@", versionCopy];
    }
  }

  if (((*(v11 + 16))(v11, languageCopy) & 1) == 0)
  {
    [v10 appendFormat:@"//%@", languageCopy];
  }

  return v10;
}

@end