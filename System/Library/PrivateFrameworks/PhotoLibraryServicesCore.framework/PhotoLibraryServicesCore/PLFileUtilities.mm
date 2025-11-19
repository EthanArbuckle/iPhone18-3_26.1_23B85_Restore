@interface PLFileUtilities
+ (BOOL)changeFileOwnerToMobileAtPath:(id)a3 error:(id *)a4;
+ (BOOL)changeFileOwnerToMobileAtPath:(id)a3 error:(id *)a4 usingFileManager:(id)a5;
+ (BOOL)cloneFileAtPath:(id)a3 toPath:(id)a4 error:(id *)a5;
+ (BOOL)copyItemAtURL:(id)a3 toURL:(id)a4 error:(id *)a5;
+ (BOOL)createDirectoryAtPath:(id)a3 error:(id *)a4;
+ (BOOL)createDirectoryAtPath:(id)a3 error:(id *)a4 usingFileManager:(id)a5;
+ (BOOL)createDirectoryAtURL:(id)a3 error:(id *)a4;
+ (BOOL)createDirectoryAtURL:(id)a3 error:(id *)a4 usingFileManager:(id)a5;
+ (BOOL)filePath:(id)a3 hasPrefix:(id)a4;
+ (BOOL)filePath:(id)a3 isEqualToFilePath:(id)a4;
+ (BOOL)filePathIsSubpathOfSyncRoot:(id)a3;
+ (BOOL)fileURL:(id)a3 isEqualToFileURL:(id)a4;
+ (BOOL)ingestItemAtURL:(id)a3 toURL:(id)a4 type:(int64_t)a5 options:(unint64_t)a6 capabilities:(id)a7 error:(id *)a8;
+ (BOOL)isFileExistsError:(id)a3;
+ (BOOL)isVarMobileMediaPath:(id)a3;
+ (BOOL)removeDisconnectedSQLiteDatabaseFileWithPath:(id)a3 error:(id *)a4;
+ (BOOL)removeFilesInDirectoryAtURL:(id)a3 withPrefix:(id)a4 error:(id *)a5 progress:(id)a6;
+ (BOOL)removeItemAtPath:(id)a3 error:(id *)a4;
+ (BOOL)removeItemAtURL:(id)a3 error:(id *)a4;
+ (BOOL)secureMoveItemAtURL:(id)a3 toURL:(id)a4 capabilities:(id)a5 error:(id *)a6;
+ (BOOL)setFileCreationDate:(id)a3 forFileURL:(id)a4 error:(id *)a5;
+ (BOOL)stripExtendedAttributesFromFileAtURL:(id)a3 inDomain:(id)a4 error:(id *)a5;
+ (BOOL)stripImmutableFlagIfNecessaryFromFileAtPath:(id)a3;
+ (id)_attributeDetailsForPath:(id)a3 ofFileSystem:(BOOL)a4 error:(id *)a5;
+ (id)_defaultSystemLibraryPath;
+ (id)_diagnosticInfoForPath:(id)a3 includeFileSystemAttributes:(BOOL)a4 resolvedFileSystemAttributes:(BOOL *)a5;
+ (id)_fileListingDetailsForPath:(id)a3 error:(id *)a4;
+ (id)_mobileOwnerAttributes;
+ (id)accessibleURLOrParentForFileURL:(id)a3;
+ (id)defaultSystemLibraryURL;
+ (id)defaultSystemPhotoDCIMDirectory;
+ (id)defaultSystemPhotoDataCPLDirectory;
+ (id)defaultSystemPhotoDataDirectory;
+ (id)defaultSystemPhotoDataMiscDirectory;
+ (id)descriptionForFileIngestionType:(int64_t)a3;
+ (id)embeddedHomeDirectory;
+ (id)fileManager;
+ (id)filePathByRemovingTrailingPathSeparator:(id)a3;
+ (id)proxyLockCoordinatingFilePathForDatabaseDirectory:(id)a3 databaseName:(id)a4;
+ (id)proxyLockFilePathForDatabasePath:(id)a3;
+ (id)realPathForPath:(id)a3 error:(id *)a4;
+ (id)realPathsFromPaths:(id)a3 includeUnresolved:(BOOL)a4;
+ (id)realSystemPhotoLibraryPath;
+ (id)realURLForURL:(id)a3 error:(id *)a4;
+ (id)redactedDescriptionForFileURL:(id)a3;
+ (id)redactedDescriptionForPath:(id)a3;
+ (id)standardOutputStringForExecutablePath:(id)a3 arguments:(id)a4 environment:(id)a5 standardErrorOut:(id *)a6 error:(id *)a7;
+ (id)subpathWithLast:(unint64_t)a3 pathComponentsFromURL:(id)a4;
+ (int64_t)directoryEntryCountAtURL:(id)a3 error:(id *)a4;
+ (int64_t)fileLengthForFilePath:(id)a3;
+ (void)calculateTotalSizeOfFilesAtPath:(id)a3 calculatePurgeable:(BOOL)a4 allocatedSize:(BOOL)a5 result:(id)a6;
+ (void)gatherDiagnosticInfoForURL:(id)a3 handler:(id)a4;
+ (void)logDiagnosticInfoForURL:(id)a3;
@end

@implementation PLFileUtilities

+ (id)defaultSystemLibraryURL
{
  pl_dispatch_once(&_ensureSystemPhotoDataDirectoryPath_onceToken, &__block_literal_global_389);
  v2 = sDefaultSystemLibraryURL;

  return v2;
}

+ (id)defaultSystemPhotoDataMiscDirectory
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!defaultSystemPhotoDataMiscDirectory_path)
  {
    v2 = [a1 defaultSystemPhotoDataDirectory];
    v3 = [v2 stringByAppendingPathComponent:@"MISC"];
    v4 = defaultSystemPhotoDataMiscDirectory_path;
    defaultSystemPhotoDataMiscDirectory_path = v3;

    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v6 = [v5 fileExistsAtPath:defaultSystemPhotoDataMiscDirectory_path];

    if ((v6 & 1) == 0)
    {
      v11 = *MEMORY[0x1E696A370];
      v12[0] = &unk_1F1F90B78;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      v8 = [MEMORY[0x1E696AC08] defaultManager];
      [v8 createDirectoryAtPath:defaultSystemPhotoDataMiscDirectory_path withIntermediateDirectories:1 attributes:v7 error:0];
    }
  }

  v9 = defaultSystemPhotoDataMiscDirectory_path;

  return v9;
}

+ (id)defaultSystemPhotoDataDirectory
{
  pl_dispatch_once(&_ensureSystemPhotoDataDirectoryPath_onceToken, &__block_literal_global_389);
  v2 = sPhotoDataDirectoryPath;

  return v2;
}

+ (id)embeddedHomeDirectory
{
  if (geteuid())
  {
    v2 = CPSharedResourcesDirectory();
  }

  else
  {
    v2 = @"/var/mobile";
  }

  return v2;
}

+ (id)_defaultSystemLibraryPath
{
  os_unfair_lock_lock(&sDefaultSystemLibraryPathLock);
  if (!sDefaultSystemLibraryPath)
  {
    if (PLMobileSlideShowPhotoLibraryTestingMode_onceToken != -1)
    {
      dispatch_once(&PLMobileSlideShowPhotoLibraryTestingMode_onceToken, &__block_literal_global_3937);
    }

    if (PLMobileSlideShowPhotoLibraryTestingMode_sMobileSlideShowPhotoLibraryTestingMode == 2)
    {
      v3 = NSTemporaryDirectory();
      v4 = MEMORY[0x1E696AEC0];
      v5 = [MEMORY[0x1E696AFB0] UUID];
      v6 = [v5 UUIDString];
      v7 = [v4 stringWithFormat:@"unit-test-library-%@.photoslibrary", v6];
      v8 = [v3 stringByAppendingPathComponent:v7];
      v9 = sDefaultSystemLibraryPath;
      sDefaultSystemLibraryPath = v8;
    }

    else
    {
      v10 = [a1 realSystemPhotoLibraryPath];
      v3 = sDefaultSystemLibraryPath;
      sDefaultSystemLibraryPath = v10;
    }

    v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:sDefaultSystemLibraryPath isDirectory:1];
    v12 = sDefaultSystemLibraryURL;
    sDefaultSystemLibraryURL = v11;
  }

  os_unfair_lock_unlock(&sDefaultSystemLibraryPathLock);
  v13 = sDefaultSystemLibraryPath;

  return v13;
}

+ (id)realSystemPhotoLibraryPath
{
  v2 = [a1 embeddedHomeDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"Media"];

  return v3;
}

+ (id)defaultSystemPhotoDCIMDirectory
{
  pl_dispatch_once(&_ensureSystemDCIMDirectoryPath_onceToken, &__block_literal_global_394);
  v2 = sDCIMDirectoryPath;

  return v2;
}

+ (id)_mobileOwnerAttributes
{
  pl_dispatch_once(&_mobileOwnerAttributes_onceToken, &__block_literal_global_163);
  v2 = _mobileOwnerAttributes_attributes;

  return v2;
}

+ (id)fileManager
{
  pl_dispatch_once(&fileManager_onceToken, &__block_literal_global_5048);
  v2 = fileManager__fileManager;

  return v2;
}

