@interface WBBookmarkDatabaseSyncData
+ (WBBookmarkDatabaseSyncData)databaseSyncDataWithContentsOfData:(id)data;
+ (id)databaseSyncDataInDatabase:(void *)database databaseAccessor:(id)accessor;
- (NSDictionary)recordZoneIDsToHashGenerators;
- (NSDictionary)recordZoneIDsToLastServerChangeTokens;
- (WBBookmarkDatabaseSyncData)init;
- (WBBookmarkDatabaseSyncData)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)nextChangeID;
- (void)clearAllLastServerChangeTokens;
- (void)encodeWithCoder:(id)coder;
- (void)setHashGenerator:(id)generator forRecordZoneID:(id)d;
- (void)writeToDatabase:(void *)database databaseAccessor:(id)accessor;
@end

@implementation WBBookmarkDatabaseSyncData

+ (WBBookmarkDatabaseSyncData)databaseSyncDataWithContentsOfData:(id)data
{
  v10 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v4 = WBS_LOG_CHANNEL_PREFIXCloudBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(WBBookmarkDatabaseSyncData *)v4 databaseSyncDataWithContentsOfData:dataCopy];
  }

  v5 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:dataCopy error:0];
  [v5 setClass:objc_opt_class() forClassName:@"CloudBookmarkDatabaseSyncData"];
  v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];
  [v5 finishDecoding];
  v7 = WBS_LOG_CHANNEL_PREFIXCloudBookmarks();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [WBBookmarkDatabaseSyncData databaseSyncDataWithContentsOfData:v7];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)databaseSyncDataInDatabase:(void *)database databaseAccessor:(id)accessor
{
  v5 = [accessor copySyncDataWithDatabase:database];
  v6 = [self databaseSyncDataWithContentsOfData:v5];

  return v6;
}

- (WBBookmarkDatabaseSyncData)init
{
  v15.receiver = self;
  v15.super_class = WBBookmarkDatabaseSyncData;
  v2 = [(WBBookmarkDatabaseSyncData *)&v15 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    recordZoneIDsToLastServerChangeTokens = v2->_recordZoneIDsToLastServerChangeTokens;
    v2->_recordZoneIDsToLastServerChangeTokens = dictionary;

    v5 = [MEMORY[0x277CBEB98] set];
    recordIDsToRefresh = v2->_recordIDsToRefresh;
    v2->_recordIDsToRefresh = v5;

    v7 = [MEMORY[0x277CBEB98] set];
    auxiliaryRecordIDsToDelete = v2->_auxiliaryRecordIDsToDelete;
    v2->_auxiliaryRecordIDsToDelete = v7;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    recordZoneIDsToHashGenerators = v2->_recordZoneIDsToHashGenerators;
    v2->_recordZoneIDsToHashGenerators = dictionary2;

    v11 = [MEMORY[0x277CBEB98] set];
    idsOfRecordZonesToRefresh = v2->_idsOfRecordZonesToRefresh;
    v2->_idsOfRecordZonesToRefresh = v11;

    v13 = v2;
  }

  return v2;
}

- (void)writeToDatabase:(void *)database databaseAccessor:(id)accessor
{
  accessorCopy = accessor;
  encodedDatabaseSyncData = [(WBBookmarkDatabaseSyncData *)self encodedDatabaseSyncData];
  v8 = WBS_LOG_CHANNEL_PREFIXCloudBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [WBBookmarkDatabaseSyncData writeToDatabase:v8 databaseAccessor:encodedDatabaseSyncData];
  }

  [accessorCopy setSyncData:encodedDatabaseSyncData database:database];
}

- (NSDictionary)recordZoneIDsToLastServerChangeTokens
{
  v2 = [(NSMutableDictionary *)self->_recordZoneIDsToLastServerChangeTokens copy];

  return v2;
}

