@interface _PSContactSuggester
+ (id)_cascadeContentForContactPriors;
+ (id)_cascadeContentForPriorsArchive:(id)a3 cascadeContactEnumerator:(id)a4;
+ (id)_filteredContactDictionaryFromCascadeContent:(id)a3 forContactIdentifiers:(id)a4;
+ (id)contactPriorSuggestionsForText:(id)a3;
+ (id)defaultCorrelationsSessionFileForContactPriors;
+ (void)_writeArchiveToCascade:(id)a3;
- (CNContactStore)contactStore;
- (_CDInteractionStore)interactionStore;
- (_PSContactSuggester)init;
- (float)sigmoid:(float)a3;
- (id)computeContactPriorsForContactIdentifiers:(id)a3;
- (id)computeContactPriorsForContactIdentifiers:(id)a3 withTimeConstant:(int64_t)a4 withInteractionMechanisms:(id)a5 asOf:(id)a6 overLookbackOf:(int64_t)a7;
- (id)contactAndGroupSuggestionsWithMaxSuggestions:(int64_t)a3 lookBackDays:(int64_t)a4 interactions:(id)a5;
- (id)contactKeysToFetch;
- (id)contactPriorsForContactIdentifiers:(id)a3;
- (id)contactSuggestionsForPeopleWidgetWithMaxSuggestions:(int64_t)a3 excludeContactsWithIdentifiers:(id)a4;
- (id)contactSuggestionsWithMaxSuggestions:(int64_t)a3 excludeContactsByIdentifiers:(id)a4;
- (id)contactSuggestionsWithMaxSuggestions:(int64_t)a3 excludeContactsByIdentifiers:(id)a4 interactionHistoryCap:(int64_t)a5;
- (id)contactSuggestionsWithMaxSuggestions:(int64_t)a3 excludeContactsByIdentifiers:(id)a4 lookBackDays:(int64_t)a5 interactions:(id)a6 modeAvocado:(BOOL)a7 interactionHistoryCap:(int64_t)a8;
- (id)contactSuggestionsWithMaxSuggestions:(int64_t)a3 excludeContactsWithIdentifiers:(id)a4;
- (id)contactSuggestionsWithMaxSuggestions:(int64_t)a3 interactionDomains:(id)a4 appleUsersOnly:(BOOL)a5;
- (id)contactSuggestionsWithMaxSuggestions:(int64_t)a3 interactionDomains:(id)a4 referenceDate:(id)a5 appleUsersOnly:(BOOL)a6 includeGroups:(BOOL)a7 excludeContactsByIdentifiers:(id)a8;
- (id)gameCenterSuggestionsWithMaxSuggestions:(int64_t)a3 interactionDomains:(id)a4 appleUsersOnly:(BOOL)a5 includeGroupSuggestions:(BOOL)a6 excludeContactsByIdentifiers:(id)a7;
- (id)getDefaultContactPriorForContactId:(id)a3 withModelName:(id)a4 withModelVersion:(id)a5;
- (id)iMessageDomainIdentifiersForDomainIdentifiers:(id)a3;
- (void)computeAndSaveContactPriorArchive;
- (void)dealloc;
- (void)gameCenterSuggestionConsumedWithContactHandle:(id)a3;
- (void)gameCenterSuggestionConsumedWithGroupIdentifier:(id)a3;
- (void)writeArchive:(id)a3;
@end

@implementation _PSContactSuggester

- (_PSContactSuggester)init
{
  v10.receiver = self;
  v10.super_class = _PSContactSuggester;
  v2 = [(_PSContactSuggester *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc(MEMORY[0x1E696B0B8]);
    v5 = [v4 initWithMachServiceName:*MEMORY[0x1E6997A00] options:4096];
    connection = v3->_connection;
    v3->_connection = v5;

    v7 = _CDInteractionNSXPCInterface();
    [(NSXPCConnection *)v3->_connection setRemoteObjectInterface:v7];

    [(NSXPCConnection *)v3->_connection resume];
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:v3 selector:sel_computeAndSaveContactPriorArchive name:*MEMORY[0x1E6997A08] object:0];
  }

  return v3;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = _PSContactSuggester;
  [(_PSContactSuggester *)&v3 dealloc];
}

- (_CDInteractionStore)interactionStore
{
  os_unfair_lock_lock(&self->_lock);
  interactionStore = self->_interactionStore;
  if (!interactionStore)
  {
    v4 = MEMORY[0x1E69978F8];
    v5 = [MEMORY[0x1E69978F8] defaultDatabaseDirectory];
    v6 = [v4 storeWithDirectory:v5 readOnly:1];
    v7 = self->_interactionStore;
    self->_interactionStore = v6;

    interactionStore = self->_interactionStore;
  }

  v8 = interactionStore;
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (CNContactStore)contactStore
{
  os_unfair_lock_lock(&self->_lock);
  contactStore = self->_contactStore;
  if (!contactStore)
  {
    v4 = objc_alloc_init(getCNContactStoreClass());
    v5 = self->_contactStore;
    self->_contactStore = v4;

    contactStore = self->_contactStore;
  }

  v6 = contactStore;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)iMessageDomainIdentifiersForDomainIdentifiers:(id)a3
{
  v57 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v3 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218243;
    *&buf[4] = [v32 count];
    *&buf[12] = 2113;
    *&buf[14] = v32;
    _os_log_impl(&dword_1B5ED1000, v3, OS_LOG_TYPE_DEFAULT, "iMessageDomainIdentifiersForDomainIdentifiers running for %tu domain identifiers: %{private}@", buf, 0x16u);
  }

  v4 = objc_opt_new();
  v33 = [v32 _pas_leftFoldWithInitialObject:v4 accumulate:&__block_literal_global_6];

  if ([v33 count])
  {
    v5 = qos_class_self();
    if (v5 <= QOS_CLASS_UTILITY)
    {
      v6 = 17;
    }

    else
    {
      v6 = v5;
    }

    v35 = v6;
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v37 = dispatch_queue_create("iMessageDomainIdentifiersForDomainIdentifiers", v7);

    v38 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v33, "count")}];
    v36 = dispatch_semaphore_create(0);
    v8 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v33 count];
      *buf = 134218243;
      *&buf[4] = v9;
      *&buf[12] = 2113;
      *&buf[14] = v33;
      _os_log_impl(&dword_1B5ED1000, v8, OS_LOG_TYPE_DEFAULT, "iMessageDomainIdentifiersForDomainIdentifiers querying IMCore for %tu chat identifiers: %{private}@", buf, 0x16u);
    }

    v47 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    obj = v33;
    v10 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v10)
    {
      v11 = *v45;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v45 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v44 + 1) + 8 * i);
          v14 = objc_autoreleasePoolPush();
          v52 = v13;
          v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
          v41[0] = MEMORY[0x1E69E9820];
          v41[1] = 3221225472;
          v41[2] = __69___PSContactSuggester_iMessageDomainIdentifiersForDomainIdentifiers___block_invoke_70;
          v41[3] = &unk_1E7C24330;
          v42 = v38;
          v16 = v36;
          v43 = v16;
          v17 = v15;
          v18 = v37;
          v19 = v41;
          v48 = 0;
          v49 = &v48;
          v50 = 0x2020000000;
          v20 = getIMSPIQueryMessagesWithIDsWithOnlyUnreadAndQOSSymbolLoc_ptr;
          v51 = getIMSPIQueryMessagesWithIDsWithOnlyUnreadAndQOSSymbolLoc_ptr;
          if (!getIMSPIQueryMessagesWithIDsWithOnlyUnreadAndQOSSymbolLoc_ptr)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __getIMSPIQueryMessagesWithIDsWithOnlyUnreadAndQOSSymbolLoc_block_invoke;
            v55 = &unk_1E7C23BF0;
            v56 = &v48;
            __getIMSPIQueryMessagesWithIDsWithOnlyUnreadAndQOSSymbolLoc_block_invoke(buf);
            v20 = v49[3];
          }

          _Block_object_dispose(&v48, 8);
          if (!v20)
          {
            [_PSBlockedHandlesCache beginSyncingWithTU];
            __break(1u);
          }

          (v20)(&unk_1F2D8C078, v17, 1, 0, 1, v35, v18, v19);

          v21 = dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL) == 0;
          objc_autoreleasePoolPop(v14);
          if (!v21)
          {

            v24 = objc_opt_new();
            goto LABEL_25;
          }
        }

        v10 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v22 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v38 count];
      *buf = 134218242;
      *&buf[4] = v23;
      *&buf[12] = 2112;
      *&buf[14] = v38;
      _os_log_impl(&dword_1B5ED1000, v22, OS_LOG_TYPE_DEFAULT, "iMessageDomainIdentifiersForDomainIdentifiers IMCore returned %tu chat identifiers: %@", buf, 0x16u);
    }

    v24 = v38;
LABEL_25:
    v25 = v24;
  }

  else
  {
    v25 = objc_opt_new();
  }

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __69___PSContactSuggester_iMessageDomainIdentifiersForDomainIdentifiers___block_invoke_73;
  v39[3] = &unk_1E7C24358;
  v26 = v25;
  v40 = v26;
  v27 = [v32 _pas_filteredArrayWithTest:v39];
  v28 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [v27 count];
    *buf = 134218243;
    *&buf[4] = v29;
    *&buf[12] = 2113;
    *&buf[14] = v27;
    _os_log_impl(&dword_1B5ED1000, v28, OS_LOG_TYPE_DEFAULT, "_ps_iMessage1on1DomainIdentifiers returning %tu iMessage 1:1 domain identifiers: %{private}@", buf, 0x16u);
  }

  v30 = *MEMORY[0x1E69E9840];

  return v27;
}

- (id)contactSuggestionsWithMaxSuggestions:(int64_t)a3 excludeContactsWithIdentifiers:(id)a4
{
  v6 = a4;
  connection = self->_connection;
  if (connection)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__0;
    v17 = __Block_byref_object_dispose__0;
    v18 = 0;
    v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_80];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __91___PSContactSuggester_contactSuggestionsWithMaxSuggestions_excludeContactsWithIdentifiers___block_invoke_82;
    v12[3] = &unk_1E7C243A0;
    v12[4] = &v13;
    [v8 contactSuggestionsWithMaxSuggestions:v9 excludedContactIds:v6 reply:v12];

    v10 = v14[5];
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

- (id)contactSuggestionsWithMaxSuggestions:(int64_t)a3 excludeContactsByIdentifiers:(id)a4
{
  v6 = a4;
  v7 = [(_PSContactSuggester *)self contactSuggestionsWithMaxSuggestions:a3 excludeContactsByIdentifiers:v6 lookBackDays:+[_PSPrivacyDataRetentionPeriod interactions:"lookbackDurationInDays"]modeAvocado:0, 1];

  return v7;
}

