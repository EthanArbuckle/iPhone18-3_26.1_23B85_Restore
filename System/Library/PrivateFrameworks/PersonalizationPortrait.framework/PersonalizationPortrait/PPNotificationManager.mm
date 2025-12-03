@interface PPNotificationManager
+ (BOOL)_changePotentiallyAffectsCache:(id)cache;
+ (id)addCalendarVisibilityObserverForLifetimeOfObject:(id)object block:(id)block;
+ (id)sharedInstance;
+ (void)addContactsObserverForLifetimeOfObject:(id)object block:(id)block;
+ (void)addEventKitObserverForLifetimeOfObject:(id)object block:(id)block;
+ (void)addMeCardObserverForLifetimeOfObject:(id)object block:(id)block;
+ (void)addPortraitChangeObserverForLifetimeOfObject:(id)object block:(id)block;
+ (void)addPortraitInvalidationObserverForLifetimeOfObject:(id)object block:(id)block;
+ (void)addSuggestionsObserverForLifetimeOfObject:(id)object block:(id)block;
- (PPNotificationManager)initWithQueueName:(const char *)name notificationCenter:(id)center;
- (id)addCalendarVisibilityChangeBlock:(id)block forLifetimeOfObject:(id)object;
- (void)_registerForEventKitChangeTrackingWithGuardedData:(id)data;
- (void)addContactsChangeBlock:(id)block forLifetimeOfObject:(id)object;
- (void)addEventKitChangeBlock:(id)block forLifetimeOfObject:(id)object;
- (void)addMeCardChangeBlock:(id)block forLifetimeOfObject:(id)object;
- (void)addPortraitChangeBlock:(id)block forLifetimeOfObject:(id)object;
- (void)addPortraitInvalidationBlock:(id)block forLifetimeOfObject:(id)object;
- (void)addSuggestionsChangeBlock:(id)block forLifetimeOfObject:(id)object;
- (void)dealloc;
- (void)fetchObjectChangesFromStore:(id)store usingBlock:(id)block;
- (void)setEKStore:(id)store;
- (void)simulatePortraitChange;
- (void)simulatePortraitInvalidation;
- (void)stopListening;
- (void)waitOnQueueToDrain;
@end

@implementation PPNotificationManager

- (void)addSuggestionsChangeBlock:(id)block forLifetimeOfObject:(id)object
{
  blockCopy = block;
  objectCopy = object;
  lockedData = self->_lockedData;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__PPNotificationManager_addSuggestionsChangeBlock_forLifetimeOfObject___block_invoke;
  v11[3] = &unk_1E77F7700;
  v12 = objectCopy;
  v13 = blockCopy;
  v11[4] = self;
  v9 = objectCopy;
  v10 = blockCopy;
  [(_PASLock *)lockedData runWithLockAcquired:v11];
}

void __71__PPNotificationManager_addSuggestionsChangeBlock_forLifetimeOfObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3[17])
  {
    v4 = [[PPNotificationHandler alloc] initWithName:@"suggestions" waitSeconds:10.0];
    v5 = v3[17];
    v3[17] = v4;
  }

  if (!v3[16])
  {
    v6 = [MEMORY[0x1E69992A0] serviceForContacts];
    v7 = v3[16];
    v3[16] = v6;
  }

  if (!v3[18])
  {
    v8 = pp_default_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1A7FD3000, v8, OS_LOG_TYPE_INFO, "PPNotificationManager registering for Found in Apps changes", buf, 2u);
    }

    objc_initWeak(buf, *(a1 + 32));
    v9 = v3[16];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __71__PPNotificationManager_addSuggestionsChangeBlock_forLifetimeOfObject___block_invoke_227;
    v18[3] = &unk_1E77F7878;
    objc_copyWeak(&v19, buf);
    v10 = [v9 registerContactsChangeObserver:v18];
    v11 = v3[18];
    v3[18] = v10;

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }

  v12 = [*(a1 + 48) copy];
  v13 = v3[17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __71__PPNotificationManager_addSuggestionsChangeBlock_forLifetimeOfObject___block_invoke_4;
  v16[3] = &unk_1E77F76D8;
  v17 = v12;
  v14 = *(a1 + 40);
  v15 = v12;
  [v13 addObserverBlock:v16 forLifetimeOfObject:v14];
}

void __71__PPNotificationManager_addSuggestionsChangeBlock_forLifetimeOfObject___block_invoke_227(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__PPNotificationManager_addSuggestionsChangeBlock_forLifetimeOfObject___block_invoke_2;
    block[3] = &unk_1E77F7970;
    objc_copyWeak(&v6, (a1 + 32));
    dispatch_async(v4, block);
    objc_destroyWeak(&v6);
  }
}

void __71__PPNotificationManager_addSuggestionsChangeBlock_forLifetimeOfObject___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[1] runWithLockAcquired:&__block_literal_global_229];
    WeakRetained = v2;
  }
}

