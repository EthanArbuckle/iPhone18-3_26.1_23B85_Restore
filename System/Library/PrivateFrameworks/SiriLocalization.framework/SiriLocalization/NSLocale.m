@interface NSLocale
@end

@implementation NSLocale

void __34__NSLocale_SWAI__isMontaraEnabled__block_invoke()
{
  v0 = MEMORY[0x277CBEB58];
  v3 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en-US"];
  v1 = [v0 setWithObjects:{v3, 0}];
  v2 = isMontaraEnabled_sMontaraEnabledLocales;
  isMontaraEnabled_sMontaraEnabledLocales = v1;
}

@end