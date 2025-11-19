@interface PLCloudMaster
+ (PLCloudMaster)cloudMasterWithGUID:(id)a3 inShare:(id)a4 prefetchResources:(BOOL)a5 inManagedObjectContext:(id)a6;
+ (PLCloudMaster)cloudMasterWithScopedIdentifier:(id)a3 prefetchResources:(BOOL)a4 inLibrary:(id)a5;
+ (id)_originalTypes;
+ (id)cloudMastersByScopedIdentifiers:(id)a3 relationshipKeyPathsForPrefetching:(id)a4 inLibrary:(id)a5;
+ (id)cloudMastersWithScopedIdentifiers:(id)a3 relationshipKeyPathsForPrefetching:(id)a4 inLibrary:(id)a5;
+ (id)insertIntoManagedObjectContext:(id)a3 withCloudMasterGUID:(id)a4 inShare:(id)a5;
+ (id)insertIntoPhotoLibrary:(id)a3 withCloudMasterGUID:(id)a4 inShare:(id)a5;
+ (id)listOfSyncedProperties;
+ (unint64_t)fullSizeJPEGSourceForUTI:(id)a3 andImageDimensions:(CGSize)a4;
+ (void)deleteAllCloudMastersInManagedObjectContext:(id)a3;
+ (void)deleteMasterIfNecessary:(id)a3 inLibrary:(id)a4;
+ (void)deleteOrphanedMastersWithManagedObjectContext:(id)a3;
+ (void)resetCloudMastersStateInManagedObjectContext:(id)a3;
- (BOOL)allOriginalsAreLocallyAvailableForAssetUuid:(id)a3 useOriginalAltInsteadOfOriginal:(BOOL)a4;
- (BOOL)allOriginalsAreUploaded;
- (BOOL)hasResourcesOtherThanForAssetUuid:(id)a3;
- (BOOL)isSyncableChange;
- (CPLScopedIdentifier)sourceMasterForDuplicationCPLScopedIdentifier;
- (NSString)description;
- (id)allAssetAttachedResources;
- (id)cplFullRecord;
- (id)cplMasterPropertyChangeForAsset:(id)a3;
- (id)cplPropertyRecord;
- (id)fingerprintContext;
- (id)fingerprintScheme;
- (id)originalFilenameForResourceType:(unint64_t)a3 filePath:(id)a4;
- (id)payloadID;
- (id)payloadsForChangedKeys:(id)a3;
- (id)rm_applyResourcesFromCPLMasterChange:(id)a3 inPhotoLibrary:(id)a4;
- (id)rm_assetAttachedResourceForResourceType:(unint64_t)a3 forAssetUuid:(id)a4;
- (id)rm_assetAttachedResourcesForResourceType:(unint64_t)a3;
- (id)rm_assetUUIDToAssetAttachedResources;
- (id)rm_cloudResourcesForResourceType:(unint64_t)a3;
- (id)rm_transientCloudResourceForResourceType:(unint64_t)a3;
- (id)scopeIdentifier;
- (id)scopedIdentifier;
- (id)shareRelationship;
- (id)stableHashFromOriginalResourceError:(id *)a3;
- (unint64_t)sizeOfOriginal;
- (void)_promptForNilScopeIdentifierRadar;
- (void)applyPropertiesFromCPLMasterChange:(id)a3;
- (void)awakeFromInsert;
- (void)rm_applyExpungeableResourceStatesFromCPLMasterChange:(id)a3 inPhotoLibrary:(id)a4;
- (void)setSourceMasterForDuplicationCPLScopedIdentifier:(id)a3;
- (void)updateImportedByBundleIdentifier:(id)a3;
- (void)updateImportedByDisplayName:(id)a3;
@end

@implementation PLCloudMaster

- (void)rm_applyExpungeableResourceStatesFromCPLMasterChange:(id)a3 inPhotoLibrary:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  [a3 expungeableResourceStates];
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
              v15 = [v6 expungedDate];
              [v12 applyTrashedState:v14 trashedDate:v15];
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

