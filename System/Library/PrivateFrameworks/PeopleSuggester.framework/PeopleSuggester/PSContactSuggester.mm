@interface PSContactSuggester
@end

@implementation PSContactSuggester

id __69___PSContactSuggester_iMessageDomainIdentifiersForDomainIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    if ([v6 rangeOfString:@"any;" options:10] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [v6 rangeOfString:@";" options:6];
      v9 = [v6 substringFromIndex:v7 + v8];
      [v4 addObject:v9];
    }
  }

  return v4;
}

void __69___PSContactSuggester_iMessageDomainIdentifiersForDomainIdentifiers___block_invoke_70(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) chatIdentifier];
        if (v8)
        {
          [*(a1 + 32) addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  dispatch_semaphore_signal(*(a1 + 40));

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __69___PSContactSuggester_iMessageDomainIdentifiersForDomainIdentifiers___block_invoke_73(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    if ([v4 rangeOfString:@"iMessage;" options:10])
    {
      if ([v4 rangeOfString:@"any;" options:10] == 0x7FFFFFFFFFFFFFFFLL || !objc_msgSend(*(a1 + 32), "count"))
      {
        v8 = 0;
      }

      else
      {
        v5 = [v4 rangeOfString:@";" options:6];
        v7 = [v4 substringFromIndex:v5 + v6];
        v8 = [*(a1 + 32) containsObject:v7];
      }
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __91___PSContactSuggester_contactSuggestionsWithMaxSuggestions_excludeContactsWithIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __91___PSContactSuggester_contactSuggestionsWithMaxSuggestions_excludeContactsWithIdentifiers___block_invoke_cold_1();
  }
}

id __149___PSContactSuggester_contactSuggestionsWithMaxSuggestions_excludeContactsByIdentifiers_lookBackDays_interactions_modeAvocado_interactionHistoryCap___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _pas_mappedArrayWithTransform:&__block_literal_global_100];
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4 = *(a1 + 40);
  v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v2];
  v6 = [v5 allObjects];
  v7 = [v4 iMessageDomainIdentifiersForDomainIdentifiers:v6];
  v8 = [v3 initWithArray:v7];

  return v8;
}

void __150___PSContactSuggester_gameCenterSuggestionsWithMaxSuggestions_interactionDomains_appleUsersOnly_includeGroupSuggestions_excludeContactsByIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 state] == 1)
  {
    v3 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __150___PSContactSuggester_gameCenterSuggestionsWithMaxSuggestions_interactionDomains_appleUsersOnly_includeGroupSuggestions_excludeContactsByIdentifiers___block_invoke_cold_1(v2, v3);
    }
  }
}

void __150___PSContactSuggester_gameCenterSuggestionsWithMaxSuggestions_interactionDomains_appleUsersOnly_includeGroupSuggestions_excludeContactsByIdentifiers___block_invoke_114(uint64_t a1, void *a2)
{
  v5 = [a2 eventBody];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    v4 = [v5 identifier];
    [v3 addObject:v4];
  }
}

void __150___PSContactSuggester_gameCenterSuggestionsWithMaxSuggestions_interactionDomains_appleUsersOnly_includeGroupSuggestions_excludeContactsByIdentifiers___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = MEMORY[0x1E695E0F0];

  v6 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __150___PSContactSuggester_gameCenterSuggestionsWithMaxSuggestions_interactionDomains_appleUsersOnly_includeGroupSuggestions_excludeContactsByIdentifiers___block_invoke_2_cold_1();
  }
}

uint64_t __150___PSContactSuggester_gameCenterSuggestionsWithMaxSuggestions_interactionDomains_appleUsersOnly_includeGroupSuggestions_excludeContactsByIdentifiers___block_invoke_120(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [a2 recipients];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) identifier];
        if (v9)
        {
          if ([*(a1 + 32) containsObject:v9])
          {
            v7 = 0;
          }

          else
          {
            [*(a1 + 40) addObject:v9];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 1;
  }

  [*(a1 + 32) unionSet:*(a1 + 40)];
  [*(a1 + 40) removeAllObjects];
  v10 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

id __94___PSContactSuggester_contactAndGroupSuggestionsWithMaxSuggestions_lookBackDays_interactions___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _pas_mappedArrayWithTransform:&__block_literal_global_123];
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4 = *(a1 + 40);
  v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v2];
  v6 = [v5 allObjects];
  v7 = [v4 iMessageDomainIdentifiersForDomainIdentifiers:v6];
  v8 = [v3 initWithArray:v7];

  return v8;
}

