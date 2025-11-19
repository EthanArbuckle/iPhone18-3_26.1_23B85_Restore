@interface TSIDSSubscriptionSelector
+ (id)activeIMessageSlots;
+ (void)activeIMessageSlots;
+ (void)doRegistrationForIMessage:(id)a3;
+ (void)registerSlotsForIMessage:(id)a3;
@end

@implementation TSIDSSubscriptionSelector

+ (id)activeIMessageSlots
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v24 = 0;
  v3 = [v2 selectedSubscriptionsWithError:&v24];
  v4 = v24;
  if (v4)
  {
    v5 = _TSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[TSIDSSubscriptionSelector activeIMessageSlots];
    }

    v6 = 0;
    goto LABEL_24;
  }

  v19 = v2;
  v6 = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v18 = v3;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v27 count:16];
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = v8;
  v10 = *v21;
  do
  {
    v11 = 0;
    do
    {
      if (*v21 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = [*(*(&v20 + 1) + 8 * v11) subscriptionSlot];
      if (v12)
      {
        if (v12 == 2)
        {
          v13 = v6;
          v14 = &unk_287583D48;
        }

        else
        {
          if (v12 != 1)
          {
            goto LABEL_19;
          }

          v13 = v6;
          v14 = &unk_287583D30;
        }

        [v13 addObject:v14];
      }

      else
      {
        v15 = _TSLogDomain();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          +[(TSIDSSubscriptionSelector *)buf];
        }
      }

LABEL_19:
      ++v11;
    }

    while (v9 != v11);
    v9 = [v7 countByEnumeratingWithState:&v20 objects:v27 count:16];
  }

  while (v9);
LABEL_21:

  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    +[TSIDSSubscriptionSelector activeIMessageSlots];
  }

  v3 = v18;
  v2 = v19;
LABEL_24:

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (void)registerSlotsForIMessage:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v4 = dispatch_queue_create("iMessage Background", 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__TSIDSSubscriptionSelector_registerSlotsForIMessage___block_invoke;
    block[3] = &unk_279B44578;
    v8 = v3;
    dispatch_async(v4, block);

    v5 = v8;
  }

  else
  {
    v5 = _TSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "+[TSIDSSubscriptionSelector registerSlotsForIMessage:]";
      _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "Empty input @%s", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)doRegistrationForIMessage:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v17 = objc_opt_new();
  v4 = [v17 selectedSubscriptionsWithError:0];
  v5 = [v4 mutableCopy];

  if (!v5)
  {
    v5 = objc_opt_new();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v18 + 1) + 8 * v10) integerValue];
        if ((v11 - 1) >= 2)
        {
          v13 = _TSLogDomain();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [(TSIDSSubscriptionSelector *)v26 doRegistrationForIMessage:v13];
          }
        }

        else
        {
          v12 = v11;
          v13 = [MEMORY[0x277D18750] phoneSubscriptionWithSubscriptionSlot:v11];
          if (v13)
          {
            [v5 addObject:v13];
          }

          else
          {
            v14 = _TSLogDomain();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218242;
              v23 = v12;
              v24 = 2080;
              v25 = "+[TSIDSSubscriptionSelector doRegistrationForIMessage:]";
              _os_log_error_impl(&dword_262AA8000, v14, OS_LOG_TYPE_ERROR, "[E]Skipping slot %lu @%s", buf, 0x16u);
            }
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v15 = _TSLogDomain();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      +[TSIDSSubscriptionSelector doRegistrationForIMessage:];
    }

    [v17 setSelectedSubscriptions:v5 withCompletion:&__block_literal_global_21];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __55__TSIDSSubscriptionSelector_doRegistrationForIMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = _TSLogDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __55__TSIDSSubscriptionSelector_doRegistrationForIMessage___block_invoke_cold_1(v4, v5, v6);
  }
}

+ (void)activeIMessageSlots
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = "+[TSIDSSubscriptionSelector activeIMessageSlots]";
  _os_log_debug_impl(&dword_262AA8000, v0, OS_LOG_TYPE_DEBUG, "[Db] %@ @%s", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)doRegistrationForIMessage:(os_log_t)log .cold.1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "+[TSIDSSubscriptionSelector doRegistrationForIMessage:]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]Invalid slot - skipping @%s", buf, 0xCu);
}

+ (void)doRegistrationForIMessage:.cold.2()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = "+[TSIDSSubscriptionSelector doRegistrationForIMessage:]";
  _os_log_debug_impl(&dword_262AA8000, v0, OS_LOG_TYPE_DEBUG, "[Db]  %@ @%s", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __55__TSIDSSubscriptionSelector_doRegistrationForIMessage___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 138412802;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  v8 = 2080;
  v9 = "+[TSIDSSubscriptionSelector doRegistrationForIMessage:]_block_invoke";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]Selection %@, Error %@ @%s", &v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

@end