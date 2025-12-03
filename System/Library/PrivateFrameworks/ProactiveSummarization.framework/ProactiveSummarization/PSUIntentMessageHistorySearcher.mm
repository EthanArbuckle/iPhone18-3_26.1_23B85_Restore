@interface PSUIntentMessageHistorySearcher
- (void)recentMessagesSinceDate:(id)date conversationIdentifier:(id)identifier appBundleId:(id)id incomingMessageID:(id)d limit:(int64_t)limit options:(unint64_t)options completionHandler:(id)handler;
@end

@implementation PSUIntentMessageHistorySearcher

- (void)recentMessagesSinceDate:(id)date conversationIdentifier:(id)identifier appBundleId:(id)id incomingMessageID:(id)d limit:(int64_t)limit options:(unint64_t)options completionHandler:(id)handler
{
  optionsCopy = options;
  v38[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  identifierCopy = identifier;
  idCopy = id;
  dCopy = d;
  handlerCopy = handler;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = 0;
  v18 = [objc_alloc(MEMORY[0x277CD3B68]) initWithStartDate:dateCopy endDate:0 onCalendar:0 inTimeZone:0];
  v19 = objc_alloc(MEMORY[0x277CD4048]);
  v38[0] = identifierCopy;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
  v21 = [v19 initWithRecipients:0 senders:0 searchTerms:0 attributes:optionsCopy & 3 dateTimeRange:v18 identifiers:0 notificationIdentifiers:0 speakableGroupNames:0 conversationIdentifiers:v20];

  [v21 _setLaunchId:idCopy];
  v22 = [objc_alloc(MEMORY[0x277D21520]) initWithIntent:v21];
  [v22 setRequiresTCC:0];
  [v22 setRequestTimeoutInterval:5.0];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __144__PSUIntentMessageHistorySearcher_recentMessagesSinceDate_conversationIdentifier_appBundleId_incomingMessageID_limit_options_completionHandler___block_invoke;
  v33[3] = &unk_278947568;
  v35 = v36;
  v23 = handlerCopy;
  v34 = v23;
  [v22 setTimeoutHandler:v33];
  [v22 setInterruptionHandler:&__block_literal_global];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __144__PSUIntentMessageHistorySearcher_recentMessagesSinceDate_conversationIdentifier_appBundleId_incomingMessageID_limit_options_completionHandler___block_invoke_9;
  v28[3] = &unk_278947600;
  v32 = v36;
  v24 = v23;
  v31 = v24;
  v25 = dCopy;
  v29 = v25;
  v26 = v22;
  v30 = v26;
  [v26 resumeWithCompletionHandler:v28];

  _Block_object_dispose(v36, 8);
  v27 = *MEMORY[0x277D85DE8];
}

void __144__PSUIntentMessageHistorySearcher_recentMessagesSinceDate_conversationIdentifier_appBundleId_incomingMessageID_limit_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PSUSummarizationLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_error_impl(&dword_231CAE000, v4, OS_LOG_TYPE_ERROR, "Request to fetch messages timed out with error: %@", &v6, 0xCu);
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    (*(*(a1 + 32) + 16))();
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __144__PSUIntentMessageHistorySearcher_recentMessagesSinceDate_conversationIdentifier_appBundleId_incomingMessageID_limit_options_completionHandler___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if ([v6 code] != 3001)
    {
      v9 = PSUSummarizationLogging();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v7;
        _os_log_error_impl(&dword_231CAE000, v9, OS_LOG_TYPE_ERROR, "Unable to resume intent connection with error: %@", buf, 0xCu);
      }
    }

    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      (*(*(a1 + 48) + 16))();
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __144__PSUIntentMessageHistorySearcher_recentMessagesSinceDate_conversationIdentifier_appBundleId_incomingMessageID_limit_options_completionHandler___block_invoke_10;
    v12[3] = &unk_2789475D8;
    v11 = *(a1 + 48);
    v8 = v11;
    v16 = v11;
    v13 = *(a1 + 32);
    v14 = v5;
    v15 = *(a1 + 40);
    [v14 handleIntentWithCompletionHandler:v12];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __144__PSUIntentMessageHistorySearcher_recentMessagesSinceDate_conversationIdentifier_appBundleId_incomingMessageID_limit_options_completionHandler___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v13 = PSUSummarizationLogging();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 138412290;
    v21 = v7;
    v14 = "Unable to handle the search for messages intent: %@";
    v15 = v13;
    v16 = 12;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v5 messages];
    v9 = v8;
    v10 = MEMORY[0x277CBEBF8];
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __144__PSUIntentMessageHistorySearcher_recentMessagesSinceDate_conversationIdentifier_appBundleId_incomingMessageID_limit_options_completionHandler___block_invoke_12;
    v18[3] = &unk_2789475B0;
    v19 = *(a1 + 32);
    v12 = [v11 _pas_filteredArrayWithTest:v18];

    if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
    {
      (*(*(a1 + 56) + 16))();
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }

    goto LABEL_14;
  }

  v13 = PSUSummarizationLogging();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v14 = "Unable to handle the search for messages intent (incorrect response)";
    v15 = v13;
    v16 = 2;
LABEL_16:
    _os_log_error_impl(&dword_231CAE000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
  }

LABEL_12:

  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    (*(*(a1 + 56) + 16))();
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

LABEL_14:

  v17 = *MEMORY[0x277D85DE8];
}

BOOL __144__PSUIntentMessageHistorySearcher_recentMessagesSinceDate_conversationIdentifier_appBundleId_incomingMessageID_limit_options_completionHandler___block_invoke_12(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) && ([v3 identifier], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", *(a1 + 32)), v5, (v6 & 1) != 0) || objc_msgSend(v4, "messageEffectType") == 6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [v4 sender];
    v7 = v8 != 0;
  }

  return v7;
}

void __144__PSUIntentMessageHistorySearcher_recentMessagesSinceDate_conversationIdentifier_appBundleId_incomingMessageID_limit_options_completionHandler___block_invoke_8(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = PSUSummarizationLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_231CAE000, v3, OS_LOG_TYPE_ERROR, "Request to fetch messages was interrupted with error: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

@end