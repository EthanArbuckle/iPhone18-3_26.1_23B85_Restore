@interface PLRelationshipOrderKeyManager
+ (id)new;
+ (int64_t)compareOrderKeyObject:(id)a3 withObject:(id)a4;
- (BOOL)writeStashedLocationValuesInContext:(id)a3 error:(id *)a4;
- (PLRelationshipOrderKeyManager)init;
- (PLRelationshipOrderKeyManager)initWithGenerateContextBlock:(id)a3;
- (id)_locked_enqueuedAlbumAssetsOrderValueUpdates;
- (id)_locked_enqueuedFolderAlbumsOrderValueUpdates;
- (id)_locked_locationsCache;
- (id)_locked_spiSafeContextGivenPassedInContext:(id)a3 andName:(const char *)a4;
- (id)_orderingStateForRelationship:(id)a3 onObjectWithID:(id)a4 invalidateCache:(BOOL)a5 usingSPISafeContext:(id)a6;
- (id)albumsAndOrderValuesForAsset:(id)a3 inManagedObjectContext:(id)a4;
- (id)migration_sortedOrderKeysForAssetsInAlbum:(id)a3 usingMap:(id)a4;
- (id)objectIDsAndOrderValuesForRelationship:(id)a3 onObjectWithID:(id)a4 invalidateCache:(BOOL)a5 inContext:(id)a6;
- (id)parentFolderOrderValueForAlbum:(id)a3 inManagedObjectContext:(id)a4;
- (unint64_t)findIndexForAlbumWithID:(id)a3 newOrderValue:(int64_t)a4 inFolderWithID:(id)a5 hasOrderValueConflictWithAlbumID:(id *)a6 inContext:(id)a7;
- (unint64_t)findIndexForAssetWithID:(id)a3 newOrderValue:(int64_t)a4 inAlbumWithID:(id)a5 hasOrderValueConflictWithAssetID:(id *)a6 inContext:(id)a7;
- (void)_getAndResetEnqueuedOrderValueUpdatesForFolders:(id *)a3 albums:(id *)a4 conflictDetected:(BOOL *)a5;
- (void)_migration_updateOrderKeysForAssetsInParentAlbum:(id)a3 childToOrderKeyMap:(id)a4;
- (void)_migration_updateOrderValuesForAssetsInAlbum:(id)a3 managedObjectContext:(id)a4;
- (void)_setConflictDetected:(BOOL)a3;
- (void)_stashLocationValue:(int64_t)a3 forOrderedObjectWithID:(id)a4 inSourceObjectID:(id)a5 relationship:(id)a6 atIndex:(unint64_t)a7 usingStashDictionary:(id)a8 usingSPISafeContext:(id)a9;
- (void)_updateOrderOfChildrenInParent:(id)a3 usingTransientOrders:(id)a4;
- (void)getConflictResolutionOrderValuesForRelationship:(id)a3 onObjectWithID:(id)a4 atIndex:(unint64_t)a5 intoLower:(int64_t *)a6 higher:(int64_t *)a7 inContext:(id)a8;
- (void)migration_ensureValidOrderKey:(id)a3 usingOrderValuePropertyKey:(id)a4;
- (void)migration_fixupOrderKeys:(id)a3 usingOrderValuePropertyKey:(id)a4 enforceSingletonAlbumReservedKeySpace:(BOOL)a5;
- (void)migration_updateLegacyChildCollectionOrderKeysInFolder:(id)a3;
- (void)migration_updateLegacyOrderValuesForAssetsInAlbums:(id)a3 managedObjectContext:(id)a4;
- (void)stashAlbumAssetsLocationValue:(int64_t)a3 forAssetWithID:(id)a4 inAlbumWithID:(id)a5 atIndex:(unint64_t)a6 usingContext:(id)a7;
- (void)stashFolderAlbumsLocationValue:(int64_t)a3 forAlbumWithID:(id)a4 inFolderWithID:(id)a5 atIndex:(unint64_t)a6 usingContext:(id)a7;
- (void)updateAlbumAssetsUsingTransientOrdersByAlbumOID:(id)a3 inLibrary:(id)a4;
@end

@implementation PLRelationshipOrderKeyManager

- (id)parentFolderOrderValueForAlbum:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__22948;
  v24 = __Block_byref_object_dispose__22949;
  v25 = 0;
  v8 = objc_autoreleasePoolPush();
  os_unfair_lock_lock(&self->_lock);
  v9 = [(PLRelationshipOrderKeyManager *)self _locked_spiSafeContextGivenPassedInContext:v7 andName:"[PLRelationshipOrderKeyManager parentFolderOrderValueForAlbum:inManagedObjectContext:]"];
  os_unfair_lock_unlock(&self->_lock);
  v10 = [v6 objectID];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__PLRelationshipOrderKeyManager_parentFolderOrderValueForAlbum_inManagedObjectContext___block_invoke;
  aBlock[3] = &unk_1E7578820;
  v11 = v9;
  v17 = v11;
  v12 = v10;
  v18 = v12;
  v19 = &v20;
  v13 = _Block_copy(aBlock);
  [v11 performBlockAndWait:v13];

  objc_autoreleasePoolPop(v8);
  v14 = v21[5];
  _Block_object_dispose(&v20, 8);

  return v14;
}

void __87__PLRelationshipOrderKeyManager_parentFolderOrderValueForAlbum_inManagedObjectContext___block_invoke(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [(PLManagedObject *)PLManagedFolder entityInManagedObjectContext:a1[4]];
  v3 = [v2 relationshipsByName];
  v4 = +[PLManagedFolder childKeyForOrdering];
  v5 = [v3 objectForKey:v4];

  v6 = a1[4];
  v7 = a1[5];
  v18 = 0;
  v8 = [v6 _allOrderKeysForDestination:v7 inRelationship:v5 error:&v18];
  v9 = v18;
  if (v8)
  {
    if ([v8 count] == 2)
    {
      v10 = [v8 objectAtIndex:1];
      v11 = *(a1[6] + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      v13 = [*(*(a1[6] + 8) + 40) copy];
      v14 = *(a1[6] + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;
LABEL_7:
    }
  }

  else if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v15 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = a1[5];
      v17 = [v5 name];
      *buf = 138412802;
      v20 = v16;
      v21 = 2112;
      v22 = v17;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Failed to fetch order keys for destination album %@ in %@: %@", buf, 0x20u);
    }

    goto LABEL_7;
  }
}

- (id)albumsAndOrderValuesForAsset:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__22948;
  v24 = __Block_byref_object_dispose__22949;
  v25 = 0;
  v8 = objc_autoreleasePoolPush();
  os_unfair_lock_lock(&self->_lock);
  v9 = [(PLRelationshipOrderKeyManager *)self _locked_spiSafeContextGivenPassedInContext:v7 andName:"[PLRelationshipOrderKeyManager albumsAndOrderValuesForAsset:inManagedObjectContext:]"];

  os_unfair_lock_unlock(&self->_lock);
  v10 = [v6 objectID];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__PLRelationshipOrderKeyManager_albumsAndOrderValuesForAsset_inManagedObjectContext___block_invoke;
  aBlock[3] = &unk_1E7578820;
  v11 = v9;
  v17 = v11;
  v12 = v10;
  v18 = v12;
  v19 = &v20;
  v13 = _Block_copy(aBlock);
  [v11 performBlockAndWait:v13];

  objc_autoreleasePoolPop(v8);
  v14 = v21[5];
  _Block_object_dispose(&v20, 8);

  return v14;
}

