@interface PLDuplicateMerge
+ (BOOL)mergeAssets:(id)a3 targetAssetOID:(id)a4 photolibrary:(id)a5 error:(id *)a6;
- (BOOL)_checkCPLDisabledAssetHasValidOriginalResourcesForAsset:(id)a3;
- (BOOL)_isValidForLocationOverwriteWithSource:(id)a3;
- (BOOL)_mergeAdjustmentsFromSource:(id)a3 error:(id *)a4;
- (BOOL)mergeResourcesFromSource:(id)a3 error:(id *)a4;
- (PLDuplicateMerge)initWithSourceAssets:(id)a3 targetAsset:(id)a4 photolibrary:(id)a5;
- (PLDuplicateMerge)mergeWithError:(id *)a3;
- (void)_mergeFaceRelationshipsFromSource:(id)a3;
- (void)_mergeLocationFromSource:(id)a3 forceUpdate:(BOOL)a4;
- (void)_mergeMetadataFromSource:(id)a3;
- (void)_mergeSharedLibraryMetadataFromSource:(id)a3;
- (void)_preFileCloneChecksForURL:(id)a3;
- (void)_resetMediaAnalysisStateWithType:(int64_t)a3;
- (void)_setDCIMFilenameFromSource:(id)a3;
- (void)_setUBFFilenameFromDuplicateSource:(id)a3;
@end

@implementation PLDuplicateMerge

