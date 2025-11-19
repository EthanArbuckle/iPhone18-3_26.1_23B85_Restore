@interface NSLocale(SWAI)
- (uint64_t)isMontaraEnabled;
@end

@implementation NSLocale(SWAI)

- (uint64_t)isMontaraEnabled
{
  if (isMontaraEnabled_onceToken != -1)
  {
    dispatch_once(&isMontaraEnabled_onceToken, &__block_literal_global_12);
  }

  v2 = isMontaraEnabled_sMontaraEnabledLocales;

  return [v2 containsObject:a1];
}

@end