void __85__PLRelationshipOrderKeyManager_albumsAndOrderValuesForAsset_inManagedObjectContext___block_invoke(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [(PLManagedObject *)PLManagedAlbum entityInManagedObjectContext:a1[4]];
  v3 = [v2 relationshipsByName];
  v4 = +[PLManagedAlbum childKeyForOrdering];
  v5 = [v3 objectForKey:v4];

  v6 = a1[4];
  v7 = a1[5];
  v15 = 0;
  v8 = [v6 _allOrderKeysForDestination:v7 inRelationship:v5 error:&v15];
  v9 = v15;
  if (v8)
  {
    v10 = [v8 copy];
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
LABEL_6:

    goto LABEL_7;
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v12 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = a1[5];
      v14 = [v5 name];
      *buf = 138412802;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Failed to fetch order keys for destination asset %@ in %@: %@", buf, 0x20u);
    }

    goto LABEL_6;
  }

LABEL_7:
}

- (BOOL)writeStashedLocationValuesInContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 1;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__22948;
  v32 = __Block_byref_object_dispose__22949;
  v33 = 0;
  v7 = objc_autoreleasePoolPush();
  v27 = 0;
  v25 = 0;
  v26 = 0;
  [(PLRelationshipOrderKeyManager *)self _getAndResetEnqueuedOrderValueUpdatesForFolders:&v26 albums:&v25 conflictDetected:&v27];
  v8 = v26;
  v9 = v25;
  os_unfair_lock_lock(&self->_lock);
  v10 = v6;
  if (v27 == 1)
  {
    if ([v6 changeSource] == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = v6;
    }
  }

  v11 = [(PLRelationshipOrderKeyManager *)self _locked_spiSafeContextGivenPassedInContext:v10 andName:"[PLRelationshipOrderKeyManager writeStashedLocationValuesInContext:error:]"];
  os_unfair_lock_unlock(&self->_lock);
  if ([v8 count] || objc_msgSend(v9, "count"))
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __75__PLRelationshipOrderKeyManager_writeStashedLocationValuesInContext_error___block_invoke;
    v19 = &unk_1E75787D0;
    v23 = &v34;
    v20 = v9;
    v12 = v11;
    v21 = v12;
    v24 = &v28;
    v22 = v8;
    v13 = _Block_copy(&v16);
    [(PLRelationshipOrderKeyManager *)self setInWriteStashedLocationMode:1, v16, v17, v18, v19];
    [v12 performBlockAndWait:v13];
    [(PLRelationshipOrderKeyManager *)self setInWriteStashedLocationMode:0];
  }

  objc_autoreleasePoolPop(v7);
  if (a4)
  {
    *a4 = v29[5];
  }

  v14 = *(v35 + 24);
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v34, 8);
  return v14;
}

void __75__PLRelationshipOrderKeyManager_writeStashedLocationValuesInContext_error___block_invoke(uint64_t a1)
{
  v68 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = *(a1 + 32);
    v2 = [obj countByEnumeratingWithState:&v60 objects:v67 count:16];
    if (v2)
    {
      v4 = v2;
      v50 = *v61;
      v5 = off_1E7560000;
      *&v3 = 138412802;
      v46 = v3;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v61 != v50)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v60 + 1) + 8 * i);
          v8 = [*(a1 + 32) objectForKey:{v7, v46}];
          v9 = [(__objc2_class *)v5[51] childKeyForOrdering];
          v10 = [v8 objectForKey:v9];

          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v11 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              v12 = [v10 count];
              *buf = 67109634;
              *v66 = v12;
              *&v66[4] = 2112;
              *&v66[6] = v7;
              *&v66[14] = 2112;
              *&v66[16] = v10;
              _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEBUG, "Writing %d asset order keys in album %@: %@", buf, 0x1Cu);
            }
          }

          v13 = *(a1 + 40);
          v14 = v5;
          v15 = [(__objc2_class *)v5[51] childKeyForOrdering];
          v16 = *(*(a1 + 64) + 8);
          v59 = *(v16 + 40);
          LOBYTE(v13) = [v13 _updateLocationsOfObjectsToLocationByOrderKey:v10 inRelationshipWithName:v15 onObjectWithID:v7 error:&v59];
          objc_storeStrong((v16 + 40), v59);
          *(*(*(a1 + 56) + 8) + 24) = v13;

          if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
          {
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v22 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                v23 = *(*(*(a1 + 64) + 8) + 40);
                *buf = v46;
                *v66 = v10;
                *&v66[8] = 2112;
                *&v66[10] = v7;
                *&v66[18] = 2112;
                *&v66[20] = v23;
                _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "Failed to update assets order keys %@ in album %@ -- %@", buf, 0x20u);
              }
            }

            goto LABEL_25;
          }

          v17 = *(a1 + 40);
          v18 = *(*(a1 + 64) + 8);
          v58 = *(v18 + 40);
          v19 = [v17 save:&v58];
          objc_storeStrong((v18 + 40), v58);
          *(*(*(a1 + 56) + 8) + 24) = v19;
          v5 = v14;
          if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0 && (*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v20 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v21 = *(*(*(a1 + 64) + 8) + 40);
              *buf = v46;
              *v66 = v10;
              *&v66[8] = 2112;
              *&v66[10] = v7;
              *&v66[18] = 2112;
              *&v66[20] = v21;
              _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Failed to save changes to order keys %@ in album %@ -- %@", buf, 0x20u);
            }
          }
        }

        v4 = [obj countByEnumeratingWithState:&v60 objects:v67 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_25:

    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      obja = *(a1 + 48);
      v24 = [obja countByEnumeratingWithState:&v54 objects:v64 count:16];
      if (v24)
      {
        v26 = v24;
        v51 = *v55;
        v27 = off_1E7560000;
        *&v25 = 138412802;
        v47 = v25;
        while (2)
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v55 != v51)
            {
              objc_enumerationMutation(obja);
            }

            v29 = *(*(&v54 + 1) + 8 * j);
            v30 = [*(a1 + 48) objectForKey:{v29, v47}];
            v31 = [(__objc2_class *)v27[57] childKeyForOrdering];
            v32 = [v30 objectForKey:v31];

            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v33 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
              {
                v34 = [v32 count];
                *buf = 67109634;
                *v66 = v34;
                *&v66[4] = 2112;
                *&v66[6] = v29;
                *&v66[14] = 2112;
                *&v66[16] = v32;
                _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEBUG, "Writing %d albums order keys in folder %@: %@", buf, 0x1Cu);
              }
            }

            v35 = *(a1 + 40);
            v36 = v27;
            v37 = [(__objc2_class *)v27[57] childKeyForOrdering];
            v38 = *(*(a1 + 64) + 8);
            v53 = *(v38 + 40);
            LOBYTE(v35) = [v35 _updateLocationsOfObjectsToLocationByOrderKey:v32 inRelationshipWithName:v37 onObjectWithID:v29 error:&v53];
            objc_storeStrong((v38 + 40), v53);
            *(*(*(a1 + 56) + 8) + 24) = v35;

            if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
            {
              if ((*MEMORY[0x1E6994D48] & 1) == 0)
              {
                v44 = __CPLAssetsdOSLogDomain();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  v45 = *(*(*(a1 + 64) + 8) + 40);
                  *buf = v47;
                  *v66 = v32;
                  *&v66[8] = 2112;
                  *&v66[10] = v29;
                  *&v66[18] = 2112;
                  *&v66[20] = v45;
                  _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_ERROR, "Failed to update albums order keys %@ in folder %@ -- %@", buf, 0x20u);
                }
              }

              goto LABEL_49;
            }

            v39 = *(a1 + 40);
            v40 = *(*(a1 + 64) + 8);
            v52 = *(v40 + 40);
            v41 = [v39 save:&v52];
            objc_storeStrong((v40 + 40), v52);
            *(*(*(a1 + 56) + 8) + 24) = v41;
            v27 = v36;
            if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0 && (*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v42 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                v43 = *(*(*(a1 + 64) + 8) + 40);
                *buf = v47;
                *v66 = v32;
                *&v66[8] = 2112;
                *&v66[10] = v29;
                *&v66[18] = 2112;
                *&v66[20] = v43;
                _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_ERROR, "Failed to save changes to order keys %@ in folder %@ -- %@", buf, 0x20u);
              }
            }
          }

          v26 = [obja countByEnumeratingWithState:&v54 objects:v64 count:16];
          if (v26)
          {
            continue;
          }

          break;
        }
      }

