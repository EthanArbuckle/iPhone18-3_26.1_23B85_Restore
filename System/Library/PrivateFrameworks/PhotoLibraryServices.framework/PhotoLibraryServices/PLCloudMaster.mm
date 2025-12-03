@interface PLCloudMaster
+ (PLCloudMaster)cloudMasterWithGUID:(id)d inShare:(id)share prefetchResources:(BOOL)resources inManagedObjectContext:(id)context;
+ (PLCloudMaster)cloudMasterWithScopedIdentifier:(id)identifier prefetchResources:(BOOL)resources inLibrary:(id)library;
+ (id)_originalTypes;
+ (id)cloudMastersByScopedIdentifiers:(id)identifiers relationshipKeyPathsForPrefetching:(id)prefetching inLibrary:(id)library;
+ (id)cloudMastersWithScopedIdentifiers:(id)identifiers relationshipKeyPathsForPrefetching:(id)prefetching inLibrary:(id)library;
+ (id)insertIntoManagedObjectContext:(id)context withCloudMasterGUID:(id)d inShare:(id)share;
+ (id)insertIntoPhotoLibrary:(id)library withCloudMasterGUID:(id)d inShare:(id)share;
+ (id)listOfSyncedProperties;
+ (unint64_t)fullSizeJPEGSourceForUTI:(id)i andImageDimensions:(CGSize)dimensions;
+ (void)deleteAllCloudMastersInManagedObjectContext:(id)context;
+ (void)deleteMasterIfNecessary:(id)necessary inLibrary:(id)library;
+ (void)deleteOrphanedMastersWithManagedObjectContext:(id)context;
+ (void)resetCloudMastersStateInManagedObjectContext:(id)context;
- (BOOL)allOriginalsAreLocallyAvailableForAssetUuid:(id)uuid useOriginalAltInsteadOfOriginal:(BOOL)original;
- (BOOL)allOriginalsAreUploaded;
- (BOOL)hasResourcesOtherThanForAssetUuid:(id)uuid;
- (BOOL)isSyncableChange;
- (CPLScopedIdentifier)sourceMasterForDuplicationCPLScopedIdentifier;
- (NSString)description;
- (id)allAssetAttachedResources;
- (id)cplFullRecord;
- (id)cplMasterPropertyChangeForAsset:(id)asset;
- (id)cplPropertyRecord;
- (id)fingerprintContext;
- (id)fingerprintScheme;
- (id)originalFilenameForResourceType:(unint64_t)type filePath:(id)path;
- (id)payloadID;
- (id)payloadsForChangedKeys:(id)keys;
- (id)rm_applyResourcesFromCPLMasterChange:(id)change inPhotoLibrary:(id)library;
- (id)rm_assetAttachedResourceForResourceType:(unint64_t)type forAssetUuid:(id)uuid;
- (id)rm_assetAttachedResourcesForResourceType:(unint64_t)type;
- (id)rm_assetUUIDToAssetAttachedResources;
- (id)rm_cloudResourcesForResourceType:(unint64_t)type;
- (id)rm_transientCloudResourceForResourceType:(unint64_t)type;
- (id)scopeIdentifier;
- (id)scopedIdentifier;
- (id)shareRelationship;
- (id)stableHashFromOriginalResourceError:(id *)error;
- (unint64_t)sizeOfOriginal;
- (void)_promptForNilScopeIdentifierRadar;
- (void)applyPropertiesFromCPLMasterChange:(id)change;
- (void)awakeFromInsert;
- (void)rm_applyExpungeableResourceStatesFromCPLMasterChange:(id)change inPhotoLibrary:(id)library;
- (void)setSourceMasterForDuplicationCPLScopedIdentifier:(id)identifier;
- (void)updateImportedByBundleIdentifier:(id)identifier;
- (void)updateImportedByDisplayName:(id)name;
@end

@implementation PLCloudMaster

- (void)rm_applyExpungeableResourceStatesFromCPLMasterChange:(id)change inPhotoLibrary:(id)library
{
  v35 = *MEMORY[0x1E69E9840];
  [change expungeableResourceStates];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v28 = 0u;
  v19 = [obj countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v19)
  {
    v17 = *v26;
    v4 = MEMORY[0x1E6994D48];
    do
    {
      v5 = 0;
      do
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v20 = v5;
        v6 = *(*(&v25 + 1) + 8 * v5);
        v7 = -[PLCloudMaster rm_cloudResourcesForResourceType:](self, "rm_cloudResourcesForResourceType:", [v6 resourceType]);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v8 = [v7 countByEnumeratingWithState:&v21 objects:v33 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v22;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v22 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v21 + 1) + 8 * i);
              if ((*v4 & 1) == 0)
              {
                v13 = __CPLAssetsdOSLogDomain();
                if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v30 = v6;
                  v31 = 2112;
                  v32 = v12;
                  _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Setting CPLExpungeableResourceState %@ on resource %@", buf, 0x16u);
                }
              }

              v14 = +[PLInternalResource plTrashedStateForCPLExpungedState:](PLInternalResource, "plTrashedStateForCPLExpungedState:", [v6 expungedState]);
              expungedDate = [v6 expungedDate];
              [v12 applyTrashedState:v14 trashedDate:expungedDate];
            }

            v9 = [v7 countByEnumeratingWithState:&v21 objects:v33 count:16];
          }

          while (v9);
        }

        v5 = v20 + 1;
      }

      while (v20 + 1 != v19);
      v19 = [obj countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v19);
  }
}

