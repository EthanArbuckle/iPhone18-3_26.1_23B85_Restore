@interface _PSFamilyMLPredictionTask
- (id)contactKeysToFetch;
- (id)knowledgeEventUsingPredictions:(id)predictions familyRelations:(id)relations;
- (void)enumerateContactsInContactStoreUsingBlock:(id)block;
- (void)execute:(id)execute;
@end

@implementation _PSFamilyMLPredictionTask

- (void)execute:(id)execute
{
  v33[1] = *MEMORY[0x1E69E9840];
  executeCopy = execute;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __37___PSFamilyMLPredictionTask_execute___block_invoke;
  v31[3] = &unk_1E7C25830;
  v5 = executeCopy;
  v32 = v5;
  v6 = MEMORY[0x1B8C8C060](v31);
  if ((v6[2])())
  {
    v7 = [[_PSFamilyMLModel alloc] initWithActivity:v5];
    v8 = objc_opt_new();
    v9 = objc_opt_new();
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __37___PSFamilyMLPredictionTask_execute___block_invoke_8;
    v21 = &unk_1E7C25858;
    v10 = v6;
    v25 = v10;
    v26 = &v27;
    v11 = v7;
    v22 = v11;
    v12 = v8;
    v23 = v12;
    v13 = v9;
    v24 = v13;
    [(_PSFamilyMLPredictionTask *)self enumerateContactsInContactStoreUsingBlock:&v18];
    if ((v28[3] & 1) == 0)
    {
      v14 = [(_PSFamilyMLPredictionTask *)self knowledgeEventUsingPredictions:v13 familyRelations:v12, v18, v19, v20, v21, v22, v23];
      if (v6[2](v10))
      {
        knowledgeStore = [MEMORY[0x1E69979A0] knowledgeStore];
        v33[0] = v14;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
        [knowledgeStore saveObjects:v16 tracker:&__block_literal_global_18 responseQueue:0 withCompletion:&__block_literal_global_24_0];
      }
    }

    _Block_object_dispose(&v27, 8);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)contactKeysToFetch
{
  v58 = *MEMORY[0x1E69E9840];
  v51 = 0;
  v52 = &v51;
  v53 = 0x2050000000;
  v2 = getCNContactFormatterClass_softClass_1;
  v54 = getCNContactFormatterClass_softClass_1;
  if (!getCNContactFormatterClass_softClass_1)
  {
    ContactsLibraryCore_4();
    v52[3] = objc_getClass("CNContactFormatter");
    getCNContactFormatterClass_softClass_1 = v52[3];
    v2 = v52[3];
  }

  v3 = v2;
  _Block_object_dispose(&v51, 8);
  v50 = [v2 descriptorForRequiredKeysForStyle:0];
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v4 = getCNContactIdentifierKeySymbolLoc_ptr_4;
  v54 = getCNContactIdentifierKeySymbolLoc_ptr_4;
  if (!getCNContactIdentifierKeySymbolLoc_ptr_4)
  {
    v5 = ContactsLibrary_3();
    v52[3] = dlsym(v5, "CNContactIdentifierKey");
    getCNContactIdentifierKeySymbolLoc_ptr_4 = v52[3];
    v4 = v52[3];
  }

  _Block_object_dispose(&v51, 8);
  if (!v4)
  {
    goto LABEL_45;
  }

  v6 = *v4;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v7 = getCNContactBirthdayKeySymbolLoc_ptr;
  v54 = getCNContactBirthdayKeySymbolLoc_ptr;
  v55[0] = v6;
  if (!getCNContactBirthdayKeySymbolLoc_ptr)
  {
    v8 = ContactsLibrary_3();
    v52[3] = dlsym(v8, "CNContactBirthdayKey");
    getCNContactBirthdayKeySymbolLoc_ptr = v52[3];
    v7 = v52[3];
  }

  _Block_object_dispose(&v51, 8);
  if (!v7)
  {
    goto LABEL_45;
  }

  v9 = *v7;
  v55[1] = v9;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v10 = getCNContactNamePrefixKeySymbolLoc_ptr_0;
  v54 = getCNContactNamePrefixKeySymbolLoc_ptr_0;
  if (!getCNContactNamePrefixKeySymbolLoc_ptr_0)
  {
    v11 = ContactsLibrary_3();
    v52[3] = dlsym(v11, "CNContactNamePrefixKey");
    getCNContactNamePrefixKeySymbolLoc_ptr_0 = v52[3];
    v10 = v52[3];
  }

  _Block_object_dispose(&v51, 8);
  if (!v10)
  {
    goto LABEL_45;
  }

  v12 = *v10;
  v55[2] = v12;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v13 = getCNContactGivenNameKeySymbolLoc_ptr_1;
  v54 = getCNContactGivenNameKeySymbolLoc_ptr_1;
  if (!getCNContactGivenNameKeySymbolLoc_ptr_1)
  {
    v14 = ContactsLibrary_3();
    v52[3] = dlsym(v14, "CNContactGivenNameKey");
    getCNContactGivenNameKeySymbolLoc_ptr_1 = v52[3];
    v13 = v52[3];
  }

  _Block_object_dispose(&v51, 8);
  if (!v13)
  {
    goto LABEL_45;
  }

  v15 = *v13;
  v55[3] = v15;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v16 = getCNContactMiddleNameKeySymbolLoc_ptr_1;
  v54 = getCNContactMiddleNameKeySymbolLoc_ptr_1;
  if (!getCNContactMiddleNameKeySymbolLoc_ptr_1)
  {
    v17 = ContactsLibrary_3();
    v52[3] = dlsym(v17, "CNContactMiddleNameKey");
    getCNContactMiddleNameKeySymbolLoc_ptr_1 = v52[3];
    v16 = v52[3];
  }

  _Block_object_dispose(&v51, 8);
  if (!v16)
  {
    goto LABEL_45;
  }

  v18 = *v16;
  v55[4] = v18;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v19 = getCNContactFamilyNameKeySymbolLoc_ptr_1;
  v54 = getCNContactFamilyNameKeySymbolLoc_ptr_1;
  if (!getCNContactFamilyNameKeySymbolLoc_ptr_1)
  {
    v20 = ContactsLibrary_3();
    v52[3] = dlsym(v20, "CNContactFamilyNameKey");
    getCNContactFamilyNameKeySymbolLoc_ptr_1 = v52[3];
    v19 = v52[3];
  }

  _Block_object_dispose(&v51, 8);
  if (!v19)
  {
    goto LABEL_45;
  }

  v49 = *v19;
  v55[5] = v49;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v21 = getCNContactPreviousFamilyNameKeySymbolLoc_ptr_0;
  v54 = getCNContactPreviousFamilyNameKeySymbolLoc_ptr_0;
  if (!getCNContactPreviousFamilyNameKeySymbolLoc_ptr_0)
  {
    v22 = ContactsLibrary_3();
    v52[3] = dlsym(v22, "CNContactPreviousFamilyNameKey");
    getCNContactPreviousFamilyNameKeySymbolLoc_ptr_0 = v52[3];
    v21 = v52[3];
  }

  _Block_object_dispose(&v51, 8);
  if (!v21)
  {
    goto LABEL_45;
  }

  v23 = *v21;
  v55[6] = v23;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v24 = getCNContactNameSuffixKeySymbolLoc_ptr_0;
  v54 = getCNContactNameSuffixKeySymbolLoc_ptr_0;
  if (!getCNContactNameSuffixKeySymbolLoc_ptr_0)
  {
    v25 = ContactsLibrary_3();
    v52[3] = dlsym(v25, "CNContactNameSuffixKey");
    getCNContactNameSuffixKeySymbolLoc_ptr_0 = v52[3];
    v24 = v52[3];
  }

  _Block_object_dispose(&v51, 8);
  if (!v24)
  {
    goto LABEL_45;
  }

  v26 = *v24;
  v55[7] = v26;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v27 = getCNContactNicknameKeySymbolLoc_ptr_1;
  v54 = getCNContactNicknameKeySymbolLoc_ptr_1;
  if (!getCNContactNicknameKeySymbolLoc_ptr_1)
  {
    v28 = ContactsLibrary_3();
    v52[3] = dlsym(v28, "CNContactNicknameKey");
    getCNContactNicknameKeySymbolLoc_ptr_1 = v52[3];
    v27 = v52[3];
  }

  _Block_object_dispose(&v51, 8);
  if (!v27)
  {
    goto LABEL_45;
  }

  v29 = *v27;
  v55[8] = v29;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v30 = getCNContactTypeKeySymbolLoc_ptr_0;
  v54 = getCNContactTypeKeySymbolLoc_ptr_0;
  if (!getCNContactTypeKeySymbolLoc_ptr_0)
  {
    v31 = ContactsLibrary_3();
    v52[3] = dlsym(v31, "CNContactTypeKey");
    getCNContactTypeKeySymbolLoc_ptr_0 = v52[3];
    v30 = v52[3];
  }

  v47 = v9;
  v48 = v12;
  v46 = v6;
  _Block_object_dispose(&v51, 8);
  if (!v30)
  {
    goto LABEL_45;
  }

  v32 = *v30;
  v55[9] = v32;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v33 = getCNContactRelationsKeySymbolLoc_ptr_1;
  v54 = getCNContactRelationsKeySymbolLoc_ptr_1;
  if (!getCNContactRelationsKeySymbolLoc_ptr_1)
  {
    v34 = ContactsLibrary_3();
    v52[3] = dlsym(v34, "CNContactRelationsKey");
    getCNContactRelationsKeySymbolLoc_ptr_1 = v52[3];
    v33 = v52[3];
  }

  _Block_object_dispose(&v51, 8);
  if (!v33)
  {
    goto LABEL_45;
  }

  v35 = *v33;
  v55[10] = v35;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v36 = getCNContactPhoneNumbersKeySymbolLoc_ptr_2;
  v54 = getCNContactPhoneNumbersKeySymbolLoc_ptr_2;
  if (!getCNContactPhoneNumbersKeySymbolLoc_ptr_2)
  {
    v37 = ContactsLibrary_3();
    v52[3] = dlsym(v37, "CNContactPhoneNumbersKey");
    getCNContactPhoneNumbersKeySymbolLoc_ptr_2 = v52[3];
    v36 = v52[3];
  }

  _Block_object_dispose(&v51, 8);
  if (!v36)
  {
    goto LABEL_45;
  }

  v38 = *v36;
  v55[11] = v38;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v39 = getCNContactEmailAddressesKeySymbolLoc_ptr_2;
  v54 = getCNContactEmailAddressesKeySymbolLoc_ptr_2;
  if (!getCNContactEmailAddressesKeySymbolLoc_ptr_2)
  {
    v40 = ContactsLibrary_3();
    v52[3] = dlsym(v40, "CNContactEmailAddressesKey");
    getCNContactEmailAddressesKeySymbolLoc_ptr_2 = v52[3];
    v39 = v52[3];
  }

  _Block_object_dispose(&v51, 8);
  if (!v39)
  {
LABEL_45:
    [_PSBlockedHandlesCache beginSyncingWithTU];
    __break(1u);
  }

  v56 = *v39;
  v57 = v50;
  v41 = MEMORY[0x1E695DEC8];
  v42 = v56;
  v43 = [v41 arrayWithObjects:v55 count:14];

  v44 = *MEMORY[0x1E69E9840];

  return v43;
}

- (void)enumerateContactsInContactStoreUsingBlock:(id)block
{
  blockCopy = block;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v5 = getCNContactStoreClass_softClass_3;
  v16 = getCNContactStoreClass_softClass_3;
  if (!getCNContactStoreClass_softClass_3)
  {
    ContactsLibraryCore_4();
    v14[3] = objc_getClass("CNContactStore");
    getCNContactStoreClass_softClass_3 = v14[3];
    v5 = v14[3];
  }

  v6 = v5;
  _Block_object_dispose(&v13, 8);
  v7 = objc_alloc_init(v5);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v8 = getCNContactFetchRequestClass_softClass_1;
  v16 = getCNContactFetchRequestClass_softClass_1;
  if (!getCNContactFetchRequestClass_softClass_1)
  {
    ContactsLibraryCore_4();
    v14[3] = objc_getClass("CNContactFetchRequest");
    getCNContactFetchRequestClass_softClass_1 = v14[3];
    v8 = v14[3];
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);
  v10 = [v8 alloc];
  contactKeysToFetch = [(_PSFamilyMLPredictionTask *)self contactKeysToFetch];
  v12 = [v10 initWithKeysToFetch:contactKeysToFetch];

  [v12 setContactBatchCount:25];
  [v7 enumerateContactsWithFetchRequest:v12 error:0 usingBlock:blockCopy];
}

- (id)knowledgeEventUsingPredictions:(id)predictions familyRelations:(id)relations
{
  v41 = *MEMORY[0x1E69E9840];
  predictionsCopy = predictions;
  relationsCopy = relations;
  v7 = [MEMORY[0x1E695DF00] now];
  v8 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = relationsCopy;
  v10 = [v9 countByEnumeratingWithState:&v33 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v34;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v8 setObject:&unk_1F2D8C7A8 forKeyedSubscript:*(*(&v33 + 1) + 8 * i)];
      }

      v11 = [v9 countByEnumeratingWithState:&v33 objects:v40 count:16];
    }

    while (v11);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = predictionsCopy;
  v15 = [v14 countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v29 + 1) + 8 * j);
        v20 = [v8 objectForKeyedSubscript:{v19, v29}];

        if (!v20)
        {
          v21 = [v14 objectForKeyedSubscript:v19];
          [v8 setObject:v21 forKeyedSubscript:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v16);
  }

  v22 = MEMORY[0x1E6997960];
  familyPredictionStream = [MEMORY[0x1E69979E8] familyPredictionStream];
  suggestions = [MEMORY[0x1E6997978] suggestions];
  v37 = suggestions;
  v38 = v8;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v26 = [v22 eventWithStream:familyPredictionStream source:0 startDate:v7 endDate:v7 identifierStringValue:@"familyPrediction" metadata:v25];

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

@end