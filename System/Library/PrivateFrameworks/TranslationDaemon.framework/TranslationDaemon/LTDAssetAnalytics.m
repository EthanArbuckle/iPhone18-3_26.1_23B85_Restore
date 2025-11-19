@interface LTDAssetAnalytics
@end

@implementation LTDAssetAnalytics

uint64_t __28___LTDAssetAnalytics_shared__block_invoke(uint64_t a1)
{
  shared_sharedInstance = [objc_alloc(*(a1 + 32)) _init];

  return MEMORY[0x2821F96F8]();
}

void __52___LTDAssetAnalytics_markEventsAsRetriedForLocales___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v13 + 1) + 8 * v6) _ltLocaleIdentifier];
        if (v7)
        {
          v8 = [*(*(a1 + 40) + 8) objectForKeyedSubscript:v7];
          [v8 setDidRetry:1];
        }

        else
        {
          v9 = _LTOSLogAnalytics();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            __52___LTDAssetAnalytics_markEventsAsRetriedForLocales___block_invoke_cold_1(&v11, v12, v9);
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __43___LTDAssetAnalytics_getEventWithNSLocale___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __52___LTDAssetAnalytics_markEventsAsRetriedForLocales___block_invoke_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_232E53000, log, OS_LOG_TYPE_ERROR, "Asset analytic retry mark skip due unexpected nil-locale", buf, 2u);
}

@end