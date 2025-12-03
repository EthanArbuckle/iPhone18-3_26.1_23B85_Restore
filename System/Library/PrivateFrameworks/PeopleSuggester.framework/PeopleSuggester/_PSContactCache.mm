@interface _PSContactCache
+ (_PSContactCache)sharedInstance;
- (_PSContactCache)init;
- (id)_getCachedContactForHandle:(id)handle;
- (id)_getCachedFaceTimeableHandleForContactIdentifier:(id)identifier;
- (id)contactKeysToFetch;
- (id)fetchMeContact;
- (id)getContactForHandle:(id)handle handleType:(int64_t)type;
- (id)getFaceTimeableHandleForContact:(id)contact interactionStore:(id)store seedRecipientHandle:(id)handle;
- (id)getMeContact;
- (int64_t)getFaceTimeIDSStatusForHandle:(id)handle contactType:(unint64_t)type;
- (void)_purge;
- (void)_removeAllHandlesForContactIdentifier:(id)identifier;
- (void)_setContact:(id)contact;
- (void)_setContact:(id)contact forHandle:(id)handle;
- (void)_setLikelyFaceTimeHandle:(id)handle forContactIdentifier:(id)identifier;
- (void)dealloc;
- (void)fetchMeContact;
- (void)syncChangeHistory;
- (void)visitAddContactEvent:(id)event;
- (void)visitDeleteContactEvent:(id)event;
- (void)visitUpdateContactEvent:(id)event;
@end

@implementation _PSContactCache

