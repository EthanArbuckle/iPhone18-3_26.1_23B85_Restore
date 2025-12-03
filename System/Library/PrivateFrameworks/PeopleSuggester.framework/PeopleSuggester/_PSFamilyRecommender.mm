@interface _PSFamilyRecommender
- (BOOL)regexMatchForRegex:(id)regex string:(id)string;
- (CNContactStore)contactStore;
- (HKMedicalIDStore)medicalIDStore;
- (_CDInteractionStore)interactionStore;
- (_PSContactResolver)contactResolver;
- (_PSFamilyRecommender)init;
- (id)contactIdsFromContactNamesUsingMe:(id)me;
- (id)contactIdsFromContactRelationsUsingMe:(id)me;
- (id)contactIdsFromEmergencyContacts;
- (id)contactKeysToFetch;
- (id)currentFamily;
- (id)currentFamilyExcludingMe:(id)me;
- (id)familyRecipientsForShareSheetWithPredictionContext:(id)context;
- (id)familyRecommendationSuggestionsForShareSheetWithPredictionContext:(id)context;
- (id)fetchAllContactIdsFromContactStore:(id)store;
- (id)handleAndBundleIdDictionaryForFamilyRecipientContact:(id)contact lookBackDays:(int64_t)days;
- (id)nonFamilyRelations;
- (id)recipientFromFamilyContactId:(id)id familySuggestions:(id)suggestions me:(id)me currentFamilyIds:(id)ids;
- (id)relationshipRegularExpressionForRelationship;
- (id)rerankFamilyRecipients:(id)recipients usingPredictionContext:(id)context;
- (id)suggestionsForPhotosContactInferencesWithPredictionContext:(id)context;
- (id)suggestionsForPhotosRelationshipsWithPredictionContext:(id)context;
- (id)suggestionsFromRecipients:(id)recipients;
- (unint64_t)indexToInsertDate:(id)date array:(id)array;
@end

@implementation _PSFamilyRecommender

- (_PSFamilyRecommender)init
{
  v9.receiver = self;
  v9.super_class = _PSFamilyRecommender;
  v2 = [(_PSFamilyRecommender *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_UTILITY, -15);

    v6 = dispatch_queue_create("com.apple.PeopleSuggester.familyrecommender-task-queue", v5);
    queue = v3->_queue;
    v3->_queue = v6;
  }

  return v3;
}

