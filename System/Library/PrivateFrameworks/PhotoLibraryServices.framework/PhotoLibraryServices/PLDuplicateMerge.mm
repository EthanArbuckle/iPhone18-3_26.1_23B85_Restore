@interface PLDuplicateMerge
+ (BOOL)mergeAssets:(id)assets targetAssetOID:(id)d photolibrary:(id)photolibrary error:(id *)error;
- (BOOL)_checkCPLDisabledAssetHasValidOriginalResourcesForAsset:(id)asset;
- (BOOL)_isValidForLocationOverwriteWithSource:(id)source;
- (BOOL)_mergeAdjustmentsFromSource:(id)source error:(id *)error;
- (BOOL)mergeResourcesFromSource:(id)source error:(id *)error;
- (PLDuplicateMerge)initWithSourceAssets:(id)assets targetAsset:(id)asset photolibrary:(id)photolibrary;
- (PLDuplicateMerge)mergeWithError:(id *)error;
- (void)_mergeFaceRelationshipsFromSource:(id)source;
- (void)_mergeLocationFromSource:(id)source forceUpdate:(BOOL)update;
- (void)_mergeMetadataFromSource:(id)source;
- (void)_mergeSharedLibraryMetadataFromSource:(id)source;
- (void)_preFileCloneChecksForURL:(id)l;
- (void)_resetMediaAnalysisStateWithType:(int64_t)type;
- (void)_setDCIMFilenameFromSource:(id)source;
- (void)_setUBFFilenameFromDuplicateSource:(id)source;
@end

@implementation PLDuplicateMerge

- (BOOL)_isValidForLocationOverwriteWithSource:(id)source
{
  sourceCopy = source;
  asset = [(PLDuplicateMerge *)self asset];
  asset2 = [sourceCopy asset];
  location = [asset2 location];

  if (!location)
  {
    goto LABEL_6;
  }

  location2 = [asset location];

  if (!location2)
  {
    LOBYTE(v12) = 1;
    goto LABEL_10;
  }

  hasModifiedUserLocation = [sourceCopy hasModifiedUserLocation];
  targetAsset = [(PLDuplicateMerge *)self targetAsset];
  if (![targetAsset hasModifiedUserLocation])
  {

    if ((hasModifiedUserLocation & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    [location coordinate];
    v12 = [asset isLocatedAtCoordinates:?] ^ 1;
    goto LABEL_10;
  }

  hasModifiedUserLocation2 = [sourceCopy hasModifiedUserLocation];

  if (!hasModifiedUserLocation2)
  {
    if (!hasModifiedUserLocation)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if ([(PLDuplicateMergeModelProperties *)self->_mergeModelProperties isRecentlyModifiedSourceAsset:sourceCopy])
  {
    goto LABEL_9;
  }

LABEL_6:
  LOBYTE(v12) = 0;
LABEL_10:

  return v12;
}

- (void)_setDCIMFilenameFromSource:(id)source
{
  asset = [source asset];
  asset2 = [(PLDuplicateMerge *)self asset];
  filename = [asset2 filename];
  pathExtension = [filename pathExtension];
  filename2 = [asset filename];
  pathExtension2 = [filename2 pathExtension];
  v9 = [pathExtension isEqualToString:pathExtension2];

  if ((v9 & 1) == 0)
  {
    filename3 = [asset filename];
    pathExtension3 = [filename3 pathExtension];

    if (pathExtension3)
    {
      filename4 = [asset2 filename];
      stringByDeletingPathExtension = [filename4 stringByDeletingPathExtension];

      v14 = [stringByDeletingPathExtension stringByAppendingPathExtension:pathExtension3];
      [asset2 setFilename:v14];
    }
  }
}

- (void)_resetMediaAnalysisStateWithType:(int64_t)type
{
  asset = [(PLDuplicateMerge *)self asset];
  v6 = asset;
  if (type != 1)
  {
    v5 = asset;
    if (type)
    {
      goto LABEL_5;
    }

    PLResetMediaProcessingStateOnAsset(2, asset, 1uLL);
    PLResetMediaProcessingStateOnAsset(1, v6, 1uLL);
    PLResetMediaProcessingStateOnAsset(17, v6, 1uLL);
    PLResetMediaProcessingStateOnAsset(12, v6, 0xFFFFFuLL);
    PLResetMediaProcessingStateOnAsset(10, v6, 0xFFFFFuLL);
  }

  PLResetMediaProcessingStateOnAsset(3, v6, 1uLL);
  v5 = v6;
LABEL_5:
}

- (BOOL)_mergeAdjustmentsFromSource:(id)source error:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  asset = [(PLDuplicateMerge *)self asset];
  resourceSwapAssetUUID = [sourceCopy resourceSwapAssetUUID];
  uuid = [asset uuid];
  v9 = [resourceSwapAssetUUID isEqualToString:uuid];

  if (v9)
  {
    asset2 = [sourceCopy asset];
    originalHeight = [asset2 originalHeight];
    if (originalHeight != [asset originalHeight] || (v12 = -[NSObject originalWidth](asset2, "originalWidth"), v12 != objc_msgSend(asset, "originalWidth")))
    {
      v15 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        shortDescription = [sourceCopy shortDescription];
        targetAsset = [(PLDuplicateMerge *)self targetAsset];
        shortDescription2 = [targetAsset shortDescription];
        *buf = 138543618;
        v38 = shortDescription;
        v39 = 2114;
        v40 = shortDescription2;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Duplicate Merge: skipping adjustment merge - resource size mismatch [%{public}@ -> %{public}@]", buf, 0x16u);
      }

      v16 = 1;
      goto LABEL_14;
    }

    if ([asset2 hasAdjustments])
    {
      library = self->_library;
      v36 = 0;
      shortDescription5 = [PLUnmanagedAdjustment copyUnmanagedAdjustmentFromSourceAsset:asset2 forPlaceholderAsset:asset inLibrary:library error:&v36];
      v15 = v36;
      v16 = shortDescription5 != 0;
      if (shortDescription5)
      {
        [asset setAdjustmentsState:{-[NSObject adjustmentsState](asset2, "adjustmentsState")}];
        imageRequestHints = [asset2 imageRequestHints];
        [asset setImageRequestHints:imageRequestHints];

        [asset setPackedAcceptableCropRect:{-[NSObject packedAcceptableCropRect](asset2, "packedAcceptableCropRect")}];
        [asset setPackedPreferredCropRect:{-[NSObject packedPreferredCropRect](asset2, "packedPreferredCropRect")}];
        additionalAttributes = [asset2 additionalAttributes];
        adjustedStableHash = [additionalAttributes adjustedStableHash];
        additionalAttributes2 = [asset additionalAttributes];
        [additionalAttributes2 setAdjustedStableHash:adjustedStableHash];

        additionalAttributes3 = [asset additionalAttributes];
        [additionalAttributes3 setUnmanagedAdjustment:shortDescription5];

        v22 = PLDuplicateDetectionGetLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          shortDescription3 = [sourceCopy shortDescription];
          targetAsset2 = [(PLDuplicateMerge *)self targetAsset];
          shortDescription4 = [targetAsset2 shortDescription];
          *buf = 138543618;
          v38 = shortDescription3;
          v39 = 2114;
          v40 = shortDescription4;
          _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_INFO, "Duplicate Merge: transfer adjustment [%{public}@ -> %{public}@]", buf, 0x16u);
        }
      }

      else
      {
        v22 = PLDuplicateDetectionGetLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v38 = v15;
          _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "Duplicate Merge: Error copying source adjustment. Error: %@", buf, 0xCu);
        }
      }

      goto LABEL_25;
    }

    if ([asset hasAdjustments])
    {
      [asset revertToOriginal];
      v15 = PLDuplicateDetectionGetLog();
      v16 = 1;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        shortDescription5 = [sourceCopy shortDescription];
        targetAsset3 = [(PLDuplicateMerge *)self targetAsset];
        shortDescription6 = [targetAsset3 shortDescription];
        *buf = 138543618;
        v38 = shortDescription5;
        v39 = 2114;
        v40 = shortDescription6;
        v35 = "Duplicate Merge: revert adjustment [%{public}@ -> %{public}@]";
LABEL_21:
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_INFO, v35, buf, 0x16u);

