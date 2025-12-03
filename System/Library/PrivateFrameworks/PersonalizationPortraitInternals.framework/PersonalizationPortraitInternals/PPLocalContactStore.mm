@interface PPLocalContactStore
+ (id)defaultStore;
- (BOOL)iterContactNameRecordsForClient:(id)client error:(id *)error block:(id)block;
- (PPLocalContactStore)init;
- (PPLocalContactStore)initWithStorage:(id)storage namedEntityStoreOverride:(id)override;
- (double)similarityForNamedEntity:(id)entity nameRecord:(id)record;
- (id)_incompleteContactFromContactsRecord:(id)record;
- (id)_scoredContactFromContactsRecord:(id)record score:(double)score;
- (id)contactNameRecordChangesForClient:(id)client error:(id *)error;
- (id)rankedContactsWithQuery:(id)query error:(id *)error;
- (id)resolveContactsForNamedEntities:(id)entities;
- (id)upcomingRelevantContactsForQuery:(id)query error:(id *)error;
- (void)feedbackDisambiguationResultWithChoicesIdentifiers:(id)identifiers chosenContactIdentifier:(id)identifier;
- (void)rebuildCachedSignificantContactHandlesWithShouldContinue:(id)continue;
- (void)registerFeedback:(id)feedback completion:(id)completion;
@end

@implementation PPLocalContactStore

+ (id)defaultStore
{
  pthread_mutex_lock(&defaultStore_lock);
  if (!defaultStore_instance)
  {
    v2 = objc_opt_new();
    v3 = defaultStore_instance;
    defaultStore_instance = v2;

    if (!defaultStore_instance)
    {
      v4 = pp_contacts_log_handle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_INFO, "PPLocalContactStore defaultStore did not initialize, will try again later. Device may be Class C locked.", v7, 2u);
      }
    }
  }

  v5 = defaultStore_instance;
  pthread_mutex_unlock(&defaultStore_lock);

  return v5;
}