+ (_PSContactCache)sharedInstance
{
  if (sharedInstance__pasOnceToken2 != -1)
  {
    +[_PSContactCache sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult;

  return v3;
}

- (_PSContactCache)init
{
  v43.receiver = self;
  v43.super_class = _PSContactCache;
  v2 = [(_PSContactCache *)&v43 init];
  if (!v2)
  {
    return v2;
  }

  v49 = 0;
  v50 = &v49;
  v51 = 0x2050000000;
  v3 = getCNContactStoreClass_softClass_6;
  v52 = getCNContactStoreClass_softClass_6;
  if (!getCNContactStoreClass_softClass_6)
  {
    v44 = MEMORY[0x1E69E9820];
    v45 = 3221225472;
    v46 = __getCNContactStoreClass_block_invoke_6;
    v47 = &unk_1E7C23BF0;
    v48 = &v49;
    ContactsLibraryCore_8();
    Class = objc_getClass("CNContactStore");
    *(v48[1] + 24) = Class;
    getCNContactStoreClass_softClass_6 = *(v48[1] + 24);
    v3 = v50[3];
  }

  v5 = v3;
  _Block_object_dispose(&v49, 8);
  v6 = objc_opt_new();
  contactStore = v2->_contactStore;
  v2->_contactStore = v6;

  v8 = [MEMORY[0x1E69C5D10] autoreleasingSerialQueueWithLabel:"ps_contact_cache_notification"];
  notificationQueue = v2->_notificationQueue;
  v2->_notificationQueue = v8;

  v10 = objc_alloc(MEMORY[0x1E69C5D60]);
  v11 = [objc_alloc(MEMORY[0x1E69C5D38]) initWithCountLimit:64];
  v12 = [v10 initWithGuardedData:v11];
  cachedContactForHandle = v2->_cachedContactForHandle;
  v2->_cachedContactForHandle = v12;

  v14 = objc_alloc(MEMORY[0x1E69C5D60]);
  v15 = [objc_alloc(MEMORY[0x1E69C5D38]) initWithCountLimit:64];
  v16 = [v14 initWithGuardedData:v15];
  cachedFaceTimeableHandleForContactIdentifier = v2->_cachedFaceTimeableHandleForContactIdentifier;
  v2->_cachedFaceTimeableHandleForContactIdentifier = v16;

  v49 = 0;
  v50 = &v49;
  v51 = 0x2050000000;
  v18 = getIDSIDQueryControllerClass_softClass;
  v52 = getIDSIDQueryControllerClass_softClass;
  if (!getIDSIDQueryControllerClass_softClass)
  {
    v44 = MEMORY[0x1E69E9820];
    v45 = 3221225472;
    v46 = __getIDSIDQueryControllerClass_block_invoke;
    v47 = &unk_1E7C23BF0;
    v48 = &v49;
    IDSLibraryCore();
    v19 = objc_getClass("IDSIDQueryController");
    *(v48[1] + 24) = v19;
    getIDSIDQueryControllerClass_softClass = *(v48[1] + 24);
    v18 = v50[3];
  }

  v20 = v18;
  _Block_object_dispose(&v49, 8);
  sharedInstance = [v18 sharedInstance];
  idsQueryController = v2->_idsQueryController;
  v2->_idsQueryController = sharedInstance;

  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v23 = getIDSServiceNameFaceTimeSymbolLoc_ptr;
  v52 = getIDSServiceNameFaceTimeSymbolLoc_ptr;
  if (!getIDSServiceNameFaceTimeSymbolLoc_ptr)
  {
    v44 = MEMORY[0x1E69E9820];
    v45 = 3221225472;
    v46 = __getIDSServiceNameFaceTimeSymbolLoc_block_invoke;
    v47 = &unk_1E7C23BF0;
    v48 = &v49;
    v24 = IDSLibrary();
    v25 = dlsym(v24, "IDSServiceNameFaceTime");
    *(v48[1] + 24) = v25;
    getIDSServiceNameFaceTimeSymbolLoc_ptr = *(v48[1] + 24);
    v23 = v50[3];
  }

  _Block_object_dispose(&v49, 8);
  if (v23)
  {
    objc_storeStrong(&v2->_faceTimeServiceName, *v23);
    [(IDSIDQueryController *)v2->_idsQueryController _warmupQueryCacheForService:v2->_faceTimeServiceName];
    currentHistoryToken = [(CNContactStore *)v2->_contactStore currentHistoryToken];
    changeHistoryToken = v2->_changeHistoryToken;
    v2->_changeHistoryToken = currentHistoryToken;

    objc_initWeak(&location, v2);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __23___PSContactCache_init__block_invoke;
    block[3] = &unk_1E7C25710;
    objc_copyWeak(&v41, &location);
    v28 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v49 = 0;
    v50 = &v49;
    v51 = 0x2020000000;
    v30 = getCNContactStoreDidChangeNotificationSymbolLoc_ptr_0;
    v52 = getCNContactStoreDidChangeNotificationSymbolLoc_ptr_0;
    if (!getCNContactStoreDidChangeNotificationSymbolLoc_ptr_0)
    {
      v44 = MEMORY[0x1E69E9820];
      v45 = 3221225472;
      v46 = __getCNContactStoreDidChangeNotificationSymbolLoc_block_invoke_0;
      v47 = &unk_1E7C23BF0;
      v48 = &v49;
      v31 = ContactsLibrary_7();
      v32 = dlsym(v31, "CNContactStoreDidChangeNotification");
      *(v48[1] + 24) = v32;
      getCNContactStoreDidChangeNotificationSymbolLoc_ptr_0 = *(v48[1] + 24);
      v30 = v50[3];
    }

    _Block_object_dispose(&v49, 8);
    if (v30)
    {
      v33 = *v30;
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __23___PSContactCache_init__block_invoke_2;
      v38[3] = &unk_1E7C25738;
      v34 = v28;
      v39 = v34;
      v35 = [defaultCenter addObserverForName:v33 object:0 queue:0 usingBlock:v38];
      notificationCenterToken = v2->_notificationCenterToken;
      v2->_notificationCenterToken = v35;

      objc_destroyWeak(&v41);
      objc_destroyWeak(&location);
      return v2;
    }
  }

  else
  {
    [_PSBlockedHandlesCache beginSyncingWithTU];
  }

  dlerror();
  result = abort_report_np();
  __break(1u);
  return result;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self->_notificationCenterToken];

  v4.receiver = self;
  v4.super_class = _PSContactCache;
  [(_PSContactCache *)&v4 dealloc];
}

- (void)_setContact:(id)contact forHandle:(id)handle
{
  contactCopy = contact;
  handleCopy = handle;
  cachedContactForHandle = self->_cachedContactForHandle;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41___PSContactCache__setContact_forHandle___block_invoke;
  v11[3] = &unk_1E7C267E8;
  v12 = contactCopy;
  v13 = handleCopy;
  v9 = handleCopy;
  v10 = contactCopy;
  [(_PASLock *)cachedContactForHandle runWithLockAcquired:v11];
}

- (void)_removeAllHandlesForContactIdentifier:(id)identifier
{
  identifierCopy = identifier;
  cachedContactForHandle = self->_cachedContactForHandle;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57___PSContactCache__removeAllHandlesForContactIdentifier___block_invoke;
  v7[3] = &unk_1E7C26838;
  v8 = identifierCopy;
  v6 = identifierCopy;
  [(_PASLock *)cachedContactForHandle runWithLockAcquired:v7];
}

- (void)_purge
{
  v3 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B5ED1000, v3, OS_LOG_TYPE_DEFAULT, "_PSContactCache: Purging cache.", v4, 2u);
  }

  [(_PASLock *)self->_cachedContactForHandle runWithLockAcquired:&__block_literal_global_58];
  [(_PASLock *)self->_cachedFaceTimeableHandleForContactIdentifier runWithLockAcquired:&__block_literal_global_60];
}

- (id)_getCachedContactForHandle:(id)handle
{
  handleCopy = handle;
  if (_os_feature_enabled_impl())
  {
    v5 = 0;
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__17;
    v15 = __Block_byref_object_dispose__17;
    v16 = 0;
    cachedContactForHandle = self->_cachedContactForHandle;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46___PSContactCache__getCachedContactForHandle___block_invoke;
    v8[3] = &unk_1E7C26880;
    v10 = &v11;
    v9 = handleCopy;
    [(_PASLock *)cachedContactForHandle runWithLockAcquired:v8];
    v5 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  return v5;
}

- (void)_setLikelyFaceTimeHandle:(id)handle forContactIdentifier:(id)identifier
{
  handleCopy = handle;
  identifierCopy = identifier;
  cachedFaceTimeableHandleForContactIdentifier = self->_cachedFaceTimeableHandleForContactIdentifier;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65___PSContactCache__setLikelyFaceTimeHandle_forContactIdentifier___block_invoke;
  v11[3] = &unk_1E7C267E8;
  v12 = handleCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = handleCopy;
  [(_PASLock *)cachedFaceTimeableHandleForContactIdentifier runWithLockAcquired:v11];
}

- (id)_getCachedFaceTimeableHandleForContactIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_os_feature_enabled_impl())
  {
    v5 = 0;
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__17;
    v15 = __Block_byref_object_dispose__17;
    v16 = 0;
    cachedFaceTimeableHandleForContactIdentifier = self->_cachedFaceTimeableHandleForContactIdentifier;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68___PSContactCache__getCachedFaceTimeableHandleForContactIdentifier___block_invoke;
    v8[3] = &unk_1E7C26880;
    v10 = &v11;
    v9 = identifierCopy;
    [(_PASLock *)cachedFaceTimeableHandleForContactIdentifier runWithLockAcquired:v8];
    v5 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  return v5;
}

