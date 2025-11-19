@interface QLDiskCache
+ (id)defaultLocation;
+ (void)defaultLocation;
+ (void)setupCacheAtLocationIfNecessary:(id)a3;
- (BOOL)_open;
- (BOOL)_setThumbnailData:(id)a3;
- (BOOL)discardReservedBuffer:(id)a3;
- (BOOL)doReading:(id)a3;
- (BOOL)doWriting:(id)a3;
- (BOOL)open;
- (BOOL)removeCachedThumbnailsFromUninstalledFileProvidersWithIdentifiers:(id)a3;
- (BOOL)removeCachedThumbnailsFromUninstalledFileProvidersWithRemainingFileProviderIdentifiers:(id)a3;
- (BOOL)validateReservedBuffer:(id)a3;
- (QLDiskCache)initWithPathLocation:(id)a3 cacheSize:(int64_t)a4 cacheThread:(id)a5;
- (QLDiskCacheDelegate)delegate;
- (id)_checkConsistency;
- (id)checkConsistency;
- (id)enumeratorForAllThumbnailsWithFileIdentifier:(id)a3;
- (id)enumeratorForThumbnailRequests:(id)a3;
- (id)lastResetWithDate:(id *)a3;
- (id)reserveBufferForData:(id)a3;
- (id)reserveBufferWithLength:(unint64_t)a3;
- (unint64_t)_deleteBlobArrayFromDatabase:(id)a3;
- (unint64_t)cleanup;
- (unint64_t)cleanupDeletedFiles;
- (unint64_t)freeDiskSpaceForNewThumbnails;
- (unint64_t)removeThumbnailsOlderThanDate:(id)a3;
- (void)_cleanupForceResetAtNextLaunch;
- (void)_close;
- (void)_closeWhatIsOpen;
- (void)_createDirtyLockInformDelegate:(BOOL)a3;
- (void)_discardThumbnailDataForReset:(id)a3;
- (void)_open;
- (void)_removeDirtyLock;
- (void)_resetWithReason:(id)a3;
- (void)close;
- (void)discardThumbnailDataBatchForReset:(id)a3;
- (void)forceResetAtNextLaunch;
- (void)logCacheSizeBeforeCleanup;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeFilesWithFileInfo:(id)a3;
- (void)reset;
- (void)setMetaData:(id)a3 forKey:(id)a4;
- (void)writeThumbnailDataBatch:(id)a3;
@end

@implementation QLDiskCache

- (unint64_t)cleanup
{
  [(QLDiskCache *)self logCacheSizeBeforeCleanup];
  v3 = [(QLCacheIndexDatabase *)self->_indexDatabase removeOldThumbnails];
  v4 = [(QLDiskCache *)self _deleteBlobArrayFromDatabase:v3];

  return v4;
}

- (void)logCacheSizeBeforeCleanup
{
  v11[1] = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v10 = @"QLMTCacheSizeLastCheckAbsoluteTime";
  v11[0] = &unk_2873E9618;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v4 registerDefaults:v5];

  [v4 doubleForKey:@"QLMTCacheSizeLastCheckAbsoluteTime"];
  if (Current - v6 > 86400.0)
  {
    [v4 setDouble:@"QLMTCacheSizeLastCheckAbsoluteTime" forKey:Current];
    v7 = [(QLCacheMMAPBlobDatabase *)self->_blobDatabase size]>> 20;
    v8 = +[QLTAnalyticsManager sharedManager];
    [v8 sendCacheSizeEventWithCacheSize:v7];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_removeDirtyLock
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_3(&dword_2615D3000, v3, v4, "error removing dirty file: %s", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)defaultLocation
{
  if (!defaultLocation_location)
  {
    v5 = QLGetValidCacheLocation();
    v6 = defaultLocation_location;
    defaultLocation_location = v5;

    v7 = MEMORY[0x277CDAB78];
    if (!defaultLocation_location)
    {
      v8 = *(MEMORY[0x277CDAB78] + 32);
      if (!v8)
      {
        QLTInitLogging();
        v8 = *(v7 + 32);
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        +[(QLDiskCache *)v8];
      }
    }

    v9 = *(v7 + 32);
    if (!v9)
    {
      QLTInitLogging();
      v9 = *(v7 + 32);
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(QLDiskCache *)v9 defaultLocation:v10];
    }

    [a1 setupCacheAtLocationIfNecessary:defaultLocation_location];
    [defaultLocation_location fileSystemRepresentation];
    if (rootless_check_datavault_flag() >= 1)
    {
      [defaultLocation_location fileSystemRepresentation];
      if (rootless_convert_to_datavault())
      {
        v17 = *(v7 + 32);
        if (!v17)
        {
          QLTInitLogging();
          v17 = *(v7 + 32);
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          +[(QLDiskCache *)v17];
        }
      }
    }
  }

  v2 = defaultLocation_location;

  return v2;
}