- (id)addCalendarVisibilityChangeBlock:(id)block forLifetimeOfObject:(id)object
{
  blockCopy = block;
  objectCopy = object;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__6340;
  v21 = __Block_byref_object_dispose__6341;
  v22 = 0;
  lockedData = self->_lockedData;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__PPNotificationManager_addCalendarVisibilityChangeBlock_forLifetimeOfObject___block_invoke;
  v13[3] = &unk_1E77F7850;
  v13[4] = self;
  v16 = &v17;
  v9 = blockCopy;
  v15 = v9;
  v10 = objectCopy;
  v14 = v10;
  [(_PASLock *)lockedData runWithLockAcquired:v13];
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __78__PPNotificationManager_addCalendarVisibilityChangeBlock_forLifetimeOfObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3[14])
  {
    v4 = [[PPNotificationHandler alloc] initWithName:@"calendars" waitSeconds:10.0];
    v5 = v3[14];
    v3[14] = v4;
  }

  if (!v3[13])
  {
    v6 = PPNewEKEventStore();
    v7 = v3[13];
    v3[13] = v6;
  }

  objc_initWeak(&location, *(a1 + 32));
  v8 = v3[15];
  if (!v8)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v9 = getEKCalendarVisibilityManagerClass_softClass;
    v28 = getEKCalendarVisibilityManagerClass_softClass;
    if (!getEKCalendarVisibilityManagerClass_softClass)
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __getEKCalendarVisibilityManagerClass_block_invoke;
      v24[3] = &unk_1E77F78F0;
      v24[4] = &v25;
      __getEKCalendarVisibilityManagerClass_block_invoke(v24);
      v9 = v26[3];
    }

    v10 = v9;
    _Block_object_dispose(&v25, 8);
    v11 = [v9 alloc];
    v12 = v3[13];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __78__PPNotificationManager_addCalendarVisibilityChangeBlock_forLifetimeOfObject___block_invoke_2;
    v21[3] = &unk_1E77F7970;
    objc_copyWeak(&v22, &location);
    v13 = [v11 initWithEventStore:v12 visibilityChangedCallback:v21 queue:*(*(a1 + 32) + 16)];
    v14 = v3[15];
    v3[15] = v13;

    objc_destroyWeak(&v22);
    v8 = v3[15];
  }

  v15 = [v8 invisibleCalendars];
  v16 = [v15 _pas_mappedArrayWithTransform:&__block_literal_global_223];
  v17 = *(*(a1 + 56) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  v19 = v3[14];
  v20 = [*(a1 + 48) copy];
  [v19 addObserverBlock:v20 forLifetimeOfObject:*(a1 + 40)];

  objc_destroyWeak(&location);
}

void __78__PPNotificationManager_addCalendarVisibilityChangeBlock_forLifetimeOfObject___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__PPNotificationManager_addCalendarVisibilityChangeBlock_forLifetimeOfObject___block_invoke_3;
    block[3] = &unk_1E77F7CC8;
    v5 = WeakRetained;
    dispatch_async(v3, block);
  }
}

id __78__PPNotificationManager_addCalendarVisibilityChangeBlock_forLifetimeOfObject___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 calendarIdentifier];
  v3 = [v2 copy];

  return v3;
}

void __78__PPNotificationManager_addCalendarVisibilityChangeBlock_forLifetimeOfObject___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 112);
  v4 = [*(a2 + 120) invisibleCalendars];
  v3 = [v4 _pas_mappedArrayWithTransform:&__block_literal_global_221];
  [v2 fireWithObjects:v3];
}

id __78__PPNotificationManager_addCalendarVisibilityChangeBlock_forLifetimeOfObject___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 calendarIdentifier];
  v3 = [v2 copy];

  return v3;
}

- (void)_registerForEventKitChangeTrackingWithGuardedData:(id)data
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(data + 13);
  v8 = 0;
  v4 = [v3 registerForDetailedChangeTracking:&v8];
  v5 = v8;
  if (v4 == -1)
  {
    v6 = pp_default_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_error_impl(&dword_1A7FD3000, v6, OS_LOG_TYPE_ERROR, "PPNotificationManager failed to register for detailed EK change tracking: %@", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)addEventKitChangeBlock:(id)block forLifetimeOfObject:(id)object
{
  blockCopy = block;
  objectCopy = object;
  lockedData = self->_lockedData;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__PPNotificationManager_addEventKitChangeBlock_forLifetimeOfObject___block_invoke;
  v11[3] = &unk_1E77F7700;
  v12 = objectCopy;
  v13 = blockCopy;
  v11[4] = self;
  v9 = objectCopy;
  v10 = blockCopy;
  [(_PASLock *)lockedData runWithLockAcquired:v11];
}

void __68__PPNotificationManager_addEventKitChangeBlock_forLifetimeOfObject___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!*(v3 + 11))
  {
    v4 = [[PPNotificationHandler alloc] initWithName:@"events" waitSeconds:0.0];
    v5 = *(v3 + 11);
    *(v3 + 11) = v4;
  }

  if (!*(v3 + 13))
  {
    v6 = PPNewEKEventStore();
    v7 = *(v3 + 13);
    *(v3 + 13) = v6;
  }

  objc_initWeak(&location, *(a1 + 32));
  if (!*(v3 + 12))
  {
    [*(a1 + 32) _registerForEventKitChangeTrackingWithGuardedData:v3];
    [*(v3 + 13) reset];
    v8 = pp_default_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(v3 + 13);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_1A7FD3000, v8, OS_LOG_TYPE_INFO, "PPNotificationManager registering for event changes from %@", &buf, 0xCu);
    }

    v10 = *(*(a1 + 32) + 24);
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v11 = getEKEventStoreChangedNotificationSymbolLoc_ptr;
    v29 = getEKEventStoreChangedNotificationSymbolLoc_ptr;
    if (!getEKEventStoreChangedNotificationSymbolLoc_ptr)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v31 = __getEKEventStoreChangedNotificationSymbolLoc_block_invoke;
      v32 = &unk_1E77F78F0;
      v33 = &v26;
      v12 = EventKitLibrary();
      v13 = dlsym(v12, "EKEventStoreChangedNotification");
      *(v33[1] + 24) = v13;
      getEKEventStoreChangedNotificationSymbolLoc_ptr = *(v33[1] + 24);
      v11 = v27[3];
    }

    _Block_object_dispose(&v26, 8);
    if (!v11)
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getEKEventStoreChangedNotification(void)"];
      [v21 handleFailureInFunction:v22 file:@"PPNotificationManager.m" lineNumber:38 description:{@"%s", dlerror()}];

      __break(1u);
    }

    v14 = *v11;
    v15 = *(v3 + 13);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __68__PPNotificationManager_addEventKitChangeBlock_forLifetimeOfObject___block_invoke_187;
    v23[3] = &unk_1E77F76B0;
    objc_copyWeak(&v24, &location);
    v16 = [v10 addObserverForName:v14 object:v15 queue:0 usingBlock:v23];
    v17 = *(v3 + 12);
    *(v3 + 12) = v16;

    objc_destroyWeak(&v24);
  }

  v18 = *(v3 + 11);
  v19 = [*(a1 + 48) copy];
  [v18 addObserverBlock:v19 forLifetimeOfObject:*(a1 + 40)];

  objc_destroyWeak(&location);
  v20 = *MEMORY[0x1E69E9840];
}

