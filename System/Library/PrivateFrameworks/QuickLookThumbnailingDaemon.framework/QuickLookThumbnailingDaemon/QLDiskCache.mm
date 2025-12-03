@interface QLDiskCache
+ (id)defaultLocation;
+ (void)defaultLocation;
+ (void)setupCacheAtLocationIfNecessary:(id)necessary;
- (BOOL)_open;
- (BOOL)_setThumbnailData:(id)data;
- (BOOL)discardReservedBuffer:(id)buffer;
- (BOOL)doReading:(id)reading;
- (BOOL)doWriting:(id)writing;
- (BOOL)open;
- (BOOL)removeCachedThumbnailsFromUninstalledFileProvidersWithIdentifiers:(id)identifiers;
- (BOOL)removeCachedThumbnailsFromUninstalledFileProvidersWithRemainingFileProviderIdentifiers:(id)identifiers;
- (BOOL)validateReservedBuffer:(id)buffer;
- (QLDiskCache)initWithPathLocation:(id)location cacheSize:(int64_t)size cacheThread:(id)thread;
- (QLDiskCacheDelegate)delegate;
- (id)_checkConsistency;
- (id)checkConsistency;
- (id)enumeratorForAllThumbnailsWithFileIdentifier:(id)identifier;
- (id)enumeratorForThumbnailRequests:(id)requests;
- (id)lastResetWithDate:(id *)date;
- (id)reserveBufferForData:(id)data;
- (id)reserveBufferWithLength:(unint64_t)length;
- (unint64_t)_deleteBlobArrayFromDatabase:(id)database;
- (unint64_t)cleanup;
- (unint64_t)cleanupDeletedFiles;
- (unint64_t)freeDiskSpaceForNewThumbnails;
- (unint64_t)removeThumbnailsOlderThanDate:(id)date;
- (void)_cleanupForceResetAtNextLaunch;
- (void)_close;
- (void)_closeWhatIsOpen;
- (void)_createDirtyLockInformDelegate:(BOOL)delegate;
- (void)_discardThumbnailDataForReset:(id)reset;
- (void)_open;
- (void)_removeDirtyLock;
- (void)_resetWithReason:(id)reason;
- (void)close;
- (void)discardThumbnailDataBatchForReset:(id)reset;
- (void)forceResetAtNextLaunch;
- (void)logCacheSizeBeforeCleanup;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeFilesWithFileInfo:(id)info;
- (void)reset;
- (void)setMetaData:(id)data forKey:(id)key;
- (void)writeThumbnailDataBatch:(id)batch;
@end

@implementation QLDiskCache

- (unint64_t)cleanup
{
  [(QLDiskCache *)self logCacheSizeBeforeCleanup];
  removeOldThumbnails = [(QLCacheIndexDatabase *)self->_indexDatabase removeOldThumbnails];
  v4 = [(QLDiskCache *)self _deleteBlobArrayFromDatabase:removeOldThumbnails];

  return v4;
}

- (void)logCacheSizeBeforeCleanup
{
  v11[1] = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v10 = @"QLMTCacheSizeLastCheckAbsoluteTime";
  v11[0] = &unk_2873E9618;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [standardUserDefaults registerDefaults:v5];

  [standardUserDefaults doubleForKey:@"QLMTCacheSizeLastCheckAbsoluteTime"];
  if (Current - v6 > 86400.0)
  {
    [standardUserDefaults setDouble:@"QLMTCacheSizeLastCheckAbsoluteTime" forKey:Current];
    v7 = [(QLCacheMMAPBlobDatabase *)self->_blobDatabase size]>> 20;
    v8 = +[QLTAnalyticsManager sharedManager];
    [v8 sendCacheSizeEventWithCacheSize:v7];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_removeDirtyLock
{
  v11 = *MEMORY[0x277D85DE8];
  selfCopy = self;
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

    [self setupCacheAtLocationIfNecessary:defaultLocation_location];
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

+ (void)setupCacheAtLocationIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v14 = 0;
  if (necessaryCopy)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v5 = [defaultManager fileExistsAtPath:necessaryCopy isDirectory:&v14];

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

      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v13 = 0;
      v11 = [defaultManager2 createDirectoryAtPath:necessaryCopy withIntermediateDirectories:1 attributes:0 error:&v13];
      defaultManager4 = v13;

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
      defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager3 removeItemAtPath:necessaryCopy error:0];

      defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager4 createDirectoryAtPath:necessaryCopy withIntermediateDirectories:1 attributes:0 error:0];
LABEL_18:
    }
  }
}

