@interface BRCDatabaseBackupStorage
- (BOOL)addRecord:(id)record;
- (BOOL)addRecordIfNotExist:(id)exist;
- (BOOL)attachDatabase:(id)database error:(id *)error;
- (BOOL)clearStagedIDs:(id)ds;
- (BOOL)fixUpBackupDetector:(id)detector;
- (BOOL)negateIDs:(id)ds;
- (BOOL)setForeignKeys:(id)keys enabled:(BOOL)enabled;
- (BOOL)setUpDatabaseWithError:(id *)error;
- (BOOL)updateAttachedDatabase;
- (BOOL)updateIDs:(id)ds;
- (BRCDatabaseBackupStorage)initWithDatabaseURL:(id)l;
- (id)backupManifestEnumerator:(id)enumerator;
- (id)docIDForURL:(id)l;
- (void)dealloc;
- (void)flushAndClose;
- (void)populateNewColumnsInDatabase:(id)database forRecord:(id)record basePath:(id)path;
- (void)populateNewColumnsWithBasePath:(id)path;
- (void)updateAttachedDatabase;
@end

@implementation BRCDatabaseBackupStorage

- (BRCDatabaseBackupStorage)initWithDatabaseURL:(id)l
{
  v30 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v22.receiver = self;
  v22.super_class = BRCDatabaseBackupStorage;
  v6 = [(BRCDatabaseBackupStorage *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_databaseURL, l);
    v8 = [[BRCPQLConnection alloc] initWithLabel:@"backup-db" dbCorruptionHandler:0];
    database = v7->_database;
    v7->_database = v8;

    v21 = 0;
    v10 = [(BRCDatabaseBackupStorage *)v7 setUpDatabaseWithError:&v21];
    v11 = v21;
    if (v10)
    {
      v12 = *MEMORY[0x277CBECA8];
      v23[0] = *MEMORY[0x277CBE7A0];
      v23[1] = v12;
      v13 = *MEMORY[0x277CBE848];
      v23[2] = *MEMORY[0x277CBE7C8];
      v23[3] = v13;
      v23[4] = *MEMORY[0x277CBE868];
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:5];
      urlPropertiesToFetch = v7->_urlPropertiesToFetch;
      v7->_urlPropertiesToFetch = v14;
    }

    else
    {
      v16 = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, 0x90u))
      {
        path = [lCopy path];
        *buf = 138412802;
        v25 = path;
        v26 = 2112;
        v27 = v11;
        v28 = 2112;
        v29 = v16;
        _os_log_error_impl(&dword_223E7A000, v17, 0x90u, "[ERROR] Can't open database at %@: %@%@", buf, 0x20u);
      }

      urlPropertiesToFetch = v7;
      v7 = 0;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)dealloc
{
  v3 = self->_databaseURL;
  v4 = self->_database;
  serialQueue = [(BRCPQLConnection *)v4 serialQueue];

  if (serialQueue)
  {
    serialQueue2 = [(BRCPQLConnection *)v4 serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__BRCDatabaseBackupStorage_dealloc__block_invoke;
    block[3] = &unk_2784FF478;
    v9 = v4;
    v10 = v3;
    dispatch_sync(serialQueue2, block);
  }

  v7.receiver = self;
  v7.super_class = BRCDatabaseBackupStorage;
  [(BRCDatabaseBackupStorage *)&v7 dealloc];
}

void __35__BRCDatabaseBackupStorage_dealloc__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v9 = 0;
  v3 = [v2 brc_closeWithError:&v9];
  v4 = v9;
  if ((v3 & 1) == 0)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, 0x90u))
    {
      v8 = [*(a1 + 40) path];
      *buf = 138412802;
      v11 = v8;
      v12 = 2112;
      v13 = v4;
      v14 = 2112;
      v15 = v5;
      _os_log_error_impl(&dword_223E7A000, v6, 0x90u, "[ERROR] Can't close database at %@: %@%@", buf, 0x20u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)setUpDatabaseWithError:(id *)error
{
  LODWORD(v5) = [(BRCPQLConnection *)self->_database openAtURL:self->_databaseURL withFlags:3145734 error:error];
  if (v5)
  {
    userVersion = [(BRCPQLConnection *)self->_database userVersion];
    integerValue = [userVersion integerValue];

    if (integerValue > 0 || (v8 = [(BRCPQLConnection *)self->_database execute:@"create table backup_manifest (relative_path blob not null, file_id integer, doc_id integer, gen_count integer, is_directory integer, new_file_id integer, new_doc_id integer, new_gen_count integer)"], [(BRCPQLConnection *)self->_database setUserVersion:1], v8))
    {
      [(BRCPQLConnection *)self->_database useBatchingWithDelay:1000 changeCount:0.5];
      LOBYTE(v5) = 1;
    }

    else if (error)
    {
      lastError = [(BRCPQLConnection *)self->_database lastError];
      v5 = lastError;
      LOBYTE(v5) = 0;
      *error = lastError;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (BOOL)addRecord:(id)record
{
  recordCopy = record;
  database = self->_database;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__BRCDatabaseBackupStorage_addRecord___block_invoke;
  v8[3] = &unk_278500FA8;
  v9 = recordCopy;
  selfCopy = self;
  v6 = recordCopy;
  LOBYTE(database) = [(BRCPQLConnection *)database performWithFlags:1 action:v8];

  return database;
}

uint64_t __38__BRCDatabaseBackupStorage_addRecord___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) relativePath];
  v5 = [v4 UTF8String];
  v6 = [*(a1 + 32) fileID];
  v7 = [v6 longLongValue];
  v8 = [*(a1 + 32) docID];
  v9 = [v3 execute:{@"INSERT INTO backup_manifest (relative_path, file_id, doc_id, gen_count, is_directory, new_file_id, new_doc_id, new_gen_count) VALUES (%s, %lld, %lld, %d, %d, NULL, NULL, NULL)", v5, v7, objc_msgSend(v8, "longLongValue"), objc_msgSend(*(a1 + 32), "genCount"), objc_msgSend(*(a1 + 32), "isDirectory")}];

  if ((v9 & 1) == 0)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, 0x90u))
    {
      v14 = [*(a1 + 40) databaseURL];
      v15 = [v14 path];
      v16 = [v3 lastError];
      *buf = 138412802;
      v18 = v15;
      v19 = 2112;
      v20 = v16;
      v21 = 2112;
      v22 = v10;
      _os_log_error_impl(&dword_223E7A000, v11, 0x90u, "[ERROR] Can't insert into the database %@: %@%@", buf, 0x20u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)addRecordIfNotExist:(id)exist
{
  existCopy = exist;
  database = self->_database;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__BRCDatabaseBackupStorage_addRecordIfNotExist___block_invoke;
  v8[3] = &unk_278500FA8;
  v9 = existCopy;
  selfCopy = self;
  v6 = existCopy;
  LOBYTE(database) = [(BRCPQLConnection *)database performWithFlags:1 action:v8];

  return database;
}

uint64_t __48__BRCDatabaseBackupStorage_addRecordIfNotExist___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = (a1 + 32);
  v5 = [*(a1 + 32) relativePath];
  v6 = [v3 numberWithSQL:{@"SELECT 1 FROM backup_manifest WHERE relative_path = %@", v5}];

  if ([v6 BOOLValue])
  {
    v7 = 1;
  }

  else
  {
    v20 = v6;
    v8 = [*v4 relativePath];
    v9 = [v8 UTF8String];
    v10 = [*v4 fileID];
    v11 = [v10 longLongValue];
    v12 = [*v4 docID];
    v7 = [v3 execute:{@"INSERT INTO backup_manifest (relative_path, file_id, doc_id, gen_count, is_directory, new_file_id, new_doc_id, new_gen_count) VALUES (%s, %lld, %lld, %d, %d, NULL, NULL, NULL)", v9, v11, objc_msgSend(v12, "longLongValue"), objc_msgSend(*v4, "genCount"), objc_msgSend(*v4, "isDirectory")}];

    if (v7)
    {
      if (![v3 changes])
      {
        v7 = 1;
        goto LABEL_10;
      }

      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __48__BRCDatabaseBackupStorage_addRecordIfNotExist___block_invoke_cold_1((a1 + 32), v13, v14);
      }
    }

    else
    {
      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, 0x90u))
      {
        v17 = [*(a1 + 40) databaseURL];
        v18 = [v17 path];
        v19 = [v3 lastError];
        *buf = 138412802;
        v22 = v18;
        v23 = 2112;
        v24 = v19;
        v25 = 2112;
        v26 = v13;
        _os_log_error_impl(&dword_223E7A000, v14, 0x90u, "[ERROR] Can't insert into the database %@: %@%@", buf, 0x20u);
      }
    }

    v6 = v20;
  }

