@interface _PSFTZKWSuggestionsTransformerFactory
+ (id)getCraftedIdentfierForSuggestion:(id)a3;
+ (id)getResultsFromTransformers:(id)a3 suggestions:(id)a4;
- (BOOL)isEligibleRecipient:(id)a3;
- (_PSFTZKWSuggestionsTransformerFactory)initWithInteractionStore:(id)a3;
- (id)annotateWithTrialExperimentIdentifiers:(id)a3 rolloutIdentifiers:(id)a4;
- (id)boostPriorityContacts:(id)a3;
- (id)deduplicateWithMaxSuggestions:(unint64_t)a3;
- (id)deduplicateWithSeedRecipients:(id)a3;
- (id)filterIDSReachable:(BOOL)a3;
- (id)formatWithBundleIdsForGroupMatching:(id)a3;
- (id)formatWithSuggestion:(id)a3 bundleIdsForGroupMatching:(id)a4 checkForMessagesGroupIdentifier:(BOOL)a5;
- (id)mapRecipientsToContactsWithUnmapped:(BOOL)a3;
@end

@implementation _PSFTZKWSuggestionsTransformerFactory

- (_PSFTZKWSuggestionsTransformerFactory)initWithInteractionStore:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _PSFTZKWSuggestionsTransformerFactory;
  v6 = [(_PSFTZKWSuggestionsTransformerFactory *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_interactionStore, a3);
    v8 = +[_PSContactCache sharedInstance];
    contactCache = v7->_contactCache;
    v7->_contactCache = v8;
  }

  return v7;
}

- (id)formatWithSuggestion:(id)a3 bundleIdsForGroupMatching:(id)a4 checkForMessagesGroupIdentifier:(BOOL)a5
{
  v5 = a5;
  v92[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v92[0] = 0;
    v12 = MEMORY[0x1E695DEC8];
    v13 = v92;
    goto LABEL_14;
  }

  if (!self->_interactionStore)
  {
    v14 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [_PSFTZKWSuggestionsTransformerFactory formatWithSuggestion:v14 bundleIdsForGroupMatching:? checkForMessagesGroupIdentifier:?];
    }

    v91 = v8;
    v12 = MEMORY[0x1E695DEC8];
    v13 = &v91;
    goto LABEL_14;
  }

  v10 = [v8 recipients];
  v11 = [v10 count];

  if (v11 <= 1)
  {
    v90 = v8;
    v12 = MEMORY[0x1E695DEC8];
    v13 = &v90;
LABEL_14:
    v71 = [v12 arrayWithObjects:v13 count:1];
    goto LABEL_15;
  }

  v15 = [v8 conversationIdentifier];
  if ([v15 length])
  {
    v16 = [v8 groupName];
    v17 = [v16 length];

    if (v17)
    {
      if (!v5 || ([v8 messagesGroupIdentifier], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "length"), v18, v19))
      {
        v89 = v8;
        v12 = MEMORY[0x1E695DEC8];
        v13 = &v89;
        goto LABEL_14;
      }
    }
  }

  else
  {
  }

  v22 = objc_opt_new();
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = [v8 recipients];
  v23 = [obj countByEnumeratingWithState:&v76 objects:v88 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v77;
    while (2)
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v77 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v76 + 1) + 8 * i);
        v28 = [v27 contact];
        if (v28)
        {
          v29 = [v27 contact];
          v30 = [v29 identifier];
        }

        else
        {
          v30 = [v27 handle];
        }

        if (!v30)
        {
          v35 = +[_PSLogging generalChannel];
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            [_PSFTZKWSuggestionsTransformerFactory formatWithSuggestion:v8 bundleIdsForGroupMatching:v35 checkForMessagesGroupIdentifier:?];
          }

          v71 = MEMORY[0x1E695E0F0];
          goto LABEL_54;
        }

        [v22 addObject:v30];
      }

      v24 = [obj countByEnumeratingWithState:&v76 objects:v88 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }
  }

  v31 = [(_PSContactCache *)self->_contactCache getMeContact];
  v32 = [(_PSFTZKWSuggestionsTransformerFactory *)self interactionStore];
  obj = v31;
  v33 = [v31 identifier];
  v34 = [_PSInteractionStoreUtils mostRecentInteractionWithExactMatchingIdentifiers:v22 store:v32 bundleIds:v9 meContactIdentifier:v33];

  v35 = v34;
  v36 = +[_PSLogging generalChannel];
  v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
  if (v34)
  {
    v69 = v22;
    if (v37)
    {
      *buf = 138412546;
      v82 = v34;
      v83 = 2112;
      v84 = v8;
      _os_log_impl(&dword_1B5ED1000, v36, OS_LOG_TYPE_DEFAULT, "Found group interaction mapping %@ for %@", buf, 0x16u);
    }

    v38 = [_PSInteractionStoreUtils conversationIdFromInteraction:v34 bundleIds:v9];
    v39 = [_PSSuggestion alloc];
    v40 = [v8 bundleID];
    v41 = [v35 groupName];
    v42 = [v8 recipients];
    v43 = [v8 reason];
    v44 = [v8 reasonType];
    v68 = v38;
    v45 = [(_PSSuggestion *)v39 initWithBundleID:v40 conversationIdentifier:v38 groupName:v41 recipients:v42 reason:v43 reasonType:v44];

    if (formatWithSuggestion_bundleIdsForGroupMatching_checkForMessagesGroupIdentifier___pasOnceToken7 != -1)
    {
      [_PSFTZKWSuggestionsTransformerFactory formatWithSuggestion:bundleIdsForGroupMatching:checkForMessagesGroupIdentifier:];
    }

    v46 = formatWithSuggestion_bundleIdsForGroupMatching_checkForMessagesGroupIdentifier___pasExprOnceResult;
    v47 = [v35 bundleId];
    if (v47)
    {
      v48 = v47;
      v49 = [v35 bundleId];
      v50 = [v46 containsObject:v49];

      if (v50)
      {
        v51 = [v35 account];
        [(_PSSuggestion *)v45 setMessagesGroupIdentifier:v51];
      }
    }

    v80 = v45;
    v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];