LABEL_49:
    }
  }
}

- (void)_getAndResetEnqueuedOrderValueUpdatesForFolders:(id *)a3 albums:(id *)a4 conflictDetected:(BOOL *)a5
{
  os_unfair_lock_lock(&self->_lock);
  if (a3)
  {
    v16 = [(NSMutableDictionary *)self->_enqueuedFolderAlbumsOrderValueUpdates copy];
    if (a4)
    {
LABEL_3:
      v9 = [(NSMutableDictionary *)self->_enqueuedAlbumAssetsOrderValueUpdates copy];
      goto LABEL_6;
    }
  }

  else
  {
    v16 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  *a5 = self->_conflictDetected;
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  enqueuedFolderAlbumsOrderValueUpdates = self->_enqueuedFolderAlbumsOrderValueUpdates;
  self->_enqueuedFolderAlbumsOrderValueUpdates = v10;

  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  enqueuedAlbumAssetsOrderValueUpdates = self->_enqueuedAlbumAssetsOrderValueUpdates;
  self->_enqueuedAlbumAssetsOrderValueUpdates = v12;

  v14 = [(PLRelationshipOrderKeyManager *)self _locked_locationsCache];
  [v14 removeAllObjects];

  self->_hasStashedLocationValues = 0;
  self->_conflictDetected = 0;
  os_unfair_lock_unlock(&self->_lock);
  if (a3)
  {
    *a3 = v16;
  }

  if (a4)
  {
    v15 = v9;
    *a4 = v9;
  }
}

- (void)_setConflictDetected:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_conflictDetected = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)stashAlbumAssetsLocationValue:(int64_t)a3 forAssetWithID:(id)a4 inAlbumWithID:(id)a5 atIndex:(unint64_t)a6 usingContext:(id)a7
{
  v18 = a4;
  v12 = a5;
  v13 = a7;
  v14 = objc_autoreleasePoolPush();
  os_unfair_lock_lock(&self->_lock);
  v15 = [(PLRelationshipOrderKeyManager *)self _locked_spiSafeContextGivenPassedInContext:v13 andName:"[PLRelationshipOrderKeyManager stashAlbumAssetsLocationValue:forAssetWithID:inAlbumWithID:atIndex:usingContext:]"];
  v16 = [(PLRelationshipOrderKeyManager *)self _locked_enqueuedAlbumAssetsOrderValueUpdates];
  os_unfair_lock_unlock(&self->_lock);
  v17 = +[PLManagedAlbum childKeyForOrdering];
  [(PLRelationshipOrderKeyManager *)self _stashLocationValue:a3 forOrderedObjectWithID:v18 inSourceObjectID:v12 relationship:v17 atIndex:a6 usingStashDictionary:v16 usingSPISafeContext:v15];

  objc_autoreleasePoolPop(v14);
}

- (void)stashFolderAlbumsLocationValue:(int64_t)a3 forAlbumWithID:(id)a4 inFolderWithID:(id)a5 atIndex:(unint64_t)a6 usingContext:(id)a7
{
  v18 = a4;
  v12 = a5;
  v13 = a7;
  v14 = objc_autoreleasePoolPush();
  os_unfair_lock_lock(&self->_lock);
  v15 = [(PLRelationshipOrderKeyManager *)self _locked_spiSafeContextGivenPassedInContext:v13 andName:"[PLRelationshipOrderKeyManager stashFolderAlbumsLocationValue:forAlbumWithID:inFolderWithID:atIndex:usingContext:]"];
  v16 = [(PLRelationshipOrderKeyManager *)self _locked_enqueuedFolderAlbumsOrderValueUpdates];
  os_unfair_lock_unlock(&self->_lock);
  v17 = +[PLManagedFolder childKeyForOrdering];
  [(PLRelationshipOrderKeyManager *)self _stashLocationValue:a3 forOrderedObjectWithID:v18 inSourceObjectID:v12 relationship:v17 atIndex:a6 usingStashDictionary:v16 usingSPISafeContext:v15];

  objc_autoreleasePoolPop(v14);
}

- (void)_stashLocationValue:(int64_t)a3 forOrderedObjectWithID:(id)a4 inSourceObjectID:(id)a5 relationship:(id)a6 atIndex:(unint64_t)a7 usingStashDictionary:(id)a8 usingSPISafeContext:(id)a9
{
  v35 = *MEMORY[0x1E69E9840];
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = [(PLRelationshipOrderKeyManager *)self _orderingStateForRelationship:v17 onObjectWithID:v16 usingSPISafeContext:a9];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v20 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218754;
      v28 = a3;
      v29 = 2112;
      v30 = v15;
      v31 = 2112;
      v32 = v17;
      v33 = 2112;
      v34 = v16;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEBUG, "Stash order value %lld for %@ in %@ on %@", buf, 0x2Au);
    }
  }

  if ([v19 setOrderValue:a3 forObjectID:v15 atIndex:a7])
  {
    v21 = [v18 objectForKey:v16];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 objectForKey:v17];
    }

    else
    {
      v23 = [MEMORY[0x1E695DF70] array];
      v25 = v17;
      v26 = v23;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      [v18 setObject:v22 forKey:v16];
    }

    if (a3 >= 1)
    {
      [v23 addObject:v15];
      v24 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
      [v23 addObject:v24];

      self->_hasStashedLocationValues = 1;
    }
  }
}

