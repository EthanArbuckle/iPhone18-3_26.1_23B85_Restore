@interface QLCacheIndexDatabase
- (BOOL)add:(unint64_t)add blobInfosStartingAtColumn:(unint64_t)column ofSteppedStatement:(sqlite3_stmt *)statement toArray:(id)array;
- (BOOL)doesExist;
- (BOOL)isValid;
- (BOOL)itemIsMissingRemoteThumbnail:(id)thumbnail;
- (BOOL)removeReservedBufferWithBlobInfo:(id)info;
- (BOOL)setLastHitDateOfAllCachedThumbnailsToDate:(id)date;
- (QLCacheIndexDatabase)initWithPath:(id)path;
- (id)_removeThumbnailsFromStatement:(sqlite3_stmt *)statement;
- (id)allBuffersIncludingReserved:(BOOL)reserved;
- (id)allReservedBuffers;
- (id)batchOfFileProviderItemsStartingAtRowId:(unint64_t)id endingAtRowId:(unint64_t *)rowId;
- (id)batchOfRegularItemsStartingAtRowId:(unint64_t)id endingAtRowId:(unint64_t *)rowId;
- (id)itemsAfterFilteringOutItemsWithMissingThumbnails:(id)thumbnails;
- (id)itemsGroupedByProviderDomain:(id)domain;
- (id)queryCacheForFileRequests:(id)requests;
- (id)removeAllThumbnailsForCacheId:(unint64_t)id;
- (id)removeFilesFromUninstalledFileProvidersWithIdentifiers:(id)identifiers whichAreRemaining:(BOOL)remaining;
- (id)removeFilesWithFileInfo:(id)info;
- (id)removeOldThumbnails;
- (id)removePercentageOldestThumbnails:(unint64_t)thumbnails;
- (id)removeThumbnailForFileIdentifier:(id)identifier;
- (id)removeThumbnailsForDeletedFiles;
- (id)removeThumbnailsOlderThanDate:(id)date;
- (id)removeThumbnailsWithCacheIds:(id)ids;
- (unint64_t)_cacheIdForFileIdentifier:(id)identifier createVersion:(id *)version;
- (unint64_t)fileEntryCount;
- (unint64_t)insertOrUpdateThumbnailWithVersionedFileIdentifier:(id)identifier shouldInvalidAllThumbnailSizes:(BOOL *)sizes added:(BOOL *)added;
- (unint64_t)missingRemoteThumbnailsCountForFileProviderIds:(id)ids;
- (unint64_t)reserveBufferCount;
- (unint64_t)reserveBufferSize;
- (unint64_t)sizeSumOfThumbnailsOlderThanDate:(id)date;
- (unint64_t)thumbnailCount;
- (void)_createTables;
- (void)_deleteAllTables;
- (void)addReservedBufferWithBlobInfo:(id)info;
- (void)close;
- (void)doesExist;
- (void)isValid;
- (void)noteRemoteThumbnailMissingForItems:(id)items;
- (void)noteRemoteThumbnailPresentForItems:(id)items;
- (void)open;
- (void)removeBasicFilesWithRowids:(id)rowids;
- (void)removeUbiquitousFilesWithRowids:(id)rowids;
- (void)reset;
- (void)save;
- (void)updateHitCount:(id)count forFileIdentifier:(id)identifier;
@end

@implementation QLCacheIndexDatabase

- (id)removeOldThumbnails
{
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v3 - self->_maxThumbnailLifeTime];
  v5 = [(QLCacheIndexDatabase *)self removeThumbnailsOlderThanDate:v4];

  return v5;
}

- (void)save
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (QLCacheIndexDatabase)initWithPath:(id)path
{
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = QLCacheIndexDatabase;
  v5 = [(QLCacheIndexDatabase *)&v12 init];
  if (v5)
  {
    v6 = [pathCopy stringByAppendingPathComponent:@"index.sqlite"];
    databasePath = v5->_databasePath;
    v5->_databasePath = v6;

    v8 = objc_alloc_init(QLSqliteDatabase);
    database = v5->_database;
    v5->_database = v8;

    v5->_maxThumbnailLifeTime = _QLSAppPreferencesIntValueForKey();
    v10 = _log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [QLCacheIndexDatabase initWithPath:?];
    }
  }

  return v5;
}

- (BOOL)doesExist
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [defaultManager fileExistsAtPath:self->_databasePath];

  v5 = _log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [QLCacheIndexDatabase doesExist];
  }

  return v4;
}

- (void)open
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (BOOL)isValid
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (![(QLSqliteDatabase *)self->_database isOpened])
  {
    goto LABEL_13;
  }

  v3 = [(QLSqliteDatabase *)self->_database prepareStatement:"SELECT value FROM preferences WHERE key='version'"];
  v13 = v3;
  buf[0] = 0;
  if (!v3)
  {
    goto LABEL_13;
  }

  v4 = v3;
  if (![(QLSqliteDatabase *)self->_database stepStatement:v3 didReturnData:buf]|| buf[0] != 1)
  {
    goto LABEL_12;
  }

  v5 = [(QLSqliteDatabase *)self->_database newStringFromColumn:0 inStatement:v4 uniqueInStringTable:0];
  intValue = [v5 intValue];
  if (intValue != 12)
  {
    v7 = _log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      intValue2 = [v5 intValue];
      *buf = 67109376;
      v15 = intValue2;
      v16 = 1024;
      v17 = 12;
      _os_log_impl(&dword_2615D3000, v7, OS_LOG_TYPE_INFO, "index database current version %d, version expected %d", buf, 0xEu);
    }
  }

  buf[0] = 0;
  if (![(QLSqliteDatabase *)self->_database stepStatement:v4 didReturnData:buf]|| buf[0] == 1)
  {

LABEL_12:
    [(QLSqliteDatabase *)self->_database finalizeStatement:&v13];
LABEL_13:
    v9 = _log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [QLCacheIndexDatabase isValid];
    }

    v10 = 0;
    goto LABEL_16;
  }

  [(QLSqliteDatabase *)self->_database finalizeStatement:&v13];
  if (intValue != 12 || [(QLSqliteDatabase *)self->_database isCorrupted])
  {
    goto LABEL_13;
  }

  v9 = _log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [QLCacheIndexDatabase isValid];
  }

  v10 = 1;
LABEL_16:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)close
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)reset
{
  v3 = _log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_2615D3000, v3, OS_LOG_TYPE_INFO, "reset index database", v4, 2u);
  }

  unlink([(NSString *)self->_databasePath fileSystemRepresentation]);
}