- (void)rebuildCachedSignificantContactHandlesWithShouldContinue:(id)continue
{
  v69 = *MEMORY[0x277D85DE8];
  continueCopy = continue;
  v5 = +[PPPeopleSuggester sharedInstance];
  rankedContactIdentifiers = [v5 rankedContactIdentifiers];

  if (continueCopy[2](continueCopy))
  {
    v7 = +[PPConfiguration sharedInstance];
    maxRelevantHighlightContacts = [v7 maxRelevantHighlightContacts];

    v9 = [rankedContactIdentifiers count];
    if (v9 >= maxRelevantHighlightContacts)
    {
      v10 = maxRelevantHighlightContacts;
    }

    else
    {
      v10 = v9;
    }

    v11 = objc_alloc(MEMORY[0x277CBEB98]);
    v12 = [rankedContactIdentifiers _pas_proxySubarrayWithRange:{0, v10}];
    v13 = [v11 initWithArray:v12];

    v14 = objc_opt_new();
    v15 = objc_opt_new();
    allObjects = [v13 allObjects];
    [v15 setMatchingIdentifiers:allObjects];

    v17 = +[PPLocalContactStore defaultStore];
    v63 = 0;
    v18 = [v17 contactsWithQuery:v15 error:&v63];
    v19 = v63;

    v47 = v18;
    if (!v18)
    {
      v20 = pp_social_highlights_log_handle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v68 = v19;
        _os_log_error_impl(&dword_23224A000, v20, OS_LOG_TYPE_ERROR, "PPSocialHighlightRanker: unable to fetch contacts: %@", buf, 0xCu);
      }

      v47 = MEMORY[0x277CBEBF8];
    }

    if (continueCopy[2](continueCopy))
    {
      v43 = v19;
      v44 = v15;
      v45 = v13;
      selfCopy = self;
      v46 = rankedContactIdentifiers;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      obj = v47;
      v50 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
      if (v50)
      {
        v49 = *v60;
        do
        {
          for (i = 0; i != v50; ++i)
          {
            if (*v60 != v49)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v59 + 1) + 8 * i);
            v55 = 0u;
            v56 = 0u;
            v57 = 0u;
            v58 = 0u;
            emailAddresses = [v22 emailAddresses];
            v24 = [emailAddresses countByEnumeratingWithState:&v55 objects:v65 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v56;
              do
              {
                for (j = 0; j != v25; ++j)
                {
                  if (*v56 != v26)
                  {
                    objc_enumerationMutation(emailAddresses);
                  }

                  v28 = MEMORY[0x277CFE080];
                  value = [*(*(&v55 + 1) + 8 * j) value];
                  v30 = [v28 normalizedStringFromContactString:value];

                  [v14 addObject:v30];
                }

                v25 = [emailAddresses countByEnumeratingWithState:&v55 objects:v65 count:16];
              }

              while (v25);
            }

            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            phoneNumbers = [v22 phoneNumbers];
            v32 = [phoneNumbers countByEnumeratingWithState:&v51 objects:v64 count:16];
            if (v32)
            {
              v33 = v32;
              v34 = *v52;
              do
              {
                for (k = 0; k != v33; ++k)
                {
                  if (*v52 != v34)
                  {
                    objc_enumerationMutation(phoneNumbers);
                  }

                  v36 = MEMORY[0x277CFE080];
                  value2 = [*(*(&v51 + 1) + 8 * k) value];
                  v38 = [v36 normalizedStringFromContactString:value2];

                  [v14 addObject:v38];
                }

                v33 = [phoneNumbers countByEnumeratingWithState:&v51 objects:v64 count:16];
              }

              while (v33);
            }
          }

          v50 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
        }

        while (v50);
      }

      if (continueCopy[2](continueCopy))
      {
        [(PPContactStorage *)selfCopy->_contactStorage setCachedSignificantContactHandles:v14];
        v13 = v45;
        rankedContactIdentifiers = v46;
        v15 = v44;
        v19 = v43;
LABEL_41:

        goto LABEL_42;
      }

      v39 = pp_contacts_log_handle();
      v13 = v45;
      rankedContactIdentifiers = v46;
      v15 = v44;
      v19 = v43;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v40 = "PPLocalContactStore: stopped cache rebuild before serialization.";
        goto LABEL_39;
      }
    }

    else
    {
      v39 = pp_contacts_log_handle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v40 = "PPLocalContactStore: stopped cache rebuild after contact matching call.";
LABEL_39:
        _os_log_impl(&dword_23224A000, v39, OS_LOG_TYPE_DEFAULT, v40, buf, 2u);
      }
    }

    goto LABEL_41;
  }

  v13 = pp_contacts_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "PPLocalContactStore: stopped cache rebuild after people suggester call.", buf, 2u);
  }

LABEL_42:

  v41 = *MEMORY[0x277D85DE8];
}

