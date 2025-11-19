@interface PLPhotoLibraryPathManager(conveniences)
+ (id)temporaryRenderContentURLForInternalRendersWithExtension:()conveniences appropriateForURL:;
- (BOOL)_shouldRemoveOutboundResourceAtURL:()conveniences withExpiryInterval:;
- (id)URLForMetadataWithExtension:()conveniences forMediaInMainDirectory:withFilename:;
- (id)URLForPartialVideoDirectoryWithAssetUUID:()conveniences;
- (id)URLForPartialVideoWithResourceFingerprint:()conveniences assetUUID:timeRange:;
- (id)_cplLocalModeEnabledMarkerFilePathCreateIfNeeded:()conveniences;
- (id)_dcimAssetPathForResourceDirectoryPathType:()conveniences directory:filename:;
- (id)assetCreationHoldingDirectory;
- (id)assetCreationHoldingDirectoryForAssetUUID:()conveniences;
- (id)cloudServiceEnableLogFileURL;
- (id)cplDownloadFinishedMarkerFilePath;
- (id)cplEnableMarkerFilePath;
- (id)cplInitialSyncMarkerFilePath;
- (id)deletedMemoryUUIDsFilePath;
- (id)directoryPathForInFlightComments:()conveniences;
- (id)disableICloudPhotosFilePath;
- (id)enableICloudPhotosFilePath;
- (id)forceSoftResetSyncPath;
- (id)pauseICloudPhotosFilePath;
- (id)photoStreamsDataDirectory;
- (id)searchIndexDatabaseFilePath;
- (id)searchIndexGraphDataProgressFilePath;
- (id)searchIndexMetadataStoreFilePath;
- (id)searchIndexProgressFilePath;
- (id)searchIndexSpotlightProgressFilePath;
- (id)searchIndexStatusFilePath;
- (id)searchIndexSynonymsFilePath;
- (id)searchIndexSystemInfoFilePath;
- (id)searchInitialSearchSuggestionsFilePath;
- (id)searchRecentSearchesFilePath;
- (id)spotlightSearchIndexPath;
- (id)temporaryRenderContentURLForInternalRendersWithExtension:()conveniences;
- (id)wipeCPLOnOpenPath;
- (uint64_t)cplDataDirectoryCreateIfNeeded:()conveniences;
- (uint64_t)cplInitialSyncMarkerFileExists;
- (uint64_t)isAppLibraryPathManager;
- (uint64_t)isCPLSyncablePhotoLibraryPathManager;
- (uint64_t)isSystemPhotoLibraryPathManager;
- (uint64_t)removeCPLDataDirectory;
- (uint64_t)removeComputeDirectory;
- (uint64_t)removePartialVideoDirectory;
- (void)cleanupOutboundSharingFilesWithExpiryInterval:()conveniences;
@end

@implementation PLPhotoLibraryPathManager(conveniences)

- (id)searchRecentSearchesFilePath
{
  v1 = [a1 searchIndexDirectory];
  v2 = [v1 stringByAppendingPathComponent:@"recentSearches.bplist"];

  return v2;
}

- (id)searchIndexDatabaseFilePath
{
  v1 = [a1 searchIndexDirectory];
  v2 = [v1 stringByAppendingPathComponent:@"psi.sqlite"];

  return v2;
}

- (id)temporaryRenderContentURLForInternalRendersWithExtension:()conveniences
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [a1 libraryURL];
  v7 = [v5 temporaryRenderContentURLForInternalRendersWithExtension:v4 appropriateForURL:v6];

  return v7;
}

- (BOOL)_shouldRemoveOutboundResourceAtURL:()conveniences withExpiryInterval:
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v16 = 0;
  v6 = *MEMORY[0x1E695DA80];
  v15 = 0;
  v7 = [v5 getResourceValue:&v16 forKey:v6 error:&v15];
  v8 = v16;
  v9 = v15;
  if (v7)
  {
    v10 = [v8 dateByAddingTimeInterval:a1];
    [v10 timeIntervalSinceNow];
    v12 = v11 <= 0.0;
  }

  else
  {
    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = [v5 lastPathComponent];
      *buf = 138543618;
      v18 = v13;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "cleanupOutboundSharingFilesWithExpiryTimeout: Cannot get the creation date on outgoing resource file %{public}@. Marking for deletion anyway, error: %@", buf, 0x16u);
    }

    v12 = 1;
  }

  return v12;
}

