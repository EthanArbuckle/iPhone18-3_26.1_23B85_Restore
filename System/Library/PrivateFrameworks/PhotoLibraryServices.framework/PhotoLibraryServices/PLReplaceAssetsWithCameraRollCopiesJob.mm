@interface PLReplaceAssetsWithCameraRollCopiesJob
+ (void)replaceAssets:(id)assets withCameraRollCopiesInAlbum:(id)album;
- (NSPersistentStoreCoordinator)coordinator;
- (PLManagedObjectContext)managedObjectContext;
- (PLReplaceAssetsWithCameraRollCopiesJob)initWithPhotoLibrary:(id)library;
- (id)_cameraRollAssetDerivedFromAsset:(id)asset;
- (id)initFromXPCObject:(id)object libraryServicesManager:(id)manager;
- (void)dealloc;
- (void)encodeToXPCObject:(id)object;
- (void)run;
- (void)runDaemonSide;
@end

@implementation PLReplaceAssetsWithCameraRollCopiesJob

- (id)_cameraRollAssetDerivedFromAsset:(id)asset
{
  v19[2] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  managedObjectContext = [assetCopy managedObjectContext];
  v5 = MEMORY[0x1E695D5E0];
  v6 = +[PLManagedAsset entityName];
  v7 = [v5 fetchRequestWithEntityName:v6];

  [v7 setFetchLimit:1];
  v8 = MEMORY[0x1E696AB28];
  v9 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForCameraAsset"), 1}];
  v19[0] = v9;
  v10 = MEMORY[0x1E696AE18];
  dateCreated = [assetCopy dateCreated];

  v12 = [v10 predicateWithFormat:@"%K == %@", @"dateCreated", dateCreated];
  v19[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v14 = [v8 andPredicateWithSubpredicates:v13];

  [v7 setPredicate:v14];
  v18 = 0;
  v15 = [managedObjectContext executeFetchRequest:v7 error:&v18];
  if ([v15 count])
  {
    lastObject = [v15 lastObject];
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

- (void)runDaemonSide
{
  photoLibrary = [(PLReplaceAssetsWithCameraRollCopiesJob *)self photoLibrary];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__PLReplaceAssetsWithCameraRollCopiesJob_runDaemonSide__block_invoke;
  v6[3] = &unk_1E7578848;
  v7 = photoLibrary;
  selfCopy = self;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__PLReplaceAssetsWithCameraRollCopiesJob_runDaemonSide__block_invoke_74;
  v5[3] = &unk_1E75781E8;
  v5[4] = self;
  v4 = photoLibrary;
  [v4 performTransaction:v6 completionHandler:v5];
}

void __55__PLReplaceAssetsWithCameraRollCopiesJob_runDaemonSide__block_invoke(uint64_t a1)
{
  v66 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) pathManager];
  v3 = [v2 isUBF];

  v40 = v3;
  if (v3)
  {
    v39 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) pathManager];
    v39 = [v4 simpleDCIMDirectory];
  }

  v5 = objc_alloc_init(MEMORY[0x1E696AC08]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__PLReplaceAssetsWithCameraRollCopiesJob_runDaemonSide__block_invoke_2;
  aBlock[3] = &unk_1E7570B08;
  v38 = v5;
  v58 = v38;
  v41 = _Block_copy(aBlock);
  v6 = [*(a1 + 40) album];
  v45 = [v6 mutableAssets];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = [*(a1 + 40) assets];
  v46 = [obj countByEnumeratingWithState:&v53 objects:v65 count:16];
  if (v46)
  {
    v44 = *v54;
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v54 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v53 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v10 = [*(a1 + 40) _cameraRollAssetDerivedFromAsset:v8];
        if (v10)
        {
          goto LABEL_10;
        }

        v14 = [v8 mainFileURL];
        if (v14)
        {
          v15 = [MEMORY[0x1E696AFB0] UUID];
          v16 = [v15 UUIDString];

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v62 = __Block_byref_object_copy__69991;
          v63 = __Block_byref_object_dispose__69992;
          v64 = 0;
          if (v40)
          {
            *v59 = 0;
            *&v59[8] = v59;
            *&v59[16] = 0x2020000000;
            v60 = 0;
            v17 = objc_alloc(MEMORY[0x1E69BF298]);
            v18 = [v8 uniformTypeIdentifier];
            v19 = [v8 originalFilename];
            v20 = [v17 initWithAssetUuid:v16 bundleScope:0 uti:v18 resourceVersion:0 resourceType:31 recipeID:0 originalFilename:v19 customSuffix:0];

            v21 = [*(a1 + 32) pathManager];
            v48[0] = MEMORY[0x1E69E9820];
            v48[1] = 3221225472;
            v48[2] = __55__PLReplaceAssetsWithCameraRollCopiesJob_runDaemonSide__block_invoke_70;
            v48[3] = &unk_1E7570B30;
            v51 = buf;
            v52 = v59;
            v50 = v41;
            v49 = v14;
            [v21 obtainAccessAndWaitWithFileWithIdentifier:v20 mode:2 toURLWithHandler:v48];

            LOBYTE(v21) = *(*&v59[8] + 24);
            _Block_object_dispose(v59, 8);
            if ((v21 & 1) == 0)
            {
              goto LABEL_17;
            }

LABEL_23:
            if ([v8 isPhotoStreamPhoto] && objc_msgSend(v8, "visibilityState") != 2)
            {
              v42 = [v8 publicGlobalUUID];
            }

            else
            {
              v42 = 0;
            }

            LOBYTE(v37) = 0;
            LOBYTE(v36) = 0;
            v10 = [*(a1 + 32) addDCIMEntryAtFileURL:*(*&buf[8] + 40) mainFileMetadata:0 previewImage:0 thumbnailImage:0 savedAssetType:objc_msgSend(MEMORY[0x1E69BF328] replacementUUID:"savedAssetTypeForCameraAsset") publicGlobalUUID:0 extendedInfo:v42 withUUID:0 isPlaceholder:v16 placeholderFileURL:v36 forFinalCameraImage:{0, v37}];
            if (v10)
            {
              v27 = [v8 dateCreated];
              [v10 setDateCreated:v27];

              v28 = [v10 dateCreated];
              [v28 timeIntervalSinceReferenceDate];
              [v10 setSortToken:?];

              if ([v8 isPhotoStreamPhoto])
              {
                v29 = [v8 originalHash];
                if (v29)
                {
                  [v10 setOriginalHash:v29];
                }

                if ([v8 visibilityState] != 2)
                {
                  [v8 setVisibilityState:2];
                }
              }

              v30 = v10;
              v47 = 0;
              v31 = [PLResourceInstaller installInternalResourcesForExistingAsset:v30 assumeNoExistingResources:0 referencedResourceURLs:0 error:&v47];
              v32 = v47;
              if (!v31)
              {
                v33 = PLBackendGetLog();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                {
                  *v59 = 138412546;
                  *&v59[4] = v30;
                  *&v59[12] = 2112;
                  *&v59[14] = v32;
                  _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "Failed to install resources for asset: %@, reason: %@", v59, 0x16u);
                }
              }
            }

            else
            {
              v34 = PLBackendGetLog();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                v35 = [*(*&buf[8] + 40) path];
                *v59 = 138412290;
                *&v59[4] = v35;
                _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "Failed to add file %@ to camera roll.", v59, 0xCu);
              }

              [v38 removeItemAtURL:*(*&buf[8] + 40) error:0];
            }

            v22 = 1;
          }

          else
          {
            v24 = [v14 pathExtension];
            v25 = [v39 nextAvailableFileURLWithExtension:v24];
            v26 = *(*&buf[8] + 40);
            *(*&buf[8] + 40) = v25;

            if ((*(v41 + 2))(v41, v14, *(*&buf[8] + 40)))
            {
              goto LABEL_23;
            }

LABEL_17:
            v22 = 0;
            v10 = 0;
          }

          _Block_object_dispose(buf, 8);

          if ((v22 & 1) == 0 || !v10)
          {
            goto LABEL_45;
          }