LABEL_10:

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)flushAndClose
{
  serialQueue = [(BRCPQLConnection *)self->_database serialQueue];

  if (serialQueue)
  {
    serialQueue2 = [(BRCPQLConnection *)self->_database serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__BRCDatabaseBackupStorage_flushAndClose__block_invoke;
    block[3] = &unk_2784FF450;
    block[4] = self;
    dispatch_sync(serialQueue2, block);
  }
}

void __41__BRCDatabaseBackupStorage_flushAndClose__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) database];
  v3 = [v2 execute:@"CREATE UNIQUE INDEX relative_path_index ON backup_manifest (relative_path)"];

  if ((v3 & 1) == 0)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      __41__BRCDatabaseBackupStorage_flushAndClose__block_invoke_cold_1(v1, v4, v5);
    }
  }

  v6 = [*v1 database];
  [v6 makeNextFlushFullSync];

  v7 = [*v1 database];
  [v7 flush];

  v8 = [*v1 database];
  v16 = 0;
  v9 = [v8 close:&v16];
  v10 = v16;

  if ((v9 & 1) == 0)
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, 0x90u))
    {
      v14 = [*v1 databaseURL];
      v15 = [v14 path];
      *buf = 138412802;
      v18 = v15;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      _os_log_error_impl(&dword_223E7A000, v12, 0x90u, "[ERROR] Can't close database at %@: %@%@", buf, 0x20u);
    }
  }

  [*v1 setDatabase:0];

  v13 = *MEMORY[0x277D85DE8];
}