+ (void)setupCacheAtLocationIfNecessary:(id)a3
{
  v3 = a3;
  v14 = 0;
  if (v3)
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v5 = [v4 fileExistsAtPath:v3 isDirectory:&v14];

    if (!v5)
    {
      v8 = MEMORY[0x277CDAB78];
      v9 = *(MEMORY[0x277CDAB78] + 32);
      if (!v9)
      {
        QLTInitLogging();
        v9 = *(v8 + 32);
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        +[QLDiskCache setupCacheAtLocationIfNecessary:];
      }

      v10 = [MEMORY[0x277CCAA00] defaultManager];
      v13 = 0;
      v11 = [v10 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v13];
      v7 = v13;

      v12 = *(v8 + 32);
      if (v11)
      {
        if (!v12)
        {
          QLTInitLogging();
          v12 = *(v8 + 32);
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          +[QLDiskCache setupCacheAtLocationIfNecessary:];
        }
      }

      else
      {
        if (!v12)
        {
          QLTInitLogging();
          v12 = *(v8 + 32);
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          +[QLDiskCache setupCacheAtLocationIfNecessary:];
        }
      }

      goto LABEL_18;
    }

    if ((v14 & 1) == 0)
    {
      v6 = [MEMORY[0x277CCAA00] defaultManager];
      [v6 removeItemAtPath:v3 error:0];

      v7 = [MEMORY[0x277CCAA00] defaultManager];
      [v7 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:0];
LABEL_18:
    }
  }
}

- (QLDiskCache)initWithPathLocation:(id)a3 cacheSize:(int64_t)a4 cacheThread:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = [(QLDiskCache *)self init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_path, a3);
    v13 = [v9 stringByAppendingPathComponent:@"metadata"];
    metaDataFilePath = v12->_metaDataFilePath;
    v12->_metaDataFilePath = v13;

    v15 = [v9 stringByAppendingPathComponent:@"dirty"];
    dirtyFilePath = v12->_dirtyFilePath;
    v12->_dirtyFilePath = v15;

    v17 = [v9 stringByAppendingPathComponent:@"exclusive"];
    exclusivePath = v12->_exclusivePath;
    v12->_exclusivePath = v17;

    v19 = [v9 stringByAppendingPathComponent:@"forcereset"];
    resetFilePath = v12->_resetFilePath;
    v12->_resetFilePath = v19;

    v21 = [v9 stringByAppendingPathComponent:@"resetreason"];
    resetReasonPath = v12->_resetReasonPath;
    v12->_resetReasonPath = v21;

    v23 = [[QLCacheIndexDatabase alloc] initWithPath:v9];
    indexDatabase = v12->_indexDatabase;
    v12->_indexDatabase = v23;

    v25 = [QLCacheMMAPBlobDatabase alloc];
    v26 = [v9 stringByAppendingPathComponent:@"thumbnails"];
    v27 = [(QLCacheMMAPBlobDatabase *)v25 initWithPath:v26 cacheSize:a4 cacheThread:v10];
    blobDatabase = v12->_blobDatabase;
    v12->_blobDatabase = v27;

    [(QLCacheIndexDatabase *)v12->_indexDatabase addObserver:v12 forKeyPath:@"database.isCorrupted" options:3 context:0];
    v29 = MEMORY[0x277CDAB78];
    v30 = *(MEMORY[0x277CDAB78] + 32);
    if (!v30)
    {
      QLTInitLogging();
      v30 = *(v29 + 32);
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      [(QLDiskCache *)&v12->_exclusivePath initWithPathLocation:v30 cacheSize:v31 cacheThread:v32, v33, v34, v35, v36];
    }
  }

  return v12;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (self->_indexDatabase == v11 && [v10 isEqualToString:@"database.isCorrupted"])
  {
    v13 = [v12 objectForKey:*MEMORY[0x277CCA2F0]];
    if ([v13 BOOLValue])
    {
      v14 = [v12 objectForKey:*MEMORY[0x277CCA300]];
      v15 = [v14 BOOLValue];

      if ((v15 & 1) == 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained databaseCorruptionDetected];
      }
    }

    else
    {
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = QLDiskCache;
    [(QLDiskCache *)&v17 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (id)enumeratorForThumbnailRequests:(id)a3
{
  v4 = a3;
  v5 = [[QLDiskCacheQueryEnumerator alloc] initWithDiskCache:self thumbnailRequests:v4];

  return v5;
}

- (id)enumeratorForAllThumbnailsWithFileIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[QLDiskCacheAllThumbnailPerFileEnumerator alloc] initWithDiskCache:self fileIdentifier:v4];

  return v5;
}

- (BOOL)_setThumbnailData:(id)a3
{
  v75 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v73 = 0;
  if ([v4 setState:1])
  {
    v5 = [v4 fileIdentifier];
    v6 = objc_alloc([objc_opt_class() versionedFileIdentifierClass]);
    v7 = [v4 fileIdentifier];
    v8 = [v4 version];
    v9 = [v6 initWithFileIdentifier:v7 version:v8];

    v10 = [(QLCacheIndexDatabase *)self->_indexDatabase insertOrUpdateThumbnailWithVersionedFileIdentifier:v9 shouldInvalidAllThumbnailSizes:&v73 + 1 added:&v73];
    v66 = v10;
    if (HIBYTE(v73) == 1)
    {
      v11 = [(QLCacheIndexDatabase *)self->_indexDatabase removeAllThumbnailsForCacheId:v10];
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v12 = [v11 countByEnumeratingWithState:&v69 objects:v74 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v70;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v70 != v14)
            {
              objc_enumerationMutation(v11);
            }

            [(QLCacheMMAPBlobDatabase *)self->_blobDatabase deleteBlobWithInfo:*(*(&v69 + 1) + 8 * i)];
          }

          v13 = [v11 countByEnumeratingWithState:&v69 objects:v74 count:16];
        }

        while (v13);
      }
    }

    else
    {
      if (!v10)
      {
        goto LABEL_23;
      }

      indexDatabase = self->_indexDatabase;
      [v4 size];
      v21 = v20;
      v22 = [v4 iconMode];
      v23 = [v4 badgeType];
      v24 = [v4 iconVariant];
      v25 = [v4 interpolationQuality];
      v26 = [v4 externalGeneratorDataHash];
      v67 = 0;
      v68 = 0;
      LODWORD(v27) = v21;
      [(QLCacheIndexDatabase *)indexDatabase getBlobInfoForCacheId:v66 size:v22 iconMode:v23 badgeType:v24 iconVariant:v25 interpolationQuality:v26 externalGeneratorDataHash:v27 bitmapDataBlobInfo:&v68 plistBufferBlobInfo:&v67];
      v11 = v68;
      v28 = v67;
      if (v11)
      {
        [(QLCacheMMAPBlobDatabase *)self->_blobDatabase deleteBlobWithInfo:v11];
      }

      if (v28)
      {
        [(QLCacheMMAPBlobDatabase *)self->_blobDatabase deleteBlobWithInfo:v28];
      }
    }

