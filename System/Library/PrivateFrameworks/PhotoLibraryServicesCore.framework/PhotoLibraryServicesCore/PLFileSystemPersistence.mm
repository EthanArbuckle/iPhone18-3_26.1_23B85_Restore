@interface PLFileSystemPersistence
+ (id)filesystemPersistenceBatchItemForFileAtURL:(id)a3;
+ (id)persistedAttributesForFileAtURL:(id)a3 exists:(BOOL *)a4 includeUnknownAttributes:(BOOL)a5;
+ (id)persistenceKeyTypes;
+ (id)sharedInstance;
+ (void)clearAllAttributesForFileAtUrl:(id)a3;
+ (void)performBlockOnWriterQueue:(id)a3;
+ (void)persistData:(id)a3 forKey:(id)a4 fileURL:(id)a5;
+ (void)persistMetadata:(id)a3 fileURL:(id)a4;
+ (void)persistString:(id)a3 forKey:(id)a4 fileURL:(id)a5;
+ (void)persistUInt16:(unsigned __int16)a3 forKey:(id)a4 fileURL:(id)a5;
+ (void)persistUUIDString:(id)a3 forKey:(id)a4 fileURL:(id)a5;
- (PLFileSystemPersistence)init;
- (void)_backgroundWriteData:(id)a3 toFileAtURL:(id)a4;
- (void)_performOnWriterQueueWithIdentifier:(const char *)a3 block:(id)a4;
@end

@implementation PLFileSystemPersistence

- (void)_performOnWriterQueueWithIdentifier:(const char *)a3 block:(id)a4
{
  v6 = a4;
  v7 = [PLXPCTransaction transaction:a3];
  writerQueue = self->_writerQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__PLFileSystemPersistence__performOnWriterQueueWithIdentifier_block___block_invoke;
  v11[3] = &unk_1E7932AB8;
  v12 = v7;
  v13 = v6;
  v9 = v7;
  v10 = v6;
  pl_dispatch_async(writerQueue, v11);
}

uint64_t __69__PLFileSystemPersistence__performOnWriterQueueWithIdentifier_block___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 stillAlive];
}

- (void)_backgroundWriteData:(id)a3 toFileAtURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__PLFileSystemPersistence__backgroundWriteData_toFileAtURL___block_invoke;
  v10[3] = &unk_1E7932A28;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(PLFileSystemPersistence *)self _performOnWriterQueueWithIdentifier:"[PLFileSystemPersistence _backgroundWriteData:toFileAtURL:]" block:v10];
}

void __60__PLFileSystemPersistence__backgroundWriteData_toFileAtURL___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v8 = 0;
  v4 = [v2 writeToURL:v3 options:1073741825 error:&v8];
  v5 = v8;
  if ((v4 & 1) == 0)
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 40) path];
      *buf = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_1AA9BD000, v6, OS_LOG_TYPE_ERROR, "Failed to persist to %@: %@", buf, 0x16u);
    }
  }
}

- (PLFileSystemPersistence)init
{
  v8.receiver = self;
  v8.super_class = PLFileSystemPersistence;
  v2 = [(PLFileSystemPersistence *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.assetsd.PLFileSystemPersistence.writer", 0);
    writerQueue = v2->_writerQueue;
    v2->_writerQueue = v3;

    v5 = v2->_writerQueue;
    v6 = dispatch_get_global_queue(-32768, 0);
    dispatch_set_target_queue(v5, v6);
  }

  return v2;
}

+ (void)performBlockOnWriterQueue:(id)a3
{
  v4 = a3;
  pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
  if ((PLIsReallyAssetsd_isAssetsd & 1) != 0 || (__PLIsAssetsdProxyService & 1) != 0 || (pl_dispatch_once(&PLIsInternalTool_didCheckReadOnly, &__block_literal_global_134_3958), PLIsInternalTool_isInternalTool == 1))
  {
    v5 = [a1 sharedInstance];
    [v5 _performOnWriterQueueWithIdentifier:"+[PLFileSystemPersistence performBlockOnWriterQueue:]" block:v4];
  }

  else
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_ERROR, "Unsupported client call to performBlockOnWriterQueue:", v6, 2u);
    }
  }
}

+ (void)persistMetadata:(id)a3 fileURL:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
  if (PLIsReallyAssetsd_isAssetsd & 1) != 0 || (__PLIsAssetsdProxyService & 1) != 0 || (pl_dispatch_once(&PLIsInternalTool_didCheckReadOnly, &__block_literal_global_134_3958), (PLIsInternalTool_isInternalTool) || PFProcessIsLaunchedToExecuteTests())
  {
    v8 = [a1 sharedInstance];
    [v8 _backgroundWriteData:v6 toFileAtURL:v7];
  }

  else
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v7 path];
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_1AA9BD000, v8, OS_LOG_TYPE_ERROR, "Unsupported client call to persistMetadata:fileURL: with path %{public}@", &v10, 0xCu);
    }
  }
}