- (id)contactSuggestionsWithMaxSuggestions:(int64_t)a3 excludeContactsByIdentifiers:(id)a4 interactionHistoryCap:(int64_t)a5
{
  v8 = a4;
  v9 = [(_PSContactSuggester *)self contactSuggestionsWithMaxSuggestions:a3 excludeContactsByIdentifiers:v8 lookBackDays:+[_PSPrivacyDataRetentionPeriod interactions:"lookbackDurationInDays"]modeAvocado:0 interactionHistoryCap:1, a5];

  return v9;
}

- (id)contactSuggestionsWithMaxSuggestions:(int64_t)a3 interactionDomains:(id)a4 appleUsersOnly:(BOOL)a5
{
  v62 = a5;
  v84[1] = *MEMORY[0x1E69E9840];
  v63 = a4;
  v6 = objc_alloc_init(getCNContactStoreClass());
  v7 = getCNContactIdentifierKey();
  v84[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:1];
  v78 = 0;
  v9 = [v6 _crossPlatformUnifiedMeContactWithKeysToFetch:v8 error:&v78];
  v10 = v78;

  v57 = v10;
  if (v10)
  {
    v11 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_PSContactSuggester contactSuggestionsWithMaxSuggestions:interactionDomains:appleUsersOnly:];
    }
  }

  else if (v9)
  {
    v66 = v9;
    v13 = a3;
    v14 = 1;
    goto LABEL_10;
  }

  v12 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [_PSContactSuggester contactSuggestionsWithMaxSuggestions:interactionDomains:appleUsersOnly:];
  }

  v13 = a3;

  v14 = 0;
  v66 = 0;
LABEL_10:
  v15 = [_PSContactResolver alloc];
  v16 = getCNContactIdentifierKey();
  v83[0] = v16;
  v17 = getCNContactGivenNameKey();
  v83[1] = v17;
  v18 = getCNContactFamilyNameKey();
  v83[2] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:3];
  v59 = v6;
  v20 = [(_PSContactResolver *)v15 initWithContactStore:v6 keysToFetch:v19];

  v21 = [MEMORY[0x1E695DFA0] orderedSet];
  v22 = [MEMORY[0x1E695DF00] date];
  v23 = +[_PSPrivacyDataRetentionPeriod lookbackDurationInDays];
  v65 = v21;
  v24 = v13;
  if ([v21 count] >= v13)
  {
    v48 = v22;
    v27 = v21;
    v26 = v66;
  }

  else
  {
    v25 = (-86400 * v23);
    v68 = v14 ^ 1;
    v27 = v21;
    v26 = v66;
    v60 = v24;
    while (1)
    {
      v28 = [(_PSContactSuggester *)self contactSuggestionsWithMaxSuggestions:v24 interactionDomains:v63 referenceDate:v22 appleUsersOnly:v62 includeGroups:0, v57];
      if (![v28 count])
      {
        break;
      }

      v64 = v22;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      obj = v28;
      v29 = [obj countByEnumeratingWithState:&v74 objects:v82 count:16];
      if (v29)
      {
        v30 = v29;
        v69 = *v75;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v75 != v69)
            {
              objc_enumerationMutation(obj);
            }

            v32 = *(*(&v74 + 1) + 8 * i);
            v33 = [v32 contactIdentifier];
            v34 = [(_PSContactResolver *)v20 contactWithIdentifier:v33];

            if (!v34)
            {
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v35 = [v32 handleAndAppFrequencies];
              v36 = [v35 countByEnumeratingWithState:&v70 objects:v81 count:16];
              if (v36)
              {
                v37 = v36;
                v38 = *v71;
LABEL_21:
                v39 = 0;
                while (1)
                {
                  if (*v71 != v38)
                  {
                    objc_enumerationMutation(v35);
                  }

                  v40 = [*(*(&v70 + 1) + 8 * v39) handle];
                  v34 = [(_PSContactResolver *)v20 resolveContactIfPossibleFromContactIdentifierString:v40 pickFirstOfMultiple:1];

                  if (v34)
                  {
                    break;
                  }

                  if (v37 == ++v39)
                  {
                    v37 = [v35 countByEnumeratingWithState:&v70 objects:v81 count:16];
                    if (v37)
                    {
                      goto LABEL_21;
                    }

                    v34 = 0;
                    break;
                  }
                }

                v27 = v65;
                v26 = v66;
              }

              else
              {
                v34 = 0;
              }
            }

            if (v34)
            {
              v41 = v68;
            }

            else
            {
              v41 = 1;
            }

            if (v41)
            {
              v44 = 1;
            }

            else
            {
              v42 = [v26 identifier];
              v43 = [v34 identifier];
              v44 = [v42 isEqualToString:v43];
            }

            if (v34)
            {
              v45 = v44 == 0;
            }

            else
            {
              v45 = 1;
            }

            if (!v45)
            {
              v46 = [v34 givenName];
              [v32 setGivenName:v46];

              v47 = [v34 familyName];
              [v32 setFamilyName:v47];

              [v27 addObject:v32];
            }
          }

          v30 = [obj countByEnumeratingWithState:&v74 objects:v82 count:16];
        }

        while (v30);
      }

      v48 = [v64 dateByAddingTimeInterval:v25];

      v22 = v48;
      v24 = v60;
      if ([v27 count] >= v60)
      {
        goto LABEL_48;
      }
    }

    v48 = v22;
  }

LABEL_48:
  v49 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
  {
    v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v27, "count")}];
    *buf = 138412290;
    v80 = v50;
    _os_log_impl(&dword_1B5ED1000, v49, OS_LOG_TYPE_INFO, "_PSContactSuggester contacts returned: %@ contacts", buf, 0xCu);
  }

  v51 = [v27 array];
  v52 = [v27 count];
  if (v52 >= v24)
  {
    v53 = v24;
  }

  else
  {
    v53 = v52;
  }

  v54 = [v51 subarrayWithRange:{0, v53}];

  v55 = *MEMORY[0x1E69E9840];

  return v54;
}

- (id)contactSuggestionsWithMaxSuggestions:(int64_t)a3 excludeContactsByIdentifiers:(id)a4 lookBackDays:(int64_t)a5 interactions:(id)a6 modeAvocado:(BOOL)a7 interactionHistoryCap:(int64_t)a8
{
  v9 = a7;
  v137 = *MEMORY[0x1E69E9840];
  v109 = a4;
  v13 = a6;
  if (!v13 && v9)
  {
    v14 = [(_PSContactSuggester *)self interactionStore];
    v15 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:(-86400 * a5)];
    v16 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F2D8C090];
    LOBYTE(v94) = 1;
    v13 = [_PSInteractionStoreUtils interactionsFromStore:v14 referenceDate:v15 withMechanisms:0 withAccount:0 withBundleIds:0 withTargetBundleIds:0 withDirections:v16 singleRecipient:v94 fetchLimit:a8];
  }

  v17 = [MEMORY[0x1E695DF90] dictionary];
  v101 = [MEMORY[0x1E695DF90] dictionary];
  v110 = [MEMORY[0x1E695DF90] dictionary];
  v103 = [MEMORY[0x1E695DF90] dictionary];
  v18 = [MEMORY[0x1E695DFA8] set];
  v19 = [MEMORY[0x1E695DEE8] currentCalendar];
  v20 = objc_alloc(MEMORY[0x1E69C5D58]);
  v127[0] = MEMORY[0x1E69E9820];
  v127[1] = 3221225472;
  v127[2] = __149___PSContactSuggester_contactSuggestionsWithMaxSuggestions_excludeContactsByIdentifiers_lookBackDays_interactions_modeAvocado_interactionHistoryCap___block_invoke;
  v127[3] = &unk_1E7C243E8;
  v21 = v13;
  v128 = v21;
  v129 = self;
  v102 = [v20 initWithBlock:v127];
  v22 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v21 count];
    *buf = 67109376;
    v134 = v9;
    v135 = 2048;
    v136 = v23;
    _os_log_impl(&dword_1B5ED1000, v22, OS_LOG_TYPE_DEFAULT, "_PSContactSuggester modeAvocado:%d, interactions returned:%tu", buf, 0x12u);
  }

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  obj = v21;
  v24 = [obj countByEnumeratingWithState:&v123 objects:v132 count:16];
  v104 = v17;
  v105 = v18;
  v114 = v19;
  if (v24)
  {
    v25 = v24;
    v26 = *v124;
    v27 = a5;
    v96 = *v124;
    do
    {
      v28 = 0;
      v97 = v25;
      do
      {
        if (*v124 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v123 + 1) + 8 * v28);
        v30 = objc_autoreleasePoolPush();
        if ([v29 mechanism] != 13)
        {
          v99 = v30;
          v100 = v28;
          v121 = 0u;
          v122 = 0u;
          v119 = 0u;
          v120 = 0u;
          v31 = [v29 recipients];
          v113 = [v31 countByEnumeratingWithState:&v119 objects:v131 count:16];
          if (v113)
          {
            v32 = v29;
            v111 = v29;
            v112 = *v120;
            v106 = v31;
            do
            {
              for (i = 0; i != v113; ++i)
              {
                if (*v120 != v112)
                {
                  objc_enumerationMutation(v31);
                }

                v34 = *(*(&v119 + 1) + 8 * i);
                v35 = [v32 startDate];
                v36 = [v19 startOfDayForDate:v35];
                [v18 addObject:v36];

                v37 = [v34 personId];
                v38 = [v34 identifier];
                if (v38)
                {
                  v39 = [v17 objectForKeyedSubscript:v38];
                  if (v39)
                  {
                  }

                  else if ([v34 personIdType] == 3 && v37 != 0)
                  {
                    [v17 setObject:v37 forKeyedSubscript:v38];
                  }

                  v40 = [v17 objectForKeyedSubscript:v38];
                  if (v40 && ([v109 containsObject:v40] & 1) == 0)
                  {
                    v42 = [v32 bundleId];
                    v43 = +[_PSConstants messagesBundleId];
                    v44 = [v42 isEqual:v43];

                    if (v44)
                    {
                      v45 = [v102 result];
                      v46 = [v32 domainIdentifier];
                      v47 = [v45 containsObject:v46];

                      if (v47)
                      {
                        [v101 setObject:v38 forKeyedSubscript:v40];
                      }
                    }

                    v48 = [v110 objectForKeyedSubscript:v40];

                    if (!v48)
                    {
                      v49 = objc_alloc_init(_PSContactSuggestion);
                      [v110 setObject:v49 forKeyedSubscript:v40];
                    }

                    v50 = [v111 bundleId];
                    v51 = objc_alloc_init(_PSContactSuggestionHandleAndApp);
                    [(_PSContactSuggestionHandleAndApp *)v51 setHandle:v38];
                    v108 = v50;
                    [(_PSContactSuggestionHandleAndApp *)v51 setAppBundleId:v50];
                    v52 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v111, "mechanism")}];
                    [(_PSContactSuggestionHandleAndApp *)v51 setInteractionMechanism:v52];

                    v53 = [v110 objectForKeyedSubscript:v40];
                    v54 = [v53 handleAndAppFrequencies];
                    v55 = [v54 mutableCopy];

                    if (!v55)
                    {
                      v55 = [MEMORY[0x1E695DF90] dictionary];
                    }

                    v56 = MEMORY[0x1E696AD98];
                    v57 = [v55 objectForKeyedSubscript:v51];
                    v58 = [v56 numberWithInteger:{objc_msgSend(v57, "integerValue") + 1}];
                    [v55 setObject:v58 forKeyedSubscript:v51];

                    v59 = [v110 objectForKeyedSubscript:v40];
                    v107 = v55;
                    [v59 setHandleAndAppFrequencies:v55];

                    v60 = [v103 objectForKeyedSubscript:v51];

                    if (!v60)
                    {
                      v61 = [MEMORY[0x1E695DFA8] set];
                      [v103 setObject:v61 forKeyedSubscript:v51];
                    }

                    v62 = [v103 objectForKeyedSubscript:v51];
                    v63 = [v111 startDate];
                    v64 = [v114 startOfDayForDate:v63];
                    [v62 addObject:v64];

                    v65 = [MEMORY[0x1E695DF90] dictionary];
                    v66 = MEMORY[0x1E696AD98];
                    v67 = [v103 objectForKeyedSubscript:v51];
                    *&v68 = [v67 count] / v27;
                    v69 = [v66 numberWithFloat:v68];
                    [v65 setObject:v69 forKeyedSubscript:v51];

                    v70 = [v110 objectForKeyedSubscript:v40];
                    [v70 setHandleAndAppRegularityScores:v65];

                    v71 = [v110 objectForKeyedSubscript:v40];
                    v72 = [v71 daysInteracted];
                    v73 = [v72 mutableCopy];

                    if (!v73)
                    {
                      v73 = [MEMORY[0x1E695DFA8] set];
                    }

                    v74 = [v111 startDate];
                    v75 = [v114 startOfDayForDate:v74];
                    [v73 addObject:v75];

                    v76 = [v110 objectForKeyedSubscript:v40];
                    [v76 setDaysInteracted:v73];

                    v17 = v104;
                    v18 = v105;
                    v32 = v111;
                    v31 = v106;
                  }
                }

                else
                {
                  v40 = 0;
                }

                v19 = v114;
              }

              v113 = [v31 countByEnumeratingWithState:&v119 objects:v131 count:16];
            }

            while (v113);
          }

          v26 = v96;
          v25 = v97;
          v30 = v99;
          v28 = v100;
        }

        objc_autoreleasePoolPop(v30);
        ++v28;
      }

      while (v28 != v25);
      v25 = [obj countByEnumeratingWithState:&v123 objects:v132 count:16];
    }

    while (v25);
  }

  v77 = [v110 allKeys];
  v78 = [MEMORY[0x1E695DF70] arrayWithCapacity:a3];
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v79 = v77;
  v80 = [v79 countByEnumeratingWithState:&v115 objects:v130 count:16];
  if (v80)
  {
    v81 = v80;
    v82 = *v116;
LABEL_47:
    v83 = 0;
    while (1)
    {
      if (*v116 != v82)
      {
        objc_enumerationMutation(v79);
      }

      v84 = *(*(&v115 + 1) + 8 * v83);
      v85 = [v110 objectForKeyedSubscript:v84];
      [v85 setContactIdentifier:v84];
      v86 = [v101 objectForKeyedSubscript:v84];
      [v85 setSuggestedHandle:v86];

      v87 = [v85 handleAndAppFrequencies];
      v88 = [v87 allValues];
      v89 = [v88 valueForKeyPath:@"@sum.self"];
      [v85 setTotalFrequency:{objc_msgSend(v89, "integerValue")}];

      v90 = [v85 daysInteracted];
      v18 = v105;
      [v85 setRegularityScore:{objc_msgSend(v90, "count") / objc_msgSend(v105, "count")}];

      [v78 addObject:v85];
      v91 = [v78 count];

      if (v91 >= a3)
      {
        break;
      }

      if (v81 == ++v83)
      {
        v81 = [v79 countByEnumeratingWithState:&v115 objects:v130 count:16];
        if (v81)
        {
          goto LABEL_47;
        }

        break;
      }
    }
  }

  v92 = *MEMORY[0x1E69E9840];

  return v78;
}