void __68__PPNotificationManager_addEventKitChangeBlock_forLifetimeOfObject___block_invoke_187(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained[2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__PPNotificationManager_addEventKitChangeBlock_forLifetimeOfObject___block_invoke_2;
    block[3] = &unk_1E77F7808;
    objc_copyWeak(&v11, (a1 + 32));
    v9 = v4;
    v10 = v3;
    dispatch_async(v7, block);

    objc_destroyWeak(&v11);
  }
}

void __68__PPNotificationManager_addEventKitChangeBlock_forLifetimeOfObject___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (!WeakRetained)
  {
LABEL_19:

    return;
  }

  v3 = a1[4];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v4 = getEKEventStoreCalendarDataChangedUserInfoKeySymbolLoc_ptr;
  v32 = getEKEventStoreCalendarDataChangedUserInfoKeySymbolLoc_ptr;
  if (!getEKEventStoreCalendarDataChangedUserInfoKeySymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    v36 = 3221225472;
    v37 = __getEKEventStoreCalendarDataChangedUserInfoKeySymbolLoc_block_invoke;
    v38 = &unk_1E77F78F0;
    v39 = &v29;
    v5 = EventKitLibrary();
    v6 = dlsym(v5, "EKEventStoreCalendarDataChangedUserInfoKey");
    *(*(v39 + 1) + 24) = v6;
    getEKEventStoreCalendarDataChangedUserInfoKeySymbolLoc_ptr = *(*(v39 + 1) + 24);
    v4 = v30[3];
  }

  _Block_object_dispose(&v29, 8);
  if (v4)
  {
    v7 = *v4;
    if (v7 && ([a1[5] userInfo], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectForKeyedSubscript:", v7), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "BOOLValue"), v9, v8, (v10 & 1) == 0))
    {
      v14 = pp_default_log_handle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7FD3000, v14, OS_LOG_TYPE_INFO, "PPNotificationManager ignoring non-Calendar EK change", buf, 2u);
      }
    }

    else
    {
      *buf = 0;
      v36 = buf;
      v37 = 0x3032000000;
      v38 = __Block_byref_object_copy__6340;
      v39 = __Block_byref_object_dispose__6341;
      v40 = 0;
      v29 = 0;
      v30 = &v29;
      v31 = 0x3032000000;
      v32 = __Block_byref_object_copy__6340;
      v33 = __Block_byref_object_dispose__6341;
      v34 = 0;
      v25 = 0;
      v26 = &v25;
      v27 = 0x2020000000;
      v28 = 0;
      v11 = WeakRetained[1];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __68__PPNotificationManager_addEventKitChangeBlock_forLifetimeOfObject___block_invoke_189;
      v19[3] = &unk_1E77F77C0;
      v21 = buf;
      objc_copyWeak(&v24, a1 + 6);
      v22 = &v25;
      v23 = &v29;
      v20 = WeakRetained;
      [v11 runWithLockAcquired:v19];
      if (*(v26 + 24) == 1)
      {
        [*(v36 + 40) fireWithObjects:MEMORY[0x1E695E0F0]];
      }

      else
      {
        v12 = [v30[5] _pas_filteredArrayWithTest:&__block_literal_global_213];
        v13 = v30[5];
        v30[5] = v12;

        if ([v30[5] count])
        {
          [*(v36 + 40) fireWithObjects:v30[5]];
        }

        else
        {
          v15 = pp_default_log_handle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *v18 = 0;
            _os_log_impl(&dword_1A7FD3000, v15, OS_LOG_TYPE_DEFAULT, "PPNotificationManager: received empty arrays from EK change tracking", v18, 2u);
          }
        }
      }

      objc_destroyWeak(&v24);
      _Block_object_dispose(&v25, 8);
      _Block_object_dispose(&v29, 8);

      _Block_object_dispose(buf, 8);
    }

    goto LABEL_19;
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getEKEventStoreCalendarDataChangedUserInfoKey(void)"];
  [v16 handleFailureInFunction:v17 file:@"PPNotificationManager.m" lineNumber:39 description:{@"%s", dlerror()}];

  __break(1u);
}