LABEL_52:
    v22 = v69;
    v52 = v68;
    goto LABEL_53;
  }

  v67 = v9;
  if (v37)
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v36, OS_LOG_TYPE_DEFAULT, "Could not map group suggestion to group interaction. Flattening.", buf, 2u);
  }

  v71 = objc_opt_new();
  v52 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"handle" ascending:1];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v53 = [v8 recipients];
  v86 = v52;
  v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v86 count:1];
  v45 = [v53 sortedArrayUsingDescriptors:v54];

  v55 = [(_PSSuggestion *)v45 countByEnumeratingWithState:&v72 objects:v87 count:16];
  if (v55)
  {
    v56 = v55;
    v68 = v52;
    v69 = v22;
    v57 = *v73;
    do
    {
      v58 = v45;
      for (j = 0; j != v56; ++j)
      {
        if (*v73 != v57)
        {
          objc_enumerationMutation(v58);
        }

        v60 = *(*(&v72 + 1) + 8 * j);
        v61 = [_PSSuggestion alloc];
        v62 = [v8 bundleID];
        v85 = v60;
        v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v85 count:1];
        v64 = [v8 reason];
        v65 = [v8 reasonType];
        v66 = [(_PSSuggestion *)v61 initWithBundleID:v62 conversationIdentifier:0 groupName:0 recipients:v63 reason:v64 reasonType:v65];

        [v71 addObject:v66];
      }

      v45 = v58;
      v56 = [(_PSSuggestion *)v58 countByEnumeratingWithState:&v72 objects:v87 count:16];
    }

    while (v56);
    v35 = 0;
    v9 = v67;
    goto LABEL_52;
  }

  v9 = v67;
LABEL_53:

LABEL_54:
LABEL_15:

  v20 = *MEMORY[0x1E69E9840];

  return v71;
}

- (id)formatWithBundleIdsForGroupMatching:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77___PSFTZKWSuggestionsTransformerFactory_formatWithBundleIdsForGroupMatching___block_invoke;
  v8[3] = &unk_1E7C26180;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = MEMORY[0x1B8C8C060](v8);

  return v6;
}