- (id)gameCenterSuggestionsWithMaxSuggestions:(int64_t)a3 interactionDomains:(id)a4 appleUsersOnly:(BOOL)a5 includeGroupSuggestions:(BOOL)a6 excludeContactsByIdentifiers:(id)a7
{
  v103 = a5;
  v104 = a6;
  v181 = *MEMORY[0x1E69E9840];
  v106 = a4;
  v123 = a7;
  v102 = objc_alloc_init(getCNContactStoreClass());
  v8 = getCNContactIdentifierKey();
  v176 = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v176 count:1];
  v159 = 0;
  v113 = [v102 _crossPlatformUnifiedMeContactWithKeysToFetch:v9 error:&v159];
  v101 = v159;

  if (v101)
  {
    v10 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_PSContactSuggester contactSuggestionsWithMaxSuggestions:interactionDomains:appleUsersOnly:];
    }

    goto LABEL_5;
  }

  if (!v113)
  {
LABEL_5:
    v11 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_PSContactSuggester contactSuggestionsWithMaxSuggestions:interactionDomains:appleUsersOnly:];
    }

    v12 = 0;
    v113 = 0;
    goto LABEL_10;
  }

  v12 = 1;
LABEL_10:
  v13 = [_PSContactResolver alloc];
  v14 = getCNContactIdentifierKey();
  v175[0] = v14;
  v15 = getCNContactGivenNameKey();
  v175[1] = v15;
  v16 = getCNContactFamilyNameKey();
  v175[2] = v16;
  v17 = getCNContactPhoneNumbersKey();
  v175[3] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v175 count:4];
  v126 = [(_PSContactResolver *)v13 initWithContactStore:v102 keysToFetch:v18];

  v112 = [MEMORY[0x1E695DFA0] orderedSet];
  v116 = [MEMORY[0x1E695DFA0] orderedSet];
  v109 = [MEMORY[0x1E695DF00] date];
  v19 = +[_PSPrivacyDataRetentionPeriod lookbackDurationInDays];
  v153 = 0;
  v154 = &v153;
  v155 = 0x3032000000;
  v156 = __Block_byref_object_copy__0;
  v157 = __Block_byref_object_dispose__0;
  v158 = [MEMORY[0x1E695DFA8] set];
  v20 = BiomeLibrary();
  v21 = [v20 GameCenter];
  v100 = [v21 SuggestionFeedback];

  v99 = [v100 publisherWithUseCase:@"GameCenterSuggestionFeedback"];
  v152[0] = MEMORY[0x1E69E9820];
  v152[1] = 3221225472;
  v152[2] = __150___PSContactSuggester_gameCenterSuggestionsWithMaxSuggestions_interactionDomains_appleUsersOnly_includeGroupSuggestions_excludeContactsByIdentifiers___block_invoke_114;
  v152[3] = &unk_1E7C24430;
  v152[4] = &v153;
  v22 = [v99 sinkWithCompletion:&__block_literal_global_113 receiveInput:v152];
  v23 = (-86400 * v19);
  v115 = v12 ^ 1;
  do
  {
    if ([v116 count] >= a3)
    {
      break;
    }

    *&v170 = 0;
    *(&v170 + 1) = &v170;
    v171 = 0x3032000000;
    v172 = __Block_byref_object_copy__0;
    v173 = __Block_byref_object_dispose__0;
    v174 = 0;
    connection = self->_connection;
    v151[0] = MEMORY[0x1E69E9820];
    v151[1] = 3221225472;
    v151[2] = __150___PSContactSuggester_gameCenterSuggestionsWithMaxSuggestions_interactionDomains_appleUsersOnly_includeGroupSuggestions_excludeContactsByIdentifiers___block_invoke_2;
    v151[3] = &unk_1E7C24458;
    v151[4] = &v170;
    v25 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v151];
    v150[0] = MEMORY[0x1E69E9820];
    v150[1] = 3221225472;
    v150[2] = __150___PSContactSuggester_gameCenterSuggestionsWithMaxSuggestions_interactionDomains_appleUsersOnly_includeGroupSuggestions_excludeContactsByIdentifiers___block_invoke_117;
    v150[3] = &unk_1E7C243A0;
    v150[4] = &v170;
    [v25 contactSuggestionsWithMaxSuggestions:a3 interactionDomains:v106 referenceDate:v109 appleUsersOnly:v103 includeGroups:v104 excludeContactsByIdentifiers:v123 reply:v150];

    v107 = [*(*(&v170 + 1) + 40) count];
    if (!v107)
    {
      goto LABEL_67;
    }

    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    obj = *(*(&v170 + 1) + 40);
    v118 = [obj countByEnumeratingWithState:&v146 objects:v169 count:16];
    if (!v118)
    {
      goto LABEL_66;
    }

    v117 = *v147;
    do
    {
      for (i = 0; i != v118; ++i)
      {
        if (*v147 != v117)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v146 + 1) + 8 * i);
        v124 = [v26 contactIdentifier];
        v120 = v26;
        v119 = [v26 groupIdentifier];
        if (v124)
        {
          v27 = [v26 suggestedHandle];
          v28 = [(_PSContactResolver *)v126 contactWithIdentifier:v124];
          if (!v28)
          {
            v144 = 0u;
            v145 = 0u;
            v142 = 0u;
            v143 = 0u;
            v29 = [v26 handleAndAppFrequencies];
            v30 = [v29 countByEnumeratingWithState:&v142 objects:v168 count:16];
            if (v30)
            {
              v31 = *v143;
LABEL_22:
              v32 = 0;
              while (1)
              {
                if (*v143 != v31)
                {
                  objc_enumerationMutation(v29);
                }

                v33 = [*(*(&v142 + 1) + 8 * v32) handle];
                v28 = [(_PSContactResolver *)v126 resolveContactIfPossibleFromContactIdentifierString:v33 pickFirstOfMultiple:1];

                if (v28)
                {
                  break;
                }

                if (v30 == ++v32)
                {
                  v30 = [v29 countByEnumeratingWithState:&v142 objects:v168 count:16];
                  if (v30)
                  {
                    goto LABEL_22;
                  }

                  goto LABEL_28;
                }
              }
            }

            else
            {
LABEL_28:
              v28 = 0;
            }
          }

          if (v28)
          {
            v34 = v115;
          }

          else
          {
            v34 = 1;
          }

          if (v34)
          {
            if (!v28)
            {
LABEL_63:

              goto LABEL_64;
            }
          }

          else
          {
            v35 = [v113 identifier];
            v36 = [(_PSSuggestion *)v28 identifier];
            v37 = [v35 isEqualToString:v36];

            if (v37)
            {
              goto LABEL_63;
            }
          }

          v58 = [_PSRecipient alloc];
          v59 = [(_PSSuggestion *)v28 identifier];
          v60 = [(_PSRecipient *)v58 initWithIdentifier:v59 handle:v27 contact:0];

          v61 = [(_PSSuggestion *)v28 givenName];
          [(_PSRecipient *)v60 setGivenName:v61];

          v62 = [(_PSSuggestion *)v28 familyName];
          [(_PSRecipient *)v60 setFamilyName:v62];

          v63 = [_PSSuggestion alloc];
          v167 = v60;
          v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v167 count:1];
          v65 = [(_PSSuggestion *)v63 initWithBundleID:0 conversationIdentifier:0 groupName:0 recipients:v64];

          v66 = v116;
          if (v27)
          {
            if ([v154[5] containsObject:v27])
            {
              v66 = v112;
            }

            else
            {
              v66 = v116;
            }
          }

          [v66 addObject:v65];

          goto LABEL_63;
        }

        if (v119)
        {
          v38 = [v26 groupRecipients];
          v39 = [v38 count] == 0;

          if (!v39)
          {
            v40 = MEMORY[0x1E695DF70];
            v41 = [v120 groupRecipients];
            v27 = [v40 arrayWithCapacity:{objc_msgSend(v41, "count")}];

            v140 = 0u;
            v141 = 0u;
            v138 = 0u;
            v139 = 0u;
            v42 = [v120 groupRecipients];
            v43 = [v42 countByEnumeratingWithState:&v138 objects:v166 count:16];
            if (v43)
            {
              v44 = *v139;
              do
              {
                for (j = 0; j != v43; ++j)
                {
                  if (*v139 != v44)
                  {
                    objc_enumerationMutation(v42);
                  }

                  v46 = *(*(&v138 + 1) + 8 * j);
                  v47 = [_PSRecipient alloc];
                  v48 = [v46 personId];
                  v49 = [v46 identifier];
                  v50 = [v46 displayName];
                  v51 = [(_PSRecipient *)v47 initWithIdentifier:v48 handle:v49 displayName:v50 contact:0];

                  [v27 addObject:v51];
                }

                v43 = [v42 countByEnumeratingWithState:&v138 objects:v166 count:16];
              }

              while (v43);
            }

            v52 = [_PSSuggestion alloc];
            v53 = [v120 groupName];
            v28 = [(_PSSuggestion *)v52 initWithBundleID:0 conversationIdentifier:v119 groupName:v53 recipients:v27];

            v54 = [v120 imageURL];
            if (v54)
            {
              v160 = 0;
              v161 = &v160;
              v162 = 0x2050000000;
              v55 = getINImageClass_softClass;
              v163 = getINImageClass_softClass;
              if (!getINImageClass_softClass)
              {
                *&buf = MEMORY[0x1E69E9820];
                *(&buf + 1) = 3221225472;
                v178 = __getINImageClass_block_invoke;
                v179 = &unk_1E7C23BF0;
                v180 = &v160;
                __getINImageClass_block_invoke(&buf);
                v55 = v161[3];
              }

              v56 = v55;
              _Block_object_dispose(&v160, 8);
              v111 = [v120 imageURL];
              v110 = [v55 imageWithURL:v111];
              v57 = v110;
            }

            else
            {
              v57 = 0;
            }

            [(_PSSuggestion *)v28 setImage:v57];
            if (v54)
            {
            }

            v67 = [v120 messagesGroupIdentifier];
            [(_PSSuggestion *)v28 setMessagesGroupIdentifier:v67];

            v68 = [v154[5] containsObject:v119];
            v69 = v116;
            if (v68)
            {
              v70 = +[_PSLogging generalChannel];
              if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v119;
                _os_log_impl(&dword_1B5ED1000, v70, OS_LOG_TYPE_INFO, "Boosting Game Center suggestion with groupIdentifier: %@ due to previous feedback", &buf, 0xCu);
              }

              v69 = v112;
            }

            [v69 addObject:v28];
            goto LABEL_63;
          }
        }

