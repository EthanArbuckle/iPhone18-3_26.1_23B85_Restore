@interface _PSContactSuggesterForPeopleWidget
- (_PSContactSuggesterForPeopleWidget)init;
- (id)allEmailAndPhoneNumberHandlesForContact:(id)a3;
- (id)contactKeysToFetch;
- (id)contactSuggestionsWithMaxSuggestions:(int64_t)a3 excludeContactsWithIdentifiers:(id)a4;
- (id)familyMemberContactHandles;
- (id)familyRecommendedContacts;
- (id)favoritedContacts;
- (id)iCloudFamilyMembers;
- (id)interactionBasedRecommendedContacts;
- (void)familyMemberContactHandles;
- (void)familyRecommendedContacts;
- (void)interactionBasedRecommendedContacts;
- (void)processFamilyMember:(id)a3 toFillContactArray:(id)a4;
@end

@implementation _PSContactSuggesterForPeopleWidget

- (_PSContactSuggesterForPeopleWidget)init
{
  v12.receiver = self;
  v12.super_class = _PSContactSuggesterForPeopleWidget;
  v2 = [(_PSContactSuggesterForPeopleWidget *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69C5D60]);
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = [v3 initWithGuardedData:v4];
    candidateContacts = v2->_candidateContacts;
    v2->_candidateContacts = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    priorityFamilyMembers = v2->_priorityFamilyMembers;
    v2->_priorityFamilyMembers = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    nonpriorityFamilyMembers = v2->_nonpriorityFamilyMembers;
    v2->_nonpriorityFamilyMembers = v9;
  }

  return v2;
}