- (id)objectIDsAndOrderValuesForRelationship:(id)a3 onObjectWithID:(id)a4 invalidateCache:(BOOL)a5 inContext:(id)a6
{
  v7 = a5;
  v22[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  context = objc_autoreleasePoolPush();
  os_unfair_lock_lock(&self->_lock);
  v13 = [(PLRelationshipOrderKeyManager *)self _locked_spiSafeContextGivenPassedInContext:v12 andName:"[PLRelationshipOrderKeyManager objectIDsAndOrderValuesForRelationship:onObjectWithID:invalidateCache:inContext:]"];
  os_unfair_lock_unlock(&self->_lock);
  v14 = [(PLRelationshipOrderKeyManager *)self _orderingStateForRelationship:v10 onObjectWithID:v11 invalidateCache:v7 usingSPISafeContext:v13];
  v15 = [v14 objectIDs];
  v16 = [v15 copy];
  v22[0] = v16;
  v17 = [v14 orderKeys];
  v18 = [v17 copy];
  v22[1] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];

  objc_autoreleasePoolPop(context);

  return v19;
}

- (unint64_t)findIndexForAssetWithID:(id)a3 newOrderValue:(int64_t)a4 inAlbumWithID:(id)a5 hasOrderValueConflictWithAssetID:(id *)a6 inContext:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v15 = objc_autoreleasePoolPush();
  os_unfair_lock_lock(&self->_lock);
  v16 = [(PLRelationshipOrderKeyManager *)self _locked_spiSafeContextGivenPassedInContext:v14 andName:"[PLRelationshipOrderKeyManager findIndexForAssetWithID:newOrderValue:inAlbumWithID:hasOrderValueConflictWithAssetID:inContext:]"];
  os_unfair_lock_unlock(&self->_lock);
  v17 = +[PLManagedAlbum childKeyForOrdering];
  v18 = [(PLRelationshipOrderKeyManager *)self _orderingStateForRelationship:v17 onObjectWithID:v13 usingSPISafeContext:v16];

  objc_autoreleasePoolPop(v15);
  v19 = [v18 findIndexForObjectID:v12 newOrderValue:a4 hasOrderValueConflictWithObjectID:a6];

  return v19;
}

- (unint64_t)findIndexForAlbumWithID:(id)a3 newOrderValue:(int64_t)a4 inFolderWithID:(id)a5 hasOrderValueConflictWithAlbumID:(id *)a6 inContext:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v15 = objc_autoreleasePoolPush();
  os_unfair_lock_lock(&self->_lock);
  v16 = [(PLRelationshipOrderKeyManager *)self _locked_spiSafeContextGivenPassedInContext:v14 andName:"[PLRelationshipOrderKeyManager findIndexForAlbumWithID:newOrderValue:inFolderWithID:hasOrderValueConflictWithAlbumID:inContext:]"];
  os_unfair_lock_unlock(&self->_lock);
  v17 = +[PLManagedFolder childKeyForOrdering];
  v18 = [(PLRelationshipOrderKeyManager *)self _orderingStateForRelationship:v17 onObjectWithID:v13 usingSPISafeContext:v16];

  objc_autoreleasePoolPop(v15);
  v19 = [v18 findIndexForObjectID:v12 newOrderValue:a4 hasOrderValueConflictWithObjectID:a6];

  return v19;
}

- (void)getConflictResolutionOrderValuesForRelationship:(id)a3 onObjectWithID:(id)a4 atIndex:(unint64_t)a5 intoLower:(int64_t *)a6 higher:(int64_t *)a7 inContext:(id)a8
{
  v29 = a3;
  v13 = a4;
  v14 = a8;
  context = objc_autoreleasePoolPush();
  os_unfair_lock_lock(&self->_lock);
  v15 = [(PLRelationshipOrderKeyManager *)self _locked_spiSafeContextGivenPassedInContext:v14 andName:"[PLRelationshipOrderKeyManager getConflictResolutionOrderValuesForRelationship:onObjectWithID:atIndex:intoLower:higher:inContext:]"];
  os_unfair_lock_unlock(&self->_lock);
  v16 = [(PLRelationshipOrderKeyManager *)self _orderingStateForRelationship:v29 onObjectWithID:v13 usingSPISafeContext:v15];
  v17 = [v16 orderKeys];
  v18 = [v17 objectAtIndexedSubscript:a5];
  v19 = [v18 longLongValue];

  if (a5)
  {
    v20 = [v17 objectAtIndexedSubscript:a5 - 1];
    v21 = [v20 longLongValue];
  }

  else
  {
    v21 = 1024;
  }

  if ([v17 count] - 1 <= a5)
  {
    v23 = 0x7FFFFFFFFFFFFBFFLL;
  }

  else
  {
    v22 = [v17 objectAtIndexedSubscript:a5 + 1];
    v23 = [v22 longLongValue];
  }

  v24 = v21 + (v19 - v21) / 2;
  if (v19 - 1024 > v24)
  {
    v24 = v19 - 1024;
  }

  if (v19 <= v21)
  {
    v24 = 0;
  }

  *a6 = v24;
  v25 = v19 + (v23 - v19) / 2;
  if (v19 + 1024 >= v25 + 1)
  {
    v26 = v25 + 1;
  }

  else
  {
    v26 = v19 + 1024;
  }

  if (v23 <= v19)
  {
    v26 = 0;
  }

  *a7 = v26;

  objc_autoreleasePoolPop(context);
}

- (id)_orderingStateForRelationship:(id)a3 onObjectWithID:(id)a4 invalidateCache:(BOOL)a5 usingSPISafeContext:(id)a6
{
  v7 = a5;
  v53 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  os_unfair_lock_lock(&self->_lock);
  v13 = [(PLRelationshipOrderKeyManager *)self _locked_locationsCache];
  v14 = [v13 objectForKey:v11];

  if (!v14 || v7)
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);

    v16 = [(PLRelationshipOrderKeyManager *)self _locked_locationsCache];
    [v16 setObject:v15 forKey:v11];

    v14 = v15;
  }

  v17 = [v14 objectForKey:v10];
  if (!v17)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy__22948;
    v43 = __Block_byref_object_dispose__22949;
    v44 = 0;
    v18 = MEMORY[0x1E6994D48];
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v19 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v46 = v10;
        v47 = 2112;
        v48 = v11;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEBUG, "Retrieving locations for relationship '%@' on '%@'", buf, 0x16u);
      }
    }

    v31 = MEMORY[0x1E69E9820];
    v32 = 3221225472;
    v33 = __114__PLRelationshipOrderKeyManager__orderingStateForRelationship_onObjectWithID_invalidateCache_usingSPISafeContext___block_invoke;
    v34 = &unk_1E75778C0;
    v38 = &v39;
    v35 = v12;
    v20 = v10;
    v36 = v20;
    v21 = v11;
    v37 = v21;
    [v35 performBlockAndWait:&v31];
    v22 = v40[5];
    if (v22 && [v22 count] == 2)
    {
      v23 = [PLRelationshipOrderingState alloc];
      v24 = [v40[5] objectAtIndexedSubscript:0];
      v25 = [v40[5] objectAtIndexedSubscript:1];
      v17 = [(PLRelationshipOrderingState *)v23 initWithObjectIDs:v24 orderValues:v25];
    }

    else
    {
      if ((*v18 & 1) == 0)
      {
        v26 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v27 = @"invalid";
          v28 = v40[5];
          if (!v28)
          {
            v27 = @"nil";
          }

          *buf = 138413058;
          v46 = v27;
          v47 = 2112;
          v48 = v20;
          v49 = 2112;
          v50 = v21;
          v51 = 2112;
          v52 = v28;
          _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEBUG, "Ignoring %@ locations returned for relationship '%@' on '%@': %@", buf, 0x2Au);
        }
      }

      v29 = [PLRelationshipOrderingState alloc];
      v17 = [(PLRelationshipOrderingState *)v29 initWithObjectIDs:MEMORY[0x1E695E0F0] orderValues:MEMORY[0x1E695E0F0]];
    }

    [v14 setObject:v17 forKey:{v20, v31, v32, v33, v34}];

    _Block_object_dispose(&v39, 8);
  }

  os_unfair_lock_unlock(&self->_lock);

  return v17;
}

