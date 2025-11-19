@interface PLLimitedLibraryFetchFilter
+ (id)_decodeFetchFilterData:(id)a3 withUUIDHandler:(id)a4 resultHandler:(id)a5;
+ (id)_fetchFiltersMatchingPredicate:(id)a3 sortDescriptors:(id)a4 limit:(int64_t)a5 inManagedObjectContext:(id)a6;
+ (id)debugDescriptionOfCurrentLimitedLibraryFetchFiltersInManagedObjectContext:(id)a3;
+ (id)entityNameToPredicateMapFromFetchFilterData:(id)a3 withApplicationIdentifier:(id)a4;
+ (id)entityNameToPredicateMapWithApplicationIdentifier:(id)a3;
+ (id)fetchFilterIdentifierForApplicationIdentifier:(id)a3;
+ (id)fetchFilterIdentifierForConnectionAuthorization:(id)a3;
+ (id)fetchLimitedLibraryFetchFilterWithApplicationIdentifier:(id)a3 inManagedObjectContext:(id)a4;
+ (id)fetchOrCreateLimitedLibraryFetchFilterWithApplicationIdentifier:(id)a3 auditToken:(id *)a4 inManagedObjectContext:(id)a5;
+ (id)insertIntoManagedObjectContext:(id)a3 forApplicationIdentifier:(id)a4;
+ (void)deleteAllLimitedLibraryFetchFiltersInManagedObjectContext:(id)a3;
+ (void)deleteLimitedLibraryFetchFilterWithApplicationIdentifier:(id)a3 inManagedObjectContext:(id)a4;
- (BOOL)containsAssetWithUUID:(id)a3;
- (id)assetUUIDs;
- (id)debugDescription;
- (id)predicateForEntityName:(id)a3;
- (void)_loadAssetUUIDs;
- (void)addAssetsWithUUIDs:(id)a3;
- (void)removeAllAssets;
@end

@implementation PLLimitedLibraryFetchFilter

- (id)debugDescription
{
  v3 = objc_opt_class();
  v4 = [(PLLimitedLibraryFetchFilter *)self fetchFilterData];
  v5 = [v3 _assetUUIDStringsFromFetchFilterData:v4];

  v6 = [PLDescriptionBuilder prettyMultiLineDescriptionBuilderWithObject:self indent:0];
  v7 = [(PLLimitedLibraryFetchFilter *)self applicationIdentifier];
  [v6 appendName:@"applicationIdentifier" object:v7];

  v8 = [(PLLimitedLibraryFetchFilter *)self designatedRequirement];
  [v6 appendName:@"designatedRequirement" object:v8];

  [v6 appendName:@"assetUUIDs" object:v5];
  v9 = [v6 build];

  return v9;
}

- (void)_loadAssetUUIDs
{
  if (!self->_assetUUIDs)
  {
    v3 = objc_opt_class();
    v4 = [(PLLimitedLibraryFetchFilter *)self fetchFilterData];
    v5 = [v3 _decodeFetchFilterData:v4 withUUIDHandler:&__block_literal_global_89 resultHandler:&__block_literal_global_91];
    assetUUIDs = self->_assetUUIDs;
    self->_assetUUIDs = v5;

    if (!self->_assetUUIDs)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DFA0]);
      v8 = self->_assetUUIDs;
      self->_assetUUIDs = v7;
    }
  }
}

id __46__PLLimitedLibraryFetchFilter__loadAssetUUIDs__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithObjects:a2 count:a3];

  return v3;
}

id __46__PLLimitedLibraryFetchFilter__loadAssetUUIDs__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a2 length:16];

  return v2;
}

- (id)predicateForEntityName:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[PLManagedAsset entityName];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = [(PLLimitedLibraryFetchFilter *)self assetUUIDs];
    if (v7)
    {
      v8 = MEMORY[0x1E696AE18];
      v9 = @"uuid";
LABEL_8:
      [v8 predicateWithFormat:@"%K in %@", v9, v7];
      v14 = LABEL_9:;
LABEL_11:

      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v10 = +[PLInternalResource entityName];
  v11 = [v4 isEqualToString:v10];

  if (v11 || (+[PLAdditionalAssetAttributes entityName](PLAdditionalAssetAttributes, "entityName"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v4 isEqualToString:v12], v12, v13))
  {
    v7 = [(PLLimitedLibraryFetchFilter *)self assetUUIDs];
    if (v7)
    {
      v8 = MEMORY[0x1E696AE18];
      v9 = @"asset.uuid";
      goto LABEL_8;
    }

LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v16 = +[PLGenericAlbum entityName];
  v17 = [v4 isEqualToString:v16];

  if (v17)
  {
LABEL_19:
    v21 = MEMORY[0x1E696AE18];
    v7 = +[PLLimitedLibraryFetchFilter disallowedAlbumKinds];
    [v21 predicateWithFormat:@"NOT (%K IN %@)", @"kind", v7];
    goto LABEL_9;
  }

  v18 = +[PLFetchingAlbum entityName];
  if ([v4 isEqualToString:v18])
  {

    goto LABEL_19;
  }

  v19 = +[PLManagedAlbum entityName];
  v20 = [v4 isEqualToString:v19];

  if (v20)
  {
    goto LABEL_19;
  }

  v22 = PLBackendGetLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v24 = objc_opt_class();
    v25 = 2112;
    v26 = v4;
    _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "invalid enttity name for %@: %@", buf, 0x16u);
  }

  v14 = 0;