LABEL_23:
    v29 = MEMORY[0x277CDAB78];
    v30 = *(MEMORY[0x277CDAB78] + 32);
    if (!v30)
    {
      QLTInitLogging();
      v30 = *(v29 + 32);
    }

    v65 = v9;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      [(QLDiskCache *)v30 _setThumbnailData:v4];
    }

    v31 = self->_indexDatabase;
    [v4 size];
    v33 = v32;
    v64 = [v4 iconMode];
    v34 = [v4 badgeType];
    v35 = [v4 iconVariant];
    v36 = [v4 interpolationQuality];
    v37 = [v4 bitmapFormat];
    v38 = [v4 bitmapDataToValidate];
    v39 = [v4 metadataToValidate];
    v40 = [v4 flavor];
    [v4 contentRect];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = [v4 externalGeneratorDataHash];
    LODWORD(v63) = v40;
    LODWORD(v50) = v33;
    v18 = [(QLCacheIndexDatabase *)v31 insertOrUpdateImageDataForCacheId:v66 size:v64 iconMode:v34 badgeType:v35 iconVariant:v36 interpolationQuality:v37 bitmapFormat:v50 bitmapDataBlobInfo:v42 metadataBlobInfo:v44 flavor:v46 contentRect:v48 externalGeneratorDataHash:v38 lastHitDate:v39, v63, v49, 0];

    if (v18)
    {
      v51 = [v4 bitmapDataToValidate];

      v52 = v65;
      if (v51)
      {
        v53 = [v4 bitmapDataToValidate];
        [(QLDiskCache *)self validateReservedBuffer:v53];

        [v4 setBitmapDataToValidate:0];
      }

      v54 = [v4 metadataToValidate];

      if (!v54)
      {
        goto LABEL_41;
      }

      v55 = [v4 metadataToValidate];
      [(QLDiskCache *)self validateReservedBuffer:v55];
    }

    else
    {
      v56 = MEMORY[0x277CDAB78];
      v57 = *(MEMORY[0x277CDAB78] + 32);
      v52 = v65;
      if (!v57)
      {
        QLTInitLogging();
        v57 = *(v56 + 32);
      }

      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        [QLDiskCache _setThumbnailData:];
      }

      v58 = [v4 bitmapDataToValidate];

      if (v58)
      {
        v59 = [v4 bitmapDataToValidate];
        [(QLDiskCache *)self discardReservedBuffer:v59];

        [v4 setBitmapDataToValidate:0];
      }

      v60 = [v4 metadataToValidate];

      if (!v60)
      {
        goto LABEL_41;
      }

      v55 = [v4 metadataToValidate];
      [(QLDiskCache *)self discardReservedBuffer:v55];
    }

    [v4 setMetadataToValidate:0];
LABEL_41:

    goto LABEL_42;
  }

  v16 = MEMORY[0x277CDAB78];
  v17 = *(MEMORY[0x277CDAB78] + 32);
  if (!v17)
  {
    QLTInitLogging();
    v17 = *(v16 + 32);
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [QLDiskCache _setThumbnailData:v17];
  }

  LOBYTE(v18) = 0;
LABEL_42:

  v61 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)_discardThumbnailDataForReset:(id)a3
{
  v4 = a3;
  if ([v4 setState:1])
  {
    v5 = [v4 bitmapDataToValidate];

    if (v5)
    {
      v6 = [v4 bitmapDataToValidate];
      [(QLDiskCache *)self discardReservedBuffer:v6];

      [v4 setBitmapDataToValidate:0];
    }

    v7 = [v4 metadataToValidate];

    if (v7)
    {
      v8 = [v4 metadataToValidate];
      [(QLDiskCache *)self discardReservedBuffer:v8];

      [v4 setMetadataToValidate:0];
    }
  }

  else
  {
    v9 = MEMORY[0x277CDAB78];
    v10 = *(MEMORY[0x277CDAB78] + 32);
    if (!v10)
    {
      QLTInitLogging();
      v10 = *(v9 + 32);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [QLDiskCache _setThumbnailData:v10];
    }
  }
}

- (void)_createDirtyLockInformDelegate:(BOOL)a3
{
  self->_hasDirtyLock = 1;
  if (a3)
  {
    self->_dirtyForDelegate = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained startWriting];
  }

  ++self->_writingCount;
  v5 = open([(NSString *)self->_dirtyFilePath fileSystemRepresentation], 521, 384);
  if (v5 < 0)
  {
    v6 = MEMORY[0x277CDAB78];
    v7 = *(MEMORY[0x277CDAB78] + 32);
    if (!v7)
    {
      QLTInitLogging();
      v7 = *(v6 + 32);
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [QLDiskCache _createDirtyLockInformDelegate:v7];
    }
  }

  else
  {

    close(v5);
  }
}