- (void)updateHitCount:(id)count forFileIdentifier:(id)identifier
{
  v29 = *MEMORY[0x277D85DE8];
  countCopy = count;
  v7 = [(QLCacheIndexDatabase *)self _cacheIdForFileIdentifier:identifier createVersion:0];
  if (v7)
  {
    v8 = v7;
    allKeys = [countCopy allKeys];
    v10 = [(QLSqliteDatabase *)self->_database prepareStatement:"UPDATE thumbnails SET hit_count=hit_count+?, last_hit_date=?                              WHERE file_id=? AND size=? AND icon_mode=? AND badge_type=?                                    AND icon_variant=? AND interpolation=? AND externalGeneratorDataHash=?"];
    v27 = v10;
    if (v10)
    {
      v11 = v10;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      obj = allKeys;
      v12 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v23 + 1) + 8 * i);
            v17 = [countCopy objectForKey:v16];
            -[QLSqliteDatabase bindInt:atIndex:inStatement:](self->_database, "bindInt:atIndex:inStatement:", [v17 unsignedIntValue], 1, v11);
            database = self->_database;
            [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
            v11 = v27;
            [(QLSqliteDatabase *)database bindDouble:2 atIndex:v27 inStatement:?];
            [(QLSqliteDatabase *)self->_database bindUnsignedLongLong:v8 atIndex:3 inStatement:v11];
            v19 = self->_database;
            [v16 size];
            [(QLSqliteDatabase *)v19 bindInt:v20 atIndex:4 inStatement:v11];
            -[QLSqliteDatabase bindInt:atIndex:inStatement:](self->_database, "bindInt:atIndex:inStatement:", [v16 iconMode], 5, v11);
            -[QLSqliteDatabase bindUnsignedLongLong:atIndex:inStatement:](self->_database, "bindUnsignedLongLong:atIndex:inStatement:", [v16 badgeType], 6, v11);
            -[QLSqliteDatabase bindUnsignedLongLong:atIndex:inStatement:](self->_database, "bindUnsignedLongLong:atIndex:inStatement:", [v16 iconVariant], 7, v11);
            -[QLSqliteDatabase bindUnsignedLongLong:atIndex:inStatement:](self->_database, "bindUnsignedLongLong:atIndex:inStatement:", [v16 interpolationQuality], 8, v11);
            -[QLSqliteDatabase bindUnsignedLongLong:atIndex:inStatement:](self->_database, "bindUnsignedLongLong:atIndex:inStatement:", [v16 externalGeneratorDataHash], 9, v11);
            [(QLSqliteDatabase *)self->_database stepStatement:v11];
            [(QLSqliteDatabase *)self->_database resetStatement:v11 unbindValuesThroughIndex:0];
          }

          v13 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v13);
      }

      [(QLSqliteDatabase *)self->_database finalizeStatement:&v27];
    }

    else
    {
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (unint64_t)insertOrUpdateThumbnailWithVersionedFileIdentifier:(id)identifier shouldInvalidAllThumbnailSizes:(BOOL *)sizes added:(BOOL *)added
{
  v28 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  version = [identifierCopy version];
  *sizes = 0;
  fileIdentifier = [identifierCopy fileIdentifier];
  v22 = 0;
  v11 = [(QLCacheIndexDatabase *)self _cacheIdForFileIdentifier:fileIdentifier createVersion:&v22];
  v12 = v22;

  *added = v11 == 0;
  if (v11)
  {
    if (v12)
    {
      v13 = [version isEqual:v12] ^ 1;
    }

    else
    {
      v13 = 1;
    }

    *sizes = v13;
    v16 = _log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [QLCacheIndexDatabase insertOrUpdateThumbnailWithVersionedFileIdentifier:sizes shouldInvalidAllThumbnailSizes:identifierCopy added:v16];
    }

    if (*sizes)
    {
      v17 = _log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        fileIdentifier2 = [identifierCopy fileIdentifier];
        *buf = 138412802;
        *&buf[4] = v12;
        v24 = 2112;
        v25 = version;
        v26 = 2112;
        v27 = fileIdentifier2;
        _os_log_debug_impl(&dword_2615D3000, v17, OS_LOG_TYPE_DEBUG, "version from database %@, version from disk %@, for %@", buf, 0x20u);
      }

      v18 = [identifierCopy statementToUpdateRecordWithCacheIdentifier:v11 inDatabase:self->_database];
      *buf = v18;
      if (v18)
      {
        [(QLSqliteDatabase *)self->_database stepStatement:v18];
        [(QLSqliteDatabase *)self->_database finalizeStatement:buf];
        goto LABEL_15;
      }

LABEL_14:
      v11 = 0;
    }
  }

  else
  {
    v14 = [identifierCopy statementToInsertIntoDatabase:self->_database];
    *buf = v14;
    if (!v14)
    {
      goto LABEL_14;
    }

    [(QLSqliteDatabase *)self->_database stepStatement:v14];
    [(QLSqliteDatabase *)self->_database finalizeStatement:buf];
    fileIdentifier3 = [identifierCopy fileIdentifier];
    v11 = [objc_opt_class() cacheIdFromRowId:{-[QLSqliteDatabase lastInsertRowId](self->_database, "lastInsertRowId")}];
  }

LABEL_15:

  v19 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)removeThumbnailForFileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(QLCacheIndexDatabase *)self _cacheIdForFileIdentifier:identifierCopy createVersion:0];
  v6 = [(QLCacheIndexDatabase *)self removeAllThumbnailsForCacheId:v5];
  v7 = objc_opt_class();

  [v7 removeFromDatabase:self->_database fileWithCacheId:v5];

  return v6;
}

- (id)removeAllThumbnailsForCacheId:(unint64_t)id
{
  array = [MEMORY[0x277CBEB18] array];
  v6 = [(QLSqliteDatabase *)self->_database prepareStatement:"SELECT bitmapdata_location, bitmapdata_length, plistbuffer_location, plistbuffer_length FROM thumbnails WHERE file_id=?"];
  v17 = v6;
  if (v6)
  {
    v7 = v6;
    [(QLSqliteDatabase *)self->_database bindUnsignedLongLong:id atIndex:1 inStatement:v6];
    v16 = 0;
    while ([(QLSqliteDatabase *)self->_database stepStatement:v7 didReturnData:&v16]&& (v16 & 1) != 0)
    {
      [(QLCacheIndexDatabase *)self add:2 blobInfosStartingAtColumn:0 ofSteppedStatement:v7 toArray:array];
    }

    [(QLSqliteDatabase *)self->_database finalizeStatement:&v17];
    v8 = [(QLSqliteDatabase *)self->_database prepareStatement:"DELETE FROM thumbnails WHERE file_id=?"];
    v15 = v8;
    v9 = MEMORY[0x277CBEBF8];
    if (!v8)
    {
      goto LABEL_13;
    }

    v10 = v8;
    [(QLSqliteDatabase *)self->_database bindUnsignedLongLong:id atIndex:1 inStatement:v8];
    v11 = [(QLSqliteDatabase *)self->_database stepStatement:v10];
    [(QLSqliteDatabase *)self->_database finalizeStatement:&v15];
    if (v11)
    {
      v12 = array;
    }

    else
    {
      v12 = v9;
    }

    v13 = v12;
  }

  else
  {
    v13 = array;
  }

  v9 = v13;
LABEL_13:

  return v9;
}

