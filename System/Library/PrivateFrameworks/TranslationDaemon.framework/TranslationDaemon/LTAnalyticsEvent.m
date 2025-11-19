@interface LTAnalyticsEvent
@end

@implementation LTAnalyticsEvent

void __39___LTAnalyticsEvent_timestampWithName___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
    [v4[5] setObject:v3 forKeyedSubscript:*(a1 + 32)];

    WeakRetained = v4;
  }
}

void __58___LTAnalyticsEvent_addFieldsFromDictionary_internalOnly___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[5] addEntriesFromDictionary:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void __29___LTAnalyticsEvent_sendLazy__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 1);
    objc_copyWeak(&v6, (a1 + 40));
    v5 = *(a1 + 32);
    AnalyticsSendEventLazy();
    objc_destroyWeak(&v6);
  }
}

id __29___LTAnalyticsEvent_sendLazy__block_invoke_2(uint64_t a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 3) - *(WeakRetained + 2);
    v5 = MEMORY[0x277CBEB38];
    v15 = @"duration";
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
    v16[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v8 = [v5 dictionaryWithDictionary:v7];

    v9 = [*(a1 + 32) sourceLocale];
    v10 = [v9 _ltLocaleIdentifier];

    v11 = [*(a1 + 32) targetLocale];
    v12 = [v11 _ltLocaleIdentifier];

    if (v10 && v12)
    {
      [v8 setObject:v10 forKeyedSubscript:@"sourceLocale"];
      [v8 setObject:v12 forKeyedSubscript:@"targetLocale"];
    }

    [v8 addEntriesFromDictionary:v3[5]];
  }

  else
  {
    v8 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

@end