@interface PSGNameMentionsHandler
+ (id)sharedInstance;
- (id)getNameMentionsTriggerForContext:(id)a3 recipientNames:(id)a4 availableApps:(id)a5 localeIdentifier:(id)a6 explanationSet:(id)a7;
- (id)getPredictedItemsForTrigger:(id)a3 recipientNames:(id)a4 bundleIdentifier:(id)a5 maxItems:(unint64_t)a6;
@end

@implementation PSGNameMentionsHandler

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__PSGNameMentionsHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance__pasOnceToken2_398 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2_398, block);
  }

  v2 = sharedInstance__pasExprOnceResult_399;

  return v2;
}

void __40__PSGNameMentionsHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = sharedInstance__pasExprOnceResult_399;
  sharedInstance__pasExprOnceResult_399 = v4;

  objc_autoreleasePoolPop(v2);
}

- (id)getPredictedItemsForTrigger:(id)a3 recipientNames:(id)a4 bundleIdentifier:(id)a5 maxItems:(unint64_t)a6
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v41 = a5;
  v10 = [v8 triggerAttributes];
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277D23050]];
  if ([v11 isEqualToString:@"NameMentions"])
  {
    v12 = [v10 objectForKeyedSubscript:@"NamePrefix"];
    v13 = v12;
    if (v12)
    {
      v35 = v11;
      v36 = v10;
      v38 = v8;
      v34 = v12;
      v14 = [v12 lowercaseString];
      v15 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"self" ascending:1];
      v49 = v15;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
      v37 = v9;
      v17 = [v9 sortedArrayUsingDescriptors:v16];

      v18 = objc_opt_new();
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      obj = v17;
      v19 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = 0;
        v22 = *v43;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v43 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v42 + 1) + 8 * i);
            if ([v21 length] && objc_msgSend(v24, "hasPrefix:", v21))
            {
              v25 = psg_default_log_handle();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_debug_impl(&dword_260D18000, v25, OS_LOG_TYPE_DEBUG, "Ambiguous name preferred. Skipping more specific name.", buf, 2u);
              }
            }

            else if (!-[NSObject length](v14, "length") || ([v24 lowercaseString], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "hasPrefix:", v14), v26, v27))
            {
              v46[0] = @"name";
              v46[1] = @"bundleID";
              v47[0] = v24;
              v47[1] = @"com.apple.messages.mentions";
              v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
              v29 = [[PSGOperationalPredictedItem alloc] initWithItemIdentifier:@"NameMentions" value:v24 bundleIdentifier:v41 operationData:v28];
              [v18 addObject:v29];
              v30 = v24;

              v31 = [v18 count];
              v21 = v30;
              if (v31 == a6)
              {
                goto LABEL_26;
              }
            }
          }

          v20 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
          v30 = v21;
        }

        while (v20);
      }

      else
      {
        v30 = 0;
      }

LABEL_26:

      v9 = v37;
      v8 = v38;
      v11 = v35;
      v10 = v36;
      v13 = v34;
    }

    else
    {
      v14 = psg_default_log_handle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v51 = v8;
        _os_log_fault_impl(&dword_260D18000, v14, OS_LOG_TYPE_FAULT, "[PSGNameMentionsHandler] Name prefix not set in (%@)", buf, 0xCu);
      }

      v18 = 0;
    }
  }

  else
  {
    v13 = psg_default_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v51 = v8;
      _os_log_fault_impl(&dword_260D18000, v13, OS_LOG_TYPE_FAULT, "[PSGNameMentionsHandler] Unexpected trigger (%@) passed into PSGNameMentionsHandler", buf, 0xCu);
    }

    v18 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)getNameMentionsTriggerForContext:(id)a3 recipientNames:(id)a4 availableApps:(id)a5 localeIdentifier:(id)a6 explanationSet:(id)a7
{
  v55 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (getNameMentionsTriggerForContext_recipientNames_availableApps_localeIdentifier_explanationSet__once != -1)
  {
    dispatch_once(&getNameMentionsTriggerForContext_recipientNames_availableApps_localeIdentifier_explanationSet__once, &__block_literal_global_421);
  }

  if (![v12 count])
  {
    v34 = psg_default_log_handle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_260D18000, v34, OS_LOG_TYPE_FAULT, "[PSGNameMentionsHandler] Empty recipientNames passed in", buf, 2u);
    }

    goto LABEL_34;
  }

  if (([v13 containsObject:@"com.apple.messages.mentions"] & 1) == 0)
  {
    v35 = psg_default_log_handle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_260D18000, v35, OS_LOG_TYPE_ERROR, "[PSGNameMentionsHandler] Mini-app for recipientNames not available", buf, 2u);
    }

    [v15 pushInternalExplanationCode:2];
    goto LABEL_35;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v16 = v12;
  v17 = [v16 countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (!v17)
  {

LABEL_32:
    v34 = psg_default_log_handle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_260D18000, v34, OS_LOG_TYPE_ERROR, "[PSGNameMentionsHandler] All names are empty", buf, 2u);
    }