- (id)removePercentageOldestThumbnails:(unint64_t)thumbnails
{
  v19 = *MEMORY[0x277D85DE8];
  thumbnailCount = [(QLCacheIndexDatabase *)self thumbnailCount];
  v6 = vcvtpd_u64_f64(thumbnails / 100.0 * thumbnailCount);
  v7 = _log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v13 = 134218496;
    thumbnailsCopy = thumbnails;
    v15 = 2048;
    v16 = v6;
    v17 = 2048;
    v18 = thumbnailCount;
    _os_log_debug_impl(&dword_2615D3000, v7, OS_LOG_TYPE_DEBUG, "Removing %llu%% oldest thumbnails, which is %lu thumbnails out of total of %lu", &v13, 0x20u);
  }

  v8 = [(QLSqliteDatabase *)self->_database prepareStatement:"SELECT rowid, bitmapdata_location, bitmapdata_length, plistbuffer_location, plistbuffer_length FROM thumbnails ORDER BY last_hit_date ASC LIMIT ?"];
  if (v8)
  {
    v9 = v8;
    [(QLSqliteDatabase *)self->_database bindUnsignedLongLong:v6 atIndex:1 inStatement:v8];
    [(QLCacheIndexDatabase *)self _removeThumbnailsFromStatement:v9];
  }

  else
  {
    [MEMORY[0x277CBEA60] array];
  }
  v10 = ;
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)batchOfFileProviderItemsStartingAtRowId:(unint64_t)id endingAtRowId:(unint64_t *)rowId
{
  queryStringToFindCacheIds = [MEMORY[0x277CDAA90] queryStringToFindCacheIds];
  v8 = [queryStringToFindCacheIds stringByAppendingFormat:@" rowid > ? LIMIT 50"];

  v9 = -[QLSqliteDatabase prepareStatement:](self->_database, "prepareStatement:", [v8 UTF8String]);
  v19 = v9;
  if (v9)
  {
    v10 = v9;
    [(QLSqliteDatabase *)self->_database bindUnsignedLongLong:id atIndex:1 inStatement:v9];
    v18 = 0;
    array = [MEMORY[0x277CBEB18] array];
    v12 = 0;
    if ([(QLSqliteDatabase *)self->_database stepStatement:v10 didReturnData:&v18]&& (v18 & 1) != 0)
    {
      v12 = 0;
      do
      {
        v13 = [objc_alloc(MEMORY[0x277CDAA98]) initWithSteppedStatement:v10 database:self->_database];
        v14 = [(QLSqliteDatabase *)self->_database unsignedLongLongFromColumn:0 inStatement:v10];
        if (v14 > v12)
        {
          v12 = v14;
        }

        fileIdentifier = [v13 fileIdentifier];
        itemID = [fileIdentifier itemID];
        [array addObject:itemID];
      }

      while ([(QLSqliteDatabase *)self->_database stepStatement:v10 didReturnData:&v18]&& (v18 & 1) != 0);
    }

    if (rowId)
    {
      *rowId = v12;
    }

    [(QLSqliteDatabase *)self->_database finalizeStatement:&v19];
  }

  else
  {
    array = MEMORY[0x277CBEBF8];
  }

  return array;
}

- (id)batchOfRegularItemsStartingAtRowId:(unint64_t)id endingAtRowId:(unint64_t *)rowId
{
  queryStringToFindCacheIds = [MEMORY[0x277CDAA80] queryStringToFindCacheIds];
  v8 = [queryStringToFindCacheIds stringByAppendingFormat:@" rowid > ? LIMIT 50"];

  v9 = -[QLSqliteDatabase prepareStatement:](self->_database, "prepareStatement:", [v8 UTF8String]);
  v18 = v9;
  if (v9)
  {
    v10 = v9;
    [(QLSqliteDatabase *)self->_database bindUnsignedLongLong:id atIndex:1 inStatement:v9];
    v17 = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v12 = 0;
    if ([(QLSqliteDatabase *)self->_database stepStatement:v10 didReturnData:&v17]&& (v17 & 1) != 0)
    {
      v12 = 0;
      do
      {
        v13 = [objc_alloc(MEMORY[0x277CDAA88]) initWithSteppedStatement:v10 database:self->_database];
        v14 = [(QLSqliteDatabase *)self->_database unsignedLongLongFromColumn:0 inStatement:v10];
        if (v14 > v12)
        {
          v12 = v14;
        }

        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v14];
        [dictionary setObject:v13 forKeyedSubscript:v15];
      }

      while ([(QLSqliteDatabase *)self->_database stepStatement:v10 didReturnData:&v17]&& (v17 & 1) != 0);
    }

    if (rowId)
    {
      *rowId = v12;
    }

    [(QLSqliteDatabase *)self->_database finalizeStatement:&v18];
  }

  else
  {
    dictionary = MEMORY[0x277CBEC10];
  }

  return dictionary;
}

- (id)removeThumbnailsForDeletedFiles
{
  v46 = *MEMORY[0x277D85DE8];
  v44 = 0;
  array = [MEMORY[0x277CBEB18] array];
  itemManager = [(QLCacheIndexDatabase *)self itemManager];
  v5 = itemManager;
  if (itemManager)
  {
    defaultManager = itemManager;
  }

  else
  {
    defaultManager = [MEMORY[0x277CC6408] defaultManager];
  }

  v7 = defaultManager;

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v9 = [(QLCacheIndexDatabase *)self batchOfFileProviderItemsStartingAtRowId:0 endingAtRowId:&v44];
  if ([v9 count])
  {
    selfCopy = self;
    v29 = array;
    do
    {
      v30 = v44;
      v10 = dispatch_group_create();
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v41;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v41 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v40 + 1) + 8 * i);
            dispatch_group_enter(v10);
            v36[0] = MEMORY[0x277D85DD0];
            v36[1] = 3221225472;
            v36[2] = __55__QLCacheIndexDatabase_removeThumbnailsForDeletedFiles__block_invoke;
            v36[3] = &unk_279ADCEF8;
            v37 = dictionary;
            v38 = v16;
            v39 = v10;
            [v7 fetchItemForItemID:v16 completionHandler:v36];
          }

          v13 = [v11 countByEnumeratingWithState:&v40 objects:v45 count:16];
        }

        while (v13);
      }

      dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      self = selfCopy;
      v34[2] = __55__QLCacheIndexDatabase_removeThumbnailsForDeletedFiles__block_invoke_2;
      v34[3] = &unk_279ADCF48;
      v34[4] = selfCopy;
      array = v29;
      v35 = v29;
      [dictionary enumerateKeysAndObjectsUsingBlock:v34];

      v17 = v30;
      v9 = [(QLCacheIndexDatabase *)selfCopy batchOfFileProviderItemsStartingAtRowId:v30 endingAtRowId:&v44];
    }

    while ([v9 count]);
  }

  else
  {
    v17 = 0;
  }

  v18 = [(QLCacheIndexDatabase *)self batchOfRegularItemsStartingAtRowId:v17 endingAtRowId:&v44];
  if ([v18 count])
  {
    do
    {
      v19 = v44;
      v20 = [MEMORY[0x277CBEB58] set];
      v21 = [MEMORY[0x277CBEB58] set];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __55__QLCacheIndexDatabase_removeThumbnailsForDeletedFiles__block_invoke_2_152;
      v31[3] = &unk_279ADCF70;
      v32 = v20;
      v33 = v21;
      v22 = v21;
      v23 = v20;
      [v18 enumerateKeysAndObjectsUsingBlock:v31];
      [(QLCacheIndexDatabase *)self removeBasicFilesWithRowids:v23];
      v24 = [(QLCacheIndexDatabase *)self removeThumbnailsWithCacheIds:v22];
      [array addObjectsFromArray:v24];

      v25 = [(QLCacheIndexDatabase *)self batchOfRegularItemsStartingAtRowId:v19 endingAtRowId:&v44];

      v18 = v25;
    }

    while ([v25 count]);
  }

  else
  {
    v25 = v18;
  }

  v26 = *MEMORY[0x277D85DE8];

  return array;
}

void __55__QLCacheIndexDatabase_removeThumbnailsForDeletedFiles__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) providerDomainID];
  v9 = [v4 objectForKeyedSubscript:v5];

  if (v9)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = [MEMORY[0x277CBEB18] array];
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) providerDomainID];
    [v6 setObject:v9 forKeyedSubscript:v7];

    if (a2)
    {
      goto LABEL_3;
    }
  }

  v8 = [*(a1 + 40) identifier];
  [v9 addObject:v8];

LABEL_3:
  dispatch_group_leave(*(a1 + 48));
}