- (void)_setContact:(id)contact
{
  v35 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v5 = contactCopy;
  if (contactCopy)
  {
    identifier = [contactCopy identifier];
    [(_PSContactCache *)self _setContact:v5 forHandle:identifier];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    phoneNumbers = [v5 phoneNumbers];
    v8 = [phoneNumbers countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v30;
      do
      {
        v11 = 0;
        do
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(phoneNumbers);
          }

          v12 = MEMORY[0x1E69978B0];
          value = [*(*(&v29 + 1) + 8 * v11) value];
          stringValue = [value stringValue];
          v15 = [v12 normalizedStringFromContactString:stringValue];

          [(_PSContactCache *)self _setContact:v5 forHandle:v15];
          ++v11;
        }

        while (v9 != v11);
        v9 = [phoneNumbers countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v9);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    emailAddresses = [v5 emailAddresses];
    v17 = [emailAddresses countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        v20 = 0;
        do
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(emailAddresses);
          }

          v21 = MEMORY[0x1E69978B0];
          value2 = [*(*(&v25 + 1) + 8 * v20) value];
          v23 = [v21 normalizedStringFromContactString:value2];

          [(_PSContactCache *)self _setContact:v5 forHandle:v23];
          ++v20;
        }

        while (v18 != v20);
        v18 = [emailAddresses countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v18);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)visitAddContactEvent:(id)event
{
  eventCopy = event;
  v5 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_PSContactCache visitAddContactEvent:];
  }

  contact = [eventCopy contact];

  [(_PSContactCache *)self _setContact:contact];
}

- (void)visitUpdateContactEvent:(id)event
{
  eventCopy = event;
  v5 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_PSContactCache visitUpdateContactEvent:];
  }

  contact = [eventCopy contact];
  identifier = [contact identifier];
  [(_PSContactCache *)self _removeAllHandlesForContactIdentifier:identifier];

  contact2 = [eventCopy contact];

  [(_PSContactCache *)self _setContact:contact2];
}

- (void)visitDeleteContactEvent:(id)event
{
  eventCopy = event;
  v5 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_PSContactCache visitDeleteContactEvent:];
  }

  contactIdentifier = [eventCopy contactIdentifier];

  [(_PSContactCache *)self _removeAllHandlesForContactIdentifier:contactIdentifier];
}

- (void)syncChangeHistory
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_1B5ED1000, v0, v1, "_PSContactCache: Enumerating CNContactStore change history failed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (id)fetchMeContact
{
  v16[1] = *MEMORY[0x1E69E9840];
  contactStore = self->_contactStore;
  v4 = getCNContactIdentifierKey_4();
  v16[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v13 = 0;
  v6 = [(CNContactStore *)contactStore _crossPlatformUnifiedMeContactWithKeysToFetch:v5 error:&v13];
  v7 = v13;

  if (v7)
  {
    v8 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [_PSContactCache fetchMeContact];
    }
  }

  else if (v6)
  {
    goto LABEL_9;
  }

  v9 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v7;
    _os_log_impl(&dword_1B5ED1000, v9, OS_LOG_TYPE_DEFAULT, "_PSContactCache: Me Card query returns nil in _PSContactCache. Error: %@", buf, 0xCu);
  }

  v6 = 0;