- (void)cleanupOutboundSharingFilesWithExpiryInterval:()conveniences
{
  v55[2] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E695DB78];
  v55[0] = *MEMORY[0x1E695DA80];
  v55[1] = v4;
  v42 = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
  v6 = [a1 privateDirectoryWithSubType:2];
  if (![a1 isDCIM])
  {
    goto LABEL_4;
  }

  v7 = [a1 libraryURL];
  v8 = [v7 path];
  v9 = [v8 stringByAppendingPathComponent:@"PhotoData/OutgoingTemp"];

  if ([v6 isEqualToString:v9])
  {

LABEL_4:
    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6 isDirectory:1];
    v12 = [v10 enumeratorAtURL:v11 includingPropertiesForKeys:v5 options:12 errorHandler:&__block_literal_global_89707];

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (!v14)
    {
      v9 = v13;
      goto LABEL_37;
    }

    v15 = v14;
    v40 = v6;
    v41 = v5;
    v16 = *v47;
    v17 = v13;
    while (1)
    {
      v18 = 0;
      v43 = v15;
      do
      {
        if (*v47 != v16)
        {
          objc_enumerationMutation(v17);
        }

        v19 = *(*(&v46 + 1) + 8 * v18);
        v20 = objc_autoreleasePoolPush();
        v21 = [v19 lastPathComponent];
        if ([a1 _shouldRemoveOutboundResourceAtURL:v19 withExpiryInterval:a2])
        {
          v22 = v16;
          v23 = a1;
          v24 = v17;
          v44 = 0;
          v45 = 0;
          v25 = [v19 getResourceValue:&v45 forKey:v42 error:&v44];
          v26 = v45;
          v27 = v44;
          if ((v25 & 1) == 0)
          {
            v29 = PLBackendGetLog();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v51 = v21;
              v52 = 2112;
              v53 = v27;
              _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "cleanupOutboundSharingFilesWithExpiryTimeout: Cannot check if file URL is a directory, skipping: %{public}@, error: %@", buf, 0x16u);
            }

            v17 = v24;
            a1 = v23;
            v16 = v22;
            v15 = v43;
LABEL_29:

LABEL_30:
            goto LABEL_31;
          }

          if ([v26 BOOLValue])
          {
            v17 = v24;
            v28 = [v24 isEnumeratingDirectoryPostOrder];
            a1 = v23;
            v16 = v22;
            v15 = v43;
            if (v28 && rmdir([v19 fileSystemRepresentation]) == -1 && *__error() != 66)
            {
              v29 = PLBackendGetLog();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                v30 = __error();
                v31 = strerror(*v30);
                *buf = 138543618;
                v51 = v21;
                v52 = 2080;
                v53 = v31;
                _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "cleanupOutboundSharingFilesWithExpiryTimeout: could not remove directory: %{public}@, error: %s", buf, 0x16u);
              }

              goto LABEL_29;
            }

            goto LABEL_30;
          }

          v32 = unlink([v19 fileSystemRepresentation]);
          v33 = PLBackendGetLog();
          v29 = v33;
          if (v32 == -1)
          {
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              v38 = __error();
              v39 = strerror(*v38);
              *buf = 138543618;
              v51 = v21;
              v52 = 2080;
              v53 = v39;
              v34 = v29;
              v35 = OS_LOG_TYPE_ERROR;
              v36 = "cleanupOutboundSharingFilesWithExpiryTimeout: Unable to delete expired outbound file '%{public}@' error: %s";
              v37 = 22;
LABEL_27:
              _os_log_impl(&dword_19BF1F000, v34, v35, v36, buf, v37);
            }
          }

          else if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v51 = v21;
            v34 = v29;
            v35 = OS_LOG_TYPE_INFO;
            v36 = "cleanupOutboundSharingFilesWithExpiryTimeout: Successfully deleted expired outbound file '%{public}@'";
            v37 = 12;
            goto LABEL_27;
          }

          v17 = v24;
          a1 = v23;
          v16 = v22;
          v15 = v43;
          goto LABEL_29;
        }

        v27 = PLBackendGetLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v51 = v21;
          _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_INFO, "cleanupOutboundSharingFilesWithExpiryTimeout: Skip deleting non-expired file: %{public}@", buf, 0xCu);
        }