uint64_t __30__PLFileUtilities_fileManager__block_invoke()
{
  fileManager__fileManager = objc_alloc_init(MEMORY[0x1E696AC08]);

  return MEMORY[0x1EEE66BB8]();
}

void __41__PLFileUtilities__mobileOwnerAttributes__block_invoke()
{
  v8[2] = *MEMORY[0x1E69E9840];
  v0 = getpwnam("mobile");
  if (v0)
  {
    pw_uid = v0->pw_uid;
    pw_gid = v0->pw_gid;
  }

  else
  {
    pw_gid = 501;
    pw_uid = 501;
  }

  v7[0] = *MEMORY[0x1E696A358];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:pw_uid];
  v8[0] = v3;
  v7[1] = *MEMORY[0x1E696A320];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:pw_gid];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v6 = _mobileOwnerAttributes_attributes;
  _mobileOwnerAttributes_attributes = v5;
}

+ (void)calculateTotalSizeOfFilesAtPath:(id)a3 calculatePurgeable:(BOOL)a4 allocatedSize:(BOOL)a5 result:(id)a6
{
  v7 = a5;
  v8 = a4;
  v68[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a6;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__4869;
  v43 = __Block_byref_object_dispose__4870;
  v44 = 0;
  v11 = [MEMORY[0x1E695DF00] now];
  v12 = *MEMORY[0x1E695DB50];
  if (v7)
  {
    v13 = *MEMORY[0x1E695DC58];

    v12 = v13;
  }

  if (v8)
  {
    v14 = *MEMORY[0x1E695DBA8];
    v68[0] = v12;
    v68[1] = v14;
    v15 = v68;
    v16 = 2;
  }

  else
  {
    v67 = v12;
    v15 = &v67;
    v16 = 1;
  }

  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:v16];
  v18 = [[PLFilesystemIterator alloc] initWithFilePath:v9];
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __91__PLFileUtilities_calculateTotalSizeOfFilesAtPath_calculatePurgeable_allocatedSize_result___block_invoke;
  v30 = &unk_1E7930698;
  v19 = v17;
  v31 = v19;
  v33 = &v39;
  v34 = &v57;
  v20 = v12;
  v32 = v20;
  v35 = &v53;
  v38 = v8;
  v36 = &v45;
  v37 = &v49;
  [(PLFilesystemIterator *)v18 visitURLsLoadingPropertiesForKeys:v19 withBlock:&v27];
  v21 = PLBackendGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = v58[3];
    [v11 timeIntervalSinceNow];
    *buf = 138412802;
    v62 = v9;
    v63 = 2048;
    v64 = v22;
    v65 = 2048;
    v66 = 0.0 - v23;
    _os_log_impl(&dword_1AA9BD000, v21, OS_LOG_TYPE_INFO, "calculateTotalSizeOfFilesAtPath:%@ %llu files took %.3f sec", buf, 0x20u);
  }

  v24 = [(PLFilesystemIterator *)v18 error];
  if (v24)
  {
  }

  else if (!v40[5])
  {
    v10[2](v10, v58[3], v54[3], v50[3], v46[3], 0);
    goto LABEL_14;
  }

  v25 = [(PLFilesystemIterator *)v18 error:v27];
  v26 = v25;
  if (!v25)
  {
    v26 = v40[5];
  }

  v10[2](v10, 0, 0, 0, 0, v26);

LABEL_14:
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v57, 8);
}

BOOL __91__PLFileUtilities_calculateTotalSizeOfFilesAtPath_calculatePurgeable_allocatedSize_result___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v12 = 0;
  v4 = [a2 resourceValuesForKeys:v3 error:&v12];
  v5 = v12;
  v6 = v12;
  if (v4)
  {
    ++*(*(*(a1 + 56) + 8) + 24);
    v7 = [v4 objectForKeyedSubscript:*(a1 + 40)];
    v8 = [v7 unsignedLongLongValue];

    *(*(*(a1 + 64) + 8) + 24) += v8;
    if (*(a1 + 88) == 1)
    {
      v9 = [v4 objectForKeyedSubscript:*MEMORY[0x1E695DBA8]];
      v10 = [v9 BOOLValue];

      if (v10)
      {
        *(*(*(a1 + 72) + 8) + 24) += v8;
        ++*(*(*(a1 + 80) + 8) + 24);
      }
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);
  }

  return v4 != 0;
}

+ (BOOL)filePathIsSubpathOfSyncRoot:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20 = 0;
  v5 = [v4 fileSystemRepresentation];
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = v5;
  if (fsctl(v5, 0x40084A4AuLL, &v20, 0))
  {
    v7 = __error();
    v8 = *v7;
    if (*v7 != 25)
    {
      if (v8 == 2)
      {
        v9 = [v4 stringByDeletingLastPathComponent];
        v10 = [v9 length];
        if (v10 < [v4 length] && -[NSObject length](v9, "length") > 1)
        {
          v11 = [a1 filePathIsSubpathOfSyncRoot:v9];

          goto LABEL_14;
        }
      }

      else
      {
        v12 = strerror(*v7);
        v9 = PLBackendGetLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v13 = [a1 redactedDescriptionForPath:v4];
          *buf = 138543874;
          v22 = v13;
          v23 = 1024;
          v24 = v8;
          v25 = 2082;
          v26 = v12;
          _os_log_impl(&dword_1AA9BD000, v9, OS_LOG_TYPE_ERROR, "Get parent sync root failed for %{public}@ error %d %{public}s", buf, 0x1Cu);
        }
      }
    }

LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  if (v20)
  {
    v11 = 1;
  }

  else
  {
    v19 = 0;
    if (fsctl(v6, 0x40044A48uLL, &v19, 0))
    {
      v15 = *__error();
      v16 = strerror(v15);
      v17 = PLBackendGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = [a1 redactedDescriptionForPath:v4];
        *buf = 138543874;
        v22 = v18;
        v23 = 1024;
        v24 = v15;
        v25 = 2082;
        v26 = v16;
        _os_log_impl(&dword_1AA9BD000, v17, OS_LOG_TYPE_ERROR, "Get sync root flag failed for %{public}@ error %d %{public}s", buf, 0x1Cu);
      }

      v11 = v20 != 0;
    }

    else
    {
      v11 = v19 == 1;
    }
  }

LABEL_14:

  return v11;
}

+ (void)logDiagnosticInfoForURL:(id)a3
{
  v55[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [a1 redactedDescriptionForFileURL:v4];
    *buf = 138543362;
    v52 = v6;
    _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_ERROR, "--- BEGIN File diagnostics for %{public}@ ---", buf, 0xCu);
  }

  v7 = PLBackendGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = [v4 path];
    *buf = 138412290;
    v52 = v8;
    _os_log_impl(&dword_1AA9BD000, v7, OS_LOG_TYPE_ERROR, "path: %@", buf, 0xCu);
  }

  v9 = *MEMORY[0x1E695DEB0];
  v10 = *MEMORY[0x1E695DD88];
  v55[0] = *MEMORY[0x1E695DEB0];
  v55[1] = v10;
  v11 = *MEMORY[0x1E695DD98];
  v55[2] = *MEMORY[0x1E695DDB8];
  v55[3] = v11;
  v55[4] = *MEMORY[0x1E695DDA8];
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:5];
  v49 = 0;
  v43 = [v4 resourceValuesForKeys:v12 error:&v49];
  v13 = v49;
  if (v13)
  {
    v14 = PLBackendGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v52 = v4;
      v53 = 2112;
      v54 = v13;
      _os_log_impl(&dword_1AA9BD000, v14, OS_LOG_TYPE_ERROR, "Error getting resource values for %@: %@", buf, 0x16u);
    }
  }

  v15 = [a1 defaultSystemLibraryURL];

  v48 = 0;
  v16 = [v15 resourceValuesForKeys:v12 error:&v48];
  v17 = v48;
  if (v17)
  {
    v18 = PLBackendGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v52 = v15;
      v53 = 2112;
      v54 = v17;
      _os_log_impl(&dword_1AA9BD000, v18, OS_LOG_TYPE_ERROR, "Error getting resource values for default SPL URL %@: %@", buf, 0x16u);
    }
  }

  v19 = [v43 objectForKeyedSubscript:v9];
  v20 = [v16 objectForKeyedSubscript:v9];
  v41 = a1;
  v42 = v4;
  v37 = v20;
  v38 = v19;
  if (v19)
  {
    if (v20)
    {
      v21 = [v19 isEqual:v20];
      v22 = PLBackendGetLog();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
      if (v21)
      {
        if (!v23)
        {
          goto LABEL_25;
        }

        *buf = 0;
        v24 = "URL is on the same volume as the default SPL URL";
      }

      else
      {
        if (!v23)
        {
          goto LABEL_25;
        }

        *buf = 0;
        v24 = "URL is NOT on the same volume as the default SPL URL";
      }
    }

    else
    {
      v22 = PLBackendGetLog();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v24 = "defaultSPLVolumeURL is nil";
    }
  }

  else
  {
    v22 = PLBackendGetLog();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v24 = "volumeURL is nil";
  }

  _os_log_impl(&dword_1AA9BD000, v22, OS_LOG_TYPE_ERROR, v24, buf, 2u);