+ (void)persistString:(id)a3 forKey:(id)a4 fileURL:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 dataUsingEncoding:4];
  [a1 persistData:v10 forKey:v9 fileURL:v8];
}

+ (void)persistUInt16:(unsigned __int16)a3 forKey:(id)a4 fileURL:(id)a5
{
  v11 = a3;
  v7 = MEMORY[0x1E695DEF0];
  v8 = a5;
  v9 = a4;
  v10 = [v7 dataWithBytes:&v11 length:2];
  [a1 persistData:v10 forKey:v9 fileURL:v8];
}

+ (void)persistUUIDString:(id)a3 forKey:(id)a4 fileURL:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = PLUUIDDataFromString(a3);
  [a1 persistData:v10 forKey:v9 fileURL:v8];
}

+ (void)clearAllAttributesForFileAtUrl:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  if (!v3)
  {
    goto LABEL_22;
  }

  v5 = [v3 path];
  v6 = [v5 fileSystemRepresentation];

  v7 = open(v6, 0x200000);
  if ((v7 & 0x80000000) == 0)
  {
    v8 = v7;
    v9 = flistxattr(v7, 0, 0, 0);
    if (v9 < 0)
    {
      v25 = PLBackendGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = [v3 path];
        v27 = __error();
        v28 = strerror(*v27);
        *buf = 138412546;
        v30 = v26;
        v31 = 2080;
        v32 = v28;
        _os_log_impl(&dword_1AA9BD000, v25, OS_LOG_TYPE_ERROR, "Unable to get xattr for '%@' (%s).", buf, 0x16u);
      }
    }

    else
    {
      v10 = v9;
      if (v9)
      {
        v11 = [MEMORY[0x1E695DF88] dataWithLength:v9];
        if (flistxattr(v8, [v11 mutableBytes], objc_msgSend(v11, "length"), 0) == v10)
        {
          v12 = 0;
          do
          {
            v13 = [v11 bytes];
            v14 = (v13 + v12);
            v15 = strnlen((v13 + v12), v10 - v12);
            if (!v15)
            {
              break;
            }

            v16 = v15;
            if (!strncmp(v14, "com.apple.assetsd", 0x11uLL) && fremovexattr(v8, v14, 0) < 0)
            {
              v17 = PLBackendGetLog();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                v18 = [v3 path];
                v19 = __error();
                v20 = strerror(*v19);
                *buf = 136315650;
                v30 = v14;
                v31 = 2112;
                v32 = v18;
                v33 = 2080;
                v34 = v20;
                _os_log_impl(&dword_1AA9BD000, v17, OS_LOG_TYPE_ERROR, "Unable to remove xattr %s for '%@' (%s).", buf, 0x20u);
              }
            }

            v12 += v16 + 1;
          }

          while (v12 < v10);
        }

        close(v8);

        goto LABEL_22;
      }
    }

    close(v8);
    goto LABEL_22;
  }

  v21 = PLBackendGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = [v3 path];
    v23 = __error();
    v24 = strerror(*v23);
    *buf = 138412546;
    v30 = v22;
    v31 = 2080;
    v32 = v24;
    _os_log_impl(&dword_1AA9BD000, v21, OS_LOG_TYPE_ERROR, "Unable to open file '%@' to retrieve extended attributes (%s).", buf, 0x16u);
  }

LABEL_22:
  objc_autoreleasePoolPop(v4);
}

