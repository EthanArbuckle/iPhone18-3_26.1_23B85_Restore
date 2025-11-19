@interface TRIMapsBucketIdChangeProcessor
+ (void)processMapsBucketIdChangeIfNecessaryForBucketId:(id)a3 withServerContext:(id)a4 withTaskQueue:(id)a5;
@end

@implementation TRIMapsBucketIdChangeProcessor

+ (void)processMapsBucketIdChangeIfNecessaryForBucketId:(id)a3 withServerContext:(id)a4 withTaskQueue:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = TRILogCategory_Server();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v20 = 138412290;
    v21 = v7;
    _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_INFO, "Maps: bucket id: %@", &v20, 0xCu);
  }

  v11 = [v8 keyValueStore];
  v12 = [TRIPersistentUserSettings settingsWithKeyValueStore:v11];

  v13 = [v12 persistedMapsBucketId];
  v14 = TRILogCategory_Server();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v20 = 138412290;
    v21 = v13;
    _os_log_debug_impl(&dword_26F567000, v14, OS_LOG_TYPE_DEBUG, "Persisted Maps Bucket Id: %@", &v20, 0xCu);
  }

  [v7 unsignedIntegerValue];
  v15 = [v13 unsignedIntValue];
  if (v15 != [v7 unsignedIntValue])
  {
    [v12 persistMapsBucketId:v7];
    [TRISystemConfiguration updateSystemInfoUsingContext:v8];
    v16 = TRILogCategory_Server();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEFAULT, "TRIDServer: Maps Bucket ID changed, queueing retargeting", &v20, 2u);
    }

    v17 = +[TRIRetargetAllTask task];
    v18 = +[TRITaskQueuingOptions defaultOptionsWithIgnoreDuplicates];
    [v9 addTask:v17 options:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end