@interface BRCDatabaseBackupManager
- (BOOL)enumerateRootURL:(id)a3 usingBlock:(id)a4 error:(id *)a5;
- (BOOL)enumerateURL:(id)a3 rootURL:(id)a4 usingBlock:(id)a5 error:(id *)a6;
- (BRCDatabaseBackupManager)initWithUserURL:(id)a3 outputUserURL:(id)a4;
- (NSArray)urlPropertiesToFetch;
- (NSURL)databaseURL;
- (id)desiredBackupDataDirectoryForUserURL:(id)a3;
- (void)backUpWithCompletionBlock:(id)a3;
- (void)cleanOnDisk;
@end

@implementation BRCDatabaseBackupManager

- (BRCDatabaseBackupManager)initWithUserURL:(id)a3 outputUserURL:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = BRCDatabaseBackupManager;
  v9 = [(BRCDatabaseBackupManager *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userURL, a3);
    objc_storeStrong(&v10->_outputUserURL, a4);
    v11 = [(BRCDatabaseBackupManager *)v10 desiredBackupDataDirectoryForUserURL:v10->_outputUserURL];
    destinationDirectory = v10->_destinationDirectory;
    v10->_destinationDirectory = v11;

    if (!v10->_destinationDirectory)
    {
      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v19 = v13;
        _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_INFO, "[INFO] ~/Library/Application Support/CloudDocs/session does not exist. No need to back up.%@", buf, 0xCu);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)backUpWithCompletionBlock:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(BRCDatabaseBackupManager *)self destinationDirectory];

  if (v5)
  {
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [(BRCDatabaseBackupManager *)self destinationDirectory];
    v8 = [v7 path];
    v9 = [v6 fileExistsAtPath:v8];

    if (v9)
    {
      v10 = [(BRCDatabaseBackupManager *)self destinationDirectory];
      v39 = 0;
      v11 = [v6 removeItemAtURL:v10 error:&v39];
      v12 = v39;

      if ((v11 & 1) == 0)
      {
        v13 = brc_bread_crumbs();
        v14 = brc_default_log();
        if (os_log_type_enabled(v14, 0x90u))
        {
          v15 = [(BRCDatabaseBackupManager *)self destinationDirectory];
          v16 = [v15 path];
          *buf = 138412802;
          v41 = v16;
          v42 = 2112;
          v43 = v12;
          v44 = 2112;
          v45 = v13;
          v17 = "[ERROR] Unable to delete existing destination directory at %@: %@%@";
LABEL_20:
          _os_log_error_impl(&dword_223E7A000, v14, 0x90u, v17, buf, 0x20u);

          goto LABEL_14;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v12 = 0;
    }

    v18 = v12;
    v19 = [(BRCDatabaseBackupManager *)self destinationDirectory];
    v38 = v12;
    v20 = [v6 createDirectoryAtURL:v19 withIntermediateDirectories:0 attributes:0 error:&v38];
    v12 = v38;

    if (v20)
    {
      v21 = [BRCDatabaseBackupStorage alloc];
      v22 = [(BRCDatabaseBackupManager *)self databaseURL];
      v23 = [(BRCDatabaseBackupStorage *)v21 initWithDatabaseURL:v22];

      userURL = self->_userURL;
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __54__BRCDatabaseBackupManager_backUpWithCompletionBlock___block_invoke;
      v36[3] = &unk_278501EB0;
      v25 = v23;
      v37 = v25;
      v35 = v12;
      v26 = [(BRCDatabaseBackupManager *)self enumerateRootURL:userURL usingBlock:v36 error:&v35];
      v27 = v35;

      [(BRCDatabaseBackupStorage *)v25 flushAndClose];
      v28 = [(BRCDatabaseBackupManager *)self destinationDirectory];
      v34 = v27;
      BRCRecursivelyChangeOwnerAndGroupToMobile(v28, &v34);
      v12 = v34;

      v29 = brc_bread_crumbs();
      v30 = brc_default_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [(BRCDatabaseBackupManager *)self destinationDirectory];
        *buf = 138412802;
        v41 = v31;
        v42 = 2112;
        v43 = v12;
        v44 = 2112;
        v45 = v29;
        _os_log_impl(&dword_223E7A000, v30, OS_LOG_TYPE_DEFAULT, "[NOTICE] Calling completion block with URL: %@, error: %@%@", buf, 0x20u);
      }

      if (v26)
      {
        v32 = [(BRCDatabaseBackupManager *)self destinationDirectory];
        v4[2](v4, v32, 0);
      }

      else
      {
        (v4)[2](v4, 0, v12);
      }

      goto LABEL_17;
    }

    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, 0x90u))
    {
      v15 = [(BRCDatabaseBackupManager *)self destinationDirectory];
      v16 = [v15 path];
      *buf = 138412802;
      v41 = v16;
      v42 = 2112;
      v43 = v12;
      v44 = 2112;
      v45 = v13;
      v17 = "[ERROR] Could not create destination directory %@: %@%@";
      goto LABEL_20;
    }