- (id)rm_applyResourcesFromCPLMasterChange:(id)change inPhotoLibrary:(id)library
{
  v140 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  libraryCopy = library;
  [MEMORY[0x1E696AC08] defaultManager];
  v97 = v96 = changeCopy;
  v9 = changeCopy;
  v10 = libraryCopy;
  resources = [v9 resources];
  v94 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  pathManager = [v10 pathManager];

  if (!pathManager)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCloudMaster+RM.m" lineNumber:129 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary.pathManager"}];
  }

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  obj = resources;
  v13 = [obj countByEnumeratingWithState:&v123 objects:v139 count:16];
  selfCopy = self;
  v102 = v10;
  if (!v13)
  {
    v90 = 0;
    v103 = 0;
    LOBYTE(v106) = 0;
    goto LABEL_109;
  }

  v14 = v13;
  v90 = 0;
  v103 = 0;
  v106 = 0;
  v15 = *v124;
  v87 = *v124;
  do
  {
    v16 = 0;
    v88 = v14;
    do
    {
      if (*v124 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v123 + 1) + 8 * v16);
      context = objc_autoreleasePoolPush();
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v18 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v128 = v17;
          _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEBUG, "Master resource: %@", buf, 0xCu);
        }
      }

      v92 = v16;
      resourceType = [v17 resourceType];
      if (resourceType == 22 && ([v17 identity], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "fileUTI"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E69C08F0], "supplementalResourceAAEType"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "identifier"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v21, "isEqualToString:", v23), v23, v22, v21, v20, !v24))
      {
        v54 = v92;
      }

      else
      {
        v25 = selfCopy;
        v26 = [(PLCloudMaster *)selfCopy rm_assetAttachedResourcesForResourceType:resourceType];
        if ([v26 count])
        {
          v117 = 0u;
          v118 = 0u;
          v115 = 0u;
          v116 = 0u;
          rm_assetUUIDToAssetAttachedResources = v26;
          v27 = [rm_assetUUIDToAssetAttachedResources countByEnumeratingWithState:&v115 objects:v137 count:16];
          if (v27)
          {
            v28 = v27;
            v89 = v26;
            v104 = *v116;
            while (1)
            {
              for (i = 0; i != v28; ++i)
              {
                if (*v116 != v104)
                {
                  objc_enumerationMutation(rm_assetUUIDToAssetAttachedResources);
                }

                v30 = *(*(&v115 + 1) + 8 * i);
                identity = [v17 identity];
                fingerprint = [v30 fingerprint];
                fingerPrint = [identity fingerPrint];
                if ([fingerprint isEqualToString:fingerPrint])
                {
                  placeholderState = [(PLCloudMaster *)v25 placeholderState];

                  if (placeholderState != 1)
                  {
                    if ([v30 cloudLocalState] != 3)
                    {
                      if ((*MEMORY[0x1E6994D48] & 1) == 0)
                      {
                        v35 = __CPLAssetsdOSLogDomain();
                        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412290;
                          v128 = v30;
                          _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_DEFAULT, "Marking master local resource %@ as uploaded", buf, 0xCu);
                        }
                      }

                      [v30 setCloudLocalState:3];
                      [v30 setRemoteAvailability:{objc_msgSend(identity, "isAvailable")}];
                      if (![v30 remoteAvailability] && (*MEMORY[0x1E6994D48] & 1) == 0)
                      {
                        v36 = __CPLAssetsdOSLogDomain();
                        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412290;
                          v128 = v30;
                          _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_ERROR, "Existing master resource marked as unavailable on pull: %@", buf, 0xCu);
                        }
                      }
                    }

                    if ([v30 isLocallyAvailable])
                    {
                      [v94 addObject:v30];
                    }

                    goto LABEL_72;
                  }
                }

                else
                {
                }

                if ((*MEMORY[0x1E6994D48] & 1) == 0)
                {
                  v37 = __CPLAssetsdOSLogDomain();
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v128 = v17;
                    v129 = 2112;
                    v130 = v30;
                    _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_DEFAULT, "Applying resource change from updated master cloud resource %@ to local resource %@", buf, 0x16u);
                  }
                }

                fingerprint2 = [v30 fingerprint];
                if (fingerprint2 || ![v30 isDerivative])
                {
                  v103 = 1;
                }

                else
                {
                  v103 |= [v30 localAvailability] < 1;
                }

                asset = [v30 asset];
                asset2 = [v30 asset];
                asset3 = [v30 asset];
                v42 = [asset2 storedResourceForCPLResource:v17 asset:asset3 adjusted:0];

                [v42 setCloudLocalState:3];
                fileURL = [v42 fileURL];
                path = [fileURL path];

                if (path)
                {
                  if ([asset isPlaceholderAsset])
                  {
                    shareRelationship = [asset shareRelationship];
                    if (shareRelationship)
                    {
                      v46 = [v97 fileExistsAtPath:path];
                    }

                    else
                    {
                      v46 = 0;
                    }
                  }

                  else
                  {
                    v46 = 0;
                  }

                  pathManager2 = [v102 pathManager];
                  v48 = [pathManager2 photoDirectoryWithType:4];

                  if ([path hasPrefix:v48])
                  {
                    if ((*MEMORY[0x1E6994D48] & 1) == 0)
                    {
                      v49 = __CPLAssetsdOSLogDomain();
                      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        v128 = v42;
                        _os_log_impl(&dword_19BF1F000, v49, OS_LOG_TYPE_ERROR, "Found a resource change %@ under DCIM. This should not happen, skipping", buf, 0xCu);
                      }
                    }

                    if (v46)
                    {
                      goto LABEL_65;
                    }

LABEL_64:
                    [v42 markAsNotLocallyAvailable];
                  }

                  else if ((v46 & 1) == 0)
                  {
                    if ([v97 fileExistsAtPath:path])
                    {
                      if ((*MEMORY[0x1E6994D48] & 1) == 0)
                      {
                        v50 = __CPLAssetsdOSLogDomain();
                        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412290;
                          v128 = v42;
                          _os_log_impl(&dword_19BF1F000, v50, OS_LOG_TYPE_DEFAULT, "Removing local master resource %@ due to resource change", buf, 0xCu);
                        }
                      }

                      [v97 removeItemAtPath:path error:0];
                    }

                    goto LABEL_64;
                  }

LABEL_65:

                  v25 = selfCopy;
                }

                placeholderState2 = [(PLCloudMaster *)v25 placeholderState];
                v52 = v106;
                if (v106)
                {
                  v53 = v106;
                }

                else
                {
                  v53 = 1;
                }

                if (placeholderState2 == 1)
                {
                  v52 = v53;
                }

                v106 = v52;

LABEL_72:
              }

              v28 = [rm_assetUUIDToAssetAttachedResources countByEnumeratingWithState:&v115 objects:v137 count:16];
              if (!v28)
              {
                v15 = v87;
                v14 = v88;
                v54 = v92;
                goto LABEL_103;
              }
            }
          }

          v54 = v92;
        }

        else
        {
          v89 = v26;
          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v55 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v128 = v17;
              _os_log_impl(&dword_19BF1F000, v55, OS_LOG_TYPE_DEBUG, "Creating new master resource from cloud resource %@", buf, 0xCu);
            }
          }

          rm_assetUUIDToAssetAttachedResources = [(PLCloudMaster *)selfCopy rm_assetUUIDToAssetAttachedResources];
          if ([rm_assetUUIDToAssetAttachedResources count])
          {
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v56 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
              {
                allKeys = [rm_assetUUIDToAssetAttachedResources allKeys];
                *buf = 138412290;
                v128 = allKeys;
                _os_log_impl(&dword_19BF1F000, v56, OS_LOG_TYPE_DEFAULT, "Found existing master resources for assets %@", buf, 0xCu);
              }
            }

            v121 = 0u;
            v122 = 0u;
            v119 = 0u;
            v120 = 0u;
            allKeys2 = [rm_assetUUIDToAssetAttachedResources allKeys];
            v59 = [allKeys2 countByEnumeratingWithState:&v119 objects:v138 count:16];
            if (v59)
            {
              v60 = v59;
              v61 = *v120;
              do
              {
                for (j = 0; j != v60; ++j)
                {
                  if (*v120 != v61)
                  {
                    objc_enumerationMutation(allKeys2);
                  }

                  v63 = [PLManagedAsset assetWithUUID:*(*(&v119 + 1) + 8 * j) inLibrary:v102];
                  v64 = [v63 storedResourceForCPLResource:v17 asset:v63 adjusted:0];
                  [v64 setCloudLocalState:3];
                  if ([v64 isLocallyAvailable])
                  {
                    [v94 addObject:v64];
                  }
                }

                v60 = [allKeys2 countByEnumeratingWithState:&v119 objects:v138 count:16];
              }

              while (v60);
            }

            v54 = v92;
          }

          else
          {
            allKeys2 = [PLResourceInstaller generateExternalResourceFromCPLResource:v17 cloudMaster:selfCopy masterResources:obj];
            v65 = [(PLCloudMaster *)selfCopy rm_transientCloudResourceForResourceType:resourceType];
            v66 = v65;
            if (v65)
            {
              [v65 updateResourceWithExternalCPLResource:allKeys2];
            }

            else
            {
              v67 = [PLTransientInternalResource insertResourceForCloudMaster:selfCopy withExternalCloudResource:allKeys2];
            }

            v54 = v92;
          }

          if ([v17 resourceType] == 23 || objc_msgSend(v17, "resourceType") == 24)
          {
            v90 = 1;
          }