- (_CDInteractionStore)interactionStore
{
  os_unfair_lock_lock(&self->_lock);
  interactionStore = self->_interactionStore;
  if (!interactionStore)
  {
    v4 = MEMORY[0x1E69978F8];
    defaultDatabaseDirectory = [MEMORY[0x1E69978F8] defaultDatabaseDirectory];
    v6 = [v4 storeWithDirectory:defaultDatabaseDirectory readOnly:1];
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
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getCNContactStoreClass_softClass_1;
    v13 = getCNContactStoreClass_softClass_1;
    if (!getCNContactStoreClass_softClass_1)
    {
      ContactsLibraryCore_1();
      v11[3] = objc_getClass("CNContactStore");
      getCNContactStoreClass_softClass_1 = v11[3];
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = objc_alloc_init(v4);
    v7 = self->_contactStore;
    self->_contactStore = v6;

    contactStore = self->_contactStore;
  }

  v8 = contactStore;
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (HKMedicalIDStore)medicalIDStore
{
  os_unfair_lock_lock(&self->_lock);
  medicalIDStore = self->_medicalIDStore;
  if (!medicalIDStore)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v4 = getHKMedicalIDStoreClass_softClass;
    v17 = getHKMedicalIDStoreClass_softClass;
    if (!getHKMedicalIDStoreClass_softClass)
    {
      HealthKitLibraryCore();
      v15[3] = objc_getClass("HKMedicalIDStore");
      getHKMedicalIDStoreClass_softClass = v15[3];
      v4 = v15[3];
    }

    v5 = v4;
    _Block_object_dispose(&v14, 8);
    v6 = [v4 alloc];
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v7 = getHKHealthStoreClass_softClass;
    v17 = getHKHealthStoreClass_softClass;
    if (!getHKHealthStoreClass_softClass)
    {
      HealthKitLibraryCore();
      v15[3] = objc_getClass("HKHealthStore");
      getHKHealthStoreClass_softClass = v15[3];
      v7 = v15[3];
    }

    v8 = v7;
    _Block_object_dispose(&v14, 8);
    v9 = objc_alloc_init(v7);
    v10 = [v6 initWithHealthStore:v9];
    v11 = self->_medicalIDStore;
    self->_medicalIDStore = v10;

    medicalIDStore = self->_medicalIDStore;
  }

  v12 = medicalIDStore;
  os_unfair_lock_unlock(&self->_lock);

  return v12;
}

- (_PSContactResolver)contactResolver
{
  os_unfair_lock_lock(&self->_lock);
  contactResolver = self->_contactResolver;
  if (!contactResolver)
  {
    v4 = objc_alloc_init(_PSContactResolver);
    v5 = self->_contactResolver;
    self->_contactResolver = v4;

    contactResolver = self->_contactResolver;
  }

  v6 = contactResolver;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)contactKeysToFetch
{
  v52 = *MEMORY[0x1E69E9840];
  v45 = 0;
  v46 = &v45;
  v47 = 0x2050000000;
  v2 = getCNContactFormatterClass_softClass_0;
  v48 = getCNContactFormatterClass_softClass_0;
  if (!getCNContactFormatterClass_softClass_0)
  {
    ContactsLibraryCore_1();
    v46[3] = objc_getClass("CNContactFormatter");
    getCNContactFormatterClass_softClass_0 = v46[3];
    v2 = v46[3];
  }

  v3 = v2;
  _Block_object_dispose(&v45, 8);
  v44 = [v2 descriptorForRequiredKeysForStyle:0];
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v4 = getCNContactIdentifierKeySymbolLoc_ptr_1;
  v48 = getCNContactIdentifierKeySymbolLoc_ptr_1;
  if (!getCNContactIdentifierKeySymbolLoc_ptr_1)
  {
    v5 = ContactsLibrary_0();
    v46[3] = dlsym(v5, "CNContactIdentifierKey");
    getCNContactIdentifierKeySymbolLoc_ptr_1 = v46[3];
    v4 = v46[3];
  }

  _Block_object_dispose(&v45, 8);
  if (!v4)
  {
    goto LABEL_42;
  }

  v43 = *v4;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v6 = getCNContactNamePrefixKeySymbolLoc_ptr;
  v48 = getCNContactNamePrefixKeySymbolLoc_ptr;
  v49[0] = v43;
  if (!getCNContactNamePrefixKeySymbolLoc_ptr)
  {
    v7 = ContactsLibrary_0();
    v46[3] = dlsym(v7, "CNContactNamePrefixKey");
    getCNContactNamePrefixKeySymbolLoc_ptr = v46[3];
    v6 = v46[3];
  }

  _Block_object_dispose(&v45, 8);
  if (!v6)
  {
    goto LABEL_42;
  }

  v42 = *v6;
  v49[1] = v42;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v8 = getCNContactGivenNameKeySymbolLoc_ptr_0;
  v48 = getCNContactGivenNameKeySymbolLoc_ptr_0;
  if (!getCNContactGivenNameKeySymbolLoc_ptr_0)
  {
    v9 = ContactsLibrary_0();
    v46[3] = dlsym(v9, "CNContactGivenNameKey");
    getCNContactGivenNameKeySymbolLoc_ptr_0 = v46[3];
    v8 = v46[3];
  }

  _Block_object_dispose(&v45, 8);
  if (!v8)
  {
    goto LABEL_42;
  }

  v41 = *v8;
  v49[2] = v41;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v10 = getCNContactMiddleNameKeySymbolLoc_ptr_0;
  v48 = getCNContactMiddleNameKeySymbolLoc_ptr_0;
  if (!getCNContactMiddleNameKeySymbolLoc_ptr_0)
  {
    v11 = ContactsLibrary_0();
    v46[3] = dlsym(v11, "CNContactMiddleNameKey");
    getCNContactMiddleNameKeySymbolLoc_ptr_0 = v46[3];
    v10 = v46[3];
  }

  _Block_object_dispose(&v45, 8);
  if (!v10)
  {
    goto LABEL_42;
  }

  v12 = *v10;
  v49[3] = v12;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v13 = getCNContactFamilyNameKeySymbolLoc_ptr_0;
  v48 = getCNContactFamilyNameKeySymbolLoc_ptr_0;
  if (!getCNContactFamilyNameKeySymbolLoc_ptr_0)
  {
    v14 = ContactsLibrary_0();
    v46[3] = dlsym(v14, "CNContactFamilyNameKey");
    getCNContactFamilyNameKeySymbolLoc_ptr_0 = v46[3];
    v13 = v46[3];
  }

  _Block_object_dispose(&v45, 8);
  if (!v13)
  {
    goto LABEL_42;
  }

  v15 = *v13;
  v49[4] = v15;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v16 = getCNContactPreviousFamilyNameKeySymbolLoc_ptr;
  v48 = getCNContactPreviousFamilyNameKeySymbolLoc_ptr;
  if (!getCNContactPreviousFamilyNameKeySymbolLoc_ptr)
  {
    v17 = ContactsLibrary_0();
    v46[3] = dlsym(v17, "CNContactPreviousFamilyNameKey");
    getCNContactPreviousFamilyNameKeySymbolLoc_ptr = v46[3];
    v16 = v46[3];
  }

  _Block_object_dispose(&v45, 8);
  if (!v16)
  {
    goto LABEL_42;
  }

  v18 = *v16;
  v49[5] = v18;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v19 = getCNContactNameSuffixKeySymbolLoc_ptr;
  v48 = getCNContactNameSuffixKeySymbolLoc_ptr;
  if (!getCNContactNameSuffixKeySymbolLoc_ptr)
  {
    v20 = ContactsLibrary_0();
    v46[3] = dlsym(v20, "CNContactNameSuffixKey");
    getCNContactNameSuffixKeySymbolLoc_ptr = v46[3];
    v19 = v46[3];
  }

  _Block_object_dispose(&v45, 8);
  if (!v19)
  {
    goto LABEL_42;
  }

  v21 = *v19;
  v49[6] = v21;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v22 = getCNContactNicknameKeySymbolLoc_ptr_0;
  v48 = getCNContactNicknameKeySymbolLoc_ptr_0;
  if (!getCNContactNicknameKeySymbolLoc_ptr_0)
  {
    v23 = ContactsLibrary_0();
    v46[3] = dlsym(v23, "CNContactNicknameKey");
    getCNContactNicknameKeySymbolLoc_ptr_0 = v46[3];
    v22 = v46[3];
  }

  _Block_object_dispose(&v45, 8);
  if (!v22)
  {
    goto LABEL_42;
  }

  v24 = *v22;
  v49[7] = v24;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v25 = getCNContactTypeKeySymbolLoc_ptr;
  v48 = getCNContactTypeKeySymbolLoc_ptr;
  if (!getCNContactTypeKeySymbolLoc_ptr)
  {
    v26 = ContactsLibrary_0();
    v46[3] = dlsym(v26, "CNContactTypeKey");
    getCNContactTypeKeySymbolLoc_ptr = v46[3];
    v25 = v46[3];
  }

  _Block_object_dispose(&v45, 8);
  if (!v25)
  {
    goto LABEL_42;
  }

  v27 = *v25;
  v49[8] = v27;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v28 = getCNContactRelationsKeySymbolLoc_ptr_0;
  v48 = getCNContactRelationsKeySymbolLoc_ptr_0;
  if (!getCNContactRelationsKeySymbolLoc_ptr_0)
  {
    v29 = ContactsLibrary_0();
    v46[3] = dlsym(v29, "CNContactRelationsKey");
    getCNContactRelationsKeySymbolLoc_ptr_0 = v46[3];
    v28 = v46[3];
  }

  _Block_object_dispose(&v45, 8);
  if (!v28)
  {
    goto LABEL_42;
  }

  v30 = *v28;
  v49[9] = v30;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v31 = getCNContactPhoneNumbersKeySymbolLoc_ptr_0;
  v48 = getCNContactPhoneNumbersKeySymbolLoc_ptr_0;
  if (!getCNContactPhoneNumbersKeySymbolLoc_ptr_0)
  {
    v32 = ContactsLibrary_0();
    v46[3] = dlsym(v32, "CNContactPhoneNumbersKey");
    getCNContactPhoneNumbersKeySymbolLoc_ptr_0 = v46[3];
    v31 = v46[3];
  }

  _Block_object_dispose(&v45, 8);
  if (!v31)
  {
    goto LABEL_42;
  }

  v33 = *v31;
  v49[10] = v33;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v34 = getCNContactEmailAddressesKeySymbolLoc_ptr_0;
  v48 = getCNContactEmailAddressesKeySymbolLoc_ptr_0;
  if (!getCNContactEmailAddressesKeySymbolLoc_ptr_0)
  {
    v35 = ContactsLibrary_0();
    v46[3] = dlsym(v35, "CNContactEmailAddressesKey");
    getCNContactEmailAddressesKeySymbolLoc_ptr_0 = v46[3];
    v34 = v46[3];
  }

  _Block_object_dispose(&v45, 8);
  if (!v34)
  {
LABEL_42:
    [_PSBlockedHandlesCache beginSyncingWithTU];
    __break(1u);
  }

  v50 = *v34;
  v51 = v44;
  v36 = MEMORY[0x1E695DEC8];
  v37 = v50;
  v38 = [v36 arrayWithObjects:v49 count:13];

  v39 = *MEMORY[0x1E69E9840];

  return v38;
}

- (id)nonFamilyRelations
{
  v33 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v2 = getCNLabelContactRelationManagerSymbolLoc_ptr;
  v30 = getCNLabelContactRelationManagerSymbolLoc_ptr;
  if (!getCNLabelContactRelationManagerSymbolLoc_ptr)
  {
    v3 = ContactsLibrary_0();
    v28[3] = dlsym(v3, "CNLabelContactRelationManager");
    getCNLabelContactRelationManagerSymbolLoc_ptr = v28[3];
    v2 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (!v2)
  {
    goto LABEL_25;
  }

  v4 = *v2;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v5 = getCNLabelContactRelationAssistantSymbolLoc_ptr;
  v30 = getCNLabelContactRelationAssistantSymbolLoc_ptr;
  v31[0] = v4;
  if (!getCNLabelContactRelationAssistantSymbolLoc_ptr)
  {
    v6 = ContactsLibrary_0();
    v28[3] = dlsym(v6, "CNLabelContactRelationAssistant");
    getCNLabelContactRelationAssistantSymbolLoc_ptr = v28[3];
    v5 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (!v5)
  {
    goto LABEL_25;
  }

  v7 = *v5;
  v31[1] = v7;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v8 = getCNLabelContactRelationColleagueSymbolLoc_ptr;
  v30 = getCNLabelContactRelationColleagueSymbolLoc_ptr;
  if (!getCNLabelContactRelationColleagueSymbolLoc_ptr)
  {
    v9 = ContactsLibrary_0();
    v28[3] = dlsym(v9, "CNLabelContactRelationColleague");
    getCNLabelContactRelationColleagueSymbolLoc_ptr = v28[3];
    v8 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (!v8)
  {
    goto LABEL_25;
  }

  v10 = *v8;
  v31[2] = v10;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v11 = getCNLabelContactRelationTeacherSymbolLoc_ptr;
  v30 = getCNLabelContactRelationTeacherSymbolLoc_ptr;
  if (!getCNLabelContactRelationTeacherSymbolLoc_ptr)
  {
    v12 = ContactsLibrary_0();
    v28[3] = dlsym(v12, "CNLabelContactRelationTeacher");
    getCNLabelContactRelationTeacherSymbolLoc_ptr = v28[3];
    v11 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (!v11)
  {
    goto LABEL_25;
  }

  v13 = *v11;
  v31[3] = v13;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v14 = getCNLabelContactRelationFriendSymbolLoc_ptr;
  v30 = getCNLabelContactRelationFriendSymbolLoc_ptr;
  if (!getCNLabelContactRelationFriendSymbolLoc_ptr)
  {
    v15 = ContactsLibrary_0();
    v28[3] = dlsym(v15, "CNLabelContactRelationFriend");
    getCNLabelContactRelationFriendSymbolLoc_ptr = v28[3];
    v14 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (!v14)
  {
    goto LABEL_25;
  }

  v16 = *v14;
  v31[4] = v16;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v17 = getCNLabelContactRelationMaleFriendSymbolLoc_ptr;
  v30 = getCNLabelContactRelationMaleFriendSymbolLoc_ptr;
  if (!getCNLabelContactRelationMaleFriendSymbolLoc_ptr)
  {
    v18 = ContactsLibrary_0();
    v28[3] = dlsym(v18, "CNLabelContactRelationMaleFriend");
    getCNLabelContactRelationMaleFriendSymbolLoc_ptr = v28[3];
    v17 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (!v17)
  {
    goto LABEL_25;
  }

  v19 = *v17;
  v31[5] = v19;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v20 = getCNLabelContactRelationFemaleFriendSymbolLoc_ptr;
  v30 = getCNLabelContactRelationFemaleFriendSymbolLoc_ptr;
  if (!getCNLabelContactRelationFemaleFriendSymbolLoc_ptr)
  {
    v21 = ContactsLibrary_0();
    v28[3] = dlsym(v21, "CNLabelContactRelationFemaleFriend");
    getCNLabelContactRelationFemaleFriendSymbolLoc_ptr = v28[3];
    v20 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (!v20)
  {
LABEL_25:
    [_PSBlockedHandlesCache beginSyncingWithTU];
    __break(1u);
  }

  v32 = *v20;
  v22 = MEMORY[0x1E695DEC8];
  v23 = v32;
  v24 = [v22 arrayWithObjects:v31 count:7];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (BOOL)regexMatchForRegex:(id)regex string:(id)string
{
  if (!string)
  {
    return 0;
  }

  stringCopy = string;
  regexCopy = regex;
  v7 = [regexCopy numberOfMatchesInString:stringCopy options:0 range:{0, objc_msgSend(stringCopy, "length")}];

  return v7 != 0;
}

- (id)fetchAllContactIdsFromContactStore:(id)store
{
  v31 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = [MEMORY[0x1E695DFA8] set];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v5 = getCNContactFetchRequestClass_softClass;
  v26 = getCNContactFetchRequestClass_softClass;
  if (!getCNContactFetchRequestClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v28 = __getCNContactFetchRequestClass_block_invoke;
    v29 = &unk_1E7C23BF0;
    v30 = &v23;
    ContactsLibraryCore_1();
    Class = objc_getClass("CNContactFetchRequest");
    *(v30[1] + 24) = Class;
    getCNContactFetchRequestClass_softClass = *(v30[1] + 24);
    v5 = v24[3];
  }

  v7 = v5;
  _Block_object_dispose(&v23, 8);
  v8 = [v5 alloc];
  contactKeysToFetch = [(_PSFamilyRecommender *)self contactKeysToFetch];
  v10 = [v8 initWithKeysToFetch:contactKeysToFetch];

  [v10 setContactBatchCount:25];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59___PSFamilyRecommender_fetchAllContactIdsFromContactStore___block_invoke;
  v16[3] = &unk_1E7C24FD8;
  v16[4] = &v17;
  [storeCopy enumerateContactsWithFetchRequest:v10 error:0 usingBlock:v16];
  v11 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v18[5] count];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v12;
    _os_log_impl(&dword_1B5ED1000, v11, OS_LOG_TYPE_INFO, "_PSFamilyRecommender: Fetched %tu contact ids from contact store", &buf, 0xCu);
  }

  allObjects = [v18[5] allObjects];

  _Block_object_dispose(&v17, 8);
  v14 = *MEMORY[0x1E69E9840];

  return allObjects;
}

- (id)relationshipRegularExpressionForRelationship
{
  v36 = *MEMORY[0x1E69E9840];
  personRelationshipVocabularyByLocaleDictionary = [(_PSFamilyRecommender *)self personRelationshipVocabularyByLocaleDictionary];
  allValues = [personRelationshipVocabularyByLocaleDictionary allValues];
  array = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = allValues;
  v21 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v21)
  {
    v20 = *v29;
    do
    {
      v4 = 0;
      do
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v4;
        allValues2 = [*(*(&v28 + 1) + 8 * v4) allValues];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v6 = [allValues2 countByEnumeratingWithState:&v24 objects:v34 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v25;
          do
          {
            v9 = 0;
            do
            {
              if (*v25 != v8)
              {
                objc_enumerationMutation(allValues2);
              }

              v10 = MEMORY[0x1E696AEC0];
              v11 = [*(*(&v24 + 1) + 8 * v9) _pas_componentsJoinedByString:@"|"];
              v12 = [v10 stringWithFormat:@"^(%@)$", v11];

              v23 = 0;
              v13 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v12 options:1 error:&v23];
              v14 = v23;
              if (v14)
              {
                v15 = +[_PSLogging familyRecommenderChannel];
                if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v33 = v14;
                  _os_log_error_impl(&dword_1B5ED1000, v15, OS_LOG_TYPE_ERROR, "Error making regex from relationship plist %@", buf, 0xCu);
                }
              }

              if (v13)
              {
                [array addObject:v13];
              }

              ++v9;
            }

            while (v7 != v9);
            v7 = [allValues2 countByEnumeratingWithState:&v24 objects:v34 count:16];
          }

          while (v7);
        }

        v4 = v22 + 1;
      }

      while (v22 + 1 != v21);
      v21 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v21);
  }

  v16 = *MEMORY[0x1E69E9840];

  return array;
}

- (unint64_t)indexToInsertDate:(id)date array:(id)array
{
  arrayCopy = array;
  dateCopy = date;
  v7 = [arrayCopy indexOfObject:dateCopy inSortedRange:0 options:objc_msgSend(arrayCopy usingComparator:{"count"), 1024, &__block_literal_global_10}];

  return v7;
}

- (id)handleAndBundleIdDictionaryForFamilyRecipientContact:(id)contact lookBackDays:(int64_t)days
{
  v48[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  contactResolver = [(_PSFamilyRecommender *)self contactResolver];
  v8 = [contactResolver allEmailAndPhoneNumberHandlesForContact:contactCopy];

  v9 = MEMORY[0x1E695DFD8];
  identifier = [contactCopy identifier];
  v11 = [v9 setWithObject:identifier];

  v12 = +[_PSConstants mobileMessagesBundleId];
  v13 = v12;
  if (days == 56)
  {
    v48[0] = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
  }

  else
  {
    v47[0] = v12;
    v15 = +[_PSConstants mobileMailBundleId];
    v47[1] = v15;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
  }

  interactionStore = [(_PSFamilyRecommender *)self interactionStore];
  v17 = [_PSInteractionStoreUtils interactionsMatchingAnyHandlesOrContactIds:v8 identifiers:v11 account:0 directions:&unk_1F2D8C210 mechanisms:&unk_1F2D8C228 bundleIds:v14 store:interactionStore fetchLimit:1 messageInteractionCache:0];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  firstObject = [v17 firstObject];
  startDate = [firstObject startDate];
  v21 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:(-86400 * days)];
  [startDate timeIntervalSinceDate:v21];
  v23 = v22;

  if (v23 > 0.0)
  {
    v39 = v14;
    v40 = v11;
    v41 = contactCopy;
    firstObject2 = [v17 firstObject];
    recipients = [firstObject2 recipients];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v26 = recipients;
    v27 = [v26 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v43;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v43 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v42 + 1) + 8 * i);
          identifier2 = [v31 identifier];
          v33 = [v8 containsObject:identifier2];

          if (v33)
          {
            identifier3 = [v31 identifier];
            [dictionary setObject:identifier3 forKeyedSubscript:@"handle"];

            firstObject3 = [v17 firstObject];
            bundleId = [firstObject3 bundleId];
            [dictionary setObject:bundleId forKeyedSubscript:@"bundleId"];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v28);
    }

    v11 = v40;
    contactCopy = v41;
    v14 = v39;
  }

  v37 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)currentFamily
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v3 = getFAFetchFamilyCircleRequestClass_softClass;
  v25 = getFAFetchFamilyCircleRequestClass_softClass;
  if (!getFAFetchFamilyCircleRequestClass_softClass)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __getFAFetchFamilyCircleRequestClass_block_invoke;
    v19 = &unk_1E7C23BF0;
    v20 = &v22;
    __getFAFetchFamilyCircleRequestClass_block_invoke(&v16);
    v3 = v23[3];
  }

  v4 = v3;
  _Block_object_dispose(&v22, 8);
  v5 = objc_alloc_init(v3);
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__3;
  v20 = __Block_byref_object_dispose__3;
  array = [MEMORY[0x1E695DF70] array];
  v6 = dispatch_semaphore_create(0);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __37___PSFamilyRecommender_currentFamily__block_invoke;
  v13[3] = &unk_1E7C25020;
  v13[4] = self;
  v15 = &v16;
  v7 = v6;
  v14 = v7;
  [v5 startRequestWithCompletionHandler:v13];
  v8 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v7, v8))
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v10 = *(v17 + 40);
    *(v17 + 40) = array2;
  }

  v11 = [*(v17 + 40) copy];

  _Block_object_dispose(&v16, 8);

  return v11;
}