LABEL_14:

    (v4)[2](v4, 0, v12);
LABEL_17:

    goto LABEL_18;
  }

  v4[2](v4, 0, 0);
LABEL_18:

  v33 = *MEMORY[0x277D85DE8];
}

void __54__BRCDatabaseBackupManager_backUpWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = [[BRCDatabaseBackupRecord alloc] initWithRelativePath:v15 fileID:v14 docID:v13 genCount:a7 isDirectory:a8];

  v17 = brc_bread_crumbs();
  v18 = brc_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    __54__BRCDatabaseBackupManager_backUpWithCompletionBlock___block_invoke_cold_1();
  }

  [*(a1 + 32) addRecord:v16];
}

- (id)desiredBackupDataDirectoryForUserURL:(id)a3
{
  v3 = [a3 URLByAppendingPathComponent:@"Library/Application Support/CloudDocs" isDirectory:1];
  v4 = [v3 URLByAppendingPathComponent:@"session" isDirectory:1];
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v4 path];
  v7 = [v5 fileExistsAtPath:v6];

  if (v7)
  {
    v8 = [v3 URLByAppendingPathComponent:@"backup" isDirectory:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSURL)databaseURL
{
  v2 = [(BRCDatabaseBackupManager *)self destinationDirectory];
  v3 = [v2 URLByAppendingPathComponent:@"backup_manifest.db"];

  return v3;
}

- (NSArray)urlPropertiesToFetch
{
  v7[5] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBECA8];
  v7[0] = *MEMORY[0x277CBE7A0];
  v7[1] = v2;
  v3 = *MEMORY[0x277CBE848];
  v7[2] = *MEMORY[0x277CBE7C8];
  v7[3] = v3;
  v7[4] = *MEMORY[0x277CBE868];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:5];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)enumerateRootURL:(id)a3 usingBlock:(id)a4 error:(id *)a5
{
  v32[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  LOBYTE(v10) = 1;
  v11 = [v8 URLByAppendingPathComponent:@"Library/Mobile Documents/" isDirectory:1];
  v32[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v24 = a5;
    v15 = 0;
    v16 = *v28;
LABEL_3:
    v17 = 0;
    v18 = v15;
    while (1)
    {
      if (*v28 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v27 + 1) + 8 * v17);
      v20 = objc_autoreleasePoolPush();
      v26 = v18;
      v10 = [(BRCDatabaseBackupManager *)self enumerateURL:v19 rootURL:v8 usingBlock:v9 error:&v26];
      v15 = v26;

      objc_autoreleasePoolPop(v20);
      if (!v10)
      {
        break;
      }

      ++v17;
      v18 = v15;
      if (v14 == v17)
      {
        v14 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v14)
        {
          goto LABEL_3;
        }

        LOBYTE(v10) = 1;
        break;
      }
    }

    a5 = v24;
  }

  else
  {
    v15 = 0;
  }

  if (a5)
  {
    v21 = v15;
    *a5 = v15;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)enumerateURL:(id)a3 rootURL:(id)a4 usingBlock:(id)a5 error:(id *)a6
{
  v73 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v52 = a5;
  if (!v11)
  {
    v51 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, 0x90u))
    {
      [BRCDatabaseBackupManager enumerateURL:v51 rootURL:v17 usingBlock:? error:?];
    }

    goto LABEL_25;
  }

  v12 = [MEMORY[0x277CCAA00] defaultManager];
  v13 = [v11 path];
  v14 = [v12 fileExistsAtPath:v13];

  if ((v14 & 1) == 0)
  {
    v51 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, 0x90u))
    {
      [BRCDatabaseBackupManager enumerateURL:v11 rootURL:v51 usingBlock:v17 error:?];
    }