- (id)rm_applyResourcesFromCPLMasterChange:(id)a3 inPhotoLibrary:(id)a4
{
  v140 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  [MEMORY[0x1E696AC08] defaultManager];
  v97 = v96 = v7;
  v9 = v7;
  v10 = v8;
  v11 = [v9 resources];
  v94 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v12 = [v10 pathManager];

  if (!v12)
  {
    v86 = [MEMORY[0x1E696AAA8] currentHandler];
    [v86 handleFailureInMethod:a2 object:self file:@"PLCloudMaster+RM.m" lineNumber:129 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary.pathManager"}];
  }

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  obj = v11;
  v13 = [obj countByEnumeratingWithState:&v123 objects:v139 count:16];
  v101 = self;
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
      v19 = [v17 resourceType];
      if (v19 == 22 && ([v17 identity], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "fileUTI"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E69C08F0], "supplementalResourceAAEType"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "identifier"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v21, "isEqualToString:", v23), v23, v22, v21, v20, !v24))
      {
        v54 = v92;
      }

      else
      {
        v25 = v101;
        v26 = [(PLCloudMaster *)v101 rm_assetAttachedResourcesForResourceType:v19];
        if ([v26 count])
        {
          v117 = 0u;
          v118 = 0u;
          v115 = 0u;
          v116 = 0u;
          v99 = v26;
          v27 = [v99 countByEnumeratingWithState:&v115 objects:v137 count:16];
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
                  objc_enumerationMutation(v99);
                }

                v30 = *(*(&v115 + 1) + 8 * i);
                v31 = [v17 identity];
                v32 = [v30 fingerprint];
                v33 = [v31 fingerPrint];
                if ([v32 isEqualToString:v33])
                {
                  v34 = [(PLCloudMaster *)v25 placeholderState];

                  if (v34 != 1)
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
                      [v30 setRemoteAvailability:{objc_msgSend(v31, "isAvailable")}];
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

                v38 = [v30 fingerprint];
                if (v38 || ![v30 isDerivative])
                {
                  v103 = 1;
                }

                else
                {
                  v103 |= [v30 localAvailability] < 1;
                }

                v39 = [v30 asset];
                v40 = [v30 asset];
                v41 = [v30 asset];
                v42 = [v40 storedResourceForCPLResource:v17 asset:v41 adjusted:0];

                [v42 setCloudLocalState:3];
                v43 = [v42 fileURL];
                v44 = [v43 path];

                if (v44)
                {
                  if ([v39 isPlaceholderAsset])
                  {
                    v45 = [v39 shareRelationship];
                    if (v45)
                    {
                      v46 = [v97 fileExistsAtPath:v44];
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

                  v47 = [v102 pathManager];
                  v48 = [v47 photoDirectoryWithType:4];

                  if ([v44 hasPrefix:v48])
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
                    if ([v97 fileExistsAtPath:v44])
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

                      [v97 removeItemAtPath:v44 error:0];
                    }

                    goto LABEL_64;
                  }

LABEL_65:

                  v25 = v101;
                }

                v51 = [(PLCloudMaster *)v25 placeholderState];
                v52 = v106;
                if (v106)
                {
                  v53 = v106;
                }

                else
                {
                  v53 = 1;
                }

                if (v51 == 1)
                {
                  v52 = v53;
                }

                v106 = v52;

LABEL_72:
              }

              v28 = [v99 countByEnumeratingWithState:&v115 objects:v137 count:16];
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

          v99 = [(PLCloudMaster *)v101 rm_assetUUIDToAssetAttachedResources];
          if ([v99 count])
          {
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v56 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
              {
                v57 = [v99 allKeys];
                *buf = 138412290;
                v128 = v57;
                _os_log_impl(&dword_19BF1F000, v56, OS_LOG_TYPE_DEFAULT, "Found existing master resources for assets %@", buf, 0xCu);
              }
            }

            v121 = 0u;
            v122 = 0u;
            v119 = 0u;
            v120 = 0u;
            v58 = [v99 allKeys];
            v59 = [v58 countByEnumeratingWithState:&v119 objects:v138 count:16];
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
                    objc_enumerationMutation(v58);
                  }

                  v63 = [PLManagedAsset assetWithUUID:*(*(&v119 + 1) + 8 * j) inLibrary:v102];
                  v64 = [v63 storedResourceForCPLResource:v17 asset:v63 adjusted:0];
                  [v64 setCloudLocalState:3];
                  if ([v64 isLocallyAvailable])
                  {
                    [v94 addObject:v64];
                  }
                }

                v60 = [v58 countByEnumeratingWithState:&v119 objects:v138 count:16];
              }

              while (v60);
            }

            v54 = v92;
          }

          else
          {
            v58 = [PLResourceInstaller generateExternalResourceFromCPLResource:v17 cloudMaster:v101 masterResources:obj];
            v65 = [(PLCloudMaster *)v101 rm_transientCloudResourceForResourceType:v19];
            v66 = v65;
            if (v65)
            {
              [v65 updateResourceWithExternalCPLResource:v58];
            }

            else
            {
              v67 = [PLTransientInternalResource insertResourceForCloudMaster:v101 withExternalCloudResource:v58];
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
    self = v101;
  }

  while (v14);
LABEL_109:

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v93 = [(PLCloudMaster *)self assets];
  v98 = [v93 countByEnumeratingWithState:&v111 objects:v136 count:16];
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
          objc_enumerationMutation(v93);
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
        v73 = [v69 allMasterCPLResources];
        v74 = [v73 countByEnumeratingWithState:&v107 objects:v135 count:16];
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
                objc_enumerationMutation(v73);
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
                    v81 = [v78 objectID];
                    v82 = [v69 cloudAssetGUID];
                    *buf = 138544130;
                    v128 = v80;
                    v129 = 2112;
                    v130 = v96;
                    v131 = 2114;
                    v132 = v81;
                    v133 = 2114;
                    v134 = v82;
                    _os_log_impl(&dword_19BF1F000, v79, OS_LOG_TYPE_DEFAULT, "Detected master resource %{public}@ removed on master change %@. Expunging resource %{public}@ on asset %{public}@", buf, 0x2Au);

                    self = v101;
                  }
                }

                [v78 applyTrashedState:2];
              }
            }

            v75 = [v73 countByEnumeratingWithState:&v107 objects:v135 count:16];
          }

          while (v75);
        }

        v68 = v100 + 1;
      }

      while (v100 + 1 != v98);
      v98 = [v93 countByEnumeratingWithState:&v111 objects:v136 count:16];
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
        v84 = [(PLCloudMaster *)self scopedIdentifier];
        *buf = 138412290;
        v128 = v84;
        _os_log_impl(&dword_19BF1F000, v83, OS_LOG_TYPE_DEFAULT, "Setting master %@ as non-placeholder", buf, 0xCu);
      }
    }

    [(PLCloudMaster *)self setPlaceholderState:0];
    [(PLCloudMaster *)self setSourceMasterForDuplicationCPLScopedIdentifier:0];
  }

  return v94;
}