- (void)registerFeedback:(id)feedback completion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  feedbackCopy = feedback;
  completionCopy = completion;
  v7 = pp_contacts_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138739971;
    v12 = feedbackCopy;
    _os_log_debug_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEBUG, "Contact feedback received: %{sensitive}@", &v11, 0xCu);
  }

  feedbackItems = [feedbackCopy feedbackItems];
  v9 = [feedbackItems count];

  if (v9)
  {
    [PPFeedbackStorage logFeedback:feedbackCopy domain:4 domainStatus:2 inBackground:0];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)contactNameRecordChangesForClient:(id)client error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  contactStorage = self->_contactStorage;
  v25 = 0;
  v8 = [(PPContactStorage *)contactStorage contactsChangeHistoryForClient:clientCopy error:&v25];
  v9 = v25;
  if (v8)
  {
    v24 = 0;
    v10 = self->_contactStorage;
    v23 = 0;
    v11 = [(PPContactStorage *)v10 contactNameRecordsWithHistoryResult:v8 truncated:&v24 error:&v23];
    v12 = v23;
    v13 = v12;
    if (v24 == 1)
    {
      v14 = pp_contacts_log_handle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v14, OS_LOG_TYPE_DEFAULT, "Contacts change history truncated", buf, 2u);
      }

      [(PPContactStorage *)self->_contactStorage clearChangeHistoryForClient:clientCopy historyResult:v8];
      v15 = [MEMORY[0x277D3A368] contactNameRecordChangeResultWithChanges:0 changesTruncated:1];
    }

    else if (v11)
    {
      [PPContactScorer scoreContactNameRecords:v11];
      [(PPContactStorage *)self->_contactStorage clearChangeHistoryForClient:clientCopy historyResult:v8];
      v18 = [v11 _pas_mappedArrayWithTransform:&__block_literal_global_127];
      v15 = [MEMORY[0x277D3A368] contactNameRecordChangeResultWithChanges:v18 changesTruncated:0];
    }

    else
    {
      if (error)
      {
        v19 = v12;
        *error = v13;
      }

      v20 = pp_contacts_log_handle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v13;
        _os_log_error_impl(&dword_23224A000, v20, OS_LOG_TYPE_ERROR, "contactNameRecordChangeResultWithChanges failed with error: %@", buf, 0xCu);
      }

      v15 = 0;
    }
  }

  else
  {
    v16 = pp_contacts_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v9;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "failed to load CN change history during changes call: %@", buf, 0xCu);
    }

    if (error)
    {
      v17 = v9;
      v15 = 0;
      *error = v9;
    }

    else
    {
      v15 = 0;
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)iterContactNameRecordsForClient:(id)client error:(id *)error block:(id)block
{
  v29 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  blockCopy = block;
  contactStorage = self->_contactStorage;
  v26 = 0;
  v11 = [(PPContactStorage *)contactStorage contactsChangeHistoryForClient:clientCopy error:&v26];
  v12 = v26;
  if (!v11)
  {
    v13 = pp_contacts_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v12;
      _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "PPLocalContactStore: failed to load CN change history during full name load: %@", buf, 0xCu);
    }

    if (error)
    {
      v14 = v12;
      *error = v12;
    }
  }

  v15 = self->_contactStorage;
  v25 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __67__PPLocalContactStore_iterContactNameRecordsForClient_error_block___block_invoke;
  v23[3] = &unk_278972788;
  v16 = blockCopy;
  v24 = v16;
  v17 = [(PPContactStorage *)v15 iterAllNameRecordsFromAllSourcesWithError:&v25 block:v23];
  v18 = v25;
  if (v17)
  {
    if (v11)
    {
      [(PPContactStorage *)self->_contactStorage clearChangeHistoryForClient:clientCopy historyResult:v11];
    }
  }

  else
  {
    v19 = pp_contacts_log_handle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v18;
      _os_log_error_impl(&dword_23224A000, v19, OS_LOG_TYPE_ERROR, "PPLocalContactStore: failed to load internal name records: %@", buf, 0xCu);
    }

    if (error)
    {
      v20 = v18;
      *error = v18;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v17;
}

void __67__PPLocalContactStore_iterContactNameRecordsForClient_error_block___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CBEB18];
  v6 = a2;
  v9 = [[v5 alloc] initWithObjects:{v6, 0}];

  [PPContactScorer scoreContactNameRecords:v9];
  v7 = *(a1 + 32);
  v8 = [v9 objectAtIndexedSubscript:0];
  (*(v7 + 16))(v7, v8, a3);
}

