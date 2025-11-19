@interface PPTopicReadWriteServerRequestHandler
- (void)clearWithCompletion:(id)a3;
- (void)cloudSyncWithCompletion:(id)a3;
- (void)computeAndCacheTopicScores:(id)a3;
- (void)deleteAllTopicsFromSourcesWithBundleId:(id)a3 completion:(id)a4;
- (void)deleteAllTopicsFromSourcesWithBundleId:(id)a3 documentIds:(id)a4 completion:(id)a5;
- (void)deleteAllTopicsFromSourcesWithBundleId:(id)a3 groupId:(id)a4 olderThanDate:(id)a5 completion:(id)a6;
- (void)deleteAllTopicsFromSourcesWithBundleId:(id)a3 groupIds:(id)a4 completion:(id)a5;
- (void)deleteAllTopicsWithTopicId:(id)a3 completion:(id)a4;
@end

@implementation PPTopicReadWriteServerRequestHandler

- (void)computeAndCacheTopicScores:(id)a3
{
  v3 = a3;
  v4 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPTopicReadWriteServer: computeAndCacheTopicScores", buf, 2u);
  }

  v5 = +[PPLocalTopicStore defaultStore];
  v8 = 0;
  v6 = [v5 computeAndCacheTopicScores:&v8];
  v7 = v8;

  v3[2](v3, v6, v7);
}

- (void)clearWithCompletion:(id)a3
{
  v3 = a3;
  v4 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPTopicReadWriteServer: clear", buf, 2u);
  }

  *buf = 0;
  v5 = +[PPLocalTopicStore defaultStore];
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
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPTopicReadWriteServer: cloudSync", buf, 2u);
  }

  v5 = +[PPLocalTopicStore defaultStore];
  v8 = 0;
  v6 = [v5 cloudSyncWithError:&v8];
  v7 = v8;

  v3[2](v3, v6, v7);
}

- (void)deleteAllTopicsFromSourcesWithBundleId:(id)a3 groupId:(id)a4 olderThanDate:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "PPTopicReadWriteServer: deleteAllTopicsFromSourcesWithBundleId:groupId:olderThanDate:", buf, 2u);
  }

  *buf = 0;
  v14 = +[PPLocalTopicStore defaultStore];
  v17 = 0;
  v15 = [v14 deleteAllTopicsFromSourcesWithBundleId:v12 groupId:v11 olderThan:v10 deletedCount:buf error:&v17];

  v16 = v17;
  v9[2](v9, v15, *buf, v16);
}

- (void)deleteAllTopicsWithTopicId:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPTopicReadWriteServer: deleteAllTopicsFromSourcesWithTopicId", buf, 2u);
  }

  *buf = 0;
  v8 = +[PPLocalTopicStore defaultStore];
  v11 = 0;
  v9 = [v8 deleteAllTopicsWithTopicId:v6 deletedCount:buf error:&v11];

  v10 = v11;
  v5[2](v5, v9, *buf, v10);
}

- (void)deleteAllTopicsFromSourcesWithBundleId:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPTopicReadWriteServer: deleteAllTopicsFromSourcesWithBundleId:", buf, 2u);
  }

  *buf = 0;
  v8 = +[PPLocalTopicStore defaultStore];
  v11 = 0;
  v9 = [v8 deleteAllTopicsFromSourcesWithBundleId:v6 deletedCount:buf error:&v11];

  v10 = v11;
  v5[2](v5, v9, *buf, v10);
}

- (void)deleteAllTopicsFromSourcesWithBundleId:(id)a3 groupIds:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEFAULT, "PPTopicReadWriteServer: deleteAllTopicsFromSourcesWithBundleId:groupIds:", buf, 2u);
  }

  *buf = 0;
  v11 = +[PPLocalTopicStore defaultStore];
  v14 = 0;
  v12 = [v11 deleteAllTopicsFromSourcesWithBundleId:v9 groupIds:v8 deletedCount:buf error:&v14];

  v13 = v14;
  v7[2](v7, v12, *buf, v13);
}

- (void)deleteAllTopicsFromSourcesWithBundleId:(id)a3 documentIds:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEFAULT, "PPTopicReadWriteServer: deleteAllTopicsFromSourcesWithBundleId:documentIds:", buf, 2u);
  }

  *buf = 0;
  v11 = +[PPLocalTopicStore defaultStore];
  v14 = 0;
  v12 = [v11 deleteAllTopicsFromSourcesWithBundleId:v9 documentIds:v8 deletedCount:buf error:&v14];

  v13 = v14;
  v7[2](v7, v12, *buf, v13);
}

@end