- (BOOL)hasResourcesOtherThanForAssetUuid:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(PLCloudMaster *)self assets];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) uuid];
        v10 = [v9 isEqualToString:v4];

        if (!v10)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v4 = [(PLCloudMaster *)self assets];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) allMasterCPLResources];
        [v3 unionSet:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)rm_assetUUIDToAssetAttachedResources
{
  v29 = *MEMORY[0x1E69E9840];
  v18 = [MEMORY[0x1E695DF90] dictionary];
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
        v8 = [v7 uuid];
        v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v10 = [v7 modernResources];
        v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v19 + 1) + 8 * j);
              if ([v15 isCPLMasterResource])
              {
                [v9 addObject:v15];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v12);
        }

        if ([v9 count])
        {
          [v18 setObject:v9 forKeyedSubscript:v8];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v4);
  }

  return v18;
}

- (id)rm_assetAttachedResourceForResourceType:(unint64_t)a3 forAssetUuid:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [(PLCloudMaster *)self assets];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 uuid];
        v14 = [v13 isEqualToString:v6];

        if (v14)
        {
          v15 = [v12 masterResourceForCPLType:a3];
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (id)rm_assetAttachedResourcesForResourceType:(unint64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(PLCloudMaster *)self assets];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) masterResourceForCPLType:a3];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)rm_cloudResourcesForResourceType:(unint64_t)a3
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
    v7 = [(PLCloudMaster *)self rm_assetAttachedResourcesForResourceType:a3];
  }

  v8 = v7;

  return v8;
}

- (id)rm_transientCloudResourceForResourceType:(unint64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(PLCloudMaster *)self modernResources];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 cplType] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (id)payloadsForChangedKeys:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [(PLCloudMaster *)self assets];
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
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
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v20 + 1) + 8 * i);
      v13 = [v12 payloadID];
      if (v13)
      {
        if (![v12 isValidForJournalPersistence])
        {
          goto LABEL_13;
        }

        v14 = [[PLAssetJournalEntryPayload alloc] initWithCloudMaster:self payloadID:v13 changedKeys:v4];
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
          v15 = [v12 objectID];
          *buf = v19;
          v25 = v15;
          _os_log_impl(&dword_19BF1F000, &v14->super.super, OS_LOG_TYPE_ERROR, "Skipping payload for CloudMaster update with nil payloadID for existing object: %{public}@", buf, 0xCu);
        }
      }

LABEL_13:
    }

    v9 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
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
  v2 = [(PLCloudMaster *)self cloudMasterGUID];
  v3 = [PLJournalEntryPayloadIDFactory payloadIDWithString:v2];

  return v3;
}

- (void)setSourceMasterForDuplicationCPLScopedIdentifier:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v5 = [v4 identifier];
    [(PLCloudMaster *)self setSourceMasterForDuplicationIdentifier:v5];

    v6 = [v7 scopeIdentifier];
    [(PLCloudMaster *)self setSourceMasterForDuplicationScopeIdentifier:v6];
  }

  else
  {
    [(PLCloudMaster *)self setSourceMasterForDuplicationIdentifier:0];
    [(PLCloudMaster *)self setSourceMasterForDuplicationScopeIdentifier:0];
  }
}