LABEL_64:
      }

      v118 = [obj countByEnumeratingWithState:&v146 objects:v169 count:16];
    }

    while (v118);
LABEL_66:

    v71 = [v109 dateByAddingTimeInterval:v23];

    v109 = v71;
LABEL_67:
    _Block_object_dispose(&v170, 8);
  }

  while (v107);
  v72 = [v116 array];
  [v112 addObjectsFromArray:v72];

  v73 = objc_opt_new();
  v74 = objc_opt_new();
  v75 = [v112 reverseObjectEnumerator];
  v76 = [v75 allObjects];
  v135[0] = MEMORY[0x1E69E9820];
  v135[1] = 3221225472;
  v135[2] = __150___PSContactSuggester_gameCenterSuggestionsWithMaxSuggestions_interactionDomains_appleUsersOnly_includeGroupSuggestions_excludeContactsByIdentifiers___block_invoke_120;
  v135[3] = &unk_1E7C24480;
  v77 = v73;
  v136 = v77;
  v78 = v74;
  v137 = v78;
  v79 = [v76 _pas_filteredArrayWithTest:v135];

  v122 = [MEMORY[0x1E695DFA0] orderedSet];
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v125 = v79;
  v80 = [v125 countByEnumeratingWithState:&v131 objects:v165 count:16];
  if (v80)
  {
    v81 = *v132;
    do
    {
      for (k = 0; k != v80; ++k)
      {
        if (*v132 != v81)
        {
          objc_enumerationMutation(v125);
        }

        v83 = *(*(&v131 + 1) + 8 * k);
        v84 = [v83 recipients];
        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        v85 = v84;
        v86 = [v85 countByEnumeratingWithState:&v127 objects:v164 count:16];
        if (v86)
        {
          v87 = *v128;
          while (2)
          {
            for (m = 0; m != v86; ++m)
            {
              if (*v128 != v87)
              {
                objc_enumerationMutation(v85);
              }

              v89 = [*(*(&v127 + 1) + 8 * m) identifier];
              v90 = [v123 containsObject:v89];

              if (v90)
              {

                goto LABEL_83;
              }
            }

            v86 = [v85 countByEnumeratingWithState:&v127 objects:v164 count:16];
            if (v86)
            {
              continue;
            }

            break;
          }
        }

        [v122 addObject:v83];
LABEL_83:
      }

      v80 = [v125 countByEnumeratingWithState:&v131 objects:v165 count:16];
    }

    while (v80);
  }

  v91 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
  {
    v92 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v122, "count")}];
    LODWORD(v170) = 138412290;
    *(&v170 + 4) = v92;
    _os_log_impl(&dword_1B5ED1000, v91, OS_LOG_TYPE_INFO, "_PSContactSuggester contacts returned: %@ contacts/groups", &v170, 0xCu);
  }

  v93 = [v122 array];
  v94 = [v122 count];
  if (v94 >= a3)
  {
    v95 = a3;
  }

  else
  {
    v95 = v94;
  }

  v96 = [v93 subarrayWithRange:{0, v95}];

  _Block_object_dispose(&v153, 8);
  v97 = *MEMORY[0x1E69E9840];

  return v96;
}

- (void)gameCenterSuggestionConsumedWithContactHandle:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(getBMGameCenterSuggestionFeedbackClass()) initWithIdentifier:v3];
    v5 = BiomeLibrary();
    v6 = [v5 GameCenter];
    v7 = [v6 SuggestionFeedback];

    v8 = [v7 source];
    [v8 sendEvent:v4];
  }

  else
  {
    v4 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [_PSContactSuggester gameCenterSuggestionConsumedWithContactHandle:];
    }
  }
}

- (void)gameCenterSuggestionConsumedWithGroupIdentifier:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(getBMGameCenterSuggestionFeedbackClass()) initWithIdentifier:v3];
    v5 = BiomeLibrary();
    v6 = [v5 GameCenter];
    v7 = [v6 SuggestionFeedback];

    v8 = [v7 source];
    [v8 sendEvent:v4];
  }

  else
  {
    v4 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [_PSContactSuggester gameCenterSuggestionConsumedWithGroupIdentifier:];
    }
  }
}

