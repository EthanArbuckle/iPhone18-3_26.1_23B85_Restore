@interface LTDLanguageAssetCache
@end

@implementation LTDLanguageAssetCache

uint64_t __32___LTDLanguageAssetCache_shared__block_invoke()
{
  shared__cache = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

BOOL __46___LTDLanguageAssetCache_assetsFilteredUsing___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 ltIdentifier];
  if ([v4 containsObject:v5])
  {
    v6 = [v3 progress];
    v7 = [v6 offlineState] == 2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __46___LTDLanguageAssetCache_assetsFilteredUsing___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 ltIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

id __44___LTDLanguageAssetCache_multicastObservers__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 locale];
  v5 = [v2 objectForKeyedSubscript:v4];

  v6 = objc_alloc(MEMORY[0x277CE1B28]);
  v7 = [v3 locale];
  v8 = [v3 progress];
  [v8 fractionCompleted];
  v10 = v9;
  v11 = [v3 progress];
  v12 = [v11 totalUnitCount];
  v13 = [v3 state];

  v14 = [v6 initWithLocale:v7 progress:v12 downloadSize:v13 status:objc_msgSend(v5 rank:{"integerValue"), v10}];

  return v14;
}

id __44___LTDLanguageAssetCache_multicastObservers__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = a2;
  v4 = [v3 locale];
  v5 = [v2 objectForKeyedSubscript:v4];

  v6 = objc_alloc(MEMORY[0x277CE1B28]);
  v7 = [v3 locale];
  v8 = [v3 status];

  v9 = [v6 initWithLocale:v7 progress:0 downloadSize:v8 status:objc_msgSend(v5 rank:{"integerValue"), 0.0}];

  return v9;
}

uint64_t __48___LTDLanguageAssetCache_notify_ofObservations___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 locale];
  v4 = [v3 _ltLocaleIdentifier];
  v5 = [v2 containsObject:v4];

  return v5;
}

@end