- (CPLScopedIdentifier)sourceMasterForDuplicationCPLScopedIdentifier
{
  v3 = [(PLCloudMaster *)self sourceMasterForDuplicationIdentifier];
  v4 = [(PLCloudMaster *)self sourceMasterForDuplicationScopeIdentifier];
  if (v3)
  {
    v5 = [objc_alloc(MEMORY[0x1E6994BB8]) initWithScopeIdentifier:v4 identifier:v3];
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
  v2 = [(PLCloudMaster *)self changedValues];
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

        v7 = [v2 objectForKey:*(*(&v9 + 1) + 8 * i)];

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

- (id)originalFilenameForResourceType:(unint64_t)a3 filePath:(id)a4
{
  v6 = a4;
  if (a3 - 17 < 2)
  {
    v7 = [(PLCloudMaster *)self originalFilename];
    v8 = [v7 stringByDeletingPathExtension];
    v9 = [v6 pathExtension];
    v11 = [v8 stringByAppendingPathExtension:v9];
    goto LABEL_5;
  }

  if (a3 - 23 < 2)
  {
    v7 = [(PLCloudMaster *)self originalFilename];
    v8 = [v7 stringByDeletingPathExtension];
    v9 = [v8 stringByAppendingString:*MEMORY[0x1E69BFFB0]];
    v10 = [v6 pathExtension];
    v11 = [v9 stringByAppendingPathExtension:v10];

LABEL_5:
    goto LABEL_6;
  }

  if (a3 == 1)
  {
    v11 = [(PLCloudMaster *)self originalFilename];
  }

  else
  {
    v11 = 0;
  }

LABEL_6:

  return v11;
}

- (void)_promptForNilScopeIdentifierRadar
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PLCloudMaster *)self objectID];
  v5 = [(PLCloudMaster *)self isDeleted];
  v6 = @"NO";
  if (v5)
  {
    v6 = @"YES";
  }

  v7 = [v3 stringWithFormat:@"Found cloud master with nil scope identifier %@ (isDeleted=%@) %@.\n\nSee rdar://problem/41018298", v4, v6, self];

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

- (id)stableHashFromOriginalResourceError:(id *)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = [(PLCloudMaster *)self scopedIdentifier];
  v6 = [v5 identifier];

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
        v14 = [v13 fingerprint];
        v15 = [v14 isEqualToString:v6];

        if (v15)
        {
          v16 = [v13 stableHash];
          if (v16)
          {
            v17 = v16;
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
  if (a3)
  {
    v18 = v18;
    v19 = 0;
    *a3 = v18;
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
  v3 = [(PLCloudMaster *)self cloudMasterGUID];
  if (v3)
  {
    v4 = [(PLCloudMaster *)self fingerprintContext];
    v5 = [v4 fingerprintSchemeForMasterIdentifier:v3];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [MEMORY[0x1E6994AE0] invalidFingerprintScheme];
    }

    v8 = v7;
  }

  else
  {
    v8 = [MEMORY[0x1E6994AE0] invalidFingerprintScheme];
  }

  return v8;
}

- (id)fingerprintContext
{
  v2 = [(PLManagedObject *)self photoLibrary];
  v3 = [v2 fingerprintContext];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E6994AD8] sharedContext];
  }

  v6 = v5;

  return v6;
}

- (id)scopedIdentifier
{
  v3 = [(PLCloudMaster *)self scopeIdentifier];
  v4 = [(PLCloudMaster *)self cloudMasterGUID];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E6994BB8]) initWithScopeIdentifier:v3 identifier:v4];
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
  v3 = [(PLCloudMaster *)self momentShare];

  if (v3)
  {
    v4 = [(PLCloudMaster *)self momentShare];
  }

  else
  {
    v5 = [(PLCloudMaster *)self collectionShare];

    if (!v5)
    {
      goto LABEL_7;
    }

    v4 = [(PLCloudMaster *)self collectionShare];
  }

  v6 = v4;
  if (v4)
  {
    v7 = [v4 scopeIdentifier];
    goto LABEL_8;
  }

LABEL_7:
  v6 = [(PLManagedObject *)self photoLibrary];
  v7 = [v6 mainScopeIdentifier];
LABEL_8:
  v8 = v7;

  return v8;
}

