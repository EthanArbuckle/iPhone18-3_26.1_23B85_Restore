@interface PLUpdatedOrderKeys
- (BOOL)_inq_registerForStoreOrderKeyUpdateNotificationFromManagedObjectContext:(id)a3;
- (BOOL)isObservingOrderKeys;
- (BOOL)registerForStoreOrderKeyUpdateNotificationFromManagedObjectContext:(id)a3;
- (PLUpdatedOrderKeys)init;
- (id)_persistentStoresForContext:(id)a3;
- (id)getAndClearUpdatedOrderKeys;
- (void)persistentStoreDidUpdateOrderKeys:(id)a3;
@end

@implementation PLUpdatedOrderKeys

- (PLUpdatedOrderKeys)init
{
  v6.receiver = self;
  v6.super_class = PLUpdatedOrderKeys;
  v2 = [(PLUpdatedOrderKeys *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (BOOL)isObservingOrderKeys
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  PLRunWithUnfairLock();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

id __49__PLUpdatedOrderKeys_getAndClearUpdatedOrderKeys__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 24) count])
  {
    v2 = [*(*(a1 + 32) + 24) copy];
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)getAndClearUpdatedOrderKeys
{
  v2 = PLResultWithUnfairLock();
  if (!v2)
  {
    v2 = MEMORY[0x1E695E0F8];
  }

  return v2;
}

- (void)persistentStoreDidUpdateOrderKeys:(id)a3
{
  v4 = a3;
  v3 = v4;
  PLRunWithUnfairLock();
}

void __56__PLUpdatedOrderKeys_persistentStoreDidUpdateOrderKeys___block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v32 = [*(a1 + 32) userInfo];
  [v32 objectForKey:@"addedOrUpdated"];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v54 = 0u;
  v35 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (v35)
  {
    v34 = *v52;
    v2 = 0x1E696A000uLL;
    do
    {
      v3 = 0;
      do
      {
        if (*v52 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v36 = v3;
        v41 = *(*(&v51 + 1) + 8 * v3);
        v4 = [v41 entity];
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v42 = *(*(a1 + 40) + 16);
        v5 = [v42 countByEnumeratingWithState:&v47 objects:v62 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v48;
          v37 = *v48;
          v38 = v4;
          do
          {
            v8 = 0;
            v39 = v6;
            do
            {
              if (*v48 != v7)
              {
                objc_enumerationMutation(v42);
              }

              v9 = *(*(&v47 + 1) + 8 * v8);
              v10 = [v9 entity];
              v11 = [v4 isKindOfEntity:v10];

              if (v11)
              {
                v12 = [obj objectForKey:v41];
                v13 = [v9 name];
                v14 = [v12 objectForKey:v13];
                if ([v14 count])
                {
                  v43 = v13;
                  v44 = v12;
                  v45 = v8;
                  v15 = [v9 inverseRelationship];
                  v16 = [v15 name];
                  v61 = v16;
                  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
                  v46 = v15;
                  v18 = [v15 entity];
                  v19 = [v18 name];
                  v20 = [PLPropertyIndexMapping indexValueForRelationshipNames:v17 entity:v19];

                  if ([v14 count])
                  {
                    v21 = 0;
                    do
                    {
                      v22 = [v14 objectAtIndexedSubscript:v21];
                      v23 = [*(*(a1 + 40) + 24) objectForKey:v22];
                      v24 = v23;
                      v25 = v20;
                      if (v23)
                      {
                        v25 = [v23 unsignedLongLongValue] | v20;
                      }

                      v26 = *(*(a1 + 40) + 24);
                      v27 = [*(v2 + 3480) numberWithUnsignedLongLong:v25];
                      [v26 setObject:v27 forKey:v22];

                      v28 = PLChangeHandlingGetLog();
                      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                      {
                        v29 = [v14 objectAtIndexedSubscript:v21 + 1];
                        [v46 name];
                        v31 = v30 = v2;
                        *buf = 138412802;
                        v56 = v29;
                        v57 = 2112;
                        v58 = v31;
                        v59 = 2112;
                        v60 = v22;
                        _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEBUG, "Adding updated order key %@ for %@ on %@.", buf, 0x20u);

                        v2 = v30;
                      }

                      v21 += 2;
                    }

                    while (v21 < [v14 count]);
                  }

                  v7 = v37;
                  v4 = v38;
                  v6 = v39;
                  v12 = v44;
                  v8 = v45;
                  v13 = v43;
                }
              }

              ++v8;
            }

            while (v8 != v6);
            v6 = [v42 countByEnumeratingWithState:&v47 objects:v62 count:16];
          }

          while (v6);
        }

        v3 = v36 + 1;
      }

      while (v36 + 1 != v35);
      v35 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
    }

    while (v35);
  }

  objc_autoreleasePoolPop(context);
}

- (id)_persistentStoresForContext:(id)a3
{
  v3 = [a3 persistentStoreCoordinator];
  v4 = [v3 persistentStores];

  return v4;
}

- (BOOL)_inq_registerForStoreOrderKeyUpdateNotificationFromManagedObjectContext:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v34 = a3;
  v31 = [v34 persistentStoreCoordinator];
  [v31 persistentStores];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v40 = 0u;
  v35 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  v4 = 0;
  if (v35)
  {
    v33 = *v38;
    v30 = *MEMORY[0x1E695D418];
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v38 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v37 + 1) + 8 * i);
        v7 = [v6 URL];
        v8 = [v7 path];
        v9 = [v34 photoLibrary];
        v10 = [v9 pathManager];
        v11 = [v10 photosDatabasePath];
        v12 = [v8 isEqualToString:v11];

        if (v12)
        {
          v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
          updatedOrderKeyObjectIDs = self->_updatedOrderKeyObjectIDs;
          self->_updatedOrderKeyObjectIDs = v13;

          v15 = [MEMORY[0x1E695DFA8] set];
          v16 = [v31 managedObjectModel];
          v17 = [v16 entitiesByName];
          v18 = [v17 objectForKey:@"Album"];
          v19 = [v18 relationshipsByName];
          v20 = [v19 objectForKey:@"assets"];

          [v15 addObject:v20];
          v21 = [v16 entitiesByName];
          v22 = [v21 objectForKey:@"Folder"];
          v23 = [v22 relationshipsByName];
          v24 = [v23 objectForKey:@"childCollections"];

          [v15 addObject:v24];
          v25 = [v15 copy];
          observedRelationships = self->_observedRelationships;
          self->_observedRelationships = v25;

          v27 = PLChangeHandlingGetLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEBUG, "PLChangeNode registering for order key change notifications.", buf, 2u);
          }

          v28 = [MEMORY[0x1E696AD88] defaultCenter];
          [v28 addObserver:self selector:sel_persistentStoreDidUpdateOrderKeys_ name:v30 object:v6];

          v4 = 1;
        }
      }

      v35 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v35);
  }

  return v4 & 1;
}

- (BOOL)registerForStoreOrderKeyUpdateNotificationFromManagedObjectContext:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5 = a3;
  PLRunWithUnfairLock();
  v3 = *(v7 + 24);

  _Block_object_dispose(&v6, 8);
  return v3;
}

void __89__PLUpdatedOrderKeys_registerForStoreOrderKeyUpdateNotificationFromManagedObjectContext___block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  if ((v3[12] & 1) == 0)
  {
    *(*(a1[6] + 8) + 24) = [v3 _inq_registerForStoreOrderKeyUpdateNotificationFromManagedObjectContext:a1[5]];
    *(a1[4] + 12) = 1;
  }

  objc_autoreleasePoolPop(v2);
}

@end