void __55__QLCacheIndexDatabase_removeThumbnailsForDeletedFiles__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB58] set];
  v8 = [MEMORY[0x277CBEB58] set];
  v9 = [*(*(a1 + 32) + 8) prepareStatement:{"SELECT rowid FROM provider_files WHERE fileProviderId = ? AND itemId IN (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"}];
  v22 = v9;
  if (v9)
  {
    v10 = v9;
    [*(*(a1 + 32) + 8) bindObject:v5 atIndex:1 inStatement:v9];
    v11 = *(a1 + 32);
    v12 = *(v11 + 8);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __55__QLCacheIndexDatabase_removeThumbnailsForDeletedFiles__block_invoke_149;
    v18[3] = &unk_279ADCF20;
    v18[4] = v11;
    v21 = v10;
    v13 = v7;
    v19 = v13;
    v14 = v8;
    v20 = v14;
    [v12 runStatement:v10 withBoundObjects:v6 startingAtIndex:2 stepHandler:v18];
    [*(*(a1 + 32) + 8) finalizeStatement:&v22];
    [*(a1 + 32) removeUbiquitousFilesWithRowids:v13];
    v15 = *(a1 + 40);
    v16 = [*(a1 + 32) removeThumbnailsWithCacheIds:v14];
    [v15 addObjectsFromArray:v16];
  }

  else
  {
    v17 = _log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __55__QLCacheIndexDatabase_removeThumbnailsForDeletedFiles__block_invoke_2_cold_1();
    }
  }
}

uint64_t __55__QLCacheIndexDatabase_removeThumbnailsForDeletedFiles__block_invoke_149(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  v3 = [v2 unsignedLongLongFromColumn:0 inStatement:*(a1 + 56)];

  v4 = *(a1 + 40);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v3];
  [v4 addObject:v5];

  v6 = *(a1 + 48);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(MEMORY[0x277CDAA90], "cacheIdFromRowId:", v3)}];
  [v6 addObject:v7];

  return 1;
}

void __55__QLCacheIndexDatabase_removeThumbnailsForDeletedFiles__block_invoke_2_152(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 fileIdentifier];
  if (fsgetpath(v11, 0x400uLL, &v10, [v6 fileId]) <= 0)
  {
    [*(a1 + 32) addObject:v5];
    v7 = *(a1 + 40);
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(MEMORY[0x277CDAA80], "cacheIdFromRowId:", objc_msgSend(v5, "unsignedLongLongValue"))}];
    [v7 addObject:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)removeThumbnailsOlderThanDate:(id)date
{
  dateCopy = date;
  v5 = _log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [QLCacheIndexDatabase removeThumbnailsOlderThanDate:];
  }

  v6 = [(QLSqliteDatabase *)self->_database prepareStatement:"SELECT rowid, bitmapdata_location, bitmapdata_length, plistbuffer_location, plistbuffer_length FROM thumbnails WHERE last_hit_date<?"];
  if (v6)
  {
    v7 = v6;
    database = self->_database;
    [dateCopy timeIntervalSinceReferenceDate];
    [(QLSqliteDatabase *)database bindDouble:1 atIndex:v7 inStatement:?];
    v13 = [(QLSqliteDatabase *)self->_database prepareStatement:"DELETE FROM missing_remote_thumbnails WHERE date<?"];
    v9 = self->_database;
    [dateCopy timeIntervalSinceReferenceDate];
    [(QLSqliteDatabase *)v9 bindDouble:1 atIndex:v7 inStatement:?];
    [(QLSqliteDatabase *)self->_database stepStatement:v13];
    [(QLSqliteDatabase *)self->_database finalizeStatement:&v13];
    array = [(QLCacheIndexDatabase *)self _removeThumbnailsFromStatement:v7];
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  v11 = array;

  return v11;
}