- (id)allEmailAndPhoneNumberHandlesForContact:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 phoneNumbers];
  v5 = [v4 valueForKey:@"value"];

  v6 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 unformattedInternationalStringValue];

        if (v13)
        {
          v14 = [v12 unformattedInternationalStringValue];
          [v6 addObject:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v15 = [v3 emailAddresses];
  v16 = [v15 valueForKey:@"value"];

  [v6 addObjectsFromArray:v16];
  v17 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)contactKeysToFetch
{
  v43 = *MEMORY[0x1E69E9840];
  v36 = getCNContactIdentifierKey_3();
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v2 = getCNContactPhoneNumbersKeySymbolLoc_ptr_5;
  v40 = getCNContactPhoneNumbersKeySymbolLoc_ptr_5;
  v41[0] = v36;
  if (!getCNContactPhoneNumbersKeySymbolLoc_ptr_5)
  {
    v3 = ContactsLibrary_6();
    v38[3] = dlsym(v3, "CNContactPhoneNumbersKey");
    getCNContactPhoneNumbersKeySymbolLoc_ptr_5 = v38[3];
    v2 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v2)
  {
    goto LABEL_34;
  }

  v35 = *v2;
  v41[1] = v35;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v4 = getCNContactEmailAddressesKeySymbolLoc_ptr_5;
  v40 = getCNContactEmailAddressesKeySymbolLoc_ptr_5;
  if (!getCNContactEmailAddressesKeySymbolLoc_ptr_5)
  {
    v5 = ContactsLibrary_6();
    v38[3] = dlsym(v5, "CNContactEmailAddressesKey");
    getCNContactEmailAddressesKeySymbolLoc_ptr_5 = v38[3];
    v4 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v4)
  {
    goto LABEL_34;
  }

  v6 = *v4;
  v41[2] = v6;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v7 = getCNContactGivenNameKeySymbolLoc_ptr_4;
  v40 = getCNContactGivenNameKeySymbolLoc_ptr_4;
  if (!getCNContactGivenNameKeySymbolLoc_ptr_4)
  {
    v8 = ContactsLibrary_6();
    v38[3] = dlsym(v8, "CNContactGivenNameKey");
    getCNContactGivenNameKeySymbolLoc_ptr_4 = v38[3];
    v7 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v7)
  {
    goto LABEL_34;
  }

  v9 = *v7;
  v41[3] = v9;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v10 = getCNContactFamilyNameKeySymbolLoc_ptr_4;
  v40 = getCNContactFamilyNameKeySymbolLoc_ptr_4;
  if (!getCNContactFamilyNameKeySymbolLoc_ptr_4)
  {
    v11 = ContactsLibrary_6();
    v38[3] = dlsym(v11, "CNContactFamilyNameKey");
    getCNContactFamilyNameKeySymbolLoc_ptr_4 = v38[3];
    v10 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v10)
  {
    goto LABEL_34;
  }

  v12 = *v10;
  v41[4] = v12;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v13 = getCNContactMiddleNameKeySymbolLoc_ptr_4;
  v40 = getCNContactMiddleNameKeySymbolLoc_ptr_4;
  if (!getCNContactMiddleNameKeySymbolLoc_ptr_4)
  {
    v14 = ContactsLibrary_6();
    v38[3] = dlsym(v14, "CNContactMiddleNameKey");
    getCNContactMiddleNameKeySymbolLoc_ptr_4 = v38[3];
    v13 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v13)
  {
    goto LABEL_34;
  }

  v15 = *v13;
  v41[5] = v15;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v16 = getCNContactNameSuffixKeySymbolLoc_ptr_3;
  v40 = getCNContactNameSuffixKeySymbolLoc_ptr_3;
  if (!getCNContactNameSuffixKeySymbolLoc_ptr_3)
  {
    v17 = ContactsLibrary_6();
    v38[3] = dlsym(v17, "CNContactNameSuffixKey");
    getCNContactNameSuffixKeySymbolLoc_ptr_3 = v38[3];
    v16 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v16)
  {
    goto LABEL_34;
  }

  v18 = *v16;
  v41[6] = v18;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v19 = getCNContactNamePrefixKeySymbolLoc_ptr_3;
  v40 = getCNContactNamePrefixKeySymbolLoc_ptr_3;
  if (!getCNContactNamePrefixKeySymbolLoc_ptr_3)
  {
    v20 = ContactsLibrary_6();
    v38[3] = dlsym(v20, "CNContactNamePrefixKey");
    getCNContactNamePrefixKeySymbolLoc_ptr_3 = v38[3];
    v19 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v19)
  {
    goto LABEL_34;
  }

  v21 = *v19;
  v41[7] = v21;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v22 = getCNContactOrganizationNameKeySymbolLoc_ptr_0;
  v40 = getCNContactOrganizationNameKeySymbolLoc_ptr_0;
  if (!getCNContactOrganizationNameKeySymbolLoc_ptr_0)
  {
    v23 = ContactsLibrary_6();
    v38[3] = dlsym(v23, "CNContactOrganizationNameKey");
    getCNContactOrganizationNameKeySymbolLoc_ptr_0 = v38[3];
    v22 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v22)
  {
    goto LABEL_34;
  }

  v24 = *v22;
  v41[8] = v24;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v25 = getCNContactNicknameKeySymbolLoc_ptr_4;
  v40 = getCNContactNicknameKeySymbolLoc_ptr_4;
  if (!getCNContactNicknameKeySymbolLoc_ptr_4)
  {
    v26 = ContactsLibrary_6();
    v38[3] = dlsym(v26, "CNContactNicknameKey");
    getCNContactNicknameKeySymbolLoc_ptr_4 = v38[3];
    v25 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v25)
  {
    goto LABEL_34;
  }

  v27 = *v25;
  v41[9] = v27;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v28 = getCNContactTypeKeySymbolLoc_ptr_3;
  v40 = getCNContactTypeKeySymbolLoc_ptr_3;
  if (!getCNContactTypeKeySymbolLoc_ptr_3)
  {
    v29 = ContactsLibrary_6();
    v38[3] = dlsym(v29, "CNContactTypeKey");
    getCNContactTypeKeySymbolLoc_ptr_3 = v38[3];
    v28 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v28)
  {
LABEL_34:
    [_PSBlockedHandlesCache beginSyncingWithTU];
    __break(1u);
  }

  v42 = *v28;
  v30 = MEMORY[0x1E695DEC8];
  v31 = v42;
  v32 = [v30 arrayWithObjects:v41 count:11];

  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

- (void)processFamilyMember:(id)a3 toFillContactArray:(id)a4
{
  v10 = a3;
  v5 = a4;
  if (([v10 isMe] & 1) == 0)
  {
    v6 = [v10 contact];

    if (v6)
    {
      v7 = [_PSContact alloc];
      v8 = [v10 contact];
      v9 = -[_PSContact initWithCNContact:isChild:](v7, "initWithCNContact:isChild:", v8, [v10 isChildAccount]);

      [v5 addObject:v9];
    }
  }
}

- (id)familyMemberContactHandles
{
  *buf = 0;
  v37 = buf;
  v38 = 0x2050000000;
  v3 = getFAFetchFamilyCircleRequestClass_softClass_0;
  v39 = getFAFetchFamilyCircleRequestClass_softClass_0;
  if (!getFAFetchFamilyCircleRequestClass_softClass_0)
  {
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __getFAFetchFamilyCircleRequestClass_block_invoke_0;
    v33 = &unk_1E7C23BF0;
    v34 = buf;
    __getFAFetchFamilyCircleRequestClass_block_invoke_0(&v30);
    v3 = *(v37 + 3);
  }

  v4 = v3;
  _Block_object_dispose(buf, 8);
  v5 = objc_alloc_init(v3);
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__16;
  v34 = __Block_byref_object_dispose__16;
  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = dispatch_semaphore_create(0);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __64___PSContactSuggesterForPeopleWidget_familyMemberContactHandles__block_invoke;
  v27[3] = &unk_1E7C25020;
  v27[4] = self;
  v29 = &v30;
  v7 = v6;
  v28 = v7;
  [v5 startRequestWithCompletionHandler:v27];
  v8 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v7, v8))
  {
    v9 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B5ED1000, v9, OS_LOG_TYPE_INFO, "Timeout in FAFetchFamilyCircleRequest", buf, 2u);
    }

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = *(v31 + 40);
    *(v31 + 40) = v10;
  }

  if (![*(v31 + 40) count])
  {
    [v5 setCachePolicy:1];
    v12 = dispatch_semaphore_create(0);

    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __64___PSContactSuggesterForPeopleWidget_familyMemberContactHandles__block_invoke_38;
    v23 = &unk_1E7C25020;
    v24 = self;
    v26 = &v30;
    v7 = v12;
    v25 = v7;
    [v5 startRequestWithCompletionHandler:&v20];
    v13 = dispatch_time(0, 60000000000);
    if (dispatch_semaphore_wait(v7, v13))
    {
      v14 = [_PSLogging generalChannel:v20];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B5ED1000, v14, OS_LOG_TYPE_INFO, "Timeout in FAFetchFamilyCircleRequest with cachePolicy=YES", buf, 2u);
      }

      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v16 = *(v31 + 40);
      *(v31 + 40) = v15;
    }
  }

  v17 = [_PSLogging generalChannel:v20];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [(_PSContactSuggesterForPeopleWidget *)&v31 familyMemberContactHandles];
  }

  v18 = [*(v31 + 40) copy];
  _Block_object_dispose(&v30, 8);

  return v18;
}