- (id)backupManifestEnumerator:(id)enumerator
{
  v3 = [enumerator fetch:@"SELECT * FROM backup_manifest WHERE new_file_id IS NULL"];
  v4 = [v3 enumerateObjects:&__block_literal_global_28];

  return v4;
}

BRCDatabaseBackupRecord *__53__BRCDatabaseBackupStorage_backupManifestEnumerator___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[BRCDatabaseBackupRecord alloc] initWithPQLResultSet:v2];

  return v3;
}

- (void)populateNewColumnsWithBasePath:(id)path
{
  v16 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v13 = pathCopy;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_INFO, "[INFO] Populating new columns with base path: %@%@", buf, 0x16u);
  }

  database = self->_database;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__BRCDatabaseBackupStorage_populateNewColumnsWithBasePath___block_invoke;
  v10[3] = &unk_278500FA8;
  v10[4] = self;
  v11 = pathCopy;
  v8 = pathCopy;
  [(BRCPQLConnection *)database performWithFlags:5 action:v10];

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __59__BRCDatabaseBackupStorage_populateNewColumnsWithBasePath___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) backupManifestEnumerator:v3];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        [*(a1 + 32) populateNewColumnsInDatabase:v3 forRecord:v9 basePath:{*(a1 + 40), v13}];
        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)populateNewColumnsInDatabase:(id)database forRecord:(id)record basePath:(id)path
{
  v47 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  recordCopy = record;
  pathCopy = path;
  relativePath = [recordCopy relativePath];
  v12 = [pathCopy stringByAppendingPathComponent:relativePath];

  v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:v12];
  urlPropertiesToFetch = self->_urlPropertiesToFetch;
  v36 = 0;
  v15 = [v13 resourceValuesForKeys:urlPropertiesToFetch error:&v36];
  v16 = v36;
  if (v15)
  {
    v35 = v12;
    v17 = [v15 objectForKeyedSubscript:*MEMORY[0x277CBECA8]];
    docID = [recordCopy docID];
    v34 = v16;
    v19 = databaseCopy;
    if ([docID unsignedLongLongValue])
    {
      v20 = [(BRCDatabaseBackupStorage *)self docIDForURL:v13];
    }

    else
    {
      v20 = 0;
    }

    v22 = [v15 objectForKeyedSubscript:*MEMORY[0x277CBE848]];
    v23 = *([v22 bytes] + 8);
    v24 = brc_bread_crumbs();
    v25 = brc_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      relativePath2 = [recordCopy relativePath];
      *buf = 138413314;
      v38 = v17;
      v39 = 2112;
      v40 = v20;
      v41 = 1024;
      *v42 = v23;
      *&v42[4] = 2112;
      *&v42[6] = relativePath2;
      v43 = 2112;
      v44 = v24;
      _os_log_debug_impl(&dword_223E7A000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] Updating %@ %@ %d into database for %@%@", buf, 0x30u);
    }

    unsignedLongLongValue = [v17 unsignedLongLongValue];
    relativePath3 = [recordCopy relativePath];
    LOBYTE(unsignedLongLongValue) = [v19 execute:{@"UPDATE backup_manifest SET new_file_id = %llu, new_doc_id = %@, new_gen_count = %d WHERE relative_path = %@", unsignedLongLongValue, v20, v23, relativePath3}];

    if ((unsignedLongLongValue & 1) == 0)
    {
      v28 = brc_bread_crumbs();
      v29 = brc_default_log();
      if (os_log_type_enabled(v29, 0x90u))
      {
        relativePath4 = [recordCopy relativePath];
        lastError = [v19 lastError];
        *buf = 138413570;
        v38 = v17;
        v39 = 2112;
        v40 = v20;
        v41 = 1024;
        *v42 = v23;
        *&v42[4] = 2112;
        *&v42[6] = relativePath4;
        v43 = 2112;
        v44 = lastError;
        v45 = 2112;
        v46 = v28;
        _os_log_error_impl(&dword_223E7A000, v29, 0x90u, "[ERROR] Failed to update %@ %@ %d into database for %@: %@%@", buf, 0x3Au);
      }
    }

    databaseCopy = v19;
    v16 = v34;
    v12 = v35;
  }

  else
  {
    v17 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, 0x90u))
    {
      path = [v13 path];
      *buf = 138412802;
      v38 = path;
      v39 = 2112;
      v40 = v16;
      v41 = 2112;
      *v42 = v17;
      _os_log_error_impl(&dword_223E7A000, v20, 0x90u, "[ERROR] Unable to fetch URL properties for %@: %@%@", buf, 0x20u);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (BOOL)attachDatabase:(id)database error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    path = [databaseCopy path];
    *buf = 138412546;
    *&buf[4] = path;
    *&buf[12] = 2112;
    *&buf[14] = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] Attaching database %@%@", buf, 0x16u);
  }

  p_attachedDatabaseURL = &self->_attachedDatabaseURL;
  if (self->_attachedDatabaseURL)
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, 0x90u))
    {
      path2 = [(NSURL *)*p_attachedDatabaseURL path];
      path3 = [databaseCopy path];
      *buf = 138412802;
      *&buf[4] = path2;
      *&buf[12] = 2112;
      *&buf[14] = path3;
      *&buf[22] = 2112;
      v38 = v12;
      _os_log_error_impl(&dword_223E7A000, v13, 0x90u, "[ERROR] Already have attached database %@ while trying to attach database %@.%@", buf, 0x20u);
    }

    v14 = 1;
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v38 = __Block_byref_object_copy__21;
    v39 = __Block_byref_object_dispose__21;
    v40 = 0;
    database = self->_database;
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __49__BRCDatabaseBackupStorage_attachDatabase_error___block_invoke;
    v28 = &unk_278502C70;
    v16 = databaseCopy;
    v29 = v16;
    v30 = buf;
    v14 = [(BRCPQLConnection *)database performWithFlags:1 action:&v25];
    if (v14)
    {
      objc_storeStrong(p_attachedDatabaseURL, database);
    }

    else
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, 0x90u))
      {
        path4 = [v16 path];
        v24 = *(*&buf[8] + 40);
        *v31 = 138412802;
        v32 = path4;
        v33 = 2112;
        v34 = v24;
        v35 = 2112;
        v36 = v17;
        _os_log_error_impl(&dword_223E7A000, v18, 0x90u, "[ERROR] Unable to attach db %@: %@%@", v31, 0x20u);
      }

      if (error)
      {
        *error = *(*&buf[8] + 40);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t __49__BRCDatabaseBackupStorage_attachDatabase_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) path];
  v5 = [v3 execute:{@"ATTACH DATABASE %@ AS clientdb", v4}];

  if ((v5 & 1) == 0)
  {
    v6 = [v3 lastError];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  return v5;
}