- (id)cplMasterPropertyChangeForAsset:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E6994D48];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v6 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v38 = self;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "PLCloudMaster %@", buf, 0xCu);
    }
  }

  v7 = objc_alloc_init(MEMORY[0x1E6994AF8]);
  v8 = [(PLCloudMaster *)self scopedIdentifier];
  [v7 setScopedIdentifier:v8];

  v9 = [(PLCloudMaster *)self originalFilename];

  if (v9)
  {
    v10 = [(PLCloudMaster *)self originalFilename];
    [v7 setFilename:v10];
  }

  [v7 setFullSizeJPEGSource:{-[PLCloudMaster fullSizeJPEGSource](self, "fullSizeJPEGSource")}];
  v11 = [(PLCloudMaster *)self creationDate];
  [v7 setCreationDate:v11];

  v12 = [(PLCloudMaster *)self importDate];
  [v7 setImportDate:v12];

  v13 = [(PLCloudMaster *)self uniformTypeIdentifier];
  [v7 setItemType:v13];

  [v7 setChangeType:0];
  v14 = [(PLCloudMaster *)self mediaMetadata];
  v15 = [v14 valueForKey:@"data"];

  v16 = [v15 length];
  if (v16 <= [MEMORY[0x1E6994B60] maxInlineDataSize])
  {
    [v7 setMediaMetaData:v15];
  }

  v17 = [(PLCloudMaster *)self mediaMetadataType];
  [v7 setMediaMetaDataType:v17];

  v18 = [(PLCloudMaster *)self originatingAssetIdentifier];
  [v7 setOriginatingFingerprint:v18];

  [v7 setImportedBy:{-[PLCloudMaster importedBy](self, "importedBy")}];
  v19 = [(PLCloudMaster *)self importedByBundleIdentifier];
  [v7 setImportedByBundleIdentifier:v19];

  v20 = [(PLCloudMaster *)self importedByDisplayName];
  [v7 setImportedByDisplayName:v20];

  if ([(PLCloudMaster *)self placeholderState]== 1)
  {
    v21 = [(PLCloudMaster *)self sourceMasterForDuplicationCPLScopedIdentifier];
    [v7 setResourceCopyFromScopedIdentifier:v21];
  }

  if ([v4 kind] == 1)
  {
    v22 = [(PLCloudMaster *)self mediaMetadata];
    v23 = [v22 valueForKey:@"data"];

    if (v23)
    {
      v36 = 0;
      v24 = [MEMORY[0x1E696AE40] propertyListWithData:v23 options:0 format:0 error:&v36];
      v25 = v36;
      if (v24)
      {
        v26 = [MEMORY[0x1E6987E28] assetProxyWithPropertyList:v24];
        [v4 setVideoInfoOnMasterFromAVAsset:v26];
        v27 = [(PLCloudMaster *)self codecName];
        [v7 setCodec:v27];

        [v7 setVideoFrameRate:{-[PLCloudMaster videoFrameRate](self, "videoFrameRate")}];
LABEL_21:

        goto LABEL_22;
      }

      if ((*v5 & 1) == 0)
      {
        v26 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v28 = [(PLCloudMaster *)self scopedIdentifier];
          *buf = 138543618;
          v38 = v28;
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

      v24 = [(PLCloudMaster *)self scopedIdentifier];
      *buf = 138543362;
      v38 = v24;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "cplMasterPropertyChangeFromCloudMaster: unable to find mediaPropertiesData for %{public}@", buf, 0xCu);
    }

LABEL_22:

    goto LABEL_23;
  }

LABEL_25:
  v29 = [v4 importSession];
  v30 = v29;
  if (v29)
  {
    v31 = [v29 importSessionID];
    [v7 setImportGroupIdentifier:v31];
  }

  if ((*v5 & 1) == 0)
  {
    v32 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v33 = [(PLCloudMaster *)self originalOrientation];
      *buf = 67109120;
      LODWORD(v38) = v33;
      _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_DEBUG, "Setting original orientation %d to masterChange", buf, 8u);
    }
  }

  [v7 setOriginalOrientation:{-[PLCloudMaster originalOrientation](self, "originalOrientation")}];
  v34 = [v4 rm_cplExpungeableMasterResourceStates];
  if ([v34 count])
  {
    [v7 setExpungeableResourceStates:v34];
  }

  return v7;
}