id __151___PSContactSuggester_contactSuggestionsWithMaxSuggestions_interactionDomains_referenceDate_appleUsersOnly_includeGroups_excludeContactsByIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 bundleId];
  v4 = +[_PSConstants messagesBundleId];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    v6 = [v2 domainIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __151___PSContactSuggester_contactSuggestionsWithMaxSuggestions_interactionDomains_referenceDate_appleUsersOnly_includeGroups_excludeContactsByIdentifiers___block_invoke_139(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 regularityScore];
  v7 = v6;
  [v5 regularityScore];
  if (v7 <= v8)
  {
    [v4 regularityScore];
    v11 = v10;
    [v5 regularityScore];
    if (v11 < v12)
    {
      v9 = 1;
      goto LABEL_7;
    }

    v13 = [v4 totalFrequency];
    if (v13 <= [v5 totalFrequency])
    {
      v14 = [v4 totalFrequency];
      v9 = v14 < [v5 totalFrequency];
      goto LABEL_7;
    }
  }

  v9 = -1;
LABEL_7:

  return v9;
}

uint64_t __128___PSContactSuggester_computeContactPriorsForContactIdentifiers_withTimeConstant_withInteractionMechanisms_asOf_overLookbackOf___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 priorScore];
  v6 = v5;
  [v4 priorScore];
  v8 = v7;

  if (v6 <= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

void __56___PSContactSuggester_computeAndSaveContactPriorArchive__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) computeContactPriorsForContactIdentifiers:0];
  v4 = [_PSContactSuggesterArchive alloc];
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [(_PSContactSuggesterArchive *)v4 initWithArchiveDate:v5 contactPriorDictionary:v3];

  [*(a1 + 32) writeArchive:v6];

  objc_autoreleasePoolPop(v2);
}

void __54___PSContactSuggester__cascadeContentForContactPriors__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 changePublisherWithUseCase:@"PeopleSuggesterContactPriors"];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54___PSContactSuggester__cascadeContentForContactPriors__block_invoke_3;
  v5[3] = &unk_1E7C244E8;
  v5[4] = *(a1 + 32);
  v4 = [v3 sinkWithCompletion:&__block_literal_global_168 receiveInput:v5];
}

void __54___PSContactSuggester__cascadeContentForContactPriors__block_invoke_3(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = [a2 allLocalInstances];
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v21;
    *&v4 = 67109376;
    v18 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v20 + 1) + 8 * v7) content];
        if ([v8 minVersion] && objc_msgSend(v8, "version"))
        {
          if ([v8 minVersion] <= 1)
          {
            v15 = *(*(a1 + 32) + 8);
            v16 = *(v15 + 40);
            *(v15 + 40) = v8;

            goto LABEL_18;
          }

          v9 = +[_PSLogging generalChannel];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = [v8 version];
            v11 = [v8 minVersion];
            *buf = 67109632;
            v25 = v10;
            v26 = 1024;
            v27 = v11;
            v28 = 1024;
            v29 = 1;
            _os_log_impl(&dword_1B5ED1000, v9, OS_LOG_TYPE_DEFAULT, "Skipping persisted cascade data with version=%d, minVersion=%d because this incantation of the software (%d) does not satisfy that minVersion", buf, 0x14u);
          }
        }

        else
        {
          v9 = +[_PSLogging generalChannel];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
          {
            v12 = [v8 version];
            v13 = [v8 minVersion];
            *buf = v18;
            v25 = v12;
            v26 = 1024;
            v27 = v13;
            _os_log_fault_impl(&dword_1B5ED1000, v9, OS_LOG_TYPE_FAULT, "Skipping persisted cascade data with invalid versioning info (version=%d, minVersion=%d)", buf, 0xEu);
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v14 = [v2 countByEnumeratingWithState:&v20 objects:v30 count:16];
      v5 = v14;
    }

    while (v14);
  }

LABEL_18:

  v17 = *MEMORY[0x1E69E9840];
}

id __90___PSContactSuggester__filteredContactDictionaryFromCascadeContent_forContactIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = a2;
  v4 = [v2 numberWithLongLong:{objc_msgSend(v3, "longLongValue")}];
  v5 = [v4 stringValue];
  v6 = [v5 isEqual:v3];

  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __90___PSContactSuggester__filteredContactDictionaryFromCascadeContent_forContactIdentifiers___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
  if ([*(a1 + 32) containsObject:v5])
  {
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(*(*(a1 + 48) + 8) + 24)];
    [v6 setObject:v5 forKeyedSubscript:v7];
  }

  ++*(*(*(a1 + 48) + 8) + 24);

  objc_autoreleasePoolPop(v4);
}