LABEL_25:
  v39 = v16;
  v40 = v15;

  v25 = PLBackendGetLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1AA9BD000, v25, OS_LOG_TYPE_ERROR, "{", buf, 2u);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v26 = v12;
  v27 = [v26 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v45;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v45 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v44 + 1) + 8 * i);
        if (([v31 isEqual:v9] & 1) == 0)
        {
          v32 = PLBackendGetLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v33 = [v43 objectForKeyedSubscript:v31];
            *buf = 138543618;
            v52 = v31;
            v53 = 2114;
            v54 = v33;
            _os_log_impl(&dword_1AA9BD000, v32, OS_LOG_TYPE_ERROR, "  %{public}@ = %{public}@", buf, 0x16u);
          }
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v28);
  }

  v34 = PLBackendGetLog();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1AA9BD000, v34, OS_LOG_TYPE_ERROR, "}", buf, 2u);
  }

  [v41 gatherDiagnosticInfoForURL:v42 handler:&__block_literal_global_221];
  v35 = PLBackendGetLog();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    v36 = [v41 redactedDescriptionForFileURL:v42];
    *buf = 138543362;
    v52 = v36;
    _os_log_impl(&dword_1AA9BD000, v35, OS_LOG_TYPE_ERROR, "--- END File diagnostics for %{public}@ ---", buf, 0xCu);
  }
}

void __43__PLFileUtilities_logDiagnosticInfoForURL___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [a3 componentsSeparatedByString:@"\n"];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = PLBackendGetLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v15 = v8;
          _os_log_impl(&dword_1AA9BD000, v9, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v5);
  }
}

+ (void)gatherDiagnosticInfoForURL:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (PFOSVariantHasInternalDiagnostics())
  {
    v22 = 0;
    v8 = [v6 path];
    v9 = [a1 _diagnosticInfoForPath:v8 includeFileSystemAttributes:1 resolvedFileSystemAttributes:&v22];

    v10 = [v6 path];
    v7[2](v7, v10, v9);

    v11 = [v6 path];
    if ([v11 length])
    {
      v12 = [MEMORY[0x1E696AC08] defaultManager];
      v13 = [v12 fileExistsAtPath:v11];

      if ((v13 & 1) == 0)
      {
        v14 = *MEMORY[0x1E69C09D8] + 1;
        v15 = 1;
        while (1)
        {
          v16 = [v11 stringByDeletingLastPathComponent];
          if (![v16 length] || (objc_msgSend(v16, "isEqualToString:", v11) & 1) != 0)
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"File does not exist! No parent directory (%@)", v16];
            goto LABEL_12;
          }

          v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\nFile does not exist! Will attempt parent directory (%@)", v16];
          v7[2](v7, v11, v17);

          v15 &= v22 ^ 1;
          v18 = [a1 _diagnosticInfoForPath:v16 includeFileSystemAttributes:v15 & 1 resolvedFileSystemAttributes:&v22];
          v7[2](v7, v16, v18);

          if (--v14 <= 0)
          {
            break;
          }

          v19 = [MEMORY[0x1E696AC08] defaultManager];
          v20 = [v19 fileExistsAtPath:v16];

          v11 = v16;
          if (v20)
          {
            goto LABEL_14;
          }
        }

        [MEMORY[0x1E696AEC0] stringWithFormat:@"Gave up after exceeding maximum parent directory attempts (%@)", v16];
        v21 = LABEL_12:;
        v7[2](v7, v11, v21);
      }
    }

    v16 = v11;
LABEL_14:
  }
}

+ (id)accessibleURLOrParentForFileURL:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 path];
  if ([v4 length])
  {
    v5 = *MEMORY[0x1E69C09D8];
    while (1)
    {
      if ([PLSandboxHelper processCanReadSandboxForPath:v4])
      {
        v6 = [MEMORY[0x1E696AC08] defaultManager];
        v7 = [v6 fileExistsAtPath:v4];

        if (v7)
        {
          v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
          goto LABEL_16;
        }
      }

      v8 = [v4 stringByDeletingLastPathComponent];
      if (![v8 length])
      {
        break;
      }

      v9 = [v8 isEqualToString:v4];
      if (v5 <= 0)
      {
        goto LABEL_12;
      }

      v10 = v9;
      --v5;

      v4 = v8;
      if (v10)
      {
        goto LABEL_11;
      }
    }

    if (v5 >= 1)
    {

LABEL_11:
      v11 = 0;
      v4 = v8;
      goto LABEL_16;
    }

LABEL_12:
    v12 = PLBackendGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v3 path];
      v15 = 136446722;
      v16 = "+[PLFileUtilities accessibleURLOrParentForFileURL:]";
      v17 = 2112;
      v18 = v13;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_1AA9BD000, v12, OS_LOG_TYPE_ERROR, "%{public}s failed after exceeding maximum parent directory attempts on %@ [at path %@]", &v15, 0x20u);
    }
  }

  v11 = 0;
LABEL_16:

  return v11;
}

+ (id)_diagnosticInfoForPath:(id)a3 includeFileSystemAttributes:(BOOL)a4 resolvedFileSystemAttributes:(BOOL *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [MEMORY[0x1E696AD60] string];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __99__PLFileUtilities__diagnosticInfoForPath_includeFileSystemAttributes_resolvedFileSystemAttributes___block_invoke;
  v23[3] = &unk_1E7930650;
  v10 = v9;
  v24 = v10;
  v11 = MEMORY[0x1AC5925C0](v23);
  v22 = 0;
  v12 = [a1 _fileListingDetailsForPath:v8 error:&v22];
  v13 = v22;
  (v11)[2](v11, @"FILE LISTING DETAILS", v12, v13);

  v21 = v13;
  v14 = [a1 _attributeDetailsForPath:v8 ofFileSystem:0 error:&v21];
  v15 = v21;

  (v11)[2](v11, @"FILE ATTRIBUTE DETAILS", v14, v15);
  if (v6)
  {
    v20 = v15;
    v16 = [a1 _attributeDetailsForPath:v8 ofFileSystem:1 error:&v20];
    v17 = v20;

    (v11)[2](v11, @"FILE SYSTEM ATTRIBUTE DETAILS", v16, v17);
    if (a5 && v16)
    {
      *a5 = 1;
    }

    v15 = v17;
  }

  v18 = v10;

  return v10;
}

uint64_t __99__PLFileUtilities__diagnosticInfoForPath_includeFileSystemAttributes_resolvedFileSystemAttributes___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    return [v4 appendFormat:@"%@:\n%@\n", a2, a3];
  }

  else
  {
    return [v4 appendFormat:@"%@: failed with error\n%@\n", a2, a4];
  }
}

+ (id)_attributeDetailsForPath:(id)a3 ofFileSystem:(BOOL)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = v8;
  if (a4)
  {
    v22 = 0;
    v10 = &v22;
    v11 = [v8 attributesOfFileSystemForPath:v7 error:&v22];
  }

  else
  {
    v21 = 0;
    v10 = &v21;
    v11 = [v8 attributesOfItemAtPath:v7 error:&v21];
  }

  v12 = v11;
  v13 = *v10;

  if (v12)
  {
    if ([v12 count])
    {
      v14 = [@"empty" mutableCopy];
    }

    else
    {
      v14 = [MEMORY[0x1E696AD60] string];
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __63__PLFileUtilities__attributeDetailsForPath_ofFileSystem_error___block_invoke;
    v19[3] = &unk_1E7930628;
    v16 = v14;
    v20 = v16;
    [v12 enumerateKeysAndObjectsUsingBlock:v19];
  }

  else if (a5)
  {
    v15 = v13;
    v16 = 0;
    *a5 = v13;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  return v16;
}

+ (id)_fileListingDetailsForPath:(id)a3 error:(id *)a4
{
  v16[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v16[0] = @"-l@a";
  v16[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v14 = 0;
  v15 = 0;
  v8 = [a1 standardOutputStringForExecutablePath:@"/bin/ls" arguments:v7 environment:0 standardErrorOut:&v15 error:&v14];
  v9 = v15;
  v10 = v14;

  if (v8)
  {
    if ([v9 length])
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[stdout]:\n%@\n[stderr]:\n%@", v8, v9];

      v8 = v11;
    }
  }

  else if (a4)
  {
    v12 = v10;
    v8 = 0;
    *a4 = v10;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)standardOutputStringForExecutablePath:(id)a3 arguments:(id)a4 environment:(id)a5 standardErrorOut:(id *)a6 error:(id *)a7
{
  v11 = a4;
  v12 = a5;
  v13 = MEMORY[0x1E696AED8];
  v14 = a3;
  v15 = objc_alloc_init(v13);
  v16 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14];

  [v15 setExecutableURL:v16];
  v17 = [MEMORY[0x1E696AE00] pipe];
  [v15 setStandardOutput:v17];

  if (a6)
  {
    v18 = [MEMORY[0x1E696AE00] pipe];
    [v15 setStandardError:v18];
  }

  if (v11)
  {
    [v15 setArguments:v11];
  }

  if (v12)
  {
    [v15 setEnvironment:v12];
  }

  v31 = 0;
  v19 = [v15 launchAndReturnError:&v31];
  v20 = v31;
  v21 = v20;
  if (v19)
  {
    [v15 waitUntilExit];
    v22 = [v15 standardOutput];
    v23 = [v22 fileHandleForReading];
    v24 = [v23 readDataToEndOfFile];

    v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v24 encoding:4];
    if (a6)
    {
      v26 = [v15 standardError];
      v27 = [v26 fileHandleForReading];
      v28 = [v27 readDataToEndOfFile];

      *a6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v28 encoding:4];
    }
  }

  else if (a7)
  {
    v29 = v20;
    v25 = 0;
    *a7 = v21;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

+ (id)redactedDescriptionForPath:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v5 = *MEMORY[0x1E69BDD90];
    goto LABEL_6;
  }

  if (![v3 fileSystemRepresentation] || (memset(&v8, 0, sizeof(v8)), lstat(objc_msgSend(v4, "fileSystemRepresentation"), &v8)) || (objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"inode=%llu", v8.st_ino), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hash=%lu", objc_msgSend(v4, "hash")];
LABEL_6:
    v6 = v5;
  }

  return v6;
}