- (BOOL)isEligibleRecipient:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 handleType] == 2)
  {
    v5 = +[_PSLogging generalChannel];
    v6 = 1;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 handle];
      v14 = 138412546;
      v15 = v7;
      v16 = 1024;
      v17 = 1;
      _os_log_impl(&dword_1B5ED1000, v5, OS_LOG_TYPE_DEFAULT, "Recipient %@ is considered reachable and eligible for zkw suggestions %d", &v14, 0x12u);
    }
  }

  else
  {
    contactCache = self->_contactCache;
    v9 = [v4 handle];
    v10 = [(_PSContactCache *)contactCache getFaceTimeIDSStatusForHandle:v9 contactType:2];

    v6 = v10 < 2;
    v5 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v4 handle];
      v14 = 138412802;
      v15 = v11;
      v16 = 1024;
      v17 = v10 < 2;
      v18 = 2048;
      v19 = v10;
      _os_log_impl(&dword_1B5ED1000, v5, OS_LOG_TYPE_DEFAULT, "Recipient %@ is considered reachable and eligible for zkw suggestions %d with IDS status %ld", &v14, 0x1Cu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)filterIDSReachable:(BOOL)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60___PSFTZKWSuggestionsTransformerFactory_filterIDSReachable___block_invoke;
  v5[3] = &unk_1E7C261A8;
  v6 = a3;
  v5[4] = self;
  v3 = MEMORY[0x1B8C8C060](v5, a2);

  return v3;
}

+ (id)getCraftedIdentfierForSuggestion:(id)a3
{
  v3 = a3;
  v4 = [v3 recipients];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [v3 recipients];
    v7 = [v6 _pas_mappedArrayWithTransform:&__block_literal_global_35];

    v8 = [v7 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
    v9 = [v8 componentsJoinedByString:@"|"];
  }

  else
  {
    v9 = &stru_1F2D6CE98;
  }

  return v9;
}

- (id)deduplicateWithSeedRecipients:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71___PSFTZKWSuggestionsTransformerFactory_deduplicateWithSeedRecipients___block_invoke;
  v7[3] = &unk_1E7C261F0;
  v8 = v3;
  v4 = v3;
  v5 = MEMORY[0x1B8C8C060](v7);

  return v5;
}

- (id)deduplicateWithMaxSuggestions:(unint64_t)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71___PSFTZKWSuggestionsTransformerFactory_deduplicateWithMaxSuggestions___block_invoke;
  v5[3] = &__block_descriptor_40_e26___NSArray_16__0__NSArray_8l;
  v5[4] = a3;
  v3 = MEMORY[0x1B8C8C060](v5, a2);

  return v3;
}

- (id)mapRecipientsToContactsWithUnmapped:(BOOL)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77___PSFTZKWSuggestionsTransformerFactory_mapRecipientsToContactsWithUnmapped___block_invoke;
  v5[3] = &unk_1E7C261A8;
  v5[4] = self;
  v6 = a3;
  v3 = MEMORY[0x1B8C8C060](v5, a2);

  return v3;
}

- (id)annotateWithTrialExperimentIdentifiers:(id)a3 rolloutIdentifiers:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __99___PSFTZKWSuggestionsTransformerFactory_annotateWithTrialExperimentIdentifiers_rolloutIdentifiers___block_invoke;
  v11[3] = &unk_1E7C26180;
  v12 = v5;
  v13 = v6;
  v7 = v6;
  v8 = v5;
  v9 = MEMORY[0x1B8C8C060](v11);

  return v9;
}

- (id)boostPriorityContacts:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63___PSFTZKWSuggestionsTransformerFactory_boostPriorityContacts___block_invoke;
  v7[3] = &unk_1E7C261F0;
  v8 = v3;
  v4 = v3;
  v5 = MEMORY[0x1B8C8C060](v7);

  return v5;
}

+ (id)getResultsFromTransformers:(id)a3 suggestions:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count] && objc_msgSend(v6, "count"))
  {
    if (getResultsFromTransformers_suggestions___pasOnceToken20 != -1)
    {
      +[_PSFTZKWSuggestionsTransformerFactory getResultsFromTransformers:suggestions:];
    }

    v7 = getResultsFromTransformers_suggestions___pasExprOnceResult;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__11;
    v18 = __Block_byref_object_dispose__11;
    v19 = v6;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __80___PSFTZKWSuggestionsTransformerFactory_getResultsFromTransformers_suggestions___block_invoke_71;
    v11[3] = &unk_1E7C262F0;
    v12 = v5;
    v13 = &v14;
    v8 = v6;
    v9 = v7;
    dispatch_sync(v9, v11);
    v6 = v15[5];

    _Block_object_dispose(&v14, 8);
  }

  return v6;
}

- (void)formatWithSuggestion:(uint64_t)a1 bundleIdsForGroupMatching:(NSObject *)a2 checkForMessagesGroupIdentifier:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_ERROR, "Group suggestion %@ has recipient without any identifier. Proceeding to filter out entire suggestion", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end