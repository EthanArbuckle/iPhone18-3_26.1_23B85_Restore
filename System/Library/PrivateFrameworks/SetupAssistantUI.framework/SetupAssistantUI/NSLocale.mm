@interface NSLocale
@end

@implementation NSLocale

id __53__NSLocale_MultilingualFlow__buddySuggestedKeyboards__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CBEAF8];
  v4 = a2;
  v5 = [v3 currentLocale];
  v6 = [v5 countryCode];
  v7 = [v2 buddyLocaleIdentifierFromIdentifier:v4 byAddingRegion:v6];

  v8 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v7];

  return v8;
}

@end