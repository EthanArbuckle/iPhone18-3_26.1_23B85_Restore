@interface _PSSuggestionFromTextPredictor
+ (BOOL)isEligibleUnstructuredEvent:(id)a3;
- (_PSSuggestionFromTextPredictor)initWithEventStore:(id)a3 interactionStore:(id)a4;
- (id)suggestionFromContactPriors:(id)a3 priorScoreThreshold:(float)a4 bundleID:(id)a5 reason:(id)a6;
- (id)suggestionFromText:(id)a3 priorScoreThreshold:(float)a4 bundleID:(id)a5 reason:(id)a6;
- (id)suggestionsFromIncompleteRemindersWithContext:(id)a3 startDate:(id)a4 endDate:(id)a5 priorScoreThreshold:(float)a6;
- (id)suggestionsFromPortraitExtractionsWithContext:(id)a3 startDate:(id)a4 endDate:(id)a5 priorScoreThreshold:(float)a6 reason:(id)a7;
- (id)suggestionsFromUnstructuredCalendarEventsWithContext:(id)a3 startDate:(id)a4 endDate:(id)a5 priorScoreThreshold:(float)a6;
@end

@implementation _PSSuggestionFromTextPredictor

- (_PSSuggestionFromTextPredictor)initWithEventStore:(id)a3 interactionStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = _PSSuggestionFromTextPredictor;
  v9 = [(_PSSuggestionFromTextPredictor *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_eventStore, a3);
    objc_storeStrong(&v10->_interactionStore, a4);
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v11 = getCNContactFormatterClass_softClass_2;
    v29 = getCNContactFormatterClass_softClass_2;
    if (!getCNContactFormatterClass_softClass_2)
    {
      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __getCNContactFormatterClass_block_invoke_2;
      v24 = &unk_1E7C23BF0;
      v25 = &v26;
      __getCNContactFormatterClass_block_invoke_2(&v21);
      v11 = v27[3];
    }

    v12 = v11;
    _Block_object_dispose(&v26, 8);
    v13 = objc_opt_new();
    contactFormatter = v10->_contactFormatter;
    v10->_contactFormatter = v13;

    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v15 = getREMStoreClass_softClass;
    v29 = getREMStoreClass_softClass;
    if (!getREMStoreClass_softClass)
    {
      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __getREMStoreClass_block_invoke;
      v24 = &unk_1E7C23BF0;
      v25 = &v26;
      __getREMStoreClass_block_invoke(&v21);
      v15 = v27[3];
    }

    v16 = v15;
    _Block_object_dispose(&v26, 8);
    v17 = objc_opt_new();
    remStore = v10->_remStore;
    v10->_remStore = v17;
  }

  return v10;
}