- (id)iCloudFamilyMembers
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(_PSContactSuggesterForPeopleWidget *)self familyMemberContactHandles];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v30 = 0u;
  v4 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v28;
    *&v5 = 138412290;
    v24 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v10 = [v9 cnContact];
        v11 = [v10 identifier];

        if (v11)
        {
          if ([v9 isChild])
          {
            [(_PSContactSuggesterForPeopleWidget *)self priorityFamilyMembers];
          }

          else
          {
            [(_PSContactSuggesterForPeopleWidget *)self nonpriorityFamilyMembers];
          }
          v12 = ;
          v13 = [v9 cnContact];
          v14 = [v13 identifier];
          [v12 addObject:v14];

          v15 = [v9 cnContact];
          v16 = [v15 identifier];
          [v3 addObject:v16];

          v17 = +[_PSLogging generalChannel];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = v24;
            v32 = v9;
            _os_log_debug_impl(&dword_1B5ED1000, v17, OS_LOG_TYPE_DEBUG, "i-Cloud family member contact fetched: %@", buf, 0xCu);
          }

          candidateContacts = self->_candidateContacts;
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __57___PSContactSuggesterForPeopleWidget_iCloudFamilyMembers__block_invoke;
          v26[3] = &unk_1E7C26768;
          v26[4] = v9;
          [(_PASLock *)candidateContacts runWithLockAcquired:v26];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v6);
  }

  v19 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "count")}];
    *buf = 138412290;
    v32 = v20;
    _os_log_impl(&dword_1B5ED1000, v19, OS_LOG_TYPE_DEFAULT, "ICloudFamilyMembers count: %@", buf, 0xCu);
  }

  v21 = [v3 copy];
  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)familyRecommendedContacts
{
  v37 = *MEMORY[0x1E69E9840];
  v25 = objc_alloc_init(_PSFamilyRecommender);
  v3 = [(_PSFamilyRecommender *)v25 familyRecommendationSuggestionsForShareSheetWithPredictionContext:0];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = [v10 recipients];
        v12 = [v11 count];

        if (v12)
        {
          v13 = [v10 recipients];
          v14 = [v13 firstObject];

          v15 = [v14 contact];

          if (v15)
          {
            v16 = [v14 contact];
            v17 = [v16 identifier];
            [v4 addObject:v17];

            v18 = +[_PSLogging generalChannel];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              [(_PSContactSuggesterForPeopleWidget *)v34 familyRecommendedContacts:v14];
            }

            candidateContacts = self->_candidateContacts;
            v26[0] = MEMORY[0x1E69E9820];
            v26[1] = 3221225472;
            v26[2] = __63___PSContactSuggesterForPeopleWidget_familyRecommendedContacts__block_invoke;
            v26[3] = &unk_1E7C26768;
            v27 = v14;
            [(_PASLock *)candidateContacts runWithLockAcquired:v26];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v7);
  }

  v20 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
    *buf = 138412290;
    v33 = v21;
    _os_log_impl(&dword_1B5ED1000, v20, OS_LOG_TYPE_DEFAULT, "familyRecommendedContacts count: %@", buf, 0xCu);
  }

  v22 = [v4 copy];
  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)interactionBasedRecommendedContacts
{
  v69 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(_PSContactSuggester);
  v3 = [(_PSContactSuggester *)v2 contactSuggestionsWithMaxSuggestions:50 excludeContactsByIdentifiers:MEMORY[0x1E695E0F0] interactionHistoryCap:1000];
  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_34];
  v5 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v68 = v4;
    _os_log_impl(&dword_1B5ED1000, v5, OS_LOG_TYPE_DEFAULT, "Interaction based suggestions before contact resolution %{private}@", buf, 0xCu);
  }

  v6 = objc_alloc_init(getCNContactStoreClass_0());
  v7 = getCNContactIdentifierKey_3();
  v66 = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
  v63 = 0;
  v9 = [v6 _crossPlatformUnifiedMeContactWithKeysToFetch:v8 error:&v63];
  v10 = v63;

  v46 = v3;
  v47 = v2;
  v44 = v10;
  if (v10)
  {
    v11 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_PSContactSuggesterForPeopleWidget interactionBasedRecommendedContacts];
    }
  }

  else if (v9)
  {
    v49 = v9;
    v13 = 1;
    goto LABEL_12;
  }

  v12 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [_PSContactSuggesterForPeopleWidget interactionBasedRecommendedContacts];
  }

  v13 = 0;
  v49 = 0;
