@interface NSBundle
@end

@implementation NSBundle

uint64_t __62__NSBundle_SCRCBundleExtras__preferredLocalizationsForLocale___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = preferredLocalizationsForLocale__preferredLocMap;
  preferredLocalizationsForLocale__preferredLocMap = v0;

  preferredLocalizationsForLocale__preferredLocQueue = dispatch_queue_create("com.apple.accessibility.VoiceOver.preferredLocalizationsQueue", 0);

  return MEMORY[0x2821F96F8]();
}

void __62__NSBundle_SCRCBundleExtras__preferredLocalizationsForLocale___block_invoke_19(uint64_t a1)
{
  v2 = [preferredLocalizationsForLocale__preferredLocMap objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v9 = [MEMORY[0x277CBEAF8] availableLocaleIdentifiers];
    v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{*(a1 + 32), 0}];
    v6 = [MEMORY[0x277CCA8D8] preferredLocalizationsFromArray:v9 forPreferences:v5];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    if (*(*(*(a1 + 40) + 8) + 40) && *(a1 + 32))
    {
      [preferredLocalizationsForLocale__preferredLocMap setObject:? forKey:?];
    }
  }
}

@end