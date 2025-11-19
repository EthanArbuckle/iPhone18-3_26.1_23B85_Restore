@interface SACallbackManager
+ (id)activeHandlers;
+ (id)addAppSizerHandler:(id)a3;
+ (id)setUniqueIDForHandler:(id)a3;
+ (void)callAppSizeHandlersWithResults:(id)a3 error:(id)a4;
+ (void)removeAppSizerHandler:(id)a3;
@end

@implementation SACallbackManager

+ (id)setUniqueIDForHandler:(id)a3
{
  v3 = a3;
  for (i = 0; ; i = v5)
  {
    v5 = +[NSUUID UUID];

    v6 = qword_100073710;
    objc_sync_enter(v6);
    v7 = [qword_100073710 objectForKeyedSubscript:v5];

    if (!v7)
    {
      break;
    }

    objc_sync_exit(v6);
  }

  [qword_100073710 setObject:v3 forKeyedSubscript:v5];
  objc_sync_exit(v6);

  v8 = SALog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Added App Sizer handler id (%@)", &v10, 0xCu);
  }

  return v5;
}

+ (id)addAppSizerHandler:(id)a3
{
  v3 = a3;
  v4 = qword_100073710;
  objc_sync_enter(v4);
  if (!qword_100073710)
  {
    v5 = objc_opt_new();
    v6 = qword_100073710;
    qword_100073710 = v5;
  }

  objc_sync_exit(v4);

  v7 = [SACallbackManager setUniqueIDForHandler:v3];
  v8 = SALog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10003EDE0();
  }

  return v7;
}

+ (void)removeAppSizerHandler:(id)a3
{
  v3 = a3;
  v4 = qword_100073710;
  objc_sync_enter(v4);
  if (!v3 || !qword_100073710)
  {
LABEL_9:
    objc_sync_exit(v4);
    goto LABEL_10;
  }

  v5 = [qword_100073710 objectForKeyedSubscript:v3];

  if (!v5)
  {
    v6 = SALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10003EEE8(v3, v6);
    }

    goto LABEL_9;
  }

  [qword_100073710 removeObjectForKey:v3];
  objc_sync_exit(v4);

  v4 = SALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10003EE64();
  }

LABEL_10:
}

+ (id)activeHandlers
{
  v2 = [qword_100073710 allKeys];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

+ (void)callAppSizeHandlersWithResults:(id)a3 error:(id)a4
{
  v19 = a3;
  v5 = a4;
  v6 = SALog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10003EF60(v6);
  }

  v7 = qword_100073710;
  objc_sync_enter(v7);
  v8 = [qword_100073710 copy];
  objc_sync_exit(v7);

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v10)
  {
    v11 = 0;
    v12 = *v23;
    do
    {
      v13 = 0;
      v14 = v11;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v22 + 1) + 8 * v13);
        v16 = SALog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v27 = v15;
          _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "callAppSizeHandlersWithResults id (%@)", buf, 0xCu);
        }

        v11 = [v9 objectForKey:v15];

        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100020424;
        v21[3] = &unk_1000652A8;
        v21[4] = v15;
        v17 = [v11 remoteObjectProxyWithErrorHandler:v21];
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_100020494;
        v20[3] = &unk_1000652D0;
        v20[4] = v15;
        [v17 callAppSizerHandlerWithResults:v19 error:v5 withHandlerResultBlock:v20];

        v13 = v13 + 1;
        v14 = v11;
      }

      while (v10 != v13);
      v10 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v10);
  }

  v18 = SALog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    sub_10003EFA4(v18);
  }
}

@end