void __114__PLRelationshipOrderKeyManager__orderingStateForRelationship_onObjectWithID_invalidateCache_usingSPISafeContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _orderKeysForRelationshipWithName__:*(a1 + 40) onObjectWithID:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)updateAlbumAssetsUsingTransientOrdersByAlbumOID:(id)a3 inLibrary:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ((PLIsAssetsd() & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PLRelationshipOrderKeyManager.m" lineNumber:457 description:{@"Invalid parameter not satisfying: %@", @"PLIsAssetsd()"}];
  }

  if ([v7 count])
  {
    v9 = [v8 managedObjectContext];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __91__PLRelationshipOrderKeyManager_updateAlbumAssetsUsingTransientOrdersByAlbumOID_inLibrary___block_invoke;
    v12[3] = &unk_1E75761B8;
    v13 = v7;
    v14 = v9;
    v15 = self;
    v10 = v9;
    [v8 performTransactionAndWait:v12];
  }
}

void __91__PLRelationshipOrderKeyManager_updateAlbumAssetsUsingTransientOrdersByAlbumOID_inLibrary___block_invoke(id *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLManagedAlbum entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = MEMORY[0x1E696AE18];
  v6 = [a1[4] allKeys];
  v7 = [v5 predicateWithFormat:@"self IN %@", v6];
  [v4 setPredicate:v7];

  v8 = [a1[5] executeFetchRequest:v4 error:0];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if (([v13 isDeleted] & 1) == 0 && objc_msgSend(v13, "supportsAssetOrderKeys"))
        {
          v14 = a1[4];
          v15 = [v13 objectID];
          v16 = [v14 objectForKey:v15];

          [a1[6] _updateOrderOfChildrenInParent:v13 usingTransientOrders:v16];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }
}

- (void)_updateOrderOfChildrenInParent:(id)a3 usingTransientOrders:(id)a4
{
  v125 = *MEMORY[0x1E69E9840];
  v83 = a3;
  v111[0] = MEMORY[0x1E69E9820];
  v111[1] = 3221225472;
  v111[2] = __85__PLRelationshipOrderKeyManager__updateOrderOfChildrenInParent_usingTransientOrders___block_invoke;
  v111[3] = &unk_1E756EF00;
  v111[4] = self;
  v6 = [a4 sortedArrayUsingComparator:v111];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v7 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v114 = v6;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEBUG, "Final orders array %@", buf, 0xCu);
    }
  }

  v90 = [v83 managedObjectContext];
  v91 = [v83 objectID];
  v93 = [v83 mutableAssets];
  v8 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v6, "count")}];
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v107 objects:v124 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v108;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v108 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v107 + 1) + 8 * i) objectID];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v107 objects:v124 count:16];
    }

    while (v11);
  }

  v85 = v8;

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  obj = v9;
  v15 = [obj countByEnumeratingWithState:&v103 objects:v123 count:16];
  v17 = MEMORY[0x1E6994D48];
  v18 = v90;
  v19 = v93;
  v89 = v15;
  if (v15)
  {
    v88 = *v104;
    *&v16 = 138412802;
    v82 = v16;
    v84 = self;
    do
    {
      v20 = 0;
      do
      {
        if (*v104 != v88)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v103 + 1) + 8 * v20);
        v22 = [v21 objectID];
        v95 = [v18 objectWithID:v22];
        v94 = [v19 indexOfObject:?];
        v23 = [v21 orderValue];
        if (v23)
        {
          v24 = v23;
          v102 = 0;
          v25 = [(PLRelationshipOrderKeyManager *)self findIndexForAssetWithID:v22 newOrderValue:v23 inAlbumWithID:v91 hasOrderValueConflictWithAssetID:&v102 inContext:v18];
          v26 = v102;
          v27 = [v19 count];
          v28 = v25;
          v92 = v25;
          if (v25 > v27)
          {
            if ((*v17 & 1) == 0)
            {
              v29 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                v30 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v24];
                v31 = [v93 count];
                *buf = 138413314;
                v114 = v30;
                v115 = 2112;
                v116 = v22;
                v117 = 2112;
                v118 = v91;
                v119 = 2048;
                v120 = v25;
                v121 = 2048;
                v122 = v31;
                _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_DEFAULT, "Asset index based on order value is too large for mutableAssets: order value %@ for %@ on %@ target index = %ld, count = %ld", buf, 0x34u);

                v18 = v90;
              }

              v19 = v93;
            }

            v28 = [v19 count] - (v94 != 0x7FFFFFFFFFFFFFFFLL);
            v17 = MEMORY[0x1E6994D48];
          }

          if (!v26)
          {
            v42 = 1;
            goto LABEL_83;
          }

          v87 = v28;
          if ([v85 containsObject:v26])
          {
            v100 = 0u;
            v101 = 0u;
            v98 = 0u;
            v99 = 0u;
            v32 = obj;
            v33 = [v32 countByEnumeratingWithState:&v98 objects:v112 count:16];
            if (v33)
            {
              v34 = v33;
              v35 = *v99;
LABEL_28:
              v36 = 0;
              while (1)
              {
                if (*v99 != v35)
                {
                  objc_enumerationMutation(v32);
                }

                v37 = *(*(&v98 + 1) + 8 * v36);
                v38 = [v37 objectID];
                if ([v38 isEqual:v26])
                {
                  v39 = [v37 orderValue];

                  if (v39 == v24)
                  {
                    v63 = [v90 existingObjectWithID:v26 error:0];
                    self = v84;
                    [(PLRelationshipOrderKeyManager *)v84 _setConflictDetected:1];
                    v17 = MEMORY[0x1E6994D48];
                    if ((*MEMORY[0x1E6994D48] & 1) == 0)
                    {
                      v64 = __CPLAssetsdOSLogDomain();
                      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                      {
                        [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v24];
                        v66 = v65 = v63;
                        *buf = 138413058;
                        v114 = v66;
                        v115 = 2112;
                        v116 = v22;
                        v117 = 2112;
                        v118 = v91;
                        v119 = 2112;
                        v120 = v26;
                        _os_log_impl(&dword_19BF1F000, v64, OS_LOG_TYPE_DEFAULT, "Asset album order value %@ for %@ on %@ conflicts with %@, adjusting, since it's conflicting with the incoming order", buf, 0x2Au);

                        v63 = v65;
                      }
                    }

                    v18 = v90;
                    if (v63)
                    {
                      goto LABEL_49;
                    }

LABEL_69:
                    v42 = 1;
LABEL_82:
                    v28 = v87;
LABEL_83:
                    if (v94 == 0x7FFFFFFFFFFFFFFFLL)
                    {
                      [v93 insertObject:v95 atIndex:v28];
                      if (v42)
                      {
                        goto LABEL_88;
                      }
                    }

                    else
                    {
                      if ((v42 & 1) == 0)
                      {
                        v19 = v93;
                        v47 = v28;
LABEL_86:
                        v72 = [MEMORY[0x1E696AC90] indexSetWithIndex:{v94, v28}];
                        [v19 moveObjectsAtIndexes:v72 toIndex:v47];

                        goto LABEL_90;
                      }

LABEL_88:
                      [(PLRelationshipOrderKeyManager *)self stashAlbumAssetsLocationValue:v24 forAssetWithID:v22 inAlbumWithID:v91 atIndex:v92 usingContext:v18];
                    }

                    v19 = v93;
                    goto LABEL_90;
                  }
                }

                else
                {
                }

                if (v34 == ++v36)
                {
                  v34 = [v32 countByEnumeratingWithState:&v98 objects:v112 count:16];
                  if (v34)
                  {
                    goto LABEL_28;
                  }

                  break;
                }
              }
            }

            v17 = MEMORY[0x1E6994D48];
            if (*MEMORY[0x1E6994D48])
            {
              v42 = 1;
              self = v84;
              v18 = v90;
              goto LABEL_82;
            }

            v40 = __CPLAssetsdOSLogDomain();
            v18 = v90;
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              v41 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v24];
              *buf = 138413058;
              v114 = v41;
              v115 = 2112;
              v116 = v22;
              v117 = 2112;
              v118 = v91;
              v119 = 2112;
              v120 = v26;
              _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_DEFAULT, "Asset album order value %@ for %@ on %@ conflicts with %@, ignoring, since it will be reordered", buf, 0x2Au);
            }

            v42 = 1;
            self = v84;