LABEL_10:
          v11 = [v45 indexOfObject:v8];
          if (v11 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v12 = PLBackendGetLog();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              v13 = [*(a1 + 40) album];
              *buf = 138412546;
              *&buf[4] = v8;
              *&buf[12] = 2112;
              *&buf[14] = v13;
              _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Asset to replace not found in album. Asset: %@\nAlbum: %@", buf, 0x16u);
            }
          }

          else
          {
            [v45 replaceObjectAtIndex:v11 withObject:v10];
          }

          goto LABEL_45;
        }

        v23 = PLBackendGetLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v8;
          _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Cannot copy asset to Camera Roll because it doesn't have a file URL. %@", buf, 0xCu);
        }

        v10 = 0;
LABEL_45:

        objc_autoreleasePoolPop(v9);
      }

      v46 = [obj countByEnumeratingWithState:&v53 objects:v65 count:16];
    }

    while (v46);
  }
}

id __55__PLReplaceAssetsWithCameraRollCopiesJob_runDaemonSide__block_invoke_74(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = PLReplaceAssetsWithCameraRollCopiesJob;
  return objc_msgSendSuper2(&v2, sel_runDaemonSide);
}

uint64_t __55__PLReplaceAssetsWithCameraRollCopiesJob_runDaemonSide__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v14 = 0;
  v8 = [v7 copyItemAtURL:v5 toURL:v6 error:&v14];
  v9 = v14;
  if ((v8 & 1) == 0)
  {
    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v5 path];
      v12 = [v6 path];
      *buf = 138412802;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Failed to copy file %@ to %@: %@", buf, 0x20u);
    }
  }

  return v8;
}

