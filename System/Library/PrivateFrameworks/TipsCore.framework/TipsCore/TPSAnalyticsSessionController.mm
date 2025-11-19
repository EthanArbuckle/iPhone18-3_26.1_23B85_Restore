@interface TPSAnalyticsSessionController
+ (void)_incrementSessionViewNumberForKey:(id)a3;
+ (void)_logSessionData;
+ (void)_resetSession;
+ (void)endSession;
+ (void)trackSession;
@end

@implementation TPSAnalyticsSessionController

+ (void)trackSession
{
  v16 = *MEMORY[0x1E69E9840];
  +[TPSDefaultsManager sessionTimeoutIntervalInSeconds];
  if (v3 == 0.0)
  {
    v4 = 86400.0;
  }

  else
  {
    v4 = v3;
  }

  v5 = [TPSAnalyticsPersistenceController persistedObjectForKey:@"TPSSessionStartTime"];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF00] now];
    [v6 timeIntervalSinceDate:v5];
    v8 = v7;

    v9 = +[TPSLogger analytics];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v14 = 134217984;
      v15 = v8;
      _os_log_impl(&dword_1C00A7000, v9, OS_LOG_TYPE_INFO, "Previous session has been active for %lu seconds.", &v14, 0xCu);
    }

    v10 = +[TPSLogger analytics];
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v8 >= v4)
    {
      if (v11)
      {
        v14 = 134217984;
        v15 = v4;
        _os_log_impl(&dword_1C00A7000, v10, OS_LOG_TYPE_INFO, "Previous session will be reset now because it started more than %lu seconds ago.", &v14, 0xCu);
      }

      [a1 endSession];
    }

    else
    {
      if (v11)
      {
        v14 = 134217984;
        v15 = v4;
        _os_log_impl(&dword_1C00A7000, v10, OS_LOG_TYPE_INFO, "Previous session is still active because it is less than %lu seconds old.", &v14, 0xCu);
      }
    }
  }

  else
  {
    v12 = +[TPSLogger analytics];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_1C00A7000, v12, OS_LOG_TYPE_INFO, "Starting a new session and resetting content view counts.", &v14, 2u);
    }

    [a1 _resetSession];
  }

  v13 = *MEMORY[0x1E69E9840];
}

+ (void)endSession
{
  [a1 _logSessionData];

  [a1 _resetSession];
}

+ (void)_logSessionData
{
  v2 = [TPSAnalyticsPersistenceController persistedObjectForKey:@"collections_viewed"];
  v3 = [v2 integerValue];

  v4 = [TPSAnalyticsPersistenceController persistedObjectForKey:@"tips_viewed"];
  v5 = [v4 integerValue];

  v6 = [TPSAnalyticsEventSession eventWithCollectionsViewed:v3 tipsViewed:v5];
  [v6 log];
}

+ (void)_resetSession
{
  v2 = [MEMORY[0x1E695DF00] now];
  [TPSAnalyticsPersistenceController persistObject:v2 forKey:@"TPSSessionStartTime"];

  [TPSAnalyticsPersistenceController persistObject:&unk_1F3F41DD0 forKey:@"collections_viewed"];

  [TPSAnalyticsPersistenceController persistObject:&unk_1F3F41DD0 forKey:@"tips_viewed"];
}

+ (void)_incrementSessionViewNumberForKey:(id)a3
{
  v3 = a3;
  v4 = [TPSAnalyticsPersistenceController persistedObjectForKey:v3];
  v5 = [v4 integerValue];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:v5 + 1];
  [TPSAnalyticsPersistenceController persistObject:v6 forKey:v3];
}

@end