LABEL_25:
      }
    }

    else
    {
      v15 = PLDuplicateDetectionGetLog();
      v16 = 1;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        shortDescription5 = [sourceCopy shortDescription];
        targetAsset3 = [(PLDuplicateMerge *)self targetAsset];
        shortDescription6 = [targetAsset3 shortDescription];
        *buf = 138543618;
        v38 = shortDescription5;
        v39 = 2114;
        v40 = shortDescription6;
        v35 = "Duplicate Merge: no adjustment migration [%{public}@ -> %{public}@]";
        goto LABEL_21;
      }
    }

LABEL_14:

    goto LABEL_15;
  }

  asset2 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(asset2, OS_LOG_TYPE_ERROR))
  {
    shortDescription7 = [sourceCopy shortDescription];
    targetAsset4 = [(PLDuplicateMerge *)self targetAsset];
    shortDescription8 = [targetAsset4 shortDescription];
    *buf = 138543618;
    v38 = shortDescription7;
    v39 = 2114;
    v40 = shortDescription8;
    _os_log_impl(&dword_19BF1F000, asset2, OS_LOG_TYPE_ERROR, "Duplicate Merge: skipping adjustment merge - resource swap uuid mismatch [%{public}@ -> %{public}@]", buf, 0x16u);
  }

  v16 = 1;
LABEL_15:

  return v16;
}

- (void)_setUBFFilenameFromDuplicateSource:(id)source
{
  sourceCopy = source;
  asset = [(PLDuplicateMerge *)self asset];
  pathManager = [asset pathManager];
  isUBF = [pathManager isUBF];

  if (isUBF)
  {
    asset2 = [sourceCopy asset];
    originalFilename = [asset2 originalFilename];
    [asset setOriginalFilename:originalFilename];

    primaryStoreOriginalResource = [asset2 primaryStoreOriginalResource];
    if (primaryStoreOriginalResource)
    {
      [asset setDirectory:0];
      [asset setFilename:0];
      uniformTypeIdentifier = [primaryStoreOriginalResource uniformTypeIdentifier];
      identifier = [uniformTypeIdentifier identifier];
      originalFilename2 = [asset originalFilename];
      [asset setUBFFilenameAndDirectoryWithOriginalUniformTypeIdentifier:identifier originalFilename:originalFilename2];
    }
  }
}

- (void)_preFileCloneChecksForURL:(id)l
{
  *&v31[5] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = lCopy;
  if (lCopy)
  {
    v29 = 0;
    v6 = [lCopy checkResourceIsReachableAndReturnError:&v29];
    v7 = v29;
    if (v6)
    {
      v28 = 0;
      v8 = *MEMORY[0x1E695DB78];
      v27 = 0;
      v9 = [v5 getResourceValue:&v28 forKey:v8 error:&v27];
      v10 = v28;
      v11 = v27;

      if (!v9)
      {
        v14 = PLDuplicateDetectionGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v31 = v11;
          v18 = "Duplicate Merge: Failed to identify if the cloned target is a directory. Error: %@";
          v22 = v14;
          v23 = 12;
LABEL_20:
          _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, v18, buf, v23);
          goto LABEL_21;
        }

        goto LABEL_21;
      }

      bOOLValue = [v10 BOOLValue];
      fileSystemRepresentation = [v5 fileSystemRepresentation];
      if (bOOLValue)
      {
        if (rmdir(fileSystemRepresentation))
        {
          v14 = PLDuplicateDetectionGetLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = *__error();
            v16 = __error();
            v17 = strerror(*v16);
            *buf = 67109378;
            v31[0] = v15;
            LOWORD(v31[1]) = 2080;
            *(&v31[1] + 2) = v17;
            v18 = "Duplicate Merge: Failed to remove a directory on the cloned target location. Error: [%d] %s";
LABEL_19:
            v22 = v14;
            v23 = 18;
            goto LABEL_20;
          }

          goto LABEL_21;
        }
      }

      else if (unlink(fileSystemRepresentation))
      {
        v14 = PLDuplicateDetectionGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v24 = *__error();
          v25 = __error();
          v26 = strerror(*v25);
          *buf = 67109378;
          v31[0] = v24;
          LOWORD(v31[1]) = 2080;
          *(&v31[1] + 2) = v26;
          v18 = "Duplicate Merge: Failed to remove a file on the cloned target location. Error: [%d] %s";
          goto LABEL_19;
        }