- (void)clearAllLastServerChangeTokens
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  recordZoneIDsToLastServerChangeTokens = self->_recordZoneIDsToLastServerChangeTokens;
  self->_recordZoneIDsToLastServerChangeTokens = dictionary;

  v5 = [MEMORY[0x277CBEB98] set];
  recordIDsToRefresh = self->_recordIDsToRefresh;
  self->_recordIDsToRefresh = v5;

  lastPrivateDatabaseServerChangeToken = self->_lastPrivateDatabaseServerChangeToken;
  self->_lastPrivateDatabaseServerChangeToken = 0;

  lastSharedDatabaseServerChangeToken = self->_lastSharedDatabaseServerChangeToken;
  self->_lastSharedDatabaseServerChangeToken = 0;

  v9 = [MEMORY[0x277CBEB98] set];
  idsOfRecordZonesToRefresh = self->_idsOfRecordZonesToRefresh;
  self->_idsOfRecordZonesToRefresh = v9;

  MEMORY[0x2821F96F8]();
}

- (WBBookmarkDatabaseSyncData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v49.receiver = self;
  v49.super_class = WBBookmarkDatabaseSyncData;
  v5 = [(WBBookmarkDatabaseSyncData *)&v49 init];
  if (v5)
  {
    v5->_lastChangeID = [coderCopy decodeInt64ForKey:@"LastChangeID"];
    v5->_didNotSaveRecordsAfterMigration = [coderCopy decodeBoolForKey:@"DidNotSaveRecordsAfterMigration"];
    v5->_minimumSyncAPIVersion = [coderCopy decodeIntegerForKey:@"MinimumAPIVersion"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"RecordZoneIDsToLastServerChangeTokens"];
    v11 = v10;
    if (v10)
    {
      dictionary = v10;
    }

    else
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    recordZoneIDsToLastServerChangeTokens = v5->_recordZoneIDsToLastServerChangeTokens;
    v5->_recordZoneIDsToLastServerChangeTokens = dictionary;

    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"RecordIDsToRefresh"];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = [MEMORY[0x277CBEB98] set];
    }

    recordIDsToRefresh = v5->_recordIDsToRefresh;
    v5->_recordIDsToRefresh = v19;

    v21 = MEMORY[0x277CBEB98];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"AuxiliaryRecordIDsToDelete"];
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = [MEMORY[0x277CBEB98] set];
    }

    auxiliaryRecordIDsToDelete = v5->_auxiliaryRecordIDsToDelete;
    v5->_auxiliaryRecordIDsToDelete = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LastPrivateDatabaseServerChangeToken"];
    lastPrivateDatabaseServerChangeToken = v5->_lastPrivateDatabaseServerChangeToken;
    v5->_lastPrivateDatabaseServerChangeToken = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LastSharedDatabaseServerChangeToken"];
    lastSharedDatabaseServerChangeToken = v5->_lastSharedDatabaseServerChangeToken;
    v5->_lastSharedDatabaseServerChangeToken = v30;

    v32 = MEMORY[0x277CBEB98];
    v33 = objc_opt_class();
    v34 = objc_opt_class();
    v35 = [v32 setWithObjects:{v33, v34, objc_opt_class(), 0}];
    v36 = [coderCopy decodeObjectOfClasses:v35 forKey:@"RecordZoneIDsToHashGenerators"];
    v37 = v36;
    if (v36)
    {
      dictionary2 = v36;
    }

    else
    {
      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    }

    recordZoneIDsToHashGenerators = v5->_recordZoneIDsToHashGenerators;
    v5->_recordZoneIDsToHashGenerators = dictionary2;

    v40 = MEMORY[0x277CBEB98];
    v41 = objc_opt_class();
    v42 = [v40 setWithObjects:{v41, objc_opt_class(), 0}];
    v43 = [coderCopy decodeObjectOfClasses:v42 forKey:@"IDsOfRecordZonesToRefresh"];
    v44 = v43;
    if (v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = [MEMORY[0x277CBEB98] set];
    }

    idsOfRecordZonesToRefresh = v5->_idsOfRecordZonesToRefresh;
    v5->_idsOfRecordZonesToRefresh = v45;

    v47 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:self->_lastChangeID forKey:@"LastChangeID"];
  [coderCopy encodeInteger:self->_minimumSyncAPIVersion forKey:@"MinimumAPIVersion"];
  if (self->_didNotSaveRecordsAfterMigration)
  {
    [coderCopy encodeBool:1 forKey:@"DidNotSaveRecordsAfterMigration"];
  }

  if ([(NSMutableDictionary *)self->_recordZoneIDsToLastServerChangeTokens count])
  {
    [coderCopy encodeObject:self->_recordZoneIDsToLastServerChangeTokens forKey:@"RecordZoneIDsToLastServerChangeTokens"];
  }

  if ([(NSSet *)self->_recordIDsToRefresh count])
  {
    [coderCopy encodeObject:self->_recordIDsToRefresh forKey:@"RecordIDsToRefresh"];
  }

  v4 = [(NSSet *)self->_auxiliaryRecordIDsToDelete count];
  v5 = coderCopy;
  if (v4)
  {
    [coderCopy encodeObject:self->_auxiliaryRecordIDsToDelete forKey:@"AuxiliaryRecordIDsToDelete"];
    v5 = coderCopy;
  }

  [v5 encodeObject:self->_lastPrivateDatabaseServerChangeToken forKey:@"LastPrivateDatabaseServerChangeToken"];
  [coderCopy encodeObject:self->_lastSharedDatabaseServerChangeToken forKey:@"LastSharedDatabaseServerChangeToken"];
  if ([(NSMutableDictionary *)self->_recordZoneIDsToHashGenerators count])
  {
    [coderCopy encodeObject:self->_recordZoneIDsToHashGenerators forKey:@"RecordZoneIDsToHashGenerators"];
  }

  if ([(NSSet *)self->_idsOfRecordZonesToRefresh count])
  {
    [coderCopy encodeObject:self->_idsOfRecordZonesToRefresh forKey:@"IDsOfRecordZonesToRefresh"];
  }
}