- (BOOL)_isValidForLocationOverwriteWithSource:(id)a3
{
  v4 = a3;
  v5 = [(PLDuplicateMerge *)self asset];
  v6 = [v4 asset];
  v7 = [v6 location];

  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = [v5 location];

  if (!v8)
  {
    LOBYTE(v12) = 1;
    goto LABEL_10;
  }

  v9 = [v4 hasModifiedUserLocation];
  v10 = [(PLDuplicateMerge *)self targetAsset];
  if (![v10 hasModifiedUserLocation])
  {

    if ((v9 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    [v7 coordinate];
    v12 = [v5 isLocatedAtCoordinates:?] ^ 1;
    goto LABEL_10;
  }

  v11 = [v4 hasModifiedUserLocation];

  if (!v11)
  {
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if ([(PLDuplicateMergeModelProperties *)self->_mergeModelProperties isRecentlyModifiedSourceAsset:v4])
  {
    goto LABEL_9;
  }

LABEL_6:
  LOBYTE(v12) = 0;
LABEL_10:

  return v12;
}

- (void)_setDCIMFilenameFromSource:(id)a3
{
  v15 = [a3 asset];
  v4 = [(PLDuplicateMerge *)self asset];
  v5 = [v4 filename];
  v6 = [v5 pathExtension];
  v7 = [v15 filename];
  v8 = [v7 pathExtension];
  v9 = [v6 isEqualToString:v8];

  if ((v9 & 1) == 0)
  {
    v10 = [v15 filename];
    v11 = [v10 pathExtension];

    if (v11)
    {
      v12 = [v4 filename];
      v13 = [v12 stringByDeletingPathExtension];

      v14 = [v13 stringByAppendingPathExtension:v11];
      [v4 setFilename:v14];
    }
  }
}

- (void)_resetMediaAnalysisStateWithType:(int64_t)a3
{
  v4 = [(PLDuplicateMerge *)self asset];
  v6 = v4;
  if (a3 != 1)
  {
    v5 = v4;
    if (a3)
    {
      goto LABEL_5;
    }

    PLResetMediaProcessingStateOnAsset(2, v4, 1uLL);
    PLResetMediaProcessingStateOnAsset(1, v6, 1uLL);
    PLResetMediaProcessingStateOnAsset(17, v6, 1uLL);
    PLResetMediaProcessingStateOnAsset(12, v6, 0xFFFFFuLL);
    PLResetMediaProcessingStateOnAsset(10, v6, 0xFFFFFuLL);
  }

  PLResetMediaProcessingStateOnAsset(3, v6, 1uLL);
  v5 = v6;
LABEL_5:
}

- (BOOL)_mergeAdjustmentsFromSource:(id)a3 error:(id *)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(PLDuplicateMerge *)self asset];
  v7 = [v5 resourceSwapAssetUUID];
  v8 = [v6 uuid];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [v5 asset];
    v11 = [v10 originalHeight];
    if (v11 != [v6 originalHeight] || (v12 = -[NSObject originalWidth](v10, "originalWidth"), v12 != objc_msgSend(v6, "originalWidth")))
    {
      v15 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v29 = [v5 shortDescription];
        v30 = [(PLDuplicateMerge *)self targetAsset];
        v31 = [v30 shortDescription];
        *buf = 138543618;
        v38 = v29;
        v39 = 2114;
        v40 = v31;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Duplicate Merge: skipping adjustment merge - resource size mismatch [%{public}@ -> %{public}@]", buf, 0x16u);
      }

      v16 = 1;
      goto LABEL_14;
    }

    if ([v10 hasAdjustments])
    {
      library = self->_library;
      v36 = 0;
      v14 = [PLUnmanagedAdjustment copyUnmanagedAdjustmentFromSourceAsset:v10 forPlaceholderAsset:v6 inLibrary:library error:&v36];
      v15 = v36;
      v16 = v14 != 0;
      if (v14)
      {
        [v6 setAdjustmentsState:{-[NSObject adjustmentsState](v10, "adjustmentsState")}];
        v17 = [v10 imageRequestHints];
        [v6 setImageRequestHints:v17];

        [v6 setPackedAcceptableCropRect:{-[NSObject packedAcceptableCropRect](v10, "packedAcceptableCropRect")}];
        [v6 setPackedPreferredCropRect:{-[NSObject packedPreferredCropRect](v10, "packedPreferredCropRect")}];
        v18 = [v10 additionalAttributes];
        v19 = [v18 adjustedStableHash];
        v20 = [v6 additionalAttributes];
        [v20 setAdjustedStableHash:v19];

        v21 = [v6 additionalAttributes];
        [v21 setUnmanagedAdjustment:v14];

        v22 = PLDuplicateDetectionGetLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = [v5 shortDescription];
          v24 = [(PLDuplicateMerge *)self targetAsset];
          v25 = [v24 shortDescription];
          *buf = 138543618;
          v38 = v23;
          v39 = 2114;
          v40 = v25;
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

    if ([v6 hasAdjustments])
    {
      [v6 revertToOriginal];
      v15 = PLDuplicateDetectionGetLog();
      v16 = 1;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v14 = [v5 shortDescription];
        v33 = [(PLDuplicateMerge *)self targetAsset];
        v34 = [v33 shortDescription];
        *buf = 138543618;
        v38 = v14;
        v39 = 2114;
        v40 = v34;
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
        v14 = [v5 shortDescription];
        v33 = [(PLDuplicateMerge *)self targetAsset];
        v34 = [v33 shortDescription];
        *buf = 138543618;
        v38 = v14;
        v39 = 2114;
        v40 = v34;
        v35 = "Duplicate Merge: no adjustment migration [%{public}@ -> %{public}@]";
        goto LABEL_21;
      }
    }

LABEL_14:

    goto LABEL_15;
  }

  v10 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v26 = [v5 shortDescription];
    v27 = [(PLDuplicateMerge *)self targetAsset];
    v28 = [v27 shortDescription];
    *buf = 138543618;
    v38 = v26;
    v39 = 2114;
    v40 = v28;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Duplicate Merge: skipping adjustment merge - resource swap uuid mismatch [%{public}@ -> %{public}@]", buf, 0x16u);
  }

  v16 = 1;
LABEL_15:

  return v16;
}

- (void)_setUBFFilenameFromDuplicateSource:(id)a3
{
  v13 = a3;
  v4 = [(PLDuplicateMerge *)self asset];
  v5 = [v4 pathManager];
  v6 = [v5 isUBF];

  if (v6)
  {
    v7 = [v13 asset];
    v8 = [v7 originalFilename];
    [v4 setOriginalFilename:v8];

    v9 = [v7 primaryStoreOriginalResource];
    if (v9)
    {
      [v4 setDirectory:0];
      [v4 setFilename:0];
      v10 = [v9 uniformTypeIdentifier];
      v11 = [v10 identifier];
      v12 = [v4 originalFilename];
      [v4 setUBFFilenameAndDirectoryWithOriginalUniformTypeIdentifier:v11 originalFilename:v12];
    }
  }
}