- (id)contactAndGroupSuggestionsWithMaxSuggestions:(int64_t)a3 lookBackDays:(int64_t)a4 interactions:(id)a5
{
  v160 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v121 = [MEMORY[0x1E695DF90] dictionary];
  v120 = [MEMORY[0x1E695DF90] dictionary];
  v119 = [MEMORY[0x1E695DF90] dictionary];
  v127 = [MEMORY[0x1E695DF90] dictionary];
  v9 = [MEMORY[0x1E695DF90] dictionary];
  v131 = [MEMORY[0x1E695DF90] dictionary];
  v133 = [MEMORY[0x1E695DFA8] set];
  v10 = [MEMORY[0x1E695DEE8] currentCalendar];
  v11 = objc_alloc(MEMORY[0x1E69C5D58]);
  v154[0] = MEMORY[0x1E69E9820];
  v154[1] = 3221225472;
  v154[2] = __94___PSContactSuggester_contactAndGroupSuggestionsWithMaxSuggestions_lookBackDays_interactions___block_invoke;
  v154[3] = &unk_1E7C243E8;
  v12 = v7;
  v155 = v12;
  v156 = self;
  v128 = [v11 initWithBlock:v154];
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v13 = v12;
  v14 = v9;
  v15 = v13;
  v130 = v8;
  v139 = v10;
  v122 = v13;
  v125 = [v13 countByEnumeratingWithState:&v150 objects:v159 count:16];
  if (v125)
  {
    v16 = *v151;
    v17 = a4;
    v18 = 0x1E696A000uLL;
    v123 = *v151;
    do
    {
      for (i = 0; i != v125; ++i)
      {
        if (*v151 != v16)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v150 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        if ([v20 mechanism] != 13)
        {
          v124 = i;
          v21 = [v20 bundleId];
          v22 = +[_PSConstants messagesBundleId];
          if ([v21 isEqualToString:v22])
          {
            [v20 recipients];
            v24 = v23 = v14;
            v25 = [v24 count];

            v14 = v23;
            if (v25 != 1)
            {
              v26 = [v20 startDate];
              v27 = [v10 startOfDayForDate:v26];
              [v133 addObject:v27];

              v28 = [v20 domainIdentifier];
              v29 = [v20 bundleId];
              v30 = +[_PSConstants mobileMessagesBundleId];
              v31 = [v29 isEqualToString:v30];

              if (v31)
              {
                v32 = [v20 account];
              }

              else
              {
                v32 = 0;
              }

              v78 = [v121 objectForKeyedSubscript:v28];

              v79 = v23;
              if (!v78)
              {
                v80 = [v20 recipients];
                [v121 setObject:v80 forKeyedSubscript:v28];

                v81 = [v20 groupName];
                [v120 setObject:v81 forKeyedSubscript:v28];

                v82 = [v20 contentURL];
                [v119 setObject:v82 forKeyedSubscript:v28];
              }

              v83 = [v23 objectForKeyedSubscript:v28];

              v141 = v32;
              if (v83)
              {
                v84 = [v23 objectForKeyedSubscript:v28];
                v85 = [(_PSContactSuggestion *)v84 totalFrequency]+ 1;
                v86 = v84;
              }

              else
              {
                v84 = objc_alloc_init(_PSContactSuggestion);
                [(_PSContactSuggestion *)v84 setGroupIdentifier:v28];
                [(_PSContactSuggestion *)v84 setMessagesGroupIdentifier:v32];
                v87 = [v120 objectForKeyedSubscript:v28];
                [(_PSContactSuggestion *)v84 setGroupName:v87];

                v88 = [v121 objectForKeyedSubscript:v28];
                [(_PSContactSuggestion *)v84 setGroupRecipients:v88];

                v89 = [v119 objectForKeyedSubscript:v28];
                [(_PSContactSuggestion *)v84 setImageURL:v89];

                v79 = v23;
                v86 = v84;
                v85 = 1;
              }

              [(_PSContactSuggestion *)v86 setTotalFrequency:v85];
              [v79 setObject:v84 forKeyedSubscript:v28];

              [v79 objectForKeyedSubscript:v28];
              v91 = v90 = v79;
              [v91 daysInteracted];
              v92 = v33 = v28;
              v93 = [v92 mutableCopy];

              if (!v93)
              {
                v93 = [MEMORY[0x1E695DFA8] set];
              }

              v94 = [v20 startDate];
              v95 = [v10 startOfDayForDate:v94];
              [v93 addObject:v95];

              v96 = [v90 objectForKeyedSubscript:v33];
              [v96 setDaysInteracted:v93];

              v14 = v90;
LABEL_47:

              v16 = v123;
              i = v124;
              goto LABEL_48;
            }
          }

          else
          {
          }

          v148 = 0u;
          v149 = 0u;
          v146 = 0u;
          v147 = 0u;
          v33 = [v20 recipients];
          v135 = [v33 countByEnumeratingWithState:&v146 objects:v158 count:16];
          if (v135)
          {
            v134 = *v147;
            obj = v33;
            v132 = v20;
            do
            {
              for (j = 0; j != v135; ++j)
              {
                v35 = v14;
                if (*v147 != v134)
                {
                  objc_enumerationMutation(obj);
                }

                v36 = *(*(&v146 + 1) + 8 * j);
                v37 = [v20 startDate];
                v38 = [v10 startOfDayForDate:v37];
                [v133 addObject:v38];

                v39 = [v36 personId];
                v140 = [v36 identifier];
                v40 = [v8 objectForKeyedSubscript:?];
                if (v40 || [v36 personIdType] != 3)
                {

                  v14 = v35;
                }

                else
                {
                  v14 = v35;
                  if (v39)
                  {
                    [v8 setObject:v39 forKeyedSubscript:v140];
                  }
                }

                v41 = [v8 objectForKeyedSubscript:v140];
                if (v41)
                {
                  v42 = [v20 bundleId];
                  v43 = +[_PSConstants messagesBundleId];
                  v44 = [v42 isEqual:v43];

                  if (v44)
                  {
                    v45 = [v128 result];
                    v46 = [v20 domainIdentifier];
                    v47 = [v45 containsObject:v46];

                    if (v47)
                    {
                      [v127 setObject:v140 forKeyedSubscript:v41];
                    }
                  }

                  v138 = v39;
                  v48 = [v14 objectForKeyedSubscript:v41];

                  if (!v48)
                  {
                    v49 = objc_alloc_init(_PSContactSuggestion);
                    [v14 setObject:v49 forKeyedSubscript:v41];
                  }

                  v50 = [v20 bundleId];
                  v51 = objc_alloc_init(_PSContactSuggestionHandleAndApp);
                  [(_PSContactSuggestionHandleAndApp *)v51 setHandle:v140];
                  v137 = v50;
                  [(_PSContactSuggestionHandleAndApp *)v51 setAppBundleId:v50];
                  v52 = v20;
                  v53 = [*(v18 + 3480) numberWithInteger:{objc_msgSend(v20, "mechanism")}];
                  [(_PSContactSuggestionHandleAndApp *)v51 setInteractionMechanism:v53];

                  v54 = [v14 objectForKeyedSubscript:v41];
                  v55 = [v54 handleAndAppFrequencies];
                  v56 = [v55 mutableCopy];

                  if (!v56)
                  {
                    v56 = [MEMORY[0x1E695DF90] dictionary];
                  }

                  v57 = *(v18 + 3480);
                  v58 = [v56 objectForKeyedSubscript:v51];
                  v59 = [v57 numberWithInteger:{objc_msgSend(v58, "integerValue") + 1}];
                  [v56 setObject:v59 forKeyedSubscript:v51];

                  v60 = [v14 objectForKeyedSubscript:v41];
                  v136 = v56;
                  [v60 setHandleAndAppFrequencies:v56];

                  v61 = [v131 objectForKeyedSubscript:v51];

                  if (!v61)
                  {
                    v62 = [MEMORY[0x1E695DFA8] set];
                    [v131 setObject:v62 forKeyedSubscript:v51];
                  }

                  v63 = [v131 objectForKeyedSubscript:v51];
                  v64 = [v52 startDate];
                  v65 = [v139 startOfDayForDate:v64];
                  [v63 addObject:v65];

                  v66 = [MEMORY[0x1E695DF90] dictionary];
                  v67 = *(v18 + 3480);
                  v68 = [v131 objectForKeyedSubscript:v51];
                  *&v69 = [v68 count] / v17;
                  v70 = [v67 numberWithFloat:v69];
                  [v66 setObject:v70 forKeyedSubscript:v51];

                  v71 = [v14 objectForKeyedSubscript:v41];
                  [v71 setHandleAndAppRegularityScores:v66];

                  v72 = [v14 objectForKeyedSubscript:v41];
                  v73 = [v72 daysInteracted];
                  v74 = [v73 mutableCopy];

                  if (!v74)
                  {
                    v74 = [MEMORY[0x1E695DFA8] set];
                  }

                  v20 = v132;
                  v75 = [v132 startDate];
                  v76 = [v139 startOfDayForDate:v75];
                  [v74 addObject:v76];

                  v77 = [v14 objectForKeyedSubscript:v41];
                  [v77 setDaysInteracted:v74];

                  v8 = v130;
                  v10 = v139;
                  v18 = 0x1E696A000;
                  v39 = v138;
                }
              }

              v33 = obj;
              v135 = [obj countByEnumeratingWithState:&v146 objects:v158 count:16];
            }

            while (v135);
            v15 = v122;
          }

          goto LABEL_47;
        }

LABEL_48:
        objc_autoreleasePoolPop(context);
      }

      v125 = [v15 countByEnumeratingWithState:&v150 objects:v159 count:16];
    }

    while (v125);
  }

  v97 = v14;
  v98 = [v14 allKeys];
  v99 = [MEMORY[0x1E695DF70] arrayWithCapacity:a3];
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v100 = v98;
  v101 = [v100 countByEnumeratingWithState:&v142 objects:v157 count:16];
  v102 = v131;
  if (v101)
  {
    v103 = v101;
    v104 = *v143;
LABEL_52:
    v105 = 0;
    while (1)
    {
      if (*v143 != v104)
      {
        objc_enumerationMutation(v100);
      }

      v106 = *(*(&v142 + 1) + 8 * v105);
      v107 = v97;
      v108 = [v97 objectForKeyedSubscript:v106];
      v109 = [v108 groupIdentifier];

      if (!v109)
      {
        [v108 setContactIdentifier:v106];
        v110 = [v127 objectForKeyedSubscript:v106];
        [v108 setSuggestedHandle:v110];

        v111 = [v108 handleAndAppFrequencies];
        v112 = [v111 allValues];
        v113 = [v112 valueForKeyPath:@"@sum.self"];
        [v108 setTotalFrequency:{objc_msgSend(v113, "integerValue")}];
      }

      v114 = [v108 daysInteracted];
      [v108 setRegularityScore:{objc_msgSend(v114, "count") / objc_msgSend(v133, "count")}];

      [v99 addObject:v108];
      v115 = [v99 count];

      v97 = v107;
      v102 = v131;
      v15 = v122;
      if (v115 >= a3)
      {
        break;
      }

      if (v103 == ++v105)
      {
        v103 = [v100 countByEnumeratingWithState:&v142 objects:v157 count:16];
        if (v103)
        {
          goto LABEL_52;
        }

        break;
      }
    }
  }

  v116 = *MEMORY[0x1E69E9840];

  return v99;
}