+ (id)redactedDescriptionForFileURL:(id)a3
{
  v4 = [a3 path];
  v5 = [a1 redactedDescriptionForPath:v4];

  return v5;
}

+ (id)filePathByRemovingTrailingPathSeparator:(id)a3
{
  v4 = a3;
  v5 = [a1 pathSeparator];
  if ([v4 hasSuffix:v5])
  {
    v6 = [v4 length];

    v7 = v4;
    if (v6 < 2)
    {
      goto LABEL_6;
    }

    v7 = [v4 substringToIndex:{objc_msgSend(v4, "length") - 1}];
    v5 = v4;
  }

  else
  {
    v7 = v4;
  }

LABEL_6:

  return v7;
}

+ (id)realPathsFromPaths:(id)a3 includeUnresolved:(BOOL)a4
{
  v23 = a4;
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = 0;
    v11 = *v26;
    *&v8 = 138412546;
    v22 = v8;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        v13 = v10;
        if (*v26 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v24 = v10;
        v15 = [PLFileUtilities realPathForPath:v14 error:&v24, v22];
        v10 = v24;

        if (v15)
        {
          v16 = v5;
          v17 = v15;
LABEL_12:
          [v16 addObject:v17];
          goto LABEL_13;
        }

        v18 = PLBackendGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = __error();
          v20 = strerror(*v19);
          *buf = v22;
          v30 = v14;
          v31 = 2082;
          v32 = v20;
          _os_log_impl(&dword_1AA9BD000, v18, OS_LOG_TYPE_DEFAULT, "Failed to resolve real path for %@ (%{public}s).", buf, 0x16u);
        }

        if (v23)
        {
          v16 = v5;
          v17 = v14;
          goto LABEL_12;
        }

LABEL_13:
      }

      v9 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (!v9)
      {

        break;
      }
    }
  }

  return v5;
}

+ (BOOL)filePath:(id)a3 isEqualToFilePath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:v7])
  {
    v8 = 1;
  }

  else
  {
    v9 = [a1 realPathForPath:v7 error:0];
    if (v9)
    {
      v10 = [a1 realPathForPath:v6 error:0];
      v8 = [v10 isEqualToString:v9];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (BOOL)filePath:(id)a3 hasPrefix:(id)a4
{
  v6 = a3;
  v7 = [a1 realPathForPath:a4 error:0];
  if (v7)
  {
    v8 = [a1 realPathForPath:v6 error:0];
    v9 = [v8 hasPrefix:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)subpathWithLast:(unint64_t)a3 pathComponentsFromURL:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3 && ([v5 path], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v8))
  {
    v9 = [v6 pathComponents];
    if ([v9 count] <= a3)
    {
      v10 = 0;
    }

    else
    {
      v10 = [v9 count] - a3;
    }

    v12 = [v9 subarrayWithRange:{v10, objc_msgSend(v9, "count") - v10}];
    v11 = [MEMORY[0x1E696AEC0] pathWithComponents:v12];
  }

  else
  {
    v11 = &stru_1F1F75560;
  }

  return v11;
}

+ (id)realURLForURL:(id)a3 error:(id *)a4
{
  v6 = [a3 path];
  v7 = [a1 realPathForPath:v6 error:a4];

  if (v7)
  {
    v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)realPathForPath:(id)a3 error:(id *)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if (realpath_DARWIN_EXTSN([v5 fileSystemRepresentation], buffer))
    {
      v7 = CFStringCreateWithFileSystemRepresentation(0, buffer);
      v8 = 0;
      if (!a4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v7 = 0;
      v8 = *__error();
      if (!a4)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
    if (!a4)
    {
      goto LABEL_10;
    }
  }

  if (!v7)
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:v8 userInfo:0];
  }

LABEL_10:

  return v7;
}

+ (BOOL)fileURL:(id)a3 isEqualToFileURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = 0;
    if (v6 && v7)
    {
      v10 = [v6 path];
      v11 = [v8 path];
      if ([v10 isEqualToString:v11])
      {
        v9 = 1;
      }

      else
      {
        v9 = [a1 filePath:v10 isEqualToFilePath:v11];
      }
    }
  }

  return v9;
}

+ (BOOL)stripImmutableFlagIfNecessaryFromFileAtPath:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"PLFileUtilities.m" lineNumber:960 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  v6 = [v5 fileSystemRepresentation];
  memset(&v18, 0, sizeof(v18));
  if (stat(v6, &v18))
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = __error();
      v9 = strerror(*v8);
      *buf = 138412546;
      v20 = v5;
      v21 = 2082;
      v22 = v9;
      v10 = "Failed to stat %@ (%{public}s).";
LABEL_6:
      _os_log_impl(&dword_1AA9BD000, v7, OS_LOG_TYPE_ERROR, v10, buf, 0x16u);
    }
  }

  else
  {
    if ((v18.st_flags & 2) == 0)
    {
      v11 = 0;
      goto LABEL_9;
    }

    v13 = chflags(v6, v18.st_flags & 0xFFFFFFFD);
    v14 = PLBackendGetLog();
    v7 = v14;
    if (!v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v5;
        _os_log_impl(&dword_1AA9BD000, v7, OS_LOG_TYPE_DEFAULT, "Cleared IMMUTABLE flag from %@", buf, 0xCu);
      }

      v11 = 1;
      goto LABEL_8;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = __error();
      v16 = strerror(*v15);
      *buf = 138412546;
      v20 = v5;
      v21 = 2082;
      v22 = v16;
      v10 = "Failed to clear IMMUTABLE flag on %@ (%{public}s).";
      goto LABEL_6;
    }
  }

  v11 = 0;
LABEL_8:

LABEL_9:
  return v11;
}

+ (int64_t)fileLengthForFilePath:(id)a3
{
  result = a3;
  if (a3)
  {
    memset(&v4, 0, sizeof(v4));
    if (stat([a3 fileSystemRepresentation], &v4))
    {
      return 0;
    }

    else
    {
      return v4.st_size;
    }
  }

  return result;
}

+ (BOOL)changeFileOwnerToMobileAtPath:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(a4) = [v6 changeFileOwnerToMobileAtPath:v5 error:a4 usingFileManager:v7];

  return a4;
}

+ (BOOL)changeFileOwnerToMobileAtPath:(id)a3 error:(id *)a4 usingFileManager:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (getuid() && geteuid())
  {
    v9 = 1;
  }

  else
  {
    v10 = [objc_opt_class() _mobileOwnerAttributes];
    v14 = 0;
    v9 = [v8 setAttributes:v10 ofItemAtPath:v7 error:&v14];
    v11 = v14;

    if (a4 && (v9 & 1) == 0)
    {
      v12 = v11;
      *a4 = v11;
    }
  }

  return v9;
}

+ (BOOL)createDirectoryAtURL:(id)a3 error:(id *)a4 usingFileManager:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [objc_opt_class() _mobileOwnerAttributes];
  v16 = 0;
  v11 = 1;
  v12 = [v8 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:v10 error:&v16];

  v13 = v16;
  if ((v12 & 1) == 0 && ([a1 isFileExistsError:v13] & 1) == 0)
  {
    if (a4)
    {
      v14 = v13;
      v11 = 0;
      *a4 = v13;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

+ (BOOL)createDirectoryAtURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 fileManager];
  LOBYTE(a4) = [a1 createDirectoryAtURL:v6 error:a4 usingFileManager:v7];

  return a4;
}

+ (BOOL)createDirectoryAtPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_opt_class();
  v8 = [a1 fileManager];
  LOBYTE(a4) = [v7 createDirectoryAtPath:v6 error:a4 usingFileManager:v8];

  return a4;
}