- (id)cplPropertyRecord
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [(PLCloudMaster *)self assets];
  if ([v3 count])
  {
    v4 = [v3 anyObject];
    v5 = [(PLCloudMaster *)self cplMasterPropertyChangeForAsset:v4];

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
        v9 = self;
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
  v3 = [(PLCloudMaster *)self assets];
  if ([v3 count])
  {
    v4 = [v3 anyObject];
    v5 = [(PLManagedObject *)self photoLibrary];
    v6 = [v4 cplMasterChangeInLibrary:v5 shouldGenerateDerivatives:{objc_msgSend(MEMORY[0x1E6994B90], "cplShouldGenerateDerivatives") ^ 1}];
  }

  else
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v7 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = 138412290;
        v10 = self;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Can't find any asset for this master: %@", &v9, 0xCu);
      }
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)allOriginalsAreLocallyAvailableForAssetUuid:(id)a3 useOriginalAltInsteadOfOriginal:(BOOL)a4
{
  v4 = a4;
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
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
      v14 = [v12 integerValue];
      if (v4)
      {
        if (v14 != 1)
        {
          goto LABEL_10;
        }
      }

      else if (v14 != 17)
      {
LABEL_10:
        if ([v12 integerValue] != 17)
        {
          v15 = -[PLCloudMaster rm_assetAttachedResourceForResourceType:forAssetUuid:](self, "rm_assetAttachedResourceForResourceType:forAssetUuid:", [v12 unsignedIntegerValue], v6);
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
        v11 = [v10 firstObject];

        if (v11 && [v11 cloudLocalState] != 3)
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
  v3 = [(PLCloudMaster *)self allAssetAttachedResources];
  v4 = [v3 count];
  v5 = [(PLCloudMaster *)self modernResources];
  v6 = [v5 count] + v4;

  v7 = MEMORY[0x1E696AEC0];
  v8 = [(PLCloudMaster *)self cloudMasterGUID];
  v9 = [v7 stringWithFormat:@"Cloud master GUID: %@ cloudLocalState: %d JPEGSource: %d %lu resources\n", v8, -[PLCloudMaster cloudLocalState](self, "cloudLocalState"), -[PLCloudMaster fullSizeJPEGSource](self, "fullSizeJPEGSource"), v6];

  return v9;
}

- (void)updateImportedByDisplayName:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(PLCloudMaster *)self setImportedByDisplayName:v4];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(PLCloudMaster *)self assets];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 importedByDisplayName];
        IsEqual = PLObjectIsEqual();

        if ((IsEqual & 1) == 0)
        {
          [v10 setImportedByDisplayName:v4];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)updateImportedByBundleIdentifier:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(PLCloudMaster *)self setImportedByBundleIdentifier:v4];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(PLCloudMaster *)self assets];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 importedByBundleIdentifier];
        IsEqual = PLObjectIsEqual();

        if ((IsEqual & 1) == 0)
        {
          [v10 setImportedByBundleIdentifier:v4];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)applyPropertiesFromCPLMasterChange:(id)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLCloudMaster *)self originalFilename];
  v6 = [v4 filename];
  v7 = [v5 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    v8 = [v4 filename];
    [(PLCloudMaster *)self setOriginalFilename:v8];
  }

  v9 = [(PLCloudMaster *)self fullSizeJPEGSource];
  if ([v4 fullSizeJPEGSource] != v9)
  {
    -[PLCloudMaster setFullSizeJPEGSource:](self, "setFullSizeJPEGSource:", [v4 fullSizeJPEGSource]);
  }

  v10 = [(PLCloudMaster *)self creationDate];
  v11 = [v4 creationDate];
  v12 = [v10 isEqualToDate:v11];

  if ((v12 & 1) == 0)
  {
    v13 = [v4 creationDate];
    [(PLCloudMaster *)self setCreationDate:v13];
  }

  v14 = [(PLCloudMaster *)self importDate];
  v15 = [v4 importDate];
  v16 = [v14 isEqualToDate:v15];

  if ((v16 & 1) == 0)
  {
    v17 = [v4 importDate];
    [(PLCloudMaster *)self setImportDate:v17];
  }

  v18 = [(PLCloudMaster *)self uniformTypeIdentifier];
  v19 = [v4 itemType];
  v20 = [v18 isEqualToString:v19];

  if ((v20 & 1) == 0)
  {
    v21 = [v4 itemType];
    [(PLCloudMaster *)self setUniformTypeIdentifier:v21];
  }

  v22 = [(PLCloudMaster *)self originalOrientation];
  if ([v4 originalOrientation] != v22)
  {
    -[PLCloudMaster setOriginalOrientation:](self, "setOriginalOrientation:", [v4 originalOrientation]);
  }

  v23 = [(PLCloudMaster *)self mediaMetadata];
  v24 = [v23 valueForKey:@"data"];
  v25 = [v4 mediaMetaData];
  v26 = [v24 isEqualToData:v25];

  if ((v26 & 1) == 0)
  {
    v27 = [(PLCloudMaster *)self mediaMetadata];
    v28 = [v4 mediaMetaData];
    [v27 setValue:v28 forKey:@"data"];
  }

  v29 = [(PLCloudMaster *)self mediaMetadataType];
  v30 = [v4 mediaMetaDataType];
  v31 = [v29 isEqualToString:v30];

  if ((v31 & 1) == 0)
  {
    v32 = [v4 mediaMetaDataType];
    [(PLCloudMaster *)self setMediaMetadataType:v32];
  }

  v33 = [v4 importGroupIdentifier];
  if (v33)
  {
    v34 = v33;
    v35 = [(PLCloudMaster *)self importSessionID];
    v36 = [v4 importGroupIdentifier];
    v37 = [v35 isEqualToString:v36];

    if ((v37 & 1) == 0)
    {
      v38 = [v4 importGroupIdentifier];
      [(PLCloudMaster *)self setImportSessionID:v38];
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v39 = [(PLCloudMaster *)self assets];
      v40 = [v39 countByEnumeratingWithState:&v53 objects:v57 count:16];
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
              objc_enumerationMutation(v39);
            }

            [*(*(&v53 + 1) + 8 * v43++) setImportSessionAlbumWithImportSessionID:v38];
          }

          while (v41 != v43);
          v41 = [v39 countByEnumeratingWithState:&v53 objects:v57 count:16];
        }

        while (v41);
      }
    }
  }

  v44 = [(PLCloudMaster *)self originatingAssetIdentifier];
  v45 = [v4 originatingFingerprint];
  v46 = [v44 isEqualToString:v45];

  if ((v46 & 1) == 0)
  {
    v47 = [v4 originatingFingerprint];
    [(PLCloudMaster *)self setOriginatingAssetIdentifier:v47];
  }

  v48 = [(PLCloudMaster *)self importedBy];
  if (v48 != [v4 importedBy])
  {
    -[PLCloudMaster setImportedBy:](self, "setImportedBy:", [v4 importedBy]);
  }

  v49 = [v4 importedByBundleIdentifier];

  if (v49)
  {
    v50 = [v4 importedByBundleIdentifier];
    [(PLCloudMaster *)self updateImportedByBundleIdentifier:v50];
  }

  v51 = [v4 importedByDisplayName];

  if (v51)
  {
    v52 = [v4 importedByDisplayName];
    [(PLCloudMaster *)self updateImportedByDisplayName:v52];
  }
}