- (id)contactSuggestionsWithMaxSuggestions:(int64_t)a3 interactionDomains:(id)a4 referenceDate:(id)a5 appleUsersOnly:(BOOL)a6 includeGroups:(BOOL)a7 excludeContactsByIdentifiers:(id)a8
{
  v9 = a7;
  v10 = a6;
  v117 = *MEMORY[0x1E69E9840];
  v13 = a4;
  v14 = a5;
  v98 = a8;
  v15 = objc_autoreleasePoolPush();
  v16 = +[_PSPrivacyDataRetentionPeriod lookbackDurationInDays];
  v17 = [MEMORY[0x1E695DFA8] set];
  v94 = v17;
  context = v15;
  v89 = v13;
  v90 = v16;
  v91 = v14;
  v87 = a3;
  v86 = v9;
  v95 = v10;
  if (v10)
  {
    v18 = &unk_1F2D8B0D0;
LABEL_21:
    [v17 addObject:v18];
    goto LABEL_22;
  }

  if (![v13 count])
  {
    [v17 addObject:&unk_1F2D8B0D0];
    [v17 addObject:&unk_1F2D8B0E8];
    [v17 addObject:&unk_1F2D8B100];
    [v17 addObject:&unk_1F2D8B118];
    [v17 addObject:&unk_1F2D8B130];
    v18 = &unk_1F2D8B0A0;
    goto LABEL_21;
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v19 = v13;
  v20 = [v19 countByEnumeratingWithState:&v107 objects:v116 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v108;
LABEL_6:
    v23 = 0;
    while (1)
    {
      if (*v108 != v22)
      {
        objc_enumerationMutation(v19);
      }

      v24 = *(*(&v107 + 1) + 8 * v23);
      if (![v24 integerValue])
      {
        v17 = v94;
        [v94 addObject:&unk_1F2D8B0D0];
        [v94 addObject:&unk_1F2D8B0E8];
        [v94 addObject:&unk_1F2D8B100];
        [v94 addObject:&unk_1F2D8B118];
        [v94 addObject:&unk_1F2D8B130];
        [v94 addObject:&unk_1F2D8B0A0];

        goto LABEL_19;
      }

      v25 = [v24 integerValue];
      v26 = &unk_1F2D8B0D0;
      if (v25 == 1)
      {
        goto LABEL_14;
      }

      if ([v24 integerValue] == 2)
      {
        break;
      }

      v27 = [v24 integerValue];
      v26 = &unk_1F2D8B0A0;
      if (v27 == 3)
      {
        goto LABEL_14;
      }

LABEL_15:
      if (v21 == ++v23)
      {
        v21 = [v19 countByEnumeratingWithState:&v107 objects:v116 count:16];
        if (v21)
        {
          goto LABEL_6;
        }

        goto LABEL_17;
      }
    }

    [v94 addObject:&unk_1F2D8B0E8];
    [v94 addObject:&unk_1F2D8B100];
    [v94 addObject:&unk_1F2D8B118];
    v26 = &unk_1F2D8B130;
LABEL_14:
    [v94 addObject:v26];
    goto LABEL_15;
  }

LABEL_17:

  v17 = v94;
LABEL_19:
  v16 = v90;
LABEL_22:
  v81 = [(_PSContactSuggester *)self interactionStore];
  v28 = [v14 dateByAddingTimeInterval:(-86400 * v16)];
  v80 = [v17 copy];
  v29 = v14;
  v30 = MEMORY[0x1E695DFD8];
  v84 = +[_PSConstants mobileMessagesBundleId];
  v115[0] = v84;
  v83 = +[_PSConstants macMessagesBundleId];
  v115[1] = v83;
  v82 = +[_PSConstants mobileMailBundleId];
  v115[2] = v82;
  v31 = +[_PSConstants macMailBundleId];
  v115[3] = v31;
  v32 = +[_PSConstants mobilePhoneBundleId];
  v115[4] = v32;
  v33 = +[_PSConstants mobileFacetimeBundleId];
  v115[5] = v33;
  v34 = +[_PSConstants macFacetimeBundleId];
  v115[6] = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:7];
  v36 = [v30 setWithArray:v35];
  v37 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F2D8C0A8];
  LOBYTE(v79) = 0;
  v92 = [_PSInteractionStoreUtils interactionsFromStore:v81 startDate:v28 tillDate:v29 withMechanisms:v80 withAccount:0 withBundleIds:v36 withTargetBundleIds:0 withDirections:v37 singleRecipient:v79 fetchLimit:3000];

  v38 = 0x1E7C23000uLL;
  v39 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v92, "count")}];
    *buf = 138412290;
    v114 = v40;
    _os_log_impl(&dword_1B5ED1000, v39, OS_LOG_TYPE_INFO, "_PSContactSuggester: interactions returned: %@", buf, 0xCu);
  }

  v41 = [MEMORY[0x1E695DF70] array];
  v42 = v41;
  if (v95)
  {
    v96 = v41;
    v43 = [v92 _pas_mappedArrayWithTransform:&__block_literal_global_138];
    v44 = objc_alloc(MEMORY[0x1E695DFD8]);
    v85 = v43;
    v45 = [(_PSContactSuggester *)self iMessageDomainIdentifiersForDomainIdentifiers:v43];
    v46 = [v44 initWithArray:v45];

    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v47 = v92;
    v48 = [v47 countByEnumeratingWithState:&v103 objects:v112 count:16];
    v49 = v98;
    if (v48)
    {
      v50 = v48;
      v51 = *v104;
      do
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v104 != v51)
          {
            objc_enumerationMutation(v47);
          }

          v53 = *(*(&v103 + 1) + 8 * i);
          v54 = [v53 bundleId];
          v55 = +[_PSConstants messagesBundleId];
          if ([v54 isEqual:v55])
          {
            v56 = [v53 domainIdentifier];
            v57 = [v46 containsObject:v56];

            v49 = v98;
            if (v57)
            {
              [v96 addObject:v53];
            }
          }

          else
          {
          }
        }

        v50 = [v47 countByEnumeratingWithState:&v103 objects:v112 count:16];
      }

      while (v50);
    }

    v58 = v90;
    v59 = v91;
    v60 = v87;
    v61 = self;
    v62 = v86;
    v63 = v96;
    v38 = 0x1E7C23000;
    v42 = v85;
  }

  else
  {
    v63 = [v92 copy];
    v49 = v98;
    v60 = v87;
    v62 = v86;
    v58 = v90;
    v59 = v91;
    v61 = self;
  }

  v64 = [*(v38 + 1360) generalChannel];
  if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
  {
    v65 = [v63 count];
    *buf = 134217984;
    v114 = v65;
    _os_log_impl(&dword_1B5ED1000, v64, OS_LOG_TYPE_INFO, "_PSContactSuggester: Filtered interactions returned: %tu", buf, 0xCu);
  }

  if (v62)
  {
    v66 = objc_opt_new();
    v67 = [(_PSContactSuggester *)v61 contactAndGroupSuggestionsWithMaxSuggestions:v60 lookBackDays:v58 interactions:v63];
    if ([v49 count])
    {
      v97 = v63;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v68 = v66;
      v69 = [v68 countByEnumeratingWithState:&v99 objects:v111 count:16];
      if (v69)
      {
        v70 = v69;
        v71 = *v100;
        do
        {
          for (j = 0; j != v70; ++j)
          {
            if (*v100 != v71)
            {
              objc_enumerationMutation(v68);
            }

            v73 = *(*(&v99 + 1) + 8 * j);
            v74 = [v73 contactIdentifier];
            v75 = [v49 containsObject:v74];

            if ((v75 & 1) == 0)
            {
              [v68 addObject:v73];
            }
          }

          v70 = [v68 countByEnumeratingWithState:&v99 objects:v111 count:16];
        }

        while (v70);
      }

      v66 = v68;
      v67 = v66;
      v63 = v97;
    }
  }

  else
  {
    v66 = [v63 copy];
    v67 = [(_PSContactSuggester *)v61 contactSuggestionsWithMaxSuggestions:v60 excludeContactsByIdentifiers:v49 lookBackDays:v58 interactions:v66 modeAvocado:0];
  }

  v76 = [v67 sortedArrayUsingComparator:&__block_literal_global_142];

  objc_autoreleasePoolPop(context);
  v77 = *MEMORY[0x1E69E9840];

  return v76;
}

- (id)computeContactPriorsForContactIdentifiers:(id)a3 withTimeConstant:(int64_t)a4 withInteractionMechanisms:(id)a5 asOf:(id)a6 overLookbackOf:(int64_t)a7
{
  v104 = *MEMORY[0x1E69E9840];
  v73 = a3;
  v12 = a5;
  v13 = a6;
  v14 = [(_PSContactSuggester *)self interactionStore];
  v15 = [v13 dateByAddingTimeInterval:(-86400 * a7)];
  v72 = v12;
  v16 = [v12 copy];
  v17 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F2D8C0C0];
  LOBYTE(v71) = 0;
  v81 = v13;
  v18 = [_PSInteractionStoreUtils interactionsFromStore:v14 startDate:v15 tillDate:v13 withMechanisms:v16 withAccount:0 withBundleIds:0 withTargetBundleIds:0 withDirections:v17 singleRecipient:v71 fetchLimit:3000];

  v19 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v18, "count")}];
    *buf = 138412290;
    v103 = v20;
    _os_log_impl(&dword_1B5ED1000, v19, OS_LOG_TYPE_INFO, "_PSContactSuggester: interactions returned: %@", buf, 0xCu);
  }

  v21 = [MEMORY[0x1E695DF90] dictionary];
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = v18;
  v76 = [obj countByEnumeratingWithState:&v94 objects:v101 count:16];
  if (v76)
  {
    v75 = *v95;
    v22 = a4;
    do
    {
      v23 = 0;
      do
      {
        if (*v95 != v75)
        {
          objc_enumerationMutation(obj);
        }

        v80 = v23;
        v24 = *(*(&v94 + 1) + 8 * v23);
        context = objc_autoreleasePoolPush();
        v78 = [v24 sender];
        v25 = [v78 personId];
        if (v25)
        {
          v26 = [v21 objectForKeyedSubscript:v25];

          if (!v26)
          {
            v27 = [(_PSContactSuggester *)self getDefaultContactPriorForContactId:v25 withModelName:@"PSContactSuggester" withModelVersion:@"0"];
            [v21 setObject:v27 forKeyedSubscript:v25];
          }

          v28 = [v21 objectForKeyedSubscript:v25];
          v29 = [v24 startDate];
          [(_PSContactSuggester *)self decayForReferenceDate:v29 relativeTo:v81 withTimeConstant:v22];
          v31 = v30;
          [v28 priorScore];
          *&v33 = v31 + v32;
          [v28 setPriorScore:v33];
        }

        v77 = v25;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v34 = [v24 recipients];
        v35 = [v34 countByEnumeratingWithState:&v90 objects:v100 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v91;
          do
          {
            for (i = 0; i != v36; ++i)
            {
              if (*v91 != v37)
              {
                objc_enumerationMutation(v34);
              }

              v39 = [*(*(&v90 + 1) + 8 * i) personId];
              if (v39)
              {
                v40 = [v21 objectForKeyedSubscript:v39];

                if (!v40)
                {
                  v41 = [(_PSContactSuggester *)self getDefaultContactPriorForContactId:v39 withModelName:@"PSContactSuggester" withModelVersion:@"0"];
                  [v21 setObject:v41 forKeyedSubscript:v39];
                }

                v42 = [v21 objectForKeyedSubscript:v39];
                v43 = [v24 startDate];
                [(_PSContactSuggester *)self decayForReferenceDate:v43 relativeTo:v81 withTimeConstant:v22];
                v45 = v44;
                [v42 priorScore];
                *&v47 = v45 + v46;
                [v42 setPriorScore:v47];
              }
            }

            v36 = [v34 countByEnumeratingWithState:&v90 objects:v100 count:16];
          }

          while (v36);
        }

        objc_autoreleasePoolPop(context);
        v23 = v80 + 1;
      }

      while (v80 + 1 != v76);
      v76 = [obj countByEnumeratingWithState:&v94 objects:v101 count:16];
    }

    while (v76);
  }

  v48 = [v21 keysSortedByValueUsingComparator:&__block_literal_global_156];
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v49 = [v48 countByEnumeratingWithState:&v86 objects:v99 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v87;
    v52 = 1;
    do
    {
      for (j = 0; j != v50; ++j)
      {
        if (*v87 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v54 = *(*(&v86 + 1) + 8 * j);
        v55 = [v21 objectForKeyedSubscript:v54];
        [v55 priorScore];
        v57 = v56;

        if (v57 != 0.0)
        {
          v58 = [v21 objectForKeyedSubscript:v54];
          [v58 setRank:v52];

          v52 = (v52 + 1);
        }
      }

      v50 = [v48 countByEnumeratingWithState:&v86 objects:v99 count:16];
    }

    while (v50);
  }

  v59 = v73;
  if ([v73 count])
  {
    v60 = [MEMORY[0x1E695DF90] dictionary];
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v61 = v73;
    v62 = [v61 countByEnumeratingWithState:&v82 objects:v98 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v83;
      do
      {
        for (k = 0; k != v63; ++k)
        {
          if (*v83 != v64)
          {
            objc_enumerationMutation(v61);
          }

          v66 = *(*(&v82 + 1) + 8 * k);
          v67 = [v21 objectForKeyedSubscript:v66];
          if (!v67)
          {
            v67 = [(_PSContactSuggester *)self getDefaultContactPriorForContactId:v66 withModelName:@"PSContactSuggester" withModelVersion:@"0"];
          }

          [v60 setObject:v67 forKeyedSubscript:v66];
        }

        v63 = [v61 countByEnumeratingWithState:&v82 objects:v98 count:16];
      }

      while (v63);
    }

    v68 = [v60 copy];
    v59 = v73;
  }

  else
  {
    v68 = [v21 copy];
  }

  v69 = *MEMORY[0x1E69E9840];

  return v68;
}