LABEL_21:
      }

LABEL_22:

      v7 = v11;
      goto LABEL_23;
    }

    if ((PLIsErrorFileNotFound() & 1) == 0)
    {
      v10 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v31 = v7;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Duplicate Merge: Failed to check if the cloned target location was reachable. Error: %@", buf, 0xCu);
      }

      v11 = v7;
      goto LABEL_22;
    }
  }

  else
  {
    v7 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      targetAsset = [(PLDuplicateMerge *)self targetAsset];
      asset = [targetAsset asset];
      uuid = [asset uuid];
      *buf = 138543362;
      *v31 = uuid;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "Duplicate Merge: Skipping pre clone check for asset: %{public}@", buf, 0xCu);
    }
  }

LABEL_23:
}

- (BOOL)_checkCPLDisabledAssetHasValidOriginalResourcesForAsset:(id)asset
{
  v20 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  primaryStoreOriginalResource = [assetCopy primaryStoreOriginalResource];
  v5 = [assetCopy persistedResourcesMatching:&__block_literal_global_116];
  if (!primaryStoreOriginalResource || (([assetCopy isRAWPlusJPEG] & 1) != 0 || objc_msgSend(assetCopy, "isPhotoIris")) && objc_msgSend(v5, "count") < 2)
  {
    v6 = 0;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          fileURL = [*(*(&v15 + 1) + 8 * i) fileURL];
          v13 = [fileURL checkResourceIsReachableAndReturnError:0];

          if (!v13)
          {
            v6 = 0;
            goto LABEL_16;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v6 = 1;
LABEL_16:
  }

  return v6;
}

BOOL __76__PLDuplicateMerge__checkCPLDisabledAssetHasValidOriginalResourcesForAsset___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 cplType] == 1 || objc_msgSend(v2, "cplType") == 18 || objc_msgSend(v2, "cplType") == 17;

  return v3;
}