- (void)_preFileCloneChecksForURL:(id)a3
{
  *&v31[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v29 = 0;
    v6 = [v4 checkResourceIsReachableAndReturnError:&v29];
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

      v12 = [v10 BOOLValue];
      v13 = [v5 fileSystemRepresentation];
      if (v12)
      {
        if (rmdir(v13))
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

      else if (unlink(v13))
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
      v19 = [(PLDuplicateMerge *)self targetAsset];
      v20 = [v19 asset];
      v21 = [v20 uuid];
      *buf = 138543362;
      *v31 = v21;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "Duplicate Merge: Skipping pre clone check for asset: %{public}@", buf, 0xCu);
    }
  }

LABEL_23:
}

- (BOOL)_checkCPLDisabledAssetHasValidOriginalResourcesForAsset:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 primaryStoreOriginalResource];
  v5 = [v3 persistedResourcesMatching:&__block_literal_global_116];
  if (!v4 || (([v3 isRAWPlusJPEG] & 1) != 0 || objc_msgSend(v3, "isPhotoIris")) && objc_msgSend(v5, "count") < 2)
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

          v12 = [*(*(&v15 + 1) + 8 * i) fileURL];
          v13 = [v12 checkResourceIsReachableAndReturnError:0];

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

- (BOOL)mergeResourcesFromSource:(id)a3 error:(id *)a4
{
  v163[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v114 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v119 = v4;
  v110 = [v4 asset];
  v5 = [(PLDuplicateMerge *)self asset];
  v121 = [v5 pathManager];
  v106 = [v5 persistedResourcesMatching:&__block_literal_global_100];
  if (([v4 isCPLEnabled] & 1) != 0 || (objc_msgSend(v110, "master"), v6 = objc_claimAutoreleasedReturnValue(), v6, !v6) || !-[PLDuplicateMerge _checkCPLDisabledAssetHasValidOriginalResourcesForAsset:](self, "_checkCPLDisabledAssetHasValidOriginalResourcesForAsset:", v5) || -[PLDuplicateMerge _checkCPLDisabledAssetHasValidOriginalResourcesForAsset:](self, "_checkCPLDisabledAssetHasValidOriginalResourcesForAsset:", v110))
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
          [v5 removeLocalFileForResource:v11 allowDCIMPath:1];
          [v11 deleteResource];
        }

        v8 = [v7 countByEnumeratingWithState:&v144 objects:v161 count:16];
      }

      while (v8);
    }

    if ([v121 isDCIM])
    {
      [(PLDuplicateMerge *)self _setDCIMFilenameFromSource:v119];
    }

    else
    {
      [(PLDuplicateMerge *)self _setUBFFilenameFromDuplicateSource:v119];
    }

    if (![v119 isCPLEnabled] || (objc_msgSend(v110, "master"), v12 = objc_claimAutoreleasedReturnValue(), v13 = v12 == 0, v12, v13))
    {
      v24 = [v110 master];

      if (v24)
      {
        v25 = PLDuplicateDetectionGetLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [v119 shortDescription];
          v27 = [(PLDuplicateMerge *)self targetAsset];
          v28 = [v27 shortDescription];
          *buf = 138543618;
          *&buf[4] = v26;
          *&buf[12] = 2114;
          *&buf[14] = v28;
          _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "Duplicate Merge: Source asset has a master record, but CPL is not enabled [%{public}@ -> %{public}@]", buf, 0x16u);
        }
      }

      v29 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = [v119 shortDescription];
        v31 = [(PLDuplicateMerge *)self targetAsset];
        v32 = [v31 shortDescription];
        *buf = 138543618;
        *&buf[4] = v30;
        *&buf[12] = 2114;
        *&buf[14] = v32;
        _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_INFO, "Duplicate Merge: no master to remap, going to copy all resources manually [%{public}@ -> %{public}@]", buf, 0x16u);
      }

      v23 = [v110 persistedResourcesMatching:&__block_literal_global_107_87899];
      v116 = 0;
    }

    else
    {
      v14 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [(PLDuplicateMerge *)self targetAsset];
        v16 = [v15 shortDescription];
        v17 = [v110 master];
        v18 = [v17 scopedIdentifier];
        v19 = [v119 shortDescription];
        *buf = 138543874;
        *&buf[4] = v16;
        *&buf[12] = 2114;
        *&buf[14] = v18;
        *&buf[22] = 2114;
        v155 = v19;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_INFO, "Duplicate Merge: going to remap master on %{public}@ with master %{public}@ from %{public}@", buf, 0x20u);
      }

      v20 = [v110 master];
      [PLManagedAsset fixupCloudPhotoLibraryAsset:v5 withCloudMaster:v20 inLibrary:self->_library];

      v21 = [v110 allAssetCPLResources];
      v22 = [v21 count];
      v116 = v22 != 0;
      if (v22)
      {
        v23 = [v21 copy];
      }

      else
      {
        v23 = 0;
      }

      mergeCrashRecovery = self->_mergeCrashRecovery;
      v34 = [v5 uuid];
      [(PLDuplicateMergeCrashRecovery *)mergeCrashRecovery writeCrashRecoveryMarkerFileForTargetAssetUUID:v34 error:0];
    }

    v35 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = [v23 count];
      v37 = [v119 shortDescription];
      v38 = [(PLDuplicateMerge *)self targetAsset];
      v39 = [v38 shortDescription];
      *buf = 134218498;
      *&buf[4] = v36;
      *&buf[12] = 2114;
      *&buf[14] = v37;
      *&buf[22] = 2114;
      v155 = v39;
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
          v125 = [v5 storedResourceForExternalResource:v42 asset:v5];
          v43 = v125;
          if (!v125)
          {
            v44 = PLDuplicateDetectionGetLog();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              v45 = [v119 shortDescription];
              v46 = [(PLDuplicateMerge *)self targetAsset];
              v47 = [v46 shortDescription];
              *buf = 138543874;
              *&buf[4] = v45;
              *&buf[12] = 2114;
              *&buf[14] = v47;
              *&buf[22] = 2112;
              v155 = v42;
              _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_ERROR, "Duplicate Merge: failed to install new resource on target with external source resource: [%{public}@ -> %{public}@] %@", buf, 0x20u);
            }

            v48 = [v41 isDerivative];
            v43 = 0;
            if ((v48 & 1) == 0)
            {
              v70 = MEMORY[0x1E696ABC0];
              v158 = v104;
              v71 = MEMORY[0x1E696AEC0];
              v72 = [v110 uuid];
              v73 = [v5 uuid];
              v74 = [v71 stringWithFormat:@"Duplicate Merge: failed to install new resource on target with external source resource: [%@ -> %@] %@", v72, v73, v42];
              v159 = v74;
              v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v159 forKeys:&v158 count:1];
              v76 = [v70 errorWithDomain:v103 code:47011 userInfo:v75];

              v107 = 0;
              v109 = v76;
              goto LABEL_70;
            }
          }

          [v43 resetPrefetchState];
          v124 = [v41 fileURL];
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
          if (!v124)
          {
            goto LABEL_94;
          }

          if ([v121 isUBF])
          {
            v111 = v40;
            v112 = v42;
            v113 = objc_alloc(MEMORY[0x1E69BF298]);
            v117 = [v5 uuid];
            v49 = [v5 bundleScope];
            v118 = [v41 uniformTypeIdentifier];
            v50 = [v118 identifier];
            v51 = [v41 version];
            v52 = [v41 resourceType];
            v53 = [v41 recipeID];
            v54 = [v41 recipeID];
            if (v54)
            {
              v55 = 0;
            }

            else
            {
              v108 = [v110 originalFilename];
              v55 = v108;
            }

            v59 = [v41 customSuffix];
            v56 = [v113 initWithAssetUuid:v117 bundleScope:v49 uti:v50 resourceVersion:v51 resourceType:v52 recipeID:v53 originalFilename:v55 customSuffix:v59];

            if (!v54)
            {
            }

            v129[0] = MEMORY[0x1E69E9820];
            v129[1] = 3221225472;
            v129[2] = __51__PLDuplicateMerge_mergeResourcesFromSource_error___block_invoke_112;
            v129[3] = &unk_1E7573410;
            v129[4] = self;
            v134 = &v136;
            v130 = v124;
            v131 = v125;
            v132 = v5;
            v133 = v114;
            v135 = buf;
            [v121 obtainAccessAndWaitWithFileWithIdentifier:v56 mode:2 toURLWithHandler:v129];

            v40 = v111;
            v42 = v112;
          }

          else
          {
            v56 = [v125 cplFileURL];
            if (v56)
            {
              [(PLDuplicateMerge *)self _preFileCloneChecksForURL:v56];
              v57 = (*&buf[8] + 40);
              v128 = *(*&buf[8] + 40);
              v58 = [PLManagedAsset cloneResourceFileFromURL:v124 toURL:v56 forDestinationResource:v125 forDestinationAsset:v5 fileManager:v114 error:&v128];
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
            v61 = [v119 shortDescription];
            v62 = [(PLDuplicateMerge *)self targetAsset];
            v63 = [v62 shortDescription];
            v64 = *(*&buf[8] + 40);
            *v148 = 138543874;
            v149 = v61;
            v150 = 2114;
            v151 = v63;
            v152 = 2112;
            v153 = v64;
            _os_log_impl(&dword_19BF1F000, v60, OS_LOG_TYPE_ERROR, "Duplicate Merge: clone resource file failed: [%{public}@ -> %{public}@] Error: %@", v148, 0x20u);
          }

          if ([v41 isDerivative])
          {
LABEL_94:
            if (v116 && [v41 isCPLAssetResource] && objc_msgSend(v41, "isCPLResource") && (v137[3] & 1) == 0 && objc_msgSend(v41, "isRemotelyAvailable"))
            {
              v65 = [v5 additionalAttributes];
              v66 = [v110 scopedIdentifier];
              [v65 setSourceAssetForDuplicationCPLScopedIdentifier:v66];

              [v5 setCloudLocalState:0];
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

    v77 = [v110 master];
    [PLCloudMaster deleteMasterIfNecessary:v77 inLibrary:self->_library];

    if (v107)
    {
      v78 = [(PLDuplicateMerge *)self asset];
      v79 = [v78 uuid];
      [v119 setResourceSwapAssetUUID:v79];

      mergeModelProperties = self->_mergeModelProperties;
      v127 = 0;
      LOBYTE(v79) = [(PLDuplicateMergeModelProperties *)mergeModelProperties transferPropertiesFromSourceAsset:v119 propertyMergeType:1 error:&v127];
      v81 = v127;
      if ((v79 & 1) == 0)
      {
        v82 = PLDuplicateDetectionGetLog();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
        {
          v83 = [v119 shortDescription];
          v84 = [(PLDuplicateMerge *)self targetAsset];
          v85 = [v84 shortDescription];
          *buf = 138412802;
          *&buf[4] = v83;
          *&buf[12] = 2112;
          *&buf[14] = v85;
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
        v87 = [v119 shortDescription];
        v88 = [(PLDuplicateMerge *)self targetAsset];
        v89 = [v88 shortDescription];
        *buf = 138543618;
        *&buf[4] = v87;
        *&buf[12] = 2114;
        *&buf[14] = v89;
        _os_log_impl(&dword_19BF1F000, v86, OS_LOG_TYPE_INFO, "Duplicate Merge: resource merge [%{public}@ -> %{public}@]", buf, 0x16u);
      }

      v126 = v109;
      v90 = [(PLDuplicateMerge *)self _mergeAdjustmentsFromSource:v119 error:&v126];
      v91 = v126;

      if (v90)
      {
        if ((MEMORY[0x19EAEE520]() & 1) == 0)
        {
          [v5 invalidateThumbnailIfNeededAfterMasterResourceChangeInLibrary:self->_library];
          [v5 generateAndUpdateThumbnailsWithPreviewImage:0 thumbnailImage:0 fromImageSource:0 imageData:0 forceSRGBConversion:0];
        }

        -[PLDuplicateMerge _resetMediaAnalysisStateWithType:](self, "_resetMediaAnalysisStateWithType:", [v5 originalHeight] * objc_msgSend(v5, "originalWidth") > 89999);
        v92 = v91;
        v93 = 1;
        goto LABEL_87;
      }

      v109 = v91;
    }

    v94 = v109;
    v92 = v94;
    if (a4)
    {
      v95 = v94;
      v93 = 0;
      *a4 = v92;
    }

    else
    {
      v93 = 0;
    }

LABEL_87:

    goto LABEL_88;
  }

  v97 = MEMORY[0x1E696AEC0];
  v98 = [v110 uuid];
  v99 = [v5 uuid];
  obj = [v97 stringWithFormat:@"Duplicate Merge: Invalid non-iCPL original resources: [%@ -> %@]", v98, v99];

  v100 = MEMORY[0x1E696ABC0];
  v162 = *MEMORY[0x1E696A278];
  v163[0] = obj;
  v101 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v163 forKeys:&v162 count:1];
  v92 = [v100 errorWithDomain:*MEMORY[0x1E69BFF48] code:47011 userInfo:v101];

  if (a4)
  {
    v102 = v92;
    v93 = 0;
    *a4 = v92;
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

- (void)_mergeFaceRelationshipsFromSource:(id)a3
{
  v77 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 asset];
  v6 = [(PLDuplicateMerge *)self asset];
  v7 = [v6 faceAdjustmentVersion];
  v8 = [v5 faceAdjustmentVersion];
  v9 = [v5 detectedFaces];
  v10 = [v5 temporalDetectedFaces];
  v60 = [v6 detectedFaces];
  v59 = [v6 temporalDetectedFaces];
  v58 = [v5 legacyFaces];
  v11 = [v6 legacyFaces];
  v12 = [(PLDuplicateMerge *)self targetAsset];
  v62 = 0;
  v61 = v11;
  if (![v12 facesUpdated] && !v7 && v8)
  {
    v13 = [v9 count];
    v14 = v13 + [v10 count] == 0;
    v11 = v61;
    v15 = !v14;
    v62 = v15;
  }

  v55 = v8;

  if ([v11 count])
  {
    v16 = 0;
  }

  else
  {
    v16 = [v58 count] != 0;
  }

  v56 = v7;
  v57 = v9;
  v54 = v10;
  if (v62)
  {
    [v6 setDetectedFaces:v9];
    [v6 setTemporalDetectedFaces:v10];
    [v6 setFaceAreaPoints:{objc_msgSend(v5, "faceAreaPoints")}];
    v17 = [v5 additionalAttributes];
    v18 = [v17 faceRegions];
    v19 = [v6 additionalAttributes];
    [v19 setFaceRegions:v18];

    v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    if ([v60 count])
    {
      v21 = [v60 allObjects];
      [v20 addObjectsFromArray:v21];
    }

    v52 = v4;
    if ([v59 count])
    {
      v22 = [v59 allObjects];
      [v20 addObjectsFromArray:v22];
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
            v31 = [MEMORY[0x1E696AAA8] currentHandler];
            [v31 handleFailureInMethod:a2 object:self file:@"PLDuplicateMerge.m" lineNumber:227 description:{@"Invalid parameter not satisfying: %@", @"[face associatedAssetForFaceOrTorso:YES orTemporal:YES] == nil"}];
          }

          v30 = [v28 managedObjectContext];
          [v30 deleteObject:v28];
        }

        v25 = [v23 countByEnumeratingWithState:&v67 objects:v76 count:16];
      }

      while (v25);
    }

    PLResetMediaProcessingStateOnAsset(3, v5, 1uLL);
    v32 = [(PLDuplicateMerge *)self targetAsset];
    [v32 setFacesUpdated:1];

    v4 = v52;
    v7 = v56;
    v9 = v57;
    v10 = v54;
    v11 = v61;
  }

  if (v16)
  {
    v33 = [v5 legacyFaces];
    [v6 setLegacyFaces:v33];

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v34 = v11;
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
          v40 = [v39 asset];

          if (v40)
          {
            v42 = [MEMORY[0x1E696AAA8] currentHandler];
            [v42 handleFailureInMethod:a2 object:self file:@"PLDuplicateMerge.m" lineNumber:238 description:{@"Invalid parameter not satisfying: %@", @"face.asset == nil"}];
          }

          v41 = [v39 managedObjectContext];
          [v41 deleteObject:v39];
        }

        v36 = [v34 countByEnumeratingWithState:&v63 objects:v75 count:16];
      }

      while (v36);
    }

    v43 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = [v4 shortDescription];
      v45 = [(PLDuplicateMerge *)self targetAsset];
      v46 = [v45 shortDescription];
      *buf = 138543618;
      v72 = v44;
      v73 = 2114;
      v74 = v46;
      _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_INFO, "Duplicate Merge: merged over legacy faces: [%{public}@ -> %{public}@]", buf, 0x16u);
    }

    v7 = v56;
    v9 = v57;
    v10 = v54;
    v11 = v61;
  }

  if (v62)
  {
    [(PLDuplicateMerge *)self _resetMediaAnalysisStateWithType:1];
    v47 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      v48 = [v4 shortDescription];
      v49 = [(PLDuplicateMerge *)self targetAsset];
      [v49 shortDescription];
      v51 = v50 = v10;
      *buf = 138543618;
      v72 = v48;
      v73 = 2114;
      v74 = v51;
      _os_log_impl(&dword_19BF1F000, v47, OS_LOG_TYPE_INFO, "Duplicate Merge: merged over faces: [%{public}@ -> %{public}@]", buf, 0x16u);

      v10 = v50;
      v11 = v61;

      v9 = v57;
    }
  }
}