LABEL_12:
  v14 = [_PSContactResolver alloc];
  v15 = self;
  v16 = [(_PSContactSuggesterForPeopleWidget *)self contactKeysToFetch];
  v45 = v6;
  v17 = [(_PSContactResolver *)v14 initWithContactStore:v6 keysToFetch:v16];

  v50 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v4;
  v18 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
  v19 = 0x1E7C23000uLL;
  if (v18)
  {
    v20 = v18;
    v52 = *v60;
    v21 = v13 ^ 1;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v60 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v59 + 1) + 8 * i);
        v24 = [v23 contactIdentifier];
        v25 = [(_PSContactResolver *)v17 contactWithIdentifier:v24];

        if (!v25)
        {
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v26 = [v23 handleAndAppFrequencies];
          v27 = [v26 countByEnumeratingWithState:&v55 objects:v64 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v56;
LABEL_20:
            v30 = 0;
            while (1)
            {
              if (*v56 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = [*(*(&v55 + 1) + 8 * v30) handle];
              v25 = [(_PSContactResolver *)v17 resolveContactIfPossibleFromContactIdentifierString:v31 pickFirstOfMultiple:1];

              if (v25)
              {
                break;
              }

              if (v28 == ++v30)
              {
                v28 = [v26 countByEnumeratingWithState:&v55 objects:v64 count:16];
                if (v28)
                {
                  goto LABEL_20;
                }

                v25 = 0;
                break;
              }
            }

            v15 = self;
            v19 = 0x1E7C23000;
          }

          else
          {
            v25 = 0;
          }
        }

        if (v25)
        {
          v32 = v21;
        }

        else
        {
          v32 = 1;
        }

        if ((v32 & 1) != 0 || ([v49 identifier], v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "identifier"), v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v33, "isEqualToString:", v34), v34, v33, (v35 & 1) == 0))
        {
          if (v25)
          {
            v36 = [*(v19 + 1360) generalChannel];
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v68 = v25;
              _os_log_debug_impl(&dword_1B5ED1000, v36, OS_LOG_TYPE_DEBUG, "Interaction model suggested contact fetched: %@", buf, 0xCu);
            }

            v37 = [v25 identifier];
            [v50 addObject:v37];

            candidateContacts = v15->_candidateContacts;
            v53[0] = MEMORY[0x1E69E9820];
            v53[1] = 3221225472;
            v53[2] = __73___PSContactSuggesterForPeopleWidget_interactionBasedRecommendedContacts__block_invoke_45;
            v53[3] = &unk_1E7C26768;
            v54 = v25;
            [(_PASLock *)candidateContacts runWithLockAcquired:v53];
          }
        }
      }

      v20 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
    }

    while (v20);
  }

  v39 = [*(v19 + 1360) generalChannel];
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v50, "count")}];
    *buf = 138412290;
    v68 = v40;
    _os_log_impl(&dword_1B5ED1000, v39, OS_LOG_TYPE_DEFAULT, "interactionBasedRecommendedContacts count: %@", buf, 0xCu);
  }

  v41 = [v50 copy];
  v42 = *MEMORY[0x1E69E9840];

  return v41;
}

