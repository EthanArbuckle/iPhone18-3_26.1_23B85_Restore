@interface PSSuggestionFromTextPredictor
@end

@implementation PSSuggestionFromTextPredictor

BOOL __98___PSSuggestionFromTextPredictor_suggestionFromContactPriors_priorScoreThreshold_bundleID_reason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __98___PSSuggestionFromTextPredictor_suggestionFromContactPriors_priorScoreThreshold_bundleID_reason___block_invoke_cold_1(v3, a1, v4);
  }

  [v3 priorScore];
  v6 = v5 >= *(a1 + 32);

  return v6;
}

BOOL __98___PSSuggestionFromTextPredictor_suggestionFromContactPriors_priorScoreThreshold_bundleID_reason___block_invoke_83(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 contactIdentifier];
  v5 = [_PSInteractionStoreUtils someInteractionWithMatchingIdentifier:v4 store:*(a1[4] + 16) bundleIds:a1[5] afterStartDate:a1[6]];

  if (!v5)
  {
    v6 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 contactIdentifier];
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1B5ED1000, v6, OS_LOG_TYPE_DEFAULT, "Contact %@ hasn't been interacted with recently enough", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5 != 0;
}

_PSRecipient *__98___PSSuggestionFromTextPredictor_suggestionFromContactPriors_priorScoreThreshold_bundleID_reason___block_invoke_85(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[_PSContactCache sharedInstance];
  v5 = [v3 contactIdentifier];
  v6 = [v4 getContactForHandle:v5 handleType:0];

  if (v6)
  {
    v7 = MEMORY[0x1E69978B0];
    v8 = [v6 phoneNumbers];
    v9 = [v8 firstObject];
    v10 = [v9 value];
    v11 = [v10 stringValue];
    v12 = [v7 normalizedStringFromContactString:v11];

    if (v12)
    {
      goto LABEL_6;
    }

    v13 = MEMORY[0x1E69978B0];
    v14 = [v6 emailAddresses];
    v15 = [v14 firstObject];
    v16 = [v15 value];
    v12 = [v13 normalizedStringFromContactString:v16];

    if (v12)
    {
      goto LABEL_6;
    }

    v17 = [v6 identifier];
    if (v17)
    {
      v12 = v17;
LABEL_6:
      v18 = [_PSRecipient alloc];
      v19 = [*(*(a1 + 32) + 24) stringFromContact:v6];
      v20 = [(_PSRecipient *)v18 initWithIdentifier:v12 handle:v12 displayName:v19 contact:v6];

      goto LABEL_11;
    }
  }

  else
  {
    v21 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v3 contactIdentifier];
      v25 = 138412290;
      v26 = v22;
      _os_log_impl(&dword_1B5ED1000, v21, OS_LOG_TYPE_DEFAULT, "Unable to match contact for identifier %@", &v25, 0xCu);
    }
  }

  v20 = 0;
LABEL_11:

  v23 = *MEMORY[0x1E69E9840];

  return v20;
}

id __118___PSSuggestionFromTextPredictor_suggestionsFromIncompleteRemindersWithContext_startDate_endDate_priorScoreThreshold___block_invoke_93(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 titleAsString];
  v5 = *(a1 + 48);
  v6 = [*(a1 + 40) bundleID];
  LODWORD(v7) = v5;
  v8 = [v3 suggestionFromText:v4 priorScoreThreshold:v6 bundleID:@"Reminder Title" reason:v7];

  return v8;
}

id __125___PSSuggestionFromTextPredictor_suggestionsFromPortraitExtractionsWithContext_startDate_endDate_priorScoreThreshold_reason___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 contact];
  v3 = [v2 contactsContactIdentifierWithError:0];

  return v3;
}

id __125___PSSuggestionFromTextPredictor_suggestionsFromPortraitExtractionsWithContext_startDate_endDate_priorScoreThreshold_reason___block_invoke_2(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  [v4 setContactIdentifier:v3];

  v5 = *(a1 + 32);
  v13[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v7 = *(a1 + 56);
  v8 = [*(a1 + 40) bundleID];
  LODWORD(v9) = v7;
  v10 = [v5 suggestionFromContactPriors:v6 priorScoreThreshold:v8 bundleID:*(a1 + 48) reason:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void __125___PSSuggestionFromTextPredictor_suggestionsFromUnstructuredCalendarEventsWithContext_startDate_endDate_priorScoreThreshold___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([_PSSuggestionFromTextPredictor isEligibleUnstructuredEvent:?])
  {
    [*(a1 + 32) addObject:v3];
  }
}

id __125___PSSuggestionFromTextPredictor_suggestionsFromUnstructuredCalendarEventsWithContext_startDate_endDate_priorScoreThreshold___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 title];
  v5 = *(a1 + 48);
  v6 = [*(a1 + 40) bundleID];
  LODWORD(v7) = v5;
  v8 = [v3 suggestionFromText:v4 priorScoreThreshold:v6 bundleID:@"Calendar Event Title (Siri Vocabulary)" reason:v7];

  return v8;
}

void __98___PSSuggestionFromTextPredictor_suggestionFromContactPriors_priorScoreThreshold_bundleID_reason___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = [a1 contactIdentifier];
  [a1 priorScore];
  v7 = *(a2 + 32);
  v10 = 138412802;
  v11 = v6;
  v12 = 2048;
  v13 = v8;
  v14 = 2048;
  v15 = v7;
  _os_log_debug_impl(&dword_1B5ED1000, a3, OS_LOG_TYPE_DEBUG, "Contact %@ has prior score %f, thresholding with %f", &v10, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

@end