- (id)docIDForURL:(id)l
{
  lCopy = l;
  v4 = open([lCopy fileSystemRepresentation], 0);
  if (v4 < 0)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, 0x90u))
    {
      [BRCDatabaseBackupStorage docIDForURL:];
    }

    v6 = 0;
  }

  else
  {
    v5 = v4;
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:GSLibraryGetOrAllocateDocumentId()];
    if (!close(v5))
    {
      goto LABEL_9;
    }

    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, 0x90u))
    {
      [BRCDatabaseBackupStorage docIDForURL:];
    }
  }

LABEL_9:

  return v6;
}

- (BOOL)updateAttachedDatabase
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_attachedDatabaseURL)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      path = [(NSURL *)self->_attachedDatabaseURL path];
      database = self->_database;
      *buf = 138412802;
      v14 = path;
      v15 = 2112;
      v16 = database;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_223E7A000, v4, OS_LOG_TYPE_INFO, "[INFO] Updating attached database %@ %@%@", buf, 0x20u);
    }

    v7 = self->_database;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50__BRCDatabaseBackupStorage_updateAttachedDatabase__block_invoke;
    v12[3] = &unk_2784FFA48;
    v12[4] = self;
    result = [(BRCPQLConnection *)v7 performWithFlags:5 action:v12];
  }

  else
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, 0x90u))
    {
      [BRCDatabaseBackupStorage updateAttachedDatabase];
    }

    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __50__BRCDatabaseBackupStorage_updateAttachedDatabase__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __50__BRCDatabaseBackupStorage_updateAttachedDatabase__block_invoke_cold_1();
  }

  if ([*(a1 + 32) setForeignKeys:v3 enabled:0] && objc_msgSend(*(a1 + 32), "negateIDs:", v3) && objc_msgSend(*(a1 + 32), "updateIDs:", v3) && objc_msgSend(*(a1 + 32), "clearStagedIDs:", v3) && objc_msgSend(*(a1 + 32), "fixUpBackupDetector:", v3) && objc_msgSend(*(a1 + 32), "setForeignKeys:enabled:", v3, 1))
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __50__BRCDatabaseBackupStorage_updateAttachedDatabase__block_invoke_cold_2();
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)setForeignKeys:(id)keys enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  keysCopy = keys;
  v6 = keysCopy;
  if (enabledCopy)
  {
    if (([keysCopy execute:@"PRAGMA foreign_keys = ON"] & 1) == 0)
    {
      v7 = brc_bread_crumbs();
      v8 = brc_default_log();
      if (os_log_type_enabled(v8, 0x90u))
      {
        [BRCDatabaseBackupStorage setForeignKeys:enabled:];
      }

LABEL_9:

      v9 = 0;
      goto LABEL_10;
    }
  }

  else if (([keysCopy execute:@"PRAGMA foreign_keys = OFF"] & 1) == 0)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, 0x90u))
    {
      [BRCDatabaseBackupStorage setForeignKeys:enabled:];
    }

    goto LABEL_9;
  }

  v9 = 1;