LABEL_81:

            goto LABEL_82;
          }

          v63 = [v18 existingObjectWithID:v26 error:0];
          [(PLRelationshipOrderKeyManager *)self _setConflictDetected:1];
          if (!v63)
          {
            goto LABEL_69;
          }

LABEL_49:
          if ((*v17 & 1) == 0)
          {
            v48 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              v49 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v24];
              *buf = 138413058;
              v114 = v49;
              v115 = 2112;
              v116 = v22;
              v117 = 2112;
              v118 = v91;
              v119 = 2112;
              v120 = v26;
              _os_log_impl(&dword_19BF1F000, v48, OS_LOG_TYPE_DEFAULT, "Asset album order value %@ for %@ on %@ conflicts with %@, adjusting", buf, 0x2Au);
            }
          }

          v50 = v63;
          v51 = [v63 dateCreated];
          v52 = [v95 dateCreated];
          v53 = [v51 compare:v52];

          if (!v53)
          {
            v54 = [v50 originalFilename];
            v55 = [v95 originalFilename];
            v53 = [v54 compare:v55];
          }

          v96 = 0;
          v97 = 0;
          v56 = +[PLManagedAlbum childKeyForOrdering];
          [(PLRelationshipOrderKeyManager *)self getConflictResolutionOrderValuesForRelationship:v56 onObjectWithID:v91 atIndex:v92 intoLower:&v97 higher:&v96 inContext:v90];

          v40 = v50;
          if (v53 == -1)
          {
            if (!v97)
            {
              v18 = v90;
              if (!v96)
              {
                if (v94 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  if ((*v17 & 1) == 0)
                  {
                    v78 = __CPLAssetsdOSLogDomain();
                    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
                    {
                      v79 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v92];
                      *buf = v82;
                      v114 = v22;
                      v115 = 2112;
                      v116 = v79;
                      v117 = 2112;
                      v118 = v91;
                      _os_log_impl(&dword_19BF1F000, v78, OS_LOG_TYPE_DEFAULT, "Conflicting asset album order value (ascending) could not be stashed, moving %@ to %@ for %@", buf, 0x20u);

                      v18 = v90;
                    }
                  }

                  v80 = [MEMORY[0x1E696AC90] indexSetWithIndex:v94];
                  [v93 moveObjectsAtIndexes:v80 toIndex:v87];
                }

                v42 = 0;
                goto LABEL_81;
              }

              if (*v17)
              {
                v24 = v96;
              }

              else
              {
                v58 = __CPLAssetsdOSLogDomain();
                if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                {
                  v59 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v24];
                  v60 = [MEMORY[0x1E696AD98] numberWithLongLong:v96];
                  *buf = v82;
                  v114 = v59;
                  v115 = 2112;
                  v116 = v60;
                  v117 = 2112;
                  v118 = v22;
                  v61 = v58;
                  v62 = "Conflicting incoming asset album order value (ascending) updated from %@ to %@ for %@";
LABEL_60:
                  _os_log_impl(&dword_19BF1F000, v61, OS_LOG_TYPE_DEFAULT, v62, buf, 0x20u);

                  v18 = v90;
                }

LABEL_61:

                v24 = v96;
              }

              goto LABEL_62;
            }

            v18 = v90;
            [(PLRelationshipOrderKeyManager *)self stashAlbumAssetsLocationValue:v97 forAssetWithID:v26 inAlbumWithID:v91 atIndex:v92 usingContext:v90];
            if ((*v17 & 1) == 0)
            {
              v67 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
              {
                v68 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v24];
                v69 = [MEMORY[0x1E696AD98] numberWithLongLong:v97];
                *buf = v82;
                v114 = v68;
                v115 = 2112;
                v116 = v69;
                v117 = 2112;
                v118 = v26;
                v70 = v67;
                v71 = "Conflicting existing asset album order value (ascending) updated from %@ to %@ for %@";
                goto LABEL_78;
              }

