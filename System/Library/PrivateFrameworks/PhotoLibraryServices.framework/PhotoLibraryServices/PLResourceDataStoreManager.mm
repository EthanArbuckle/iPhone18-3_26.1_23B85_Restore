@interface PLResourceDataStoreManager
+ (id)storeExternalResources:(id)resources forAsset:(id)asset forLifecycleEvent:(unsigned int)event error:(id *)error;
+ (id)storeForExternalResource:(id)resource inLibraryWithID:(id)d;
+ (id)storesForLibraryID:(id)d;
+ (id)updateDerivativeResourcesForAsset:(id)asset forLifecycleEvent:(unsigned int)event;
@end

@implementation PLResourceDataStoreManager

+ (id)storeExternalResources:(id)resources forAsset:(id)asset forLifecycleEvent:(unsigned int)event error:(id *)error
{
  v7 = *&event;
  v89 = *MEMORY[0x1E69E9840];
  resourcesCopy = resources;
  assetCopy = asset;
  v12 = assetCopy;
  if (!resourcesCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceDataStoreManager.m" lineNumber:192 description:{@"Invalid parameter not satisfying: %@", @"externalResources"}];

    if (v12)
    {
      goto LABEL_3;
    }

LABEL_50:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLResourceDataStoreManager.m" lineNumber:193 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    goto LABEL_3;
  }

  if (!assetCopy)
  {
    goto LABEL_50;
  }

LABEL_3:
  v13 = [MEMORY[0x1E695DFA8] set];
  assetID = [v12 assetID];
  libraryID = [assetID libraryID];

  context = objc_autoreleasePoolPush();
  v16 = PLImageManagerGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    uuid = [v12 uuid];
    *buf = 138412290;
    v85 = uuid;
    _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEBUG, "[RM]: Storing external resources for asset: %@", buf, 0xCu);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v18 = resourcesCopy;
  v19 = &OBJC_INSTANCE_METHODS_PLSyncContext;
  v63 = [v18 countByEnumeratingWithState:&v75 objects:v88 count:16];
  v64 = libraryID;
  v61 = v18;
  if (!v63)
  {

    goto LABEL_33;
  }

  errorCopy = error;
  v20 = 0;
  v62 = *v76;
  v60 = *MEMORY[0x1E69BFF70];
  v59 = *MEMORY[0x1E696A578];
  v21 = v18;
  while (2)
  {
    v65 = v20;
    for (i = 0; i != v63; ++i)
    {
      if (*v76 != v62)
      {
        objc_enumerationMutation(v21);
      }

      v23 = *(*(&v75 + 1) + 8 * i);
      v24 = [self storeForExternalResource:v23 inLibraryWithID:libraryID];
      if (!v24)
      {
        v41 = MEMORY[0x1E696ABC0];
        v80 = v59;
        v81 = @"Failed to find a store for a resource.";
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
        v43 = [v41 errorWithDomain:v60 code:2 userInfo:v42];

        v20 = v43;
        goto LABEL_30;
      }

      v25 = v24;
      v26 = objc_alloc_init(PLResourceDataStoreOptions);
      v27 = v26;
      if (v7 == 1)
      {
        v28 = 1;
      }

      else
      {
        if (v7 != 2)
        {
          goto LABEL_16;
        }

        v28 = 0;
      }

      [(PLResourceDataStoreOptions *)v26 setAssumeNoExistingResources:v28];
LABEL_16:
      v29 = PLImageManagerGetLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v85 = v23;
        v86 = 2112;
        v87 = v25;
        _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_DEBUG, "[RM]: Storing external resource: %@ in store: %@...", buf, 0x16u);
      }

      v30 = PLImageManagerGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        [v23 fileURL];
        v31 = v21;
        v33 = v32 = v27;
        *buf = 138412290;
        v85 = v33;
        _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEBUG, "[RM]:   resource url: %@", buf, 0xCu);

        v27 = v32;
        v21 = v31;
        libraryID = v64;
      }

      v73 = 0;
      v74 = 0;
      v67 = v27;
      v34 = [v25 storeExternalResource:v23 forAsset:v12 options:v27 error:&v74 resultingResource:&v73];
      v35 = v74;
      v36 = v73;
      v37 = v36;
      if (v34)
      {
        [v36 setAsset:v12];
        [v13 addObject:v37];
      }

      else
      {
        v38 = MEMORY[0x1E696ABC0];
        v82 = v59;
        v83 = @"Failed while storing a resource.";
        v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
        v40 = [v38 errorWithDomain:v60 code:3 userInfo:v39];

        v37 = v39;
        v21 = v61;
        v65 = v40;
        libraryID = v64;
      }

      if (!v34)
      {
        v20 = v65;
        goto LABEL_30;
      }
    }

    v20 = v65;
    v63 = [v21 countByEnumeratingWithState:&v75 objects:v88 count:16];
    if (v63)
    {
      continue;
    }

    break;
  }

