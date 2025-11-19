@interface SharedCacheDictionary
@end

@implementation SharedCacheDictionary

void ___SharedCacheDictionary_block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _SharedCacheValuesChangedHandler, @"com.apple.passkit.sharedcachechanged", 0, 0);
}

void ___SharedCacheDictionary_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E695DF90] dictionaryWithContentsOfURL:a2];
  v5 = v2;
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
  }

  v4 = qword_1ED6D1668;
  qword_1ED6D1668 = v3;
}

@end