+ (BOOL)createDirectoryAtPath:(id)a3 error:(id *)a4 usingFileManager:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [objc_opt_class() _mobileOwnerAttributes];
  v16 = 0;
  v11 = 1;
  v12 = [v8 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:v10 error:&v16];

  v13 = v16;
  if ((v12 & 1) == 0 && ([a1 isFileExistsError:v13] & 1) == 0)
  {
    if (a4)
    {
      v14 = v13;
      v11 = 0;
      *a4 = v13;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

+ (BOOL)isFileExistsError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:*MEMORY[0x1E696A250]])
  {
    v5 = [v3 code];

    if (v5 == 516)
    {
      v6 = 1;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v7 = PLUnderlyingPOSIXError(v3);
  v8 = v7;
  if (v7)
  {
    v6 = [v7 code] == 17;
  }

  else
  {
    v6 = 0;
  }

LABEL_9:
  return v6;
}

+ (BOOL)setFileCreationDate:(id)a3 forFileURL:(id)a4 error:(id *)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = *MEMORY[0x1E696A350];
  v10 = PLBackendGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v9 == *MEMORY[0x1E696A308];
    *buf = 138543874;
    if (v11)
    {
      v12 = @"creation";
    }

    else
    {
      v12 = @"modification";
    }

    v25 = v12;
    v26 = 2112;
    v27 = v7;
    v28 = 2112;
    v29 = v8;
    _os_log_impl(&dword_1AA9BD000, v10, OS_LOG_TYPE_DEFAULT, "Setting file %{public}@ date to %@ on %@", buf, 0x20u);
  }

  v22 = v9;
  v23 = v7;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v14 = [MEMORY[0x1E696AC08] defaultManager];
  v15 = [(__CFString *)v8 path];
  v21 = 0;
  v16 = [v14 setAttributes:v13 ofItemAtPath:v15 error:&v21];
  v17 = v21;

  if ((v16 & 1) == 0)
  {
    v18 = PLBackendGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v25 = v8;
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&dword_1AA9BD000, v18, OS_LOG_TYPE_ERROR, "Could not set file creation date on %@, error: %@", buf, 0x16u);
    }
  }

  if (a5)
  {
    v19 = v17;
    *a5 = v17;
  }

  return v16;
}

+ (BOOL)stripExtendedAttributesFromFileAtURL:(id)a3 inDomain:(id)a4 error:(id *)a5
{
  v87[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v65 = [MEMORY[0x1E696AAA8] currentHandler];
    [v65 handleFailureInMethod:a2 object:a1 file:@"PLFileUtilities.m" lineNumber:734 description:{@"Invalid parameter not satisfying: %@", @"fileURL"}];
  }

  v11 = objc_autoreleasePoolPush();
  v12 = [v9 path];
  v13 = [v12 fileSystemRepresentation];

  v14 = open(v13, 2097154);
  v15 = v14;
  if (v14 < 0)
  {
    v22 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A798];
    v24 = *__error();
    v86 = @"path";
    v25 = [v9 path];
    v87[0] = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:&v86 count:1];
    v17 = [v22 errorWithDomain:v23 code:v24 userInfo:v26];

    v27 = PLBackendGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [v9 path];
      *buf = 138412546;
      v73 = v28;
      v74 = 2112;
      v75 = v17;
      _os_log_impl(&dword_1AA9BD000, v27, OS_LOG_TYPE_ERROR, "Unable to open file '%@' %@", buf, 0x16u);
    }

    v29 = 0;
  }

  else
  {
    v16 = flistxattr(v14, 0, 0, 0);
    if (v16 < 0)
    {
      v71 = v11;
      v30 = MEMORY[0x1E696ABC0];
      v31 = *MEMORY[0x1E696A798];
      v32 = *__error();
      v84[0] = @"path";
      v33 = [v9 path];
      v84[1] = @"description";
      v85[0] = v33;
      v85[1] = @"Unable to get extended attributes";
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v85 forKeys:v84 count:2];
      v17 = [v30 errorWithDomain:v31 code:v32 userInfo:v34];

      v35 = PLBackendGetLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = [v9 path];
        v37 = __error();
        v38 = strerror(*v37);
        *buf = 138412802;
        v73 = @"Unable to get extended attributes";
        v74 = 2112;
        v75 = v36;
        v76 = 2080;
        v77 = v38;
        _os_log_impl(&dword_1AA9BD000, v35, OS_LOG_TYPE_ERROR, "%@ for '%@' (%s).", buf, 0x20u);
      }

      close(v15);
      v29 = 0;
      goto LABEL_42;
    }

    v17 = v16;
    if (v16)
    {
      v18 = [MEMORY[0x1E695DF88] dataWithLength:v16];
      v70 = v10;
      v71 = v11;
      if (flistxattr(v15, [v18 mutableBytes], objc_msgSend(v18, "length"), 0) == v17)
      {
        v66 = a5;
        if (v10 && [v10 length])
        {
          v19 = [v10 UTF8String];
          v20 = v19;
          if (v19)
          {
            v21 = strlen(v19);
          }

          else
          {
            v21 = 0;
          }
        }

        else
        {
          v21 = 0;
          v20 = 0;
        }

        [MEMORY[0x1E695DF70] array];
        v69 = v68 = 0;
        v49 = 0;
        v67 = 1;
        do
        {
          v50 = [v18 bytes];
          v51 = strnlen((v50 + v49), v17 - v49);
          if (!v51)
          {
            break;
          }

          v52 = v51;
          if (!v21 || !strncmp((v50 + v49), v20, v21))
          {
            v53 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v50 + v49];
            v54 = v53;
            if (v53)
            {
              if ([v53 length])
              {
                if (fremovexattr(v15, [v54 UTF8String], 0) < 0)
                {
                  v55 = *__error();
                  if (v55 != 93)
                  {
                    if (v68)
                    {
                      v56 = v68;
                    }

                    else
                    {
                      v56 = v55;
                    }

                    v68 = v56;
                    [v69 addObject:v54];
                    v67 = 0;
                  }
                }
              }
            }
          }

          v49 += v52 + 1;
        }

        while (v49 < v17);
        if (v67)
        {
          v17 = 0;
          v29 = 1;
          a5 = v66;
          v10 = v70;
        }

        else
        {
          v57 = MEMORY[0x1E696ABC0];
          v58 = *MEMORY[0x1E696A798];
          v80[0] = @"path";
          v59 = [v9 path];
          v81[0] = v59;
          v81[1] = @"Failed to remove extended attributes";
          v80[1] = @"description";
          v80[2] = @"keys";
          v81[2] = v69;
          v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:v80 count:3];
          v17 = [v57 errorWithDomain:v58 code:v68 userInfo:v60];

          v61 = PLBackendGetLog();
          v10 = v70;
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            v62 = [v9 path];
            *buf = 138413058;
            v73 = @"Failed to remove extended attributes";
            v74 = 2112;
            v75 = v62;
            v76 = 2080;
            v77 = strerror(v68);
            v78 = 2112;
            v79 = v69;
            _os_log_impl(&dword_1AA9BD000, v61, OS_LOG_TYPE_ERROR, "%@ for '%@' (%s): %@.", buf, 0x2Au);
          }

          v29 = 0;
          a5 = v66;
        }
      }

      else
      {
        v39 = a5;
        v40 = MEMORY[0x1E696ABC0];
        v41 = *MEMORY[0x1E696A798];
        v42 = *__error();
        v82[0] = @"path";
        v43 = [v9 path];
        v82[1] = @"description";
        v83[0] = v43;
        v83[1] = @"Failed to read extended attributes";
        v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:2];
        v17 = [v40 errorWithDomain:v41 code:v42 userInfo:v44];

        v45 = PLBackendGetLog();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = [v9 path];
          v47 = __error();
          v48 = strerror(*v47);
          *buf = 138412802;
          v73 = @"Failed to read extended attributes";
          v74 = 2112;
          v75 = v46;
          v76 = 2080;
          v77 = v48;
          _os_log_impl(&dword_1AA9BD000, v45, OS_LOG_TYPE_ERROR, "%@ for '%@' (%s).", buf, 0x20u);
        }

        close(v15);
        v29 = 0;
        a5 = v39;
        v10 = v70;
      }

LABEL_42:
      v11 = v71;
      goto LABEL_43;
    }

    v29 = 1;
  }

LABEL_43:
  close(v15);
  objc_autoreleasePoolPop(v11);
  if (a5 && v17)
  {
    v63 = v17;
    *a5 = v17;
  }

  return v29;
}