- (id)favoritedContacts
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E69978A8] sharedInstance];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55___PSContactSuggesterForPeopleWidget_favoritedContacts__block_invoke;
  v8[3] = &unk_1E7C24330;
  v5 = v3;
  v9 = v5;
  v10 = self;
  [v4 accessFavoriteContactEntriesWithBlock:v8];

  v6 = v5;
  return v5;
}

- (id)contactSuggestionsWithMaxSuggestions:(int64_t)a3 excludeContactsWithIdentifiers:(id)a4
{
  v179[1] = *MEMORY[0x1E69E9840];
  v134 = a4;
  v137 = self;
  v5 = [(_PSContactSuggesterForPeopleWidget *)self iCloudFamilyMembers];
  v121 = [(_PSContactSuggesterForPeopleWidget *)self interactionBasedRecommendedContacts];
  v129 = [(_PSContactSuggesterForPeopleWidget *)self favoritedContacts];
  v131 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v118 = objc_alloc_init(getCNContactStoreClass_0());
  v6 = getCNContactIdentifierKey_3();
  v179[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v179 count:1];
  v168 = 0;
  v136 = [v118 _crossPlatformUnifiedMeContactWithKeysToFetch:v7 error:&v168];
  v120 = v168;

  if (v120)
  {
    v8 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [_PSContactSuggesterForPeopleWidget interactionBasedRecommendedContacts];
    }

    goto LABEL_5;
  }

  if (!v136)
  {
LABEL_5:
    v9 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_PSContactSuggesterForPeopleWidget interactionBasedRecommendedContacts];
    }

    v136 = 0;
  }

  v135 = objc_opt_new();
  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  obj = v5;
  v10 = [obj countByEnumeratingWithState:&v164 objects:v178 count:16];
  if (v10)
  {
    v11 = *v165;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v165 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v164 + 1) + 8 * i);
        v14 = [v136 identifier];
        v15 = [v14 isEqualToString:v13];

        if ((v15 & 1) == 0)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v175 = __Block_byref_object_copy__16;
          v176 = __Block_byref_object_dispose__16;
          v177 = 0;
          candidateContacts = v137->_candidateContacts;
          v163[0] = MEMORY[0x1E69E9820];
          v163[1] = 3221225472;
          v163[2] = __106___PSContactSuggesterForPeopleWidget_contactSuggestionsWithMaxSuggestions_excludeContactsWithIdentifiers___block_invoke;
          v163[3] = &unk_1E7C24808;
          v163[5] = buf;
          v163[4] = v13;
          [(_PASLock *)candidateContacts runWithLockAcquired:v163];
          v17 = MEMORY[0x1E695DFD8];
          v18 = [(_PSContactSuggesterForPeopleWidget *)v137 allEmailAndPhoneNumberHandlesForContact:*(*&buf[8] + 40)];
          v19 = [v17 setWithArray:v18];

          if ([v19 intersectsSet:v135])
          {
            v20 = [v19 allObjects];
            [v135 addObjectsFromArray:v20];
          }

          else
          {
            v21 = [*(*&buf[8] + 40) identifier];
            v22 = [v131 objectForKey:v21];

            if (v22)
            {
              v23 = [*(*&buf[8] + 40) identifier];
              v24 = [v131 objectForKey:v23];

              [(_PSContactSuggestion *)v24 peopleWidgetScore];
              [(_PSContactSuggestion *)v24 setPeopleWidgetScore:v25 + 4.0];
              v26 = [*(*&buf[8] + 40) identifier];
              [v131 setObject:v24 forKeyedSubscript:v26];
            }

            else
            {
              v27 = [_PSContactSuggestion alloc];
              v24 = [(_PSContactSuggestion *)v27 initWithContact:*(*&buf[8] + 40) andScore:4.0];
              v26 = [*(*&buf[8] + 40) identifier];
              [v131 setValue:v24 forKey:v26];
            }

            v20 = [v19 allObjects];
            [v135 addObjectsFromArray:v20];
          }

          _Block_object_dispose(buf, 8);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v164 objects:v178 count:16];
    }

    while (v10);
  }

  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  v122 = v129;
  v28 = [v122 countByEnumeratingWithState:&v159 objects:v173 count:16];
  if (v28)
  {
    v29 = *v160;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v160 != v29)
        {
          objc_enumerationMutation(v122);
        }

        v31 = *(*(&v159 + 1) + 8 * j);
        v32 = [v136 identifier];
        v33 = [v32 isEqualToString:v31];

        if ((v33 & 1) == 0)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v175 = __Block_byref_object_copy__16;
          v176 = __Block_byref_object_dispose__16;
          v177 = 0;
          v34 = v137->_candidateContacts;
          v158[0] = MEMORY[0x1E69E9820];
          v158[1] = 3221225472;
          v158[2] = __106___PSContactSuggesterForPeopleWidget_contactSuggestionsWithMaxSuggestions_excludeContactsWithIdentifiers___block_invoke_2;
          v158[3] = &unk_1E7C24808;
          v158[4] = v31;
          v158[5] = buf;
          [(_PASLock *)v34 runWithLockAcquired:v158];
          v35 = MEMORY[0x1E695DFD8];
          v36 = [(_PSContactSuggesterForPeopleWidget *)v137 allEmailAndPhoneNumberHandlesForContact:*(*&buf[8] + 40)];
          v37 = [v35 setWithArray:v36];

          if ([v37 intersectsSet:v135])
          {
            v38 = [v37 allObjects];
            [v135 addObjectsFromArray:v38];
          }

          else
          {
            v39 = [*(*&buf[8] + 40) identifier];
            v40 = [v131 objectForKey:v39];

            if (v40)
            {
              v41 = [*(*&buf[8] + 40) identifier];
              v42 = [v131 objectForKey:v41];

              [(_PSContactSuggestion *)v42 peopleWidgetScore];
              [(_PSContactSuggestion *)v42 setPeopleWidgetScore:v43 + 3.0];
              v44 = [*(*&buf[8] + 40) identifier];
              [v131 setObject:v42 forKeyedSubscript:v44];
            }

            else
            {
              v45 = [_PSContactSuggestion alloc];
              v42 = [(_PSContactSuggestion *)v45 initWithContact:*(*&buf[8] + 40) andScore:3.0];
              v44 = [*(*&buf[8] + 40) identifier];
              [v131 setValue:v42 forKey:v44];
            }

            v38 = [v37 allObjects];
            [v135 addObjectsFromArray:v38];
          }

          _Block_object_dispose(buf, 8);
        }
      }

      v28 = [v122 countByEnumeratingWithState:&v159 objects:v173 count:16];
    }

    while (v28);
  }

  if ([v121 count])
  {
    v46 = 0;
    v126 = MEMORY[0x1E69E9820];
    v47 = 10;
    do
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v175 = __Block_byref_object_copy__16;
      v176 = __Block_byref_object_dispose__16;
      v177 = 0;
      v48 = v137->_candidateContacts;
      v154[0] = v126;
      v154[1] = 3221225472;
      v154[2] = __106___PSContactSuggesterForPeopleWidget_contactSuggestionsWithMaxSuggestions_excludeContactsWithIdentifiers___block_invoke_3;
      v154[3] = &unk_1E7C26790;
      v156 = buf;
      v49 = v121;
      v155 = v49;
      v157 = v46;
      [(_PASLock *)v48 runWithLockAcquired:v154];
      v50 = [v136 identifier];
      v51 = [*(*&buf[8] + 40) identifier];
      v52 = [v50 isEqualToString:v51];

      if ((v52 & 1) == 0)
      {
        v53 = MEMORY[0x1E695DFD8];
        v54 = [(_PSContactSuggesterForPeopleWidget *)v137 allEmailAndPhoneNumberHandlesForContact:*(*&buf[8] + 40)];
        v55 = [v53 setWithArray:v54];

        if ([v55 intersectsSet:v135])
        {
          v56 = [v55 allObjects];
          [v135 addObjectsFromArray:v56];
        }

        else
        {
          v57 = [*(*&buf[8] + 40) identifier];
          v58 = [v131 objectForKey:v57];

          if (v58)
          {
            v59 = [*(*&buf[8] + 40) identifier];
            v60 = [v131 objectForKey:v59];

            [(_PSContactSuggestion *)v60 peopleWidgetScore];
            [(_PSContactSuggestion *)v60 setPeopleWidgetScore:v61 + ((v47 / 10.0) + (v47 / 10.0))];
            v62 = [*(*&buf[8] + 40) identifier];
            [v131 setObject:v60 forKeyedSubscript:v62];
          }

          else
          {
            v63 = [_PSContactSuggestion alloc];
            v60 = [(_PSContactSuggestion *)v63 initWithContact:*(*&buf[8] + 40) andScore:((v47 / 10.0) + (v47 / 10.0))];
            v62 = [*(*&buf[8] + 40) identifier];
            [v131 setValue:v60 forKey:v62];
          }

          v56 = [v55 allObjects];
          [v135 addObjectsFromArray:v56];
        }
      }

      _Block_object_dispose(buf, 8);
      v64 = [v49 count];
      if (v46 > 8)
      {
        break;
      }

      ++v46;
      --v47;
    }

    while (v64 > v46);
  }

  v65 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v65, OS_LOG_TYPE_INFO, "Suggestion scoring done", buf, 2u);
  }

  v130 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v132 = v131;
  v66 = [v132 countByEnumeratingWithState:&v150 objects:v172 count:16];
  if (v66)
  {
    v67 = *v151;
    do
    {
      for (k = 0; k != v66; ++k)
      {
        if (*v151 != v67)
        {
          objc_enumerationMutation(v132);
        }

        v69 = [v132 objectForKeyedSubscript:*(*(&v150 + 1) + 8 * k)];
        [v130 addObject:v69];
      }

      v66 = [v132 countByEnumeratingWithState:&v150 objects:v172 count:16];
    }

    while (v66);
  }

  v70 = [v130 sortedArrayUsingComparator:&__block_literal_global_53_0];
  v71 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v71, OS_LOG_TYPE_INFO, "Suggestion ranking based on score done", buf, 2u);
  }

  v127 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v128 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v124 = v70;
  v72 = [v124 countByEnumeratingWithState:&v146 objects:v171 count:16];
  if (v72)
  {
    v73 = *v147;
    do
    {
      for (m = 0; m != v72; ++m)
      {
        if (*v147 != v73)
        {
          objc_enumerationMutation(v124);
        }

        v75 = *(*(&v146 + 1) + 8 * m);
        v76 = [(_PSContactSuggesterForPeopleWidget *)v137 priorityFamilyMembers];
        v77 = [v75 contact];
        v78 = [v77 identifier];
        if (![v76 containsObject:v78])
        {

          goto LABEL_75;
        }

        if (!v134 || ![v134 count])
        {

LABEL_74:
          [v127 addObject:v75];
          v76 = [v75 contact];
          v77 = [v76 identifier];
          [v128 addObject:v77];
          --a3;
LABEL_75:

          continue;
        }

        v79 = [v75 contact];
        v80 = [v79 identifier];
        v81 = [v134 containsObject:v80];

        if ((v81 & 1) == 0)
        {
          goto LABEL_74;
        }
      }

      v72 = [v124 countByEnumeratingWithState:&v146 objects:v171 count:16];
    }

    while (v72);
  }

  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v125 = v124;
  v82 = [v125 countByEnumeratingWithState:&v142 objects:v170 count:16];
  if (!v82)
  {
    goto LABEL_94;
  }

  v83 = *v143;
  do
  {
    for (n = 0; n != v82; ++n)
    {
      if (*v143 != v83)
      {
        objc_enumerationMutation(v125);
      }

      v85 = *(*(&v142 + 1) + 8 * n);
      v86 = [(_PSContactSuggesterForPeopleWidget *)v137 nonpriorityFamilyMembers];
      v87 = [v85 contact];
      v88 = [v87 identifier];
      if (![v86 containsObject:v88])
      {

        goto LABEL_91;
      }

      if (!v134 || ![v134 count])
      {

LABEL_90:
        [v127 addObject:v85];
        v86 = [v85 contact];
        v87 = [v86 identifier];
        [v128 addObject:v87];
        --a3;
LABEL_91:

        continue;
      }

      v89 = [v85 contact];
      v90 = [v89 identifier];
      v91 = [v134 containsObject:v90];

      if ((v91 & 1) == 0)
      {
        goto LABEL_90;
      }
    }

    v82 = [v125 countByEnumeratingWithState:&v142 objects:v170 count:16];
  }

  while (v82);