- (void)_mergeSharedLibraryMetadataFromSource:(id)a3
{
  v21 = [a3 asset];
  v4 = [(PLDuplicateMerge *)self asset];
  v5 = [v4 libraryScope];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 libraryScopeShareState];

    if ((v7 & 0x800000) != 0)
    {
      v8 = [v4 libraryScope];
      v9 = [v4 libraryScopeContributors];
      v10 = [v9 mutableCopy];

      v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v12 = [v21 libraryScope];

      if (v12)
      {
        v13 = [v21 libraryScopeContributors];
        v14 = [v13 count];

        if (!v14)
        {
LABEL_8:
          [v4 setLibraryScope:v8 withContributors:v10];
          v20 = [v4 additionalAttributes];
          [v20 appendLibraryScopeAssetContributorsToUpdate:v11];

          goto LABEL_9;
        }

        v15 = [v21 libraryScopeContributors];
        v16 = [v15 allObjects];
        [v10 addObjectsFromArray:v16];

        v17 = [v21 libraryScopeContributors];
        v18 = [v17 allObjects];
        v19 = [v18 _pl_map:&__block_literal_global_90];
        [v11 addObjectsFromArray:v19];
      }

      else
      {
        v17 = [v8 currentUserParticipant];
        [v10 addObject:v17];
        v18 = [v17 userIdentifier];
        [v11 addObject:v18];
      }

      goto LABEL_8;
    }
  }