void __68__PPNotificationManager_addEventKitChangeBlock_forLifetimeOfObject___block_invoke_189(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3[11]);
  if (v3[13])
  {
    *&v18 = 0;
    *(&v18 + 1) = &v18;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__6340;
    v21 = __Block_byref_object_dispose__6341;
    v22 = 0;
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v5 = v3[13];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __68__PPNotificationManager_addEventKitChangeBlock_forLifetimeOfObject___block_invoke_190;
    v15[3] = &unk_1E77F7778;
    v6 = *(a1 + 56);
    v15[4] = *(a1 + 48);
    v15[5] = &v18;
    v15[6] = v6;
    v7 = MEMORY[0x1AC568040](v15);
    [WeakRetained fetchObjectChangesFromStore:v5 usingBlock:v7];

    LODWORD(v5) = *(*(*(a1 + 48) + 8) + 24);
    v8 = pp_default_log_handle();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v5 == 1)
    {
      if (v9)
      {
        *buf = 0;
        _os_log_impl(&dword_1A7FD3000, v8, OS_LOG_TYPE_DEFAULT, "PPNotificationManager: EK changes truncated.", buf, 2u);
      }

      [*(a1 + 32) _registerForEventKitChangeTrackingWithGuardedData:v3];
    }

    else
    {
      if (v9)
      {
        v11 = *(*(*(a1 + 56) + 8) + 40);
        v12 = objc_opt_new();
        v13 = [v11 _pas_leftFoldWithInitialObject:v12 accumulate:&__block_literal_global_196];

        *buf = 138543362;
        v17 = v13;
        _os_log_impl(&dword_1A7FD3000, v8, OS_LOG_TYPE_DEFAULT, "PPNotificationManager received EK changes: %{public}@", buf, 0xCu);
      }

      [v3[13] consumeAllChangesUpToToken:*(*(&v18 + 1) + 40)];
    }

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v10 = pp_default_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v18) = 138412290;
      *(&v18 + 4) = v3;
      _os_log_fault_impl(&dword_1A7FD3000, v10, OS_LOG_TYPE_FAULT, "PPNotificationManager: EK store is nil when handling EK change: %@", &v18, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __68__PPNotificationManager_addEventKitChangeBlock_forLifetimeOfObject___block_invoke_190(void *a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  *(*(a1[4] + 8) + 24) = a2;
  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v13 = v7;

  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
}

id __68__PPNotificationManager_addEventKitChangeBlock_forLifetimeOfObject___block_invoke_193(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 changeType];
  if (v6 >= 3)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"EKChangeType[%u]", objc_msgSend(v5, "changeType")];
  }

  else
  {
    v7 = off_1E77F7928[v6];
  }

  v8 = MEMORY[0x1E696AD98];
  v9 = [v4 objectForKeyedSubscript:v7];
  v10 = v9;
  if (!v9)
  {
    v9 = &unk_1F1B46150;
  }

  v11 = [v8 numberWithUnsignedInteger:{objc_msgSend(v9, "unsignedIntegerValue") + 1}];
  [v4 setObject:v11 forKeyedSubscript:v7];

  return v4;
}

- (void)fetchObjectChangesFromStore:(id)store usingBlock:(id)block
{
  storeCopy = store;
  blockCopy = block;
  v7 = dispatch_semaphore_create(0);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v8 = getEKObjectChangeClass_softClass;
  v21 = getEKObjectChangeClass_softClass;
  if (!getEKObjectChangeClass_softClass)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __getEKObjectChangeClass_block_invoke;
    v17[3] = &unk_1E77F78F0;
    v17[4] = &v18;
    __getEKObjectChangeClass_block_invoke(v17);
    v8 = v19[3];
  }

  v9 = v8;
  _Block_object_dispose(&v18, 8);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__PPNotificationManager_fetchObjectChangesFromStore_usingBlock___block_invoke;
  v14[3] = &unk_1E77F7750;
  v10 = blockCopy;
  v16 = v10;
  v11 = v7;
  v15 = v11;
  [v8 objectChangesInStore:storeCopy resultHandler:v14];
  if (dispatch_semaphore_wait(v11, 0))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PPNotificationManager fetchObjectChangesFromStore:usingBlock:]"];
    [currentHandler handleFailureInFunction:v13 file:@"PPNotificationManager.m" lineNumber:548 description:@"+[EKObjectChange objectChangesInStore:resultHandler:] is expected to be synchronous"];
  }
}

intptr_t __64__PPNotificationManager_fetchObjectChangesFromStore_usingBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

- (void)addPortraitInvalidationBlock:(id)block forLifetimeOfObject:(id)object
{
  blockCopy = block;
  objectCopy = object;
  lockedData = self->_lockedData;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__PPNotificationManager_addPortraitInvalidationBlock_forLifetimeOfObject___block_invoke;
  v11[3] = &unk_1E77F7700;
  v12 = objectCopy;
  v13 = blockCopy;
  v11[4] = self;
  v9 = objectCopy;
  v10 = blockCopy;
  [(_PASLock *)lockedData runWithLockAcquired:v11];
}