LABEL_79:
            }
          }

          else
          {
            v57 = v93;
            if (v96)
            {
              v18 = v90;
              if ((*v17 & 1) == 0)
              {
                v58 = __CPLAssetsdOSLogDomain();
                if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                {
                  v59 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v24];
                  v60 = [MEMORY[0x1E696AD98] numberWithLongLong:v96];
                  *buf = v82;
                  v114 = v59;
                  v115 = 2112;
                  v116 = v60;
                  v117 = 2112;
                  v118 = v22;
                  v61 = v58;
                  v62 = "Conflicting incoming asset album order value (descending) updated from %@ to %@ for %@";
                  goto LABEL_60;
                }

                goto LABEL_61;
              }

              v24 = v96;
LABEL_62:
              ++v92;
              v42 = 1;
              goto LABEL_81;
            }

            v18 = v90;
            if (!v97)
            {
              if (v94 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v42 = 0;
              }

              else
              {
                if ((*v17 & 1) == 0)
                {
                  v73 = __CPLAssetsdOSLogDomain();
                  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                  {
                    v74 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v92 + 1];
                    *buf = v82;
                    v114 = v22;
                    v115 = 2112;
                    v116 = v74;
                    v117 = 2112;
                    v118 = v91;
                    _os_log_impl(&dword_19BF1F000, v73, OS_LOG_TYPE_DEFAULT, "Conflicting asset album order value (ascending) could not be stashed, moving %@ to %@ for %@", buf, 0x20u);
                  }

                  v57 = v93;
                }

                v75 = v57;
                if (v87 >= [v57 count])
                {
                  v76 = v87;
                }

                else
                {
                  v76 = v87 + 1;
                }

                v77 = [MEMORY[0x1E696AC90] indexSetWithIndex:v94];
                [v75 moveObjectsAtIndexes:v77 toIndex:v76];

                v42 = 0;
                v18 = v90;
                v40 = v50;
              }

              goto LABEL_81;
            }

            [(PLRelationshipOrderKeyManager *)self stashAlbumAssetsLocationValue:v97 forAssetWithID:v26 inAlbumWithID:v91 atIndex:v92 usingContext:v90];
            if ((*v17 & 1) == 0)
            {
              v67 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
              {
                v68 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v24];
                v69 = [MEMORY[0x1E696AD98] numberWithLongLong:v97];
                *buf = v82;
                v114 = v68;
                v115 = 2112;
                v116 = v69;
                v117 = 2112;
                v118 = v26;
                v70 = v67;
                v71 = "Conflicting existing asset album order value (descending) updated from %@ to %@ for %@";
LABEL_78:
                _os_log_impl(&dword_19BF1F000, v70, OS_LOG_TYPE_DEFAULT, v71, buf, 0x20u);

                v40 = v50;
                v18 = v90;
              }

              goto LABEL_79;
            }
          }

          ++v92;
          v42 = 1;
          goto LABEL_81;
        }

        if ((*v17 & 1) == 0)
        {
          v43 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v44 = [v95 uuid];
            v45 = [v83 uuid];
            *buf = 138412546;
            v114 = v44;
            v115 = 2112;
            v116 = v45;
            _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_ERROR, "Ignoring unsupported order value (0), appending %@ to the end of %@", buf, 0x16u);

            v18 = v90;
            v19 = v93;
          }
        }

        v46 = [v19 count];
        v28 = v46;
        if (v94 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v26 = 0;
          v47 = v46 - 1;
          goto LABEL_86;
        }

        [v19 insertObject:v95 atIndex:v46];
        v26 = 0;
LABEL_90:

        ++v20;
      }

      while (v20 != v89);
      v81 = [obj countByEnumeratingWithState:&v103 objects:v123 count:16];
      v89 = v81;
    }

    while (v81);
  }
}

uint64_t __85__PLRelationshipOrderKeyManager__updateOrderOfChildrenInParent_usingTransientOrders___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [objc_opt_class() compareOrderKeyObject:v5 withObject:v4];

  return v6;
}

- (id)_locked_spiSafeContextGivenPassedInContext:(id)a3 andName:(const char *)a4
{
  v6 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__22948;
  v24 = __Block_byref_object_dispose__22949;
  v25 = 0;
  if (v6 && ([v6 hasChanges] & 1) == 0)
  {
    objc_storeStrong(v21 + 5, a3);
  }

  else
  {
    cachedContext = self->_cachedContext;
    if (cachedContext)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __84__PLRelationshipOrderKeyManager__locked_spiSafeContextGivenPassedInContext_andName___block_invoke;
      v19[3] = &unk_1E7578910;
      v19[4] = self;
      v19[5] = &v20;
      [(NSManagedObjectContext *)cachedContext performBlockAndWait:v19];
    }
  }

  v8 = v21[5];
  if (!v8)
  {
    if (self->_generateContextBlock)
    {
      v9 = PLBackendGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *v18 = 0;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "PLRelationshipOrderKeyManager: manufacturing new context...", v18, 2u);
      }

      v10 = (*(self->_generateContextBlock + 2))();
      v11 = v21[5];
      v21[5] = v10;

      v12 = v21[5];
      if (v12)
      {
        v13 = v12;
        p_super = &self->_cachedContext->super;
        self->_cachedContext = v13;
LABEL_17:

        v8 = v21[5];
        goto LABEL_18;
      }

      p_super = PLBackendGetLog();
      if (!os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      *v18 = 0;
      v15 = "PLRelationshipOrderKeyManager: generateContextBlock returned nil.";
    }

    else
    {
      p_super = PLBackendGetLog();
      if (!os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      *v18 = 0;
      v15 = "PLRelationshipOrderKeyManager: Incorrectly configured, no _generateContextBlock set.";
    }

    _os_log_impl(&dword_19BF1F000, p_super, OS_LOG_TYPE_ERROR, v15, v18, 2u);
    goto LABEL_17;
  }

LABEL_18:
  v16 = v8;
  _Block_object_dispose(&v20, 8);

  return v16;
}

void __84__PLRelationshipOrderKeyManager__locked_spiSafeContextGivenPassedInContext_andName___block_invoke(uint64_t a1)
{
  if (([*(*(a1 + 32) + 48) hasChanges] & 1) == 0)
  {
    v2 = *(*(a1 + 32) + 48);
    v3 = (*(*(a1 + 40) + 8) + 40);

    objc_storeStrong(v3, v2);
  }
}

- (id)_locked_enqueuedAlbumAssetsOrderValueUpdates
{
  os_unfair_lock_assert_owner(&self->_lock);
  enqueuedAlbumAssetsOrderValueUpdates = self->_enqueuedAlbumAssetsOrderValueUpdates;
  if (!enqueuedAlbumAssetsOrderValueUpdates)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = self->_enqueuedAlbumAssetsOrderValueUpdates;
    self->_enqueuedAlbumAssetsOrderValueUpdates = v4;

    enqueuedAlbumAssetsOrderValueUpdates = self->_enqueuedAlbumAssetsOrderValueUpdates;
  }

  return enqueuedAlbumAssetsOrderValueUpdates;
}

- (id)_locked_enqueuedFolderAlbumsOrderValueUpdates
{
  os_unfair_lock_assert_owner(&self->_lock);
  enqueuedFolderAlbumsOrderValueUpdates = self->_enqueuedFolderAlbumsOrderValueUpdates;
  if (!enqueuedFolderAlbumsOrderValueUpdates)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = self->_enqueuedFolderAlbumsOrderValueUpdates;
    self->_enqueuedFolderAlbumsOrderValueUpdates = v4;

    enqueuedFolderAlbumsOrderValueUpdates = self->_enqueuedFolderAlbumsOrderValueUpdates;
  }

  return enqueuedFolderAlbumsOrderValueUpdates;
}

- (id)_locked_locationsCache
{
  os_unfair_lock_assert_owner(&self->_lock);
  locationsCache = self->_locationsCache;
  if (!locationsCache)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = self->_locationsCache;
    self->_locationsCache = v4;

    locationsCache = self->_locationsCache;
  }

  return locationsCache;
}

- (PLRelationshipOrderKeyManager)initWithGenerateContextBlock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PLRelationshipOrderKeyManager.m" lineNumber:221 description:{@"Invalid parameter not satisfying: %@", @"generateContextBlock"}];
  }

  v12.receiver = self;
  v12.super_class = PLRelationshipOrderKeyManager;
  v6 = [(PLRelationshipOrderKeyManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    v6->_inWriteStashedLocationMode = 0;
    v8 = _Block_copy(v5);
    generateContextBlock = v7->_generateContextBlock;
    v7->_generateContextBlock = v8;
  }

  return v7;
}