LABEL_9:
  v10 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v10, OS_LOG_TYPE_DEFAULT, "_PSContactCache: Caching me contact results for future use", buf, 2u);
  }

  [(_PSContactCache *)self _setContact:v6 forHandle:@"kMeSentinelString"];
  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)getFaceTimeableHandleForContact:(id)contact interactionStore:(id)store seedRecipientHandle:(id)handle
{
  v158 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  storeCopy = store;
  handleCopy = handle;
  if (!storeCopy)
  {
    handle2 = 0;
    goto LABEL_123;
  }

  phoneNumbers = [contactCopy phoneNumbers];
  v12 = [phoneNumbers _pas_mappedArrayWithTransform:&__block_literal_global_68];

  emailAddresses = [contactCopy emailAddresses];
  v14 = [emailAddresses _pas_mappedArrayWithTransform:&__block_literal_global_70];

  v15 = [v12 count];
  v16 = [v14 count] + v15;
  if (!v16)
  {
    handle2 = 0;
    goto LABEL_122;
  }

  if (v16 == 1)
  {
    firstObject = [v12 firstObject];
    v18 = firstObject;
    if (firstObject)
    {
      firstObject2 = firstObject;
    }

    else
    {
      firstObject2 = [v14 firstObject];
    }

    handle2 = firstObject2;

    goto LABEL_122;
  }

  identifier = [contactCopy identifier];
  v22 = [(_PSContactCache *)self _getCachedFaceTimeableHandleForContactIdentifier:identifier];

  v133 = v22;
  if (v22)
  {
    v23 = +[_PSLogging generalChannel];
    v24 = v22;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      handle = [v22 handle];
      identifier2 = [contactCopy identifier];
      *buf = 138412546;
      v155 = handle;
      v156 = 2112;
      v157 = identifier2;
      _os_log_impl(&dword_1B5ED1000, v23, OS_LOG_TYPE_DEFAULT, "Returning cached FaceTimeable handle %@ for contact UUID %@", buf, 0x16u);
    }

    handle2 = [v133 handle];
    goto LABEL_121;
  }

  v131 = v14;
  v132 = v12;
  identifier3 = [contactCopy identifier];
  v28 = +[_PSConstants macFacetimeBundleId];
  v153[0] = v28;
  v29 = +[_PSConstants mobileFacetimeBundleId];
  v153[1] = v29;
  handle2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v153 count:2];
  v130 = storeCopy;
  v30 = [_PSInteractionStoreUtils mostRecentInteractionInvolvingMatchingIdentifier:identifier3 store:storeCopy bundleIds:handle2];

  v129 = v30;
  if (!v30)
  {
    type = 0;
    v42 = 0;
    goto LABEL_32;
  }

  v31 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    identifier4 = [contactCopy identifier];
    *buf = 138412290;
    v155 = identifier4;
    _os_log_impl(&dword_1B5ED1000, v31, OS_LOG_TYPE_DEFAULT, "Found previous FaceTime interaction to cache handle for contact UUID %@, checking with IDS filter", buf, 0xCu);
  }

  recipients = [v30 recipients];
  v149[0] = MEMORY[0x1E69E9820];
  v149[1] = 3221225472;
  v149[2] = __88___PSContactCache_getFaceTimeableHandleForContact_interactionStore_seedRecipientHandle___block_invoke_73;
  v149[3] = &unk_1E7C268C8;
  v34 = contactCopy;
  v150 = v34;
  v35 = [recipients _pas_filteredArrayWithTest:v149];
  firstObject3 = [v35 firstObject];

  handle2 = [firstObject3 identifier];
  if (([v132 containsObject:handle2] & 1) == 0 && !objc_msgSend(v131, "containsObject:", handle2))
  {
    v44 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      identifier5 = [v34 identifier];
      *buf = 138412290;
      v155 = identifier5;
      _os_log_impl(&dword_1B5ED1000, v44, OS_LOG_TYPE_DEFAULT, "Found previous FaceTime interaction for best FaceTime handle, but handle no longer associated to contact %@", buf, 0xCu);
    }

    goto LABEL_29;
  }

  v37 = -[_PSContactCache getFaceTimeIDSStatusForHandle:contactType:](self, "getFaceTimeIDSStatusForHandle:contactType:", handle2, [firstObject3 type]);
  if (!v37)
  {
    v42 = handle2;
    type = [firstObject3 type];
LABEL_30:
    v43 = 1;
    goto LABEL_31;
  }

  if (v37 != 1)
  {
LABEL_29:
    type = 0;
    v42 = 0;
    goto LABEL_30;
  }

  v38 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    identifier6 = [v34 identifier];
    *buf = 138412546;
    v155 = handle2;
    v156 = 2112;
    v157 = identifier6;
    _os_log_impl(&dword_1B5ED1000, v38, OS_LOG_TYPE_DEFAULT, "Caching handle %@ for contact UUID %@", buf, 0x16u);
  }

  identifier7 = [v34 identifier];
  [(_PSContactCache *)self _setLikelyFaceTimeHandle:handle2 forContactIdentifier:identifier7];

  v41 = handle2;
  type = 0;
  v42 = 0;
  v43 = 0;
LABEL_31:

  if (!v43)
  {
    goto LABEL_120;
  }