- (id)suggestionFromContactPriors:(id)a3 priorScoreThreshold:(float)a4 bundleID:(id)a5 reason:(id)a6
{
  v39[7] = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __98___PSSuggestionFromTextPredictor_suggestionFromContactPriors_priorScoreThreshold_bundleID_reason___block_invoke;
  v37[3] = &__block_descriptor_36_e25_B16__0___PSContactPrior_8l;
  v38 = a4;
  v12 = [a3 _pas_filteredArrayWithTest:v37];
  v13 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [_PSSuggestionFromTextPredictor suggestionFromContactPriors:priorScoreThreshold:bundleID:reason:];
  }

  if ([v12 count])
  {
    v31 = v11;
    v32 = v10;
    v14 = +[_PSConstants mobileFacetimeBundleId];
    v39[0] = v14;
    v15 = +[_PSConstants macFacetimeBundleId];
    v39[1] = v15;
    v16 = +[_PSConstants mobileMessagesBundleId];
    v39[2] = v16;
    v17 = +[_PSConstants macMessagesBundleId];
    v39[3] = v17;
    v18 = +[_PSConstants mobilePhoneBundleId];
    v39[4] = v18;
    v19 = +[_PSConstants mobileMailBundleId];
    v39[5] = v19;
    v20 = +[_PSConstants macMailBundleId];
    v39[6] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:7];

    v22 = [MEMORY[0x1E695DF00] now];
    v23 = [v22 dateByAddingTimeInterval:-1209600.0];

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __98___PSSuggestionFromTextPredictor_suggestionFromContactPriors_priorScoreThreshold_bundleID_reason___block_invoke_83;
    v34[3] = &unk_1E7C25EA8;
    v34[4] = self;
    v24 = v21;
    v35 = v24;
    v25 = v23;
    v36 = v25;
    v26 = [v12 _pas_filteredArrayWithTest:v34];
    if ([v26 count])
    {
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __98___PSSuggestionFromTextPredictor_suggestionFromContactPriors_priorScoreThreshold_bundleID_reason___block_invoke_85;
      v33[3] = &unk_1E7C25ED0;
      v33[4] = self;
      v27 = [v26 _pas_mappedArrayWithTransform:v33];
      v11 = v31;
      v10 = v32;
      if ([v27 count])
      {
        v28 = [[_PSSuggestion alloc] initWithBundleID:v32 conversationIdentifier:0 groupName:0 recipients:v27 reason:v31 reasonType:0];
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
      v11 = v31;
      v10 = v32;
    }
  }

  else
  {
    v28 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

- (id)suggestionFromText:(id)a3 priorScoreThreshold:(float)a4 bundleID:(id)a5 reason:(id)a6
{
  v23 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([v10 length])
  {
    v13 = [_PSContactSuggester contactPriorSuggestionsForText:v10];
    v14 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412546;
      v20 = v10;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_1B5ED1000, v14, OS_LOG_TYPE_DEFAULT, "For text %@ found contacts %@", &v19, 0x16u);
    }

    if ([v13 count])
    {
      *&v15 = a4;
      v16 = [(_PSSuggestionFromTextPredictor *)self suggestionFromContactPriors:v13 priorScoreThreshold:v11 bundleID:v12 reason:v15];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (BOOL)isEligibleUnstructuredEvent:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 isAllDay])
    {
      v5 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        +[_PSSuggestionFromTextPredictor isEligibleUnstructuredEvent:];
      }
    }

    else if ([v4 status] == 3)
    {
      v5 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        +[_PSSuggestionFromTextPredictor isEligibleUnstructuredEvent:];
      }
    }

    else
    {
      v6 = [v4 attendees];
      v7 = [v6 count];

      if (!v7)
      {
        v8 = 1;
        goto LABEL_13;
      }

      v5 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        +[_PSSuggestionFromTextPredictor isEligibleUnstructuredEvent:];
      }
    }
  }

  v8 = 0;
LABEL_13:

  return v8;
}

- (id)suggestionsFromIncompleteRemindersWithContext:(id)a3 startDate:(id)a4 endDate:(id)a5 priorScoreThreshold:(float)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  remStore = self->_remStore;
  v28 = 0;
  v14 = [(REMStore *)remStore fetchListsForEventKitBridgingWithError:&v28];
  v15 = v28;
  if (v15 || ![v14 count])
  {
    v16 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [_PSSuggestionFromTextPredictor suggestionsFromIncompleteRemindersWithContext:startDate:endDate:priorScoreThreshold:];
    }

    v17 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v16 = [v14 _pas_mappedArrayWithTransform:&__block_literal_global_25];
    v18 = self->_remStore;
    v27 = 0;
    v19 = [(REMStore *)v18 fetchIncompleteRemindersForEventKitBridgingWithDueDateFrom:v11 to:v12 withListIDs:v16 error:&v27];
    v15 = v27;
    if (v15 || ![v19 count])
    {
      v20 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [_PSSuggestionFromTextPredictor suggestionsFromIncompleteRemindersWithContext:startDate:endDate:priorScoreThreshold:];
      }

      v17 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v21 = [v19 count];
      if (v21 >= 2)
      {
        v22 = 2;
      }

      else
      {
        v22 = v21;
      }

      v20 = [v19 subarrayWithRange:{0, v22}];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __118___PSSuggestionFromTextPredictor_suggestionsFromIncompleteRemindersWithContext_startDate_endDate_priorScoreThreshold___block_invoke_93;
      v24[3] = &unk_1E7C25F18;
      v24[4] = self;
      v26 = a6;
      v25 = v10;
      v17 = [v20 _pas_mappedArrayWithTransform:v24];
    }
  }

  return v17;
}

