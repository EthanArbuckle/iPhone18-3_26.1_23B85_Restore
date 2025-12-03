@interface PGCountrySize
+ (BOOL)isLargeCountry:(id)country;
@end

@implementation PGCountrySize

+ (BOOL)isLargeCountry:(id)country
{
  v3 = isLargeCountry__onceToken;
  countryCopy = country;
  if (v3 != -1)
  {
    dispatch_once(&isLargeCountry__onceToken, &__block_literal_global_29417);
  }

  v5 = [isLargeCountry__largeCountries containsObject:countryCopy];

  return v5;
}

void __32__PGCountrySize_isLargeCountry___block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"US", @"CA", @"GB", 0}];
  v1 = isLargeCountry__largeCountries;
  isLargeCountry__largeCountries = v0;
}

@end