- (void)feedbackDisambiguationResultWithChoicesIdentifiers:(id)identifiers chosenContactIdentifier:(id)identifier
{
  v13 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  v7 = pp_contacts_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    v10 = [identifiersCopy count];
    v11 = 2112;
    v12 = identifierCopy;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPLocalContactStore: feedbackDisambiguationResultWithChoicesIdentifiers choice count: %tu chose: %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)upcomingRelevantContactsForQuery:(id)query error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  v7 = objc_opt_new();
  startDate = [queryCopy startDate];
  [v7 setFromDate:startDate];

  endDate = [queryCopy endDate];
  [v7 setToDate:endDate];

  [v7 setMatchCategory:1];
  v10 = objc_autoreleasePoolPush();
  v11 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{&unk_284783BB8, 0}];
  objc_autoreleasePoolPop(v10);
  [v7 setMatchingCategories:v11];

  sourceBundleIds = [queryCopy sourceBundleIds];
  [v7 setMatchingSourceBundleIds:sourceBundleIds];

  [v7 setLimit:50];
  v13 = [(PPLocalNamedEntityStore *)self->_namedEntityStore rankedNamedEntitiesWithQuery:v7 error:error];
  v14 = v13;
  if (v13)
  {
    if ([v13 count])
    {
      v15 = [(PPLocalContactStore *)self resolveContactsForNamedEntities:v14];
      v16 = objc_opt_new();
      v17 = [v15 sortedArrayUsingComparator:&__block_literal_global_122];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __62__PPLocalContactStore_upcomingRelevantContactsForQuery_error___block_invoke_2;
      v25[3] = &unk_278972760;
      v26 = v16;
      v18 = v16;
      v19 = [v17 _pas_filteredArrayWithTest:v25];

      v20 = pp_contacts_log_handle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [v15 count];
        v22 = [v19 count];
        *buf = 134218240;
        v28 = v21;
        v29 = 2048;
        v30 = v22;
        _os_log_impl(&dword_23224A000, v20, OS_LOG_TYPE_INFO, "PPLocalContactStore: resolved a total of %tu matches into %tu contacts.", buf, 0x16u);
      }
    }

    else
    {
      v15 = pp_contacts_log_handle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEFAULT, "PPLocalContactStore: no named entities retrieved, returning no contacts.", buf, 2u);
      }

      v19 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v15 = pp_contacts_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23224A000, v15, OS_LOG_TYPE_ERROR, "PPLocalContactStore: unable to fetch named entities.", buf, 2u);
    }

    v19 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v19;
}

uint64_t __62__PPLocalContactStore_upcomingRelevantContactsForQuery_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 contact];
  v6 = [v5 identifier];
  v7 = [v4 containsObject:v6];

  if ((v7 & 1) == 0)
  {
    v8 = *(a1 + 32);
    v9 = [v3 contact];
    v10 = [v9 identifier];
    [v8 addObject:v10];
  }

  return v7 ^ 1u;
}

uint64_t __62__PPLocalContactStore_upcomingRelevantContactsForQuery_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277D3A578];
  v5 = a3;
  [a2 score];
  v7 = v6;
  [v5 score];
  v9 = v8;

  return [v4 reverseCompareDouble:v7 withDouble:v9];
}