LABEL_30:

  v19 = &OBJC_INSTANCE_METHODS_PLSyncContext;
  if (v20)
  {
    objc_autoreleasePoolPop(context);
    if (errorCopy)
    {
      v44 = v20;
      v45 = 0;
      *errorCopy = v20;
    }

    else
    {
      v45 = 0;
    }

    goto LABEL_45;
  }

LABEL_33:
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v46 = [self storesForLibraryID:libraryID];
  v47 = [v46 countByEnumeratingWithState:&v69 objects:v79 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v70;
    v68 = v19[470];
    do
    {
      for (j = 0; j != v48; ++j)
      {
        if (*v70 != v49)
        {
          objc_enumerationMutation(v46);
        }

        v51 = *(*(&v69 + 1) + 8 * j);
        v52 = [v51 updateDerivativeResourcesForAsset:v12 forLifecycleEvent:v7];
        [v13 unionSet:v52];
        if ([v52 count])
        {
          v53 = PLImageManagerGetLog();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
          {
            *buf = v68;
            v85 = v52;
            v86 = 2112;
            v87 = v51;
            _os_log_impl(&dword_19BF1F000, v53, OS_LOG_TYPE_DEBUG, "[RM]: Produced derivative resources: %@ for store: %@", buf, 0x16u);
          }
        }
      }

      v48 = [v46 countByEnumeratingWithState:&v69 objects:v79 count:16];
    }

    while (v48);
  }

  objc_autoreleasePoolPop(context);
  v45 = v13;
  v20 = 0;
  libraryID = v64;
  v21 = v61;
LABEL_45:

  return v45;
}

+ (id)updateDerivativeResourcesForAsset:(id)asset forLifecycleEvent:(unsigned int)event
{
  v4 = *&event;
  v24 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceDataStoreManager.m" lineNumber:176 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v8 = [MEMORY[0x1E695DFA8] set];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  assetID = [assetCopy assetID];
  libraryID = [assetID libraryID];
  v11 = [self storesForLibraryID:libraryID];

  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v19 + 1) + 8 * i) updateDerivativeResourcesForAsset:assetCopy forLifecycleEvent:v4];
        [v8 unionSet:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  return v8;
}

+ (id)storeForExternalResource:(id)resource inLibraryWithID:(id)d
{
  v21 = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  dCopy = d;
  if (!resourceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceDataStoreManager.m" lineNumber:160 description:{@"Invalid parameter not satisfying: %@", @"resource"}];
  }

  [self storesForLibraryID:dCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v19 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 canStoreExternalResource:resourceCopy])
        {
          v10 = v13;
          goto LABEL_13;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v10;
}

+ (id)storesForLibraryID:(id)d
{
  v33 = *MEMORY[0x1E69E9840];
  dCopy = d;
  os_unfair_lock_lock(&s_lock);
  if (!storesForLibraryID__defaultStoreClassIDs)
  {
    v4 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F0FBAE40, &unk_1F0FBAE58, &unk_1F0FBAE70, &unk_1F0FBAE88, 0}];
    v5 = storesForLibraryID__defaultStoreClassIDs;
    storesForLibraryID__defaultStoreClassIDs = v4;
  }

  v6 = [s_dataStoresByClassIDByLibraryID objectForKeyedSubscript:dCopy];
  allValues = [v6 allValues];
  os_unfair_lock_unlock(&s_lock);
  v8 = [allValues count];
  if (v8 < [storesForLibraryID__defaultStoreClassIDs count])
  {
    if (!allValues)
    {
      allValues = MEMORY[0x1E695E0F0];
    }

    v9 = [storesForLibraryID__defaultStoreClassIDs mutableCopy];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    allValues = allValues;
    v10 = [allValues countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(allValues);
          }

          v14 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(objc_opt_class(), "storeClassID")}];
          [v9 removeObject:v14];
        }

        v11 = [allValues countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v11);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = v9;
    v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = PLDataStoreForClassIDAndLibraryID([*(*(&v23 + 1) + 8 * j) integerValue], dCopy);
          if (v20)
          {
            v21 = [allValues arrayByAddingObject:v20];

            allValues = v21;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v17);
    }
  }

  return allValues;
}

@end