LABEL_31:

        objc_autoreleasePoolPop(v20);
        ++v18;
      }

      while (v15 != v18);
      v15 = [v17 countByEnumeratingWithState:&v46 objects:v54 count:16];
      if (!v15)
      {
        v9 = v17;
        v13 = v17;
        v6 = v40;
        v5 = v41;
        goto LABEL_37;
      }
    }
  }

  v13 = PLBackendGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v51 = v6;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "cleanupOutboundSharingFilesWithExpiryTimeout: unexpected outbound sharing path: %@", buf, 0xCu);
  }

LABEL_37:
}

- (id)assetCreationHoldingDirectoryForAssetUUID:()conveniences
{
  v4 = a3;
  v5 = [a1 assetCreationHoldingDirectory];
  v6 = [v5 stringByAppendingPathComponent:v4];

  return v6;
}

- (id)assetCreationHoldingDirectory
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v2 = [a1 validateCreationRequestWithError:&v9];
  v3 = v9;
  v8 = v3;
  v4 = [a1 externalDirectoryWithSubType:2 leafType:1 additionalPathComponents:0 createIfNeeded:v2 error:&v8];
  v5 = v8;

  if (v5 && ([MEMORY[0x1E69BF238] isFileExistsError:v5] & 1) == 0)
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Unable to create external directory for asset creation: %@", buf, 0xCu);
    }
  }

  return v4;
}

- (uint64_t)removeComputeDirectory
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 photoDirectoryWithType:19];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = 0;
  v3 = [v2 removeItemAtPath:v1 error:&v7];
  v4 = v7;
  if ((v3 & 1) == 0)
  {
    v5 = PLIsErrorFileNotFound();

    if (v5)
    {
      v3 = 1;
      goto LABEL_5;
    }

    v2 = PLBackendGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v4;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_ERROR, "Failed to remove compute directory: %@", buf, 0xCu);
    }
  }

LABEL_5:
  return v3;
}

- (uint64_t)removePartialVideoDirectory
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E695DFF8];
  v2 = [a1 photoDirectoryWithType:20];
  v3 = 1;
  v4 = [v1 fileURLWithPath:v2 isDirectory:1];

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = 0;
  v6 = [v5 removeItemAtURL:v4 error:&v10];
  v7 = v10;
  if ((v6 & 1) == 0 && (PLIsErrorFileNotFound() & 1) == 0)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v8 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v7;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Failed to remove partial video directory: %@", buf, 0xCu);
      }
    }

    v3 = 0;
  }

  return v3;
}

- (id)URLForPartialVideoDirectoryWithAssetUUID:()conveniences
{
  v4 = MEMORY[0x1E695DFF8];
  v5 = a3;
  v6 = [a1 photoDirectoryWithType:20];
  v7 = [v4 fileURLWithPath:v6 isDirectory:1];

  v8 = [v5 substringToIndex:1];
  v9 = [v8 uppercaseString];

  v10 = [v7 URLByAppendingPathComponent:v9];
  v11 = [v10 URLByAppendingPathComponent:v5];

  return v11;
}

- (id)URLForPartialVideoWithResourceFingerprint:()conveniences assetUUID:timeRange:
{
  v8 = a3;
  v9 = a4;
  if ([v8 rangeOfString:@"/"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [v8 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];

    v8 = v10;
  }

  v11 = MEMORY[0x1E696AEC0];
  v12 = *a5;
  v13 = a5[3];
  v14 = *(a5 + 2);
  v15 = *(a5 + 8);
  v16 = [*MEMORY[0x1E6982EC8] preferredFilenameExtension];
  v17 = [v11 stringWithFormat:@"%@_%lld_%d-%lld_%d.%@", v8, v12, v14, v13, v15, v16];

  v18 = [a1 URLForPartialVideoDirectoryWithAssetUUID:v9];

  v19 = [v18 URLByAppendingPathComponent:v17];

  return v19;
}

- (id)directoryPathForInFlightComments:()conveniences
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = [a1 validateCreationRequestWithError:0];
    v5 = [a1 photoDirectoryWithType:23 additionalPathComponents:@"INFLIGHTCOMMENTS"];
    if (v4)
    {
      v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5 isDirectory:1];
      v16 = 0;
      v7 = [v6 getResourceValue:&v16 forKey:*MEMORY[0x1E695DB20] error:0];
      v8 = v16;
      if ((v7 & 1) == 0)
      {
        v9 = [MEMORY[0x1E696AC08] defaultManager];
        v15 = 0;
        v10 = [v9 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v15];
        v11 = v15;

        if ((v10 & 1) == 0)
        {
          v12 = PLPhotoSharingGetLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = [v6 path];
            *buf = 138412546;
            v18 = v13;
            v19 = 2112;
            v20 = v11;
            _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "ERROR: Unable to create directory %@: %@", buf, 0x16u);
          }

          v5 = 0;
        }
      }
    }
  }

  else
  {
    v5 = [a1 photoDirectoryWithType:23 additionalPathComponents:@"INFLIGHTCOMMENTS"];
  }

  return v5;
}

