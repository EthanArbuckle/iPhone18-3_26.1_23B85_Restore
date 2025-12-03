@interface BRCDatabaseRestoreManager
- (BRCDatabaseRestoreManager)initWithUserURL:(id)l;
- (void)restoreWithCompletionBlock:(id)block;
@end

@implementation BRCDatabaseRestoreManager

- (BRCDatabaseRestoreManager)initWithUserURL:(id)l
{
  v20 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v15.receiver = self;
  v15.super_class = BRCDatabaseRestoreManager;
  v6 = [(BRCDatabaseRestoreManager *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userURL, l);
    v8 = [(NSURL *)v7->_userURL URLByAppendingPathComponent:@"Library/Application Support/CloudDocs/session/db/client.db"];
    clientDatabaseURL = v7->_clientDatabaseURL;
    v7->_clientDatabaseURL = v8;

    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      path = [(NSURL *)v7->_clientDatabaseURL path];
      *buf = 138412546;
      v17 = path;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_INFO, "[INFO] Initializing restore manager with %@%@", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)restoreWithCompletionBlock:(id)block
{
  v31 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = [[BRCDatabaseBackupManager alloc] initWithUserURL:self->_userURL outputUserURL:self->_userURL];
  databaseURL = [(BRCDatabaseBackupManager *)v5 databaseURL];
  v7 = [[BRCDatabaseBackupStorage alloc] initWithDatabaseURL:databaseURL];
  path = [(NSURL *)self->_userURL path];
  [(BRCDatabaseBackupStorage *)v7 populateNewColumnsWithBasePath:path];
  clientDatabaseURL = self->_clientDatabaseURL;
  v24 = 0;
  v10 = [(BRCDatabaseBackupStorage *)v7 attachDatabase:clientDatabaseURL error:&v24];
  v11 = v24;
  if (v10)
  {
    if ([(BRCDatabaseBackupStorage *)v7 updateAttachedDatabase])
    {
      v12 = [(NSURL *)self->_userURL URLByAppendingPathComponent:@"Library/Application Support/CloudDocs/" isDirectory:1];
      v23 = v11;
      v13 = BRCRecursivelyChangeOwnerAndGroupToMobile(v12, &v23);
      v14 = v23;

      if (v13)
      {

        [(BRCDatabaseBackupManager *)v5 cleanOnDisk];
        v15 = brc_bread_crumbs();
        v16 = brc_default_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v26 = v15;
          _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_INFO, "[INFO] Calling completion block with success.%@", buf, 0xCu);
        }

        blockCopy[2](blockCopy, 1, 0);
        v7 = 0;
      }

      else
      {
        (blockCopy)[2](blockCopy, 0, v14);
      }

      v11 = v14;
    }

    else
    {
      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, 0x90u))
      {
        [(BRCDatabaseRestoreManager *)v7 restoreWithCompletionBlock:v19, v20];
      }

      blockCopy[2](blockCopy, 0, 0);
    }
  }

  else
  {
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, 0x90u))
    {
      path2 = [(NSURL *)self->_clientDatabaseURL path];
      *buf = 138412802;
      v26 = path2;
      v27 = 2112;
      v28 = v11;
      v29 = 2112;
      v30 = v17;
      _os_log_error_impl(&dword_223E7A000, v18, 0x90u, "[ERROR] Unable to attach db %@: %@%@", buf, 0x20u);
    }

    (blockCopy)[2](blockCopy, 0, v11);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)restoreWithCompletionBlock:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_223E7A000, log, 0x90u, "[ERROR] Failed to update attached database %@%@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end