void __74__PPNotificationManager_addPortraitInvalidationBlock_forLifetimeOfObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(v3 + 9))
  {
    v4 = [[PPNotificationHandler alloc] initWithName:@"portraitInvalidation" waitSeconds:10.0];
    v5 = *(v3 + 9);
    *(v3 + 9) = v4;
  }

  if (!*(v3 + 20))
  {
    v6 = pp_default_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1A7FD3000, v6, OS_LOG_TYPE_INFO, "PPNotificationManager registering for Portrait invalidations", buf, 2u);
    }

    objc_initWeak(buf, *(a1 + 32));
    v7 = *(*(a1 + 32) + 16);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __74__PPNotificationManager_addPortraitInvalidationBlock_forLifetimeOfObject___block_invoke_176;
    handler[3] = &unk_1E77F7728;
    objc_copyWeak(&v17, buf);
    if (notify_register_dispatch("com.apple.proactive.PersonalizationPortrait.namedEntitiesInvalidated", v3 + 20, v7, handler))
    {
      v8 = pp_default_log_handle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_1A7FD3000, v8, OS_LOG_TYPE_DEFAULT, "PP failed to register for Portrait entity invalidation notifications", v15, 2u);
      }
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  v9 = [*(a1 + 48) copy];
  v10 = *(v3 + 9);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__PPNotificationManager_addPortraitInvalidationBlock_forLifetimeOfObject___block_invoke_179;
  v13[3] = &unk_1E77F76D8;
  v14 = v9;
  v11 = *(a1 + 40);
  v12 = v9;
  [v10 addObserverBlock:v13 forLifetimeOfObject:v11];
}

void __74__PPNotificationManager_addPortraitInvalidationBlock_forLifetimeOfObject___block_invoke_176(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[1] runWithLockAcquired:&__block_literal_global_178];
    WeakRetained = v2;
  }
}

- (void)addPortraitChangeBlock:(id)block forLifetimeOfObject:(id)object
{
  blockCopy = block;
  objectCopy = object;
  lockedData = self->_lockedData;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__PPNotificationManager_addPortraitChangeBlock_forLifetimeOfObject___block_invoke;
  v11[3] = &unk_1E77F7700;
  v12 = objectCopy;
  v13 = blockCopy;
  v11[4] = self;
  v9 = objectCopy;
  v10 = blockCopy;
  [(_PASLock *)lockedData runWithLockAcquired:v11];
}

void __68__PPNotificationManager_addPortraitChangeBlock_forLifetimeOfObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(v3 + 7))
  {
    v4 = [[PPNotificationHandler alloc] initWithName:@"portraitChange" waitSeconds:3.0];
    v5 = *(v3 + 7);
    *(v3 + 7) = v4;
  }

  if (!*(v3 + 16))
  {
    v6 = pp_default_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1A7FD3000, v6, OS_LOG_TYPE_INFO, "PPNotificationManager registering for Portrait changes", buf, 2u);
    }

    objc_initWeak(buf, *(a1 + 32));
    v7 = *(*(a1 + 32) + 16);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __68__PPNotificationManager_addPortraitChangeBlock_forLifetimeOfObject___block_invoke_167;
    handler[3] = &unk_1E77F7728;
    objc_copyWeak(&v17, buf);
    if (notify_register_dispatch("com.apple.proactive.PersonalizationPortrait.namedEntitiesDidChangeMeaningfully", v3 + 16, v7, handler))
    {
      v8 = pp_default_log_handle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_1A7FD3000, v8, OS_LOG_TYPE_DEFAULT, "PP failed to register for Portrait entity change notifications", v15, 2u);
      }
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  v9 = [*(a1 + 48) copy];
  v10 = *(v3 + 7);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__PPNotificationManager_addPortraitChangeBlock_forLifetimeOfObject___block_invoke_171;
  v13[3] = &unk_1E77F76D8;
  v14 = v9;
  v11 = *(a1 + 40);
  v12 = v9;
  [v10 addObserverBlock:v13 forLifetimeOfObject:v11];
}

void __68__PPNotificationManager_addPortraitChangeBlock_forLifetimeOfObject___block_invoke_167(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[1] runWithLockAcquired:&__block_literal_global_169];
    WeakRetained = v2;
  }
}

- (void)addMeCardChangeBlock:(id)block forLifetimeOfObject:(id)object
{
  blockCopy = block;
  objectCopy = object;
  lockedData = self->_lockedData;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__PPNotificationManager_addMeCardChangeBlock_forLifetimeOfObject___block_invoke;
  v11[3] = &unk_1E77F7700;
  v12 = objectCopy;
  v13 = blockCopy;
  v11[4] = self;
  v9 = objectCopy;
  v10 = blockCopy;
  [(_PASLock *)lockedData runWithLockAcquired:v11];
}

void __66__PPNotificationManager_addMeCardChangeBlock_forLifetimeOfObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3[4])
  {
    v4 = [[PPNotificationHandler alloc] initWithName:@"meCard" waitSeconds:10.0];
    v5 = v3[4];
    v3[4] = v4;
  }

  if (!v3[3])
  {
    v6 = PPSharedCNContactStore();
    v7 = v3[3];
    v3[3] = v6;
  }

  objc_initWeak(&location, *(a1 + 32));
  if (!v3[5])
  {
    v8 = pp_default_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7FD3000, v8, OS_LOG_TYPE_INFO, "PPNotificationManager registering for Me card changes", buf, 2u);
    }

    v9 = *(*(a1 + 32) + 24);
    v10 = *MEMORY[0x1E695C3E0];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __66__PPNotificationManager_addMeCardChangeBlock_forLifetimeOfObject___block_invoke_154;
    v25[3] = &unk_1E77F76B0;
    objc_copyWeak(&v26, &location);
    v11 = [v9 addObserverForName:v10 object:0 queue:0 usingBlock:v25];
    v12 = v3[5];
    v3[5] = v11;

    objc_destroyWeak(&v26);
  }

  if (!v3[6])
  {
    v13 = pp_default_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7FD3000, v13, OS_LOG_TYPE_INFO, "PPNotificationManager registering for Me card donations", buf, 2u);
    }

    v14 = [MEMORY[0x1E696ABB0] defaultCenter];
    v15 = *MEMORY[0x1E6996440];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __66__PPNotificationManager_addMeCardChangeBlock_forLifetimeOfObject___block_invoke_158;
    v23[3] = &unk_1E77F76B0;
    objc_copyWeak(&v24, &location);
    v16 = [v14 addObserverForName:v15 object:0 queue:0 usingBlock:v23];
    v17 = v3[6];
    v3[6] = v16;

    objc_destroyWeak(&v24);
  }

  v18 = [*(a1 + 48) copy];
  v19 = v3[4];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __66__PPNotificationManager_addMeCardChangeBlock_forLifetimeOfObject___block_invoke_4;
  v21[3] = &unk_1E77F76D8;
  v20 = v18;
  v22 = v20;
  [v19 addObserverBlock:v21 forLifetimeOfObject:*(a1 + 40)];

  objc_destroyWeak(&location);
}