void __90___PSContactSuggester__filteredContactDictionaryFromCascadeContent_forContactIdentifiers___block_invoke_3(uint64_t a1, float a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(*(*(a1 + 56) + 8) + 24)];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [v7 stringValue];
    v9 = [*(a1 + 40) objectForKeyedSubscript:v8];

    if (!v9)
    {
      v10 = objc_opt_new();
      [v10 setRank:*(*(*(a1 + 56) + 8) + 24)];
      *&v11 = a2;
      [v10 setPriorScore:v11];
      [v10 setContactIdentifier:v8];
      v12 = [*(a1 + 48) modelName];
      [v10 setModelName:v12];

      v13 = [*(a1 + 48) modelVersion];
      [v10 setModelVersion:v13];

      [*(a1 + 40) setObject:v10 forKeyedSubscript:v8];
    }
  }

  ++*(*(*(a1 + 56) + 8) + 24);

  objc_autoreleasePoolPop(v4);
}

void __58___PSContactSuggester_contactPriorsForContactIdentifiers___block_invoke()
{
  v0 = [MEMORY[0x1E6997908] interactionSignpost];
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSContactPriorsForContactIdentifiers", &unk_1B5FD970D, v1, 2u);
  }
}

BOOL __58___PSContactSuggester_contactPriorsForContactIdentifiers___block_invoke_182(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v3 = v2 != 0;

  return v3;
}

id __54___PSContactSuggester_contactPriorSuggestionsForText___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 entityInfo];
  if ([v4 entityType] != 1)
  {
    v10 = MEMORY[0x1E695E0F0];
    goto LABEL_29;
  }

  getSEMCascadeEntityInfoClass();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if ([v5 itemType]== 19668)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v6 = [v3 fieldMatches];
      v7 = [v6 countByEnumeratingWithState:&v25 objects:v35 count:16];
      if (v7)
      {
        v8 = v7;
        v22 = a1;
        v9 = *v26;
        v10 = MEMORY[0x1E695E0F0];
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v26 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v12 = [*(*(&v25 + 1) + 8 * i) entityFieldInfo];
            if ([v12 entityType] == 1)
            {
              getSEMCascadeEntityFieldInfoClass();
              if (objc_opt_isKindOfClass())
              {
                v13 = v12;
                v14 = [v13 fieldType];
                if ((v14 - 19679) <= 0x13 && ((1 << (v14 + 33)) & 0xE007F) != 0)
                {

                  v6 = [v5 allMetaContent];
                  v23[0] = MEMORY[0x1E69E9820];
                  v23[1] = 3221225472;
                  v23[2] = __54___PSContactSuggester_contactPriorSuggestionsForText___block_invoke_188;
                  v23[3] = &unk_1E7C245D0;
                  v24 = *(v22 + 32);
                  v10 = [v6 _pas_mappedArrayWithTransform:v23];

                  goto LABEL_27;
                }
              }

              else
              {
                v13 = +[_PSLogging generalChannel];
                if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
                {
                  v20 = *(v22 + 32);
                  v19 = objc_opt_class();
                  SEMCascadeEntityFieldInfoClass = getSEMCascadeEntityFieldInfoClass();
                  *buf = 138478339;
                  v30 = v20;
                  v31 = 2114;
                  v32 = v19;
                  v33 = 2114;
                  v34 = SEMCascadeEntityFieldInfoClass;
                  v21 = SEMCascadeEntityFieldInfoClass;
                  _os_log_error_impl(&dword_1B5ED1000, v13, OS_LOG_TYPE_ERROR, "For text %{private}@ got %{public}@ when %{public}@ was expected", buf, 0x20u);
                }
              }
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v25 objects:v35 count:16];
        }

        while (v8);
      }

      else
      {
        v10 = MEMORY[0x1E695E0F0];
      }

LABEL_27:

      goto LABEL_28;
    }
  }

  else
  {
    v5 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __54___PSContactSuggester_contactPriorSuggestionsForText___block_invoke_cold_1(a1, v4, v5);
    }
  }

  v10 = MEMORY[0x1E695E0F0];
LABEL_28:

LABEL_29:
  v17 = *MEMORY[0x1E69E9840];

  return v10;
}