void __55__PLReplaceAssetsWithCameraRollCopiesJob_runDaemonSide__block_invoke_70(void *a1, void *a2)
{
  objc_storeStrong((*(a1[6] + 8) + 40), a2);
  v4 = a2;
  *(*(a1[7] + 8) + 24) = (*(a1[5] + 16))();
}

- (id)initFromXPCObject:(id)object libraryServicesManager:(id)manager
{
  v29 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v24.receiver = self;
  v24.super_class = PLReplaceAssetsWithCameraRollCopiesJob;
  v7 = [(PLDaemonJob *)&v24 initFromXPCObject:objectCopy libraryServicesManager:manager];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_5;
  }

  libraryServicesManager = [v7 libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v11 = [databaseContext newShortLivedLibraryWithName:"-[PLReplaceAssetsWithCameraRollCopiesJob initFromXPCObject:libraryServicesManager:]"];
  v12 = v8[10];
  v8[10] = v11;

  v13 = xpc_dictionary_get_value(objectCopy, "assetsIDs");
  v14 = xpc_dictionary_get_value(objectCopy, "albumID");
  v15 = v14;
  if (v13 && v14)
  {
    v16 = v8[10];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __83__PLReplaceAssetsWithCameraRollCopiesJob_initFromXPCObject_libraryServicesManager___block_invoke;
    v20[3] = &unk_1E75761B8;
    v21 = v8;
    v22 = v13;
    v23 = v15;
    [v16 performBlock:v20];

LABEL_5:
    v17 = v8;
    goto LABEL_9;
  }

  v18 = PLBackendGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218240;
    v26 = v15;
    v27 = 2048;
    v28 = v13;
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Error initializing job object. AlbumID: %p, AssetIDs %p", buf, 0x16u);
  }

  v17 = 0;
LABEL_9:

  return v17;
}

void __83__PLReplaceAssetsWithCameraRollCopiesJob_initFromXPCObject_libraryServicesManager___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) coordinator];
  v3 = [MEMORY[0x1E695DF70] array];
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 3221225472;
  applier[2] = __83__PLReplaceAssetsWithCameraRollCopiesJob_initFromXPCObject_libraryServicesManager___block_invoke_2;
  applier[3] = &unk_1E7570AE0;
  v11 = v2;
  v4 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = v3;
  v5 = v3;
  v6 = v2;
  xpc_array_apply(v4, applier);
  [*(a1 + 32) setAssets:v5];
  v7 = PLManagedObjectIDFromXPCValue();
  v8 = [*(a1 + 32) managedObjectContext];
  v9 = [v8 objectWithID:v7];

  [*(a1 + 32) setAlbum:v9];
}