- (BOOL)mergeResourcesFromSource:(id)source error:(id *)error
{
  v163[1] = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  v114 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v119 = sourceCopy;
  asset = [sourceCopy asset];
  asset2 = [(PLDuplicateMerge *)self asset];
  pathManager = [asset2 pathManager];
  v106 = [asset2 persistedResourcesMatching:&__block_literal_global_100];
  if (([sourceCopy isCPLEnabled] & 1) != 0 || (objc_msgSend(asset, "master"), v6 = objc_claimAutoreleasedReturnValue(), v6, !v6) || !-[PLDuplicateMerge _checkCPLDisabledAssetHasValidOriginalResourcesForAsset:](self, "_checkCPLDisabledAssetHasValidOriginalResourcesForAsset:", asset2) || -[PLDuplicateMerge _checkCPLDisabledAssetHasValidOriginalResourcesForAsset:](self, "_checkCPLDisabledAssetHasValidOriginalResourcesForAsset:", asset))
  {
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v7 = v106;
    v8 = [v7 countByEnumeratingWithState:&v144 objects:v161 count:16];
    if (v8)
    {
      v9 = *v145;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v145 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v144 + 1) + 8 * i);
          [asset2 removeLocalFileForResource:v11 allowDCIMPath:1];
          [v11 deleteResource];
        }

        v8 = [v7 countByEnumeratingWithState:&v144 objects:v161 count:16];
      }

      while (v8);
    }

    if ([pathManager isDCIM])
    {
      [(PLDuplicateMerge *)self _setDCIMFilenameFromSource:v119];
    }

    else
    {
      [(PLDuplicateMerge *)self _setUBFFilenameFromDuplicateSource:v119];
    }

    if (![v119 isCPLEnabled] || (objc_msgSend(asset, "master"), v12 = objc_claimAutoreleasedReturnValue(), v13 = v12 == 0, v12, v13))
    {
      master = [asset master];

      if (master)
      {
        v25 = PLDuplicateDetectionGetLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          shortDescription = [v119 shortDescription];
          targetAsset = [(PLDuplicateMerge *)self targetAsset];
          shortDescription2 = [targetAsset shortDescription];
          *buf = 138543618;
          *&buf[4] = shortDescription;
          *&buf[12] = 2114;
          *&buf[14] = shortDescription2;
          _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "Duplicate Merge: Source asset has a master record, but CPL is not enabled [%{public}@ -> %{public}@]", buf, 0x16u);
        }
      }

      v29 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        shortDescription3 = [v119 shortDescription];
        targetAsset2 = [(PLDuplicateMerge *)self targetAsset];
        shortDescription4 = [targetAsset2 shortDescription];
        *buf = 138543618;
        *&buf[4] = shortDescription3;
        *&buf[12] = 2114;
        *&buf[14] = shortDescription4;
        _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_INFO, "Duplicate Merge: no master to remap, going to copy all resources manually [%{public}@ -> %{public}@]", buf, 0x16u);
      }

      v23 = [asset persistedResourcesMatching:&__block_literal_global_107_87899];
      v116 = 0;
    }

    else
    {
      v14 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        targetAsset3 = [(PLDuplicateMerge *)self targetAsset];
        shortDescription5 = [targetAsset3 shortDescription];
        master2 = [asset master];
        scopedIdentifier = [master2 scopedIdentifier];
        shortDescription6 = [v119 shortDescription];
        *buf = 138543874;
        *&buf[4] = shortDescription5;
        *&buf[12] = 2114;
        *&buf[14] = scopedIdentifier;
        *&buf[22] = 2114;
        v155 = shortDescription6;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_INFO, "Duplicate Merge: going to remap master on %{public}@ with master %{public}@ from %{public}@", buf, 0x20u);
      }

      master3 = [asset master];
      [PLManagedAsset fixupCloudPhotoLibraryAsset:asset2 withCloudMaster:master3 inLibrary:self->_library];

      allAssetCPLResources = [asset allAssetCPLResources];
      v22 = [allAssetCPLResources count];
      v116 = v22 != 0;
      if (v22)
      {
        v23 = [allAssetCPLResources copy];
      }

      else
      {
        v23 = 0;
      }

      mergeCrashRecovery = self->_mergeCrashRecovery;
      uuid = [asset2 uuid];
      [(PLDuplicateMergeCrashRecovery *)mergeCrashRecovery writeCrashRecoveryMarkerFileForTargetAssetUUID:uuid error:0];
    }

    v35 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = [v23 count];
      shortDescription7 = [v119 shortDescription];
      targetAsset4 = [(PLDuplicateMerge *)self targetAsset];
      shortDescription8 = [targetAsset4 shortDescription];
      *buf = 134218498;
      *&buf[4] = v36;
      *&buf[12] = 2114;
      *&buf[14] = shortDescription7;
      *&buf[22] = 2114;
      v155 = shortDescription8;
      _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_INFO, "Duplicate Merge: manually installing %lu resources [%{public}@ -> %{public}@]", buf, 0x20u);
    }

    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    obj = v23;
    v122 = [obj countByEnumeratingWithState:&v140 objects:v160 count:16];
    if (v122)
    {
      v109 = 0;
      v107 = 1;
      v120 = *v141;
      v103 = *MEMORY[0x1E69BFF48];
      v104 = *MEMORY[0x1E696A578];
      do
      {
        v40 = 0;
        do
        {
          if (*v141 != v120)
          {
            objc_enumerationMutation(obj);
          }

          v41 = *(*(&v140 + 1) + 8 * v40);
          v42 = [v41 validatedExternalResourceRepresentationUsingFileURL:0];
          v125 = [asset2 storedResourceForExternalResource:v42 asset:asset2];
          v43 = v125;
          if (!v125)
          {
            v44 = PLDuplicateDetectionGetLog();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              shortDescription9 = [v119 shortDescription];
              targetAsset5 = [(PLDuplicateMerge *)self targetAsset];
              shortDescription10 = [targetAsset5 shortDescription];
              *buf = 138543874;
              *&buf[4] = shortDescription9;
              *&buf[12] = 2114;
              *&buf[14] = shortDescription10;
              *&buf[22] = 2112;
              v155 = v42;
              _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_ERROR, "Duplicate Merge: failed to install new resource on target with external source resource: [%{public}@ -> %{public}@] %@", buf, 0x20u);
            }

            isDerivative = [v41 isDerivative];
            v43 = 0;
            if ((isDerivative & 1) == 0)
            {
              v70 = MEMORY[0x1E696ABC0];
              v158 = v104;
              v71 = MEMORY[0x1E696AEC0];
              uuid2 = [asset uuid];
              uuid3 = [asset2 uuid];
              v74 = [v71 stringWithFormat:@"Duplicate Merge: failed to install new resource on target with external source resource: [%@ -> %@] %@", uuid2, uuid3, v42];
              v159 = v74;
              v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v159 forKeys:&v158 count:1];
              v76 = [v70 errorWithDomain:v103 code:47011 userInfo:v75];

              v107 = 0;
              v109 = v76;
              goto LABEL_70;
            }
          }

          [v43 resetPrefetchState];
          fileURL = [v41 fileURL];
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v155 = __Block_byref_object_copy__87903;
          v156 = __Block_byref_object_dispose__87904;
          v157 = 0;
          v136 = 0;
          v137 = &v136;
          v138 = 0x2020000000;
          v139 = 0;
          if (!fileURL)
          {
            goto LABEL_94;
          }

          if ([pathManager isUBF])
          {
            v111 = v40;
            v112 = v42;
            v113 = objc_alloc(MEMORY[0x1E69BF298]);
            uuid4 = [asset2 uuid];
            bundleScope = [asset2 bundleScope];
            uniformTypeIdentifier = [v41 uniformTypeIdentifier];
            identifier = [uniformTypeIdentifier identifier];
            version = [v41 version];
            resourceType = [v41 resourceType];
            recipeID = [v41 recipeID];
            recipeID2 = [v41 recipeID];
            if (recipeID2)
            {
              v55 = 0;
            }

            else
            {
              originalFilename = [asset originalFilename];
              v55 = originalFilename;
            }

            customSuffix = [v41 customSuffix];
            cplFileURL = [v113 initWithAssetUuid:uuid4 bundleScope:bundleScope uti:identifier resourceVersion:version resourceType:resourceType recipeID:recipeID originalFilename:v55 customSuffix:customSuffix];

            if (!recipeID2)
            {
            }

            v129[0] = MEMORY[0x1E69E9820];
            v129[1] = 3221225472;
            v129[2] = __51__PLDuplicateMerge_mergeResourcesFromSource_error___block_invoke_112;
            v129[3] = &unk_1E7573410;
            v129[4] = self;
            v134 = &v136;
            v130 = fileURL;
            v131 = v125;
            v132 = asset2;
            v133 = v114;
            v135 = buf;
            [pathManager obtainAccessAndWaitWithFileWithIdentifier:cplFileURL mode:2 toURLWithHandler:v129];

            v40 = v111;
            v42 = v112;
          }

          else
          {
            cplFileURL = [v125 cplFileURL];
            if (cplFileURL)
            {
              [(PLDuplicateMerge *)self _preFileCloneChecksForURL:cplFileURL];
              v57 = (*&buf[8] + 40);
              v128 = *(*&buf[8] + 40);
              v58 = [PLManagedAsset cloneResourceFileFromURL:fileURL toURL:cplFileURL forDestinationResource:v125 forDestinationAsset:asset2 fileManager:v114 error:&v128];
              objc_storeStrong(v57, v128);
              *(v137 + 24) = v58;
            }
          }

          if (v137[3])
          {
            goto LABEL_94;
          }

          v60 = PLDuplicateDetectionGetLog();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            shortDescription11 = [v119 shortDescription];
            targetAsset6 = [(PLDuplicateMerge *)self targetAsset];
            shortDescription12 = [targetAsset6 shortDescription];
            v64 = *(*&buf[8] + 40);
            *v148 = 138543874;
            v149 = shortDescription11;
            v150 = 2114;
            v151 = shortDescription12;
            v152 = 2112;
            v153 = v64;
            _os_log_impl(&dword_19BF1F000, v60, OS_LOG_TYPE_ERROR, "Duplicate Merge: clone resource file failed: [%{public}@ -> %{public}@] Error: %@", v148, 0x20u);
          }

          if ([v41 isDerivative])
          {
LABEL_94:
            if (v116 && [v41 isCPLAssetResource] && objc_msgSend(v41, "isCPLResource") && (v137[3] & 1) == 0 && objc_msgSend(v41, "isRemotelyAvailable"))
            {
              additionalAttributes = [asset2 additionalAttributes];
              scopedIdentifier2 = [asset scopedIdentifier];
              [additionalAttributes setSourceAssetForDuplicationCPLScopedIdentifier:scopedIdentifier2];

              [asset2 setCloudLocalState:0];
            }

            v67 = 1;
          }

          else
          {
            v68 = *(*&buf[8] + 40);

            v67 = 0;
            v107 = 0;
            v109 = v68;
          }

          _Block_object_dispose(&v136, 8);
          _Block_object_dispose(buf, 8);

          if (!v67)
          {
            goto LABEL_70;
          }

          ++v40;
        }

        while (v122 != v40);
        v69 = [obj countByEnumeratingWithState:&v140 objects:v160 count:16];
        v122 = v69;
      }

      while (v69);
    }

    else
    {
      v109 = 0;
      v107 = 1;
    }