- (void)computeAndSaveContactPriorArchive
{
  v3 = [MEMORY[0x1E69979F0] standardInstance];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56___PSContactSuggester_computeAndSaveContactPriorArchive__block_invoke;
  v4[3] = &unk_1E7C24268;
  v4[4] = self;
  [v3 performNoMoreOftenInSecondsThan:@"com.apple.coreduetd.contactPriorGeneration" name:v4 activityBlock:21600.0];
}

- (id)computeContactPriorsForContactIdentifiers:(id)a3
{
  v4 = MEMORY[0x1E695DFA8];
  v5 = a3;
  v6 = [v4 set];
  [v6 addObject:&unk_1F2D8B0D0];
  [v6 addObject:&unk_1F2D8B0E8];
  [v6 addObject:&unk_1F2D8B100];
  [v6 addObject:&unk_1F2D8B118];
  [v6 addObject:&unk_1F2D8B130];
  v7 = [MEMORY[0x1E695DF00] date];
  v8 = [(_PSContactSuggester *)self computeContactPriorsForContactIdentifiers:v5 withTimeConstant:43200 withInteractionMechanisms:v6 asOf:v7 overLookbackOf:+[_PSPrivacyDataRetentionPeriod lookbackDurationInDays]];

  return v8;
}

+ (id)_cascadeContentForContactPriors
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  v2 = [MEMORY[0x1E6993A50] setEnumeratorWithUseCase:@"PeopleSuggesterContactPriors"];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54___PSContactSuggester__cascadeContentForContactPriors__block_invoke;
  v5[3] = &unk_1E7C24510;
  v5[4] = &v6;
  [v2 enumerateAllSets:0 itemType:40568 usingBlock:v5];
  v3 = v7[5];

  _Block_object_dispose(&v6, 8);

  return v3;
}

+ (id)_filteredContactDictionaryFromCascadeContent:(id)a3 forContactIdentifiers:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc(MEMORY[0x1E695DFD8]);
  v8 = [v6 _pas_mappedArrayWithTransform:&__block_literal_global_173];
  v9 = [v7 initWithArray:v8];

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v11 = [v5 sourceSharedIdentifier];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __90___PSContactSuggester__filteredContactDictionaryFromCascadeContent_forContactIdentifiers___block_invoke_2;
  v22[3] = &unk_1E7C24558;
  v12 = v9;
  v23 = v12;
  v13 = v10;
  v24 = v13;
  v25 = &v26;
  [v11 enumerateInt64ValuesWithBlock:v22];

  v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v12, "count")}];
  if ([v13 count])
  {
    *(v27 + 6) = 0;
    v15 = [v5 priorScore];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __90___PSContactSuggester__filteredContactDictionaryFromCascadeContent_forContactIdentifiers___block_invoke_3;
    v17[3] = &unk_1E7C24580;
    v18 = v13;
    v21 = &v26;
    v19 = v14;
    v20 = v5;
    [v15 enumerateFloatValuesWithBlock:v17];
  }

  _Block_object_dispose(&v26, 8);

  return v14;
}

- (id)contactPriorsForContactIdentifiers:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _os_activity_create(&dword_1B5ED1000, "CoreDuet: _PSContactSuggester Prior Generation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  os_activity_scope_leave(&state);

  v6 = [MEMORY[0x1E6997908] interactionSignpost];
  if (os_signpost_enabled(v6))
  {
    LOWORD(state.opaque[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSContactPriorsForContactIdentifiers", " enableTelemetry=YES ", &state, 2u);
  }

  v7 = objc_alloc(MEMORY[0x1E695DEF0]);
  v8 = [objc_opt_class() defaultCorrelationsSessionFileForContactPriors];
  v42 = 0;
  v9 = [v7 initWithContentsOfFile:v8 options:1 error:&v42];
  v10 = v42;

  if (v10)
  {
    v11 = 0;
    v12 = 0;
LABEL_5:
    v13 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_PSContactSuggester contactPriorsForContactIdentifiers:];
    }

    if ([v4 count])
    {
      v14 = v4;
    }

    else
    {
      v14 = 0;
    }

    v15 = [(_PSContactSuggester *)self computeContactPriorsForContactIdentifiers:v14];

    goto LABEL_11;
  }

  v41 = 0;
  v18 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v41];
  v10 = v41;
  v12 = [v18 contactPriorDictionary];
  v11 = [v18 archiveDate];

  if (!v12 || !v11)
  {
    goto LABEL_5;
  }

  if (v4)
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __58___PSContactSuggester_contactPriorsForContactIdentifiers___block_invoke_182;
    v39[3] = &unk_1E7C242D0;
    v40 = v12;
    v19 = [v4 _pas_filteredArrayWithTest:v39];

    v4 = v19;
  }

  else
  {
    v4 = [v12 allKeys];
  }

  v20 = objc_alloc(MEMORY[0x1E695DF20]);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __58___PSContactSuggester_contactPriorsForContactIdentifiers___block_invoke_2;
  v37[3] = &unk_1E7C245A8;
  v21 = v12;
  v38 = v21;
  v22 = [v4 _pas_mappedArrayWithTransform:v37];
  v23 = [v20 initWithObjects:v22 forKeys:v4];

  v24 = [MEMORY[0x1E695DF00] date];
  [(_PSContactSuggester *)self decayForReferenceDate:v11 relativeTo:v24 withTimeConstant:43200.0];
  v26 = v25;

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = v23;
  v27 = [v10 countByEnumeratingWithState:&v33 objects:v44 count:16];
  if (v27)
  {
    v28 = *v34;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v34 != v28)
        {
          objc_enumerationMutation(v10);
        }

        v30 = [v10 objectForKeyedSubscript:{*(*(&v33 + 1) + 8 * i), v33}];
        [v30 priorScore];
        *&v32 = v26 * v31;
        [(_PSContactSuggester *)self sigmoid:v32];
        [v30 setPriorScore:?];
      }

      v27 = [v10 countByEnumeratingWithState:&v33 objects:v44 count:16];
    }

    while (v27);
  }

  v15 = v10;
LABEL_11:

  __58___PSContactSuggester_contactPriorsForContactIdentifiers___block_invoke();
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)contactSuggestionsForPeopleWidgetWithMaxSuggestions:(int64_t)a3 excludeContactsWithIdentifiers:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(_PSContactSuggesterForPeopleWidget);
  v7 = [(_PSContactSuggesterForPeopleWidget *)v6 contactSuggestionsWithMaxSuggestions:a3 excludeContactsWithIdentifiers:v5];

  return v7;
}

+ (id)contactPriorSuggestionsForText:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2050000000;
  v3 = getSEMTokenizerClass_softClass;
  v41 = getSEMTokenizerClass_softClass;
  if (!getSEMTokenizerClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getSEMTokenizerClass_block_invoke;
    v44 = &unk_1E7C23BF0;
    v45 = &v38;
    SiriEntityMatcherLibraryCore();
    Class = objc_getClass("SEMTokenizer");
    *(v45[1] + 24) = Class;
    getSEMTokenizerClass_softClass = *(v45[1] + 24);
    v3 = v39[3];
  }

  v5 = v3;
  _Block_object_dispose(&v38, 8);
  v6 = [v3 alloc];
  v7 = [MEMORY[0x1E695DF58] currentLocale];
  v37 = 0;
  v8 = [v6 initWithTokenizerLocale:v7 error:&v37];
  v31 = v37;

  if (v8)
  {
    v9 = [v8 queryFromText:v32];
    v38 = 0;
    v39 = &v38;
    v40 = 0x2050000000;
    v10 = getSEMCascadeItemTypeFilterClass_softClass;
    v41 = getSEMCascadeItemTypeFilterClass_softClass;
    if (!getSEMCascadeItemTypeFilterClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getSEMCascadeItemTypeFilterClass_block_invoke;
      v44 = &unk_1E7C23BF0;
      v45 = &v38;
      SiriEntityMatcherLibraryCore();
      v11 = objc_getClass("SEMCascadeItemTypeFilter");
      *(v45[1] + 24) = v11;
      getSEMCascadeItemTypeFilterClass_softClass = *(v45[1] + 24);
      v10 = v39[3];
    }

    v12 = v10;
    _Block_object_dispose(&v38, 8);
    v36 = 0;
    v13 = [[v10 alloc] initWithItemType:19668 error:&v36];
    v30 = v36;
    if (v13)
    {
      v42 = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
      [v9 setEntityFilters:v14];
    }

    else
    {
      v14 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        +[_PSContactSuggester contactPriorSuggestionsForText:];
      }
    }

    v38 = 0;
    v39 = &v38;
    v40 = 0x2050000000;
    v16 = getSEMSpanMatcherClass_softClass;
    v41 = getSEMSpanMatcherClass_softClass;
    if (!getSEMSpanMatcherClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getSEMSpanMatcherClass_block_invoke;
      v44 = &unk_1E7C23BF0;
      v45 = &v38;
      SiriEntityMatcherLibraryCore();
      v17 = objc_getClass("SEMSpanMatcher");
      *(v45[1] + 24) = v17;
      getSEMSpanMatcherClass_softClass = *(v45[1] + 24);
      v16 = v39[3];
    }

    v18 = v16;
    _Block_object_dispose(&v38, 8);
    v19 = [v16 indexMatcher];
    v35 = 0;
    v20 = [v19 matchSpans:v9 error:&v35];
    v21 = v35;
    if ([v20 count])
    {
      v22 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138478083;
        *&buf[4] = v32;
        *&buf[12] = 2113;
        *&buf[14] = v20;
        _os_log_impl(&dword_1B5ED1000, v22, OS_LOG_TYPE_INFO, "For text %{private}@ found spans %{private}@", buf, 0x16u);
      }

      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __54___PSContactSuggester_contactPriorSuggestionsForText___block_invoke;
      v33[3] = &unk_1E7C245F8;
      v34 = v32;
      v23 = [v20 _pas_mappedArrayWithTransform:v33];
      v24 = objc_opt_new();
      v25 = [v23 _pas_leftFoldWithInitialObject:v24 accumulate:&__block_literal_global_194];

      if ([v25 count])
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      v15 = v26;

      v27 = v34;
    }

    else
    {
      if (v20)
      {
        v15 = 0;
        goto LABEL_25;
      }

      v27 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        +[_PSContactSuggester contactPriorSuggestionsForText:];
      }

      v15 = 0;
    }