+ (id)persistedAttributesForFileAtURL:(id)a3 exists:(BOOL *)a4 includeUnknownAttributes:(BOOL)a5
{
  v5 = a5;
  v55 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  if (!v7)
  {
LABEL_13:
    if (a4)
    {
      *a4 = 0;
    }

    goto LABEL_20;
  }

  v9 = [v7 path];
  v10 = [v9 fileSystemRepresentation];

  v11 = open(v10, 0x200000);
  if (v11 < 0)
  {
    v17 = PLBackendGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [v7 path];
      v19 = __error();
      v20 = strerror(*v19);
      *buf = 138412546;
      v50 = v18;
      v51 = 2080;
      v52 = v20;
      _os_log_impl(&dword_1AA9BD000, v17, OS_LOG_TYPE_ERROR, "Unable to open file '%@' to retrieve extended attributes (%s).", buf, 0x16u);
    }

    goto LABEL_13;
  }

  v12 = v11;
  if (a4)
  {
    *a4 = 1;
  }

  v13 = flistxattr(v11, 0, 0, 0);
  if (v13 < 0)
  {
    v21 = PLBackendGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [v7 path];
      v23 = __error();
      v24 = strerror(*v23);
      *buf = 138412546;
      v50 = v22;
      v51 = 2080;
      v52 = v24;
      _os_log_impl(&dword_1AA9BD000, v21, OS_LOG_TYPE_ERROR, "Unable to get xattr for '%@' (%s).", buf, 0x16u);
    }

    goto LABEL_18;
  }

  v14 = v13;
  if (!v13)
  {
LABEL_18:
    close(v12);
LABEL_20:
    objc_autoreleasePoolPop(v8);
    v25 = 0;
    goto LABEL_21;
  }

  v15 = [MEMORY[0x1E695DF88] dataWithLength:v13];
  if (flistxattr(v12, [v15 mutableBytes], objc_msgSend(v15, "length"), 0) != v14)
  {
    close(v12);

    goto LABEL_20;
  }

  v47 = v12;
  v45 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:20];
  context = v8;
  v43 = v7;
  v41 = v10;
  if (v5)
  {
    v44 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:20];
  }

  else
  {
    v44 = 0;
  }

  v27 = 0;
  *&v16 = 136315650;
  v40 = v16;
  v48 = v5;
  v46 = v15;
  do
  {
    v28 = [v15 bytes];
    v29 = (v28 + v27);
    v30 = strnlen((v28 + v27), v14 - v27);
    if (!v30)
    {
      break;
    }

    v31 = v30;
    v32 = strncmp(v29, "com.apple.assetsd", 0x11uLL);
    if (!v32 || v5)
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v29, v40}];
      if (v33)
      {
        v34 = fgetxattr(v12, v29, 0, 0, 0, 0);
        if (v34 < 0)
        {
          v36 = PLBackendGetLog();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v38 = __error();
            v39 = strerror(*v38);
            *buf = v40;
            v50 = v41;
            v51 = 2080;
            v52 = v29;
            v53 = 2080;
            v54 = v39;
            _os_log_impl(&dword_1AA9BD000, v36, OS_LOG_TYPE_DEFAULT, "unexpected issue getting xttr length for %s %s: %s", buf, 0x20u);
          }

          v5 = v48;
        }

        else
        {
          v35 = v34;
          v36 = [MEMORY[0x1E695DF88] dataWithLength:v34];
          if (v35 == fgetxattr(v12, v29, [v36 mutableBytes], [v36 length], 0, 0))
          {
            if (v32)
            {
              v37 = v44;
            }

            else
            {
              v37 = v45;
            }

            [v37 setObject:v36 forKey:v33];
          }

          v12 = v47;
          v5 = v48;
          v15 = v46;
        }
      }
    }

    v27 += v31 + 1;
  }

  while (v27 < v14);
  v25 = [[PLFileSystemPersistenceAttributes alloc] initWithAttributes:v45 unknownAttributes:v44];
  close(v12);

  objc_autoreleasePoolPop(context);
  v7 = v43;
LABEL_21:

  return v25;
}

+ (void)persistData:(id)a3 forKey:(id)a4 fileURL:(id)a5
{
  if (a5)
  {
    v7 = a5;
    v8 = a4;
    v9 = a3;
    v10 = [[PLFileSystemPersistenceBatchItem alloc] initWithFileURL:v7];

    [(PLFileSystemPersistenceBatchItem *)v10 setData:v9 forKey:v8];
    [(PLFileSystemPersistenceBatchItem *)v10 persist];
  }
}

+ (id)filesystemPersistenceBatchItemForFileAtURL:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [[PLFileSystemPersistenceBatchItem alloc] initWithFileURL:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)sharedInstance
{
  pl_dispatch_once(&sharedInstance_onceToken_8888, &__block_literal_global_8889);
  v2 = sharedInstance_myInstance;

  return v2;
}