LABEL_70:

    master4 = [asset master];
    [PLCloudMaster deleteMasterIfNecessary:master4 inLibrary:self->_library];

    if (v107)
    {
      asset3 = [(PLDuplicateMerge *)self asset];
      uuid5 = [asset3 uuid];
      [v119 setResourceSwapAssetUUID:uuid5];

      mergeModelProperties = self->_mergeModelProperties;
      v127 = 0;
      LOBYTE(uuid5) = [(PLDuplicateMergeModelProperties *)mergeModelProperties transferPropertiesFromSourceAsset:v119 propertyMergeType:1 error:&v127];
      v81 = v127;
      if ((uuid5 & 1) == 0)
      {
        v82 = PLDuplicateDetectionGetLog();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
        {
          shortDescription13 = [v119 shortDescription];
          targetAsset7 = [(PLDuplicateMerge *)self targetAsset];
          shortDescription14 = [targetAsset7 shortDescription];
          *buf = 138412802;
          *&buf[4] = shortDescription13;
          *&buf[12] = 2112;
          *&buf[14] = shortDescription14;
          *&buf[22] = 2112;
          v155 = v81;
          _os_log_impl(&dword_19BF1F000, v82, OS_LOG_TYPE_ERROR, "Duplicate Merge: update extended attributes failed: [%@ -> %@] Error: %@", buf, 0x20u);
        }
      }

      if ([v119 resourceComparisonPropertyUpdateLocation])
      {
        [(PLDuplicateMerge *)self _mergeLocationFromSource:v119 forceUpdate:1];
      }

      v86 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
      {
        shortDescription15 = [v119 shortDescription];
        targetAsset8 = [(PLDuplicateMerge *)self targetAsset];
        shortDescription16 = [targetAsset8 shortDescription];
        *buf = 138543618;
        *&buf[4] = shortDescription15;
        *&buf[12] = 2114;
        *&buf[14] = shortDescription16;
        _os_log_impl(&dword_19BF1F000, v86, OS_LOG_TYPE_INFO, "Duplicate Merge: resource merge [%{public}@ -> %{public}@]", buf, 0x16u);
      }

      v126 = v109;
      v90 = [(PLDuplicateMerge *)self _mergeAdjustmentsFromSource:v119 error:&v126];
      v91 = v126;

      if (v90)
      {
        if ((MEMORY[0x19EAEE520]() & 1) == 0)
        {
          [asset2 invalidateThumbnailIfNeededAfterMasterResourceChangeInLibrary:self->_library];
          [asset2 generateAndUpdateThumbnailsWithPreviewImage:0 thumbnailImage:0 fromImageSource:0 imageData:0 forceSRGBConversion:0];
        }

        -[PLDuplicateMerge _resetMediaAnalysisStateWithType:](self, "_resetMediaAnalysisStateWithType:", [asset2 originalHeight] * objc_msgSend(asset2, "originalWidth") > 89999);
        v92 = v91;
        v93 = 1;
        goto LABEL_87;
      }

      v109 = v91;
    }

    v94 = v109;
    v92 = v94;
    if (error)
    {
      v95 = v94;
      v93 = 0;
      *error = v92;
    }

    else
    {
      v93 = 0;
    }

LABEL_87:

    goto LABEL_88;
  }

  v97 = MEMORY[0x1E696AEC0];
  uuid6 = [asset uuid];
  uuid7 = [asset2 uuid];
  obj = [v97 stringWithFormat:@"Duplicate Merge: Invalid non-iCPL original resources: [%@ -> %@]", uuid6, uuid7];

  v100 = MEMORY[0x1E696ABC0];
  v162 = *MEMORY[0x1E696A278];
  v163[0] = obj;
  v101 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v163 forKeys:&v162 count:1];
  v92 = [v100 errorWithDomain:*MEMORY[0x1E69BFF48] code:47011 userInfo:v101];

  if (error)
  {
    v102 = v92;
    v93 = 0;
    *error = v92;
  }

  else
  {
    v93 = 0;
  }