- (id)_removeThumbnailsFromStatement:(sqlite3_stmt *)statement
{
  statementCopy = statement;
  array = [MEMORY[0x277CBEB18] array];
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v10 = 0;
  while ([(QLSqliteDatabase *)self->_database stepStatement:statement didReturnData:&v10]&& (v10 & 1) != 0)
  {
    v7 = [(QLSqliteDatabase *)self->_database unsignedLongLongFromColumn:0 inStatement:statement];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7];
    [v6 addObject:v8];

    [(QLCacheIndexDatabase *)self add:2 blobInfosStartingAtColumn:1 ofSteppedStatement:statement toArray:array];
  }

  [(QLSqliteDatabase *)self->_database finalizeStatement:&statementCopy];
  if ([v6 count])
  {
    statementCopy = -[QLSqliteDatabase prepareStatement:](self->_database, "prepareStatement:", [CFSTR(""DELETE FROM thumbnails WHERE rowid IN (? ?]);
    [(QLSqliteDatabase *)self->_database runStatement:statementCopy withBoundNumbers:v6 startingAtIndex:1 stepHandler:0];
    [(QLSqliteDatabase *)self->_database finalizeStatement:&statementCopy];
  }

  return array;
}

- (BOOL)add:(unint64_t)add blobInfosStartingAtColumn:(unint64_t)column ofSteppedStatement:(sqlite3_stmt *)statement toArray:(id)array
{
  for (i = array; add; --add)
  {
    v11 = objc_alloc_init(QLCacheBlobInfo);
    [(QLCacheBlobInfo *)v11 setLocation:[(QLSqliteDatabase *)self->_database unsignedLongLongFromColumn:column inStatement:statement]];
    [(QLCacheBlobInfo *)v11 setLength:[(QLSqliteDatabase *)self->_database unsignedLongLongFromColumn:(column + 1) inStatement:statement]];
    if ([(QLCacheBlobInfo *)v11 length])
    {
      [i addObject:v11];
    }

    column = (column + 2);
  }

  return 1;
}

- (id)removeThumbnailsWithCacheIds:(id)ids
{
  idsCopy = ids;
  if ([idsCopy count])
  {
    v5 = -[QLSqliteDatabase prepareStatement:](self->_database, "prepareStatement:", [@""SELECT bitmapdata_location bitmapdata_length];
    v20 = v5;
    if (v5)
    {
      v6 = v5;
      array = [MEMORY[0x277CBEB18] array];
      database = self->_database;
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __53__QLCacheIndexDatabase_removeThumbnailsWithCacheIds___block_invoke;
      v16 = &unk_279ADCF98;
      selfCopy = self;
      v19 = v6;
      v9 = array;
      v18 = v9;
      [(QLSqliteDatabase *)database runStatement:v6 withBoundNumbers:idsCopy startingAtIndex:1 stepHandler:&v13];
      [(QLSqliteDatabase *)self->_database finalizeStatement:&v20, v13, v14, v15, v16, selfCopy];
      v20 = -[QLSqliteDatabase prepareStatement:](self->_database, "prepareStatement:", [CFSTR(""DELETE FROM thumbnails WHERE file_id IN (? ?]);
      [(QLSqliteDatabase *)self->_database runStatement:v20 withBoundNumbers:idsCopy startingAtIndex:1 stepHandler:0];
      [(QLSqliteDatabase *)self->_database finalizeStatement:&v20];
      v10 = v18;
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

- (void)removeUbiquitousFilesWithRowids:(id)rowids
{
  database = self->_database;
  rowidsCopy = rowids;
  v6 = -[QLSqliteDatabase prepareStatement:](database, "prepareStatement:", [CFSTR(""DELETE FROM provider_files WHERE rowid IN (? ?]);
  [(QLSqliteDatabase *)self->_database runStatement:v6 withBoundNumbers:rowidsCopy startingAtIndex:1 stepHandler:0];

  [(QLSqliteDatabase *)self->_database finalizeStatement:&v6];
}

- (void)removeBasicFilesWithRowids:(id)rowids
{
  database = self->_database;
  rowidsCopy = rowids;
  v6 = -[QLSqliteDatabase prepareStatement:](database, "prepareStatement:", [CFSTR(""DELETE FROM basic_files WHERE rowid IN (? ?]);
  [(QLSqliteDatabase *)self->_database runStatement:v6 withBoundNumbers:rowidsCopy startingAtIndex:1 stepHandler:0];

  [(QLSqliteDatabase *)self->_database finalizeStatement:&v6];
}

- (id)removeFilesWithFileInfo:(id)info
{
  v35 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v26 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = infoCopy;
  v6 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v29;
    *&v7 = 138412290;
    v25 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v28 + 1) + 8 * v10);
        v12 = _log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          fileIdentifier = [v11 fileIdentifier];
          *buf = v25;
          v33 = fileIdentifier;
          _os_log_impl(&dword_2615D3000, v12, OS_LOG_TYPE_INFO, "removing file %@", buf, 0xCu);
        }

        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v11, "cacheId")}];
        [v4 addObject:v14];

        fileIdentifier2 = [v11 fileIdentifier];
        v15FileIdentifier = [fileIdentifier2 fileIdentifier];
        v17 = objc_opt_class();

        tableName = [v17 tableName];
        LOBYTE(v15FileIdentifier) = [tableName isEqualToString:@"basic_files"];

        v19 = v5;
        if ((v15FileIdentifier & 1) != 0 || ([v17 tableName], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isEqualToString:", @"provider_files"), v20, v19 = v26, v21))
        {
          v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v17, "rowIdFromCacheId:", objc_msgSend(v11, "cacheId", v25))}];
          [v19 addObject:v22];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v8);
  }

  v23 = *MEMORY[0x277D85DE8];
  return MEMORY[0x277CBEBF8];
}

- (id)removeFilesFromUninstalledFileProvidersWithIdentifiers:(id)identifiers whichAreRemaining:(BOOL)remaining
{
  remainingCopy = remaining;
  identifiersCopy = identifiers;
  v7 = @"IN";
  if (remainingCopy)
  {
    v7 = @"NOT IN";
  }

  v8 = v7;
  v9 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithFormat:", @"SELECT rowid FROM provider_files WHERE fileProviderId %@ ("), v8;
  string = [MEMORY[0x277CCAB68] string];
  if ([identifiersCopy count])
  {
    v11 = 0;
    do
    {
      if (v11)
      {
        v12 = @",?";
      }

      else
      {
        v12 = @"?";
      }

      [string appendString:v12];
      ++v11;
    }

    while (v11 < [identifiersCopy count]);
  }

  [v9 appendString:string];
  [v9 appendString:@""]);
  v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v15 = -[QLSqliteDatabase prepareStatement:](self->_database, "prepareStatement:", [v9 UTF8String]);
  v43 = v15;
  if (v15)
  {
    v16 = v15;
    v34 = v14;
    v35 = v13;
    v36 = v8;
    if ([identifiersCopy count])
    {
      v17 = 0;
      do
      {
        database = self->_database;
        v19 = [identifiersCopy objectAtIndexedSubscript:v17];
        [(QLSqliteDatabase *)database bindObject:v19 atIndex:++v17 inStatement:v16];
      }

      while (v17 < [identifiersCopy count]);
    }

    v20 = self->_database;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __97__QLCacheIndexDatabase_removeFilesFromUninstalledFileProvidersWithIdentifiers_whichAreRemaining___block_invoke;
    v39[3] = &unk_279ADCF20;
    v39[4] = self;
    v42 = v16;
    v33 = v35;
    v40 = v33;
    v21 = v34;
    v41 = v21;
    [(QLSqliteDatabase *)v20 runStatement:v16 stepHandler:v39];
    [(QLSqliteDatabase *)self->_database finalizeStatement:&v43];
    v22 = _log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2615D3000, v22, OS_LOG_TYPE_DEFAULT, "Clearing download deny list for removed domains during fileprovider uninstallation", buf, 2u);
    }

    v23 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithFormat:", @"DELETE FROM missing_remote_thumbnails WHERE fileProviderId %@ ("), v36;
    [v23 appendString:string];
    [v23 appendString:@""]);
    v24 = -[QLSqliteDatabase prepareStatement:](self->_database, "prepareStatement:", [v23 UTF8String]);
    *buf = v24;
    if (!v24)
    {
      v25 = _log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [QLCacheIndexDatabase removeFilesFromUninstalledFileProvidersWithIdentifiers:whichAreRemaining:];
      }
    }

    if ([identifiersCopy count])
    {
      v26 = 0;
      do
      {
        v27 = self->_database;
        v28 = [identifiersCopy objectAtIndexedSubscript:v26];
        [(QLSqliteDatabase *)v27 bindObject:v28 atIndex:++v26 inStatement:v24];
      }

      while (v26 < [identifiersCopy count]);
    }

    [(QLSqliteDatabase *)self->_database runStatement:v24 stepHandler:0];
    [(QLSqliteDatabase *)self->_database finalizeStatement:buf];
    v29 = _log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 0;
      _os_log_impl(&dword_2615D3000, v29, OS_LOG_TYPE_DEFAULT, "Finished clearing download deny list for removed domains during fileprovider uninstallation", v37, 2u);
    }

    [(QLCacheIndexDatabase *)self removeUbiquitousFilesWithRowids:v33];
    v30 = [(QLCacheIndexDatabase *)self removeThumbnailsWithCacheIds:v21];

    v13 = v35;
    v8 = v36;
    v14 = v34;
  }

  else
  {
    v31 = _log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [QLCacheIndexDatabase removeFilesFromUninstalledFileProvidersWithIdentifiers:whichAreRemaining:];
    }

    v30 = 0;
  }

  return v30;
}

uint64_t __97__QLCacheIndexDatabase_removeFilesFromUninstalledFileProvidersWithIdentifiers_whichAreRemaining___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  v3 = [v2 unsignedLongLongFromColumn:0 inStatement:*(a1 + 56)];

  v4 = *(a1 + 40);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v3];
  [v4 addObject:v5];

  v6 = *(a1 + 48);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(MEMORY[0x277CDAA90], "cacheIdFromRowId:", v3)}];
  [v6 addObject:v7];

  return 1;
}

- (unint64_t)missingRemoteThumbnailsCountForFileProviderIds:(id)ids
{
  idsCopy = ids;
  v5 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithString:", @"SELECT count(itemId) FROM missing_remote_thumbnails WHERE fileProviderId IN (");
  if ([idsCopy count])
  {
    v6 = 0;
    do
    {
      if (v6)
      {
        v7 = @",?";
      }

      else
      {
        v7 = @"?";
      }

      [v5 appendString:v7];
      ++v6;
    }

    while (v6 < [idsCopy count]);
  }

  [v5 appendString:@""]);
  v8 = -[QLSqliteDatabase prepareStatement:](self->_database, "prepareStatement:", [v5 UTF8String]);
  v11 = v8;
  if (v8)
  {
    v10 = 0;
    if ([(QLSqliteDatabase *)self->_database stepStatement:v8 didReturnData:&v10]&& v10 == 1)
    {
      v8 = [(QLSqliteDatabase *)self->_database unsignedLongLongFromColumn:0 inStatement:v8];
    }

    else
    {
      v8 = 0;
    }

    [(QLSqliteDatabase *)self->_database finalizeStatement:&v11];
  }

  return v8;
}