- (void)awakeFromInsert
{
  v5.receiver = self;
  v5.super_class = PLCloudMaster;
  [(PLCloudMaster *)&v5 awakeFromInsert];
  v3 = [(PLCloudMaster *)self managedObjectContext];
  v4 = [(PLManagedObject *)PLCloudMasterMediaMetadata insertInManagedObjectContext:v3];
  [(PLCloudMaster *)self setMediaMetadata:v4];
}

- (id)shareRelationship
{
  v3 = [(PLCloudMaster *)self momentShare];

  if (v3)
  {
    v4 = [(PLCloudMaster *)self momentShare];
  }

  else
  {
    v5 = [(PLCloudMaster *)self collectionShare];

    if (v5)
    {
      v4 = [(PLCloudMaster *)self collectionShare];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (unint64_t)fullSizeJPEGSourceForUTI:(id)a3 andImageDimensions:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = [MEMORY[0x1E69C08F0] typeWithIdentifier:a3];
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

+ (void)deleteMasterIfNecessary:(id)a3 inLibrary:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [v5 assets];
    v8 = [v7 count];

    if (!v8)
    {
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v11 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138412290;
          v13 = v5;
          _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Deleting master %@", &v12, 0xCu);
        }
      }

      v9 = [v6 managedObjectContext];
      [v9 deleteObject:v5];
      goto LABEL_11;
    }

    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v9 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v5 assets];
        v12 = 138412546;
        v13 = v5;
        v14 = 2048;
        v15 = [v10 count];
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Ignored deleting a master record: %@, master still being referred by %lu assets", &v12, 0x16u);
      }

LABEL_11:
    }
  }
}

+ (void)deleteOrphanedMastersWithManagedObjectContext:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = MEMORY[0x1E695D5E0];
  v7 = [a1 entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(%K, $asset, $asset != nil).@count = 0", @"assets"];
  [v8 setPredicate:v9];

  v10 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v8];
  [v10 setResultType:2];
  v15 = 0;
  v11 = [v4 executeRequest:v10 error:&v15];
  v12 = v15;
  if (v11)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v13 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v11 result];
        *buf = 138412290;
        v17 = v14;
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

+ (void)resetCloudMastersStateInManagedObjectContext:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  v9 = [a1 entityName];
  v10 = [v8 initWithEntityName:v9];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"cloudLocalState != %d", 0];
  [v10 setPredicate:v11];
  [v10 setResultType:2];
  [v10 setPropertiesToUpdate:&unk_1F0FC07D0];
  v16 = 0;
  v12 = [v4 executeRequest:v10 error:&v16];
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
      v15 = [v12 result];
      *buf = 138412290;
      v18 = v15;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Batch updated %@ cloud masters", buf, 0xCu);
    }

    goto LABEL_12;
  }

  objc_autoreleasePoolPop(v5);
}