- (PLRelationshipOrderKeyManager)init
{
  v2 = self;
  v3 = PLMethodNotImplementedException();
  objc_exception_throw(v3);
}

+ (int64_t)compareOrderKeyObject:(id)a3 withObject:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 orderValue];
  v8 = [v6 orderValue];
  if (v7 >= v8)
  {
    if (v8 >= v7)
    {
      v10 = [v5 secondaryOrderSortKey];
      v11 = [v6 secondaryOrderSortKey];
      v9 = [v10 compare:v11];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

+ (id)new
{
  v2 = a1;
  v3 = PLMethodNotImplementedException();
  objc_exception_throw(v3);
}

- (void)migration_updateLegacyChildCollectionOrderKeysInFolder:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [a3 valueForKey:@"childCollections"];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(PLRelationshipOrderKeyManager *)self migration_ensureValidOrderKey:*(*(&v10 + 1) + 8 * v8++) usingOrderValuePropertyKey:@"albumToFolderOrderKey"];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = [v4 array];
  [(PLRelationshipOrderKeyManager *)self migration_fixupOrderKeys:v9 usingOrderValuePropertyKey:@"albumToFolderOrderKey" enforceSingletonAlbumReservedKeySpace:1];
}

- (void)migration_updateLegacyOrderValuesForAssetsInAlbums:(id)a3 managedObjectContext:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v6);
        }

        [(PLRelationshipOrderKeyManager *)self _migration_updateOrderValuesForAssetsInAlbum:*(*(&v12 + 1) + 8 * v11++) managedObjectContext:v7];
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)_migration_updateOrderValuesForAssetsInAlbum:(id)a3 managedObjectContext:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (([v6 isDeleted] & 1) == 0)
  {
    v22 = self;
    v8 = [v6 valueForKey:@"assets"];
    v9 = [MEMORY[0x1E695DF70] array];
    [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v24 = v23 = v6;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = [v6 valueForKey:@"assetOrders"];
    v11 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v30;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v29 + 1) + 8 * i);
          v16 = [v15 valueForKey:@"asset"];
          if (v16 && [v8 containsObject:v16])
          {
            [v24 setObject:v15 forKey:v16];
          }

          else
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v12);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v17 = v9;
    v18 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [v7 deleteObject:*(*(&v25 + 1) + 8 * j)];
        }

        v19 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v19);
    }

    v6 = v23;
    [(PLRelationshipOrderKeyManager *)v22 _migration_updateOrderKeysForAssetsInParentAlbum:v23 childToOrderKeyMap:v24];
  }
}

- (void)_migration_updateOrderKeysForAssetsInParentAlbum:(id)a3 childToOrderKeyMap:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [(PLRelationshipOrderKeyManager *)self migration_sortedOrderKeysForAssetsInAlbum:a3 usingMap:a4];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(PLRelationshipOrderKeyManager *)self migration_ensureValidOrderKey:*(*(&v10 + 1) + 8 * v9++) usingOrderValuePropertyKey:@"orderValue"];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(PLRelationshipOrderKeyManager *)self migration_fixupOrderKeys:v5 usingOrderValuePropertyKey:@"orderValue" enforceSingletonAlbumReservedKeySpace:0];
}

- (id)migration_sortedOrderKeysForAssetsInAlbum:(id)a3 usingMap:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 valueForKey:@"assets"];
  v8 = [v5 managedObjectContext];
  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = [v6 objectForKey:{v15, v19}];
        if (!v16)
        {
          v17 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(@"AssetToAlbumOrder", v8, 0);
          if (!v17)
          {
            goto LABEL_11;
          }

          v16 = v17;
          [v17 setValue:v15 forKey:@"asset"];
          [v16 setValue:v5 forKey:@"album"];
          [v6 setObject:v16 forKey:v15];
        }

        [v9 addObject:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

LABEL_11:

  return v9;
}

- (void)migration_fixupOrderKeys:(id)a3 usingOrderValuePropertyKey:(id)a4 enforceSingletonAlbumReservedKeySpace:(BOOL)a5
{
  v5 = a5;
  v35 = a3;
  v7 = a4;
  v8 = [v35 count];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v33 = v5;
    v32 = v8;
    do
    {
      v13 = [v35 objectAtIndex:v12];
      v14 = [v13 valueForKey:v7];
      v15 = [v14 longLongValue];

      if (v5)
      {
        if (!v11)
        {
          v11 = 1023;
        }

        v16 = v13;
        v17 = [v13 valueForKey:@"kind"];
        v18 = [v17 shortValue];

        if ([PLManagedAlbumList albumKindHasFixedOrder:v18])
        {
          v19 = [PLManagedAlbumList priorityForAlbumKind:v18];
          if (v19 == -1)
          {
            v15 = v11;
            v13 = v16;
            goto LABEL_31;
          }

          v13 = v16;
          if (v15 != v19)
          {
            v20 = [MEMORY[0x1E696AD98] numberWithLongLong:v19];
            [v16 setValue:v20 forKey:v7];
            goto LABEL_29;
          }

          goto LABEL_30;
        }

        v13 = v16;
        if (v15 <= 1023)
        {
          [v16 setValue:&unk_1F0FBC1C0 forKey:v7];
        }
      }

      if (v11 >= v15)
      {
        v34 = v13;
        v21 = v12 + 1;
        v22 = v35;
        if (v12 + 1 >= v9)
        {
          goto LABEL_34;
        }

        v20 = 0;
        while (1)
        {
          v23 = v20;
          v20 = [v22 objectAtIndex:v21];

          v24 = [v20 valueForKey:v7];
          v25 = [v24 longLongValue];

          v26 = v25 - v11;
          if (v25 > v11 && v26 >= v10 + v21 + 1)
          {
            break;
          }

          ++v21;
          v22 = v35;
          if (v9 == v21)
          {
            v21 = v9;
            break;
          }
        }

        if (!v20)
        {
LABEL_34:
          v31 = [MEMORY[0x1E696AD98] numberWithLongLong:v11 + 1024];
          [v34 setValue:v31 forKey:v7];

          break;
        }

        if (v21 == v9)
        {
          v27 = 1024;
        }

        else
        {
          v27 = v26 / (v10 + 1 + v21);
        }

        if (v12 >= v21)
        {
          v12 = v21;
          v11 = v25;
          v5 = v33;
        }

        else
        {
          v28 = v11 + v27 + v27 * (v10 + v12);
          do
          {
            v29 = [v35 objectAtIndex:v12];
            v30 = [MEMORY[0x1E696AD98] numberWithLongLong:v28];
            [v29 setValue:v30 forKey:v7];

            ++v12;
            v28 += v27;
          }

          while (v21 != v12);
          v12 = v21;
          v11 = v25;
          v5 = v33;
          v9 = v32;
        }

        v13 = v34;
LABEL_29:

LABEL_30:
        v15 = v11;
      }

LABEL_31:

      v10 = ~v12;
      v11 = v15;
      ++v12;
    }

    while (v12 < v9);
  }
}

- (void)migration_ensureValidOrderKey:(id)a3 usingOrderValuePropertyKey:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = [v8 valueForKey:v5];
  v7 = [v6 longLongValue];

  if (v7 < 0)
  {
    [v8 setValue:&unk_1F0FBC1A8 forKey:v5];
  }
}

@end