void __66__PPNotificationManager_addMeCardChangeBlock_forLifetimeOfObject___block_invoke_154(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__PPNotificationManager_addMeCardChangeBlock_forLifetimeOfObject___block_invoke_2;
    block[3] = &unk_1E77F7970;
    objc_copyWeak(&v6, (a1 + 32));
    dispatch_async(v4, block);
    objc_destroyWeak(&v6);
  }
}

void __66__PPNotificationManager_addMeCardChangeBlock_forLifetimeOfObject___block_invoke_158(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__PPNotificationManager_addMeCardChangeBlock_forLifetimeOfObject___block_invoke_2_159;
    block[3] = &unk_1E77F7970;
    objc_copyWeak(&v6, (a1 + 32));
    dispatch_async(v4, block);
    objc_destroyWeak(&v6);
  }
}

void __66__PPNotificationManager_addMeCardChangeBlock_forLifetimeOfObject___block_invoke_2_159(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[1] runWithLockAcquired:&__block_literal_global_162];
    WeakRetained = v2;
  }
}

void __66__PPNotificationManager_addMeCardChangeBlock_forLifetimeOfObject___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[1] runWithLockAcquired:&__block_literal_global_156];
    WeakRetained = v2;
  }
}

- (void)addContactsChangeBlock:(id)block forLifetimeOfObject:(id)object
{
  blockCopy = block;
  objectCopy = object;
  lockedData = self->_lockedData;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__PPNotificationManager_addContactsChangeBlock_forLifetimeOfObject___block_invoke;
  v11[3] = &unk_1E77F7700;
  v12 = objectCopy;
  v13 = blockCopy;
  v11[4] = self;
  v9 = objectCopy;
  v10 = blockCopy;
  [(_PASLock *)lockedData runWithLockAcquired:v11];
}

void __68__PPNotificationManager_addContactsChangeBlock_forLifetimeOfObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3[3])
  {
    v4 = PPSharedCNContactStore();
    v5 = v3[3];
    v3[3] = v4;
  }

  if (!v3[1])
  {
    v6 = [[PPNotificationHandler alloc] initWithName:@"contacts" waitSeconds:10.0];
    v7 = v3[1];
    v3[1] = v6;
  }

  if (!v3[2])
  {
    v8 = pp_default_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1A7FD3000, v8, OS_LOG_TYPE_INFO, "PPNotificationManager registering for contacts changes", buf, 2u);
    }

    objc_initWeak(buf, *(a1 + 32));
    v9 = *(*(a1 + 32) + 24);
    v10 = *MEMORY[0x1E695C3D8];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __68__PPNotificationManager_addContactsChangeBlock_forLifetimeOfObject___block_invoke_146;
    v19[3] = &unk_1E77F76B0;
    objc_copyWeak(&v20, buf);
    v11 = [v9 addObserverForName:v10 object:0 queue:0 usingBlock:v19];
    v12 = v3[2];
    v3[2] = v11;

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  v13 = [*(a1 + 48) copy];
  v14 = v3[1];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __68__PPNotificationManager_addContactsChangeBlock_forLifetimeOfObject___block_invoke_4;
  v17[3] = &unk_1E77F76D8;
  v18 = v13;
  v15 = *(a1 + 40);
  v16 = v13;
  [v14 addObserverBlock:v17 forLifetimeOfObject:v15];
}

void __68__PPNotificationManager_addContactsChangeBlock_forLifetimeOfObject___block_invoke_146(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__PPNotificationManager_addContactsChangeBlock_forLifetimeOfObject___block_invoke_2;
    block[3] = &unk_1E77F7970;
    objc_copyWeak(&v6, (a1 + 32));
    dispatch_async(v4, block);
    objc_destroyWeak(&v6);
  }
}

void __68__PPNotificationManager_addContactsChangeBlock_forLifetimeOfObject___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[1] runWithLockAcquired:&__block_literal_global_148];
    WeakRetained = v2;
  }
}

- (void)stopListening
{
  lockedData = self->_lockedData;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__PPNotificationManager_stopListening__block_invoke;
  v3[3] = &unk_1E77F7668;
  v3[4] = self;
  [(_PASLock *)lockedData runWithLockAcquired:v3];
}