- (id)cloudServiceEnableLogFileURL
{
  v2 = [a1 validateCreationRequestWithError:0];
  v3 = MEMORY[0x1E695DFF8];
  v4 = [a1 photoDirectoryWithType:5 createIfNeeded:v2 error:0];
  v5 = [v4 stringByAppendingPathComponent:@"cloudServiceEnableLog.plist"];
  v6 = [v3 fileURLWithPath:v5 isDirectory:0];

  return v6;
}

- (uint64_t)removeCPLDataDirectory
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = [a1 cplDataDirectoryCreateIfNeeded:0];
  v2 = [v1 stringByDeletingPathExtension];
  v3 = [v2 stringByAppendingString:@"-aside"];
  v4 = [v1 pathExtension];
  v5 = [v3 stringByAppendingPathExtension:v4];

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = MEMORY[0x1E6994D48];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v8 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v1;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Removing CPL directory: %@", buf, 0xCu);
    }
  }

  v23 = 0;
  v9 = [v6 removeItemAtPath:v5 error:&v23];
  v10 = v23;
  if (v9)
  {
    if (*v7)
    {
      goto LABEL_15;
    }

    v11 = __CPLAssetsdOSLogDomain();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v12 = "Existing CPL aside directory removed";
    v13 = v11;
    v14 = OS_LOG_TYPE_DEFAULT;
    v15 = 2;
    goto LABEL_13;
  }

  if ((PLIsErrorFileNotFound() & 1) == 0 && (*v7 & 1) == 0)
  {
    v11 = __CPLAssetsdOSLogDomain();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_14:

      goto LABEL_15;
    }

    *buf = 138412290;
    v25 = v10;
    v12 = "Failed to remove existing aside CPL directory: %@";
    v13 = v11;
    v14 = OS_LOG_TYPE_ERROR;
    v15 = 12;
LABEL_13:
    _os_log_impl(&dword_19BF1F000, v13, v14, v12, buf, v15);
    goto LABEL_14;
  }

LABEL_15:
  v22 = v10;
  v16 = [v6 removeItemAtPath:v1 error:&v22];
  v17 = v22;

  if (v16)
  {
    if ((*v7 & 1) == 0)
    {
      v18 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v19 = "CPL directory removed";
LABEL_23:
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 2u);
        goto LABEL_24;
      }

      goto LABEL_24;
    }

LABEL_31:
    v20 = 1;
    goto LABEL_30;
  }

  if ((PLIsErrorFileNotFound() & 1) == 0)
  {
    if (*v7)
    {
      v20 = 0;
      goto LABEL_30;
    }

    v18 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v17;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Failed to remove CPL directory: %@", buf, 0xCu);
    }

    v20 = 0;
    goto LABEL_29;
  }

  if (*v7)
  {
    goto LABEL_31;
  }

  v18 = __CPLAssetsdOSLogDomain();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v19 = "CPL directory does not exist";
    goto LABEL_23;
  }

LABEL_24:
  v20 = 1;
LABEL_29:

LABEL_30:
  return v20;
}

- (uint64_t)cplInitialSyncMarkerFileExists
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [a1 cplInitialSyncMarkerFilePath];
  v4 = [v2 fileExistsAtPath:v3];

  return v4;
}

- (id)cplInitialSyncMarkerFilePath
{
  v1 = [a1 photoDirectoryWithType:14 leafType:3 createIfNeeded:0 error:0];
  v2 = [v1 stringByAppendingPathComponent:@"initialsync_marker"];

  return v2;
}

- (id)_cplLocalModeEnabledMarkerFilePathCreateIfNeeded:()conveniences
{
  if (a3)
  {
    v4 = [a1 validateCreationRequestWithError:0];
  }

  else
  {
    v4 = 0;
  }

  v5 = [a1 photoDirectoryWithType:33 createIfNeeded:v4 error:0];
  v6 = [v5 stringByAppendingPathComponent:@"cpl_local_mode_enabled"];

  return v6;
}