- (id)currentFamilyExcludingMe:(id)me
{
  v23 = *MEMORY[0x1E69E9840];
  meCopy = me;
  currentFamily = [(_PSFamilyRecommender *)self currentFamily];
  v6 = [currentFamily mutableCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = currentFamily;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        identifier = [meCopy identifier];
        identifier2 = [v12 identifier];
        v15 = [identifier isEqualToString:identifier2];

        if (v15)
        {
          [v6 removeObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)familyRecipientsForShareSheetWithPredictionContext:(id)context
{
  v111 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = +[_PSLogging familyRecommenderChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    seedContactIdentifiers = [contextCopy seedContactIdentifiers];
    *buf = 138412290;
    v110 = seedContactIdentifiers;
    _os_log_impl(&dword_1B5ED1000, v5, OS_LOG_TYPE_INFO, "Prediction context, seed contact identifiers %@", buf, 0xCu);
  }

  contactStore = [(_PSFamilyRecommender *)self contactStore];
  contactKeysToFetch = [(_PSFamilyRecommender *)self contactKeysToFetch];
  v106 = 0;
  v9 = [contactStore _ios_meContactWithKeysToFetch:contactKeysToFetch error:&v106];
  v10 = v106;

  if (v10)
  {
    v11 = +[_PSLogging familyRecommenderChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_PSFamilyRecommender familyRecipientsForShareSheetWithPredictionContext:];
    }
  }

  v82 = v10;
  v92 = contextCopy;
  v91 = [(_PSFamilyRecommender *)self currentFamilyExcludingMe:v9];
  v12 = [v91 valueForKey:@"identifier"];
  v13 = objc_opt_new();
  array = [MEMORY[0x1E695DF70] array];
  v102[0] = MEMORY[0x1E69E9820];
  v102[1] = 3221225472;
  v102[2] = __75___PSFamilyRecommender_familyRecipientsForShareSheetWithPredictionContext___block_invoke;
  v102[3] = &unk_1E7C25048;
  v15 = v9;
  v103 = v15;
  v16 = v12;
  v104 = v16;
  v17 = v13;
  v105 = v17;
  v18 = MEMORY[0x1B8C8C060](v102);
  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 3221225472;
  v96[2] = __75___PSFamilyRecommender_familyRecipientsForShareSheetWithPredictionContext___block_invoke_2;
  v96[3] = &unk_1E7C25070;
  v96[4] = self;
  v93 = v15;
  v97 = v93;
  v90 = v16;
  v98 = v90;
  v88 = v18;
  v101 = v88;
  v94 = array;
  v99 = v94;
  v89 = v17;
  v100 = v89;
  v19 = MEMORY[0x1B8C8C060](v96);
  v20 = +[_PSLogging familyRecommenderChannel];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v20, OS_LOG_TYPE_INFO, "Calculating heuristics", buf, 2u);
  }

  v21 = [(_PSFamilyRecommender *)self contactIdsFromContactRelationsUsingMe:v93];
  v22 = [v21 copy];

  contactIdsFromEmergencyContacts = [(_PSFamilyRecommender *)self contactIdsFromEmergencyContacts];
  v24 = [contactIdsFromEmergencyContacts copy];

  v25 = objc_opt_new();
  v87 = v22;
  allObjects = [v22 allObjects];
  [v25 addObjectsFromArray:allObjects];

  v86 = v24;
  allObjects2 = [v24 allObjects];
  [v25 addObjectsFromArray:allObjects2];

  v85 = v25;
  allObjects3 = [v25 allObjects];
  (v19)[2](v19, allObjects3, &__block_literal_global_377);

  v29 = +[_PSLogging familyRecommenderChannel];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v110 = v94;
    _os_log_impl(&dword_1B5ED1000, v29, OS_LOG_TYPE_INFO, "Suggestions after heuristics %{private}@", buf, 0xCu);
  }

  v30 = +[_PSLogging familyRecommenderChannel];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = [v94 count];
    *buf = 134217984;
    v110 = v31;
    _os_log_impl(&dword_1B5ED1000, v30, OS_LOG_TYPE_INFO, "Suggestions after heuristics %tu", buf, 0xCu);
  }

  v32 = +[_PSLogging familyRecommenderChannel];
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v32, OS_LOG_TYPE_INFO, "Getting results from photos knowledge graph", buf, 2u);
  }

  v33 = +[_PSLogging familyRecommenderChannel];
  if (os_signpost_enabled(v33))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v33, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSFamilyFetchPhotoRelationshipSuggestions", " enableTelemetry=YES ", buf, 2u);
  }

  v84 = +[_PSFamilyPhotoSuggestions photosRelationshipKnowledgeSuggestions];
  allObjects4 = [v84 allObjects];
  (v19)[2](v19, allObjects4, &__block_literal_global_381);

  v35 = +[_PSLogging familyRecommenderChannel];
  if (os_signpost_enabled(v35))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v35, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSFamilyFetchPhotoRelationshipSuggestions", &unk_1B5FD970D, buf, 2u);
  }

  v36 = +[_PSLogging familyRecommenderChannel];
  if (os_signpost_enabled(v36))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v36, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSFamilyFetchPhotoContactSuggestions", " enableTelemetry=YES ", buf, 2u);
  }

  v81 = +[_PSFamilyPhotoSuggestions photosContactsKnowledgeSuggestions];
  allObjects5 = [v81 allObjects];
  (v19)[2](v19, allObjects5, &__block_literal_global_384);

  v38 = +[_PSLogging familyRecommenderChannel];
  if (os_signpost_enabled(v38))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v38, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSFamilyFetchPhotoContactSuggestions", &unk_1B5FD970D, buf, 2u);
  }

  v39 = +[_PSLogging familyRecommenderChannel];
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v110 = v94;
    _os_log_impl(&dword_1B5ED1000, v39, OS_LOG_TYPE_INFO, "Suggestions after photos knowledge graph %{private}@", buf, 0xCu);
  }

  v40 = +[_PSLogging familyRecommenderChannel];
  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    v41 = [v94 count];
    *buf = 134217984;
    v110 = v41;
    _os_log_impl(&dword_1B5ED1000, v40, OS_LOG_TYPE_INFO, "Suggestions after photos knowledge graph %tu", buf, 0xCu);
  }

  v42 = +[_PSLogging familyRecommenderChannel];
  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v42, OS_LOG_TYPE_INFO, "Getting suggestions from on device models", buf, 2u);
  }

  knowledgeStore = [MEMORY[0x1E69979A0] knowledgeStore];
  v44 = MEMORY[0x1E6997968];
  v45 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  familyPredictionStream = [MEMORY[0x1E69979E8] familyPredictionStream];
  v108 = familyPredictionStream;
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v108 count:1];
  v48 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
  v107 = v48;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v107 count:1];
  v50 = [v44 eventQueryWithPredicate:v45 eventStreams:v47 offset:0 limit:1 sortDescriptors:v49];

  v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_PSFamilyRecommender.m"];
  v52 = [v51 stringByAppendingFormat:@":%d", 465];
  [v50 setClientName:v52];

  [v50 setTracker:&__block_literal_global_400];
  [v50 setExecuteConcurrently:1];

  v95 = 0;
  v83 = knowledgeStore;
  v53 = [knowledgeStore executeQuery:v50 error:&v95];
  v54 = v95;
  if (v54)
  {
    v55 = +[_PSLogging familyRecommenderChannel];
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      [_PSFamilyRecommender familyRecipientsForShareSheetWithPredictionContext:];
    }
  }

  firstObject = [v53 firstObject];
  metadata = [firstObject metadata];
  suggestions = [MEMORY[0x1E6997978] suggestions];
  v59 = [metadata objectForKeyedSubscript:suggestions];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v60 = [v59 keysSortedByValueUsingComparator:&__block_literal_global_406];
    (v19)[2](v19, v60, &__block_literal_global_409);
  }

  v61 = +[_PSLogging familyRecommenderChannel];
  if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v110 = v94;
    _os_log_impl(&dword_1B5ED1000, v61, OS_LOG_TYPE_INFO, "Suggestions after on device models %{private}@", buf, 0xCu);
  }

  v62 = +[_PSLogging familyRecommenderChannel];
  if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
  {
    v63 = [v94 count];
    *buf = 134217984;
    v110 = v63;
    _os_log_impl(&dword_1B5ED1000, v62, OS_LOG_TYPE_INFO, "Suggestions after on device models %tu", buf, 0xCu);
  }

  v64 = [(_PSFamilyRecommender *)self contactIdsFromContactNamesUsingMe:v93];
  v65 = [v64 copy];

  allObjects6 = [v65 allObjects];
  (v19)[2](v19, allObjects6, &__block_literal_global_412);

  v67 = +[_PSLogging familyRecommenderChannel];
  if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v110 = v94;
    _os_log_impl(&dword_1B5ED1000, v67, OS_LOG_TYPE_INFO, "Suggestions after contact name regex match %{private}@", buf, 0xCu);
  }

  v68 = +[_PSLogging familyRecommenderChannel];
  if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
  {
    v69 = [v94 count];
    *buf = 134217984;
    v110 = v69;
    _os_log_impl(&dword_1B5ED1000, v68, OS_LOG_TYPE_INFO, "Suggestions after contact name regex match %tu", buf, 0xCu);
  }

  seedContactIdentifiers2 = [v92 seedContactIdentifiers];

  if (seedContactIdentifiers2)
  {
    v71 = [(_PSFamilyRecommender *)self rerankFamilyRecipients:v94 usingPredictionContext:v92];
  }

  else
  {
    v71 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v94];
  }

  v72 = v71;
  v73 = +[_PSLogging familyRecommenderChannel];
  if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v110 = v72;
    _os_log_impl(&dword_1B5ED1000, v73, OS_LOG_TYPE_INFO, "Suggestions after family reranking %{private}@", buf, 0xCu);
  }

  v74 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:v72];
  v75 = +[_PSLogging familyRecommenderChannel];
  if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v110 = v74;
    _os_log_impl(&dword_1B5ED1000, v75, OS_LOG_TYPE_INFO, "Final results %{private}@", buf, 0xCu);
  }

  v76 = +[_PSLogging familyRecommenderChannel];
  if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
  {
    v77 = [v74 count];
    *buf = 134217984;
    v110 = v77;
    _os_log_impl(&dword_1B5ED1000, v76, OS_LOG_TYPE_INFO, "Final results %tu", buf, 0xCu);
  }

  array2 = [v74 array];

  v79 = *MEMORY[0x1E69E9840];

  return array2;
}