+ (BOOL)ingestItemAtURL:(id)a3 toURL:(id)a4 type:(int64_t)a5 options:(unint64_t)a6 capabilities:(id)a7 error:(id *)a8
{
  v90 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v67 = a7;
  v15 = PLAssetImportGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [PLFileUtilities descriptionForFileIngestionType:a5];
    *buf = 138413058;
    v83 = v13;
    v84 = 2112;
    v85 = v14;
    v86 = 2112;
    v87 = v16;
    v88 = 2048;
    v89 = a6;
    _os_log_impl(&dword_1AA9BD000, v15, OS_LOG_TYPE_DEFAULT, "Ingesting %@ to %@ with ingestion type %@ option %lu", buf, 0x2Au);
  }

  v68 = v13;

  if (!a5 || (a6 & 4) == 0)
  {
LABEL_7:
    v20 = 0;
    v21 = 0;
    if ((a6 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v17 = [a1 fileManager];
  v77 = 0;
  v18 = [v17 removeItemAtURL:v14 error:&v77];
  v19 = v77;

  if (v18)
  {

    goto LABEL_7;
  }

  v22 = [v19 userInfo];
  v23 = [v22 objectForKey:*MEMORY[0x1E696AA08]];

  v24 = [v23 domain];
  if (![v24 isEqualToString:*MEMORY[0x1E696A798]])
  {

    goto LABEL_13;
  }

  v25 = [v23 code];

  if (v25 != 2)
  {
LABEL_13:
    v21 = v19;
    v26 = 0;
    goto LABEL_14;
  }

  v21 = 0;
  v26 = 1;
LABEL_14:

  if (a6 & 8) != 0 && (v26)
  {
    v20 = v21;
LABEL_17:
    v27 = [MEMORY[0x1E696AC08] defaultManager];
    v28 = [v14 path];
    v29 = [v28 stringByDeletingLastPathComponent];
    v76 = 0;
    v30 = [v27 createDirectoryAtPath:v29 withIntermediateDirectories:1 attributes:0 error:&v76];
    v21 = v76;

    if ((v30 & 1) == 0)
    {

      goto LABEL_55;
    }

    v21 = v20;
    goto LABEL_19;
  }

  if (!v26)
  {
    goto LABEL_55;
  }

LABEL_19:
  v31 = 1;
  v32 = v68;
  if (a5 <= 1)
  {
    if (a5)
    {
      if (a5 != 1)
      {
        goto LABEL_42;
      }

      v73 = v21;
      v31 = [a1 copyItemAtURL:v68 toURL:v14 error:&v73];
      v33 = v73;
      goto LABEL_27;
    }

    v38 = [v68 path];
    v75 = 0;
    [a1 realPathForPath:v38 error:&v75];
    v40 = v39 = a1;
    v41 = v75;

    v42 = [v14 path];
    v74 = v41;
    v64 = v39;
    v43 = [v39 realPathForPath:v42 error:&v74];
    v34 = v74;

    v65 = v40;
    if (v40 && v43)
    {
      if ([v40 isEqual:v43])
      {
        v31 = 1;
        a1 = v64;
LABEL_40:

        goto LABEL_41;
      }

      v63 = MEMORY[0x1E696ABC0];
      v45 = *MEMORY[0x1E696A250];
      v80 = @"reason";
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid file names are not equal"];
      v81 = v46;
      v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
      v44 = [v63 errorWithDomain:v45 code:258 userInfo:v47];

      v21 = v46;
    }

    else
    {
      v44 = v34;
    }

    a1 = v64;

    v31 = 0;
    v21 = v44;
    goto LABEL_40;
  }

  if (a5 == 2)
  {
    v34 = [v68 path];
    v35 = [v14 path];
    v72 = v21;
    v31 = [a1 cloneFileAtPath:v34 toPath:v35 error:&v72];
    v36 = v72;

    v21 = v36;
    goto LABEL_41;
  }

  if (a5 == 3)
  {
    v34 = [a1 fileManager];
    v71 = v21;
    v31 = [v34 moveItemAtURL:v68 toURL:v14 error:&v71];
    v37 = v71;

    v21 = v37;
    goto LABEL_41;
  }

  if (a5 != 4)
  {
    goto LABEL_42;
  }

  v70 = v21;
  v31 = [a1 secureMoveItemAtURL:v68 toURL:v14 capabilities:v67 error:&v70];
  v33 = v70;
LABEL_27:
  v34 = v21;
  v21 = v33;
LABEL_41:

LABEL_42:
  if ((a6 & 1) != 0 && v31)
  {
    [a1 stripExtendedAttributesFromFileAtURL:v14 inDomain:@"com.apple.assetsd" error:0];
  }

  v48 = v31 ^ 1;
  if ((a6 & 2) == 0)
  {
    v48 = 1;
  }

  if ((v48 & 1) == 0)
  {
    v49 = [a1 fileManager];
    v78 = *MEMORY[0x1E696A3A0];
    v79 = *MEMORY[0x1E696A388];
    v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
    v51 = [v14 path];
    v69 = 0;
    v52 = [v49 setAttributes:v50 ofItemAtPath:v51 error:&v69];
    v53 = v69;

    if ((v52 & 1) == 0)
    {
      v54 = PLBackendGetLog();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v55 = [v14 path];
        *buf = 138412546;
        v83 = v55;
        v84 = 2112;
        v85 = v53;
        _os_log_impl(&dword_1AA9BD000, v54, OS_LOG_TYPE_ERROR, "Failed to assign data protection to %@, %@", buf, 0x16u);
      }
    }

    goto LABEL_54;
  }

  if (v31)
  {
LABEL_54:
    v56 = 1;
    goto LABEL_60;
  }

LABEL_55:
  v32 = v68;
  if (a8)
  {
    v57 = v21;
    v56 = 0;
    *a8 = v21;
  }

  else
  {
    v58 = PLBackendGetLog();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v59 = [PLFileUtilities descriptionForFileIngestionType:a5];
      v60 = [v68 path];
      v61 = [v14 path];
      *buf = 138413058;
      v83 = v59;
      v84 = 2112;
      v85 = v60;
      v86 = 2112;
      v87 = v61;
      v88 = 2112;
      v89 = v21;
      _os_log_impl(&dword_1AA9BD000, v58, OS_LOG_TYPE_ERROR, "Failed to %@ %@ to %@: %@", buf, 0x2Au);
    }

    v56 = 0;
  }

LABEL_60:

  return v56;
}

+ (id)descriptionForFileIngestionType:(int64_t)a3
{
  if (a3 > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79306B8[a3];
  }
}

+ (BOOL)removeDisconnectedSQLiteDatabaseFileWithPath:(id)a3 error:(id *)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 fileManager];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [&unk_1F1F91280 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v26;
    v12 = 1;
    *&v9 = 136446722;
    v23 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(&unk_1F1F91280);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v15 = v6;
        if ([v14 length])
        {
          v16 = [v15 stringByAppendingString:v14];

          v15 = v16;
        }

        v24 = 0;
        v17 = [v7 removeItemAtPath:v15 error:{&v24, v23}];
        v18 = v24;
        v19 = v18;
        if ((v17 & 1) == 0 && [v18 code] != 4)
        {
          if (a4 != 0 && (v12 & 1) != 0)
          {
            v20 = v19;
            *a4 = v19;
          }

          v21 = PLBackendGetLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = v23;
            v30 = "+[PLFileUtilities removeDisconnectedSQLiteDatabaseFileWithPath:error:]";
            v31 = 2112;
            v32 = v15;
            v33 = 2114;
            v34 = v19;
            _os_log_impl(&dword_1AA9BD000, v21, OS_LOG_TYPE_ERROR, "%{public}s failed to remove %@ [%{public}@]", buf, 0x20u);
          }

          v12 = 0;
        }
      }

      v10 = [&unk_1F1F91280 countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

+ (BOOL)removeItemAtURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 fileManager];
  v15 = 0;
  v8 = [v7 removeItemAtURL:v6 error:&v15];

  v9 = v15;
  if (v8)
  {
    goto LABEL_4;
  }

  if (PLIsErrorFileNotFound(v9))
  {

    v9 = 0;
LABEL_4:
    v10 = v9;
    v11 = 1;
    goto LABEL_5;
  }

  v13 = v9;
  v10 = v13;
  if (a4)
  {
    v14 = v13;
    v11 = 0;
    *a4 = v10;
  }

  else
  {
    v11 = 0;
  }

LABEL_5:

  return v11;
}

+ (BOOL)removeItemAtPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 fileManager];
  v15 = 0;
  v8 = [v7 removeItemAtPath:v6 error:&v15];

  v9 = v15;
  if (v8)
  {
    goto LABEL_4;
  }

  if (PLIsErrorFileNotFound(v9))
  {

    v9 = 0;
LABEL_4:
    v10 = v9;
    v11 = 1;
    goto LABEL_5;
  }

  v13 = v9;
  v10 = v13;
  if (a4)
  {
    v14 = v13;
    v11 = 0;
    *a4 = v10;
  }

  else
  {
    v11 = 0;
  }

LABEL_5:

  return v11;
}

+ (BOOL)removeFilesInDirectoryAtURL:(id)a3 withPrefix:(id)a4 error:(id *)a5 progress:(id)a6
{
  v59[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [v9 fileSystemRepresentation];
  v13 = [v10 UTF8String];
  if (!v10 || (v14 = v13, ![v10 length]))
  {
    v27 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A798];
    v58 = *MEMORY[0x1E696A278];
    v59[0] = @"nil or empty prefix not supported";
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:&v58 count:1];
    v30 = v27;
    v31 = v28;
    v32 = 22;
    goto LABEL_25;
  }

  v15 = opendir(v12);
  if (!v15)
  {
    v45 = MEMORY[0x1E696ABC0];
    v46 = *MEMORY[0x1E696A798];
    v47 = *__error();
    v48 = *MEMORY[0x1E696A998];
    v56[0] = *MEMORY[0x1E696A278];
    v56[1] = v48;
    v57[0] = @"error opening directory";
    v57[1] = v9;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:2];
    v30 = v45;
    v31 = v46;
    v32 = v47;