LABEL_25:
    v16 = 1;
    goto LABEL_26;
  }

  v65 = 0;
  v15 = *MEMORY[0x277CBE7A0];
  v64 = 0;
  v50 = v15;
  v16 = [v11 getResourceValue:&v65 forKey:? error:?];
  v51 = v65;
  v17 = 0;
  if (v16)
  {
    v18 = [(BRCDatabaseBackupManager *)self urlPropertiesToFetch];
    v19 = [MEMORY[0x277CCAA00] defaultManager];
    v54 = v18;
    v20 = [v19 enumeratorAtURL:v10 includingPropertiesForKeys:v18 options:2 errorHandler:&__block_literal_global_20];

    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v68 = v10;
      v69 = 2112;
      v70 = v21;
      _os_log_impl(&dword_223E7A000, v22, OS_LOG_TYPE_INFO, "[INFO] Enumarating URL: %@%@", buf, 0x16u);
    }

    v42 = v16;
    v43 = v11;
    v44 = v10;

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = v20;
    v55 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
    if (v55)
    {
      v53 = *v61;
      v48 = *MEMORY[0x277CBE7C8];
      v49 = *MEMORY[0x277CBECA8];
      v46 = *MEMORY[0x277CBE868];
      v47 = *MEMORY[0x277CBE848];
      do
      {
        for (i = 0; i != v55; ++i)
        {
          v24 = v17;
          if (*v61 != v53)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v60 + 1) + 8 * i);
          v26 = objc_autoreleasePoolPush();
          v59 = v17;
          v27 = [v25 resourceValuesForKeys:v54 error:&v59];
          v17 = v59;

          if (v27)
          {
            v56 = v25;
            v57 = v26;
            v28 = [v27 objectForKeyedSubscript:v50];
            v29 = [v28 substringFromIndex:{objc_msgSend(v51, "length") + 1}];
            v30 = [v27 objectForKeyedSubscript:v49];
            v31 = [v27 objectForKeyedSubscript:v48];
            v32 = [v27 objectForKeyedSubscript:v47];
            v33 = v32;
            v58 = v17;
            if (v32)
            {
              v34 = BRCGenerationCountFromData(v32);
            }

            else
            {
              v34 = 0;
            }

            v35 = [v27 objectForKeyedSubscript:v46];
            v36 = [v35 BOOLValue];

            (v52)[2](v52, v56, v28, v29, v30, v31, v34, v36);
            v26 = v57;
            v17 = v58;
          }

          else
          {
            v28 = brc_bread_crumbs();
            v29 = brc_default_log();
            if (os_log_type_enabled(v29, 0x90u))
            {
              *buf = 138412802;
              v68 = v25;
              v69 = 2112;
              v70 = v17;
              v71 = 2112;
              v72 = v28;
              _os_log_error_impl(&dword_223E7A000, v29, 0x90u, "[ERROR] Failed to fetch resource values for %@. Error: %@%@", buf, 0x20u);
            }
          }

          objc_autoreleasePoolPop(v26);
        }

        v55 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
      }

      while (v55);
    }

    v11 = v43;
    v10 = v44;
    v16 = v42;
  }

  else
  {
    v39 = brc_bread_crumbs();
    v40 = brc_default_log();
    if (os_log_type_enabled(v40, 0x90u))
    {
      *buf = 138412802;
      v68 = v11;
      v69 = 2112;
      v70 = v17;
      v71 = 2112;
      v72 = v39;
      _os_log_error_impl(&dword_223E7A000, v40, 0x90u, "[ERROR] Could not get the canonical path for the root URL %@. Error: %@%@", buf, 0x20u);
    }

    if (a6)
    {
      v41 = v17;
      *a6 = v17;
    }
  }

LABEL_26:

  v37 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t __66__BRCDatabaseBackupManager_enumerateURL_rootURL_usingBlock_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, 0x90u))
  {
    v10 = 138412802;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_error_impl(&dword_223E7A000, v7, 0x90u, "[ERROR] Enumeration error: %@. Error: %@%@", &v10, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)cleanOnDisk
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  destinationDirectory = self->_destinationDirectory;
  v11 = 0;
  v5 = [v3 removeItemAtURL:destinationDirectory error:&v11];
  v6 = v11;

  if ((v5 & 1) == 0)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, 0x90u))
    {
      v10 = [(NSURL *)self->_destinationDirectory path];
      *buf = 138412802;
      v13 = v10;
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      _os_log_error_impl(&dword_223E7A000, v8, 0x90u, "[ERROR] Failed to remove directory %@: %@%@", buf, 0x20u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __54__BRCDatabaseBackupManager_backUpWithCompletionBlock___block_invoke_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  v4 = v0;
  _os_log_debug_impl(&dword_223E7A000, v1, OS_LOG_TYPE_DEBUG, "[DEBUG] %@%@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)enumerateURL:(NSObject *)a3 rootURL:usingBlock:error:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [a1 path];
  OUTLINED_FUNCTION_1_0();
  v8 = a2;
  _os_log_error_impl(&dword_223E7A000, a3, 0x90u, "[ERROR] %@ does not exist, nothing to enumerate.%@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)enumerateURL:(uint64_t)a1 rootURL:(NSObject *)a2 usingBlock:error:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_223E7A000, a2, 0x90u, "[ERROR] rootURL is nil, nothing to enumerate.%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end