LABEL_103:
          v26 = v89;
        }
      }

      objc_autoreleasePoolPop(context);
      v16 = v54 + 1;
    }

    while (v16 != v14);
    v14 = [obj countByEnumeratingWithState:&v123 objects:v139 count:16];
    self = selfCopy;
  }

  while (v14);
LABEL_109:

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  assets = [(PLCloudMaster *)self assets];
  v98 = [assets countByEnumeratingWithState:&v111 objects:v136 count:16];
  if (v98)
  {
    v95 = *v112;
    do
    {
      v68 = 0;
      do
      {
        if (*v112 != v95)
        {
          objc_enumerationMutation(assets);
        }

        v100 = v68;
        v69 = *(*(&v111 + 1) + 8 * v68);
        if (v90)
        {
          [*(*(&v111 + 1) + 8 * v68) reevaluateCameraProcessingAdjustmentState];
        }

        if (v103)
        {
          if (![v69 isPlaceholderAsset] || (objc_msgSend(v69, "shareRelationship"), (v70 = objc_claimAutoreleasedReturnValue()) == 0) || (v71 = v70, v72 = objc_msgSend(v69, "hasMasterThumb"), v71, (v72 & 1) == 0))
          {
            [v69 invalidateThumbnailIfNeededAfterMasterResourceChangeInLibrary:v102];
          }
        }

        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        allMasterCPLResources = [v69 allMasterCPLResources];
        v74 = [allMasterCPLResources countByEnumeratingWithState:&v107 objects:v135 count:16];
        if (v74)
        {
          v75 = v74;
          v76 = *v108;
          do
          {
            for (k = 0; k != v75; ++k)
            {
              if (*v108 != v76)
              {
                objc_enumerationMutation(allMasterCPLResources);
              }

              v78 = *(*(&v107 + 1) + 8 * k);
              if ([v78 supportsTrashedState] && (objc_msgSend(v69, "_isResourceType:inResources:", objc_msgSend(v78, "cplType"), obj) & 1) == 0)
              {
                if ((*MEMORY[0x1E6994D48] & 1) == 0)
                {
                  v79 = __CPLAssetsdOSLogDomain();
                  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                  {
                    v80 = [MEMORY[0x1E6994B90] shortDescriptionForResourceType:{objc_msgSend(v78, "cplType")}];
                    objectID = [v78 objectID];
                    cloudAssetGUID = [v69 cloudAssetGUID];
                    *buf = 138544130;
                    v128 = v80;
                    v129 = 2112;
                    v130 = v96;
                    v131 = 2114;
                    v132 = objectID;
                    v133 = 2114;
                    v134 = cloudAssetGUID;
                    _os_log_impl(&dword_19BF1F000, v79, OS_LOG_TYPE_DEFAULT, "Detected master resource %{public}@ removed on master change %@. Expunging resource %{public}@ on asset %{public}@", buf, 0x2Au);

                    self = selfCopy;
                  }
                }

                [v78 applyTrashedState:2];
              }
            }

            v75 = [allMasterCPLResources countByEnumeratingWithState:&v107 objects:v135 count:16];
          }

          while (v75);
        }

        v68 = v100 + 1;
      }

      while (v100 + 1 != v98);
      v98 = [assets countByEnumeratingWithState:&v111 objects:v136 count:16];
    }

    while (v98);
  }

  if (v106)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v83 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        scopedIdentifier = [(PLCloudMaster *)self scopedIdentifier];
        *buf = 138412290;
        v128 = scopedIdentifier;
        _os_log_impl(&dword_19BF1F000, v83, OS_LOG_TYPE_DEFAULT, "Setting master %@ as non-placeholder", buf, 0xCu);
      }
    }

    [(PLCloudMaster *)self setPlaceholderState:0];
    [(PLCloudMaster *)self setSourceMasterForDuplicationCPLScopedIdentifier:0];
  }

  return v94;
}

- (BOOL)hasResourcesOtherThanForAssetUuid:(id)uuid
{
  v17 = *MEMORY[0x1E69E9840];
  uuidCopy = uuid;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  assets = [(PLCloudMaster *)self assets];
  v6 = [assets countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(assets);
        }

        uuid = [*(*(&v12 + 1) + 8 * i) uuid];
        v10 = [uuid isEqualToString:uuidCopy];

        if (!v10)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [assets countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)allAssetAttachedResources
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  assets = [(PLCloudMaster *)self assets];
  v5 = [assets countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(assets);
        }

        allMasterCPLResources = [*(*(&v11 + 1) + 8 * i) allMasterCPLResources];
        [v3 unionSet:allMasterCPLResources];
      }

      v6 = [assets countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)rm_assetUUIDToAssetAttachedResources
{
  v29 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(PLCloudMaster *)self assets];
  v3 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v24;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        uuid = [v7 uuid];
        v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        modernResources = [v7 modernResources];
        v11 = [modernResources countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v20;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v20 != v13)
              {
                objc_enumerationMutation(modernResources);
              }

              v15 = *(*(&v19 + 1) + 8 * j);
              if ([v15 isCPLMasterResource])
              {
                [v9 addObject:v15];
              }
            }

            v12 = [modernResources countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v12);
        }

        if ([v9 count])
        {
          [dictionary setObject:v9 forKeyedSubscript:uuid];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v4);
  }

  return dictionary;
}

- (id)rm_assetAttachedResourceForResourceType:(unint64_t)type forAssetUuid:(id)uuid
{
  v22 = *MEMORY[0x1E69E9840];
  uuidCopy = uuid;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  assets = [(PLCloudMaster *)self assets];
  v8 = [assets countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(assets);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        uuid = [v12 uuid];
        v14 = [uuid isEqualToString:uuidCopy];

        if (v14)
        {
          v15 = [v12 masterResourceForCPLType:type];
          goto LABEL_11;
        }
      }

      v9 = [assets countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (id)rm_assetAttachedResourcesForResourceType:(unint64_t)type
{
  v18 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  assets = [(PLCloudMaster *)self assets];
  v7 = [assets countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(assets);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) masterResourceForCPLType:type];
        if (v11)
        {
          [array addObject:v11];
        }
      }

      v8 = [assets countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return array;
}

- (id)rm_cloudResourcesForResourceType:(unint64_t)type
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = [(PLCloudMaster *)self rm_transientCloudResourceForResourceType:?];
  v6 = v5;
  if (v5)
  {
    v10[0] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  else
  {
    v7 = [(PLCloudMaster *)self rm_assetAttachedResourcesForResourceType:type];
  }

  v8 = v7;

  return v8;
}

- (id)rm_transientCloudResourceForResourceType:(unint64_t)type
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  modernResources = [(PLCloudMaster *)self modernResources];
  v5 = [modernResources countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(modernResources);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 cplType] == type)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [modernResources countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)payloadsForChangedKeys:(id)keys
{
  v27 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  assets = [(PLCloudMaster *)self assets];
  v7 = [assets countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (!v7)
  {
    goto LABEL_15;
  }

  v9 = v7;
  v10 = *v21;
  *&v8 = 138543362;
  v19 = v8;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v21 != v10)
      {
        objc_enumerationMutation(assets);
      }

      v12 = *(*(&v20 + 1) + 8 * i);
      payloadID = [v12 payloadID];
      if (payloadID)
      {
        if (![v12 isValidForJournalPersistence])
        {
          goto LABEL_13;
        }

        v14 = [[PLAssetJournalEntryPayload alloc] initWithCloudMaster:self payloadID:payloadID changedKeys:keysCopy];
        if (v14)
        {
          [v5 addObject:v14];
        }
      }

      else
      {
        v14 = PLMigrationGetLog();
        if (os_log_type_enabled(&v14->super.super, OS_LOG_TYPE_ERROR))
        {
          objectID = [v12 objectID];
          *buf = v19;
          v25 = objectID;
          _os_log_impl(&dword_19BF1F000, &v14->super.super, OS_LOG_TYPE_ERROR, "Skipping payload for CloudMaster update with nil payloadID for existing object: %{public}@", buf, 0xCu);
        }
      }

LABEL_13:
    }

    v9 = [assets countByEnumeratingWithState:&v20 objects:v26 count:16];
  }

  while (v9);