LABEL_9:
}

- (void)_mergeLocationFromSource:(id)a3 forceUpdate:(BOOL)a4
{
  v4 = a4;
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PLDuplicateMerge *)self targetAsset];
  if (([v7 locationUpdated] & 1) != 0 || !-[PLDuplicateMerge _isValidForLocationOverwriteWithSource:](self, "_isValidForLocationOverwriteWithSource:", v6))
  {

    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v8 = [(PLDuplicateMerge *)self asset];
  v9 = [v6 asset];
  v10 = [v9 location];
  [v8 setLocation:v10];

  v11 = [(PLDuplicateMerge *)self targetAsset];
  [v11 setLocationUpdated:1];

  v12 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = @"NO";
    if (v4)
    {
      v13 = @"YES";
    }

    v14 = v13;
    v15 = [v8 location];
    v16 = [v6 shortDescription];
    v17 = [(PLDuplicateMerge *)self targetAsset];
    v18 = [v17 shortDescription];
    v19 = 138544130;
    v20 = v14;
    v21 = 2112;
    v22 = v15;
    v23 = 2114;
    v24 = v16;
    v25 = 2114;
    v26 = v18;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_INFO, "Duplicate Merge: location (forced:%{public}@): %@ [%{public}@ -> %{public}@]", &v19, 0x2Au);
  }