LABEL_10:

  return v9;
}

- (BOOL)negateIDs:(id)ds
{
  dsCopy = ds;
  if (([dsCopy execute:@"UPDATE clientdb.client_items SET item_file_id = -item_file_id"] & 1) == 0)
  {
    v6 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, 0x90u))
    {
      [BRCDatabaseBackupStorage negateIDs:];
    }

    goto LABEL_11;
  }

  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [BRCDatabaseBackupStorage negateIDs:];
  }

  if (([dsCopy execute:@"UPDATE clientdb.client_items SET item_doc_id = -item_doc_id"] & 1) == 0)
  {
    v6 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, 0x90u))
    {
      [BRCDatabaseBackupStorage negateIDs:];
    }

LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  v6 = brc_bread_crumbs();
  v7 = 1;
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [BRCDatabaseBackupStorage negateIDs:];
  }

LABEL_12:

  return v7;
}

- (BOOL)updateIDs:(id)ds
{
  dsCopy = ds;
  if (([dsCopy execute:{@"CREATE INDEX file_id_gen_count_index ON backup_manifest(file_id, gen_count)"}] & 1) == 0)
  {
    v12 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, 0x90u))
    {
      [BRCDatabaseBackupStorage updateIDs:];
    }

    goto LABEL_26;
  }

  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [BRCDatabaseBackupStorage updateIDs:];
  }

  if (([dsCopy execute:@"CREATE INDEX doc_id_index ON backup_manifest(doc_id)"] & 1) == 0)
  {
    v12 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, 0x90u))
    {
      [BRCDatabaseBackupStorage updateIDs:];
    }

    goto LABEL_26;
  }

  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [BRCDatabaseBackupStorage updateIDs:];
  }

  if (([dsCopy execute:@"UPDATE clientdb.client_items  SET item_generation = (SELECT new_gen_count FROM backup_manifest WHERE file_id = -clientdb.client_items.item_file_id AND gen_count = clientdb.client_items.item_generation)"] & 1) == 0)
  {
    v12 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, 0x90u))
    {
      [BRCDatabaseBackupStorage updateIDs:];
    }

    goto LABEL_26;
  }

  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [BRCDatabaseBackupStorage updateIDs:];
  }

  if (([dsCopy execute:@"UPDATE OR IGNORE clientdb.client_items  SET item_file_id = (SELECT new_file_id FROM backup_manifest WHERE file_id = -clientdb.client_items.item_file_id)"] & 1) == 0)
  {
    v12 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, 0x90u))
    {
      [BRCDatabaseBackupStorage updateIDs:];
    }

    goto LABEL_26;
  }

  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [BRCDatabaseBackupStorage updateIDs:];
  }

  if (([dsCopy execute:@"UPDATE OR IGNORE clientdb.client_items  SET item_doc_id = (SELECT new_doc_id FROM backup_manifest WHERE doc_id = -clientdb.client_items.item_doc_id)"] & 1) == 0)
  {
    v12 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, 0x90u))
    {
      [BRCDatabaseBackupStorage updateIDs:];
    }

