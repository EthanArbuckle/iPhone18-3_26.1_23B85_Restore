@interface _PSInteractionAndContactMonitor
- (BOOL)contactIdIsInContactStore:(id)a3;
- (NSSet)contactIdsSeen;
- (_PSInteractionAndContactMonitor)initWithInteractionStore:(id)a3 contactStore:(id)a4;
- (void)dealloc;
- (void)enumerateContactStoreWithBlock:(id)a3;
- (void)fetchAllContactIdsFromContactStore;
- (void)fetchChangedContactIdsFromContactStore;
- (void)notifyWhenContactAddedToInteractionStore:(id)a3;
- (void)populateContactIdCachesWithMessageCache:(id)a3 shareCache:(id)a4;
- (void)visitAddContactEvent:(id)a3;
- (void)visitDeleteContactEvent:(id)a3;
- (void)visitDropEverythingEvent:(id)a3;
@end

@implementation _PSInteractionAndContactMonitor

- (NSSet)contactIdsSeen
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSSet *)self->_contactIdsSeen copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (_PSInteractionAndContactMonitor)initWithInteractionStore:(id)a3 contactStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(_PSInteractionAndContactMonitor *)self init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_6;
  }

  v9->_lock._os_unfair_lock_opaque = 0;
  objc_storeStrong(&v9->_interactionStore, a3);
  objc_storeStrong(&v10->_contactStore, a4);
  v11 = objc_opt_new();
  contactStoreEnumerationCache = v10->_contactStoreEnumerationCache;
  v10->_contactStoreEnumerationCache = v11;

  v13 = [(CNContactStore *)v10->_contactStore currentHistoryToken];
  changeHistoryToken = v10->_changeHistoryToken;
  v10->_changeHistoryToken = v13;

  v15 = [MEMORY[0x1E69C5D10] autoreleasingSerialQueueWithLabel:"ps_interaction_contact_monitor_notification"];
  notificationQueue = v10->_notificationQueue;
  v10->_notificationQueue = v15;

  objc_initWeak(location, v10);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73___PSInteractionAndContactMonitor_initWithInteractionStore_contactStore___block_invoke;
  block[3] = &unk_1E7C25710;
  objc_copyWeak(&v29, location);
  v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  v18 = [MEMORY[0x1E696AD88] defaultCenter];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v19 = getCNContactStoreDidChangeNotificationSymbolLoc_ptr;
  v35 = getCNContactStoreDidChangeNotificationSymbolLoc_ptr;
  if (!getCNContactStoreDidChangeNotificationSymbolLoc_ptr)
  {
    location[1] = MEMORY[0x1E69E9820];
    location[2] = 3221225472;
    location[3] = __getCNContactStoreDidChangeNotificationSymbolLoc_block_invoke;
    location[4] = &unk_1E7C23BF0;
    v31 = &v32;
    v20 = ContactsLibrary_1();
    v21 = dlsym(v20, "CNContactStoreDidChangeNotification");
    *(v31[1] + 24) = v21;
    getCNContactStoreDidChangeNotificationSymbolLoc_ptr = *(v31[1] + 24);
    v19 = v33[3];
  }

  _Block_object_dispose(&v32, 8);
  if (v19)
  {
    v22 = *v19;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __73___PSInteractionAndContactMonitor_initWithInteractionStore_contactStore___block_invoke_2;
    v26[3] = &unk_1E7C25738;
    v23 = v17;
    v27 = v23;
    v24 = [v18 addObserverForName:v22 object:0 queue:0 usingBlock:v26];

    objc_destroyWeak(&v29);
    objc_destroyWeak(location);
LABEL_6:

    return v10;
  }

  dlerror();
  result = abort_report_np();
  __break(1u);
  return result;
}

- (void)dealloc
{
  contactIdsInContactStore = self->_contactIdsInContactStore;
  if (contactIdsInContactStore)
  {
    CFRelease(contactIdsInContactStore);
  }

  v4.receiver = self;
  v4.super_class = _PSInteractionAndContactMonitor;
  [(_PSInteractionAndContactMonitor *)&v4 dealloc];
}