LABEL_12:

  return v14;
}

- (id)assetUUIDs
{
  v31[1] = *MEMORY[0x1E69E9840];
  [(PLLimitedLibraryFetchFilter *)self _loadAssetUUIDs];
  v3 = [(NSMutableOrderedSet *)self->_assetUUIDs count];
  if (!v3)
  {
    v14 = MEMORY[0x1E695E0F0];
    goto LABEL_22;
  }

  v4 = v3;
  v5 = objc_autoreleasePoolPush();
  if ((v4 & 0x8000000000000000) != 0)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v4];
    v27 = MEMORY[0x1E695DF30];
    v28 = MEMORY[0x1E695D920];
    goto LABEL_27;
  }

  v6 = v5;
  if (v4 >= 0x101)
  {
    v7 = 1;
  }

  else
  {
    v7 = v4;
  }

  v8 = 8 * v7;
  MEMORY[0x1EEE9AC00](v5);
  v10 = v31 - v9;
  bzero(v31 - v9, v8);
  v31[0] = v31;
  if (v4 < 0x101)
  {
    bzero(v10, 8 * v4);
    MEMORY[0x1EEE9AC00](v11);
    v12 = v31 - ((8 * v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v12, v8);
    bzero(v12, 8 * v4);
    v13 = v12;
    goto LABEL_12;
  }

  v15 = malloc_type_calloc(8uLL, v4, 0x80040B8603338uLL);
  if (!v15 || (v10 = v15, MEMORY[0x1EEE9AC00](v15), v13 = v30, bzero(v30, v8), (v16 = malloc_type_calloc(8uLL, v4, 0x80040B8603338uLL)) == 0))
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"*** attempt to create a temporary id buffer of length (%lu) failed", v4];
    v27 = MEMORY[0x1E695DF30];
    v28 = MEMORY[0x1E695DA18];
LABEL_27:
    v29 = [v27 exceptionWithName:*v28 reason:v26 userInfo:{0, v31[0]}];
    objc_exception_throw(v29);
  }

  v12 = v16;
LABEL_12:
  [(NSMutableOrderedSet *)self->_assetUUIDs getObjects:v10 range:0, v4, v31[0]];
  for (i = 0; i != v4; ++i)
  {
    v18 = MEMORY[0x1E696AFB0];
    v19 = *&v10[8 * i];
    v20 = [[v18 alloc] initWithUUIDBytes:{objc_msgSend(v19, "bytes")}];
    v21 = [v20 UUIDString];
    v22 = *&v12[8 * i];
    *&v12[8 * i] = v21;
  }

  v14 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v12 count:v4];
  if (v4 >= 0x101)
  {
    free(v10);
  }

  for (j = 0; j != v4; ++j)
  {
    v24 = *&v12[8 * j];
    *&v12[8 * j] = 0;
  }

  if (v4 >= 0x101)
  {
    free(v12);
  }

  do
  {

    v8 -= 8;
  }

  while (v8);
  objc_autoreleasePoolPop(v6);
LABEL_22:

  return v14;
}