LABEL_34:

LABEL_35:
    v33 = 0;
    goto LABEL_36;
  }

  v18 = v17;
  v19 = 0;
  v20 = *v45;
  do
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v45 != v20)
      {
        objc_enumerationMutation(v16);
      }

      v22 = [*(*(&v44 + 1) + 8 * i) length];
      if (v19 <= v22)
      {
        v19 = v22;
      }
    }

    v18 = [v16 countByEnumeratingWithState:&v44 objects:v54 count:16];
  }

  while (v18);

  if (!v19)
  {
    goto LABEL_32;
  }

  v23 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v14];
  v24 = [v11 length];
  v25 = [v11 length];
  if (v24 <= v19)
  {
    v26 = 0;
  }

  else
  {
    v26 = v25 + ~v19;
  }

  if (v24 > v19)
  {
    v27 = v19 + 1;
  }

  else
  {
    v27 = v25;
  }

  v28 = [v11 rangeOfString:@"@" options:4 range:v26 locale:{v27, v23}];
  v29 = v28;
  v31 = v30;
  if (v28)
  {
    if (v28 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v32 = psg_default_log_handle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_260D18000, v32, OS_LOG_TYPE_DEBUG, "[PSGNameMentionsHandler] No @ symbol found in the input.", buf, 2u);
      }

      v33 = 0;
      goto LABEL_56;
    }

    v32 = [v11 substringWithRange:{v28 - 1, 1}];
    if ([v32 rangeOfCharacterFromSet:getNameMentionsTriggerForContext_recipientNames_availableApps_localeIdentifier_explanationSet__bannedPredictionCharacterSet]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      v42 = psg_default_log_handle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v51 = v32;
        _os_log_debug_impl(&dword_260D18000, v42, OS_LOG_TYPE_DEBUG, "[PSGNameMentionsHandler] Prior is %@, so this @ might be part of an email address", buf, 0xCu);
      }

      v33 = 0;
      goto LABEL_56;
    }
  }

  v32 = [v11 substringFromIndex:v29 + v31];
  if ([v32 length]> v19)
  {
    v38 = psg_default_log_handle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      v39 = [v32 length];
      *buf = 134218240;
      v51 = v39;
      v52 = 2048;
      v53 = v19;
      _os_log_debug_impl(&dword_260D18000, v38, OS_LOG_TYPE_DEBUG, "[PSGNameMentionsHandler] Prefix length %tu > maxLength %tu", buf, 0x16u);
    }

LABEL_54:
    v33 = 0;
    goto LABEL_55;
  }

  if ([v32 length])
  {
    v38 = [v32 substringToIndex:1];
    v40 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v41 = [v38 rangeOfCharacterFromSet:v40];

    if (v41 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v43 = psg_default_log_handle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_260D18000, v43, OS_LOG_TYPE_DEBUG, "[PSGNameMentionsHandler] First charactrer of prefix is whitespace", buf, 2u);
      }

      goto LABEL_54;
    }
  }

  v48[0] = *MEMORY[0x277D23050];
  v48[1] = @"NamePrefix";
  v49[0] = @"NameMentions";
  v49[1] = v32;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
  v33 = [[PSGProactiveTrigger alloc] initWithSourceType:5 category:@"nameMentionsTriggerCategory" attributes:v38];
LABEL_55:

LABEL_56:
LABEL_36:

  v36 = *MEMORY[0x277D85DE8];

  return v33;
}

void __120__PSGNameMentionsHandler_getNameMentionsTriggerForContext_recipientNames_availableApps_localeIdentifier_explanationSet___block_invoke()
{
  v0 = [MEMORY[0x277CCAB50] decimalDigitCharacterSet];
  [v0 addCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"];
  v1 = getNameMentionsTriggerForContext_recipientNames_availableApps_localeIdentifier_explanationSet__bannedPredictionCharacterSet;
  getNameMentionsTriggerForContext_recipientNames_availableApps_localeIdentifier_explanationSet__bannedPredictionCharacterSet = v0;
}

@end