- (int64_t)nextChangeID
{
  v2 = self->_lastChangeID + 1;
  self->_lastChangeID = v2;
  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(NSMutableDictionary *)self->_recordZoneIDsToLastServerChangeTokens mutableCopy];
  v6 = *(v4 + 1);
  *(v4 + 1) = v5;

  v7 = [(NSSet *)self->_recordIDsToRefresh copy];
  v8 = *(v4 + 8);
  *(v4 + 8) = v7;

  v9 = [(NSSet *)self->_auxiliaryRecordIDsToDelete copy];
  v10 = *(v4 + 9);
  *(v4 + 9) = v9;

  objc_storeStrong(v4 + 5, self->_lastPrivateDatabaseServerChangeToken);
  objc_storeStrong(v4 + 6, self->_lastSharedDatabaseServerChangeToken);
  v11 = [(NSMutableDictionary *)self->_recordZoneIDsToHashGenerators mutableCopy];
  v12 = *(v4 + 3);
  *(v4 + 3) = v11;

  v13 = [(NSSet *)self->_idsOfRecordZonesToRefresh mutableCopy];
  v14 = *(v4 + 10);
  *(v4 + 10) = v13;

  *(v4 + 32) = self->_didNotSaveRecordsAfterMigration;
  *(v4 + 2) = self->_lastChangeID;
  return v4;
}

- (NSDictionary)recordZoneIDsToHashGenerators
{
  v2 = [(NSMutableDictionary *)self->_recordZoneIDsToHashGenerators copy];

  return v2;
}

- (void)setHashGenerator:(id)generator forRecordZoneID:(id)d
{
  dCopy = d;
  v7 = [generator copy];
  [(NSMutableDictionary *)self->_recordZoneIDsToHashGenerators setObject:v7 forKeyedSubscript:dCopy];
}

+ (void)databaseSyncDataWithContentsOfData:(void *)a1 .cold.1(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 length];
  OUTLINED_FUNCTION_0_5(&dword_272C20000, v4, v5, "Trying to create WBBookmarkDatabaseSyncData from data of size %lu", v6, v7, v8, v9, 0);

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)databaseSyncDataWithContentsOfData:(os_log_t)log .cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_272C20000, log, OS_LOG_TYPE_ERROR, "Failed to create WBBookmarkDatabaseSyncData with exception: %{public}@", buf, 0xCu);
}

- (void)writeToDatabase:(void *)a1 databaseAccessor:(void *)a2 .cold.1(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 length];
  OUTLINED_FUNCTION_0_5(&dword_272C20000, v4, v5, "Writing sync data of size %lu to database", v6, v7, v8, v9, 0);

  v10 = *MEMORY[0x277D85DE8];
}

@end