- (void)forceResetAtNextLaunch
{
  v2 = fopen([(NSString *)self->_resetFilePath fileSystemRepresentation], "a+");
  if (v2)
  {

    fclose(v2);
  }
}

- (void)_cleanupForceResetAtNextLaunch
{
  v2 = [(NSString *)self->_resetFilePath fileSystemRepresentation];

  unlink(v2);
}

- (BOOL)doReading:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __25__QLDiskCache_doReading___block_invoke;
  v7[3] = &unk_279ADDBA8;
  v9 = &v10;
  v7[4] = self;
  v5 = v4;
  v8 = v5;
  [(QLDiskCache *)self do:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __25__QLDiskCache_doReading___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isOpened];
  *(*(*(a1 + 48) + 8) + 24) = result;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

- (BOOL)doWriting:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v5 = MEMORY[0x277CDAB78];
  v6 = *(MEMORY[0x277CDAB78] + 32);
  if (!v6)
  {
    QLTInitLogging();
    v6 = *(v5 + 32);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [QLDiskCache doWriting:];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __25__QLDiskCache_doWriting___block_invoke;
  v10[3] = &unk_279ADDBA8;
  v12 = &v13;
  v10[4] = self;
  v7 = v4;
  v11 = v7;
  [(QLDiskCache *)self do:v10];
  v8 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v8;
}

uint64_t __25__QLDiskCache_doWriting___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CDAB78];
  v3 = *(MEMORY[0x277CDAB78] + 32);
  if (!v3)
  {
    QLTInitLogging();
    v3 = *(v2 + 32);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __25__QLDiskCache_doWriting___block_invoke_cold_1();
  }

  result = [*(a1 + 32) isOpened];
  *(*(*(a1 + 48) + 8) + 24) = result;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [*(a1 + 32) _createDirtyLockInformDelegate:1];
    v5 = [*(a1 + 32) indexDatabase];
    v6 = [v5 beginTransaction];

    if (v6)
    {
      v7 = (*(*(a1 + 40) + 16))();
      if ([*(a1 + 32) metaDataDirty])
      {
        v8 = [*(a1 + 32) metaData];
        v9 = [*(a1 + 32) metaDataFilePath];
        [v8 writeToFile:v9 atomically:1];

        [*(a1 + 32) setMetaDataDirty:0];
      }

      v10 = [*(a1 + 32) indexDatabase];
      [v10 endTransaction];

      if (v7)
      {
        v11 = [*(a1 + 32) indexDatabase];
        [v11 save];

        v12 = [*(a1 + 32) blobDatabase];
        [v12 save];
      }
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }

    return [*(a1 + 32) _removeDirtyLock];
  }

  return result;
}