- (id)cplDownloadFinishedMarkerFilePath
{
  v1 = [a1 photoDirectoryWithType:33 createIfNeeded:objc_msgSend(a1 error:{"validateCreationRequestWithError:", 0), 0}];
  v2 = [v1 stringByAppendingPathComponent:@"cpl_download_finished_marker"];

  return v2;
}

- (id)cplEnableMarkerFilePath
{
  v1 = [a1 photoDirectoryWithType:33 createIfNeeded:objc_msgSend(a1 error:{"validateCreationRequestWithError:", 0), 0}];
  v2 = [v1 stringByAppendingPathComponent:@"cpl_enabled_marker"];

  return v2;
}

- (id)wipeCPLOnOpenPath
{
  v1 = [a1 photoDirectoryWithType:35 createIfNeeded:objc_msgSend(a1 error:{"validateCreationRequestWithError:", 0), 0}];
  v2 = [v1 stringByAppendingPathComponent:@"wipeCPLOnOpen"];

  return v2;
}

- (id)forceSoftResetSyncPath
{
  v1 = [a1 photoDirectoryWithType:33 createIfNeeded:objc_msgSend(a1 error:{"validateCreationRequestWithError:", 0), 0}];
  v2 = [v1 stringByAppendingPathComponent:@"forceSoftResetSync"];

  return v2;
}

- (id)disableICloudPhotosFilePath
{
  v1 = [a1 photoDirectoryWithType:35 createIfNeeded:objc_msgSend(a1 error:{"validateCreationRequestWithError:", 0), 0}];
  v2 = [v1 stringByAppendingPathComponent:@"disableICloudPhotos"];

  return v2;
}

- (id)pauseICloudPhotosFilePath
{
  v1 = [a1 cplDataDirectoryCreateIfNeeded:1];
  v2 = [v1 stringByAppendingPathComponent:@"pauseICloudPhotos"];

  return v2;
}

- (id)enableICloudPhotosFilePath
{
  v1 = [a1 cplDataDirectoryCreateIfNeeded:1];
  v2 = [v1 stringByAppendingPathComponent:@"enableICloudPhotos"];

  return v2;
}

- (uint64_t)cplDataDirectoryCreateIfNeeded:()conveniences
{
  if (a3)
  {
    v4 = [a1 validateCreationRequestWithError:0];
  }

  else
  {
    v4 = 0;
  }

  return [a1 photoDirectoryWithType:14 leafType:3 createIfNeeded:v4 error:0];
}

- (id)deletedMemoryUUIDsFilePath
{
  v1 = [a1 photoDirectoryWithType:6];
  v2 = [v1 stringByAppendingPathComponent:@"deleted_memory_uuids.plist"];

  return v2;
}

- (id)searchInitialSearchSuggestionsFilePath
{
  v1 = [a1 searchIndexDirectory];
  v2 = [v1 stringByAppendingPathComponent:@"initialSuggestions.bplist"];

  return v2;
}

- (id)searchIndexStatusFilePath
{
  v1 = [a1 searchIndexDirectory];
  v2 = [v1 stringByAppendingPathComponent:@"searchIndexStatus.plist"];

  return v2;
}

- (id)spotlightSearchIndexPath
{
  v1 = [a1 searchIndexDirectory];
  v2 = [v1 stringByAppendingPathComponent:@"Spotlight"];

  return v2;
}

- (id)searchIndexSpotlightProgressFilePath
{
  v1 = [a1 searchIndexDirectory];
  v2 = [v1 stringByAppendingPathComponent:@"spotlightProgress.plist"];

  return v2;
}

- (id)searchIndexSynonymsFilePath
{
  v1 = [a1 searchIndexDirectory];
  v2 = [v1 stringByAppendingPathComponent:@"synonyms.plist"];

  return v2;
}

- (id)searchIndexGraphDataProgressFilePath
{
  v1 = [a1 searchIndexDirectory];
  v2 = [v1 stringByAppendingPathComponent:@"graphDataProgress.plist"];

  return v2;
}

- (id)searchIndexProgressFilePath
{
  v1 = [a1 searchIndexDirectory];
  v2 = [v1 stringByAppendingPathComponent:@"searchProgress.plist"];

  return v2;
}

- (id)searchIndexMetadataStoreFilePath
{
  v1 = [a1 searchIndexDirectory];
  v2 = [v1 stringByAppendingPathComponent:@"searchMetadata.plist"];

  return v2;
}

