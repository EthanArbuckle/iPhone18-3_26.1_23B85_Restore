@interface PPNamedEntityReadWriteServerRequestHandler
- (void)clearWithCompletion:(id)a3;
- (void)cloudSyncWithCompletion:(id)a3;
- (void)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)a3 completion:(id)a4;
- (void)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)a3 documentIds:(id)a4 completion:(id)a5;
- (void)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)a3 groupId:(id)a4 olderThanDate:(id)a5 completion:(id)a6;
- (void)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)a3 groupIds:(id)a4 completion:(id)a5;
- (void)donateLocationNamedEntities:(id)a3 bundleId:(id)a4 groupId:(id)a5 completion:(id)a6;
- (void)donateMapItem:(id)a3 forPlaceName:(id)a4 completion:(id)a5;
- (void)flushDonationsWithCompletion:(id)a3;
- (void)removeMapItemForPlaceName:(id)a3 completion:(id)a4;
- (void)removeMapItemsBeforeCutoffDate:(id)a3 completion:(id)a4;
@end

@implementation PPNamedEntityReadWriteServerRequestHandler

- (void)donateLocationNamedEntities:(id)a3 bundleId:(id)a4 groupId:(id)a5 completion:(id)a6
{
  v21 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v20 = [v9 count];
    _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "PPNamedEntityReadWriteServer: donateLocationNamedEntities: %tu entities", buf, 0xCu);
  }

  v14 = +[PPLocalNamedEntityStore defaultStore];
  v18 = 0;
  v15 = [v14 donateLocationNamedEntities:v9 bundleId:v12 groupId:v11 error:&v18];

  v16 = v18;
  v10[2](v10, v15, v16);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)removeMapItemsBeforeCutoffDate:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPNamedEntityReadWriteServer: removeMapItemsBeforeCutoffDate", buf, 2u);
  }

  v8 = +[PPLocalNamedEntityStore defaultStore];
  v11 = 0;
  v9 = [v8 removeMapItemsBeforeCutoffDate:v6 error:&v11];

  v10 = v11;
  v5[2](v5, v9, v10);
}

- (void)removeMapItemForPlaceName:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPNamedEntityReadWriteServer: removeMapItemForPlaceName", buf, 2u);
  }

  v8 = +[PPLocalNamedEntityStore defaultStore];
  v11 = 0;
  v9 = [v8 removeMapItemForPlaceName:v6 error:&v11];

  v10 = v11;
  v5[2](v5, v9, v10);
}

- (void)donateMapItem:(id)a3 forPlaceName:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEFAULT, "PPNamedEntityReadWriteServer: donateMapItem", buf, 2u);
  }

  v11 = +[PPLocalNamedEntityStore defaultStore];
  v14 = 0;
  v12 = [v11 donateMapItem:v9 forPlaceName:v8 error:&v14];

  v13 = v14;
  v7[2](v7, v12, v13);
}

- (void)clearWithCompletion:(id)a3
{
  v3 = a3;
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

  v3[2](v3, v6, *buf, v7);
}

- (void)cloudSyncWithCompletion:(id)a3
{
  v3 = a3;
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

  v3[2](v3, v6, v7);
}

- (void)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)a3 groupId:(id)a4 olderThanDate:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "PPNamedEntityReadWriteServer: deleteAllNamedEntitiesFromSourcesWithBundleId:groupId:olderThanDate", buf, 2u);
  }

  *buf = 0;
  v14 = +[PPLocalNamedEntityStore defaultStore];
  v17 = 0;
  v15 = [v14 deleteAllNamedEntitiesFromSourcesWithBundleId:v12 groupId:v11 olderThan:v10 deletedCount:buf error:&v17];

  v16 = v17;
  v9[2](v9, v15, *buf, v16);
}

- (void)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPNamedEntityReadWriteServer: deleteAllNamedEntitiesFromSourcesWithBundleId", buf, 2u);
  }

  *buf = 0;
  v8 = +[PPLocalNamedEntityStore defaultStore];
  v11 = 0;
  v9 = [v8 deleteAllNamedEntitiesFromSourcesWithBundleId:v6 deletedCount:buf error:&v11];

  v10 = v11;
  v5[2](v5, v9, *buf, v10);
}

- (void)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)a3 groupIds:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEFAULT, "PPNamedEntityReadWriteServer: deleteAllNamedEntitiesFromSourcesWithBundleId:groupIds:", buf, 2u);
  }

  *buf = 0;
  v11 = +[PPLocalNamedEntityStore defaultStore];
  v14 = 0;
  v12 = [v11 deleteAllNamedEntitiesFromSourcesWithBundleId:v9 groupIds:v8 deletedCount:buf error:&v14];

  v13 = v14;
  v7[2](v7, v12, *buf, v13);
}

- (void)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)a3 documentIds:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEFAULT, "PPNamedEntityReadWriteServer: deleteAllNamedEntitiesFromSourcesWithBundleId:documentIds:", buf, 2u);
  }

  *buf = 0;
  v11 = +[PPLocalNamedEntityStore defaultStore];
  v14 = 0;
  v12 = [v11 deleteAllNamedEntitiesFromSourcesWithBundleId:v9 documentIds:v8 deletedCount:buf error:&v14];

  v13 = v14;
  v7[2](v7, v12, *buf, v13);
}

- (void)flushDonationsWithCompletion:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
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

  v3[2](v3);

  v9 = *MEMORY[0x277D85DE8];
}

@end