- (id)suggestionsForPhotosRelationshipsWithPredictionContext:(id)context
{
  v25 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  contactStore = [(_PSFamilyRecommender *)self contactStore];
  contactKeysToFetch = [(_PSFamilyRecommender *)self contactKeysToFetch];
  v7 = [contactStore _ios_meContactWithKeysToFetch:contactKeysToFetch error:0];

  v8 = [(_PSFamilyRecommender *)self currentFamilyExcludingMe:v7];
  v9 = [v8 valueForKey:@"identifier"];
  v10 = +[_PSFamilyPhotoSuggestions photosRelationshipKnowledgeSuggestions];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(_PSFamilyRecommender *)self recipientFromFamilyContactId:*(*(&v20 + 1) + 8 * i) familySuggestions:0 me:v7 currentFamilyIds:v9];
        v16 = v15;
        if (v15)
        {
          [v15 setPhotosInference:1];
          [v16 setFamilyHeuristic:0];
          [array addObject:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v17 = [(_PSFamilyRecommender *)self suggestionsFromRecipients:array];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)suggestionsForPhotosContactInferencesWithPredictionContext:(id)context
{
  v25 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  contactStore = [(_PSFamilyRecommender *)self contactStore];
  contactKeysToFetch = [(_PSFamilyRecommender *)self contactKeysToFetch];
  v7 = [contactStore _ios_meContactWithKeysToFetch:contactKeysToFetch error:0];

  v8 = [(_PSFamilyRecommender *)self currentFamilyExcludingMe:v7];
  v9 = [v8 valueForKey:@"identifier"];
  v10 = +[_PSFamilyPhotoSuggestions photosContactsKnowledgeSuggestions];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(_PSFamilyRecommender *)self recipientFromFamilyContactId:*(*(&v20 + 1) + 8 * i) familySuggestions:0 me:v7 currentFamilyIds:v9];
        v16 = v15;
        if (v15)
        {
          [v15 setPhotosInference:1];
          [v16 setFamilyHeuristic:0];
          [array addObject:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v17 = [(_PSFamilyRecommender *)self suggestionsFromRecipients:array];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)rerankFamilyRecipients:(id)recipients usingPredictionContext:(id)context
{
  v160 = *MEMORY[0x1E69E9840];
  recipientsCopy = recipients;
  contextCopy = context;
  contactStore = [(_PSFamilyRecommender *)self contactStore];
  selfCopy = self;
  contactKeysToFetch = [(_PSFamilyRecommender *)self contactKeysToFetch];
  v98 = [contactStore _ios_meContactWithKeysToFetch:contactKeysToFetch error:0];

  v110 = objc_opt_new();
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v94 = contextCopy;
  seedContactIdentifiers = [contextCopy seedContactIdentifiers];
  v10 = [seedContactIdentifiers countByEnumeratingWithState:&v146 objects:v159 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v147;
    v115 = *v147;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        v15 = v12;
        if (*v147 != v13)
        {
          objc_enumerationMutation(seedContactIdentifiers);
        }

        v16 = *(*(&v146 + 1) + 8 * i);
        contactStore2 = [(_PSFamilyRecommender *)selfCopy contactStore];
        contactKeysToFetch2 = [(_PSFamilyRecommender *)selfCopy contactKeysToFetch];
        v145 = v12;
        v19 = [contactStore2 unifiedContactWithIdentifier:v16 keysToFetch:contactKeysToFetch2 error:&v145];
        v12 = v145;

        if (v12)
        {
          v20 = +[_PSLogging familyRecommenderChannel];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v158 = v12;
            _os_log_error_impl(&dword_1B5ED1000, v20, OS_LOG_TYPE_ERROR, "Error querying contacts %@ while resolving seeded contact Ids", buf, 0xCu);
          }
        }

        else
        {
          v21 = [_PSRecipient alloc];
          identifier = [v19 identifier];
          v20 = [(_PSRecipient *)v21 initWithIdentifier:identifier handle:0 contact:v19];

          [v20 setFamilyHeuristic:0];
          [v20 setPhotosInference:0];
          if (v20)
          {
            identifier2 = [v98 identifier];
            identifier3 = [v19 identifier];
            v25 = [identifier2 isEqualToString:identifier3];

            if ((v25 & 1) == 0)
            {
              [v110 addObject:v20];
            }

            v12 = 0;
            v13 = v115;
          }
        }
      }

      v11 = [seedContactIdentifiers countByEnumeratingWithState:&v146 objects:v159 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v26 = v110;
  if (![v110 count])
  {
    v81 = recipientsCopy;
    v99 = recipientsCopy;
    goto LABEL_88;
  }

  v27 = [v110 count];
  seedContactIdentifiers2 = [v94 seedContactIdentifiers];
  v29 = [seedContactIdentifiers2 count];

  if (v27 != v29)
  {
    v30 = +[_PSLogging familyRecommenderChannel];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B5ED1000, v30, OS_LOG_TYPE_DEFAULT, "Dropped a few contact ids from seedContactIdentifiers since a recipient could not be generated", buf, 2u);
    }
  }

  v106 = v12;
  v99 = objc_opt_new();
  v116 = objc_opt_new();
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  v31 = recipientsCopy;
  v107 = [v31 countByEnumeratingWithState:&v141 objects:v156 count:16];
  if (v107)
  {
    v100 = *v142;
    v103 = v31;
    do
    {
      v32 = 0;
      do
      {
        if (*v142 != v100)
        {
          objc_enumerationMutation(v31);
        }

        v112 = v32;
        v33 = *(*(&v141 + 1) + 8 * v32);
        v137 = 0u;
        v138 = 0u;
        v139 = 0u;
        v140 = 0u;
        v34 = v110;
        v35 = [v34 countByEnumeratingWithState:&v137 objects:v155 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v138;
          do
          {
            for (j = 0; j != v36; ++j)
            {
              if (*v138 != v37)
              {
                objc_enumerationMutation(v34);
              }

              v39 = *(*(&v137 + 1) + 8 * j);
              contact = [v33 contact];
              if (contact)
              {
                v41 = contact;
                contact2 = [v39 contact];

                if (contact2)
                {
                  contact3 = [v33 contact];
                  identifier4 = [contact3 identifier];
                  contact4 = [v39 contact];
                  identifier5 = [contact4 identifier];
                  v47 = [identifier4 isEqualToString:identifier5];

                  if (v47)
                  {
                    [v116 addObject:v33];
                  }
                }
              }
            }

            v36 = [v34 countByEnumeratingWithState:&v137 objects:v155 count:16];
          }

          while (v36);
        }

        v32 = v112 + 1;
        v31 = v103;
      }

      while ((v112 + 1) != v107);
      v107 = [v103 countByEnumeratingWithState:&v141 objects:v156 count:16];
    }

    while (v107);
  }

  if ([v116 count])
  {
    [v99 addObjectsFromArray:v116];
    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    obj = v31;
    v12 = v106;
    v104 = [obj countByEnumeratingWithState:&v133 objects:v154 count:16];
    if (v104)
    {
      v101 = *v134;
      do
      {
        v48 = 0;
        do
        {
          if (*v134 != v101)
          {
            objc_enumerationMutation(obj);
          }

          v108 = v48;
          v49 = *(*(&v133 + 1) + 8 * v48);
          v129 = 0u;
          v130 = 0u;
          v131 = 0u;
          v132 = 0u;
          v113 = v110;
          v50 = [v113 countByEnumeratingWithState:&v129 objects:v153 count:16];
          if (v50)
          {
            v51 = v50;
            v52 = *v130;
            while (2)
            {
              for (k = 0; k != v51; ++k)
              {
                if (*v130 != v52)
                {
                  objc_enumerationMutation(v113);
                }

                v54 = *(*(&v129 + 1) + 8 * k);
                contact5 = [v49 contact];
                if (contact5)
                {
                  v56 = contact5;
                  contact6 = [v49 contact];
                  identifier6 = [contact6 identifier];
                  contact7 = [v54 contact];
                  identifier7 = [contact7 identifier];
                  v61 = [identifier6 isEqualToString:identifier7];

                  if (v61)
                  {

                    goto LABEL_57;
                  }
                }
              }

              v51 = [v113 countByEnumeratingWithState:&v129 objects:v153 count:16];
              if (v51)
              {
                continue;
              }

              break;
            }
          }

          [v99 addObject:v49];
LABEL_57:
          v12 = v106;
          v48 = v108 + 1;
        }

        while (v108 + 1 != v104);
        v104 = [obj countByEnumeratingWithState:&v133 objects:v154 count:16];
      }

      while (v104);
    }

    v62 = [v116 count];
    v63 = [v116 count];
    if (v63 >= [v110 count])
    {
      goto LABEL_87;
    }

    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v109 = v110;
    v105 = [v109 countByEnumeratingWithState:&v125 objects:v152 count:16];
    if (v105)
    {
      obja = (v62 + 1);
      v102 = *v126;
      do
      {
        v64 = 0;
        do
        {
          if (*v126 != v102)
          {
            objc_enumerationMutation(v109);
          }

          v114 = v64;
          v65 = *(*(&v125 + 1) + 8 * v64);
          v121 = 0u;
          v122 = 0u;
          v123 = 0u;
          v124 = 0u;
          v66 = v116;
          v67 = [v66 countByEnumeratingWithState:&v121 objects:v151 count:16];
          if (v67)
          {
            v68 = v67;
            v69 = *v122;
            while (2)
            {
              for (m = 0; m != v68; ++m)
              {
                if (*v122 != v69)
                {
                  objc_enumerationMutation(v66);
                }

                contact8 = [*(*(&v121 + 1) + 8 * m) contact];
                identifier8 = [contact8 identifier];
                contact9 = [v65 contact];
                identifier9 = [contact9 identifier];
                v75 = [identifier8 isEqualToString:identifier9];

                if (v75)
                {

                  v12 = v106;
                  goto LABEL_75;
                }
              }

              v68 = [v66 countByEnumeratingWithState:&v121 objects:v151 count:16];
              v12 = v106;
              if (v68)
              {
                continue;
              }

              break;
            }
          }

          contactResolver = [(_PSFamilyRecommender *)selfCopy contactResolver];
          contact10 = [v65 contact];
          v78 = [contactResolver allEmailAndPhoneNumberHandlesForContact:contact10];
          firstObject = [v78 firstObject];
          [v65 setHandle:firstObject];

          v80 = +[_PSConstants mobileMessagesBundleId];
          [v65 setMostRecentTransportBundleId:v80];

          [v99 insertObject:v65 atIndex:obja++];
LABEL_75:
          v64 = v114 + 1;
        }

        while (v114 + 1 != v105);
        v105 = [v109 countByEnumeratingWithState:&v125 objects:v152 count:16];
      }

      while (v105);
    }
  }

  else
  {
    [v99 addObjectsFromArray:v31];
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v109 = v116;
    v82 = [v109 countByEnumeratingWithState:&v117 objects:v150 count:16];
    v12 = v106;
    if (v82)
    {
      v83 = v82;
      v84 = *v118;
      v85 = 2;
      do
      {
        for (n = 0; n != v83; ++n)
        {
          if (*v118 != v84)
          {
            objc_enumerationMutation(v109);
          }

          v87 = *(*(&v117 + 1) + 8 * n);
          contactResolver2 = [(_PSFamilyRecommender *)selfCopy contactResolver];
          contact11 = [v87 contact];
          v90 = [contactResolver2 allEmailAndPhoneNumberHandlesForContact:contact11];
          firstObject2 = [v90 firstObject];
          [v87 setHandle:firstObject2];

          [v99 insertObject:v87 atIndex:v85++];
        }

        v83 = [v109 countByEnumeratingWithState:&v117 objects:v150 count:16];
      }

      while (v83);
    }
  }

LABEL_87:
  v81 = recipientsCopy;
  v26 = v110;
LABEL_88:

  v92 = *MEMORY[0x1E69E9840];

  return v99;
}