- (id)suggestionsFromPortraitExtractionsWithContext:(id)a3 startDate:(id)a4 endDate:(id)a5 priorScoreThreshold:(float)a6 reason:(id)a7
{
  v47[2] = *MEMORY[0x1E69E9840];
  v32 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2050000000;
  v15 = getPPFuzzyContactQueryClass_softClass;
  v46 = getPPFuzzyContactQueryClass_softClass;
  if (!getPPFuzzyContactQueryClass_softClass)
  {
    v38 = MEMORY[0x1E69E9820];
    v39 = 3221225472;
    v40 = __getPPFuzzyContactQueryClass_block_invoke;
    v41 = &unk_1E7C23BF0;
    v42 = &v43;
    PersonalizationPortraitLibraryCore();
    v44[3] = objc_getClass("PPFuzzyContactQuery");
    getPPFuzzyContactQueryClass_softClass = *(v42[1] + 24);
    v15 = v44[3];
  }

  v16 = v15;
  _Block_object_dispose(&v43, 8);
  v17 = objc_opt_new();
  v18 = MEMORY[0x1E695DFD8];
  v19 = +[_PSConstants mobileCalendarBundleId];
  v47[0] = v19;
  v20 = +[_PSConstants macCalendarBundleId];
  v47[1] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
  v22 = [v18 setWithArray:v21];
  [v17 setSourceBundleIds:v22];

  [v17 setStartDate:v12];
  [v17 setEndDate:v13];
  [v17 setOnlyAddressBook:1];
  v43 = 0;
  v44 = &v43;
  v45 = 0x2050000000;
  v23 = getPPContactStoreClass_softClass;
  v46 = getPPContactStoreClass_softClass;
  if (!getPPContactStoreClass_softClass)
  {
    v38 = MEMORY[0x1E69E9820];
    v39 = 3221225472;
    v40 = __getPPContactStoreClass_block_invoke;
    v41 = &unk_1E7C23BF0;
    v42 = &v43;
    PersonalizationPortraitLibraryCore();
    v44[3] = objc_getClass("PPContactStore");
    getPPContactStoreClass_softClass = *(v42[1] + 24);
    v23 = v44[3];
  }

  v24 = v23;
  _Block_object_dispose(&v43, 8);
  v25 = objc_opt_new();
  v37 = 0;
  v26 = [v25 upcomingRelevantContactsForQuery:v17 error:&v37];
  v27 = v37;
  if (v27 || ![v26 count])
  {
    v28 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [_PSSuggestionFromTextPredictor suggestionsFromPortraitExtractionsWithContext:startDate:endDate:priorScoreThreshold:reason:];
    }

    v29 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v28 = [v26 _pas_mappedArrayWithTransform:&__block_literal_global_101];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __125___PSSuggestionFromTextPredictor_suggestionsFromPortraitExtractionsWithContext_startDate_endDate_priorScoreThreshold_reason___block_invoke_2;
    v33[3] = &unk_1E7C25F60;
    v33[4] = self;
    v36 = a6;
    v34 = v32;
    v35 = v14;
    v29 = [v28 _pas_mappedArrayWithTransform:v33];
  }

  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

- (id)suggestionsFromUnstructuredCalendarEventsWithContext:(id)a3 startDate:(id)a4 endDate:(id)a5 priorScoreThreshold:(float)a6
{
  v10 = a3;
  eventStore = self->_eventStore;
  v12 = a5;
  v13 = a4;
  v14 = [(EKEventStore *)eventStore calendarsForEntityType:0];
  v15 = [(EKEventStore *)self->_eventStore predicateForEventsWithStartDate:v13 endDate:v12 calendars:v14];

  v16 = objc_opt_new();
  v17 = self->_eventStore;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __125___PSSuggestionFromTextPredictor_suggestionsFromUnstructuredCalendarEventsWithContext_startDate_endDate_priorScoreThreshold___block_invoke;
  v27[3] = &unk_1E7C25F88;
  v18 = v16;
  v28 = v18;
  [(EKEventStore *)v17 enumerateEventsMatchingPredicate:v15 usingBlock:v27];
  if ([v18 count])
  {
    v19 = [v18 count];
    if (v19 >= 2)
    {
      v20 = 2;
    }

    else
    {
      v20 = v19;
    }

    v21 = [v18 subarrayWithRange:{0, v20}];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __125___PSSuggestionFromTextPredictor_suggestionsFromUnstructuredCalendarEventsWithContext_startDate_endDate_priorScoreThreshold___block_invoke_2;
    v24[3] = &unk_1E7C25FB0;
    v24[4] = self;
    v26 = a6;
    v25 = v10;
    v22 = [v21 _pas_mappedArrayWithTransform:v24];
  }

  else
  {
    v22 = MEMORY[0x1E695E0F0];
  }

  return v22;
}

- (void)suggestionFromContactPriors:priorScoreThreshold:bundleID:reason:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)suggestionsFromIncompleteRemindersWithContext:startDate:endDate:priorScoreThreshold:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)suggestionsFromIncompleteRemindersWithContext:startDate:endDate:priorScoreThreshold:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)suggestionsFromPortraitExtractionsWithContext:startDate:endDate:priorScoreThreshold:reason:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end