LABEL_10:
}

- (void)_mergeMetadataFromSource:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  mergeModelProperties = self->_mergeModelProperties;
  v12 = 0;
  v6 = [(PLDuplicateMergeModelProperties *)mergeModelProperties transferPropertiesFromSourceAsset:v4 propertyMergeType:0 error:&v12];
  v7 = v12;
  if (!v6)
  {
    v8 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v4 shortDescription];
      v10 = [(PLDuplicateMerge *)self targetAsset];
      v11 = [v10 shortDescription];
      *buf = 138543874;
      v14 = v9;
      v15 = 2114;
      v16 = v11;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Duplicate Merge: failed to merge properties for %{public}@, target asset: %{public}@. Error: %@", buf, 0x20u);
    }
  }

  [(PLDuplicateMerge *)self _mergeLocationFromSource:v4 forceUpdate:0];
  [(PLDuplicateMerge *)self _mergeSharedLibraryMetadataFromSource:v4];
  [(PLDuplicateMerge *)self _mergeFaceRelationshipsFromSource:v4];
}

- (PLDuplicateMerge)mergeWithError:(id *)a3
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
  if (a3 && (v5 & 1) == 0)
  {
    v6 = v6;
    *a3 = v6;
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

- (PLDuplicateMerge)initWithSourceAssets:(id)a3 targetAsset:(id)a4 photolibrary:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PLDuplicateMerge.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"sourceAssets"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v21 = [MEMORY[0x1E696AAA8] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"PLDuplicateMerge.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"targetAsset"}];

LABEL_3:
  v22.receiver = self;
  v22.super_class = PLDuplicateMerge;
  v13 = [(PLDuplicateMerge *)&v22 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_library, a5);
    v15 = [[PLDuplicateMergeCrashRecovery alloc] initWithPhotoLibrary:v12];
    mergeCrashRecovery = v14->_mergeCrashRecovery;
    v14->_mergeCrashRecovery = v15;

    objc_storeStrong(&v14->_sourceAssets, a3);
    objc_storeStrong(&v14->_targetAsset, a4);
    v17 = [[PLDuplicateMergeModelProperties alloc] initWithTargetAsset:v11 photoLibrary:v12];
    mergeModelProperties = v14->_mergeModelProperties;
    v14->_mergeModelProperties = v17;
  }

  return v14;
}