- (id)suggestionsFromRecipients:(id)recipients
{
  v48 = *MEMORY[0x1E69E9840];
  recipientsCopy = recipients;
  array = [MEMORY[0x1E695DF70] array];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = recipientsCopy;
  v5 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v42;
    v37 = *v42;
    selfCopy = self;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v42 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v41 + 1) + 8 * i);
        mostRecentTransportBundleId = [v9 mostRecentTransportBundleId];
        if (mostRecentTransportBundleId)
        {
          v11 = mostRecentTransportBundleId;
          photosInference = [v9 photosInference];

          if ((photosInference & 1) == 0)
          {
            v22 = [_PSSuggestion alloc];
            mostRecentTransportBundleId2 = [v9 mostRecentTransportBundleId];
            v46 = v9;
            v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
            LOBYTE(v36) = 1;
            v14 = [(_PSSuggestion *)v22 initWithBundleID:mostRecentTransportBundleId2 conversationIdentifier:0 groupName:0 recipients:v24 derivedIntentIdentifier:0 image:0 reason:@"iCloudFamily - Model" reasonType:0 score:0 familySuggestion:v36];

            [array addObject:v14];
            goto LABEL_31;
          }
        }

        if (([v9 familyHeuristic] & 1) != 0 || objc_msgSend(v9, "photosInference"))
        {
          contact = [v9 contact];
          v14 = [(_PSFamilyRecommender *)self handleAndBundleIdDictionaryForFamilyRecipientContact:contact lookBackDays:168];

          v15 = [(_PSSuggestion *)v14 objectForKeyedSubscript:@"handle"];
          v16 = [(_PSSuggestion *)v14 objectForKeyedSubscript:@"bundleId"];
          v17 = v16;
          if (v15)
          {
            v18 = v16 == 0;
          }

          else
          {
            v18 = 1;
          }

          if (!v18)
          {
            firstObject = v15;
            goto LABEL_22;
          }

          contactResolver = [(_PSFamilyRecommender *)self contactResolver];
          contact2 = [v9 contact];
          v21 = [contactResolver allEmailAndPhoneNumberHandlesForContact:contact2];
          firstObject = [v21 firstObject];

          if (![(_PSSuggestion *)firstObject length])
          {
            v26 = firstObject;
            firstObject = v15;
            goto LABEL_29;
          }

          if ([(_PSSuggestion *)firstObject containsString:@"@"])
          {
            +[_PSConstants mobileMailBundleId];
          }

          else
          {
            +[_PSConstants mobileMessagesBundleId];
          }
          v27 = ;
          v7 = v37;
          self = selfCopy;

          v17 = v27;
LABEL_22:
          if (firstObject)
          {
            v28 = v17 == 0;
          }

          else
          {
            v28 = 1;
          }

          if (!v28)
          {
            [v9 setHandle:firstObject];
            familyHeuristic = [v9 familyHeuristic];
            v30 = @"iCloudFamily - PhotosInference";
            if (familyHeuristic)
            {
              v30 = @"iCloudFamily - Heuristic";
            }

            v31 = v30;
            v32 = [_PSSuggestion alloc];
            v45 = v9;
            v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
            LOBYTE(v36) = 1;
            v26 = [(_PSSuggestion *)v32 initWithBundleID:v17 conversationIdentifier:0 groupName:0 recipients:v33 derivedIntentIdentifier:0 image:0 reason:v31 reasonType:0 score:0 familySuggestion:v36];

            [array addObject:v26];
LABEL_29:

            v7 = v37;
            self = selfCopy;
          }

LABEL_31:
          continue;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v6);
  }

  v34 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)familyRecommendationSuggestionsForShareSheetWithPredictionContext:(id)context
{
  v4 = [(_PSFamilyRecommender *)self familyRecipientsForShareSheetWithPredictionContext:context];
  v5 = [(_PSFamilyRecommender *)self suggestionsFromRecipients:v4];

  return v5;
}