LABEL_25:
    goto LABEL_26;
  }

  v9 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    +[_PSContactSuggester contactPriorSuggestionsForText:];
  }

  v15 = 0;
LABEL_26:

  v28 = *MEMORY[0x1E69E9840];

  return v15;
}

- (float)sigmoid:(float)a3
{
  if (a3 >= 0.0)
  {
    v4 = exp(-a3);
    v5 = 1.0;
  }

  else
  {
    v3 = exp(a3);
    v4 = v3;
    v5 = v4;
  }

  return v5 / (v4 + 1.0);
}

+ (id)defaultCorrelationsSessionFileForContactPriors
{
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v3 = [v2 firstObject];

  v4 = [v3 stringByAppendingPathComponent:@"PeopleSuggester/contactpriors.archive"];

  return v4;
}

+ (id)_cascadeContentForPriorsArchive:(id)a3 cascadeContactEnumerator:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v32 = v5;
  v7 = [v5 contactPriorDictionary];
  v8 = malloc_type_calloc([v7 count], 0x10uLL, 0x1000040D9A13B51uLL);
  if (!v8)
  {
    v31 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v31);
  }

  v9 = v8;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __80___PSContactSuggester__cascadeContentForPriorsArchive_cascadeContactEnumerator___block_invoke;
  v43[3] = &__block_descriptor_40_e5_v8__0l;
  v43[4] = v8;
  v10 = MEMORY[0x1B8C8C060](v43);
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __80___PSContactSuggester__cascadeContentForPriorsArchive_cascadeContactEnumerator___block_invoke_2;
  v35[3] = &unk_1E7C24640;
  v11 = v7;
  v37 = &v39;
  v38 = v9;
  v36 = v11;
  v6[2](v6, v35);
  qsort_b(v9, v40[3], 0x10uLL, &__block_literal_global_205);
  v12 = objc_opt_new();
  if (v40[3])
  {
    v13 = 0;
    v14 = v9;
    do
    {
      v15 = *v14;
      v14 += 2;
      [v12 appendInt64Value:v15];
      ++v13;
    }

    while (v13 < v40[3]);
  }

  v16 = objc_opt_new();
  if (v40[3])
  {
    v18 = 0;
    v19 = v9 + 2;
    do
    {
      LODWORD(v17) = *v19;
      [v16 appendFloatValue:v17];
      ++v18;
      v19 += 4;
    }

    while (v18 < v40[3]);
  }

  memset(v34, 0, sizeof(v34));
  v20 = v11;
  if ([v20 countByEnumeratingWithState:v34 objects:v44 count:16])
  {
    v21 = [v20 objectForKeyedSubscript:**(&v34[0] + 1)];
    v22 = [v21 modelName];
    v23 = [v21 modelVersion];
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  v24 = objc_alloc(MEMORY[0x1E69AA740]);
  v25 = MEMORY[0x1E696AD98];
  v26 = [v32 archiveDate];
  [v26 timeIntervalSinceReferenceDate];
  v27 = [v25 numberWithDouble:?];
  v33 = 0;
  v28 = [v24 initWithVersion:&unk_1F2D8B160 minVersion:&unk_1F2D8B160 sourceSharedIdentifier:v12 priorScore:v16 modelName:v22 modelVersion:v23 referenceDate:v27 error:&v33];

  _Block_object_dispose(&v39, 8);
  if (v10)
  {
    v10[2](v10);
  }

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

+ (void)_writeArchiveToCascade:(id)a3
{
  v3 = [_PSContactSuggester _cascadeContentForPriorsArchive:a3];
  v13 = 0;
  v4 = [objc_alloc(MEMORY[0x1E69AA748]) initWithSourceItemIdentifier:@"priors_v0" error:&v13];
  v5 = v13;
  v12 = 0;
  v6 = [objc_alloc(MEMORY[0x1E69939F8]) initWithContent:v3 metaContent:v4 error:&v12];
  v7 = v12;
  v8 = MEMORY[0x1E6993A80];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46___PSContactSuggester__writeArchiveToCascade___block_invoke;
  v10[3] = &unk_1E7C246D8;
  v11 = v6;
  v9 = v6;
  [v8 fullSetDonationWithItemType:40568 descriptors:MEMORY[0x1E695E0F0] completion:v10];
}

- (void)writeArchive:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  [_PSContactSuggester _writeArchiveToCascade:v3];
  v4 = [objc_opt_class() defaultCorrelationsSessionFileForContactPriors];
  if (v3)
  {
    v14 = 0;
    v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v14];
    v6 = v14;
    if (!v6)
    {
      v7 = [v4 stringByDeletingLastPathComponent];
      v8 = [MEMORY[0x1E696AC08] defaultManager];
      v13 = 0;
      [v8 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v13];
      v6 = v13;

      if (!v6)
      {
        v12 = 0;
        [v5 writeToFile:v4 options:1073741825 error:&v12];
        v6 = v12;
        v9 = +[_PSLogging generalChannel];
        v10 = v9;
        if (v6)
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            [_PSContactSuggester writeArchive:];
          }
        }

        else
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v16 = v4;
            _os_log_impl(&dword_1B5ED1000, v10, OS_LOG_TYPE_INFO, "Successfully persisted contact prior scores to file: %@", buf, 0xCu);
          }

          v6 = 0;
        }
      }
    }
  }

  else
  {
    v6 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [_PSContactSuggester writeArchive:];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)getDefaultContactPriorForContactId:(id)a3 withModelName:(id)a4 withModelVersion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(_PSContactPrior);
  [(_PSContactPrior *)v10 setContactIdentifier:v9];

  [(_PSContactPrior *)v10 setPriorScore:0.0];
  [(_PSContactPrior *)v10 setRank:0xFFFFFFFFLL];
  [(_PSContactPrior *)v10 setModelName:v8];

  [(_PSContactPrior *)v10 setModelVersion:v7];

  return v10;
}

- (id)contactKeysToFetch
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = getCNContactIdentifierKey();
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v3 = getCNContactRelationsKeySymbolLoc_ptr;
  v25 = getCNContactRelationsKeySymbolLoc_ptr;
  v26[0] = v2;
  if (!getCNContactRelationsKeySymbolLoc_ptr)
  {
    v4 = ContactsLibrary();
    v23[3] = dlsym(v4, "CNContactRelationsKey");
    getCNContactRelationsKeySymbolLoc_ptr = v23[3];
    v3 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v3)
  {
    goto LABEL_16;
  }

  v5 = *v3;
  v26[1] = v5;
  v6 = getCNContactGivenNameKey();
  v26[2] = v6;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v7 = getCNContactMiddleNameKeySymbolLoc_ptr;
  v25 = getCNContactMiddleNameKeySymbolLoc_ptr;
  if (!getCNContactMiddleNameKeySymbolLoc_ptr)
  {
    v8 = ContactsLibrary();
    v23[3] = dlsym(v8, "CNContactMiddleNameKey");
    getCNContactMiddleNameKeySymbolLoc_ptr = v23[3];
    v7 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v7)
  {
    goto LABEL_16;
  }

  v9 = *v7;
  v26[3] = v9;
  v10 = getCNContactFamilyNameKey();
  v26[4] = v10;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v11 = getCNContactNicknameKeySymbolLoc_ptr;
  v25 = getCNContactNicknameKeySymbolLoc_ptr;
  if (!getCNContactNicknameKeySymbolLoc_ptr)
  {
    v12 = ContactsLibrary();
    v23[3] = dlsym(v12, "CNContactNicknameKey");
    getCNContactNicknameKeySymbolLoc_ptr = v23[3];
    v11 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v11)
  {
    goto LABEL_16;
  }

  v13 = *v11;
  v26[5] = v13;
  v14 = getCNContactPhoneNumbersKey();
  v26[6] = v14;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v15 = getCNContactEmailAddressesKeySymbolLoc_ptr;
  v25 = getCNContactEmailAddressesKeySymbolLoc_ptr;
  if (!getCNContactEmailAddressesKeySymbolLoc_ptr)
  {
    v16 = ContactsLibrary();
    v23[3] = dlsym(v16, "CNContactEmailAddressesKey");
    getCNContactEmailAddressesKeySymbolLoc_ptr = v23[3];
    v15 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v15)
  {
LABEL_16:
    [_PSBlockedHandlesCache beginSyncingWithTU];
    __break(1u);
  }

  v27 = *v15;
  v17 = MEMORY[0x1E695DEC8];
  v18 = v27;
  v19 = [v17 arrayWithObjects:v26 count:8];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (void)contactSuggestionsWithMaxSuggestions:interactionDomains:appleUsersOnly:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)contactSuggestionsWithMaxSuggestions:interactionDomains:appleUsersOnly:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)gameCenterSuggestionConsumedWithContactHandle:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)gameCenterSuggestionConsumedWithGroupIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)contactPriorsForContactIdentifiers:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)contactPriorSuggestionsForText:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)contactPriorSuggestionsForText:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_1B5ED1000, v1, OS_LOG_TYPE_ERROR, "For text %{private}@ got SEMSpanMatcher error %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)contactPriorSuggestionsForText:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)writeArchive:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)writeArchive:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end