void __38__PPNotificationManager_stopListening__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pp_default_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_1A7FD3000, v4, OS_LOG_TYPE_INFO, "PPNotificationManager stopping listening", v12, 2u);
  }

  if (*(v3 + 2))
  {
    [*(*(a1 + 32) + 24) removeObserver:?];
    v5 = *(v3 + 2);
    *(v3 + 2) = 0;
  }

  if (*(v3 + 5))
  {
    [*(*(a1 + 32) + 24) removeObserver:?];
    v6 = *(v3 + 5);
    *(v3 + 5) = 0;
  }

  if (*(v3 + 6))
  {
    [*(*(a1 + 32) + 24) removeObserver:?];
    v7 = *(v3 + 6);
    *(v3 + 6) = 0;
  }

  if (*(v3 + 12))
  {
    [*(*(a1 + 32) + 24) removeObserver:?];
    v8 = *(v3 + 12);
    *(v3 + 12) = 0;
  }

  if (*(v3 + 18))
  {
    [*(v3 + 16) deregisterContactsChangeObserverWithToken:?];
    v9 = *(v3 + 18);
    *(v3 + 18) = 0;
  }

  v10 = *(v3 + 16);
  if (v10)
  {
    notify_cancel(v10);
    *(v3 + 16) = 0;
  }

  v11 = *(v3 + 20);
  if (v11)
  {
    notify_cancel(v11);
    *(v3 + 20) = 0;
  }
}

- (void)dealloc
{
  [(PPNotificationManager *)self stopListening];
  v3.receiver = self;
  v3.super_class = PPNotificationManager;
  [(PPNotificationManager *)&v3 dealloc];
}

- (PPNotificationManager)initWithQueueName:(const char *)name notificationCenter:(id)center
{
  centerCopy = center;
  v16.receiver = self;
  v16.super_class = PPNotificationManager;
  v8 = [(PPNotificationManager *)&v16 init];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E69C5D60]);
    v10 = objc_opt_new();
    v11 = [v9 initWithGuardedData:v10];
    lockedData = v8->_lockedData;
    v8->_lockedData = v11;

    v13 = [MEMORY[0x1E69C5D10] autoreleasingSerialQueueWithLabel:name qosClass:9];
    serialQueue = v8->_serialQueue;
    v8->_serialQueue = v13;

    objc_storeStrong(&v8->_notificationCenter, center);
  }

  return v8;
}

- (void)setEKStore:(id)store
{
  storeCopy = store;
  lockedData = self->_lockedData;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__PPNotificationManager_setEKStore___block_invoke;
  v8[3] = &unk_1E77F7640;
  v9 = storeCopy;
  v10 = a2;
  v8[4] = self;
  v7 = storeCopy;
  [(_PASLock *)lockedData runWithLockAcquired:v8];
}

void __36__PPNotificationManager_setEKStore___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = v5 + 13;
  if (v5[13])
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"PPNotificationManager.m" lineNumber:270 description:{@"EKStore already exists: %@", *v3}];
  }

  objc_storeStrong(v3, *(a1 + 40));
}

+ (void)addSuggestionsObserverForLifetimeOfObject:(id)object block:(id)block
{
  blockCopy = block;
  objectCopy = object;
  sharedInstance = [objc_opt_class() sharedInstance];
  [sharedInstance addSuggestionsChangeBlock:blockCopy forLifetimeOfObject:objectCopy];
}

+ (id)addCalendarVisibilityObserverForLifetimeOfObject:(id)object block:(id)block
{
  blockCopy = block;
  objectCopy = object;
  sharedInstance = [objc_opt_class() sharedInstance];
  v8 = [sharedInstance addCalendarVisibilityChangeBlock:blockCopy forLifetimeOfObject:objectCopy];

  return v8;
}

+ (void)addEventKitObserverForLifetimeOfObject:(id)object block:(id)block
{
  blockCopy = block;
  objectCopy = object;
  sharedInstance = [objc_opt_class() sharedInstance];
  [sharedInstance addEventKitChangeBlock:blockCopy forLifetimeOfObject:objectCopy];
}

+ (BOOL)_changePotentiallyAffectsCache:(id)cache
{
  cacheCopy = cache;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v4 = getEKCalendarItemChangeClass_softClass;
  v26 = getEKCalendarItemChangeClass_softClass;
  if (!getEKCalendarItemChangeClass_softClass)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __getEKCalendarItemChangeClass_block_invoke;
    v21 = &unk_1E77F78F0;
    v22 = &v23;
    __getEKCalendarItemChangeClass_block_invoke(&v18);
    v4 = v24[3];
  }

  v5 = v4;
  _Block_object_dispose(&v23, 8);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_16;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v6 = getEKExceptionDateChangeClass_softClass;
  v26 = getEKExceptionDateChangeClass_softClass;
  if (!getEKExceptionDateChangeClass_softClass)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __getEKExceptionDateChangeClass_block_invoke;
    v21 = &unk_1E77F78F0;
    v22 = &v23;
    __getEKExceptionDateChangeClass_block_invoke(&v18);
    v6 = v24[3];
  }

  v7 = v6;
  _Block_object_dispose(&v23, 8);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_16;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v8 = getEKRecurrenceChangeClass_softClass;
  v26 = getEKRecurrenceChangeClass_softClass;
  if (!getEKRecurrenceChangeClass_softClass)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __getEKRecurrenceChangeClass_block_invoke;
    v21 = &unk_1E77F78F0;
    v22 = &v23;
    __getEKRecurrenceChangeClass_block_invoke(&v18);
    v8 = v24[3];
  }

  v9 = v8;
  _Block_object_dispose(&v23, 8);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_16;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v10 = getEKEventChangeClass_softClass;
  v26 = getEKEventChangeClass_softClass;
  if (!getEKEventChangeClass_softClass)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __getEKEventChangeClass_block_invoke;
    v21 = &unk_1E77F78F0;
    v22 = &v23;
    __getEKEventChangeClass_block_invoke(&v18);
    v10 = v24[3];
  }

  v11 = v10;
  _Block_object_dispose(&v23, 8);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_16;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v12 = getEKAttendeeChangeClass_softClass;
  v26 = getEKAttendeeChangeClass_softClass;
  if (!getEKAttendeeChangeClass_softClass)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __getEKAttendeeChangeClass_block_invoke;
    v21 = &unk_1E77F78F0;
    v22 = &v23;
    __getEKAttendeeChangeClass_block_invoke(&v18);
    v12 = v24[3];
  }

  v13 = v12;
  _Block_object_dispose(&v23, 8);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_16:
    isKindOfClass = 1;
  }

  else
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v16 = getEKOrganizerChangeClass_softClass;
    v26 = getEKOrganizerChangeClass_softClass;
    if (!getEKOrganizerChangeClass_softClass)
    {
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __getEKOrganizerChangeClass_block_invoke;
      v21 = &unk_1E77F78F0;
      v22 = &v23;
      __getEKOrganizerChangeClass_block_invoke(&v18);
      v16 = v24[3];
    }

    v17 = v16;
    _Block_object_dispose(&v23, 8);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