LABEL_88:

  return v93;
}

void __51__PLDuplicateMerge_mergeResourcesFromSource_error___block_invoke_112(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 32) _preFileCloneChecksForURL:v5];
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    v11 = *(*(a1 + 80) + 8);
    obj = *(v11 + 40);
    v12 = [PLManagedAsset cloneResourceFileFromURL:v7 toURL:v5 forDestinationResource:v8 forDestinationAsset:v9 fileManager:v10 error:&obj];
    objc_storeStrong((v11 + 40), obj);
    *(*(*(a1 + 72) + 8) + 24) = v12;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 80) + 8) + 40), a3);
  }
}

- (void)_mergeFaceRelationshipsFromSource:(id)source
{
  v77 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  asset = [sourceCopy asset];
  asset2 = [(PLDuplicateMerge *)self asset];
  faceAdjustmentVersion = [asset2 faceAdjustmentVersion];
  faceAdjustmentVersion2 = [asset faceAdjustmentVersion];
  detectedFaces = [asset detectedFaces];
  temporalDetectedFaces = [asset temporalDetectedFaces];
  detectedFaces2 = [asset2 detectedFaces];
  temporalDetectedFaces2 = [asset2 temporalDetectedFaces];
  legacyFaces = [asset legacyFaces];
  legacyFaces2 = [asset2 legacyFaces];
  targetAsset = [(PLDuplicateMerge *)self targetAsset];
  v62 = 0;
  v61 = legacyFaces2;
  if (![targetAsset facesUpdated] && !faceAdjustmentVersion && faceAdjustmentVersion2)
  {
    v13 = [detectedFaces count];
    v14 = v13 + [temporalDetectedFaces count] == 0;
    legacyFaces2 = v61;
    v15 = !v14;
    v62 = v15;
  }

  v55 = faceAdjustmentVersion2;

  if ([legacyFaces2 count])
  {
    v16 = 0;
  }

  else
  {
    v16 = [legacyFaces count] != 0;
  }

  v56 = faceAdjustmentVersion;
  v57 = detectedFaces;
  v54 = temporalDetectedFaces;
  if (v62)
  {
    [asset2 setDetectedFaces:detectedFaces];
    [asset2 setTemporalDetectedFaces:temporalDetectedFaces];
    [asset2 setFaceAreaPoints:{objc_msgSend(asset, "faceAreaPoints")}];
    additionalAttributes = [asset additionalAttributes];
    faceRegions = [additionalAttributes faceRegions];
    additionalAttributes2 = [asset2 additionalAttributes];
    [additionalAttributes2 setFaceRegions:faceRegions];

    v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    if ([detectedFaces2 count])
    {
      allObjects = [detectedFaces2 allObjects];
      [v20 addObjectsFromArray:allObjects];
    }

    v52 = sourceCopy;
    if ([temporalDetectedFaces2 count])
    {
      allObjects2 = [temporalDetectedFaces2 allObjects];
      [v20 addObjectsFromArray:allObjects2];
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v23 = v20;
    v24 = [v23 countByEnumeratingWithState:&v67 objects:v76 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v68;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v68 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v67 + 1) + 8 * i);
          v29 = [v28 associatedAssetForFaceOrTorso:1 orTemporal:1];

          if (v29)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"PLDuplicateMerge.m" lineNumber:227 description:{@"Invalid parameter not satisfying: %@", @"[face associatedAssetForFaceOrTorso:YES orTemporal:YES] == nil"}];
          }

          managedObjectContext = [v28 managedObjectContext];
          [managedObjectContext deleteObject:v28];
        }

        v25 = [v23 countByEnumeratingWithState:&v67 objects:v76 count:16];
      }

      while (v25);
    }

    PLResetMediaProcessingStateOnAsset(3, asset, 1uLL);
    targetAsset2 = [(PLDuplicateMerge *)self targetAsset];
    [targetAsset2 setFacesUpdated:1];

    sourceCopy = v52;
    faceAdjustmentVersion = v56;
    detectedFaces = v57;
    temporalDetectedFaces = v54;
    legacyFaces2 = v61;
  }

  if (v16)
  {
    legacyFaces3 = [asset legacyFaces];
    [asset2 setLegacyFaces:legacyFaces3];

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v34 = legacyFaces2;
    v35 = [v34 countByEnumeratingWithState:&v63 objects:v75 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v64;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v64 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v63 + 1) + 8 * j);
          asset3 = [v39 asset];

          if (asset3)
          {
            currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLDuplicateMerge.m" lineNumber:238 description:{@"Invalid parameter not satisfying: %@", @"face.asset == nil"}];
          }

          managedObjectContext2 = [v39 managedObjectContext];
          [managedObjectContext2 deleteObject:v39];
        }

        v36 = [v34 countByEnumeratingWithState:&v63 objects:v75 count:16];
      }

      while (v36);
    }

    v43 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      shortDescription = [sourceCopy shortDescription];
      targetAsset3 = [(PLDuplicateMerge *)self targetAsset];
      shortDescription2 = [targetAsset3 shortDescription];
      *buf = 138543618;
      v72 = shortDescription;
      v73 = 2114;
      v74 = shortDescription2;
      _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_INFO, "Duplicate Merge: merged over legacy faces: [%{public}@ -> %{public}@]", buf, 0x16u);
    }

    faceAdjustmentVersion = v56;
    detectedFaces = v57;
    temporalDetectedFaces = v54;
    legacyFaces2 = v61;
  }

  if (v62)
  {
    [(PLDuplicateMerge *)self _resetMediaAnalysisStateWithType:1];
    v47 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      shortDescription3 = [sourceCopy shortDescription];
      targetAsset4 = [(PLDuplicateMerge *)self targetAsset];
      [targetAsset4 shortDescription];
      v51 = v50 = temporalDetectedFaces;
      *buf = 138543618;
      v72 = shortDescription3;
      v73 = 2114;
      v74 = v51;
      _os_log_impl(&dword_19BF1F000, v47, OS_LOG_TYPE_INFO, "Duplicate Merge: merged over faces: [%{public}@ -> %{public}@]", buf, 0x16u);

      temporalDetectedFaces = v50;
      legacyFaces2 = v61;

      detectedFaces = v57;
    }
  }
}