- (BOOL)setLastHitDateOfAllCachedThumbnailsToDate:(id)date
{
  dateCopy = date;
  v5 = [(QLSqliteDatabase *)self->_database prepareStatement:"UPDATE thumbnails SET last_hit_date=?"];
  v8 = v5;
  if (v5)
  {
    database = self->_database;
    [dateCopy timeIntervalSinceReferenceDate];
    [(QLSqliteDatabase *)database bindDouble:1 atIndex:v5 inStatement:?];
    LOBYTE(v5) = [(QLSqliteDatabase *)self->_database stepStatement:v5];
    [(QLSqliteDatabase *)self->_database finalizeStatement:&v8];
  }

  return v5;
}

- (id)queryCacheForFileRequests:(id)requests
{
  requestsCopy = requests;
  v5 = [[QLCacheIndexDatabaseQueryEnumerator alloc] initWithSqliteDatabase:self->_database fileRequests:requestsCopy];

  return v5;
}

- (unint64_t)sizeSumOfThumbnailsOlderThanDate:(id)date
{
  dateCopy = date;
  v5 = [(QLSqliteDatabase *)self->_database prepareStatement:"SELECT SUM(bitmapdata_length) FROM thumbnails WHERE last_hit_date<?"];
  v9 = v5;
  if (v5)
  {
    database = self->_database;
    [dateCopy timeIntervalSinceReferenceDate];
    [(QLSqliteDatabase *)database bindDouble:1 atIndex:v5 inStatement:?];
    v8 = 0;
    if ([(QLSqliteDatabase *)self->_database stepStatement:v5 didReturnData:&v8]&& v8 == 1)
    {
      v5 = [(QLSqliteDatabase *)self->_database unsignedLongLongFromColumn:0 inStatement:v5];
    }

    else
    {
      v5 = 0;
    }

    [(QLSqliteDatabase *)self->_database finalizeStatement:&v9];
  }

  return v5;
}

- (id)allReservedBuffers
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [(QLSqliteDatabase *)self->_database prepareStatement:"SELECT location, length FROM reserved_buffer"];
  v8 = v4;
  if (v4)
  {
    v5 = v4;
    v7 = 0;
    while ([(QLSqliteDatabase *)self->_database stepStatement:v5 didReturnData:&v7]&& (v7 & 1) != 0)
    {
      [(QLCacheIndexDatabase *)self add:1 blobInfosStartingAtColumn:0 ofSteppedStatement:v5 toArray:array];
    }

    [(QLSqliteDatabase *)self->_database finalizeStatement:&v8];
  }

  return array;
}

- (id)allBuffersIncludingReserved:(BOOL)reserved
{
  reservedCopy = reserved;
  array = [MEMORY[0x277CBEB18] array];
  v6 = [(QLSqliteDatabase *)self->_database prepareStatement:"SELECT bitmapdata_location, bitmapdata_length, plistbuffer_location, plistbuffer_length FROM thumbnails"];
  v11 = v6;
  if (v6)
  {
    v7 = v6;
    v10 = 0;
    while ([(QLSqliteDatabase *)self->_database stepStatement:v7 didReturnData:&v10]&& (v10 & 1) != 0)
    {
      [(QLCacheIndexDatabase *)self add:2 blobInfosStartingAtColumn:0 ofSteppedStatement:v7 toArray:array];
    }

    [(QLSqliteDatabase *)self->_database finalizeStatement:&v11];
    if (reservedCopy)
    {
      allReservedBuffers = [(QLCacheIndexDatabase *)self allReservedBuffers];
      [array addObjectsFromArray:allReservedBuffers];
    }
  }

  return array;
}

- (void)addReservedBufferWithBlobInfo:(id)info
{
  infoCopy = info;
  v5 = [(QLSqliteDatabase *)self->_database prepareStatement:"INSERT INTO reserved_buffer (location, length) VALUES (?, ?)"];
  v8 = v5;
  if (v5)
  {
    v6 = v5;
    v7 = _log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(QLCacheIndexDatabase *)infoCopy addReservedBufferWithBlobInfo:v7];
    }

    -[QLSqliteDatabase bindUnsignedLongLong:atIndex:inStatement:](self->_database, "bindUnsignedLongLong:atIndex:inStatement:", [infoCopy location], 1, v6);
    -[QLSqliteDatabase bindUnsignedLongLong:atIndex:inStatement:](self->_database, "bindUnsignedLongLong:atIndex:inStatement:", [infoCopy length], 2, v6);
    [(QLSqliteDatabase *)self->_database stepStatement:v6];
    [(QLSqliteDatabase *)self->_database finalizeStatement:&v8];
  }
}

- (BOOL)removeReservedBufferWithBlobInfo:(id)info
{
  infoCopy = info;
  v5 = [(QLSqliteDatabase *)self->_database prepareStatement:"DELETE FROM reserved_buffer WHERE location=?"];
  v7 = v5;
  if (v5)
  {
    -[QLSqliteDatabase bindUnsignedLongLong:atIndex:inStatement:](self->_database, "bindUnsignedLongLong:atIndex:inStatement:", [infoCopy location], 1, v5);
    LOBYTE(v5) = [(QLSqliteDatabase *)self->_database stepStatement:v5];
    [(QLSqliteDatabase *)self->_database finalizeStatement:&v7];
  }

  return v5;
}

- (unint64_t)reserveBufferCount
{
  v3 = [(QLSqliteDatabase *)self->_database prepareStatement:"SELECT count(location) FROM reserved_buffer"];
  v6 = v3;
  if (v3)
  {
    v5 = 0;
    if ([(QLSqliteDatabase *)self->_database stepStatement:v3 didReturnData:&v5]&& v5 == 1)
    {
      v3 = [(QLSqliteDatabase *)self->_database unsignedLongLongFromColumn:0 inStatement:v3];
    }

    else
    {
      v3 = 0;
    }

    [(QLSqliteDatabase *)self->_database finalizeStatement:&v6];
  }

  return v3;
}

- (unint64_t)reserveBufferSize
{
  v3 = [(QLSqliteDatabase *)self->_database prepareStatement:"SELECT SUM(length) FROM reserved_buffer"];
  v6 = v3;
  if (v3)
  {
    v5 = 0;
    if ([(QLSqliteDatabase *)self->_database stepStatement:v3 didReturnData:&v5]&& v5 == 1)
    {
      v3 = [(QLSqliteDatabase *)self->_database unsignedLongLongFromColumn:0 inStatement:v3];
    }

    else
    {
      v3 = 0;
    }

    [(QLSqliteDatabase *)self->_database finalizeStatement:&v6];
  }

  return v3;
}