- (BOOL)containsAssetWithUUID:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v4];
  if (v5)
  {
    [(PLLimitedLibraryFetchFilter *)self _loadAssetUUIDs];
    v10 = 0uLL;
    [v5 getUUIDBytes:&v10];
    v6 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:&v10 length:16 freeWhenDone:0];
    v7 = [(NSMutableOrderedSet *)self->_assetUUIDs containsObject:v6];
  }

  else
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v10) = 138543362;
      *(&v10 + 4) = v4;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "LimitedLibrary: invalid UUID string: %{public}@", &v10, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (void)addAssetsWithUUIDs:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    [(PLLimitedLibraryFetchFilter *)self _loadAssetUUIDs];
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __50__PLLimitedLibraryFetchFilter_addAssetsWithUUIDs___block_invoke;
    v13[3] = &unk_1E756F148;
    v13[4] = self;
    v14 = v4;
    v15 = &v16;
    [v14 enumerateObjectsUsingBlock:v13];
    if ((v17[3] & 1) == 0)
    {
      v5 = [MEMORY[0x1E695DF88] dataWithCapacity:{(16 * -[NSMutableOrderedSet count](self->_assetUUIDs, "count")) | 8}];
      [v5 appendBytes:"PLUUIDS0" length:8];
      assetUUIDs = self->_assetUUIDs;
      v8 = MEMORY[0x1E69E9820];
      v9 = 3221225472;
      v10 = __50__PLLimitedLibraryFetchFilter_addAssetsWithUUIDs___block_invoke_75;
      v11 = &unk_1E756F170;
      v7 = v5;
      v12 = v7;
      [(NSMutableOrderedSet *)assetUUIDs enumerateObjectsUsingBlock:&v8];
      [(PLLimitedLibraryFetchFilter *)self setFetchFilterData:v7, v8, v9, v10, v11];
    }

    _Block_object_dispose(&v16, 8);
  }
}

void __50__PLLimitedLibraryFetchFilter_addAssetsWithUUIDs___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = [v6 length];
  if (v7 < 0x25)
  {
    if (v7 != 36)
    {
      goto LABEL_15;
    }

    v8 = v6;
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = [v6 substringToIndex:36];
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  v9 = MEMORY[0x1E696AFB0];
  v10 = v8;
  v11 = [[v9 alloc] initWithUUIDString:v10];

  if (v11)
  {
    v15 = 0uLL;
    [v11 getUUIDBytes:&v15];
    v12 = [MEMORY[0x1E695DEF0] dataWithBytes:&v15 length:16];
  }

  else
  {
    v12 = 0;
  }

  if ([v12 length] == 16)
  {
    [*(a1[4] + 72) addObject:v12];
  }

  else
  {
    v13 = PLBackendGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = a1[5];
      LODWORD(v15) = 138543362;
      *(&v15 + 4) = v14;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "LimitedLibrary: uuids contains non-UUIDs: %{public}@", &v15, 0xCu);
    }

    *(*(a1[6] + 8) + 24) = 1;
    *a4 = 1;
  }

LABEL_15:
}

- (void)removeAllAssets
{
  assetUUIDs = self->_assetUUIDs;
  if (assetUUIDs)
  {
    [(NSMutableOrderedSet *)assetUUIDs removeAllObjects];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v5 = self->_assetUUIDs;
    self->_assetUUIDs = v4;
  }

  v6 = [MEMORY[0x1E695DEF0] data];
  [(PLLimitedLibraryFetchFilter *)self setFetchFilterData:v6];
}

+ (id)debugDescriptionOfCurrentLimitedLibraryFetchFiltersInManagedObjectContext:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 fetchRequest];
  v14 = 0;
  v6 = [v4 executeFetchRequest:v5 error:&v14];
  v7 = v14;
  v8 = [MEMORY[0x1E695DF70] array];
  if (!v6 || v7)
  {
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "LimitedLibrary: fetch request for fetch filters failed with error: %@", buf, 0xCu);
    }
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __105__PLLimitedLibraryFetchFilter_debugDescriptionOfCurrentLimitedLibraryFetchFiltersInManagedObjectContext___block_invoke;
    v11[3] = &unk_1E7578848;
    v12 = v6;
    v13 = v8;
    [v4 performBlockAndWait:v11];

    v9 = v12;
  }

  return v8;
}

void __105__PLLimitedLibraryFetchFilter_debugDescriptionOfCurrentLimitedLibraryFetchFiltersInManagedObjectContext___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __105__PLLimitedLibraryFetchFilter_debugDescriptionOfCurrentLimitedLibraryFetchFiltersInManagedObjectContext___block_invoke_2;
  v2[3] = &unk_1E756F198;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 enumerateObjectsUsingBlock:v2];
}

void __105__PLLimitedLibraryFetchFilter_debugDescriptionOfCurrentLimitedLibraryFetchFiltersInManagedObjectContext___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 debugDescription];
  [v2 addObject:v3];
}

+ (id)fetchFilterIdentifierForConnectionAuthorization:(id)a3
{
  v3 = a3;
  v4 = [v3 trustedCallerContainingBundleRecord];

  if (v4)
  {
    v5 = [v3 trustedCallerContainingBundleRecord];

    v6 = [v5 bundleIdentifier];
    v3 = v5;
  }

  else
  {
    v6 = [v3 trustedCallerBundleID];
  }

  return v6;
}

