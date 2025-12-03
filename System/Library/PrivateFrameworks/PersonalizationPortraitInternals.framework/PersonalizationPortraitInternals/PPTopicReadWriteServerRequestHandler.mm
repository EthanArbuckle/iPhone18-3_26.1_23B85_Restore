@interface PPTopicReadWriteServerRequestHandler
- (void)clearWithCompletion:(id)completion;
- (void)cloudSyncWithCompletion:(id)completion;
- (void)computeAndCacheTopicScores:(id)scores;
- (void)deleteAllTopicsFromSourcesWithBundleId:(id)id completion:(id)completion;
- (void)deleteAllTopicsFromSourcesWithBundleId:(id)id documentIds:(id)ids completion:(id)completion;
- (void)deleteAllTopicsFromSourcesWithBundleId:(id)id groupId:(id)groupId olderThanDate:(id)date completion:(id)completion;
- (void)deleteAllTopicsFromSourcesWithBundleId:(id)id groupIds:(id)ids completion:(id)completion;
- (void)deleteAllTopicsWithTopicId:(id)id completion:(id)completion;
@end

@implementation PPTopicReadWriteServerRequestHandler

- (void)computeAndCacheTopicScores:(id)scores
{
  scoresCopy = scores;
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

  scoresCopy[2](scoresCopy, v6, v7);
}

- (void)clearWithCompletion:(id)completion
{
  completionCopy = completion;
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

  completionCopy[2](completionCopy, v6, *buf, v7);
}

- (void)cloudSyncWithCompletion:(id)completion
{
  completionCopy = completion;
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

  completionCopy[2](completionCopy, v6, v7);
}

- (void)deleteAllTopicsFromSourcesWithBundleId:(id)id groupId:(id)groupId olderThanDate:(id)date completion:(id)completion
{
  completionCopy = completion;
  dateCopy = date;
  groupIdCopy = groupId;
  idCopy = id;
  v13 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "PPTopicReadWriteServer: deleteAllTopicsFromSourcesWithBundleId:groupId:olderThanDate:", buf, 2u);
  }

  *buf = 0;
  v14 = +[PPLocalTopicStore defaultStore];
  v17 = 0;
  v15 = [v14 deleteAllTopicsFromSourcesWithBundleId:idCopy groupId:groupIdCopy olderThan:dateCopy deletedCount:buf error:&v17];

  v16 = v17;
  completionCopy[2](completionCopy, v15, *buf, v16);
}

- (void)deleteAllTopicsWithTopicId:(id)id completion:(id)completion
{
  completionCopy = completion;
  idCopy = id;
  v7 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPTopicReadWriteServer: deleteAllTopicsFromSourcesWithTopicId", buf, 2u);
  }

  *buf = 0;
  v8 = +[PPLocalTopicStore defaultStore];
  v11 = 0;
  v9 = [v8 deleteAllTopicsWithTopicId:idCopy deletedCount:buf error:&v11];

  v10 = v11;
  completionCopy[2](completionCopy, v9, *buf, v10);
}

- (void)deleteAllTopicsFromSourcesWithBundleId:(id)id completion:(id)completion
{
  completionCopy = completion;
  idCopy = id;
  v7 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPTopicReadWriteServer: deleteAllTopicsFromSourcesWithBundleId:", buf, 2u);
  }

  *buf = 0;
  v8 = +[PPLocalTopicStore defaultStore];
  v11 = 0;
  v9 = [v8 deleteAllTopicsFromSourcesWithBundleId:idCopy deletedCount:buf error:&v11];

  v10 = v11;
  completionCopy[2](completionCopy, v9, *buf, v10);
}

- (void)deleteAllTopicsFromSourcesWithBundleId:(id)id groupIds:(id)ids completion:(id)completion
{
  completionCopy = completion;
  idsCopy = ids;
  idCopy = id;
  v10 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEFAULT, "PPTopicReadWriteServer: deleteAllTopicsFromSourcesWithBundleId:groupIds:", buf, 2u);
  }

  *buf = 0;
  v11 = +[PPLocalTopicStore defaultStore];
  v14 = 0;
  v12 = [v11 deleteAllTopicsFromSourcesWithBundleId:idCopy groupIds:idsCopy deletedCount:buf error:&v14];

  v13 = v14;
  completionCopy[2](completionCopy, v12, *buf, v13);
}

- (void)deleteAllTopicsFromSourcesWithBundleId:(id)id documentIds:(id)ids completion:(id)completion
{
  completionCopy = completion;
  idsCopy = ids;
  idCopy = id;
  v10 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEFAULT, "PPTopicReadWriteServer: deleteAllTopicsFromSourcesWithBundleId:documentIds:", buf, 2u);
  }

  *buf = 0;
  v11 = +[PPLocalTopicStore defaultStore];
  v14 = 0;
  v12 = [v11 deleteAllTopicsFromSourcesWithBundleId:idCopy documentIds:idsCopy deletedCount:buf error:&v14];

  v13 = v14;
  completionCopy[2](completionCopy, v12, *buf, v13);
}

@end