id __54___PSContactSuggester_contactPriorSuggestionsForText___block_invoke_188(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = [v3 sourceItemIdentifier];
    v11 = 138478083;
    v12 = v5;
    v13 = 2113;
    v14 = v6;
    _os_log_impl(&dword_1B5ED1000, v4, OS_LOG_TYPE_INFO, "For text %{private}@ outputting contact identifier %{private}@", &v11, 0x16u);
  }

  v7 = objc_opt_new();
  v8 = [v3 sourceItemIdentifier];
  [v7 setContactIdentifier:v8];

  [v7 setPriorScore:0.0];
  [v7 setRank:0];

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

id __54___PSContactSuggester_contactPriorSuggestionsForText___block_invoke_191(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  [v4 addObjectsFromArray:a3];

  return v4;
}

void __80___PSContactSuggester__cascadeContentForPriorsArchive_cascadeContactEnumerator___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a4;
  v6 = [a3 sourceItemIdentifier];
  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
  v8 = v7;
  if (v7)
  {
    [v7 priorScore];
    *(*(a1 + 48) + 16 * *(*(*(a1 + 40) + 8) + 24) + 8) = v9;
    *(*(a1 + 48) + 16 * (*(*(*(a1 + 40) + 8) + 24))++) = [v10 longLongValue];
  }
}

uint64_t __80___PSContactSuggester__cascadeContentForPriorsArchive_cascadeContactEnumerator___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3 = *(a2 + 8) - *(a3 + 8);
  LODWORD(v4) = (__PAIR64__(*&v3 > 0.0, v3) - COERCE_UNSIGNED_INT(0.0)) >> 32;
  if (!v4)
  {
    v4 = (*a2 - *a3) >> 63;
    if (*a2 > *a3)
    {
      LODWORD(v4) = v4 + 1;
    }
  }

  return -v4;
}

void __55___PSContactSuggester__cascadeContentForPriorsArchive___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E6993A50] setEnumeratorWithUseCase:@"PeopleSuggesterContactPriors"];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55___PSContactSuggester__cascadeContentForPriorsArchive___block_invoke_2;
  v5[3] = &unk_1E7C246B0;
  v6 = v2;
  v4 = v2;
  [v3 enumerateAllSets:0 itemType:19668 usingBlock:v5];
}

void __55___PSContactSuggester__cascadeContentForPriorsArchive___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 changePublisherWithUseCase:@"PeopleSuggesterContactPriors"];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55___PSContactSuggester__cascadeContentForPriorsArchive___block_invoke_4;
  v5[3] = &unk_1E7C24688;
  v6 = *(a1 + 32);
  v4 = [v3 sinkWithCompletion:&__block_literal_global_216 receiveInput:v5];
}

void __55___PSContactSuggester__cascadeContentForPriorsArchive___block_invoke_4(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [a2 allLocalInstances];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = *(a1 + 32);
        v10 = [v8 content];
        v11 = [v8 metaContent];
        v12 = [v8 sharedIdentifier];
        (*(v9 + 16))(v9, v10, v11, v12);
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __46___PSContactSuggester__writeArchiveToCascade___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = 0;
  v3 = a2;
  [v3 registerItem:v2 error:&v4];
  [v3 finish:0];
}

void __91___PSContactSuggester_contactSuggestionsWithMaxSuggestions_excludeContactsWithIdentifiers___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __150___PSContactSuggester_gameCenterSuggestionsWithMaxSuggestions_interactionDomains_appleUsersOnly_includeGroupSuggestions_excludeContactsByIdentifiers___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 error];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_ERROR, "Finalizing local events failed: %@", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void __150___PSContactSuggester_gameCenterSuggestionsWithMaxSuggestions_interactionDomains_appleUsersOnly_includeGroupSuggestions_excludeContactsByIdentifiers___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __54___PSContactSuggester_contactPriorSuggestionsForText___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v7 = 138478339;
  v8 = v4;
  v9 = 2114;
  v10 = objc_opt_class();
  v11 = 2114;
  SEMCascadeEntityInfoClass = getSEMCascadeEntityInfoClass();
  v5 = SEMCascadeEntityInfoClass;
  _os_log_error_impl(&dword_1B5ED1000, a3, OS_LOG_TYPE_ERROR, "For text %{private}@ got %{public}@ when %{public}@ was expected", &v7, 0x20u);

  v6 = *MEMORY[0x1E69E9840];
}

@end