LABEL_32:
  v46 = v132;
  if ([v132 count])
  {
    identifier8 = [contactCopy identifier];
    v48 = [MEMORY[0x1E695DF00] now];
    v49 = [v48 dateByAddingTimeInterval:-86400.0];
    v50 = [_PSInteractionStoreUtils someIMessageInteractionInvolvingContactIdentifier:identifier8 store:v130 contactType:1 afterStartDate:v49];

    v51 = v50;
    if (v50)
    {
      v52 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        identifier9 = [contactCopy identifier];
        *buf = 138412290;
        v155 = identifier9;
        _os_log_impl(&dword_1B5ED1000, v52, OS_LOG_TYPE_DEFAULT, "Found previous phone iMessage interaction to cache handle for contact UUID %@, checking with IDS filter", buf, 0xCu);
      }

      v135 = v51;
      recipients2 = [v51 recipients];
      v147[0] = MEMORY[0x1E69E9820];
      v147[1] = 3221225472;
      v147[2] = __88___PSContactCache_getFaceTimeableHandleForContact_interactionStore_seedRecipientHandle___block_invoke_75;
      v147[3] = &unk_1E7C268C8;
      v55 = contactCopy;
      v148 = v55;
      v56 = [recipients2 _pas_filteredArrayWithTest:v147];
      firstObject4 = [v56 firstObject];

      v58 = firstObject4;
      identifier10 = [firstObject4 identifier];
      if (([v132 containsObject:identifier10] & 1) != 0 || objc_msgSend(v131, "containsObject:", identifier10))
      {
        v60 = -[_PSContactCache getFaceTimeIDSStatusForHandle:contactType:](self, "getFaceTimeIDSStatusForHandle:contactType:", identifier10, [v58 type]);
        if (v60 == 1)
        {
          v127 = v58;
          v61 = +[_PSLogging generalChannel];
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            identifier11 = [v55 identifier];
            *buf = 138412546;
            v155 = identifier10;
            v156 = 2112;
            v157 = identifier11;
            _os_log_impl(&dword_1B5ED1000, v61, OS_LOG_TYPE_DEFAULT, "Caching handle %@ for contact UUID %@", buf, 0x16u);
          }

          identifier12 = [v55 identifier];
          [(_PSContactCache *)self _setLikelyFaceTimeHandle:identifier10 forContactIdentifier:identifier12];

          handle2 = identifier10;
          v64 = 0;
          v58 = v127;
        }

        else
        {
          v64 = 1;
          if (!v42 && !v60)
          {
            v42 = identifier10;
            type = [v58 type];
          }
        }
      }

      else
      {
        v65 = +[_PSLogging generalChannel];
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          [v55 identifier];
          v67 = v66 = v58;
          *buf = 138412290;
          v155 = v67;
          _os_log_impl(&dword_1B5ED1000, v65, OS_LOG_TYPE_DEFAULT, "Found previous phone iMessage interaction for best FaceTime handle, but handle no longer associated to contact %@", buf, 0xCu);

          v58 = v66;
        }

        v64 = 1;
      }

      if (!v64)
      {
        v100 = v135;
        goto LABEL_119;
      }

      v46 = v132;
      v51 = v135;
    }
  }

  v68 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
  {
    identifier13 = [contactCopy identifier];
    *buf = 138412290;
    v155 = identifier13;
    _os_log_impl(&dword_1B5ED1000, v68, OS_LOG_TYPE_DEFAULT, "Checking IDS eligibility for phone numbers belong to contact UUID %@", buf, 0xCu);
  }

  v136 = handleCopy;

  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v70 = v46;
  v71 = [v70 countByEnumeratingWithState:&v143 objects:v152 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v144;
    do
    {
      for (i = 0; i != v72; ++i)
      {
        if (*v144 != v73)
        {
          objc_enumerationMutation(v70);
        }

        v75 = *(*(&v143 + 1) + 8 * i);
        v76 = [(_PSContactCache *)self getFaceTimeIDSStatusForHandle:v75 contactType:1];
        if (v76)
        {
          if (v76 == 1)
          {
            v96 = +[_PSLogging generalChannel];
            if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
            {
              identifier14 = [contactCopy identifier];
              *buf = 138412546;
              v155 = v75;
              v156 = 2112;
              v157 = identifier14;
LABEL_79:
              _os_log_impl(&dword_1B5ED1000, v96, OS_LOG_TYPE_DEFAULT, "Caching handle %@ for contact UUID %@", buf, 0x16u);
            }

            goto LABEL_80;
          }
        }

        else if (!v42 || [v136 isEqualToString:v75])
        {
          v77 = v75;

          type = 1;
          v42 = v77;
        }
      }

      v72 = [v70 countByEnumeratingWithState:&v143 objects:v152 count:16];
    }

    while (v72);
  }

  handleCopy = v136;
  if ([v131 count])
  {
    identifier15 = [contactCopy identifier];
    v79 = [MEMORY[0x1E695DF00] now];
    v80 = [v79 dateByAddingTimeInterval:-86400.0];
    v81 = [_PSInteractionStoreUtils someIMessageInteractionInvolvingContactIdentifier:identifier15 store:v130 contactType:2 afterStartDate:v80];

    v82 = 0x1E7C23000uLL;
    if (!v81)
    {
LABEL_91:

      goto LABEL_92;
    }

    v83 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      identifier16 = [contactCopy identifier];
      *buf = 138412290;
      v155 = identifier16;
      _os_log_impl(&dword_1B5ED1000, v83, OS_LOG_TYPE_DEFAULT, "Found previous email iMessage interaction to cache handle for contact UUID %@", buf, 0xCu);
    }

    recipients3 = [v81 recipients];
    v141[0] = MEMORY[0x1E69E9820];
    v141[1] = 3221225472;
    v141[2] = __88___PSContactCache_getFaceTimeableHandleForContact_interactionStore_seedRecipientHandle___block_invoke_76;
    v141[3] = &unk_1E7C268C8;
    v126 = contactCopy;
    v142 = v126;
    v86 = [recipients3 _pas_filteredArrayWithTest:v141];
    firstObject5 = [v86 firstObject];

    identifier17 = [firstObject5 identifier];
    v128 = v81;
    if (([v70 containsObject:identifier17] & 1) == 0 && !objc_msgSend(v131, "containsObject:", identifier17))
    {
      v125 = identifier17;
      v82 = 0x1E7C23000uLL;
      v101 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
      {
        [v126 identifier];
        v103 = v102 = firstObject5;
        *buf = 138412290;
        v155 = v103;
        _os_log_impl(&dword_1B5ED1000, v101, OS_LOG_TYPE_DEFAULT, "Found previous email iMessage interaction for best FaceTime handle, but handle no longer associated to contact %@", buf, 0xCu);

        firstObject5 = v102;
      }

      v95 = 1;
      identifier17 = v125;
      goto LABEL_89;
    }

    v89 = -[_PSContactCache getFaceTimeIDSStatusForHandle:contactType:](self, "getFaceTimeIDSStatusForHandle:contactType:", identifier17, [firstObject5 type]);
    if (v89 == 1)
    {
      v90 = identifier17;
      v91 = firstObject5;
      v92 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
      {
        identifier18 = [v126 identifier];
        *buf = 138412546;
        v155 = v90;
        v156 = 2112;
        v157 = identifier18;
        _os_log_impl(&dword_1B5ED1000, v92, OS_LOG_TYPE_DEFAULT, "Caching handle %@ for contact UUID %@", buf, 0x16u);
      }

      identifier19 = [v126 identifier];
      identifier17 = v90;
      [(_PSContactCache *)self _setLikelyFaceTimeHandle:v90 forContactIdentifier:identifier19];

      handle2 = v90;
      v95 = 0;
      firstObject5 = v91;
    }

    else
    {
      v95 = 1;
      if (!v89)
      {
        v82 = 0x1E7C23000;
        if (!v42)
        {
          v42 = identifier17;
          type = 2;
        }

        goto LABEL_89;
      }
    }

    v82 = 0x1E7C23000;