- (id)resolveContactsForNamedEntities:(id)entities
{
  v21 = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  v5 = objc_opt_new();
  contactStorage = self->_contactStorage;
  v18 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__PPLocalContactStore_resolveContactsForNamedEntities___block_invoke;
  v14[3] = &unk_278972738;
  v7 = entitiesCopy;
  v15 = v7;
  v8 = v5;
  v16 = v8;
  selfCopy = self;
  LOBYTE(contactStorage) = [(PPContactStorage *)contactStorage iterAllNameRecordsFromAllSourcesWithError:&v18 block:v14];
  v9 = v18;
  if (contactStorage)
  {
    v10 = v8;
  }

  else
  {
    v11 = pp_contacts_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v9;
      _os_log_error_impl(&dword_23224A000, v11, OS_LOG_TYPE_ERROR, "PPLocalContactStore: error iterating name records: %@", buf, 0xCu);
    }

    v10 = MEMORY[0x277CBEBF8];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

void __55__PPLocalContactStore_resolveContactsForNamedEntities___block_invoke(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 source] == 1)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = *(a1 + 32);
    v38 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (!v38)
    {
      goto LABEL_20;
    }

    v37 = *v41;
    while (1)
    {
      v4 = 0;
      do
      {
        v5 = a1;
        if (*v41 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v40 + 1) + 8 * v4);
        v39 = objc_autoreleasePoolPush();
        v7 = [v3 firstName];
        v8 = [v6 item];
        v9 = [v8 name];
        v10 = [v7 localizedCaseInsensitiveCompare:v9];

        v11 = [v3 lastName];
        v12 = [v6 item];
        v13 = [v12 name];
        v14 = [v11 localizedCaseInsensitiveCompare:v13];

        v15 = [v3 nickname];
        v16 = [v6 item];
        v17 = [v16 name];
        v18 = [v15 localizedCaseInsensitiveCompare:v17];

        if (!v10 || !v14 || !v18)
        {
          a1 = v5;
          v23 = *(v5 + 40);
          v24 = *(v5 + 48);
          [v6 score];
          goto LABEL_13;
        }

        v19 = [v3 localizedFullName];
        v20 = [v6 item];
        v21 = [v20 name];
        v22 = [v19 localizedCaseInsensitiveContainsString:v21];

        a1 = v5;
        if (v22)
        {
          v23 = *(v5 + 40);
          v24 = *(v5 + 48);
          [v6 score];
          v26 = v25 * 0.9;
LABEL_13:
          v27 = [v24 _scoredContactFromContactsRecord:v3 score:v26];
          [v23 addObject:v27];
          v28 = v39;
LABEL_14:

          goto LABEL_15;
        }

        [*(v5 + 48) similarityForNamedEntity:v6 nameRecord:v3];
        v28 = v39;
        if (v29 > 0.5)
        {
          v30 = v29;
          v31 = *(a1 + 40);
          v32 = *(a1 + 48);
          [v6 score];
          v27 = [v32 _scoredContactFromContactsRecord:v3 score:v30 * 0.9 * v33];
          [v31 addObject:v27];
          goto LABEL_14;
        }

LABEL_15:
        objc_autoreleasePoolPop(v28);
        ++v4;
      }

      while (v38 != v4);
      v34 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      v38 = v34;
      if (!v34)
      {
LABEL_20:

        break;
      }
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (id)_scoredContactFromContactsRecord:(id)record score:(double)score
{
  v6 = MEMORY[0x277D3A488];
  recordCopy = record;
  v8 = [v6 alloc];
  v9 = [(PPLocalContactStore *)self _incompleteContactFromContactsRecord:recordCopy];

  v10 = [v8 initWithContact:v9 scoredPhoneNumbers:MEMORY[0x277CBEBF8] scoredEmailAddresses:MEMORY[0x277CBEBF8] scoredSocialProfiles:MEMORY[0x277CBEBF8] scoredPostalAddresses:MEMORY[0x277CBEBF8] score:0 flags:score];

  return v10;
}

- (id)_incompleteContactFromContactsRecord:(id)record
{
  v3 = MEMORY[0x277D3A358];
  recordCopy = record;
  v5 = [v3 alloc];
  sourceIdentifier = [recordCopy sourceIdentifier];
  firstName = [recordCopy firstName];
  middleName = [recordCopy middleName];
  lastName = [recordCopy lastName];
  nickname = [recordCopy nickname];
  localizedFullName = [recordCopy localizedFullName];

  v12 = [v5 initWithIdentifier:sourceIdentifier source:1 namePrefix:0 givenName:firstName middleName:middleName familyName:lastName nameSuffix:0 nickname:nickname localizedFullName:localizedFullName organizationName:0 jobTitle:0 birthday:0 nonGregorianBirthday:0 phoneNumbers:0 emailAddresses:0 socialProfiles:0 postalAddresses:0];

  return v12;
}