- (id)recipientFromFamilyContactId:(id)id familySuggestions:(id)suggestions me:(id)me currentFamilyIds:(id)ids
{
  v63 = *MEMORY[0x1E69E9840];
  idCopy = id;
  suggestionsCopy = suggestions;
  meCopy = me;
  idsCopy = ids;
  v13 = objc_opt_new();
  contactStore = [(_PSFamilyRecommender *)self contactStore];
  contactKeysToFetch = [(_PSFamilyRecommender *)self contactKeysToFetch];
  v60 = 0;
  v16 = [contactStore unifiedContactWithIdentifier:idCopy keysToFetch:contactKeysToFetch error:&v60];
  v17 = v60;

  if (!v16)
  {
    v58 = v17;
    v21 = +[_PSLogging familyRecommenderChannel];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [_PSFamilyRecommender recipientFromFamilyContactId:familySuggestions:me:currentFamilyIds:];
    }

    v20 = 0;
    goto LABEL_36;
  }

  identifier = [v16 identifier];
  v19 = [idsCopy containsObject:identifier];

  if (v19)
  {
    v20 = 0;
    goto LABEL_37;
  }

  v22 = [(_PSFamilyRecommender *)self handleAndBundleIdDictionaryForFamilyRecipientContact:v16 lookBackDays:56];
  v23 = [v22 objectForKeyedSubscript:@"handle"];
  v24 = [v22 objectForKeyedSubscript:@"bundleId"];
  v57 = v23;
  v58 = v17;
  if (v23)
  {
    if (([v13 containsObject:v23] & 1) == 0)
    {
      v25 = [_PSRecipient alloc];
      identifier2 = [v16 identifier];
      v27 = [(_PSRecipient *)v25 initWithIdentifier:identifier2 handle:v57 contact:v16];

      [(_PSRecipient *)v27 setMostRecentTransportBundleId:v24];
      v28 = +[_PSLogging familyRecommenderChannel];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v62 = v27;
        _os_log_impl(&dword_1B5ED1000, v28, OS_LOG_TYPE_INFO, "Recipient from model: %@", buf, 0xCu);
      }

      [v13 addObject:v57];
LABEL_29:
      handle = [(_PSRecipient *)v27 handle];
      if ([handle length])
      {
        v54 = v24;
        v56 = meCopy;
        identifier3 = [meCopy identifier];
        identifier4 = [v16 identifier];
        v51 = [identifier3 isEqualToString:identifier4];

        if (v51)
        {
          v20 = 0;
          v24 = v54;
          v21 = v22;
        }

        else
        {
          v27 = v27;
          v24 = v54;
          v21 = v22;
          v20 = v27;
        }

        meCopy = v56;
      }

      else
      {

        v20 = 0;
        v21 = v22;
      }

      goto LABEL_35;
    }

    goto LABEL_16;
  }

  v29 = [suggestionsCopy objectForKeyedSubscript:idCopy];
  [v29 doubleValue];
  v31 = v30;

  if (v31 > 1.0)
  {
    v21 = [(_PSFamilyRecommender *)self handleAndBundleIdDictionaryForFamilyRecipientContact:v16 lookBackDays:168];

    v32 = [v21 objectForKeyedSubscript:@"handle"];
    v55 = [v21 objectForKeyedSubscript:@"bundleId"];

    v57 = v32;
    if (v32)
    {
      if (([v13 containsObject:v32] & 1) == 0)
      {
        v39 = [_PSRecipient alloc];
        identifier5 = [v16 identifier];
        v41 = [(_PSRecipient *)v39 initWithIdentifier:identifier5 handle:v32 contact:v16];
        v42 = v32;
        v27 = v41;

        v24 = v55;
        [(_PSRecipient *)v27 setMostRecentTransportBundleId:v55];
        [v13 addObject:v42];
LABEL_26:
        v47 = +[_PSLogging familyRecommenderChannel];
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v62 = v27;
          _os_log_impl(&dword_1B5ED1000, v47, OS_LOG_TYPE_INFO, "Recipient from heuristic: %@", buf, 0xCu);
        }

        v22 = v21;
        goto LABEL_29;
      }

      v27 = 0;
    }

    else
    {
      contactResolver = [(_PSFamilyRecommender *)self contactResolver];
      v37 = [contactResolver allEmailAndPhoneNumberHandlesForContact:v16];
      firstObject = [v37 firstObject];

      if (![firstObject length] || (objc_msgSend(v13, "containsObject:", firstObject) & 1) != 0)
      {

        v27 = 0;
        v57 = 0;
        v20 = 0;
        v24 = v55;
        goto LABEL_35;
      }

      v43 = [firstObject containsString:@"@"];
      v44 = [_PSRecipient alloc];
      identifier6 = [v16 identifier];
      v27 = [(_PSRecipient *)v44 initWithIdentifier:identifier6 handle:0 contact:v16];

      if (v43)
      {
        +[_PSConstants mobileMailBundleId];
      }

      else
      {
        +[_PSConstants mobileMessagesBundleId];
      }
      v46 = ;
      [(_PSRecipient *)v27 setMostRecentTransportBundleId:v46];
    }

    v24 = v55;
    goto LABEL_26;
  }