LABEL_26:
    v13 = 0;
    goto LABEL_27;
  }

  v12 = brc_bread_crumbs();
  v13 = 1;
  v14 = brc_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [BRCDatabaseBackupStorage updateIDs:];
  }

LABEL_27:

  return v13;
}

- (BOOL)clearStagedIDs:(id)ds
{
  dsCopy = ds;
  if (([dsCopy execute:@"UPDATE OR IGNORE clientdb.client_items SET item_staged_generation = NULL WHERE item_staged_generation IS NOT NULL"] & 1) == 0)
  {
    v6 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, 0x90u))
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [BRCDatabaseBackupStorage clearStagedIDs:];
  }

  if (([dsCopy execute:@"UPDATE OR IGNORE clientdb.client_items SET item_staged_file_id = NULL WHERE item_staged_file_id IS NOT NULL"] & 1) == 0)
  {
    v6 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, 0x90u))
    {
LABEL_10:
      [BRCDatabaseBackupStorage clearStagedIDs:];
    }

LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  v6 = brc_bread_crumbs();
  v7 = 1;
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [BRCDatabaseBackupStorage clearStagedIDs:];
  }

LABEL_12:

  return v7;
}

- (BOOL)fixUpBackupDetector:(id)detector
{
  v38 = *MEMORY[0x277D85DE8];
  detectorCopy = detector;
  attachedDatabaseURL = [(BRCDatabaseBackupStorage *)self attachedDatabaseURL];
  uRLByDeletingLastPathComponent = [attachedDatabaseURL URLByDeletingLastPathComponent];

  v7 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:@"control-odd" isDirectory:0];
  v8 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:@"control-even" isDirectory:0];
  v9 = [detectorCopy fetchObjectOfClass:objc_opt_class() sql:@"SELECT counter FROM clientdb.backup_detector"];
  v31 = 0;
  v10 = *MEMORY[0x277CBECA8];
  v30 = 0;
  v11 = [v7 getResourceValue:&v31 forKey:v10 error:&v30];
  v12 = v31;
  v13 = v30;
  v27 = v8;
  if (v11)
  {
    v28 = 0;
    v29 = 0;
    v14 = [v8 getResourceValue:&v29 forKey:v10 error:&v28];
    v15 = v29;
    v16 = v28;

    if (v14)
    {
      if ([v9 unsignedLongLongValue])
      {
        v17 = v15;
      }

      else
      {
        v17 = v12;
      }

      unsignedLongLongValue = [v17 unsignedLongLongValue];
      if ([v9 unsignedLongLongValue])
      {
        v19 = v12;
      }

      else
      {
        v19 = v15;
      }

      if ([detectorCopy execute:{@"UPDATE clientdb.backup_detector SET old = %llu, new = %llu", unsignedLongLongValue, -[NSObject unsignedLongLongValue](v19, "unsignedLongLongValue")}])
      {
        v20 = brc_bread_crumbs();
        v21 = 1;
        v22 = brc_default_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [BRCDatabaseBackupStorage fixUpBackupDetector:];
        }

        goto LABEL_20;
      }

      v20 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, 0x90u))
      {
        [BRCDatabaseBackupStorage fixUpBackupDetector:];
      }
    }

    else
    {
      v20 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, 0x90u))
      {
        path = [v27 path];
        *buf = 138412802;
        v33 = path;
        v34 = 2112;
        v35 = v16;
        v36 = 2112;
        v37 = v20;
        _os_log_error_impl(&dword_223E7A000, v22, 0x90u, "[ERROR] Unable to get inode for %@: %@%@", buf, 0x20u);
      }
    }

    v21 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v15 = brc_bread_crumbs();
  v20 = brc_default_log();
  if (os_log_type_enabled(v20, 0x90u))
  {
    path2 = [v7 path];
    *buf = 138412802;
    v33 = path2;
    v34 = 2112;
    v35 = v13;
    v36 = 2112;
    v37 = v15;
    _os_log_error_impl(&dword_223E7A000, v20, 0x90u, "[ERROR] Unable to get inode for %@: %@%@", buf, 0x20u);
  }

  v21 = 0;
  v16 = v13;
