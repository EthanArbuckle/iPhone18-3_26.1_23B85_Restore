@interface CSIndexClientConnection
- (CSIndexClientConnection)initWithConfiguration:(id)a3 indexer:(id)a4;
- (CSIndexClientConnection)initWithConnection:(id)a3 indexer:(id)a4;
@end

@implementation CSIndexClientConnection

- (CSIndexClientConnection)initWithConfiguration:(id)a3 indexer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v25.receiver = self;
  v25.super_class = CSIndexClientConnection;
  v9 = [(CSIndexClientConnection *)&v25 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, a3);
    v11 = [(SDConnectionConfiguration *)v10->_configuration bundleID];
    if (v11)
    {
    }

    else if (![(SDConnectionConfiguration *)v10->_configuration internal])
    {
      v22 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [CSIndexClientConnection initWithConfiguration:v7 indexer:?];
      }

      v20 = v10;
      v10 = 0;
      goto LABEL_10;
    }

    v12 = objc_alloc_init(MDSearchableIndexService);
    service = v10->_service;
    v10->_service = v12;

    [(MDSearchableIndexService *)v10->_service setIndexer:v8];
    v14 = [(SDConnectionConfiguration *)v10->_configuration bundleID];

    if (v14)
    {
      v15 = [(SDConnectionConfiguration *)v10->_configuration bundleID];
      [(MDSearchableIndexService *)v10->_service setClientBundleID:v15];
    }

    v16 = [(SDConnectionConfiguration *)v10->_configuration personaID];

    if (v16)
    {
      v17 = [(SDConnectionConfiguration *)v10->_configuration personaID];
      [(MDSearchableIndexService *)v10->_service setClientPersonaID:v17];
    }

    [(MDSearchableIndexService *)v10->_service setIsInternal:[(SDConnectionConfiguration *)v10->_configuration internal]];
    [(MDSearchableIndexService *)v10->_service setIsPrivate:[(SDConnectionConfiguration *)v10->_configuration isPrivate]];
    [(MDSearchableIndexService *)v10->_service setSearchInternal:[(SDConnectionConfiguration *)v10->_configuration searchInternal]];
    -[MDSearchableIndexService setIsExtension:](v10->_service, "setIsExtension:", [v7 isExtension]);
    [(MDSearchableIndexService *)v10->_service setAllowMail:[(SDConnectionConfiguration *)v10->_configuration allowMail]];
    [(MDSearchableIndexService *)v10->_service setAllowPhotosLibraryDeletion:[(SDConnectionConfiguration *)v10->_configuration allowPhotosLibraryDeletion]];
    [(MDSearchableIndexService *)v10->_service setAllowOpenJournalFile:[(SDConnectionConfiguration *)v10->_configuration allowOpenJournalFile]];
    [(MDSearchableIndexService *)v10->_service setAllowNotifications:[(SDConnectionConfiguration *)v10->_configuration allowNotifications]];
    [(MDSearchableIndexService *)v10->_service setAllowMessagesContent:[(SDConnectionConfiguration *)v10->_configuration allowMessagesContent]];
    [(MDSearchableIndexService *)v10->_service setEntitledAttributes:[(SDConnectionConfiguration *)v10->_configuration entitledAttributes]];
    [(MDSearchableIndexService *)v10->_service setQuotaDisabled:[(SDConnectionConfiguration *)v10->_configuration quotaDisabled]];
    v18 = [(SDConnectionConfiguration *)v10->_configuration protectionClass];
    [(MDSearchableIndexService *)v10->_service setProtectionClass:v18];

    [(MDSearchableIndexService *)v10->_service setClientUID:[(SDConnectionConfiguration *)v10->_configuration euid]];
    v19 = [(SDConnectionConfiguration *)v10->_configuration connection];
    [(MDSearchableIndexService *)v10->_service setClientConnection:v19];

    v20 = [@"com.apple.spotlight.IndexAgent" stringByAppendingFormat:@".queue.client.%d", -[SDConnectionConfiguration pid](v10->_configuration, "pid")];
    v21 = [v20 UTF8String];
    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_create(v21, v22);
    [(MDSearchableIndexService *)v10->_service setClientQueue:v23];

LABEL_10:
  }

  return v10;
}

- (CSIndexClientConnection)initWithConnection:(id)a3 indexer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = CSIndexClientConnection;
  v8 = [(CSIndexClientConnection *)&v21 init];
  if (v8)
  {
    v9 = [[SDConnectionConfiguration alloc] initWithConnection:v6 isPrivate:0];
    objc_storeStrong(&v8->_configuration, v9);
    v10 = [(SDConnectionConfiguration *)v9 bundleID];
    if (v10)
    {
    }

    else if (![(SDConnectionConfiguration *)v9 internal])
    {
      v18 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [SDConnectionConfiguration initWithConnection:v6 isPrivate:v18 isManaged:?];
      }

      v16 = v8;
      v8 = 0;
      goto LABEL_8;
    }

    v11 = objc_alloc_init(MDSearchableIndexService);
    service = v8->_service;
    v8->_service = v11;

    [(MDSearchableIndexService *)v8->_service setIndexer:v7];
    v13 = [(SDConnectionConfiguration *)v9 bundleID];

    if (v13)
    {
      v14 = [(SDConnectionConfiguration *)v9 bundleID];
      [(MDSearchableIndexService *)v8->_service setClientBundleID:v14];
    }

    [(MDSearchableIndexService *)v8->_service setIsInternal:[(SDConnectionConfiguration *)v9 internal]];
    [(MDSearchableIndexService *)v8->_service setIsPrivate:[(SDConnectionConfiguration *)v8->_configuration isPrivate]];
    [(MDSearchableIndexService *)v8->_service setSearchInternal:[(SDConnectionConfiguration *)v9 searchInternal]];
    [(MDSearchableIndexService *)v8->_service setIsExtension:[(SDConnectionConfiguration *)v9 isExtension]];
    [(MDSearchableIndexService *)v8->_service setQuotaDisabled:[(SDConnectionConfiguration *)v9 quotaDisabled]];
    v15 = [(SDConnectionConfiguration *)v9 protectionClass];
    [(MDSearchableIndexService *)v8->_service setProtectionClass:v15];

    [(MDSearchableIndexService *)v8->_service setClientUID:[(SDConnectionConfiguration *)v9 euid]];
    [(MDSearchableIndexService *)v8->_service setClientConnection:v6];
    v16 = [@"com.apple.spotlight.IndexAgent" stringByAppendingFormat:@".queue.client.%d", -[SDConnectionConfiguration pid](v9, "pid")];
    v17 = [v16 UTF8String];
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create(v17, v18);
    [(MDSearchableIndexService *)v8->_service setClientQueue:v19];

LABEL_8:
  }

  return v8;
}

- (void)initWithConfiguration:(void *)a1 indexer:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 connection];
  OUTLINED_FUNCTION_0_3(&dword_231A35000, v2, v3, "Could not resolve bundle from %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end