- (void)populateContactIdCachesWithMessageCache:(id)a3 shareCache:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = [(_PSInteractionAndContactMonitor *)self interactionStore];
  v10 = [(_PSInteractionAndContactMonitor *)self contactIdsSeen];

  if (!v10)
  {
    v29 = v9;
    v30 = v8;
    v31 = self;
    v11 = objc_opt_new();
    v33 = v6;
    v12 = [v6 interactions];
    v32 = v7;
    v27 = [v7 interactions];
    v28 = v12;
    [v12 arrayByAddingObjectsFromArray:?];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v42 = 0u;
    v13 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v40;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v40 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = [*(*(&v39 + 1) + 8 * i) recipients];
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v18 = [v17 countByEnumeratingWithState:&v35 objects:v43 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v36;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v36 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v35 + 1) + 8 * j);
                v23 = [v22 personId];

                if (v23)
                {
                  v24 = [v22 personId];
                  [v11 addObject:v24];
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v35 objects:v43 count:16];
            }

            while (v19);
          }
        }

        v14 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v14);
    }

    self = v31;
    os_unfair_lock_lock(&v31->_lock);
    v25 = [v11 copy];
    [(_PSInteractionAndContactMonitor *)v31 setContactIdsSeen:v25];

    os_unfair_lock_unlock(&v31->_lock);
    v9 = v29;
    v8 = v30;
    [v30 addObserver:v31 selector:sel_notifyWhenContactAddedToInteractionStore_ name:*MEMORY[0x1E6997A08] object:v29];

    v7 = v32;
    v6 = v33;
  }

  if (!self->_contactIdsInContactStore)
  {
    self->_contactIdsInContactStore = CFSetCreateMutable(0, 0, 0);
    [(_PSInteractionAndContactMonitor *)self fetchAllContactIdsFromContactStore];
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)fetchAllContactIdsFromContactStore
{
  v22[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  do
  {
    self->_contactsChangedFlag = 0;
    os_unfair_lock_unlock(&self->_lock);
    Mutable = CFSetCreateMutable(0, 0, 0);
    v4 = objc_opt_new();
    v5 = objc_alloc(getCNContactFetchRequestClass());
    v6 = getCNContactIdentifierKey_1();
    v22[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v8 = [v5 initWithKeysToFetch:v7];

    [v8 setContactBatchCount:100];
    v9 = [(_PSInteractionAndContactMonitor *)self contactStore];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __69___PSInteractionAndContactMonitor_fetchAllContactIdsFromContactStore__block_invoke;
    v17[3] = &unk_1E7C25760;
    v19 = Mutable;
    v10 = v4;
    v18 = v10;
    [v9 enumerateContactsWithFetchRequest:v8 error:0 usingBlock:v17];

    v11 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      Count = CFSetGetCount(Mutable);
      *buf = 134217984;
      v21 = Count;
      _os_log_impl(&dword_1B5ED1000, v11, OS_LOG_TYPE_DEFAULT, "_PSInteractionAndContactMonitor: Fetched all %tu contact ids from contact store", buf, 0xCu);
    }

    os_unfair_lock_lock(&self->_lock);
    contactIdsInContactStore = self->_contactIdsInContactStore;
    if (contactIdsInContactStore)
    {
      CFRelease(contactIdsInContactStore);
    }

    contactStoreEnumerationCache = self->_contactStoreEnumerationCache;
    self->_contactStoreEnumerationCache = v10;
    self->_contactIdsInContactStore = Mutable;
    v15 = v10;
  }

  while (self->_contactsChangedFlag);
  os_unfair_lock_unlock(&self->_lock);
  notify_post([@"com.apple.PeopleSuggester.ReQuery" UTF8String]);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)fetchChangedContactIdsFromContactStore
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_ERROR, "_PSInteractionAndContactMonitor: Enumerating CNContactStore change history failed: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)notifyWhenContactAddedToInteractionStore:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6997A10]];

  v6 = [(_PSInteractionAndContactMonitor *)self contactIdsSeen];
  v7 = [v6 mutableCopy];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = v5;
  v27 = [v8 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v27)
  {
    v30 = v7;
    v29 = 0;
    v25 = *v36;
    v26 = v8;
    do
    {
      v9 = 0;
      do
      {
        if (*v36 != v25)
        {
          objc_enumerationMutation(v8);
        }

        v28 = v9;
        v10 = [*(*(&v35 + 1) + 8 * v9) recipients];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v32;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v32 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v31 + 1) + 8 * i);
              v16 = [v15 identifier];
              if (v16)
              {
                v17 = v16;
                v18 = [(_PSInteractionAndContactMonitor *)self contactIdsSeen];
                v19 = [v15 identifier];
                v20 = [v18 containsObject:v19];

                if ((v20 & 1) == 0)
                {
                  v21 = [v15 identifier];
                  [v30 addObject:v21];

                  v29 = 1;
                }
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v12);
        }

        v9 = v28 + 1;
        v8 = v26;
      }

      while (v28 + 1 != v27);
      v27 = [v26 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v27);

    os_unfair_lock_lock(&self->_lock);
    v7 = v30;
    v22 = [v30 copy];
    [(_PSInteractionAndContactMonitor *)self setContactIdsSeen:v22];

    os_unfair_lock_unlock(&self->_lock);
    if (v29)
    {
      notify_post([@"com.apple.PeopleSuggester.ReQuery" UTF8String]);
    }
  }

  else
  {

    os_unfair_lock_lock(&self->_lock);
    v23 = [v7 copy];
    [(_PSInteractionAndContactMonitor *)self setContactIdsSeen:v23];

    os_unfair_lock_unlock(&self->_lock);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (BOOL)contactIdIsInContactStore:(id)a3
{
  v4 = [a3 _ps_pointerSizedHash];
  os_unfair_lock_lock(&self->_lock);
  contactIdsInContactStore = self->_contactIdsInContactStore;
  if (contactIdsInContactStore)
  {
    v6 = CFSetContainsValue(contactIdsInContactStore, v4) != 0;
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

- (void)enumerateContactStoreWithBlock:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableOrderedSet *)self->_contactStoreEnumerationCache set];
  v6 = [v5 copy];

  os_unfair_lock_unlock(&self->_lock);
  v29 = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v4[2](v4, v12, &v29);
        LOBYTE(v12) = v29;
        objc_autoreleasePoolPop(v13);
        if (v12)
        {
          v19 = v7;
          goto LABEL_11;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = [(_PSInteractionAndContactMonitor *)self contactStore];
  v15 = objc_alloc(getCNContactFetchRequestClass());
  v16 = getCNContactIdentifierKey_1();
  v30 = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  v18 = [v15 initWithKeysToFetch:v17];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __66___PSInteractionAndContactMonitor_enumerateContactStoreWithBlock___block_invoke;
  v21[3] = &unk_1E7C25788;
  v22 = v7;
  v23 = self;
  v24 = v4;
  [v14 enumerateContactsWithFetchRequest:v18 error:0 usingBlock:v21];

  v19 = v22;
LABEL_11:

  v20 = *MEMORY[0x1E69E9840];
}

- (void)visitDropEverythingEvent:(id)a3
{
  v4 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B5ED1000, v4, OS_LOG_TYPE_INFO, "_PSInteractionAndContactMonitor: Received drop everything event, refetching contacts", v5, 2u);
  }

  [(_PSInteractionAndContactMonitor *)self fetchAllContactIdsFromContactStore];
}

- (void)visitAddContactEvent:(id)a3
{
  v4 = [a3 contact];
  v5 = [v4 identifier];

  [(NSMutableOrderedSet *)self->_historyChangesQueuedToAddToEnumerationCache _ps_appendObject:v5 truncatingToCount:32];
  CFSetAddValue(self->_historyChangesQueuedToAdd, [v5 _ps_pointerSizedHash]);
}

- (void)visitDeleteContactEvent:(id)a3
{
  v4 = [a3 contactIdentifier];
  [(NSMutableOrderedSet *)self->_historyChangesQueuedToAddToEnumerationCache removeObject:v4];
  CFSetAddValue(self->_historyChangesQueuedToDelete, [v4 _ps_pointerSizedHash]);
}

@end