LABEL_21:

  v24 = *MEMORY[0x277D85DE8];
  return v21;
}

void __48__BRCDatabaseBackupStorage_addRecordIfNotExist___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = *a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_4(&dword_223E7A000, a2, a3, "[DEBUG] Added record: %@%@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

void __41__BRCDatabaseBackupStorage_flushAndClose__block_invoke_cold_1(id *a1, uint64_t a2, NSObject *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = [*a1 databaseURL];
  v7 = [v6 path];
  v8 = [*a1 database];
  v9 = [v8 lastError];
  v11 = 138412802;
  v12 = v7;
  v13 = 2112;
  v14 = v9;
  v15 = 2112;
  v16 = a2;
  _os_log_error_impl(&dword_223E7A000, a3, 0x90u, "[ERROR] Could not create a unique index %@: %@%@", &v11, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)docIDForURL:.cold.1()
{
  OUTLINED_FUNCTION_18();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [v0 path];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4_3(&dword_223E7A000, v2, v3, "[ERROR] failed closing %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)docIDForURL:.cold.2()
{
  OUTLINED_FUNCTION_18();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [v0 path];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4_3(&dword_223E7A000, v2, v3, "[ERROR] Failed to open %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateAttachedDatabase
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] Not updating attached database because no database has been attached.%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __50__BRCDatabaseBackupStorage_updateAttachedDatabase__block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Beginning update attach database batch: %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __50__BRCDatabaseBackupStorage_updateAttachedDatabase__block_invoke_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Successfully finished updating attach database batch: %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setForeignKeys:enabled:.cold.1()
{
  OUTLINED_FUNCTION_18();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [v0 lastError];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4_3(&dword_223E7A000, v2, v3, "[ERROR] Failed to disable foreign keys: %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setForeignKeys:enabled:.cold.2()
{
  OUTLINED_FUNCTION_18();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [v0 lastError];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4_3(&dword_223E7A000, v2, v3, "[ERROR] Failed to enable foreign keys: %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)negateIDs:.cold.1()
{
  OUTLINED_FUNCTION_18();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [v0 lastError];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4_3(&dword_223E7A000, v2, v3, "[ERROR] Failed to negate file ids: %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)negateIDs:.cold.2()
{
  OUTLINED_FUNCTION_18();
  v9 = *MEMORY[0x277D85DE8];
  [v0 changes];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v1, v2, "[DEBUG] Changed %lld items when negating file ids%@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)negateIDs:.cold.3()
{
  OUTLINED_FUNCTION_18();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [v0 lastError];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4_3(&dword_223E7A000, v2, v3, "[ERROR] Failed to negate doc ids: %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)negateIDs:.cold.4()
{
  OUTLINED_FUNCTION_18();
  v9 = *MEMORY[0x277D85DE8];
  [v0 changes];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v1, v2, "[DEBUG] Changed %lld items when negating doc ids%@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateIDs:.cold.1()
{
  OUTLINED_FUNCTION_18();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [v0 lastError];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4_3(&dword_223E7A000, v2, v3, "[ERROR] Failed to create file_id_gen_count_index, so updating will be incredibly slow: %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateIDs:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Created file_id_gen_count_index%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateIDs:.cold.3()
{
  OUTLINED_FUNCTION_18();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [v0 lastError];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4_3(&dword_223E7A000, v2, v3, "[ERROR] Failed to create doc_id_index, so updating will be incredibly slow: %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateIDs:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Created doc_id_index%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateIDs:.cold.5()
{
  OUTLINED_FUNCTION_18();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [v0 lastError];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4_3(&dword_223E7A000, v2, v3, "[ERROR] Failed to update the gen count: %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateIDs:.cold.6()
{
  OUTLINED_FUNCTION_18();
  v9 = *MEMORY[0x277D85DE8];
  [v0 changes];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v1, v2, "[DEBUG] Changed %lld items when updating gen counts%@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateIDs:.cold.7()
{
  OUTLINED_FUNCTION_18();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [v0 lastError];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4_3(&dword_223E7A000, v2, v3, "[ERROR] Failed to update the file ids: %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateIDs:.cold.8()
{
  OUTLINED_FUNCTION_18();
  v9 = *MEMORY[0x277D85DE8];
  [v0 changes];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v1, v2, "[DEBUG] Changed %lld items when updating file ids%@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateIDs:.cold.9()
{
  OUTLINED_FUNCTION_18();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [v0 lastError];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4_3(&dword_223E7A000, v2, v3, "[ERROR] Failed to update the doc ids: %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateIDs:.cold.10()
{
  OUTLINED_FUNCTION_18();
  v9 = *MEMORY[0x277D85DE8];
  [v0 changes];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v1, v2, "[DEBUG] Changed %lld items when updating doc ids%@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)clearStagedIDs:.cold.1()
{
  OUTLINED_FUNCTION_18();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [v0 lastError];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4_3(&dword_223E7A000, v2, v3, "[ERROR] Failed to update the staged file ids: %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)clearStagedIDs:.cold.2()
{
  OUTLINED_FUNCTION_18();
  v9 = *MEMORY[0x277D85DE8];
  [v0 changes];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v1, v2, "[DEBUG] Changed %lld items when clearing the staged generation ids%@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)clearStagedIDs:.cold.4()
{
  OUTLINED_FUNCTION_18();
  v9 = *MEMORY[0x277D85DE8];
  [v0 changes];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v1, v2, "[DEBUG] Changed %lld items when clearing the staged file ids%@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)fixUpBackupDetector:.cold.1()
{
  OUTLINED_FUNCTION_18();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [v0 lastError];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4_3(&dword_223E7A000, v2, v3, "[ERROR] Failed to update the backup detector value: %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)fixUpBackupDetector:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Patched the backup detector%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end