- (void)writeThumbnailDataBatch:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(QLDiskCache *)self _setThumbnailData:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)discardThumbnailDataBatchForReset:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(QLDiskCache *)self _discardThumbnailDataForReset:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_deleteBlobArrayFromDatabase:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([(QLCacheMMAPBlobDatabase *)self->_blobDatabase deleteBlobWithInfo:v10])
        {
          v7 += [v10 length];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (unint64_t)removeThumbnailsOlderThanDate:(id)a3
{
  v4 = [(QLCacheIndexDatabase *)self->_indexDatabase removeThumbnailsOlderThanDate:a3];
  v5 = [(QLDiskCache *)self _deleteBlobArrayFromDatabase:v4];

  return v5;
}

- (unint64_t)freeDiskSpaceForNewThumbnails
{
  v3 = MEMORY[0x277CDAB78];
  v4 = *(MEMORY[0x277CDAB78] + 32);
  if (!v4)
  {
    QLTInitLogging();
    v4 = *(v3 + 32);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [QLDiskCache freeDiskSpaceForNewThumbnails];
  }

  v5 = [(QLCacheIndexDatabase *)self->_indexDatabase removePercentageOldestThumbnails:25];
  v6 = [(QLDiskCache *)self _deleteBlobArrayFromDatabase:v5];
  [(QLCacheMMAPBlobDatabase *)self->_blobDatabase compactFragmentation];

  return v6;
}

- (unint64_t)cleanupDeletedFiles
{
  v3 = [(QLCacheIndexDatabase *)self->_indexDatabase removeThumbnailsForDeletedFiles];
  v4 = [(QLDiskCache *)self _deleteBlobArrayFromDatabase:v3];

  return v4;
}

- (void)removeFilesWithFileInfo:(id)a3
{
  v4 = [(QLCacheIndexDatabase *)self->_indexDatabase removeFilesWithFileInfo:a3];
  [(QLDiskCache *)self _deleteBlobArrayFromDatabase:v4];
}

- (BOOL)_open
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CDAB78];
  v4 = *(MEMORY[0x277CDAB78] + 32);
  if (!v4)
  {
    QLTInitLogging();
    v4 = *(v3 + 32);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [QLDiskCache _open];
  }

  v5 = open([(NSString *)self->_exclusivePath fileSystemRepresentation], 545, 384);
  self->_exclusiveFD = v5;
  p_exclusiveFD = &self->_exclusiveFD;
  if (v5 > 0)
  {
    v7 = *(v3 + 32);
    if (!v7)
    {
      QLTInitLogging();
      v7 = *(v3 + 32);
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(QLDiskCache *)&self->_exclusivePath _open];
    }

    fcntl(self->_exclusiveFD, 2, 1);
    v8 = 0x277CBE000uLL;
    v9 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:self->_metaDataFilePath];
    metaData = self->_metaData;
    self->_metaData = v9;

    v11 = [(NSMutableDictionary *)self->_metaData objectForKeyedSubscript:@"QLCacheDebugModeMetadataKey"];
    v12 = [v11 BOOLValue];
    v13 = QLCacheInDebugMode();

    v14 = [MEMORY[0x277CCAA00] defaultManager];
    if ([v14 fileExistsAtPath:self->_dirtyFilePath])
    {
      v15 = *(v3 + 32);
      if (!v15)
      {
        QLTInitLogging();
        v15 = *(v3 + 32);
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2615D3000, v15, OS_LOG_TYPE_INFO, "dirty lock is on disk, resetting cache", buf, 2u);
      }

      v16 = @"dirty atomic write";
    }

    else
    {
      v31 = [v14 fileExistsAtPath:self->_resetFilePath];
      if ((v31 & 1) == 0 && ((v12 ^ v13) & 1) == 0)
      {
        v32 = [(QLCacheIndexDatabase *)self->_indexDatabase doesExist];
        v33 = [(QLCacheMMAPBlobDatabase *)self->_blobDatabase doesExist];
        if (v32 == v33)
        {
          if (((v32 | v33) & 1) == 0)
          {
            v48 = *(v3 + 32);
            if (!v48)
            {
              QLTInitLogging();
              v48 = *(v3 + 32);
            }

            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              [QLDiskCache _open];
            }
          }
        }

        else
        {
          v34 = *(v3 + 32);
          if (!v34)
          {
            QLTInitLogging();
            v34 = *(v3 + 32);
          }

          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            [(QLDiskCache *)&self->_indexDatabase _open];
          }

          [(QLDiskCache *)self _createDirtyLockInformDelegate:0];
          [(QLDiskCache *)self _closeWhatIsOpen];
          if (v32)
          {
            v35 = @"blob not found";
          }

          else
          {
            v35 = @"index not found";
          }

          [(QLDiskCache *)self _resetWithReason:v35];
          [(QLDiskCache *)self _removeDirtyLock];
        }

        goto LABEL_17;
      }

      v36 = *(v3 + 32);
      if (v31)
      {
        if (!v36)
        {
          QLTInitLogging();
          v36 = *(v3 + 32);
        }

        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2615D3000, v36, OS_LOG_TYPE_INFO, "marked as needing reset on previous session", buf, 2u);
        }

        v16 = @"marked as needing reset on previous session";
      }

      else
      {
        if (!v36)
        {
          QLTInitLogging();
          v36 = *(v3 + 32);
        }

        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v47 = v36;
          *buf = 67109120;
          v55 = QLCacheInDebugMode();
          _os_log_impl(&dword_2615D3000, v47, OS_LOG_TYPE_INFO, "changed debug mode to %d", buf, 8u);
        }

        v16 = @"cache debug mode changed";
      }
    }

    [(QLDiskCache *)self _closeWhatIsOpen];
    [(QLDiskCache *)self _resetWithReason:v16];
    [(QLDiskCache *)self _removeDirtyLock];
    [(QLDiskCache *)self _cleanupForceResetAtNextLaunch];