- (id)searchIndexSystemInfoFilePath
{
  v1 = [a1 searchIndexDirectory];
  v2 = [v1 stringByAppendingPathComponent:@"searchSystemInfo.plist"];

  return v2;
}

- (id)photoStreamsDataDirectory
{
  v1 = [a1 baseDirectory];
  v2 = [v1 stringByAppendingPathComponent:*MEMORY[0x1E69BFF38]];

  return v2;
}

- (id)URLForMetadataWithExtension:()conveniences forMediaInMainDirectory:withFilename:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = MEMORY[0x1E695DFF8];
  v13 = [a1 photoDirectoryWithType:10];
  v14 = [v12 fileURLWithPath:v13 isDirectory:1];

  if (v9)
  {
    v15 = [a1 assetAbbreviatedMetadataDirectoryForDirectory:v9 type:32 bundleScope:0];
    v16 = [v14 URLByAppendingPathComponent:v15 isDirectory:1];

    v14 = v16;
  }

  if (v10)
  {
    v17 = [v10 stringByDeletingPathExtension];
    v18 = [v14 URLByAppendingPathComponent:v17 isDirectory:0];

    if (v8)
    {
      v19 = [v18 URLByAppendingPathExtension:v8];

      v18 = v19;
    }

    v14 = v18;
  }

  objc_autoreleasePoolPop(v11);

  return v14;
}

- (id)_dcimAssetPathForResourceDirectoryPathType:()conveniences directory:filename:
{
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = [a1 assetAbbreviatedMetadataDirectoryForDirectory:v8 type:32 bundleScope:0];
  v12 = [v9 stringByDeletingPathExtension];
  if (!v11)
  {
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v13 = 0;
  if ([v11 length] && v12)
  {
    if ([v12 length])
    {
      v14 = [a1 photoDirectoryWithType:a3];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 stringByAppendingPathComponent:v11];

        v13 = [v16 stringByAppendingPathComponent:v12];

        goto LABEL_8;
      }
    }

    goto LABEL_7;
  }

LABEL_8:

  objc_autoreleasePoolPop(v10);

  return v13;
}

- (uint64_t)isCPLSyncablePhotoLibraryPathManager
{
  if ([a1 isSystemPhotoLibraryPathManager])
  {
    return 1;
  }

  return [a1 isAppLibraryPathManager];
}

- (uint64_t)isAppLibraryPathManager
{
  v1 = [PLCPLSettings settingsWithPathManager:a1];
  v2 = [v1 isAppLibrary];

  return v2;
}

- (uint64_t)isSystemPhotoLibraryPathManager
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = +[PLPhotoLibraryBundleController sharedBundleController];
  v3 = [a1 libraryURL];
  v4 = [v2 bundleForLibraryURL:v3];

  if (v4)
  {
    v5 = [v4 isSystemPhotoLibrary];
  }

  else
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [a1 libraryURL];
      v11 = 138412546;
      v12 = v7;
      v13 = 2114;
      v14 = objc_opt_class();
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "PLPhotoLibraryBundle is not available for %@. Falling back to %{public}@ isSystemPhotoLibraryURL:", &v11, 0x16u);
    }

    v8 = objc_opt_class();
    v9 = [a1 libraryURL];
    v5 = [v8 isSystemPhotoLibraryURL:v9];
  }

  return v5;
}

+ (id)temporaryRenderContentURLForInternalRendersWithExtension:()conveniences appropriateForURL:
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E69C08F0] typeWithFilenameExtension:v5];
  v8 = [v7 identifier];
  if ([PLManagedAsset isPrimaryImageFormatForUTI:v8])
  {
LABEL_2:

    goto LABEL_4;
  }

  v9 = [v7 conformsToType:*MEMORY[0x1E6982F80]];

  if ((v9 & 1) == 0)
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = v5;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Unexpected non-primary filename extension %{public}@ for render content URL", buf, 0xCu);
    }

    goto LABEL_2;
  }

LABEL_4:
  v10 = NSTemporaryDirectory();
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v10 isDirectory:1];
    v12 = MEMORY[0x1E696AEC0];
    v13 = [MEMORY[0x1E69BF320] UUIDString];
    v14 = [v12 stringWithFormat:@"render.%@", v13];
    v15 = [v14 stringByAppendingPathExtension:v5];

    v16 = [v11 URLByAppendingPathComponent:v15];
  }

  else
  {
    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v6;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "error finding temporary directory for %@", buf, 0xCu);
    }

    v16 = 0;
  }

  return v16;
}

@end