LABEL_15:

  if ([v5 count])
  {
    v16 = v5;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  return v16;
}

- (id)payloadID
{
  cloudMasterGUID = [(PLCloudMaster *)self cloudMasterGUID];
  v3 = [PLJournalEntryPayloadIDFactory payloadIDWithString:cloudMasterGUID];

  return v3;
}

- (void)setSourceMasterForDuplicationCPLScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = identifierCopy;
  if (identifierCopy)
  {
    identifier = [identifierCopy identifier];
    [(PLCloudMaster *)self setSourceMasterForDuplicationIdentifier:identifier];

    scopeIdentifier = [v7 scopeIdentifier];
    [(PLCloudMaster *)self setSourceMasterForDuplicationScopeIdentifier:scopeIdentifier];
  }

  else
  {
    [(PLCloudMaster *)self setSourceMasterForDuplicationIdentifier:0];
    [(PLCloudMaster *)self setSourceMasterForDuplicationScopeIdentifier:0];
  }
}

- (CPLScopedIdentifier)sourceMasterForDuplicationCPLScopedIdentifier
{
  sourceMasterForDuplicationIdentifier = [(PLCloudMaster *)self sourceMasterForDuplicationIdentifier];
  sourceMasterForDuplicationScopeIdentifier = [(PLCloudMaster *)self sourceMasterForDuplicationScopeIdentifier];
  if (sourceMasterForDuplicationIdentifier)
  {
    v5 = [objc_alloc(MEMORY[0x1E6994BB8]) initWithScopeIdentifier:sourceMasterForDuplicationScopeIdentifier identifier:sourceMasterForDuplicationIdentifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isSyncableChange
{
  v14 = *MEMORY[0x1E69E9840];
  changedValues = [(PLCloudMaster *)self changedValues];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = +[PLCloudMaster listOfSyncedProperties];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [changedValues objectForKey:*(*(&v9 + 1) + 8 * i)];

        if (v7)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)originalFilenameForResourceType:(unint64_t)type filePath:(id)path
{
  pathCopy = path;
  if (type - 17 < 2)
  {
    originalFilename = [(PLCloudMaster *)self originalFilename];
    stringByDeletingPathExtension = [originalFilename stringByDeletingPathExtension];
    pathExtension = [pathCopy pathExtension];
    originalFilename2 = [stringByDeletingPathExtension stringByAppendingPathExtension:pathExtension];
    goto LABEL_5;
  }

  if (type - 23 < 2)
  {
    originalFilename = [(PLCloudMaster *)self originalFilename];
    stringByDeletingPathExtension = [originalFilename stringByDeletingPathExtension];
    pathExtension = [stringByDeletingPathExtension stringByAppendingString:*MEMORY[0x1E69BFFB0]];
    pathExtension2 = [pathCopy pathExtension];
    originalFilename2 = [pathExtension stringByAppendingPathExtension:pathExtension2];

LABEL_5:
    goto LABEL_6;
  }

  if (type == 1)
  {
    originalFilename2 = [(PLCloudMaster *)self originalFilename];
  }

  else
  {
    originalFilename2 = 0;
  }

LABEL_6:

  return originalFilename2;
}

- (void)_promptForNilScopeIdentifierRadar
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  objectID = [(PLCloudMaster *)self objectID];
  isDeleted = [(PLCloudMaster *)self isDeleted];
  v6 = @"NO";
  if (isDeleted)
  {
    v6 = @"YES";
  }

  v7 = [v3 stringWithFormat:@"Found cloud master with nil scope identifier %@ (isDeleted=%@) %@.\n\nSee rdar://problem/41018298", objectID, v6, self];

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v8 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v10 = v7;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }
  }

  [PLDiagnostics fileRadarUserNotificationWithHeader:@"Unexpected Photo Library state" message:@"Please file a Radar against Photos" radarTitle:@"TTR: cloud master with nil scope identifier" radarDescription:v7];
}

- (id)stableHashFromOriginalResourceError:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  scopedIdentifier = [(PLCloudMaster *)self scopedIdentifier];
  identifier = [scopedIdentifier identifier];

  [(PLCloudMaster *)self rm_cloudResourcesForResourceType:1];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v26 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    v11 = @"Missing stable hash in Original";
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        fingerprint = [v13 fingerprint];
        v15 = [fingerprint isEqualToString:identifier];

        if (v15)
        {
          stableHash = [v13 stableHash];
          if (stableHash)
          {
            v17 = stableHash;
            v18 = v7;
            v19 = v17;
            goto LABEL_16;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = @"Missing Original";
  }

  v20 = MEMORY[0x1E696ABC0];
  v21 = *MEMORY[0x1E69BFF48];
  v27 = *MEMORY[0x1E696A278];
  v28 = v11;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v18 = [v20 errorWithDomain:v21 code:45701 userInfo:v17];
  if (error)
  {
    v18 = v18;
    v19 = 0;
    *error = v18;
  }

  else
  {
    v19 = 0;
  }

LABEL_16:

  return v19;
}

- (id)fingerprintScheme
{
  cloudMasterGUID = [(PLCloudMaster *)self cloudMasterGUID];
  if (cloudMasterGUID)
  {
    fingerprintContext = [(PLCloudMaster *)self fingerprintContext];
    v5 = [fingerprintContext fingerprintSchemeForMasterIdentifier:cloudMasterGUID];
    v6 = v5;
    if (v5)
    {
      invalidFingerprintScheme = v5;
    }

    else
    {
      invalidFingerprintScheme = [MEMORY[0x1E6994AE0] invalidFingerprintScheme];
    }

    invalidFingerprintScheme2 = invalidFingerprintScheme;
  }

  else
  {
    invalidFingerprintScheme2 = [MEMORY[0x1E6994AE0] invalidFingerprintScheme];
  }

  return invalidFingerprintScheme2;
}

- (id)fingerprintContext
{
  photoLibrary = [(PLManagedObject *)self photoLibrary];
  fingerprintContext = [photoLibrary fingerprintContext];
  v4 = fingerprintContext;
  if (fingerprintContext)
  {
    mEMORY[0x1E6994AD8] = fingerprintContext;
  }

  else
  {
    mEMORY[0x1E6994AD8] = [MEMORY[0x1E6994AD8] sharedContext];
  }

  v6 = mEMORY[0x1E6994AD8];

  return v6;
}