+ (BOOL)mergeAssets:(id)a3 targetAssetOID:(id)a4 photolibrary:(id)a5 error:(id *)a6
{
  v54 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_32:
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    [v38 handleFailureInMethod:a2 object:a1 file:@"PLDuplicateMerge.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"targetOID"}];

    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_33;
  }

  v37 = [MEMORY[0x1E696AAA8] currentHandler];
  [v37 handleFailureInMethod:a2 object:a1 file:@"PLDuplicateMerge.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"assets"}];

  if (!v11)
  {
    goto LABEL_32;
  }

LABEL_3:
  if (v12)
  {
    goto LABEL_4;
  }

LABEL_33:
  v39 = [MEMORY[0x1E696AAA8] currentHandler];
  [v39 handleFailureInMethod:a2 object:a1 file:@"PLDuplicateMerge.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"library"}];

LABEL_4:
  v42 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v14)
  {
    v15 = v14;
    v40 = v12;
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
            v27 = [v19 shortDescription];
            *buf = 138543362;
            v52 = v27;
            _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "Duplicate Merge: Skipping merge, asset is not merge ready: %{public}@", buf, 0xCu);
          }

          v28 = MEMORY[0x1E696ABC0];
          v29 = *MEMORY[0x1E69BFF48];
          v47 = *MEMORY[0x1E696A578];
          v48 = @"Merge skipped asset failed isMergeReady";
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
          v30 = [v28 errorWithDomain:v29 code:49405 userInfo:v24];
          v12 = v40;
          if (a6)
          {
            v30 = v30;
            *a6 = v30;
          }

          goto LABEL_29;
        }

        v20 = [v19 asset];
        v21 = [v20 objectID];
        v22 = [v21 isEqual:v11];

        if (v22)
        {
          v23 = v19;

          v16 = v23;
        }

        else if (v20)
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

    v12 = v40;
    if (v16)
    {
      v24 = [[PLDuplicateMerge alloc] initWithSourceAssets:v42 targetAsset:v16 photolibrary:v40];
      v25 = [(PLDuplicateMerge *)v24 mergeWithError:a6];
      goto LABEL_30;
    }
  }

  else
  {
  }

  v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Merge: No targetAsset found for targetOID %@", v11];
  v31 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v52 = v24;
    _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v32 = MEMORY[0x1E696ABC0];
  v33 = *MEMORY[0x1E69BFF48];
  v49 = *MEMORY[0x1E696A278];
  v50 = v24;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
  v35 = [v32 errorWithDomain:v33 code:49403 userInfo:v34];
  if (a6)
  {
    v35 = v35;
    *a6 = v35;
  }

  v16 = 0;
LABEL_29:
  v25 = 0;
LABEL_30:

  return v25;
}

@end