LABEL_17:
    [(QLDiskCache *)self _createDirtyLockInformDelegate:1];
    p_indexDatabase = &self->_indexDatabase;
    [(QLCacheIndexDatabase *)self->_indexDatabase open];
    p_blobDatabase = &self->_blobDatabase;
    [(QLCacheMMAPBlobDatabase *)self->_blobDatabase open];
    self->_opened = 1;
    if (![(QLCacheIndexDatabase *)self->_indexDatabase isValid]|| ![(QLCacheMMAPBlobDatabase *)*p_blobDatabase isValid])
    {
      if ([(QLCacheIndexDatabase *)*p_indexDatabase isValid])
      {
        v19 = @"valid";
      }

      else
      {
        v19 = @"invalid";
      }

      if ([(QLCacheMMAPBlobDatabase *)*p_blobDatabase isValid])
      {
        v20 = @"valid";
      }

      else
      {
        v20 = @"invalid";
      }

      NSLog(&cfstr_SomethingIsWro.isa, v19, v20);
      v21 = *(v3 + 32);
      if (!v21)
      {
        QLTInitLogging();
        v21 = *(v3 + 32);
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [(QLDiskCache *)&self->_indexDatabase _open];
      }

      [(QLDiskCache *)self _closeWhatIsOpen];
      [(QLDiskCache *)self _resetWithReason:@"index or blob is invalid"];
      [(QLCacheIndexDatabase *)self->_indexDatabase open];
      [(QLCacheMMAPBlobDatabase *)self->_blobDatabase open];
      self->_opened = 1;
      if (![(QLCacheIndexDatabase *)self->_indexDatabase isValid]|| ![(QLCacheMMAPBlobDatabase *)*p_blobDatabase isValid])
      {
        v22 = *(v3 + 32);
        if (!v22)
        {
          QLTInitLogging();
          v22 = *(v3 + 32);
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [QLDiskCache _open];
        }

        [(QLDiskCache *)self _closeWhatIsOpen];
      }
    }

    if (!self->_opened)
    {
      goto LABEL_85;
    }

    v23 = [(QLCacheIndexDatabase *)*p_indexDatabase allReservedBuffers];
    if ([(QLCacheMMAPBlobDatabase *)*p_blobDatabase deleteBlobsWithArray:v23])
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v24 = v23;
      v25 = [v24 countByEnumeratingWithState:&v49 objects:v53 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v50;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v50 != v27)
            {
              objc_enumerationMutation(v24);
            }

            [(QLCacheIndexDatabase *)*p_indexDatabase removeReservedBufferWithBlobInfo:*(*(&v49 + 1) + 8 * i)];
          }

          v26 = [v24 countByEnumeratingWithState:&v49 objects:v53 count:16];
        }

        while (v26);
      }

      v8 = 0x277CBE000;
    }

    else
    {
      NSLog(&cfstr_ProblemToFreeA.isa);
      v37 = *(v3 + 32);
      if (!v37)
      {
        QLTInitLogging();
        v37 = *(v3 + 32);
      }

      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [QLDiskCache _open];
      }

      [(QLDiskCache *)self _close];
      [(QLDiskCache *)self _resetWithReason:@"unable to clean-up reserved buffer"];
      [(QLCacheIndexDatabase *)self->_indexDatabase open];
      [(QLCacheMMAPBlobDatabase *)self->_blobDatabase open];
      self->_opened = 1;
      if (![(QLCacheIndexDatabase *)self->_indexDatabase isValid]|| ![(QLCacheMMAPBlobDatabase *)*p_blobDatabase isValid])
      {
        v38 = *(v3 + 32);
        if (!v38)
        {
          QLTInitLogging();
          v38 = *(v3 + 32);
        }

        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          [QLDiskCache _open];
        }

        [(QLDiskCache *)self _closeWhatIsOpen];
      }
    }

    if (self->_opened)
    {
      if (!self->_metaData)
      {
        v39 = [*(v8 + 2872) dictionaryWithContentsOfFile:self->_metaDataFilePath];
        v40 = self->_metaData;
        self->_metaData = v39;

        if (!self->_metaData)
        {
          v41 = objc_alloc_init(*(v8 + 2872));
          v42 = self->_metaData;
          self->_metaData = v41;
        }
      }

      v43 = [MEMORY[0x277CCABB0] numberWithBool:QLCacheInDebugMode()];
      [(QLDiskCache *)self setMetaData:v43 forKey:@"QLCacheDebugModeMetadataKey"];
    }

    if (!self->_opened)
    {
LABEL_85:
      if (*p_exclusiveFD >= 1)
      {
        if (close(*p_exclusiveFD))
        {
          v44 = *(v3 + 32);
          if (!v44)
          {
            QLTInitLogging();
            v44 = *(v3 + 32);
          }

          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            [QLDiskCache _open];
          }
        }

        else
        {
          *p_exclusiveFD = 0;
        }
      }
    }

    [(QLDiskCache *)self _removeDirtyLock];
    opened = self->_opened;

    goto LABEL_93;
  }

  *p_exclusiveFD = 0;
  v29 = *(v3 + 32);
  if (!v29)
  {
    QLTInitLogging();
    v29 = *(v3 + 32);
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    [(QLDiskCache *)v29 _open];
  }

  opened = 0;
LABEL_93:
  v45 = *MEMORY[0x277D85DE8];
  return opened;
}

- (void)_closeWhatIsOpen
{
  v3 = MEMORY[0x277CDAB78];
  v4 = *(MEMORY[0x277CDAB78] + 32);
  if (!v4)
  {
    QLTInitLogging();
    v4 = *(v3 + 32);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [QLDiskCache _closeWhatIsOpen];
  }

  [(QLCacheIndexDatabase *)self->_indexDatabase close];
  if ([(QLCacheMMAPBlobDatabase *)self->_blobDatabase isOpen])
  {
    [(QLCacheMMAPBlobDatabase *)self->_blobDatabase close];
  }

  metaData = self->_metaData;
  self->_metaData = 0;

  self->_opened = 0;
}

- (void)_close
{
  v3 = MEMORY[0x277CDAB78];
  v4 = *(MEMORY[0x277CDAB78] + 32);
  if (!v4)
  {
    QLTInitLogging();
    v4 = *(v3 + 32);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [QLDiskCache _close];
  }

  [(QLCacheMMAPBlobDatabase *)self->_blobDatabase close];
  if (![(QLCacheMMAPBlobDatabase *)self->_blobDatabase isOpen])
  {
    [(QLCacheIndexDatabase *)self->_indexDatabase close];
    metaData = self->_metaData;
    self->_metaData = 0;

    self->_opened = 0;
    exclusiveFD = self->_exclusiveFD;
    if (exclusiveFD >= 1)
    {
      close(exclusiveFD);
      self->_exclusiveFD = 0;
    }
  }
}

- (void)_resetWithReason:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CDAB78];
  v6 = *(MEMORY[0x277CDAB78] + 32);
  if (!v6)
  {
    QLTInitLogging();
    v6 = *(v5 + 32);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_2615D3000, v6, OS_LOG_TYPE_INFO, "reset of the cache", v8, 2u);
  }

  if (v4)
  {
    [v4 writeToFile:self->_resetReasonPath atomically:1 encoding:4 error:0];
  }

  else
  {
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    [v7 removeItemAtPath:self->_resetReasonPath error:0];
  }

  unlink([(NSString *)self->_metaDataFilePath fileSystemRepresentation]);
  [(QLCacheIndexDatabase *)self->_indexDatabase reset];
  [(QLCacheMMAPBlobDatabase *)self->_blobDatabase reset];
}

- (id)_checkConsistency
{
  v3 = [(QLCacheIndexDatabase *)self->_indexDatabase allBuffersIncludingReserved:1];
  v4 = [(QLCacheMMAPBlobDatabase *)self->_blobDatabase checkConsistency:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"OK";
  }

  return v6;
}