- (id)scopedIdentifier
{
  scopeIdentifier = [(PLCloudMaster *)self scopeIdentifier];
  cloudMasterGUID = [(PLCloudMaster *)self cloudMasterGUID];
  if (cloudMasterGUID)
  {
    v5 = [objc_alloc(MEMORY[0x1E6994BB8]) initWithScopeIdentifier:scopeIdentifier identifier:cloudMasterGUID];
  }

  else
  {
    [(PLCloudMaster *)self _promptForNilScopeIdentifierRadar];
    v5 = 0;
  }

  return v5;
}

- (id)scopeIdentifier
{
  momentShare = [(PLCloudMaster *)self momentShare];

  if (momentShare)
  {
    momentShare2 = [(PLCloudMaster *)self momentShare];
  }

  else
  {
    collectionShare = [(PLCloudMaster *)self collectionShare];

    if (!collectionShare)
    {
      goto LABEL_7;
    }

    momentShare2 = [(PLCloudMaster *)self collectionShare];
  }

  photoLibrary = momentShare2;
  if (momentShare2)
  {
    scopeIdentifier = [momentShare2 scopeIdentifier];
    goto LABEL_8;
  }

LABEL_7:
  photoLibrary = [(PLManagedObject *)self photoLibrary];
  scopeIdentifier = [photoLibrary mainScopeIdentifier];
LABEL_8:
  v8 = scopeIdentifier;

  return v8;
}

- (id)cplMasterPropertyChangeForAsset:(id)asset
{
  v41 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v5 = MEMORY[0x1E6994D48];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v6 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "PLCloudMaster %@", buf, 0xCu);
    }
  }

  v7 = objc_alloc_init(MEMORY[0x1E6994AF8]);
  scopedIdentifier = [(PLCloudMaster *)self scopedIdentifier];
  [v7 setScopedIdentifier:scopedIdentifier];

  originalFilename = [(PLCloudMaster *)self originalFilename];

  if (originalFilename)
  {
    originalFilename2 = [(PLCloudMaster *)self originalFilename];
    [v7 setFilename:originalFilename2];
  }

  [v7 setFullSizeJPEGSource:{-[PLCloudMaster fullSizeJPEGSource](self, "fullSizeJPEGSource")}];
  creationDate = [(PLCloudMaster *)self creationDate];
  [v7 setCreationDate:creationDate];

  importDate = [(PLCloudMaster *)self importDate];
  [v7 setImportDate:importDate];

  uniformTypeIdentifier = [(PLCloudMaster *)self uniformTypeIdentifier];
  [v7 setItemType:uniformTypeIdentifier];

  [v7 setChangeType:0];
  mediaMetadata = [(PLCloudMaster *)self mediaMetadata];
  v15 = [mediaMetadata valueForKey:@"data"];

  v16 = [v15 length];
  if (v16 <= [MEMORY[0x1E6994B60] maxInlineDataSize])
  {
    [v7 setMediaMetaData:v15];
  }

  mediaMetadataType = [(PLCloudMaster *)self mediaMetadataType];
  [v7 setMediaMetaDataType:mediaMetadataType];

  originatingAssetIdentifier = [(PLCloudMaster *)self originatingAssetIdentifier];
  [v7 setOriginatingFingerprint:originatingAssetIdentifier];

  [v7 setImportedBy:{-[PLCloudMaster importedBy](self, "importedBy")}];
  importedByBundleIdentifier = [(PLCloudMaster *)self importedByBundleIdentifier];
  [v7 setImportedByBundleIdentifier:importedByBundleIdentifier];

  importedByDisplayName = [(PLCloudMaster *)self importedByDisplayName];
  [v7 setImportedByDisplayName:importedByDisplayName];

  if ([(PLCloudMaster *)self placeholderState]== 1)
  {
    sourceMasterForDuplicationCPLScopedIdentifier = [(PLCloudMaster *)self sourceMasterForDuplicationCPLScopedIdentifier];
    [v7 setResourceCopyFromScopedIdentifier:sourceMasterForDuplicationCPLScopedIdentifier];
  }

  if ([assetCopy kind] == 1)
  {
    mediaMetadata2 = [(PLCloudMaster *)self mediaMetadata];
    v23 = [mediaMetadata2 valueForKey:@"data"];

    if (v23)
    {
      v36 = 0;
      scopedIdentifier3 = [MEMORY[0x1E696AE40] propertyListWithData:v23 options:0 format:0 error:&v36];
      v25 = v36;
      if (scopedIdentifier3)
      {
        v26 = [MEMORY[0x1E6987E28] assetProxyWithPropertyList:scopedIdentifier3];
        [assetCopy setVideoInfoOnMasterFromAVAsset:v26];
        codecName = [(PLCloudMaster *)self codecName];
        [v7 setCodec:codecName];

        [v7 setVideoFrameRate:{-[PLCloudMaster videoFrameRate](self, "videoFrameRate")}];
LABEL_21:

        goto LABEL_22;
      }

      if ((*v5 & 1) == 0)
      {
        v26 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          scopedIdentifier2 = [(PLCloudMaster *)self scopedIdentifier];
          *buf = 138543618;
          selfCopy = scopedIdentifier2;
          v39 = 2114;
          v40 = v25;
          _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "cplMasterPropertyChangeFromCloudMaster: unable to serialize videoProperties for %{public}@: %{public}@", buf, 0x16u);
        }

        goto LABEL_21;
      }
    }

    else
    {
      if (*v5)
      {
LABEL_24:

        goto LABEL_25;
      }

      v25 = __CPLAssetsdOSLogDomain();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
LABEL_23:

        goto LABEL_24;
      }

      scopedIdentifier3 = [(PLCloudMaster *)self scopedIdentifier];
      *buf = 138543362;
      selfCopy = scopedIdentifier3;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "cplMasterPropertyChangeFromCloudMaster: unable to find mediaPropertiesData for %{public}@", buf, 0xCu);
    }

LABEL_22:

    goto LABEL_23;
  }

LABEL_25:
  importSession = [assetCopy importSession];
  v30 = importSession;
  if (importSession)
  {
    importSessionID = [importSession importSessionID];
    [v7 setImportGroupIdentifier:importSessionID];
  }

  if ((*v5 & 1) == 0)
  {
    v32 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      originalOrientation = [(PLCloudMaster *)self originalOrientation];
      *buf = 67109120;
      LODWORD(selfCopy) = originalOrientation;
      _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_DEBUG, "Setting original orientation %d to masterChange", buf, 8u);
    }
  }

  [v7 setOriginalOrientation:{-[PLCloudMaster originalOrientation](self, "originalOrientation")}];
  rm_cplExpungeableMasterResourceStates = [assetCopy rm_cplExpungeableMasterResourceStates];
  if ([rm_cplExpungeableMasterResourceStates count])
  {
    [v7 setExpungeableResourceStates:rm_cplExpungeableMasterResourceStates];
  }

  return v7;
}

- (id)cplPropertyRecord
{
  v10 = *MEMORY[0x1E69E9840];
  assets = [(PLCloudMaster *)self assets];
  if ([assets count])
  {
    anyObject = [assets anyObject];
    v5 = [(PLCloudMaster *)self cplMasterPropertyChangeForAsset:anyObject];

    [v5 setChangeType:2];
  }

  else
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v6 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Can't find any asset for this master: %@", &v8, 0xCu);
      }
    }

    v5 = 0;
  }

  return v5;
}