LABEL_25:
    v33 = [v30 errorWithDomain:v31 code:v32 userInfo:v29];
    if (a5)
    {
      *a5 = v33;
    }

    goto LABEL_34;
  }

  v16 = v15;
  v17 = [v9 path];
  v18 = [v17 hasSuffix:@"/"];

  if ((v18 & 1) == 0)
  {
    __strlcpy_chk();
    __strlcat_chk();
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
LABEL_7:
  v50 = v21;
  while (1)
  {
    v22 = readdir(v16);
    if (!v22)
    {
      break;
    }

    v23 = v22;
    d_type = v22->d_type;
    if (d_type == 4)
    {
      if (v22->d_name[0] != 46 || v22->d_name[1] && (v22->d_name[1] != 46 || v22->d_name[2]))
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (d_type == 8)
      {
        v25 = strlen(v14);
        if (!strncmp(v23->d_name, v14, v25))
        {
          __strlcpy_chk();
          __strlcat_chk();
          if (unlink(v55))
          {
            closedir(v16);
            v34 = MEMORY[0x1E696ABC0];
            v35 = *MEMORY[0x1E696A798];
            v36 = *__error();
            v49 = *MEMORY[0x1E696A368];
            v53[0] = *MEMORY[0x1E696A278];
            v53[1] = v49;
            v54[0] = @"error unlinking path";
            v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v55];
            v54[1] = v29;
            v38 = MEMORY[0x1E695DF20];
            v39 = v54;
            v40 = v53;
            goto LABEL_31;
          }

          v26 = v19 + 1;
          v21 = v50;
          if (v26 - v50 >= 0x2711)
          {
            v21 = v19 + 1;
          }

          ++v19;
          if (v26 - v50 >= 0x2711)
          {
            v19 = v26;
            if (v11)
            {
              v11[2](v11, v26, v20);
              v19 = v26;
              v21 = v26;
            }
          }

          goto LABEL_7;
        }
      }

LABEL_17:
      ++v20;
    }
  }

  closedir(v16);
  if (v11)
  {
    v11[2](v11, v19, v20);
  }

  if (!rmdir(v12))
  {
    v43 = 1;
    goto LABEL_35;
  }

  v34 = MEMORY[0x1E696ABC0];
  v35 = *MEMORY[0x1E696A798];
  v36 = *__error();
  v37 = *MEMORY[0x1E696A368];
  v51[0] = *MEMORY[0x1E696A278];
  v51[1] = v37;
  v52[0] = @"error removing directory";
  v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
  v52[1] = v29;
  v38 = MEMORY[0x1E695DF20];
  v39 = v52;
  v40 = v51;
LABEL_31:
  v41 = [v38 dictionaryWithObjects:v39 forKeys:v40 count:2];
  v42 = [v34 errorWithDomain:v35 code:v36 userInfo:v41];
  if (a5)
  {
    *a5 = v42;
  }

LABEL_34:
  v43 = 0;
LABEL_35:

  return v43;
}

+ (int64_t)directoryEntryCountAtURL:(id)a3 error:(id *)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a3;
  memset(&v45, 0, 512);
  v6 = [v5 fileSystemRepresentation];
  if (!statfs(v6, &v45))
  {
    memset(v36, 0, 44);
    v34 = xmmword_1AAA8F504;
    v35 = 0;
    if (getattrlist(v45.f_mntonname, &v34, v36, 0x2CuLL, 0))
    {
      v16 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A798];
      v18 = *__error();
      v19 = *MEMORY[0x1E696A368];
      v41[0] = *MEMORY[0x1E696A278];
      v41[1] = v19;
      v42[0] = @"error finding volume capabilities";
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v45.f_mntonname];
      v42[1] = v14;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
      v21 = v16;
      v22 = v17;
      v23 = v18;
    }

    else
    {
      if ((v36[2] & 2) != 0)
      {
        v33 = 0;
        v32 = xmmword_1AAA8F51C;
        v31 = 0;
        if (!getattrlist(v6, &v32, &v31, 8uLL, 0))
        {
          v28 = HIDWORD(v31);
          goto LABEL_13;
        }

        v7 = MEMORY[0x1E696ABC0];
        v8 = *MEMORY[0x1E696A798];
        v9 = *__error();
        v30 = *MEMORY[0x1E696A998];
        v37[0] = *MEMORY[0x1E696A278];
        v37[1] = v30;
        v38[0] = @"error finding directory entry count";
        v38[1] = v5;
        v11 = MEMORY[0x1E695DF20];
        v12 = v38;
        v13 = v37;
        goto LABEL_3;
      }

      v24 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A798];
      v26 = *MEMORY[0x1E696A368];
      v39[0] = *MEMORY[0x1E696A278];
      v39[1] = v26;
      v40[0] = @"volume does not support ATTR_DIR_ENTRYCOUNT";
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v45.f_mntonname];
      v40[1] = v14;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
      v21 = v24;
      v22 = v25;
      v23 = 45;
    }

    v27 = [v21 errorWithDomain:v22 code:v23 userInfo:v20];
    if (a4)
    {
      *a4 = v27;
    }

    goto LABEL_12;
  }

  v7 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A798];
  v9 = *__error();
  v10 = *MEMORY[0x1E696A998];
  v43[0] = *MEMORY[0x1E696A278];
  v43[1] = v10;
  v44[0] = @"error finding volume info";
  v44[1] = v5;
  v11 = MEMORY[0x1E695DF20];
  v12 = v44;
  v13 = v43;
LABEL_3:
  v14 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:2];
  v15 = [v7 errorWithDomain:v8 code:v9 userInfo:v14];
  if (a4)
  {
    *a4 = v15;
  }

LABEL_12:

  v28 = -1;
LABEL_13:

  return v28;
}

+ (BOOL)copyItemAtURL:(id)a3 toURL:(id)a4 error:(id *)a5
{
  v29[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:a1 file:@"PLFileUtilities.m" lineNumber:431 description:{@"Invalid parameter not satisfying: %@", @"fromURL"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:a1 file:@"PLFileUtilities.m" lineNumber:432 description:{@"Invalid parameter not satisfying: %@", @"toURL"}];

LABEL_3:
  v12 = [a1 fileManager];
  v13 = [v12 copyItemAtURL:v9 toURL:v11 error:a5];
  if (v13)
  {
    v28 = *MEMORY[0x1E696A3A0];
    v29[0] = *MEMORY[0x1E696A388];
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v15 = [v11 path];
    v23 = 0;
    v16 = [v12 setAttributes:v14 ofItemAtPath:v15 error:&v23];
    v17 = v23;

    if ((v16 & 1) == 0)
    {
      v18 = PLBackendGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = [v11 path];
        *buf = 138412546;
        v25 = v19;
        v26 = 2112;
        v27 = v17;
        _os_log_impl(&dword_1AA9BD000, v18, OS_LOG_TYPE_ERROR, "Unable to assign data protection after move to %@: %@", buf, 0x16u);
      }
    }
  }

  return v13;
}

+ (BOOL)cloneFileAtPath:(id)a3 toPath:(id)a4 error:(id *)a5
{
  v23[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [a3 fileSystemRepresentation];
  v11 = [v9 fileSystemRepresentation];

  v12 = clonefile(v10, v11, 0);
  v13 = v12;
  if (a5 && v12)
  {
    v14 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A798];
    v16 = *__error();
    v22 = @"reason";
    v17 = MEMORY[0x1E696AEC0];
    v18 = __error();
    v19 = [v17 stringWithUTF8String:strerror(*v18)];
    v23[0] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    *a5 = [v14 errorWithDomain:v15 code:v16 userInfo:v20];
  }

  return v13 == 0;
}

+ (BOOL)secureMoveItemAtURL:(id)a3 toURL:(id)a4 capabilities:(id)a5 error:(id *)a6
{
  v69[1] = *MEMORY[0x1E69E9840];
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
    v47 = [MEMORY[0x1E696AAA8] currentHandler];
    [v47 handleFailureInMethod:a2 object:a1 file:@"PLFileUtilities.m" lineNumber:366 description:{@"Invalid parameter not satisfying: %@", @"fromURL"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v48 = [MEMORY[0x1E696AAA8] currentHandler];
  [v48 handleFailureInMethod:a2 object:a1 file:@"PLFileUtilities.m" lineNumber:367 description:{@"Invalid parameter not satisfying: %@", @"toURL"}];

LABEL_3:
  v49 = a1;
  v13 = [a1 fileManager];
  v50 = *MEMORY[0x1E696A3A0];
  v68 = *MEMORY[0x1E696A3A0];
  v14 = *MEMORY[0x1E696A388];
  v69[0] = *MEMORY[0x1E696A388];
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:&v68 count:1];
  v16 = [v10 path];
  v57 = 0;
  v53 = v13;
  v17 = [v13 setAttributes:v15 ofItemAtPath:v16 error:&v57];
  v18 = v57;

  if ((v17 & 1) == 0)
  {
    v19 = PLBackendGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [v10 path];
      v21 = [v11 path];
      *buf = 138412802;
      v63 = v20;
      v64 = 2112;
      v65 = v21;
      v66 = 2112;
      v67 = v18;
      _os_log_impl(&dword_1AA9BD000, v19, OS_LOG_TYPE_ERROR, "Unable to assign data protection to %@ before moving to %@: %@", buf, 0x20u);
    }
  }

  v22 = [v10 fileSystemRepresentation];
  v23 = [v11 fileSystemRepresentation];
  v24 = [v12 isSecludeRenameCapable];
  v54 = v12;
  if (([v12 isCloneCapable] & 1) == 0)
  {
    v29 = 1;
    v30 = 10;
    while (renamex_np(v22, v23, v24))
    {
      v31 = *__error();
      if (v29 > 1 && v31 != 16 || v29 > 0xE)
      {
        goto LABEL_9;
      }

      usleep(v30);
      v30 *= 2;
      ++v29;
    }

    goto LABEL_21;
  }

  if (!renamex_np(v22, v23, v24))
  {
LABEL_21:
    v28 = 0;
    LODWORD(v27) = 1;
    goto LABEL_22;
  }

LABEL_9:
  v25 = *__error();
  if (v25 != 18)
  {
    v42 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696A798];
    v60 = @"reason";
    v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:strerror(v25)];
    v61 = v40;
    v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
    v28 = [v42 errorWithDomain:v27 code:v25 userInfo:v43];

    LOBYTE(v27) = 0;
    v34 = a6;
    v35 = v53;
    goto LABEL_33;
  }

  v26 = [v49 fileManager];
  v56 = 0;
  LODWORD(v27) = [v26 moveItemAtURL:v10 toURL:v11 error:&v56];
  v28 = v56;