LABEL_94:

  if (a3 >= 1)
  {
    v92 = 0;
    do
    {
      if ([v125 count] <= v92)
      {
        break;
      }

      if (v134)
      {
        v93 = [v125 objectAtIndexedSubscript:v92];
        v94 = [v93 contact];
        v95 = [v94 identifier];
        v96 = [v134 containsObject:v95];

        if (v96)
        {
          goto LABEL_100;
        }
      }

      v97 = [v125 objectAtIndexedSubscript:v92];
      v98 = [v97 contact];
      v99 = [v98 identifier];
      v100 = [v128 containsObject:v99];

      if (v100)
      {
LABEL_100:
        v101 = a3 + 1;
      }

      else
      {
        v102 = [v125 objectAtIndexedSubscript:v92];
        [v127 addObject:v102];

        v103 = [v125 objectAtIndexedSubscript:v92];
        v104 = [v103 contact];
        v105 = [v104 identifier];
        [v128 addObject:v105];

        v101 = a3;
      }

      ++v92;
      a3 = v101;
    }

    while (v101 > v92);
  }

  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v106 = v127;
  v107 = [v106 countByEnumeratingWithState:&v138 objects:v169 count:16];
  if (v107)
  {
    v108 = *v139;
    do
    {
      for (ii = 0; ii != v107; ++ii)
      {
        if (*v139 != v108)
        {
          objc_enumerationMutation(v106);
        }

        v110 = *(*(&v138 + 1) + 8 * ii);
        v111 = +[_PSLogging generalChannel];
        if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
        {
          v112 = [v110 contact];
          v113 = [v112 givenName];
          v114 = MEMORY[0x1E696AD98];
          [v110 peopleWidgetScore];
          v115 = [v114 numberWithDouble:?];
          *buf = 138478083;
          *&buf[4] = v113;
          *&buf[12] = 2112;
          *&buf[14] = v115;
          _os_log_impl(&dword_1B5ED1000, v111, OS_LOG_TYPE_DEFAULT, "Suggestions: %{private}@, score: %@", buf, 0x16u);
        }
      }

      v107 = [v106 countByEnumeratingWithState:&v138 objects:v169 count:16];
    }

    while (v107);
  }

  v116 = *MEMORY[0x1E69E9840];

  return v106;
}

- (void)familyMemberContactHandles
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_DEBUG, "familyMembers %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)familyRecommendedContacts
{
  v7 = [a2 contact];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_1B5ED1000, a4, OS_LOG_TYPE_DEBUG, "Family-recommender suggested contact fetched: %@", a1, 0xCu);
}

- (void)interactionBasedRecommendedContacts
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end