- (id)cplFullRecord
{
  v11 = *MEMORY[0x1E69E9840];
  assets = [(PLCloudMaster *)self assets];
  if ([assets count])
  {
    anyObject = [assets anyObject];
    photoLibrary = [(PLManagedObject *)self photoLibrary];
    v6 = [anyObject cplMasterChangeInLibrary:photoLibrary shouldGenerateDerivatives:{objc_msgSend(MEMORY[0x1E6994B90], "cplShouldGenerateDerivatives") ^ 1}];
  }

  else
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v7 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Can't find any asset for this master: %@", &v9, 0xCu);
      }
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)allOriginalsAreLocallyAvailableForAssetUuid:(id)uuid useOriginalAltInsteadOfOriginal:(BOOL)original
{
  originalCopy = original;
  v24 = *MEMORY[0x1E69E9840];
  uuidCopy = uuid;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = +[PLCloudMaster _originalTypes];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v20 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v19 + 1) + 8 * v11);
      v13 = objc_autoreleasePoolPush();
      integerValue = [v12 integerValue];
      if (originalCopy)
      {
        if (integerValue != 1)
        {
          goto LABEL_10;
        }
      }

      else if (integerValue != 17)
      {
LABEL_10:
        if ([v12 integerValue] != 17)
        {
          v15 = -[PLCloudMaster rm_assetAttachedResourceForResourceType:forAssetUuid:](self, "rm_assetAttachedResourceForResourceType:forAssetUuid:", [v12 unsignedIntegerValue], uuidCopy);
          v16 = v15;
          if (v15 && ([v15 isLocallyAvailable] & 1) == 0)
          {

            objc_autoreleasePoolPop(v13);
            v17 = 0;
            goto LABEL_18;
          }
        }
      }

      objc_autoreleasePoolPop(v13);
      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v17 = 1;
LABEL_18:

  return v17;
}

- (BOOL)allOriginalsAreUploaded
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = +[PLCloudMaster _originalTypes];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v10 = -[PLCloudMaster rm_assetAttachedResourcesForResourceType:](self, "rm_assetAttachedResourcesForResourceType:", [v8 unsignedIntegerValue]);
        firstObject = [v10 firstObject];

        if (firstObject && [firstObject cloudLocalState] != 3)
        {

          objc_autoreleasePoolPop(v9);
          v12 = 0;
          goto LABEL_12;
        }

        objc_autoreleasePoolPop(v9);
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_12:

  return v12;
}

- (unint64_t)sizeOfOriginal
{
  v29 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = +[PLCloudMaster _originalTypes];
  v2 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v24;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = -[PLCloudMaster rm_assetAttachedResourcesForResourceType:](self, "rm_assetAttachedResourcesForResourceType:", [v7 unsignedIntegerValue]);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v20;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v20 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v19 + 1) + 8 * j);
              if ([v15 isLocallyAvailable])
              {
                v4 += [v15 dataLength];
                goto LABEL_16;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:

        objc_autoreleasePoolPop(v8);
      }

      v3 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)description
{
  allAssetAttachedResources = [(PLCloudMaster *)self allAssetAttachedResources];
  v4 = [allAssetAttachedResources count];
  modernResources = [(PLCloudMaster *)self modernResources];
  v6 = [modernResources count] + v4;

  v7 = MEMORY[0x1E696AEC0];
  cloudMasterGUID = [(PLCloudMaster *)self cloudMasterGUID];
  v9 = [v7 stringWithFormat:@"Cloud master GUID: %@ cloudLocalState: %d JPEGSource: %d %lu resources\n", cloudMasterGUID, -[PLCloudMaster cloudLocalState](self, "cloudLocalState"), -[PLCloudMaster fullSizeJPEGSource](self, "fullSizeJPEGSource"), v6];

  return v9;
}