+ (id)fetchFilterIdentifierForApplicationIdentifier:(id)a3
{
  v3 = a3;
  v11 = 0;
  v4 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:v3 error:&v11];
  v5 = v4;
  if (v4 && ([v4 containingBundleRecord], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "bundleIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = [v5 containingBundleRecord];
    v9 = [v8 bundleIdentifier];
  }

  else
  {
    v9 = v3;
  }

  return v9;
}

+ (void)deleteAllLimitedLibraryFetchFiltersInManagedObjectContext:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 _fetchFiltersMatchingPredicate:0 sortDescriptors:0 limit:0 inManagedObjectContext:v4];
  v6 = [v5 count];
  v7 = PLBackendGetLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 134217984;
      v23 = [v5 count];
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "LimitedLibrary: batch deleting %lu LimitedLibraryFetchFilters", buf, 0xCu);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v5;
    v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v16 = v5;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = PLBackendGetLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v13 applicationIdentifier];
            *buf = 138412290;
            v23 = v15;
            _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "LimitedLibrary: deleting LimitedLibraryFetchFilter for applicationIdentifier: %@", buf, 0xCu);
          }

          [v4 deleteObject:v13];
        }

        v10 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
      v5 = v16;
    }
  }

  else if (v8)
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "LimitedLibrary: no LimitedLibraryFetchFilters to delete", buf, 2u);
  }
}

+ (void)deleteLimitedLibraryFetchFilterWithApplicationIdentifier:(id)a3 inManagedObjectContext:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [PLLimitedLibraryFetchFilter fetchLimitedLibraryFetchFilterWithApplicationIdentifier:v5 inManagedObjectContext:v6];
  if (v7)
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "LimitedLibrary: deleting LimitedLibraryFetchFilter for applicationIdentifier: %@", buf, 0xCu);
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __111__PLLimitedLibraryFetchFilter_deleteLimitedLibraryFetchFilterWithApplicationIdentifier_inManagedObjectContext___block_invoke;
    v9[3] = &unk_1E7578848;
    v10 = v6;
    v11 = v7;
    [v10 performBlockAndWait:v9];
  }
}

+ (id)_decodeFetchFilterData:(id)a3 withUUIDHandler:(id)a4 resultHandler:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7)
  {
    goto LABEL_10;
  }

  v10 = [MEMORY[0x1E695DEF0] data];

  if (v10 == v7)
  {
    goto LABEL_10;
  }

  v11 = [v7 length];
  v12 = [v7 bytes];
  v13 = v11 >= 8;
  v14 = v11 - 8;
  if (!v13 || (v15 = v12, *[v7 bytes] != 0x3053444955554C50) || (v14 & 0xF) != 0)
  {
    v16 = PLBackendGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "LimitedLibrary: data does not contain current valid PLLimitedLibraryFetchFilterData", buf, 2u);
    }

    goto LABEL_10;
  }

  if (!v14)
  {
LABEL_10:
    v17 = 0;
    goto LABEL_11;
  }

  v19 = v14 >> 4;
  v35 = &v33;
  v36 = objc_autoreleasePoolPush();
  if (v14 >> 4 >= 0x101)
  {
    v20 = 1;
  }

  else
  {
    v20 = v14 >> 4;
  }

  v21 = 8 * v20;
  v22 = &v33 - ((8 * v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v22, 8 * v20);
  v34 = v22;
  if (v19 > 0x100)
  {
    v22 = malloc_type_calloc(8uLL, v14 >> 4, 0x80040B8603338uLL);
    if (!v22)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"*** attempt to create a temporary id buffer of length (%lu) failed", v14 >> 4];
      v32 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
      objc_exception_throw(v32);
    }
  }

  else
  {
    bzero(v22, v14 >> 1);
  }

  v23 = 0;
  v24 = v15 + 8;
  if (v19 <= 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = v14 >> 4;
  }

  v26 = 8 * v25;
  do
  {
    v27 = v8[2](v8, v24);
    v28 = *&v22[v23];
    *&v22[v23] = v27;

    v24 += 16;
    v23 += 8;
  }

  while (v26 != v23);
  v17 = v9[2](v9, v22, v19);
  v29 = 0;
  do
  {
    v30 = *&v22[v29];
    *&v22[v29] = 0;

    v29 += 8;
  }

  while (v26 != v29);
  if (v19 >= 0x101)
  {
    free(v22);
  }

  v31 = v34 - 8;
  do
  {

    v21 -= 8;
  }

  while (v21);
  objc_autoreleasePoolPop(v36);