- (BOOL)open
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __19__QLDiskCache_open__block_invoke;
  v4[3] = &unk_279ADD578;
  v4[4] = self;
  v4[5] = &v5;
  [(QLDiskCache *)self do:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __19__QLDiskCache_open__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _open];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)close
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __20__QLDiskCache_close__block_invoke;
  v2[3] = &unk_279ADD0F8;
  v2[4] = self;
  [(QLDiskCache *)self do:v2];
}

uint64_t __20__QLDiskCache_close__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _createDirtyLockInformDelegate:1];
  [*(a1 + 32) _close];
  v2 = *(a1 + 32);

  return [v2 _removeDirtyLock];
}

- (void)reset
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __20__QLDiskCache_reset__block_invoke;
  v2[3] = &unk_279ADD0F8;
  v2[4] = self;
  [(QLDiskCache *)self do:v2];
}

uint64_t __20__QLDiskCache_reset__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _createDirtyLockInformDelegate:0];
  [*(a1 + 32) _resetWithReason:@"forced"];
  v2 = *(a1 + 32);

  return [v2 _removeDirtyLock];
}

- (id)checkConsistency
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__QLDiskCache_checkConsistency__block_invoke;
  v5[3] = &unk_279ADDBD0;
  v5[4] = self;
  v5[5] = &v6;
  [(QLDiskCache *)self doWriting:v5];
  v2 = v7[5];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = @"cache is closed";
  }

  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __31__QLDiskCache_checkConsistency__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _checkConsistency];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return 1;
}

- (void)setMetaData:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_metaData objectForKey:v6];
  if (v8)
  {
    if (!v7 || ([v7 isEqual:v8] & 1) == 0)
    {
      [(NSMutableDictionary *)self->_metaData setObject:v8 forKey:v6];
      self->_metaDataDirty = 1;
    }
  }

  else
  {

    if (v7)
    {
      [(NSMutableDictionary *)self->_metaData removeObjectForKey:v6];
      self->_metaDataDirty = 1;
    }
  }
}