- (void)updateImportedByDisplayName:(id)name
{
  v18 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  [(PLCloudMaster *)self setImportedByDisplayName:nameCopy];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  assets = [(PLCloudMaster *)self assets];
  v6 = [assets countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(assets);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        importedByDisplayName = [v10 importedByDisplayName];
        IsEqual = PLObjectIsEqual();

        if ((IsEqual & 1) == 0)
        {
          [v10 setImportedByDisplayName:nameCopy];
        }
      }

      v7 = [assets countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)updateImportedByBundleIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  [(PLCloudMaster *)self setImportedByBundleIdentifier:identifierCopy];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  assets = [(PLCloudMaster *)self assets];
  v6 = [assets countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(assets);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        importedByBundleIdentifier = [v10 importedByBundleIdentifier];
        IsEqual = PLObjectIsEqual();

        if ((IsEqual & 1) == 0)
        {
          [v10 setImportedByBundleIdentifier:identifierCopy];
        }
      }

      v7 = [assets countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)applyPropertiesFromCPLMasterChange:(id)change
{
  v58 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  originalFilename = [(PLCloudMaster *)self originalFilename];
  filename = [changeCopy filename];
  v7 = [originalFilename isEqualToString:filename];

  if ((v7 & 1) == 0)
  {
    filename2 = [changeCopy filename];
    [(PLCloudMaster *)self setOriginalFilename:filename2];
  }

  fullSizeJPEGSource = [(PLCloudMaster *)self fullSizeJPEGSource];
  if ([changeCopy fullSizeJPEGSource] != fullSizeJPEGSource)
  {
    -[PLCloudMaster setFullSizeJPEGSource:](self, "setFullSizeJPEGSource:", [changeCopy fullSizeJPEGSource]);
  }

  creationDate = [(PLCloudMaster *)self creationDate];
  creationDate2 = [changeCopy creationDate];
  v12 = [creationDate isEqualToDate:creationDate2];

  if ((v12 & 1) == 0)
  {
    creationDate3 = [changeCopy creationDate];
    [(PLCloudMaster *)self setCreationDate:creationDate3];
  }

  importDate = [(PLCloudMaster *)self importDate];
  importDate2 = [changeCopy importDate];
  v16 = [importDate isEqualToDate:importDate2];

  if ((v16 & 1) == 0)
  {
    importDate3 = [changeCopy importDate];
    [(PLCloudMaster *)self setImportDate:importDate3];
  }

  uniformTypeIdentifier = [(PLCloudMaster *)self uniformTypeIdentifier];
  itemType = [changeCopy itemType];
  v20 = [uniformTypeIdentifier isEqualToString:itemType];

  if ((v20 & 1) == 0)
  {
    itemType2 = [changeCopy itemType];
    [(PLCloudMaster *)self setUniformTypeIdentifier:itemType2];
  }

  originalOrientation = [(PLCloudMaster *)self originalOrientation];
  if ([changeCopy originalOrientation] != originalOrientation)
  {
    -[PLCloudMaster setOriginalOrientation:](self, "setOriginalOrientation:", [changeCopy originalOrientation]);
  }

  mediaMetadata = [(PLCloudMaster *)self mediaMetadata];
  v24 = [mediaMetadata valueForKey:@"data"];
  mediaMetaData = [changeCopy mediaMetaData];
  v26 = [v24 isEqualToData:mediaMetaData];

  if ((v26 & 1) == 0)
  {
    mediaMetadata2 = [(PLCloudMaster *)self mediaMetadata];
    mediaMetaData2 = [changeCopy mediaMetaData];
    [mediaMetadata2 setValue:mediaMetaData2 forKey:@"data"];
  }

  mediaMetadataType = [(PLCloudMaster *)self mediaMetadataType];
  mediaMetaDataType = [changeCopy mediaMetaDataType];
  v31 = [mediaMetadataType isEqualToString:mediaMetaDataType];

  if ((v31 & 1) == 0)
  {
    mediaMetaDataType2 = [changeCopy mediaMetaDataType];
    [(PLCloudMaster *)self setMediaMetadataType:mediaMetaDataType2];
  }

  importGroupIdentifier = [changeCopy importGroupIdentifier];
  if (importGroupIdentifier)
  {
    v34 = importGroupIdentifier;
    importSessionID = [(PLCloudMaster *)self importSessionID];
    importGroupIdentifier2 = [changeCopy importGroupIdentifier];
    v37 = [importSessionID isEqualToString:importGroupIdentifier2];

    if ((v37 & 1) == 0)
    {
      importGroupIdentifier3 = [changeCopy importGroupIdentifier];
      [(PLCloudMaster *)self setImportSessionID:importGroupIdentifier3];
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      assets = [(PLCloudMaster *)self assets];
      v40 = [assets countByEnumeratingWithState:&v53 objects:v57 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v54;
        do
        {
          v43 = 0;
          do
          {
            if (*v54 != v42)
            {
              objc_enumerationMutation(assets);
            }

            [*(*(&v53 + 1) + 8 * v43++) setImportSessionAlbumWithImportSessionID:importGroupIdentifier3];
          }

          while (v41 != v43);
          v41 = [assets countByEnumeratingWithState:&v53 objects:v57 count:16];
        }

        while (v41);
      }
    }
  }

  originatingAssetIdentifier = [(PLCloudMaster *)self originatingAssetIdentifier];
  originatingFingerprint = [changeCopy originatingFingerprint];
  v46 = [originatingAssetIdentifier isEqualToString:originatingFingerprint];

  if ((v46 & 1) == 0)
  {
    originatingFingerprint2 = [changeCopy originatingFingerprint];
    [(PLCloudMaster *)self setOriginatingAssetIdentifier:originatingFingerprint2];
  }

  importedBy = [(PLCloudMaster *)self importedBy];
  if (importedBy != [changeCopy importedBy])
  {
    -[PLCloudMaster setImportedBy:](self, "setImportedBy:", [changeCopy importedBy]);
  }

  importedByBundleIdentifier = [changeCopy importedByBundleIdentifier];

  if (importedByBundleIdentifier)
  {
    importedByBundleIdentifier2 = [changeCopy importedByBundleIdentifier];
    [(PLCloudMaster *)self updateImportedByBundleIdentifier:importedByBundleIdentifier2];
  }

  importedByDisplayName = [changeCopy importedByDisplayName];

  if (importedByDisplayName)
  {
    importedByDisplayName2 = [changeCopy importedByDisplayName];
    [(PLCloudMaster *)self updateImportedByDisplayName:importedByDisplayName2];
  }
}

- (void)awakeFromInsert
{
  v5.receiver = self;
  v5.super_class = PLCloudMaster;
  [(PLCloudMaster *)&v5 awakeFromInsert];
  managedObjectContext = [(PLCloudMaster *)self managedObjectContext];
  v4 = [(PLManagedObject *)PLCloudMasterMediaMetadata insertInManagedObjectContext:managedObjectContext];
  [(PLCloudMaster *)self setMediaMetadata:v4];
}

- (id)shareRelationship
{
  momentShare = [(PLCloudMaster *)self momentShare];

  if (momentShare)
  {
    momentShare2 = [(PLCloudMaster *)self momentShare];
  }

  else
  {
    collectionShare = [(PLCloudMaster *)self collectionShare];

    if (collectionShare)
    {
      momentShare2 = [(PLCloudMaster *)self collectionShare];
    }

    else
    {
      momentShare2 = 0;
    }
  }

  return momentShare2;
}

+ (unint64_t)fullSizeJPEGSourceForUTI:(id)i andImageDimensions:(CGSize)dimensions
{
  height = dimensions.height;
  width = dimensions.width;
  v6 = [MEMORY[0x1E69C08F0] typeWithIdentifier:i];
  v7 = [v6 conformsToType:*MEMORY[0x1E6982F88]];

  return !v7 || [MEMORY[0x1E69C0708] rawSourceMaximumPixelCountForBackgroundProcessing] >= (width * height);
}

+ (id)listOfSyncedProperties
{
  pl_dispatch_once();
  v2 = listOfSyncedProperties_result_88156;

  return v2;
}

void __39__PLCloudMaster_listOfSyncedProperties__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"creationDate", @"importDate", @"uniformTypeIdentifier", @"originalFilename", @"originatingAssetIdentifier", @"importedBy", @"videoFrameRate", @"codecName", @"mediaMetadataType", @"importedByBundleIdentifier", @"importedByDisplayName", 0}];
  v1 = listOfSyncedProperties_result_88156;
  listOfSyncedProperties_result_88156 = v0;
}

+ (id)_originalTypes
{
  if (_originalTypes_onceToken != -1)
  {
    dispatch_once(&_originalTypes_onceToken, &__block_literal_global_88_88191);
  }

  v3 = _originalTypes_originalTypes;

  return v3;
}

void __31__PLCloudMaster__originalTypes__block_invoke()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{&unk_1F0FBDE58, &unk_1F0FBDE70, &unk_1F0FBDE88, &unk_1F0FBDEA0, &unk_1F0FBDEB8, 0}];
  v1 = _originalTypes_originalTypes;
  _originalTypes_originalTypes = v0;
}

+ (void)deleteMasterIfNecessary:(id)necessary inLibrary:(id)library
{
  v16 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  libraryCopy = library;
  if (necessaryCopy)
  {
    assets = [necessaryCopy assets];
    v8 = [assets count];

    if (!v8)
    {
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v11 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138412290;
          v13 = necessaryCopy;
          _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Deleting master %@", &v12, 0xCu);
        }
      }

      managedObjectContext = [libraryCopy managedObjectContext];
      [managedObjectContext deleteObject:necessaryCopy];
      goto LABEL_11;
    }

    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      managedObjectContext = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(managedObjectContext, OS_LOG_TYPE_DEFAULT))
      {
        assets2 = [necessaryCopy assets];
        v12 = 138412546;
        v13 = necessaryCopy;
        v14 = 2048;
        v15 = [assets2 count];
        _os_log_impl(&dword_19BF1F000, managedObjectContext, OS_LOG_TYPE_DEFAULT, "Ignored deleting a master record: %@, master still being referred by %lu assets", &v12, 0x16u);
      }

LABEL_11:
    }
  }
}

+ (void)deleteOrphanedMastersWithManagedObjectContext:(id)context
{
  v18 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = objc_autoreleasePoolPush();
  v6 = MEMORY[0x1E695D5E0];
  entityName = [self entityName];
  v8 = [v6 fetchRequestWithEntityName:entityName];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(%K, $asset, $asset != nil).@count = 0", @"assets"];
  [v8 setPredicate:v9];

  v10 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v8];
  [v10 setResultType:2];
  v15 = 0;
  v11 = [contextCopy executeRequest:v10 error:&v15];
  v12 = v15;
  if (v11)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v13 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        result = [v11 result];
        *buf = 138412290;
        v17 = result;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Deleted %@ orphaned cloud masters", buf, 0xCu);
      }