- (QLDiskCache)initWithPathLocation:(id)location cacheSize:(int64_t)size cacheThread:(id)thread
{
  locationCopy = location;
  threadCopy = thread;
  v11 = [(QLDiskCache *)self init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_path, location);
    v13 = [locationCopy stringByAppendingPathComponent:@"metadata"];
    metaDataFilePath = v12->_metaDataFilePath;
    v12->_metaDataFilePath = v13;

    v15 = [locationCopy stringByAppendingPathComponent:@"dirty"];
    dirtyFilePath = v12->_dirtyFilePath;
    v12->_dirtyFilePath = v15;

    v17 = [locationCopy stringByAppendingPathComponent:@"exclusive"];
    exclusivePath = v12->_exclusivePath;
    v12->_exclusivePath = v17;

    v19 = [locationCopy stringByAppendingPathComponent:@"forcereset"];
    resetFilePath = v12->_resetFilePath;
    v12->_resetFilePath = v19;

    v21 = [locationCopy stringByAppendingPathComponent:@"resetreason"];
    resetReasonPath = v12->_resetReasonPath;
    v12->_resetReasonPath = v21;

    v23 = [[QLCacheIndexDatabase alloc] initWithPath:locationCopy];
    indexDatabase = v12->_indexDatabase;
    v12->_indexDatabase = v23;

    v25 = [QLCacheMMAPBlobDatabase alloc];
    v26 = [locationCopy stringByAppendingPathComponent:@"thumbnails"];
    v27 = [(QLCacheMMAPBlobDatabase *)v25 initWithPath:v26 cacheSize:size cacheThread:threadCopy];
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (self->_indexDatabase == objectCopy && [pathCopy isEqualToString:@"database.isCorrupted"])
  {
    v13 = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
    if ([v13 BOOLValue])
    {
      v14 = [changeCopy objectForKey:*MEMORY[0x277CCA300]];
      bOOLValue = [v14 BOOLValue];

      if ((bOOLValue & 1) == 0)
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
    [(QLDiskCache *)&v17 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (id)enumeratorForThumbnailRequests:(id)requests
{
  requestsCopy = requests;
  v5 = [[QLDiskCacheQueryEnumerator alloc] initWithDiskCache:self thumbnailRequests:requestsCopy];

  return v5;
}

- (id)enumeratorForAllThumbnailsWithFileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[QLDiskCacheAllThumbnailPerFileEnumerator alloc] initWithDiskCache:self fileIdentifier:identifierCopy];

  return v5;
}

- (BOOL)_setThumbnailData:(id)data
{
  v75 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v73 = 0;
  if ([dataCopy setState:1])
  {
    fileIdentifier = [dataCopy fileIdentifier];
    v6 = objc_alloc([objc_opt_class() versionedFileIdentifierClass]);
    fileIdentifier2 = [dataCopy fileIdentifier];
    version = [dataCopy version];
    v9 = [v6 initWithFileIdentifier:fileIdentifier2 version:version];

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
      [dataCopy size];
      v21 = v20;
      iconMode = [dataCopy iconMode];
      badgeType = [dataCopy badgeType];
      iconVariant = [dataCopy iconVariant];
      interpolationQuality = [dataCopy interpolationQuality];
      externalGeneratorDataHash = [dataCopy externalGeneratorDataHash];
      v67 = 0;
      v68 = 0;
      LODWORD(v27) = v21;
      [(QLCacheIndexDatabase *)indexDatabase getBlobInfoForCacheId:v66 size:iconMode iconMode:badgeType badgeType:iconVariant iconVariant:interpolationQuality interpolationQuality:externalGeneratorDataHash externalGeneratorDataHash:v27 bitmapDataBlobInfo:&v68 plistBufferBlobInfo:&v67];
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
      [(QLDiskCache *)v30 _setThumbnailData:dataCopy];
    }

    v31 = self->_indexDatabase;
    [dataCopy size];
    v33 = v32;
    iconMode2 = [dataCopy iconMode];
    badgeType2 = [dataCopy badgeType];
    iconVariant2 = [dataCopy iconVariant];
    interpolationQuality2 = [dataCopy interpolationQuality];
    bitmapFormat = [dataCopy bitmapFormat];
    bitmapDataToValidate = [dataCopy bitmapDataToValidate];
    metadataToValidate = [dataCopy metadataToValidate];
    flavor = [dataCopy flavor];
    [dataCopy contentRect];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    externalGeneratorDataHash2 = [dataCopy externalGeneratorDataHash];
    LODWORD(v63) = flavor;
    LODWORD(v50) = v33;
    v18 = [(QLCacheIndexDatabase *)v31 insertOrUpdateImageDataForCacheId:v66 size:iconMode2 iconMode:badgeType2 badgeType:iconVariant2 iconVariant:interpolationQuality2 interpolationQuality:bitmapFormat bitmapFormat:v50 bitmapDataBlobInfo:v42 metadataBlobInfo:v44 flavor:v46 contentRect:v48 externalGeneratorDataHash:bitmapDataToValidate lastHitDate:metadataToValidate, v63, externalGeneratorDataHash2, 0];

    if (v18)
    {
      bitmapDataToValidate2 = [dataCopy bitmapDataToValidate];

      v52 = v65;
      if (bitmapDataToValidate2)
      {
        bitmapDataToValidate3 = [dataCopy bitmapDataToValidate];
        [(QLDiskCache *)self validateReservedBuffer:bitmapDataToValidate3];

        [dataCopy setBitmapDataToValidate:0];
      }

      metadataToValidate2 = [dataCopy metadataToValidate];

      if (!metadataToValidate2)
      {
        goto LABEL_41;
      }

      metadataToValidate3 = [dataCopy metadataToValidate];
      [(QLDiskCache *)self validateReservedBuffer:metadataToValidate3];
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

      bitmapDataToValidate4 = [dataCopy bitmapDataToValidate];

      if (bitmapDataToValidate4)
      {
        bitmapDataToValidate5 = [dataCopy bitmapDataToValidate];
        [(QLDiskCache *)self discardReservedBuffer:bitmapDataToValidate5];

        [dataCopy setBitmapDataToValidate:0];
      }

      metadataToValidate4 = [dataCopy metadataToValidate];

      if (!metadataToValidate4)
      {
        goto LABEL_41;
      }

      metadataToValidate3 = [dataCopy metadataToValidate];
      [(QLDiskCache *)self discardReservedBuffer:metadataToValidate3];
    }

    [dataCopy setMetadataToValidate:0];
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

- (void)_discardThumbnailDataForReset:(id)reset
{
  resetCopy = reset;
  if ([resetCopy setState:1])
  {
    bitmapDataToValidate = [resetCopy bitmapDataToValidate];

    if (bitmapDataToValidate)
    {
      bitmapDataToValidate2 = [resetCopy bitmapDataToValidate];
      [(QLDiskCache *)self discardReservedBuffer:bitmapDataToValidate2];

      [resetCopy setBitmapDataToValidate:0];
    }

    metadataToValidate = [resetCopy metadataToValidate];

    if (metadataToValidate)
    {
      metadataToValidate2 = [resetCopy metadataToValidate];
      [(QLDiskCache *)self discardReservedBuffer:metadataToValidate2];

      [resetCopy setMetadataToValidate:0];
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

- (void)_createDirtyLockInformDelegate:(BOOL)delegate
{
  self->_hasDirtyLock = 1;
  if (delegate)
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
  fileSystemRepresentation = [(NSString *)self->_resetFilePath fileSystemRepresentation];

  unlink(fileSystemRepresentation);
}

- (BOOL)doReading:(id)reading
{
  readingCopy = reading;
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
  v5 = readingCopy;
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

- (BOOL)doWriting:(id)writing
{
  writingCopy = writing;
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
  v7 = writingCopy;
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

- (void)writeThumbnailDataBatch:(id)batch
{
  v15 = *MEMORY[0x277D85DE8];
  batchCopy = batch;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [batchCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(batchCopy);
        }

        [(QLDiskCache *)self _setThumbnailData:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [batchCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)discardThumbnailDataBatchForReset:(id)reset
{
  v15 = *MEMORY[0x277D85DE8];
  resetCopy = reset;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [resetCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(resetCopy);
        }

        [(QLDiskCache *)self _discardThumbnailDataForReset:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [resetCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_deleteBlobArrayFromDatabase:(id)database
{
  v18 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [databaseCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(databaseCopy);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([(QLCacheMMAPBlobDatabase *)self->_blobDatabase deleteBlobWithInfo:v10])
        {
          v7 += [v10 length];
        }
      }

      v6 = [databaseCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (unint64_t)removeThumbnailsOlderThanDate:(id)date
{
  v4 = [(QLCacheIndexDatabase *)self->_indexDatabase removeThumbnailsOlderThanDate:date];
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
  removeThumbnailsForDeletedFiles = [(QLCacheIndexDatabase *)self->_indexDatabase removeThumbnailsForDeletedFiles];
  v4 = [(QLDiskCache *)self _deleteBlobArrayFromDatabase:removeThumbnailsForDeletedFiles];

  return v4;
}

- (void)removeFilesWithFileInfo:(id)info
{
  v4 = [(QLCacheIndexDatabase *)self->_indexDatabase removeFilesWithFileInfo:info];
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
    bOOLValue = [v11 BOOLValue];
    v13 = QLCacheInDebugMode();

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if ([defaultManager fileExistsAtPath:self->_dirtyFilePath])
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
      v31 = [defaultManager fileExistsAtPath:self->_resetFilePath];
      if ((v31 & 1) == 0 && ((bOOLValue ^ v13) & 1) == 0)
      {
        doesExist = [(QLCacheIndexDatabase *)self->_indexDatabase doesExist];
        doesExist2 = [(QLCacheMMAPBlobDatabase *)self->_blobDatabase doesExist];
        if (doesExist == doesExist2)
        {
          if (((doesExist | doesExist2) & 1) == 0)
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
          if (doesExist)
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

    allReservedBuffers = [(QLCacheIndexDatabase *)*p_indexDatabase allReservedBuffers];
    if ([(QLCacheMMAPBlobDatabase *)*p_blobDatabase deleteBlobsWithArray:allReservedBuffers])
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v24 = allReservedBuffers;
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

- (void)_resetWithReason:(id)reason
{
  reasonCopy = reason;
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

  if (reasonCopy)
  {
    [reasonCopy writeToFile:self->_resetReasonPath atomically:1 encoding:4 error:0];
  }

  else
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager removeItemAtPath:self->_resetReasonPath error:0];
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

- (void)setMetaData:(id)data forKey:(id)key
{
  dataCopy = data;
  keyCopy = key;
  v7 = [(NSMutableDictionary *)self->_metaData objectForKey:keyCopy];
  if (dataCopy)
  {
    if (!v7 || ([v7 isEqual:dataCopy] & 1) == 0)
    {
      [(NSMutableDictionary *)self->_metaData setObject:dataCopy forKey:keyCopy];
      self->_metaDataDirty = 1;
    }
  }

  else
  {

    if (v7)
    {
      [(NSMutableDictionary *)self->_metaData removeObjectForKey:keyCopy];
      self->_metaDataDirty = 1;
    }
  }
}

- (id)reserveBufferWithLength:(unint64_t)length
{
  if (length)
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

- (id)reserveBufferForData:(id)data
{
  v13 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if ([dataCopy length])
  {
    v5 = -[QLDiskCache reserveBufferWithLength:](self, "reserveBufferWithLength:", [dataCopy length]);
    if (v5)
    {
      memcpy(-[QLCacheMMAPBlobDatabase bufferPointedToByBlobInfo:](self->_blobDatabase, "bufferPointedToByBlobInfo:", v5), [dataCopy bytes], objc_msgSend(dataCopy, "length"));
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
        v12 = [dataCopy length];
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

- (BOOL)validateReservedBuffer:(id)buffer
{
  bufferCopy = buffer;
  if (![bufferCopy length])
  {
LABEL_7:
    v9 = 1;
    goto LABEL_13;
  }

  if ([(QLCacheIndexDatabase *)self->_indexDatabase removeReservedBufferWithBlobInfo:bufferCopy])
  {
    blobDatabase = self->_blobDatabase;
    p_blobDatabase = &self->_blobDatabase;
    [(QLCacheMMAPBlobDatabase *)blobDatabase validateReservedBufferWithBlobInfo:bufferCopy];
    v7 = MEMORY[0x277CDAB78];
    v8 = *(MEMORY[0x277CDAB78] + 32);
    if (!v8)
    {
      QLTInitLogging();
      v8 = *(v7 + 32);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(QLDiskCache *)p_blobDatabase validateReservedBuffer:v8, bufferCopy];
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

- (BOOL)discardReservedBuffer:(id)buffer
{
  bufferCopy = buffer;
  if (![bufferCopy length])
  {
LABEL_7:
    v9 = 1;
    goto LABEL_13;
  }

  if ([(QLCacheIndexDatabase *)self->_indexDatabase removeReservedBufferWithBlobInfo:bufferCopy])
  {
    blobDatabase = self->_blobDatabase;
    p_blobDatabase = &self->_blobDatabase;
    [(QLCacheMMAPBlobDatabase *)blobDatabase discardReservedBufferWithBlobInfo:bufferCopy];
    v7 = MEMORY[0x277CDAB78];
    v8 = *(MEMORY[0x277CDAB78] + 32);
    if (!v8)
    {
      QLTInitLogging();
      v8 = *(v7 + 32);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(QLDiskCache *)p_blobDatabase discardReservedBuffer:v8, bufferCopy];
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

- (id)lastResetWithDate:(id *)date
{
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:self->_resetReasonPath isDirectory:0];
  v6 = [v5 getResourceValue:date forKey:*MEMORY[0x277CBE7B0] error:0];
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

- (BOOL)removeCachedThumbnailsFromUninstalledFileProvidersWithRemainingFileProviderIdentifiers:(id)identifiers
{
  selfCopy = self;
  v4 = [(QLCacheIndexDatabase *)self->_indexDatabase removeFilesFromUninstalledFileProvidersWithRemainingFileProviderIdentifiers:identifiers];
  LOBYTE(selfCopy) = [(QLDiskCache *)selfCopy _deleteBlobArrayFromDatabase:v4]!= 0;

  return selfCopy;
}

- (BOOL)removeCachedThumbnailsFromUninstalledFileProvidersWithIdentifiers:(id)identifiers
{
  selfCopy = self;
  v4 = [(QLCacheIndexDatabase *)self->_indexDatabase removeFilesFromUninstalledFileProvidersWithIdentifiers:identifiers];
  LOBYTE(selfCopy) = [(QLDiskCache *)selfCopy _deleteBlobArrayFromDatabase:v4]!= 0;

  return selfCopy;
}

+ (void)defaultLocation
{
  v11 = *MEMORY[0x277D85DE8];
  selfCopy = self;
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
  selfCopy = self;
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