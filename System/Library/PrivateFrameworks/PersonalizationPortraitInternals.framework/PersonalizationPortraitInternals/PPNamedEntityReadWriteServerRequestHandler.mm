@interface PPNamedEntityReadWriteServerRequestHandler
- (void)clearWithCompletion:(id)completion;
- (void)cloudSyncWithCompletion:(id)completion;
- (void)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id completion:(id)completion;
- (void)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id documentIds:(id)ids completion:(id)completion;
- (void)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id groupId:(id)groupId olderThanDate:(id)date completion:(id)completion;
- (void)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id groupIds:(id)ids completion:(id)completion;
- (void)donateLocationNamedEntities:(id)entities bundleId:(id)id groupId:(id)groupId completion:(id)completion;
- (void)donateMapItem:(id)item forPlaceName:(id)name completion:(id)completion;
- (void)flushDonationsWithCompletion:(id)completion;
- (void)removeMapItemForPlaceName:(id)name completion:(id)completion;
- (void)removeMapItemsBeforeCutoffDate:(id)date completion:(id)completion;
@end

@implementation PPNamedEntityReadWriteServerRequestHandler

- (void)donateLocationNamedEntities:(id)entities bundleId:(id)id groupId:(id)groupId completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  completionCopy = completion;
  groupIdCopy = groupId;
  idCopy = id;
  v13 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v20 = [entitiesCopy count];
    _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "PPNamedEntityReadWriteServer: donateLocationNamedEntities: %tu entities", buf, 0xCu);
  }

  v14 = +[PPLocalNamedEntityStore defaultStore];
  v18 = 0;
  v15 = [v14 donateLocationNamedEntities:entitiesCopy bundleId:idCopy groupId:groupIdCopy error:&v18];

  v16 = v18;
  completionCopy[2](completionCopy, v15, v16);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)removeMapItemsBeforeCutoffDate:(id)date completion:(id)completion
{
  completionCopy = completion;
  dateCopy = date;
  v7 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPNamedEntityReadWriteServer: removeMapItemsBeforeCutoffDate", buf, 2u);
  }

  v8 = +[PPLocalNamedEntityStore defaultStore];
  v11 = 0;
  v9 = [v8 removeMapItemsBeforeCutoffDate:dateCopy error:&v11];

  v10 = v11;
  completionCopy[2](completionCopy, v9, v10);
}

- (void)removeMapItemForPlaceName:(id)name completion:(id)completion
{
  completionCopy = completion;
  nameCopy = name;
  v7 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPNamedEntityReadWriteServer: removeMapItemForPlaceName", buf, 2u);
  }

  v8 = +[PPLocalNamedEntityStore defaultStore];
  v11 = 0;
  v9 = [v8 removeMapItemForPlaceName:nameCopy error:&v11];

  v10 = v11;
  completionCopy[2](completionCopy, v9, v10);
}

- (void)donateMapItem:(id)item forPlaceName:(id)name completion:(id)completion
{
  completionCopy = completion;
  nameCopy = name;
  itemCopy = item;
  v10 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEFAULT, "PPNamedEntityReadWriteServer: donateMapItem", buf, 2u);
  }

  v11 = +[PPLocalNamedEntityStore defaultStore];
  v14 = 0;
  v12 = [v11 donateMapItem:itemCopy forPlaceName:nameCopy error:&v14];

  v13 = v14;
  completionCopy[2](completionCopy, v12, v13);
}

- (void)clearWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPNamedEntityReadWriteServer: clear", buf, 2u);
  }

  *buf = 0;
  v5 = +[PPLocalNamedEntityStore defaultStore];
  v8 = 0;
  v6 = [v5 clearWithError:&v8 deletedCount:buf];
  v7 = v8;

  completionCopy[2](completionCopy, v6, *buf, v7);
}

- (void)cloudSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPNamedEntityReadWriteServer: cloudSync", buf, 2u);
  }

  v5 = +[PPLocalNamedEntityStore defaultStore];
  v8 = 0;
  v6 = [v5 cloudSyncWithError:&v8];
  v7 = v8;

  completionCopy[2](completionCopy, v6, v7);
}

- (void)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id groupId:(id)groupId olderThanDate:(id)date completion:(id)completion
{
  completionCopy = completion;
  dateCopy = date;
  groupIdCopy = groupId;
  idCopy = id;
  v13 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "PPNamedEntityReadWriteServer: deleteAllNamedEntitiesFromSourcesWithBundleId:groupId:olderThanDate", buf, 2u);
  }

  *buf = 0;
  v14 = +[PPLocalNamedEntityStore defaultStore];
  v17 = 0;
  v15 = [v14 deleteAllNamedEntitiesFromSourcesWithBundleId:idCopy groupId:groupIdCopy olderThan:dateCopy deletedCount:buf error:&v17];

  v16 = v17;
  completionCopy[2](completionCopy, v15, *buf, v16);
}

- (void)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id completion:(id)completion
{
  completionCopy = completion;
  idCopy = id;
  v7 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPNamedEntityReadWriteServer: deleteAllNamedEntitiesFromSourcesWithBundleId", buf, 2u);
  }

  *buf = 0;
  v8 = +[PPLocalNamedEntityStore defaultStore];
  v11 = 0;
  v9 = [v8 deleteAllNamedEntitiesFromSourcesWithBundleId:idCopy deletedCount:buf error:&v11];

  v10 = v11;
  completionCopy[2](completionCopy, v9, *buf, v10);
}

- (void)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id groupIds:(id)ids completion:(id)completion
{
  completionCopy = completion;
  idsCopy = ids;
  idCopy = id;
  v10 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEFAULT, "PPNamedEntityReadWriteServer: deleteAllNamedEntitiesFromSourcesWithBundleId:groupIds:", buf, 2u);
  }

  *buf = 0;
  v11 = +[PPLocalNamedEntityStore defaultStore];
  v14 = 0;
  v12 = [v11 deleteAllNamedEntitiesFromSourcesWithBundleId:idCopy groupIds:idsCopy deletedCount:buf error:&v14];

  v13 = v14;
  completionCopy[2](completionCopy, v12, *buf, v13);
}

- (void)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id documentIds:(id)ids completion:(id)completion
{
  completionCopy = completion;
  idsCopy = ids;
  idCopy = id;
  v10 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEFAULT, "PPNamedEntityReadWriteServer: deleteAllNamedEntitiesFromSourcesWithBundleId:documentIds:", buf, 2u);
  }

  *buf = 0;
  v11 = +[PPLocalNamedEntityStore defaultStore];
  v14 = 0;
  v12 = [v11 deleteAllNamedEntitiesFromSourcesWithBundleId:idCopy documentIds:idsCopy deletedCount:buf error:&v14];

  v13 = v14;
  completionCopy[2](completionCopy, v12, *buf, v13);
}

- (void)flushDonationsWithCompletion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v4 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPNamedEntityReadWriteServer: flushDonations", buf, 2u);
  }

  v5 = +[PPLocalNamedEntityStore defaultStore];
  v10 = 0;
  v6 = [v5 flushDonationsWithError:&v10];
  v7 = v10;

  if ((v6 & 1) == 0)
  {
    v8 = pp_xpc_server_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v7;
      _os_log_error_impl(&dword_23224A000, v8, OS_LOG_TYPE_ERROR, "flushDonationsWithError unexpectedly failed: %@", buf, 0xCu);
    }
  }

  completionCopy[2](completionCopy);

  v9 = *MEMORY[0x277D85DE8];
}

@end