uint64_t __83__PLReplaceAssetsWithCameraRollCopiesJob_initFromXPCObject_libraryServicesManager___block_invoke_2(uint64_t a1)
{
  v2 = PLManagedObjectIDFromXPCValue();
  if (v2)
  {
    v3 = [*(a1 + 40) managedObjectContext];
    v4 = [v3 objectWithID:v2];

    if (v4)
    {
      [*(a1 + 48) addObject:v4];
    }
  }

  return 1;
}

- (void)encodeToXPCObject:(id)object
{
  v20 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v18.receiver = self;
  v18.super_class = PLReplaceAssetsWithCameraRollCopiesJob;
  [(PLDaemonJob *)&v18 encodeToXPCObject:objectCopy];
  v5 = xpc_array_create(0, 0);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  assets = [(PLReplaceAssetsWithCameraRollCopiesJob *)self assets];
  v7 = [assets countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(assets);
        }

        objectID = [*(*(&v14 + 1) + 8 * v10) objectID];
        PLXPCArrayAppendManagedObjectID();

        ++v10;
      }

      while (v8 != v10);
      v8 = [assets countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }

  xpc_dictionary_set_value(objectCopy, "assetsIDs", v5);
  album = [(PLReplaceAssetsWithCameraRollCopiesJob *)self album];
  objectID2 = [album objectID];
  PLXPCDictionarySetManagedObjectID();
}

- (void)run
{
  assets = [(PLReplaceAssetsWithCameraRollCopiesJob *)self assets];
  album = [(PLReplaceAssetsWithCameraRollCopiesJob *)self album];
  if (assets)
  {
    if (album)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLReplaceAssetsWithCameraRollCopiesJob.m" lineNumber:86 description:@"assets cannot be nil when starting the job"];

    if (album)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLReplaceAssetsWithCameraRollCopiesJob.m" lineNumber:87 description:@"album cannot be nil when starting the job"];

LABEL_3:
  [(PLDaemonJob *)self sendToAssetsd];
}

- (NSPersistentStoreCoordinator)coordinator
{
  managedObjectContext = [(PLReplaceAssetsWithCameraRollCopiesJob *)self managedObjectContext];
  persistentStoreCoordinator = [managedObjectContext persistentStoreCoordinator];

  return persistentStoreCoordinator;
}

- (PLManagedObjectContext)managedObjectContext
{
  photoLibrary = [(PLReplaceAssetsWithCameraRollCopiesJob *)self photoLibrary];
  managedObjectContext = [photoLibrary managedObjectContext];

  return managedObjectContext;
}

- (void)dealloc
{
  assets = self->_assets;
  self->_assets = 0;

  album = self->_album;
  self->_album = 0;

  photoLibrary = self->_photoLibrary;
  self->_photoLibrary = 0;

  v6.receiver = self;
  v6.super_class = PLReplaceAssetsWithCameraRollCopiesJob;
  [(PLReplaceAssetsWithCameraRollCopiesJob *)&v6 dealloc];
}

- (PLReplaceAssetsWithCameraRollCopiesJob)initWithPhotoLibrary:(id)library
{
  libraryBundle = [library libraryBundle];
  assetsdClient = [libraryBundle assetsdClient];
  v8.receiver = self;
  v8.super_class = PLReplaceAssetsWithCameraRollCopiesJob;
  v6 = [(PLDaemonJob *)&v8 initWithAssetsdClient:assetsdClient];

  return v6;
}

+ (void)replaceAssets:(id)assets withCameraRollCopiesInAlbum:(id)album
{
  assetsCopy = assets;
  albumCopy = album;
  v7 = [assetsCopy count];
  if (albumCopy && v7)
  {
    v8 = [self alloc];
    photoLibrary = [albumCopy photoLibrary];
    v10 = [v8 initWithPhotoLibrary:photoLibrary];

    [v10 setAlbum:albumCopy];
    [v10 setAssets:assetsCopy];
    [v10 run];
  }
}

@end