LABEL_8:
    }
  }

  else if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v13 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v12;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Failed to delete orphaned cloud masters %@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  objc_autoreleasePoolPop(v5);
}

+ (void)resetCloudMastersStateInManagedObjectContext:(id)context
{
  v19 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = objc_autoreleasePoolPush();
  v6 = MEMORY[0x1E6994D48];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v7 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Resetting cloudLocalState of cloud masters", buf, 2u);
    }
  }

  v8 = objc_alloc(MEMORY[0x1E695D560]);
  entityName = [self entityName];
  v10 = [v8 initWithEntityName:entityName];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"cloudLocalState != %d", 0];
  [v10 setPredicate:v11];
  [v10 setResultType:2];
  [v10 setPropertiesToUpdate:&unk_1F0FC07D0];
  v16 = 0;
  v12 = [contextCopy executeRequest:v10 error:&v16];
  v13 = v16;
  if (v13)
  {
    if ((*v6 & 1) == 0)
    {
      v14 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v13;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed to batch update cloud masters: %@", buf, 0xCu);
      }

LABEL_12:
    }
  }

  else if ((*v6 & 1) == 0)
  {
    v14 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      result = [v12 result];
      *buf = 138412290;
      v18 = result;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Batch updated %@ cloud masters", buf, 0xCu);
    }

    goto LABEL_12;
  }

  objc_autoreleasePoolPop(v5);
}

+ (void)deleteAllCloudMastersInManagedObjectContext:(id)context
{
  v19 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = objc_autoreleasePoolPush();
  v6 = MEMORY[0x1E6994D48];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v7 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Deleting all cloud masters locally", buf, 2u);
    }
  }

  v8 = MEMORY[0x1E695D5E0];
  entityName = [self entityName];
  v10 = [v8 fetchRequestWithEntityName:entityName];

  [v10 setFetchBatchSize:100];
  v11 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v10];
  [v11 setResultType:2];
  v16 = 0;
  v12 = [contextCopy executeRequest:v11 error:&v16];
  v13 = v16;
  if (v13)
  {
    if ((*v6 & 1) == 0)
    {
      v14 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v13;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed to batch delete cloud masters: Error: %@", buf, 0xCu);
      }

LABEL_12:
    }
  }

  else if ((*v6 & 1) == 0)
  {
    v14 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      result = [v12 result];
      *buf = 138412290;
      v18 = result;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Batch deleted %@ cloud masters", buf, 0xCu);
    }

    goto LABEL_12;
  }

  objc_autoreleasePoolPop(v5);
}

+ (id)cloudMastersWithScopedIdentifiers:(id)identifiers relationshipKeyPathsForPrefetching:(id)prefetching inLibrary:(id)library
{
  libraryCopy = library;
  prefetchingCopy = prefetching;
  identifiersCopy = identifiers;
  v10 = +[PLCloudMaster entityName];
  v11 = [PLManagedAsset objectsWithScopedIdentifiers:identifiersCopy forEntityName:v10 prefetchResources:0 relationshipKeyPathsForPrefetching:prefetchingCopy inLibrary:libraryCopy];

  return v11;
}

+ (PLCloudMaster)cloudMasterWithScopedIdentifier:(id)identifier prefetchResources:(BOOL)resources inLibrary:(id)library
{
  resourcesCopy = resources;
  identifierCopy = identifier;
  libraryCopy = library;
  v15 = 0;
  v9 = [PLShare getShareIfNecessary:&v15 forCPLRecordWithClass:objc_opt_class() scopedIdentifier:identifierCopy inLibrary:libraryCopy];
  v10 = v15;
  v11 = 0;
  if (v9)
  {
    identifier = [identifierCopy identifier];
    managedObjectContext = [libraryCopy managedObjectContext];
    v11 = [PLCloudMaster cloudMasterWithGUID:identifier inShare:v10 prefetchResources:resourcesCopy inManagedObjectContext:managedObjectContext];
  }

  return v11;
}

+ (id)cloudMastersByScopedIdentifiers:(id)identifiers relationshipKeyPathsForPrefetching:(id)prefetching inLibrary:(id)library
{
  v5 = [self cloudMastersWithScopedIdentifiers:identifiers relationshipKeyPathsForPrefetching:prefetching inLibrary:library];
  v6 = [v5 _pl_indexBy:&__block_literal_global_88236];

  return v6;
}

+ (PLCloudMaster)cloudMasterWithGUID:(id)d inShare:(id)share prefetchResources:(BOOL)resources inManagedObjectContext:(id)context
{
  resourcesCopy = resources;
  v29[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  shareCopy = share;
  contextCopy = context;
  if (!dCopy)
  {
    firstObject = 0;
    goto LABEL_15;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = MEMORY[0x1E695D5E0];
  entityName = [self entityName];
  v16 = [v14 fetchRequestWithEntityName:entityName];

  dCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"cloudMasterGUID", dCopy];
  if ([objc_opt_class() subclassKind] == 1)
  {
    v18 = MEMORY[0x1E696AE18];
    v19 = @"momentShare";
  }

  else
  {
    subclassKind = [objc_opt_class() subclassKind];
    v18 = MEMORY[0x1E696AE18];
    if (subclassKind != 3)
    {
      [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil AND %K == nil", @"momentShare", @"collectionShare"];
      goto LABEL_9;
    }

    v19 = @"collectionShare";
  }

  [v18 predicateWithFormat:@"%K == %@", v19, shareCopy];
  v22 = LABEL_9:;
  v23 = MEMORY[0x1E696AB28];
  v29[0] = dCopy;
  v29[1] = v22;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v25 = [v23 andPredicateWithSubpredicates:v24];
  [v16 setPredicate:v25];

  [v16 setFetchLimit:1];
  if (resourcesCopy)
  {
    [v16 setRelationshipKeyPathsForPrefetching:&unk_1F0FBFFD0];
  }

  v28 = 0;
  v26 = [contextCopy executeFetchRequest:v16 error:&v28];
  if ([v26 count])
  {
    firstObject = [v26 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  objc_autoreleasePoolPop(v13);
LABEL_15:

  return firstObject;
}

+ (id)insertIntoManagedObjectContext:(id)context withCloudMasterGUID:(id)d inShare:(id)share
{
  contextCopy = context;
  dCopy = d;
  shareCopy = share;
  if (contextCopy)
  {
    if (dCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCloudMaster.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"moc"}];

    if (dCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLCloudMaster.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"cloudMasterGUID"}];

LABEL_3:
  entityName = [self entityName];
  v13 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(entityName, contextCopy, 0);

  [v13 setCloudMasterGUID:dCopy];
  if ([objc_opt_class() subclassKind] == 1)
  {
    [v13 setMomentShare:shareCopy];
  }

  else if ([objc_opt_class() subclassKind] == 3)
  {
    [v13 setCollectionShare:shareCopy];
  }

  return v13;
}

+ (id)insertIntoPhotoLibrary:(id)library withCloudMasterGUID:(id)d inShare:(id)share
{
  shareCopy = share;
  dCopy = d;
  managedObjectContext = [library managedObjectContext];
  v11 = [self insertIntoManagedObjectContext:managedObjectContext withCloudMasterGUID:dCopy inShare:shareCopy];

  return v11;
}

@end