LABEL_89:

    if (v95)
    {
      v81 = v128;
      goto LABEL_91;
    }

    v100 = v128;
LABEL_119:

    goto LABEL_120;
  }

  v82 = 0x1E7C23000;
LABEL_92:
  if ([v70 count])
  {
    if (type == 1)
    {
      handle2 = v42;
    }

    else
    {
      phoneNumbers2 = [contactCopy phoneNumbers];
      firstObject6 = [phoneNumbers2 firstObject];
      value = [firstObject6 value];
      handle2 = [value formattedInternationalStringValue];
    }

    generalChannel = [*(v82 + 1360) generalChannel];
    if (os_log_type_enabled(generalChannel, OS_LOG_TYPE_DEFAULT))
    {
      identifier20 = [contactCopy identifier];
      *buf = 138412546;
      v155 = handle2;
      v156 = 2112;
      v157 = identifier20;
      _os_log_impl(&dword_1B5ED1000, generalChannel, OS_LOG_TYPE_DEFAULT, "As best effort guess, using phone number %@ for contact UUID %@", buf, 0x16u);
    }

    goto LABEL_120;
  }

  generalChannel2 = [*(v82 + 1360) generalChannel];
  if (os_log_type_enabled(generalChannel2, OS_LOG_TYPE_DEFAULT))
  {
    identifier21 = [contactCopy identifier];
    *buf = 138412290;
    v155 = identifier21;
    _os_log_impl(&dword_1B5ED1000, generalChannel2, OS_LOG_TYPE_DEFAULT, "Checking IDS eligibility for emails belong to contact UUID %@", buf, 0xCu);
  }

  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  v70 = v131;
  v106 = [v70 countByEnumeratingWithState:&v137 objects:v151 count:16];
  if (!v106)
  {
LABEL_110:

    v112 = +[_PSLogging generalChannel];
    v113 = os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT);
    if (v42)
    {
      handleCopy = v136;
      if (v113)
      {
        identifier22 = [contactCopy identifier];
        *buf = 138412546;
        v155 = v42;
        v156 = 2112;
        v157 = identifier22;
        _os_log_impl(&dword_1B5ED1000, v112, OS_LOG_TYPE_DEFAULT, "Caching fallback handle %@ for contact UUID %@", buf, 0x16u);
      }

      v42 = v42;
      handle2 = v42;
    }

    else
    {
      handleCopy = v136;
      if (v113)
      {
        identifier23 = [contactCopy identifier];
        *buf = 138412546;
        v155 = 0;
        v156 = 2112;
        v157 = identifier23;
        _os_log_impl(&dword_1B5ED1000, v112, OS_LOG_TYPE_DEFAULT, "Caching handle %@ for contact UUID %@", buf, 0x16u);
      }

      identifier24 = [contactCopy identifier];
      [(_PSContactCache *)self _setLikelyFaceTimeHandle:0 forContactIdentifier:identifier24];

      v42 = 0;
      handle2 = 0;
    }

    goto LABEL_120;
  }

  v107 = v106;
  v108 = *v138;
LABEL_99:
  v109 = 0;
  while (1)
  {
    if (*v138 != v108)
    {
      objc_enumerationMutation(v70);
    }

    v75 = *(*(&v137 + 1) + 8 * v109);
    v110 = [(_PSContactCache *)self getFaceTimeIDSStatusForHandle:v75 contactType:1];
    if (!v110)
    {
      if (!v42 || [v136 isEqualToString:v75])
      {
        v111 = v75;

        v42 = v111;
      }

      goto LABEL_108;
    }

    if (v110 == 1)
    {
      break;
    }

LABEL_108:
    if (v107 == ++v109)
    {
      v107 = [v70 countByEnumeratingWithState:&v137 objects:v151 count:16];
      if (v107)
      {
        goto LABEL_99;
      }

      goto LABEL_110;
    }
  }

  v96 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
  {
    identifier14 = [contactCopy identifier];
    *buf = 138412546;
    v155 = v75;
    v156 = 2112;
    v157 = identifier14;
    goto LABEL_79;
  }

