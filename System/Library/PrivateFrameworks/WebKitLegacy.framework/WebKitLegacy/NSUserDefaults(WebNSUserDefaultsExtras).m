@interface NSUserDefaults(WebNSUserDefaultsExtras)
+ (id)_webkit_preferredLanguageCode;
@end

@implementation NSUserDefaults(WebNSUserDefaultsExtras)

+ (id)_webkit_preferredLanguageCode
{
  WTF::defaultLanguage();
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v7);
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v0);
    }
  }

  else
  {
    v7 = &stru_1F472E7E8;
    v5 = &stru_1F472E7E8;
  }

  v1 = v7;
  v7 = 0;
  if (v1)
  {
    v2 = v1;
    v3 = v7;
    v7 = 0;
    if (v3)
    {
    }
  }

  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v0);
  }

  return v1;
}

@end