- (unint64_t)_cacheIdForFileIdentifier:(id)identifier createVersion:(id *)version
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = [identifierCopy statementToFindCacheIdInDatabase:self->_database];
  v18 = v7;
  v17 = 0;
  if ([(QLSqliteDatabase *)self->_database stepStatement:v7 didReturnData:&v17]&& v17 == 1)
  {
    v8 = [objc_opt_class() cacheIdFromRowId:{-[QLSqliteDatabase unsignedLongLongFromColumn:inStatement:](self->_database, "unsignedLongLongFromColumn:inStatement:", 0, v7)}];
    if (version)
    {
      v9 = [(QLSqliteDatabase *)self->_database newDataFromColumn:1 inStatement:v7 copyBytes:0];
      v16 = 0;
      v10 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v16];
      v11 = v16;
      v12 = v10;
      *version = v10;
      if (!v10)
      {
        v13 = _log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v20 = v9;
          v21 = 2112;
          v22 = identifierCopy;
          v23 = 2112;
          v24 = v11;
          _os_log_error_impl(&dword_2615D3000, v13, OS_LOG_TYPE_ERROR, "cannot create the version based on data %@, for file %@: %@", buf, 0x20u);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  [(QLSqliteDatabase *)self->_database finalizeStatement:&v18];

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)_createTables
{
  [(QLSqliteDatabase *)self->_database execute:"CREATE TABLE preferences (key TEXT UNIQUE PRIMARY KEY, value TEXT)"];
  [(QLSqliteDatabase *)self->_database execute:"CREATE INDEX key ON preferences (key)"];
  [(QLSqliteDatabase *)self->_database execute:"INSERT INTO preferences (key, value) VALUES ('version', '%d')", 12];
  [(QLSqliteDatabase *)self->_database execute:"CREATE TABLE basic_files (fileId INTEGER PRIMARY KEY, fsid INTEGER, version BLOB)"];
  [(QLSqliteDatabase *)self->_database execute:"CREATE TABLE provider_files (fileProviderId TEXT, itemId TEXT, version BLOB)"];
  [(QLSqliteDatabase *)self->_database execute:"CREATE UNIQUE INDEX fileProviderIdItemId ON provider_files (fileProviderId, itemId)"];
  [(QLSqliteDatabase *)self->_database execute:"CREATE TABLE thumbnails (file_id INTEGER, size REAL, icon_mode INTEGER, hit_count INTEGER, last_hit_date REAL, width INTEGER, height INTEGER, bitmapFormat BLOB, bitmapdata_location INTEGER, bitmapdata_length INTEGER, plistbuffer_location INTEGER, plistbuffer_length INTEGER, flavor INTEGER, content_rect BLOB, badge_type INTEGER, icon_variant INTEGER, interpolation INTEGER, externalGeneratorDataHash INTEGER)"];
  [(QLSqliteDatabase *)self->_database execute:"CREATE UNIQUE INDEX size ON thumbnails (file_id, size, icon_mode, badge_type, icon_variant, interpolation, externalGeneratorDataHash)"];
  [(QLSqliteDatabase *)self->_database execute:"CREATE INDEX last_hit_date ON thumbnails (last_hit_date)"];
  [(QLSqliteDatabase *)self->_database execute:"CREATE TABLE reserved_buffer (location INTEGER, length INTEGER)"];
  [(QLSqliteDatabase *)self->_database execute:"CREATE UNIQUE INDEX location_reserved_buffer ON reserved_buffer (location)"];
  [(QLSqliteDatabase *)self->_database execute:"CREATE TABLE missing_remote_thumbnails (fileProviderId TEXT, itemId TEXT, version BLOB, date REAL)"];
  database = self->_database;

  [(QLSqliteDatabase *)database execute:"CREATE UNIQUE INDEX missing_remote_thumbnails_index ON missing_remote_thumbnails (fileProviderId, itemId)"];
}

- (void)_deleteAllTables
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(QLSqliteDatabase *)self->_database prepareStatement:"SELECT name FROM sqlite_master WHERE type='table'"];
  v19 = v3;
  if (v3)
  {
    v4 = v3;
    v5 = objc_opt_new();
    v18 = 0;
    while ([(QLSqliteDatabase *)self->_database stepStatement:v4 didReturnData:&v18]&& (v18 & 1) != 0)
    {
      v6 = [(QLSqliteDatabase *)self->_database newStringFromColumn:0 inStatement:v4 uniqueInStringTable:0];
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"DROP TABLE %s", objc_msgSend(v6, "UTF8String")];
      [v5 addObject:v7];
    }

    [(QLSqliteDatabase *)self->_database finalizeStatement:&v19];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          -[QLSqliteDatabase execute:](self->_database, "execute:", [*(*(&v14 + 1) + 8 * i) UTF8String]);
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v10);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (unint64_t)fileEntryCount
{
  if (![(QLSqliteDatabase *)self->_database isOpened])
  {
    return 0;
  }

  v3 = [(QLSqliteDatabase *)self->_database prepareStatement:"SELECT sum(count) FROM (SELECT COUNT(*) AS count FROM basic_files UNION ALL SELECT COUNT(*) AS count FROM provider_files)"];
  v7 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  [(QLSqliteDatabase *)self->_database stepStatement:v3];
  v5 = [(QLSqliteDatabase *)self->_database unsignedLongLongFromColumn:0 inStatement:v4];
  [(QLSqliteDatabase *)self->_database finalizeStatement:&v7];
  return v5;
}

- (unint64_t)thumbnailCount
{
  if (![(QLSqliteDatabase *)self->_database isOpened])
  {
    return 0;
  }

  v3 = [(QLSqliteDatabase *)self->_database prepareStatement:"SELECT COUNT(*) FROM thumbnails"];
  v7 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  [(QLSqliteDatabase *)self->_database stepStatement:v3];
  v5 = [(QLSqliteDatabase *)self->_database unsignedLongLongFromColumn:0 inStatement:v4];
  [(QLSqliteDatabase *)self->_database finalizeStatement:&v7];
  return v5;
}

- (void)noteRemoteThumbnailMissingForItems:(id)items
{
  itemsCopy = items;
  if ([itemsCopy count])
  {
    if ([itemsCopy count])
    {
      v5 = 0;
      v6 = @"INSERT OR REPLACE INTO missing_remote_thumbnails(fileProviderId, itemId, version, date) VALUES ";
      do
      {
        if (v5)
        {
          v7 = [(__CFString *)v6 stringByAppendingString:@", "];

          v6 = v7;
        }

        v8 = [(__CFString *)v6 stringByAppendingString:@"(?, ?, ?, ?)"];

        ++v5;
        v6 = v8;
      }

      while (v5 < [itemsCopy count]);
    }

    else
    {
      v8 = @"INSERT OR REPLACE INTO missing_remote_thumbnails(fileProviderId, itemId, version, date) VALUES ";
    }

    v9 = [(QLSqliteDatabase *)self->_database prepareStatement:[(__CFString *)v8 UTF8String]];
    v23 = v9;
    if ([itemsCopy count])
    {
      v10 = 0;
      v11 = 4;
      do
      {
        database = self->_database;
        v13 = [itemsCopy objectAtIndexedSubscript:v10];
        providerDomainID = [v13 providerDomainID];
        [(QLSqliteDatabase *)database bindObject:providerDomainID atIndex:(v11 - 3) inStatement:v9];

        v15 = self->_database;
        v16 = [itemsCopy objectAtIndexedSubscript:v10];
        itemIdentifier = [v16 itemIdentifier];
        [(QLSqliteDatabase *)v15 bindObject:itemIdentifier atIndex:(v11 - 2) inStatement:v9];

        v18 = self->_database;
        v19 = [itemsCopy objectAtIndexedSubscript:v10];
        itemVersion = [v19 itemVersion];
        contentVersion = [itemVersion contentVersion];
        [(QLSqliteDatabase *)v18 bindObject:contentVersion atIndex:(v11 - 1) inStatement:v9];

        v22 = self->_database;
        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        [(QLSqliteDatabase *)v22 bindDouble:v11 atIndex:v9 inStatement:?];
        ++v10;
        v11 = (v11 + 4);
      }

      while ([itemsCopy count] > v10);
    }

    [(QLSqliteDatabase *)self->_database stepStatement:v9];
    [(QLSqliteDatabase *)self->_database finalizeStatement:&v23];
  }
}

