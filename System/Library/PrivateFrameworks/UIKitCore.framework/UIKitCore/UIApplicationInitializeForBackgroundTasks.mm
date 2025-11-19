@interface UIApplicationInitializeForBackgroundTasks
@end

@implementation UIApplicationInitializeForBackgroundTasks

void ___UIApplicationInitializeForBackgroundTasks_block_invoke()
{
  v0 = [UIApp _systemAnimationFenceExemptQueue];
  [v0 performAsync:&__block_literal_global_63_0];
}

void ___UIApplicationInitializeForBackgroundTasks_block_invoke_2()
{
  v32 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E270);
  if (*CategoryCachedImpl)
  {
    v16 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v27) = 136315138;
      *(&v27 + 4) = "void _UIApplicationInitializeForBackgroundTasks(void)_block_invoke_2";
      _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "%s: Received assertionExpirationImminent notification", &v27, 0xCu);
    }
  }

  v1 = UIApp;
  *&v27 = 0;
  *(&v27 + 1) = &v27;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__98;
  v30 = __Block_byref_object_dispose__98;
  v31 = 0;
  v2 = *(__UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E2A0) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "Firing background task expiration handlers", buf, 2u);
  }

  v3 = +[_UIBackgroundTaskInfo backgroundTaskAssertionQueue];
  *buf = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = ___fireBackgroundExpirationHandlers_block_invoke;
  v22 = &unk_1E70FE3F8;
  v4 = v1;
  v23 = v4;
  v24 = &v27;
  dispatch_sync(v3, buf);

  v5 = *(*(&v27 + 1) + 40);
  if (v5 && NSCountMapTable(v5))
  {
    memset(&enumerator, 0, sizeof(enumerator));
    NSEnumerateMapTable(&enumerator, *(*(&v27 + 1) + 40));
    for (value = 0; NSNextMapEnumeratorPair(&enumerator, 0, &value); [value fireExpirationHandler])
    {
      v6 = *(__UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E2B0) + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [value description];
        *v25 = 138477827;
        v26 = v7;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "Calling expiration handler for task: %{private}@", v25, 0xCu);
      }
    }

    NSEndMapTableEnumeration(&enumerator);
    v9 = objc_opt_self();
  }

  else
  {
    v8 = *(__UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E2B8) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(enumerator._pi) = 0;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "No background tasks to fire expiration handlers for.", &enumerator, 2u);
    }
  }

  os_unfair_lock_lock(&stru_1ED49E204);
  v10 = [qword_1ED49E250 copy];
  v11 = *(*(&v27 + 1) + 40);
  *(*(&v27 + 1) + 40) = v10;

  os_unfair_lock_unlock(&stru_1ED49E204);
  v12 = *(*(&v27 + 1) + 40);
  if (v12)
  {
    memset(&enumerator, 0, sizeof(enumerator));
    NSEnumerateMapTable(&enumerator, v12);
    value = 0;
    while (NSNextMapEnumeratorPair(&enumerator, 0, &value))
    {
      v13 = *(__UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E2C0) + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [value description];
        *v25 = 138477827;
        v26 = v14;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Background task still not ended after expiration handlers were called: %{private}@. This app will likely be terminated by the system. Call UIApplication.endBackgroundTask(_:) to avoid this.", v25, 0xCu);
      }
    }

    NSEndMapTableEnumeration(&enumerator);
    v15 = objc_opt_self();
  }

  _Block_object_dispose(&v27, 8);
}

@end