LABEL_16:
  v33 = [_PSRecipient alloc];
  identifier7 = [v16 identifier];
  v35 = [(_PSRecipient *)v33 initWithIdentifier:identifier7 handle:0 contact:v16];

  v27 = v35;
  v21 = v22;
  v20 = v27;
LABEL_35:

LABEL_36:
  v17 = v58;
LABEL_37:

  v52 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)contactIdsFromContactRelationsUsingMe:(id)me
{
  v40 = *MEMORY[0x1E69E9840];
  meCopy = me;
  contactStore = [(_PSFamilyRecommender *)self contactStore];
  v29 = [MEMORY[0x1E695DFA8] set];
  selfCopy = self;
  nonFamilyRelations = [(_PSFamilyRecommender *)self nonFamilyRelations];
  v28 = meCopy;
  contactRelations = [meCopy contactRelations];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = [contactRelations countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v34;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(contactRelations);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        label = [v12 label];
        v14 = [nonFamilyRelations containsObject:label];

        if ((v14 & 1) == 0)
        {
          CNContactClass_1 = getCNContactClass_1();
          value = [v12 value];
          name = [value name];
          v18 = [CNContactClass_1 predicateForContactsMatchingName:name];

          contactKeysToFetch = [(_PSFamilyRecommender *)selfCopy contactKeysToFetch];
          v32 = v9;
          v20 = [contactStore unifiedContactsMatchingPredicate:v18 keysToFetch:contactKeysToFetch error:&v32];
          v21 = v32;

          if (v21)
          {
            v22 = +[_PSLogging familyRecommenderChannel];
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v38 = v21;
              _os_log_error_impl(&dword_1B5ED1000, v22, OS_LOG_TYPE_ERROR, "Error querying contacts %@", buf, 0xCu);
            }
          }

          if ([v20 count])
          {
            firstObject = [v20 firstObject];
            identifier = [firstObject identifier];
            [v29 addObject:identifier];
          }

          v9 = v21;
        }
      }

      v8 = [contactRelations countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v25 = [v29 copy];

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)contactIdsFromContactNamesUsingMe:(id)me
{
  v92 = *MEMORY[0x1E69E9840];
  meCopy = me;
  contactStore = [(_PSFamilyRecommender *)self contactStore];
  v5 = [(_PSFamilyRecommender *)self fetchAllContactIdsFromContactStore:?];
  v6 = [MEMORY[0x1E695DFA8] set];
  nonFamilyRelations = [(_PSFamilyRecommender *)self nonFamilyRelations];
  relationshipRegularExpressionForRelationship = [(_PSFamilyRecommender *)self relationshipRegularExpressionForRelationship];
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = v5;
  v56 = [obj countByEnumeratingWithState:&v82 objects:v91 count:16];
  v7 = 0;
  if (v56)
  {
    v54 = *v83;
    selfCopy = self;
    do
    {
      v8 = 0;
      do
      {
        v63 = v7;
        if (*v83 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v57 = v8;
        v9 = *(*(&v82 + 1) + 8 * v8);
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v65 = relationshipRegularExpressionForRelationship;
        v10 = [v65 countByEnumeratingWithState:&v78 objects:v90 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v79;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v79 != v12)
              {
                objc_enumerationMutation(v65);
              }

              v14 = *(*(&v78 + 1) + 8 * i);
              givenName = [v9 givenName];
              if (![(_PSFamilyRecommender *)self regexMatchForRegex:v14 string:givenName])
              {
                familyName = [v9 familyName];
                if (![(_PSFamilyRecommender *)self regexMatchForRegex:v14 string:familyName])
                {
                  nickname = [v9 nickname];
                  v23 = [(_PSFamilyRecommender *)selfCopy regexMatchForRegex:v14 string:nickname];

                  self = selfCopy;
                  if (!v23)
                  {
                    continue;
                  }

                  goto LABEL_15;
                }
              }

LABEL_15:
              identifier = [v9 identifier];
              if (identifier)
              {
                v18 = identifier;
                identifier2 = [v9 identifier];
                v20 = [v6 containsObject:identifier2];

                if ((v20 & 1) == 0)
                {
                  identifier3 = [v9 identifier];
                  [v6 addObject:identifier3];
                }
              }
            }

            v11 = [v65 countByEnumeratingWithState:&v78 objects:v90 count:16];
          }

          while (v11);
        }

        contactRelations = [v9 contactRelations];
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v61 = contactRelations;
        v25 = [contactRelations countByEnumeratingWithState:&v74 objects:v89 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v75;
          v7 = v63;
          v59 = *v75;
          do
          {
            v28 = 0;
            v60 = v26;
            do
            {
              if (*v75 != v27)
              {
                objc_enumerationMutation(v61);
              }

              v29 = *(*(&v74 + 1) + 8 * v28);
              label = [v29 label];
              v31 = [nonFamilyRelations containsObject:label];

              if ((v31 & 1) == 0)
              {
                v66 = v28;
                CNContactClass_1 = getCNContactClass_1();
                value = [v29 value];
                name = [value name];
                v35 = [CNContactClass_1 predicateForContactsMatchingName:name];

                contactKeysToFetch = [(_PSFamilyRecommender *)selfCopy contactKeysToFetch];
                v73 = v7;
                v64 = v35;
                v37 = [contactStore unifiedContactsMatchingPredicate:v35 keysToFetch:contactKeysToFetch error:&v73];
                v38 = v73;

                if (v38)
                {
                  v39 = +[_PSLogging familyRecommenderChannel];
                  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v88 = v38;
                    _os_log_error_impl(&dword_1B5ED1000, v39, OS_LOG_TYPE_ERROR, "Error querying contacts %@", buf, 0xCu);
                  }
                }

                v62 = v38;
                v71 = 0u;
                v72 = 0u;
                v69 = 0u;
                v70 = 0u;
                v40 = v37;
                v41 = [v40 countByEnumeratingWithState:&v69 objects:v86 count:16];
                if (v41)
                {
                  v42 = v41;
                  v43 = *v70;
                  do
                  {
                    for (j = 0; j != v42; ++j)
                    {
                      if (*v70 != v43)
                      {
                        objc_enumerationMutation(v40);
                      }

                      v45 = *(*(&v69 + 1) + 8 * j);
                      identifier4 = [meCopy identifier];
                      identifier5 = [v45 identifier];
                      v48 = [identifier4 isEqualToString:identifier5];

                      if (v48)
                      {
                        identifier6 = [v9 identifier];
                        [v6 addObject:identifier6];
                      }
                    }

                    v42 = [v40 countByEnumeratingWithState:&v69 objects:v86 count:16];
                  }

                  while (v42);
                }

                v7 = v62;
                v27 = v59;
                v26 = v60;
                v28 = v66;
              }

              v28 = v28 + 1;
            }

            while (v28 != v26);
            v26 = [v61 countByEnumeratingWithState:&v74 objects:v89 count:16];
          }

          while (v26);
        }

        else
        {
          v7 = v63;
        }

        v8 = v57 + 1;
        self = selfCopy;
      }

      while (v57 + 1 != v56);
      v56 = [obj countByEnumeratingWithState:&v82 objects:v91 count:16];
    }

    while (v56);
  }

  v50 = [v6 copy];
  v51 = *MEMORY[0x1E69E9840];

  return v50;
}