- (id)itemsGroupedByProviderDomain:(id)domain
{
  v21 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = domainCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        providerDomainID = [v10 providerDomainID];
        array = [dictionary objectForKeyedSubscript:providerDomainID];

        if (!array)
        {
          array = [MEMORY[0x277CBEB18] array];
          providerDomainID2 = [v10 providerDomainID];
          [dictionary setObject:array forKeyedSubscript:providerDomainID2];
        }

        [array addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)noteRemoteThumbnailPresentForItems:(id)items
{
  itemsCopy = items;
  if ([itemsCopy count])
  {
    v5 = [(QLCacheIndexDatabase *)self itemsGroupedByProviderDomain:itemsCopy];
    v6 = self->_database;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__QLCacheIndexDatabase_noteRemoteThumbnailPresentForItems___block_invoke;
    v8[3] = &unk_279ADCFC0;
    v9 = v6;
    v10 = "DELETE FROM missing_remote_thumbnails WHERE fileProviderId = ? AND itemId IN (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
    v7 = v6;
    [v5 enumerateKeysAndObjectsUsingBlock:v8];
  }
}

void __59__QLCacheIndexDatabase_noteRemoteThumbnailPresentForItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * v12) itemIdentifier];
        [v7 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v15 = [*(a1 + 32) prepareStatement:*(a1 + 40)];
  [*(a1 + 32) bindObject:v5 atIndex:1 inStatement:v15];
  [*(a1 + 32) runStatement:v15 withBoundObjects:v7 startingAtIndex:2 stepHandler:0];
  [*(a1 + 32) finalizeStatement:&v15];

  v14 = *MEMORY[0x277D85DE8];
}

- (id)itemsAfterFilteringOutItemsWithMissingThumbnails:(id)thumbnails
{
  v4 = [(QLCacheIndexDatabase *)self itemsGroupedByProviderDomain:thumbnails];
  v5 = self->_database;
  v19 = [(QLSqliteDatabase *)v5 prepareStatement:"SELECT itemId, version FROM missing_remote_thumbnails WHERE fileProviderId = ? AND itemId IN (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __73__QLCacheIndexDatabase_itemsAfterFilteringOutItemsWithMissingThumbnails___block_invoke;
  v15 = &unk_279ADD010;
  v16 = v5;
  v18 = v19;
  v7 = v6;
  v17 = v7;
  v8 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:&v12];
  [(QLSqliteDatabase *)v8 finalizeStatement:&v19, v12, v13, v14, v15];
  v9 = v17;
  v10 = v7;

  return v10;
}

void __73__QLCacheIndexDatabase_itemsAfterFilteringOutItemsWithMissingThumbnails___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy_;
  v47 = __Block_byref_object_dispose_;
  v48 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v39 objects:v50 count:16];
  if (v9)
  {
    v10 = *v40;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v39 + 1) + 8 * i);
        v13 = [v12 itemVersion];
        v14 = [v13 contentVersion];
        v15 = [v12 itemIdentifier];
        [v7 setObject:v14 forKeyedSubscript:v15];
      }

      v9 = [v8 countByEnumeratingWithState:&v39 objects:v50 count:16];
    }

    while (v9);
  }

  [*(a1 + 32) bindObject:v5 atIndex:1 inStatement:*(a1 + 48)];
  v16 = *(a1 + 32);
  v17 = *(a1 + 48);
  v18 = [v7 allKeys];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __73__QLCacheIndexDatabase_itemsAfterFilteringOutItemsWithMissingThumbnails___block_invoke_236;
  v34[3] = &unk_279ADCFE8;
  v19 = *(a1 + 32);
  v20 = *(a1 + 48);
  v35 = v19;
  v38 = v20;
  v21 = v7;
  v36 = v21;
  v37 = &v43;
  [v16 runStatement:v17 withBoundObjects:v18 startingAtIndex:2 stepHandler:v34];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v22 = v8;
  v23 = [v22 countByEnumeratingWithState:&v30 objects:v49 count:16];
  if (v23)
  {
    v24 = *v31;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = *(*(&v30 + 1) + 8 * j);
        v27 = v44[5];
        v28 = [v26 itemIdentifier];
        LOBYTE(v27) = [v27 containsObject:v28];

        if ((v27 & 1) == 0)
        {
          [*(a1 + 40) addObject:v26];
        }
      }

      v23 = [v22 countByEnumeratingWithState:&v30 objects:v49 count:16];
    }

    while (v23);
  }

  _Block_object_dispose(&v43, 8);
  v29 = *MEMORY[0x277D85DE8];
}

uint64_t __73__QLCacheIndexDatabase_itemsAfterFilteringOutItemsWithMissingThumbnails___block_invoke_236(uint64_t a1)
{
  v2 = [*(a1 + 32) newStringFromColumn:0 inStatement:*(a1 + 56) uniqueInStringTable:0];
  v3 = [*(a1 + 32) newDataFromColumn:1 inStatement:*(a1 + 56) copyBytes:0];
  v4 = [*(a1 + 40) objectForKeyedSubscript:v2];
  if (([v4 isEqual:v3] & 1) != 0 || !v3 && !objc_msgSend(v4, "length"))
  {
    [*(*(*(a1 + 48) + 8) + 40) addObject:v2];
  }

  return 1;
}

- (BOOL)itemIsMissingRemoteThumbnail:(id)thumbnail
{
  thumbnailCopy = thumbnail;
  v5 = self->_database;
  v6 = [(QLSqliteDatabase *)v5 prepareStatement:"SELECT version FROM missing_remote_thumbnails WHERE fileProviderId = ? AND itemId = ?"];
  v21 = v6;
  providerDomainID = [thumbnailCopy providerDomainID];
  [(QLSqliteDatabase *)v5 bindObject:providerDomainID atIndex:1 inStatement:v6];

  itemIdentifier = [thumbnailCopy itemIdentifier];
  [(QLSqliteDatabase *)v5 bindObject:itemIdentifier atIndex:2 inStatement:v6];

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__QLCacheIndexDatabase_itemIsMissingRemoteThumbnail___block_invoke;
  v12[3] = &unk_279ADCFE8;
  v9 = v5;
  v13 = v9;
  v16 = v6;
  v10 = thumbnailCopy;
  v14 = v10;
  v15 = &v17;
  [(QLSqliteDatabase *)v9 runStatement:v6 stepHandler:v12];
  [(QLSqliteDatabase *)v9 finalizeStatement:&v21];
  LOBYTE(v6) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return v6;
}

BOOL __53__QLCacheIndexDatabase_itemIsMissingRemoteThumbnail___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) newDataFromColumn:0 inStatement:*(a1 + 56) copyBytes:0];
  v3 = [*(a1 + 40) itemVersion];
  v4 = [v3 contentVersion];

  if (([v4 isEqualToData:v2] & 1) != 0 || !v2 && !objc_msgSend(v4, "length"))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v5 = *(*(*(a1 + 48) + 8) + 24);

  return (v5 & 1) == 0;
}

- (void)initWithPath:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)doesExist
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)isValid
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)insertOrUpdateThumbnailWithVersionedFileIdentifier:(_BYTE *)a1 shouldInvalidAllThumbnailSizes:(uint64_t)a2 added:(os_log_t)log .cold.1(_BYTE *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = " not";
  if (*a1)
  {
    v3 = "";
  }

  v5 = 136315394;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_2615D3000, log, OS_LOG_TYPE_DEBUG, "all thumbnails should%s be invalidate for %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __55__QLCacheIndexDatabase_removeThumbnailsForDeletedFiles__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)removeThumbnailsOlderThanDate:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeFilesFromUninstalledFileProvidersWithIdentifiers:whichAreRemaining:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)removeFilesFromUninstalledFileProvidersWithIdentifiers:whichAreRemaining:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addReservedBufferWithBlobInfo:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 134218240;
  v6 = [a1 location];
  v7 = 2048;
  v8 = [a1 length];
  _os_log_debug_impl(&dword_2615D3000, a2, OS_LOG_TYPE_DEBUG, "Adding reserved buffer (%llu, %llu)", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end