LABEL_80:

  identifier25 = [contactCopy identifier];
  [(_PSContactCache *)self _setLikelyFaceTimeHandle:v75 forContactIdentifier:identifier25];

  handle2 = v75;
  handleCopy = v136;
LABEL_120:

  storeCopy = v130;
  v14 = v131;
  v12 = v132;
  v24 = 0;
LABEL_121:

LABEL_122:
LABEL_123:

  v120 = *MEMORY[0x1E69E9840];

  return handle2;
}

- (int64_t)getFaceTimeIDSStatusForHandle:(id)handle contactType:(unint64_t)type
{
  v25 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  if (_os_feature_enabled_impl())
  {
    v7 = 1;
    goto LABEL_16;
  }

  if (type - 3 < 0xFFFFFFFFFFFFFFFELL)
  {
    v7 = 2;
    goto LABEL_16;
  }

  v8 = handleCopy;
  if (type == 1)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v9 = getIDSCopyIDForPhoneNumberSymbolLoc_ptr;
    v21 = getIDSCopyIDForPhoneNumberSymbolLoc_ptr;
    if (!getIDSCopyIDForPhoneNumberSymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getIDSCopyIDForPhoneNumberSymbolLoc_block_invoke;
      v23 = &unk_1E7C23BF0;
      v24 = &v18;
      v10 = IDSLibrary();
      v11 = dlsym(v10, "IDSCopyIDForPhoneNumber");
      *(v24[1] + 24) = v11;
      getIDSCopyIDForPhoneNumberSymbolLoc_ptr = *(v24[1] + 24);
      v9 = v19[3];
    }

    _Block_object_dispose(&v18, 8);
    if (!v9)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v9 = getIDSCopyIDForEmailAddressSymbolLoc_ptr;
    v21 = getIDSCopyIDForEmailAddressSymbolLoc_ptr;
    if (!getIDSCopyIDForEmailAddressSymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getIDSCopyIDForEmailAddressSymbolLoc_block_invoke;
      v23 = &unk_1E7C23BF0;
      v24 = &v18;
      v12 = IDSLibrary();
      v13 = dlsym(v12, "IDSCopyIDForEmailAddress");
      *(v24[1] + 24) = v13;
      getIDSCopyIDForEmailAddressSymbolLoc_ptr = *(v24[1] + 24);
      v9 = v19[3];
    }

    _Block_object_dispose(&v18, 8);
    if (!v9)
    {
LABEL_17:
      [_PSBlockedHandlesCache beginSyncingWithTU];
      __break(1u);
    }
  }

  v14 = v9(v8);

  v7 = [(IDSIDQueryController *)self->_idsQueryController _currentIDStatusForDestination:v14 service:self->_faceTimeServiceName respectExpiry:0 listenerID:@"com.apple.PeopleSuggester.IDSListener", v18];
  v15 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = v8;
    *&buf[12] = 2048;
    *&buf[14] = v7;
    _os_log_impl(&dword_1B5ED1000, v15, OS_LOG_TYPE_INFO, "Handle %@ received IDS status %ld", buf, 0x16u);
  }

LABEL_16:
  v16 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)getMeContact
{
  v3 = [(_PSContactCache *)self _getCachedContactForHandle:@"kMeSentinelString"];
  if (v3)
  {
    v4 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [_PSContactCache getMeContact];
    }

    contact = [v3 contact];
  }

  else
  {
    contact = [(_PSContactCache *)self fetchMeContact];
  }

  v6 = contact;

  return v6;
}