- (id)contactIdsFromEmergencyContacts
{
  v59 = *MEMORY[0x1E69E9840];
  medicalIDStore = [(_PSFamilyRecommender *)self medicalIDStore];
  v39 = [MEMORY[0x1E695DFA8] set];
  nonFamilyRelations = [(_PSFamilyRecommender *)self nonFamilyRelations];
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__3;
  v54 = __Block_byref_object_dispose__3;
  v55 = 0;
  v2 = dispatch_semaphore_create(0);
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __55___PSFamilyRecommender_contactIdsFromEmergencyContacts__block_invoke;
  v47[3] = &unk_1E7C250D8;
  v49 = &v50;
  dsema = v2;
  v48 = dsema;
  [medicalIDStore fetchMedicalIDEmergencyContactsWithCompletion:v47];
  v3 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(dsema, v3))
  {
    v4 = [MEMORY[0x1E695DFA8] set];

    v39 = v4;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v51[5];
  v5 = 0;
  v6 = [obj countByEnumeratingWithState:&v43 objects:v58 count:16];
  if (v6)
  {
    v7 = *v44;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v44 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v43 + 1) + 8 * i);
        relationship = [v9 relationship];
        v11 = [nonFamilyRelations containsObject:relationship];

        if ((v11 & 1) == 0)
        {
          nameContactIdentifier = [v9 nameContactIdentifier];
          if (nameContactIdentifier && ([v9 nameContactIdentifier], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v39, "containsObject:", v13), v13, nameContactIdentifier, (v14 & 1) == 0))
          {
            contactStore = [(_PSFamilyRecommender *)self contactStore];
            nameContactIdentifier2 = [v9 nameContactIdentifier];
            contactKeysToFetch = [(_PSFamilyRecommender *)self contactKeysToFetch];
            v42 = v5;
            v19 = [contactStore unifiedContactWithIdentifier:nameContactIdentifier2 keysToFetch:contactKeysToFetch error:&v42];
            v15 = v42;

            if (v15)
            {
              v20 = +[_PSLogging familyRecommenderChannel];
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v57 = v15;
                _os_log_error_impl(&dword_1B5ED1000, v20, OS_LOG_TYPE_ERROR, "Error querying contacts %@", buf, 0xCu);
              }
            }

            if (v19)
            {
              nameContactIdentifier3 = [v9 nameContactIdentifier];
              [v39 addObject:nameContactIdentifier3];

              identifier = [v19 identifier];
              [v39 addObject:identifier];
            }
          }

          else
          {
            v15 = v5;
          }

          phoneNumberContactIdentifier = [v9 phoneNumberContactIdentifier];
          if (phoneNumberContactIdentifier && ([v9 phoneNumberContactIdentifier], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v39, "containsObject:", v24), v24, phoneNumberContactIdentifier, (v25 & 1) == 0))
          {
            contactStore2 = [(_PSFamilyRecommender *)self contactStore];
            phoneNumberContactIdentifier2 = [v9 phoneNumberContactIdentifier];
            contactKeysToFetch2 = [(_PSFamilyRecommender *)self contactKeysToFetch];
            v41 = v15;
            v29 = [contactStore2 unifiedContactWithIdentifier:phoneNumberContactIdentifier2 keysToFetch:contactKeysToFetch2 error:&v41];
            v5 = v41;

            if (v5)
            {
              v30 = +[_PSLogging familyRecommenderChannel];
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v57 = v5;
                _os_log_error_impl(&dword_1B5ED1000, v30, OS_LOG_TYPE_ERROR, "Error querying contacts %@", buf, 0xCu);
              }
            }

            if (v29)
            {
              phoneNumberContactIdentifier3 = [v9 phoneNumberContactIdentifier];
              [v39 addObject:phoneNumberContactIdentifier3];
            }
          }

          else
          {
            v5 = v15;
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v43 objects:v58 count:16];
    }

    while (v6);
  }

  v32 = [v39 copy];
  _Block_object_dispose(&v50, 8);

  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

- (void)familyRecipientsForShareSheetWithPredictionContext:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_1B5ED1000, v0, v1, "Error querying for me contact card: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)familyRecipientsForShareSheetWithPredictionContext:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_1B5ED1000, v0, v1, "Error querying knowledge store for predictions: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)recipientFromFamilyContactId:familySuggestions:me:currentFamilyIds:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_1B5ED1000, v0, v1, "Error querying contacts %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end