+ (void)addPortraitInvalidationObserverForLifetimeOfObject:(id)object block:(id)block
{
  blockCopy = block;
  objectCopy = object;
  sharedInstance = [objc_opt_class() sharedInstance];
  [sharedInstance addPortraitInvalidationBlock:blockCopy forLifetimeOfObject:objectCopy];
}

+ (void)addPortraitChangeObserverForLifetimeOfObject:(id)object block:(id)block
{
  blockCopy = block;
  objectCopy = object;
  sharedInstance = [objc_opt_class() sharedInstance];
  [sharedInstance addPortraitChangeBlock:blockCopy forLifetimeOfObject:objectCopy];
}

+ (void)addMeCardObserverForLifetimeOfObject:(id)object block:(id)block
{
  blockCopy = block;
  objectCopy = object;
  sharedInstance = [objc_opt_class() sharedInstance];
  [sharedInstance addMeCardChangeBlock:blockCopy forLifetimeOfObject:objectCopy];
}

+ (void)addContactsObserverForLifetimeOfObject:(id)object block:(id)block
{
  blockCopy = block;
  objectCopy = object;
  sharedInstance = [objc_opt_class() sharedInstance];
  [sharedInstance addContactsChangeBlock:blockCopy forLifetimeOfObject:objectCopy];
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken12_6429 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken12_6429, &__block_literal_global_6430);
  }

  v3 = sharedInstance__pasExprOnceResult_6431;

  return v3;
}

void __39__PPNotificationManager_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [PPNotificationManager alloc];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = [(PPNotificationManager *)v1 initWithQueueName:"com.apple.proactive.PersonalizationPortrait.PPNotificationManager.serialQueue" notificationCenter:v2];
  v4 = sharedInstance__pasExprOnceResult_6431;
  sharedInstance__pasExprOnceResult_6431 = v3;

  objc_autoreleasePoolPop(v0);
}

- (void)simulatePortraitInvalidation
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6340;
  v9 = __Block_byref_object_dispose__6341;
  v10 = 0;
  lockedData = self->_lockedData;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__PPNotificationManager_TestHelpers__simulatePortraitInvalidation__block_invoke;
  v4[3] = &unk_1E77F78C8;
  v4[4] = &v5;
  [(_PASLock *)lockedData runWithLockAcquired:v4];
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  [v3 fireWithObjects:0];
}

- (void)simulatePortraitChange
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6340;
  v9 = __Block_byref_object_dispose__6341;
  v10 = 0;
  lockedData = self->_lockedData;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__PPNotificationManager_TestHelpers__simulatePortraitChange__block_invoke;
  v4[3] = &unk_1E77F78C8;
  v4[4] = &v5;
  [(_PASLock *)lockedData runWithLockAcquired:v4];
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  [v3 fireWithObjects:0];
}

- (void)waitOnQueueToDrain
{
  v3 = dispatch_semaphore_create(0);
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PPNotificationManager_TestHelpers__waitOnQueueToDrain__block_invoke;
  block[3] = &unk_1E77F7CC8;
  v7 = v3;
  v5 = v3;
  dispatch_async(serialQueue, block);
  [(_PASLock *)self->_lockedData runWithLockAcquired:&__block_literal_global_277];
  [MEMORY[0x1E69C5D10] waitForSemaphore:v5 timeoutSeconds:&__block_literal_global_279 onAcquire:&__block_literal_global_281 onTimeout:5.0];
}

void __56__PPNotificationManager_TestHelpers__waitOnQueueToDrain__block_invoke_4()
{
  v0 = [MEMORY[0x1E695DF30] exceptionWithName:@"PPNotificationManagerWaitOnQueueToDrainTimeout" reason:@"PPNotificationManager waitOnQueueToDrain timeout" userInfo:0];
  objc_exception_throw(v0);
}

uint64_t __56__PPNotificationManager_TestHelpers__waitOnQueueToDrain__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v3 = a2;
  [v2 waitOnQueueToDrain];
  [v3[4] waitOnQueueToDrain];
  [v3[11] waitOnQueueToDrain];
  [v3[7] waitOnQueueToDrain];
  [v3[9] waitOnQueueToDrain];
  v4 = v3[17];

  return [v4 waitOnQueueToDrain];
}

@end