LABEL_22:
  if (((v17 | v27 ^ 1) & 1) == 0)
  {
    v58 = v50;
    v59 = v14;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    v37 = [v11 path];
    v55 = v18;
    v35 = v53;
    v38 = [v53 setAttributes:v36 ofItemAtPath:v37 error:&v55];
    v51 = v55;

    v39 = PLBackendGetLog();
    v40 = v39;
    if (v38)
    {
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v41 = [v11 path];
        *buf = 138412290;
        v63 = v41;
        _os_log_impl(&dword_1AA9BD000, v40, OS_LOG_TYPE_DEFAULT, "Assigned data protection after move to %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v44 = [v11 path];
      *buf = 138412546;
      v63 = v44;
      v64 = 2112;
      v18 = v51;
      v65 = v51;
      _os_log_impl(&dword_1AA9BD000, v40, OS_LOG_TYPE_ERROR, "Unable to assign data protection after move to %@: %@", buf, 0x16u);

LABEL_32:
      v34 = a6;
LABEL_33:

      if (!v34)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    }

    v18 = v51;
    goto LABEL_32;
  }

  v34 = a6;
  v35 = v53;
  if (!a6)
  {
    goto LABEL_36;
  }

LABEL_34:
  if ((v27 & 1) == 0)
  {
    v45 = v28;
    *v34 = v28;
  }

LABEL_36:

  return v27;
}

+ (BOOL)isVarMobileMediaPath:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"/var/mobile/Media"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"/private/var/mobile/Media") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"/var/mobile/Media/"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"/private/var/mobile/Media/"];
  }

  return v4;
}

+ (id)proxyLockCoordinatingFilePathForDatabaseDirectory:(id)a3 databaseName:(id)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = [v5 stringWithFormat:@".%@-conch", a4];
  v8 = [v6 stringByAppendingPathComponent:v7];

  return v8;
}

+ (id)proxyLockFilePathForDatabasePath:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:a1 file:@"PLFileUtilities.m" lineNumber:216 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  v26 = 0;
  bzero(&v31, 0x878uLL);
  v6 = [v5 stringByDeletingLastPathComponent];
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  if (![v7 fileExistsAtPath:v6 isDirectory:&v26] || v26 != 1)
  {

    goto LABEL_11;
  }

  v8 = statfs([v6 fileSystemRepresentation], &v31);

  if (v8)
  {
LABEL_11:
    v13 = PLBackendGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = __error();
      v15 = strerror(*v14);
      *buf = 138412546;
      v28 = v5;
      v29 = 2082;
      v30 = v15;
      _os_log_impl(&dword_1AA9BD000, v13, OS_LOG_TYPE_DEFAULT, "error finding volume info for proxy lock path on %@: %{public}s:", buf, 0x16u);
    }

    v16 = 0;
    goto LABEL_14;
  }

  if ((v31.f_flags & 0x1000) == 0)
  {
    pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
    if (PLIsReallyAssetsd_isAssetsd)
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __52__PLFileUtilities_proxyLockFilePathForDatabasePath___block_invoke;
      v24[3] = &__block_descriptor_48_e5_v8__0l;
      v24[4] = a2;
      v24[5] = a1;
      pl_dispatch_once(&proxyLockFilePathForDatabasePath__onceToken, v24);
      v9 = [v5 length];
      if ((v9 + [proxyLockFilePathForDatabasePath__lockPath length] - 1024) > 0xFFFFFFFFFFFFFBFELL)
      {
        v13 = [v5 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];
      }

      else
      {
        v10 = [MEMORY[0x1E695DF88] dataWithLength:32];
        CC_SHA256(-[NSObject UTF8String](v5, "UTF8String"), -[NSObject lengthOfBytesUsingEncoding:](v5, "lengthOfBytesUsingEncoding:", 4), [v10 mutableBytes]);
        v11 = [v10 base64EncodedStringWithOptions:0];
        v12 = [v5 lastPathComponent];
        v13 = [v11 stringByAppendingPathComponent:v12];
      }

      v16 = [proxyLockFilePathForDatabasePath__lockPath stringByAppendingPathComponent:v13];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5 isDirectory:1];
      v19 = [PLPhotoLibraryPathManager libraryURLFromDatabaseURL:v18];

      v20 = [[PLAssetsdClient alloc] initWithPhotoLibraryURL:v19];
      v21 = [(PLAssetsdClient *)v20 libraryClient];
      v25 = 0;
      v16 = [v21 proxyLockFileWithDatabasePath:v5 error:&v25];
      v13 = v25;

      if (!v16)
      {
        v22 = PLBackendGetLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v28 = v13;
          _os_log_impl(&dword_1AA9BD000, v22, OS_LOG_TYPE_ERROR, "Client failed to access the proxy lock file path. Error: %@", buf, 0xCu);
        }
      }
    }

LABEL_14:

    goto LABEL_15;
  }

  v16 = 0;
LABEL_15:

  return v16;
}

void __52__PLFileUtilities_proxyLockFilePathForDatabasePath___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = NSTemporaryDirectory();
  v3 = proxyLockFilePathForDatabasePath__lockPath;
  proxyLockFilePathForDatabasePath__lockPath = v2;

  pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
  if (PLIsReallyAssetsd_isAssetsd != 1)
  {
    v10 = proxyLockFilePathForDatabasePath__lockPath;
    proxyLockFilePathForDatabasePath__lockPath = 0;

    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v7 = "Unexpected process attempting to generate the  proxy lock file path";
      v8 = v6;
      v9 = 2;
      goto LABEL_9;
    }

LABEL_10:

    goto LABEL_11;
  }

  if ((_xpc_runtime_is_app_sandboxed() & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PLFileUtilities.m" lineNumber:254 description:{@"%s is always expected to be sandboxed", "assetsd"}];
  }

  v4 = [proxyLockFilePathForDatabasePath__lockPath pathComponents];
  v5 = [v4 indexOfObject:@"com.apple.assetsd"];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v19 = @"com.apple.assetsd";
      v20 = 2114;
      v21 = proxyLockFilePathForDatabasePath__lockPath;
      v7 = "assetsd does not have expected sandbox identifier %{public}@: %{public}@";
      v8 = v6;
      v9 = 22;
LABEL_9:
      _os_log_impl(&dword_1AA9BD000, v8, OS_LOG_TYPE_ERROR, v7, buf, v9);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

LABEL_11:
  v11 = [proxyLockFilePathForDatabasePath__lockPath stringByAppendingPathComponent:@"sqliteplocks"];
  v12 = proxyLockFilePathForDatabasePath__lockPath;
  proxyLockFilePathForDatabasePath__lockPath = v11;

  v16 = *MEMORY[0x1E696A370];
  v17 = &unk_1F1F90B78;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v14 = [MEMORY[0x1E696AC08] defaultManager];
  [v14 createDirectoryAtPath:proxyLockFilePathForDatabasePath__lockPath withIntermediateDirectories:1 attributes:v13 error:0];
}

+ (id)defaultSystemPhotoDataCPLDirectory
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!defaultSystemPhotoDataCPLDirectory_path)
  {
    v2 = [a1 defaultSystemPhotoDataDirectory];
    v3 = [v2 stringByAppendingPathComponent:@"CPL"];
    v4 = defaultSystemPhotoDataCPLDirectory_path;
    defaultSystemPhotoDataCPLDirectory_path = v3;

    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v6 = [v5 fileExistsAtPath:defaultSystemPhotoDataCPLDirectory_path];

    if ((v6 & 1) == 0)
    {
      v11 = *MEMORY[0x1E696A370];
      v12[0] = &unk_1F1F90B78;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      v8 = [MEMORY[0x1E696AC08] defaultManager];
      [v8 createDirectoryAtPath:defaultSystemPhotoDataCPLDirectory_path withIntermediateDirectories:1 attributes:v7 error:0];
    }
  }

  v9 = defaultSystemPhotoDataCPLDirectory_path;

  return v9;
}

@end