- (id)reserveBufferWithLength:(unint64_t)a3
{
  if (a3)
  {
    p_blobDatabase = &self->_blobDatabase;
    v5 = [(QLCacheMMAPBlobDatabase *)self->_blobDatabase reserveBufferWithLength:?];
    if (v5)
    {
      [(QLCacheIndexDatabase *)self->_indexDatabase addReservedBufferWithBlobInfo:v5];
      v6 = MEMORY[0x277CDAB78];
      v7 = *(MEMORY[0x277CDAB78] + 32);
      if (!v7)
      {
        QLTInitLogging();
        v7 = *(v6 + 32);
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [(QLDiskCache *)p_blobDatabase reserveBufferWithLength:v7, v5];
      }
    }

    else
    {
      v8 = MEMORY[0x277CDAB78];
      v9 = *(MEMORY[0x277CDAB78] + 32);
      if (!v9)
      {
        QLTInitLogging();
        v9 = *(v8 + 32);
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [QLDiskCache reserveBufferWithLength:];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)reserveBufferForData:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length])
  {
    v5 = -[QLDiskCache reserveBufferWithLength:](self, "reserveBufferWithLength:", [v4 length]);
    if (v5)
    {
      memcpy(-[QLCacheMMAPBlobDatabase bufferPointedToByBlobInfo:](self->_blobDatabase, "bufferPointedToByBlobInfo:", v5), [v4 bytes], objc_msgSend(v4, "length"));
    }

    else
    {
      v6 = MEMORY[0x277CDAB78];
      v7 = *(MEMORY[0x277CDAB78] + 32);
      if (!v7)
      {
        QLTInitLogging();
        v7 = *(v6 + 32);
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = v7;
        v11 = 134217984;
        v12 = [v4 length];
        _os_log_impl(&dword_2615D3000, v8, OS_LOG_TYPE_INFO, "cannot reserve buffer %llu", &v11, 0xCu);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)validateReservedBuffer:(id)a3
{
  v4 = a3;
  if (![v4 length])
  {
LABEL_7:
    v9 = 1;
    goto LABEL_13;
  }

  if ([(QLCacheIndexDatabase *)self->_indexDatabase removeReservedBufferWithBlobInfo:v4])
  {
    blobDatabase = self->_blobDatabase;
    p_blobDatabase = &self->_blobDatabase;
    [(QLCacheMMAPBlobDatabase *)blobDatabase validateReservedBufferWithBlobInfo:v4];
    v7 = MEMORY[0x277CDAB78];
    v8 = *(MEMORY[0x277CDAB78] + 32);
    if (!v8)
    {
      QLTInitLogging();
      v8 = *(v7 + 32);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(QLDiskCache *)p_blobDatabase validateReservedBuffer:v8, v4];
    }

    goto LABEL_7;
  }

  v10 = MEMORY[0x277CDAB78];
  v11 = *(MEMORY[0x277CDAB78] + 32);
  if (!v11)
  {
    QLTInitLogging();
    v11 = *(v10 + 32);
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [QLDiskCache validateReservedBuffer:];
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (BOOL)discardReservedBuffer:(id)a3
{
  v4 = a3;
  if (![v4 length])
  {
LABEL_7:
    v9 = 1;
    goto LABEL_13;
  }

  if ([(QLCacheIndexDatabase *)self->_indexDatabase removeReservedBufferWithBlobInfo:v4])
  {
    blobDatabase = self->_blobDatabase;
    p_blobDatabase = &self->_blobDatabase;
    [(QLCacheMMAPBlobDatabase *)blobDatabase discardReservedBufferWithBlobInfo:v4];
    v7 = MEMORY[0x277CDAB78];
    v8 = *(MEMORY[0x277CDAB78] + 32);
    if (!v8)
    {
      QLTInitLogging();
      v8 = *(v7 + 32);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(QLDiskCache *)p_blobDatabase discardReservedBuffer:v8, v4];
    }

    goto LABEL_7;
  }

  v10 = MEMORY[0x277CDAB78];
  v11 = *(MEMORY[0x277CDAB78] + 32);
  if (!v11)
  {
    QLTInitLogging();
    v11 = *(v10 + 32);
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [QLDiskCache discardReservedBuffer:];
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (id)lastResetWithDate:(id *)a3
{
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:self->_resetReasonPath isDirectory:0];
  v6 = [v5 getResourceValue:a3 forKey:*MEMORY[0x277CBE7B0] error:0];
  v7 = 0;
  if (v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:self->_resetReasonPath encoding:4 error:0];
  }

  return v7;
}

- (QLDiskCacheDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)removeCachedThumbnailsFromUninstalledFileProvidersWithRemainingFileProviderIdentifiers:(id)a3
{
  v3 = self;
  v4 = [(QLCacheIndexDatabase *)self->_indexDatabase removeFilesFromUninstalledFileProvidersWithRemainingFileProviderIdentifiers:a3];
  LOBYTE(v3) = [(QLDiskCache *)v3 _deleteBlobArrayFromDatabase:v4]!= 0;

  return v3;
}

- (BOOL)removeCachedThumbnailsFromUninstalledFileProvidersWithIdentifiers:(id)a3
{
  v3 = self;
  v4 = [(QLCacheIndexDatabase *)self->_indexDatabase removeFilesFromUninstalledFileProvidersWithIdentifiers:a3];
  LOBYTE(v3) = [(QLDiskCache *)v3 _deleteBlobArrayFromDatabase:v4]!= 0;

  return v3;
}

+ (void)defaultLocation
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_3(&dword_2615D3000, v3, v4, "Failed to convert the thumbnail cache to datavault (%s)", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)setupCacheAtLocationIfNecessary:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_2615D3000, v0, v1, "Creating directory '%@'", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)setupCacheAtLocationIfNecessary:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_fault_impl(&dword_2615D3000, v0, OS_LOG_TYPE_FAULT, "Could not create %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)setupCacheAtLocationIfNecessary:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithPathLocation:(uint64_t)a3 cacheSize:(uint64_t)a4 cacheThread:(uint64_t)a5 .cold.1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_2_0(&dword_2615D3000, a2, a3, "init cache, _exclusivePath = %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_setThumbnailData:(void *)a1 .cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_9_0() fileIdentifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_11(&dword_2615D3000, v4, v5, "pending thumbnail data has been invalidated, so we don't save it to the disk cache %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_setThumbnailData:(void *)a1 .cold.2(void *a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  log = a1;
  v3 = [a2 fileIdentifier];
  v16 = [a2 bitmapFormat];
  v14 = [v16 width];
  v4 = [a2 bitmapFormat];
  v5 = [v4 height];
  v6 = [a2 bitmapDataToValidate];
  v7 = [v6 location];
  v8 = [a2 bitmapDataToValidate];
  v9 = [v8 length];
  v10 = [a2 metadataToValidate];
  v11 = [v10 location];
  v12 = [a2 metadataToValidate];
  *buf = 138413826;
  v18 = v3;
  v19 = 2048;
  v20 = v14;
  v21 = 2048;
  v22 = v5;
  v23 = 2048;
  v24 = v7;
  v25 = 2048;
  v26 = v9;
  v27 = 2048;
  v28 = v11;
  v29 = 2048;
  v30 = [v12 length];
  _os_log_debug_impl(&dword_2615D3000, log, OS_LOG_TYPE_DEBUG, "insert data %@ {%zu, %zu} thumbnail location : %llu length : %llu content rect location : %llu length : %llu", buf, 0x48u);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_createDirtyLockInformDelegate:(void *)a1 .cold.1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_3(&dword_2615D3000, v3, v4, "error opening dirty file: %s", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_open
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_3(&dword_2615D3000, v3, v4, "Disk cache failed to open: %s (i)", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)reserveBufferWithLength:(void *)a3 .cold.1(uint64_t *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a2;
  [OUTLINED_FUNCTION_6_1() bufferPointedToByBlobInfo:a3];
  [OUTLINED_FUNCTION_9_0() location];
  [a3 length];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_7_1(&dword_2615D3000, v7, v8, "buffer reserved, pointer: %p location: %lld length: %lld", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)validateReservedBuffer:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)validateReservedBuffer:(void *)a3 .cold.2(uint64_t *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a2;
  [OUTLINED_FUNCTION_6_1() bufferPointedToByBlobInfo:a3];
  [OUTLINED_FUNCTION_9_0() location];
  [a3 length];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_7_1(&dword_2615D3000, v7, v8, "buffer validated, pointer: %p location: %lld length: %lld", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)discardReservedBuffer:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)discardReservedBuffer:(void *)a3 .cold.2(uint64_t *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a2;
  [OUTLINED_FUNCTION_6_1() bufferPointedToByBlobInfo:a3];
  [OUTLINED_FUNCTION_9_0() location];
  [a3 length];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_7_1(&dword_2615D3000, v7, v8, "buffer discarded, pointer: %p location: %lld length: %lld", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

@end