- (double)similarityForNamedEntity:(id)entity nameRecord:(id)record
{
  recordCopy = record;
  item = [entity item];
  name = [item name];
  localizedLowercaseString = [name localizedLowercaseString];
  v9 = *MEMORY[0x277CBE768];
  v10 = [localizedLowercaseString stringByApplyingTransform:*MEMORY[0x277CBE768] reverse:0];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = &stru_284759D38;
  }

  v13 = v12;

  v14 = objc_alloc(MEMORY[0x277CCACA8]);
  firstName = [recordCopy firstName];
  lastName = [recordCopy lastName];

  v17 = [v14 initWithFormat:@"%@ %@", firstName, lastName];
  v18 = [v17 stringByApplyingTransform:v9 reverse:0];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = &stru_284759D38;
  }

  v21 = v20;

  [MEMORY[0x277D3A578] jaroSimilarityForString:v13 other:v21];
  v23 = v22;

  return v23;
}

- (id)rankedContactsWithQuery:(id)query error:(id *)error
{
  v22[1] = *MEMORY[0x277D85DE8];
  queryCopy = query;
  if ([queryCopy hasNoConstraints])
  {
    error = [PPContactScorer mostRelevantContactsWithStore:self];
  }

  else if ([queryCopy onlyQueryMostRelevantContacts])
  {
    matchingName = [queryCopy matchingName];
    v8 = [matchingName length];

    if (v8)
    {
      matchingName2 = [queryCopy matchingName];
      error = [PPContactScorer mostRelevantContactsWithName:matchingName2 store:self];
    }

    else
    {
      if (error)
      {
        v11 = MEMORY[0x277CCA9B8];
        v12 = *MEMORY[0x277D3A580];
        v21 = *MEMORY[0x277D3A588];
        v22[0] = @"PPLocalContactStore rankedContactsWithQuery passed PPContactQuery with onlyQueryMostRelevantContacts and an unsupported matching property";
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
        *error = [v11 errorWithDomain:v12 code:8 userInfo:v13];
      }

      v14 = pp_default_log_handle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        v19 = 138412290;
        v20 = @"PPLocalContactStore rankedContactsWithQuery passed PPContactQuery with onlyQueryMostRelevantContacts and an unsupported matching property";
        _os_log_fault_impl(&dword_23224A000, v14, OS_LOG_TYPE_FAULT, "%@", &v19, 0xCu);
      }

      error = 0;
    }
  }

  else
  {
    v10 = [(PPLocalContactStore *)self contactsWithQuery:queryCopy error:error];
    if (v10)
    {
      error = [PPContactScorer scoredContactsWithContacts:v10];
    }

    else if (error)
    {
      v15 = pp_contacts_log_handle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v18 = *error;
        v19 = 138412290;
        v20 = v18;
        _os_log_error_impl(&dword_23224A000, v15, OS_LOG_TYPE_ERROR, "rankedContactsWithQuery: %@", &v19, 0xCu);
      }

      error = 0;
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return error;
}

- (PPLocalContactStore)init
{
  v3 = +[PPSQLDatabase sharedInstance];
  if (v3)
  {
    v4 = [[PPContactStorage alloc] initWithDatabase:v3 foundInAppsHarvestStoreGetter:&__block_literal_global_3564];
    v5 = [[PPNamedEntityStorage alloc] initWithDatabase:v3];
    v6 = [objc_alloc(MEMORY[0x277D425F0]) initWithResult:self];
    v7 = [PPLocalNamedEntityStore alloc];
    v8 = +[PPTrialWrapper sharedInstance];
    v9 = [(PPLocalNamedEntityStore *)v7 initWithStorage:v5 topicStoreForNamedEntityMapping:0 lazyContactStoreForMapsFeedback:v6 trialWrapper:v8];

    if (v4)
    {
      self = [(PPLocalContactStore *)self initWithStorage:v4 namedEntityStoreOverride:v9];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PPLocalContactStore)initWithStorage:(id)storage namedEntityStoreOverride:(id)override
{
  storageCopy = storage;
  overrideCopy = override;
  v12.receiver = self;
  v12.super_class = PPLocalContactStore;
  v9 = [(PPLocalContactStore *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contactStorage, storage);
    objc_storeStrong(&v10->_namedEntityStore, override);
  }

  return v10;
}

@end