+ (void)deleteAllCloudMastersInManagedObjectContext:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  v9 = [a1 entityName];
  v10 = [v8 fetchRequestWithEntityName:v9];

  [v10 setFetchBatchSize:100];
  v11 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v10];
  [v11 setResultType:2];
  v16 = 0;
  v12 = [v4 executeRequest:v11 error:&v16];
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
      v15 = [v12 result];
      *buf = 138412290;
      v18 = v15;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Batch deleted %@ cloud masters", buf, 0xCu);
    }

    goto LABEL_12;
  }

  objc_autoreleasePoolPop(v5);
}

+ (id)cloudMastersWithScopedIdentifiers:(id)a3 relationshipKeyPathsForPrefetching:(id)a4 inLibrary:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[PLCloudMaster entityName];
  v11 = [PLManagedAsset objectsWithScopedIdentifiers:v9 forEntityName:v10 prefetchResources:0 relationshipKeyPathsForPrefetching:v8 inLibrary:v7];

  return v11;
}

+ (PLCloudMaster)cloudMasterWithScopedIdentifier:(id)a3 prefetchResources:(BOOL)a4 inLibrary:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  v15 = 0;
  v9 = [PLShare getShareIfNecessary:&v15 forCPLRecordWithClass:objc_opt_class() scopedIdentifier:v7 inLibrary:v8];
  v10 = v15;
  v11 = 0;
  if (v9)
  {
    v12 = [v7 identifier];
    v13 = [v8 managedObjectContext];
    v11 = [PLCloudMaster cloudMasterWithGUID:v12 inShare:v10 prefetchResources:v6 inManagedObjectContext:v13];
  }

  return v11;
}

+ (id)cloudMastersByScopedIdentifiers:(id)a3 relationshipKeyPathsForPrefetching:(id)a4 inLibrary:(id)a5
{
  v5 = [a1 cloudMastersWithScopedIdentifiers:a3 relationshipKeyPathsForPrefetching:a4 inLibrary:a5];
  v6 = [v5 _pl_indexBy:&__block_literal_global_88236];

  return v6;
}

+ (PLCloudMaster)cloudMasterWithGUID:(id)a3 inShare:(id)a4 prefetchResources:(BOOL)a5 inManagedObjectContext:(id)a6
{
  v7 = a5;
  v29[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (!v10)
  {
    v20 = 0;
    goto LABEL_15;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = MEMORY[0x1E695D5E0];
  v15 = [a1 entityName];
  v16 = [v14 fetchRequestWithEntityName:v15];

  v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"cloudMasterGUID", v10];
  if ([objc_opt_class() subclassKind] == 1)
  {
    v18 = MEMORY[0x1E696AE18];
    v19 = @"momentShare";
  }

  else
  {
    v21 = [objc_opt_class() subclassKind];
    v18 = MEMORY[0x1E696AE18];
    if (v21 != 3)
    {
      [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil AND %K == nil", @"momentShare", @"collectionShare"];
      goto LABEL_9;
    }

    v19 = @"collectionShare";
  }

  [v18 predicateWithFormat:@"%K == %@", v19, v11];
  v22 = LABEL_9:;
  v23 = MEMORY[0x1E696AB28];
  v29[0] = v17;
  v29[1] = v22;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v25 = [v23 andPredicateWithSubpredicates:v24];
  [v16 setPredicate:v25];

  [v16 setFetchLimit:1];
  if (v7)
  {
    [v16 setRelationshipKeyPathsForPrefetching:&unk_1F0FBFFD0];
  }

  v28 = 0;
  v26 = [v12 executeFetchRequest:v16 error:&v28];
  if ([v26 count])
  {
    v20 = [v26 firstObject];
  }

  else
  {
    v20 = 0;
  }

  objc_autoreleasePoolPop(v13);
LABEL_15:

  return v20;
}

+ (id)insertIntoManagedObjectContext:(id)a3 withCloudMasterGUID:(id)a4 inShare:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"PLCloudMaster.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"moc"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:a1 file:@"PLCloudMaster.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"cloudMasterGUID"}];

LABEL_3:
  v12 = [a1 entityName];
  v13 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v12, v9, 0);

  [v13 setCloudMasterGUID:v10];
  if ([objc_opt_class() subclassKind] == 1)
  {
    [v13 setMomentShare:v11];
  }

  else if ([objc_opt_class() subclassKind] == 3)
  {
    [v13 setCollectionShare:v11];
  }

  return v13;
}

+ (id)insertIntoPhotoLibrary:(id)a3 withCloudMasterGUID:(id)a4 inShare:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 managedObjectContext];
  v11 = [a1 insertIntoManagedObjectContext:v10 withCloudMasterGUID:v9 inShare:v8];

  return v11;
}

@end