- (id)getContactForHandle:(id)handle handleType:(int64_t)type
{
  v39 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  if (!handleCopy)
  {
    contact = 0;
    goto LABEL_30;
  }

  v7 = handleCopy;
  v8 = [MEMORY[0x1E69978B0] normalizedStringFromContactString:handleCopy];

  v9 = [(_PSContactCache *)self _getCachedContactForHandle:v8];
  if (!v9)
  {
    switch(type)
    {
      case 2:
        CNContactClass_3 = getCNContactClass_3();
        v32 = 0;
        v33 = &v32;
        v34 = 0x2050000000;
        v18 = getCNPhoneNumberClass_softClass_3;
        v35 = getCNPhoneNumberClass_softClass_3;
        if (!getCNPhoneNumberClass_softClass_3)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __getCNPhoneNumberClass_block_invoke_3;
          v37 = &unk_1E7C23BF0;
          v38 = &v32;
          ContactsLibraryCore_8();
          Class = objc_getClass("CNPhoneNumber");
          *(v38[1] + 24) = Class;
          getCNPhoneNumberClass_softClass_3 = *(v38[1] + 24);
          v18 = v33[3];
        }

        v20 = v18;
        _Block_object_dispose(&v32, 8);
        v21 = [v18 phoneNumberWithStringValue:v8];
        v16 = [CNContactClass_3 predicateForContactsMatchingPhoneNumber:v21];

        break;
      case 1:
        v16 = [getCNContactClass_3() predicateForContactsMatchingEmailAddress:v8];
        break;
      case 0:
        contactStore = self->_contactStore;
        contactKeysToFetch = [(_PSContactCache *)self contactKeysToFetch];
        v31 = 0;
        firstObject = [(CNContactStore *)contactStore unifiedContactWithIdentifier:v8 keysToFetch:contactKeysToFetch error:&v31];
        v15 = v31;

        v16 = +[_PSLogging generalChannel];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412803;
          *&buf[4] = v8;
          *&buf[12] = 2117;
          *&buf[14] = firstObject;
          *&buf[22] = 2112;
          v37 = v15;
          _os_log_impl(&dword_1B5ED1000, v16, OS_LOG_TYPE_DEFAULT, "_PSContactCache: ZKW FaceTime suggestions attempted to lookup contact for uuid %@, found contact %{sensitive}@, error %@", buf, 0x20u);
        }

LABEL_22:

        if (!firstObject || v15)
        {
          v27 = +[_PSLogging generalChannel];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v8;
            _os_log_impl(&dword_1B5ED1000, v27, OS_LOG_TYPE_DEFAULT, "_PSContactCache: Unable to find contact for handle %@, caching nil", buf, 0xCu);
          }

          [(_PSContactCache *)self _setContact:0 forHandle:v8];
          contact = 0;
        }

        else
        {
          [(_PSContactCache *)self _setContact:firstObject];
          contact = firstObject;
        }

        goto LABEL_29;
      default:
        v22 = +[_PSLogging generalChannel];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [_PSContactCache getContactForHandle:handleType:];
        }

        v16 = 0;
        break;
    }

    v23 = self->_contactStore;
    contactKeysToFetch2 = [(_PSContactCache *)self contactKeysToFetch];
    v30 = 0;
    v25 = [(CNContactStore *)v23 unifiedContactsMatchingPredicate:v16 keysToFetch:contactKeysToFetch2 error:&v30];
    v15 = v30;

    v26 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412803;
      *&buf[4] = v8;
      *&buf[12] = 2117;
      *&buf[14] = v25;
      *&buf[22] = 2112;
      v37 = v15;
      _os_log_impl(&dword_1B5ED1000, v26, OS_LOG_TYPE_DEFAULT, "_PSContactCache: ZKW FaceTime suggestions attempted to lookup contact for handle %@, found contacts %{sensitive}@, error %@", buf, 0x20u);
    }

    firstObject = [v25 firstObject];

    goto LABEL_22;
  }

  v10 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [_PSContactCache getContactForHandle:handleType:];
  }

  contact = [v9 contact];
LABEL_29:

LABEL_30:
  v28 = *MEMORY[0x1E69E9840];

  return contact;
}

- (id)contactKeysToFetch
{
  v23 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v2 = getCNContactFormatterClass_softClass_5;
  v19 = getCNContactFormatterClass_softClass_5;
  if (!getCNContactFormatterClass_softClass_5)
  {
    ContactsLibraryCore_8();
    v17[3] = objc_getClass("CNContactFormatter");
    getCNContactFormatterClass_softClass_5 = v17[3];
    v2 = v17[3];
  }

  v3 = v2;
  _Block_object_dispose(&v16, 8);
  v4 = [v2 descriptorForRequiredKeysForStyle:0];
  v5 = getCNContactIdentifierKey_4();
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v6 = getCNContactPhoneNumbersKeySymbolLoc_ptr_6;
  v19 = getCNContactPhoneNumbersKeySymbolLoc_ptr_6;
  v20[0] = v5;
  if (!getCNContactPhoneNumbersKeySymbolLoc_ptr_6)
  {
    v7 = ContactsLibrary_7();
    v17[3] = dlsym(v7, "CNContactPhoneNumbersKey");
    getCNContactPhoneNumbersKeySymbolLoc_ptr_6 = v17[3];
    v6 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v6)
  {
    goto LABEL_12;
  }

  v8 = *v6;
  v20[1] = v8;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v9 = getCNContactEmailAddressesKeySymbolLoc_ptr_6;
  v19 = getCNContactEmailAddressesKeySymbolLoc_ptr_6;
  if (!getCNContactEmailAddressesKeySymbolLoc_ptr_6)
  {
    v10 = ContactsLibrary_7();
    v17[3] = dlsym(v10, "CNContactEmailAddressesKey");
    getCNContactEmailAddressesKeySymbolLoc_ptr_6 = v17[3];
    v9 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v9)
  {
LABEL_12:
    [_PSBlockedHandlesCache beginSyncingWithTU];
    __break(1u);
  }

  v21 = *v9;
  v22 = v4;
  v11 = MEMORY[0x1E695DEC8];
  v12 = v21;
  v13 = [v11 arrayWithObjects:v20 count:4];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)fetchMeContact
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_1B5ED1000, v0, v1, "Error fetching me contact from store in _PSContactCache: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)getContactForHandle:handleType:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1B5ED1000, v0, OS_LOG_TYPE_DEBUG, "_PSContactCache: Returning cached contact for %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)getContactForHandle:handleType:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_1B5ED1000, v0, v1, "_PSContactCache: Unknown handle type %ld", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end