LABEL_11:

  return v17;
}

+ (id)entityNameToPredicateMapFromFetchFilterData:(id)a3 withApplicationIdentifier:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E695DF90];
  v8 = a4;
  v9 = [v7 dictionary];
  v10 = [a1 entityNameToPredicateMapWithApplicationIdentifier:v8];

  [v9 addEntriesFromDictionary:v10];
  if (v6)
  {
    v11 = [a1 _assetUUIDStringsFromFetchFilterData:v6];
    v12 = v11;
    if (v11 && [v11 count])
    {
      v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"uuid", v12];
      v14 = +[PLManagedAsset entityName];
      [v9 setObject:v13 forKeyedSubscript:v14];

      v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"asset.uuid", v12];
      v16 = +[PLInternalResource entityName];
      [v9 setObject:v15 forKeyedSubscript:v16];

      v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"asset.uuid", v12];
      v18 = +[PLAdditionalAssetAttributes entityName];
      [v9 setObject:v17 forKeyedSubscript:v18];
    }
  }

  return v9;
}

+ (id)entityNameToPredicateMapWithApplicationIdentifier:(id)a3
{
  v12[3] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[PLLimitedLibraryFetchFilter disallowedAlbumKinds];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@ OR NOT (%K IN %@)", @"importedByBundleIdentifier", v3, @"kind", v4];

  v6 = +[PLGenericAlbum entityName];
  v11[0] = v6;
  v12[0] = v5;
  v7 = +[PLManagedAlbum entityName];
  v11[1] = v7;
  v12[1] = v5;
  v8 = +[PLFetchingAlbum entityName];
  v11[2] = v8;
  v12[2] = v5;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v9;
}

id __68__PLLimitedLibraryFetchFilter__assetUUIDStringsFromFetchFilterData___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:a2 count:a3];

  return v3;
}

id __68__PLLimitedLibraryFetchFilter__assetUUIDStringsFromFetchFilterData___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:a2];
  v3 = [v2 UUIDString];

  return v3;
}

+ (id)_fetchFiltersMatchingPredicate:(id)a3 sortDescriptors:(id)a4 limit:(int64_t)a5 inManagedObjectContext:(id)a6
{
  v25 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a6;
  v12 = MEMORY[0x1E695D5E0];
  v13 = a3;
  v14 = [a1 entityName];
  v15 = [v12 fetchRequestWithEntityName:v14];

  [v15 setFetchBatchSize:100];
  [v15 setPredicate:v13];

  if (v10)
  {
    [v15 setSortDescriptors:v10];
  }

  if (a5 >= 1)
  {
    [v15 setFetchLimit:a5];
  }

  v22 = 0;
  v16 = [v11 executeFetchRequest:v15 error:&v22];
  v17 = v22;
  if (v16)
  {
    v19 = v16;
  }

  else
  {
    v18 = PLBackendGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v17;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "LimitedLibrary: failed to fetch suggestions: %@", buf, 0xCu);
    }

    v19 = [MEMORY[0x1E695DEC8] array];
  }

  v20 = v19;

  return v20;
}

+ (id)fetchLimitedLibraryFetchFilterWithApplicationIdentifier:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = MEMORY[0x1E696AE18];
  v7 = a4;
  v8 = [v6 predicateWithFormat:@"applicationIdentifier == %@", a3];
  v9 = [a1 _fetchFiltersMatchingPredicate:v8 sortDescriptors:0 limit:1 inManagedObjectContext:v7];

  v10 = [v9 firstObject];

  return v10;
}

+ (id)fetchOrCreateLimitedLibraryFetchFilterWithApplicationIdentifier:(id)a3 auditToken:(id *)a4 inManagedObjectContext:(id)a5
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a5;
  v8 = [PLLimitedLibraryFetchFilter fetchLimitedLibraryFetchFilterWithApplicationIdentifier:v6 inManagedObjectContext:v7];
  if (!v8)
  {
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Creating limited library fetch filter for %@ since one does not exist", &v11, 0xCu);
    }

    v8 = [PLLimitedLibraryFetchFilter insertIntoManagedObjectContext:v7 forApplicationIdentifier:v6];
  }

  return v8;
}

+ (id)insertIntoManagedObjectContext:(id)a3 forApplicationIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 entityName];
  v9 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v8, v7, 0);

  if (v9)
  {
    [v9 setApplicationIdentifier:v6];
    v10 = [MEMORY[0x1E695DEF0] data];
    [v9 setFetchFilterData:v10];
  }

  return v9;
}

@end