uint64_t __41__PLFileSystemPersistence_sharedInstance__block_invoke()
{
  sharedInstance_myInstance = objc_alloc_init(PLFileSystemPersistence);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)persistenceKeyTypes
{
  v5[44] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.assetsd.UUID";
  v4[1] = @"com.apple.assetsd.assetType";
  v5[0] = &unk_1F1F90F80;
  v5[1] = &unk_1F1F90F98;
  v4[2] = @"com.apple.assetsd.avalanche.UUID";
  v4[3] = @"com.apple.assetsd.avalanche.type";
  v5[2] = &unk_1F1F90F80;
  v5[3] = &unk_1F1F90F98;
  v4[4] = @"com.apple.assetsd.hidden";
  v4[5] = @"com.apple.assetsd.favorite";
  v5[4] = &unk_1F1F90F98;
  v5[5] = &unk_1F1F90F98;
  v4[6] = @"com.apple.assetsd.trashed";
  v4[7] = @"com.apple.assetsd.deferredProcessing";
  v5[6] = &unk_1F1F90F98;
  v5[7] = &unk_1F1F90F98;
  v4[8] = @"com.apple.assetsd.customCreationDate";
  v4[9] = @"com.apple.assetsd.customLocation";
  v5[8] = &unk_1F1F90FB0;
  v5[9] = &unk_1F1F90FC8;
  v4[10] = @"com.apple.assetsd.addedDate";
  v4[11] = @"com.apple.assetsd.cloudAsset.UUID";
  v5[10] = &unk_1F1F90FB0;
  v5[11] = &unk_1F1F90FE0;
  v4[12] = @"com.apple.assetsd.creatorBundleID";
  v4[13] = @"com.apple.assetsd.originalAssetUUID";
  v5[12] = &unk_1F1F90FE0;
  v5[13] = &unk_1F1F90F80;
  v4[14] = @"com.apple.assetsd.publicGlobalUUID";
  v4[15] = @"com.apple.assetsd.title";
  v5[14] = &unk_1F1F90FE0;
  v5[15] = &unk_1F1F90FE0;
  v4[16] = @"com.apple.assetsd.accessibilityDescription";
  v4[17] = @"com.apple.assetsd.timeZoneName";
  v5[16] = &unk_1F1F90FE0;
  v5[17] = &unk_1F1F90FE0;
  v4[18] = @"com.apple.assetsd.timeZoneOffset";
  v4[19] = @"com.apple.assetsd.description";
  v5[18] = &unk_1F1F90FF8;
  v5[19] = &unk_1F1F90FE0;
  v4[20] = @"com.apple.assetsd.originalFilename";
  v4[21] = @"com.apple.assetsd.placeAnnotationData";
  v5[20] = &unk_1F1F90FE0;
  v5[21] = &unk_1F1F90FB0;
  v4[22] = @"com.apple.assetsd.importedBy";
  v4[23] = @"com.apple.assetsd.sceneAnalysisIsFromPreivew";
  v5[22] = &unk_1F1F90F98;
  v5[23] = &unk_1F1F90F98;
  v4[24] = @"com.apple.assetsd.viewPresentation";
  v4[25] = @"com.apple.assetsd.mediaGroupUUID";
  v5[24] = &unk_1F1F90F98;
  v5[25] = &unk_1F1F90FE0;
  v4[26] = @"com.apple.assetsd.socGroupIdentifier";
  v4[27] = @"com.apple.assetsd.extraDurationData";
  v5[26] = &unk_1F1F90FE0;
  v5[27] = &unk_1F1F90FC8;
  v4[28] = @"com.apple.assetsd.videoComplementVisibility";
  v4[29] = @"com.apple.assetsd.syndicationIdentifier";
  v5[28] = &unk_1F1F90F98;
  v5[29] = &unk_1F1F90FE0;
  v4[30] = @"com.apple.assetsd.syndicationHistory";
  v4[31] = @"com.apple.assetsd.libraryScopeShareState";
  v5[30] = &unk_1F1F90F98;
  v5[31] = &unk_1F1F91010;
  v4[32] = @"com.apple.assetsd.libraryScopeAssetContributorsToUpdate";
  v4[33] = @"com.apple.assetsd.currentSleetCast";
  v5[32] = &unk_1F1F90FC8;
  v5[33] = &unk_1F1F90F98;
  v4[34] = @"com.apple.assetsd.dbRebuildUuid";
  v4[35] = @"com.apple.assetsd.dbRebuildInProgress";
  v5[34] = &unk_1F1F90FE0;
  v5[35] = &unk_1F1F90F98;
  v4[36] = @"com.apple.assetsd.inProgress.publishable";
  v4[37] = @"com.apple.assetsd.inProgress.destinationPath";
  v5[36] = &unk_1F1F90F98;
  v5[37] = &unk_1F1F90FE0;
  v4[38] = @"com.apple.assetsd.inProgress.cameraAdjustmentsData";
  v4[39] = @"com.apple.assetsd.inProgress.filteredPreviewImagePath";
  v5[38] = &unk_1F1F90FE0;
  v5[39] = &unk_1F1F90FE0;
  v4[40] = @"com.apple.assetsd.inProgress.semanticDevelopment";
  v4[41] = @"com.apple.assetsd.cloudJobRecoveryCount";
  v5[40] = &unk_1F1F90FF8;
  v5[41] = &unk_1F1F90F98;
  v4[42] = @"com.apple.assetsd.resourceType";
  v4[43] = @"com.apple.assetsd.cloudAsset.placeholderKind";
  v5[42] = &unk_1F1F90F98;
  v5[43] = &unk_1F1F90F98;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:44];

  return v2;
}

@end