- (void)_mergeSharedLibraryMetadataFromSource:(id)source
{
  asset = [source asset];
  asset2 = [(PLDuplicateMerge *)self asset];
  libraryScope = [asset2 libraryScope];
  if (libraryScope)
  {
    v6 = libraryScope;
    libraryScopeShareState = [asset2 libraryScopeShareState];

    if ((libraryScopeShareState & 0x800000) != 0)
    {
      libraryScope2 = [asset2 libraryScope];
      libraryScopeContributors = [asset2 libraryScopeContributors];
      v10 = [libraryScopeContributors mutableCopy];

      v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      libraryScope3 = [asset libraryScope];

      if (libraryScope3)
      {
        libraryScopeContributors2 = [asset libraryScopeContributors];
        v14 = [libraryScopeContributors2 count];

        if (!v14)
        {
LABEL_8:
          [asset2 setLibraryScope:libraryScope2 withContributors:v10];
          additionalAttributes = [asset2 additionalAttributes];
          [additionalAttributes appendLibraryScopeAssetContributorsToUpdate:v11];

          goto LABEL_9;
        }

        libraryScopeContributors3 = [asset libraryScopeContributors];
        allObjects = [libraryScopeContributors3 allObjects];
        [v10 addObjectsFromArray:allObjects];

        libraryScopeContributors4 = [asset libraryScopeContributors];
        allObjects2 = [libraryScopeContributors4 allObjects];
        v19 = [allObjects2 _pl_map:&__block_literal_global_90];
        [v11 addObjectsFromArray:v19];
      }

      else
      {
        libraryScopeContributors4 = [libraryScope2 currentUserParticipant];
        [v10 addObject:libraryScopeContributors4];
        allObjects2 = [libraryScopeContributors4 userIdentifier];
        [v11 addObject:allObjects2];
      }

      goto LABEL_8;
    }
  }

LABEL_9:
}

- (void)_mergeLocationFromSource:(id)source forceUpdate:(BOOL)update
{
  updateCopy = update;
  v27 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  targetAsset = [(PLDuplicateMerge *)self targetAsset];
  if (([targetAsset locationUpdated] & 1) != 0 || !-[PLDuplicateMerge _isValidForLocationOverwriteWithSource:](self, "_isValidForLocationOverwriteWithSource:", sourceCopy))
  {

    if (!updateCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  asset = [(PLDuplicateMerge *)self asset];
  asset2 = [sourceCopy asset];
  location = [asset2 location];
  [asset setLocation:location];

  targetAsset2 = [(PLDuplicateMerge *)self targetAsset];
  [targetAsset2 setLocationUpdated:1];

  v12 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = @"NO";
    if (updateCopy)
    {
      v13 = @"YES";
    }

    v14 = v13;
    location2 = [asset location];
    shortDescription = [sourceCopy shortDescription];
    targetAsset3 = [(PLDuplicateMerge *)self targetAsset];
    shortDescription2 = [targetAsset3 shortDescription];
    v19 = 138544130;
    v20 = v14;
    v21 = 2112;
    v22 = location2;
    v23 = 2114;
    v24 = shortDescription;
    v25 = 2114;
    v26 = shortDescription2;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_INFO, "Duplicate Merge: location (forced:%{public}@): %@ [%{public}@ -> %{public}@]", &v19, 0x2Au);
  }

LABEL_10:
}

- (void)_mergeMetadataFromSource:(id)source
{
  v19 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  mergeModelProperties = self->_mergeModelProperties;
  v12 = 0;
  v6 = [(PLDuplicateMergeModelProperties *)mergeModelProperties transferPropertiesFromSourceAsset:sourceCopy propertyMergeType:0 error:&v12];
  v7 = v12;
  if (!v6)
  {
    v8 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      shortDescription = [sourceCopy shortDescription];
      targetAsset = [(PLDuplicateMerge *)self targetAsset];
      shortDescription2 = [targetAsset shortDescription];
      *buf = 138543874;
      v14 = shortDescription;
      v15 = 2114;
      v16 = shortDescription2;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Duplicate Merge: failed to merge properties for %{public}@, target asset: %{public}@. Error: %@", buf, 0x20u);
    }
  }

  [(PLDuplicateMerge *)self _mergeLocationFromSource:sourceCopy forceUpdate:0];
  [(PLDuplicateMerge *)self _mergeSharedLibraryMetadataFromSource:sourceCopy];
  [(PLDuplicateMerge *)self _mergeFaceRelationshipsFromSource:sourceCopy];
}

- (PLDuplicateMerge)mergeWithError:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__87903;
  v14 = __Block_byref_object_dispose__87904;
  v15 = 0;
  library = self->_library;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__PLDuplicateMerge_mergeWithError___block_invoke;
  v9[3] = &unk_1E7578870;
  v9[4] = self;
  v9[5] = &v10;
  v9[6] = &v16;
  [(PLPhotoLibrary *)library performBlockAndWait:v9];
  v5 = *(v17 + 24);
  v6 = v11[5];
  if (error && (v5 & 1) == 0)
  {
    v6 = v6;
    *error = v6;
  }

  v7 = *(v17 + 24);
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);
  return v7;
}

void __35__PLDuplicateMerge_mergeWithError___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 16) sortedArrayUsingComparator:&__block_literal_global_87941];
  v3 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) targetAsset];
    v5 = [v4 privateDescription];
    v6 = [v2 valueForKey:@"privateDescription"];
    *buf = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Duplicate Merge: merging assets into target [%{public}@] : %{public}@", buf, 0x16u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__PLDuplicateMerge_mergeWithError___block_invoke_84;
  v8[3] = &unk_1E75733C8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  [v2 enumerateObjectsUsingBlock:v8];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v7 = [*(*(a1 + 32) + 8) managedObjectContext];
    [v7 rollback];
  }
}

void __35__PLDuplicateMerge_mergeWithError___block_invoke_84(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v6 shortDescription];
    v9 = [*(a1 + 32) targetAsset];
    v10 = [v9 shortDescription];
    *buf = 138543618;
    v27 = v8;
    v28 = 2114;
    v29 = v10;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "Duplicate Merge: %{public}@ -> %{public}@", buf, 0x16u);
  }

  v11 = [v6 asset];
  [v11 trashWithReason:3];

  [*(a1 + 32) _mergeMetadataFromSource:v6];
  v12 = [*(a1 + 32) targetAsset];
  if (([v12 resourceSwapDisabled] & 1) == 0)
  {
    v13 = [*(a1 + 32) targetAsset];
    v14 = *(*(a1 + 40) + 8);
    obj = *(v14 + 40);
    v15 = [v13 compareResource:v6 error:&obj];
    objc_storeStrong((v14 + 40), obj);

    if (v15 != -1)
    {
      goto LABEL_7;
    }

    v16 = *(a1 + 32);
    v17 = *(*(a1 + 40) + 8);
    v24 = *(v17 + 40);
    [v16 mergeResourcesFromSource:v6 error:&v24];
    v18 = v24;
    v12 = *(v17 + 40);
    *(v17 + 40) = v18;
  }

LABEL_7:
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v19 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [v6 shortDescription];
      v21 = [*(a1 + 32) targetAsset];
      v22 = [v21 shortDescription];
      v23 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138543874;
      v27 = v20;
      v28 = 2114;
      v29 = v22;
      v30 = 2112;
      v31 = v23;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Duplicate Merge: terminating merge for source asset %{public}@, target asset: %{public}@. Error: %@", buf, 0x20u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (PLDuplicateMerge)initWithSourceAssets:(id)assets targetAsset:(id)asset photolibrary:(id)photolibrary
{
  assetsCopy = assets;
  assetCopy = asset;
  photolibraryCopy = photolibrary;
  if (assetsCopy)
  {
    if (assetCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLDuplicateMerge.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"sourceAssets"}];

    if (assetCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLDuplicateMerge.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"targetAsset"}];

LABEL_3:
  v22.receiver = self;
  v22.super_class = PLDuplicateMerge;
  v13 = [(PLDuplicateMerge *)&v22 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_library, photolibrary);
    v15 = [[PLDuplicateMergeCrashRecovery alloc] initWithPhotoLibrary:photolibraryCopy];
    mergeCrashRecovery = v14->_mergeCrashRecovery;
    v14->_mergeCrashRecovery = v15;

    objc_storeStrong(&v14->_sourceAssets, assets);
    objc_storeStrong(&v14->_targetAsset, asset);
    v17 = [[PLDuplicateMergeModelProperties alloc] initWithTargetAsset:assetCopy photoLibrary:photolibraryCopy];
    mergeModelProperties = v14->_mergeModelProperties;
    v14->_mergeModelProperties = v17;
  }

  return v14;
}

+ (BOOL)mergeAssets:(id)assets targetAssetOID:(id)d photolibrary:(id)photolibrary error:(id *)error
{
  v54 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  dCopy = d;
  photolibraryCopy = photolibrary;
  if (assetsCopy)
  {
    if (dCopy)
    {
      goto LABEL_3;
    }

LABEL_32:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLDuplicateMerge.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"targetOID"}];

    if (photolibraryCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_33;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLDuplicateMerge.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"assets"}];

  if (!dCopy)
  {
    goto LABEL_32;
  }

LABEL_3:
  if (photolibraryCopy)
  {
    goto LABEL_4;
  }

LABEL_33:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PLDuplicateMerge.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"library"}];

LABEL_4:
  v42 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(assetsCopy, "count")}];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v13 = assetsCopy;
  v14 = [v13 countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v14)
  {
    v15 = v14;
    v40 = photolibraryCopy;
    v16 = 0;
    v17 = *v44;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v44 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v43 + 1) + 8 * i);
        if (([v19 isMergeReady] & 1) == 0)
        {
          v26 = PLDuplicateDetectionGetLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            shortDescription = [v19 shortDescription];
            *buf = 138543362;
            v52 = shortDescription;
            _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "Duplicate Merge: Skipping merge, asset is not merge ready: %{public}@", buf, 0xCu);
          }

          v28 = MEMORY[0x1E696ABC0];
          v29 = *MEMORY[0x1E69BFF48];
          v47 = *MEMORY[0x1E696A578];
          v48 = @"Merge skipped asset failed isMergeReady";
          dCopy = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
          v30 = [v28 errorWithDomain:v29 code:49405 userInfo:dCopy];
          photolibraryCopy = v40;
          if (error)
          {
            v30 = v30;
            *error = v30;
          }

          goto LABEL_29;
        }

        asset = [v19 asset];
        objectID = [asset objectID];
        v22 = [objectID isEqual:dCopy];

        if (v22)
        {
          v23 = v19;

          v16 = v23;
        }

        else if (asset)
        {
          [v42 addObject:v19];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v43 objects:v53 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }

    photolibraryCopy = v40;
    if (v16)
    {
      dCopy = [[PLDuplicateMerge alloc] initWithSourceAssets:v42 targetAsset:v16 photolibrary:v40];
      v25 = [(PLDuplicateMerge *)dCopy mergeWithError:error];
      goto LABEL_30;
    }
  }

  else
  {
  }

  dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Merge: No targetAsset found for targetOID %@", dCopy];
  v31 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v52 = dCopy;
    _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v32 = MEMORY[0x1E696ABC0];
  v33 = *MEMORY[0x1E69BFF48];
  v49 = *MEMORY[0x1E696A278];
  v50 = dCopy;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
  v35 = [v32 errorWithDomain:v33 code:49403 userInfo:v34];
  if (error)
  {
    v35 = v35;
    *error = v35;
  }

  v16 = 0;
LABEL_29:
  v25 = 0;
LABEL_30:

  return v25;
}

@end