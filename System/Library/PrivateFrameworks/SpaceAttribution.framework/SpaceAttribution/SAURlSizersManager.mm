@interface SAURlSizersManager
+ (id)addURLSizerConfiguration:(id)configuration;
+ (id)getURLSizerConfiguration:(id)configuration;
+ (id)setUniqueIDForURLSizer:(id)sizer;
+ (void)callURLSizer:(id)sizer withResults:(id)results error:(id)error;
+ (void)removeURLSizerHandler:(id)handler;
@end

@implementation SAURlSizersManager

+ (id)setUniqueIDForURLSizer:(id)sizer
{
  sizerCopy = sizer;
  v4 = 0;
  while (1)
  {
    v5 = v4;
    v4 = +[NSUUID UUID];

    v6 = qword_100073720;
    objc_sync_enter(v6);
    v7 = qword_100073720;
    if (!qword_100073720)
    {
      v8 = objc_opt_new();
      v9 = qword_100073720;
      qword_100073720 = v8;

      v7 = qword_100073720;
    }

    v10 = [v7 objectForKey:v4];

    if (!v10)
    {
      break;
    }

    objc_sync_exit(v6);
  }

  [qword_100073720 setObject:sizerCopy forKey:v4];
  objc_sync_exit(v6);

  [sizerCopy setSizerID:v4];

  return v4;
}

+ (id)getURLSizerConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = qword_100073720;
  objc_sync_enter(v4);
  v5 = [qword_100073720 objectForKey:configurationCopy];
  objc_sync_exit(v4);

  if (!v5)
  {
    v6 = SALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10003F948(configurationCopy, v6);
    }
  }

  return v5;
}

+ (id)addURLSizerConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [self setUniqueIDForURLSizer:?];
  obj = qword_100073718;
  objc_sync_enter(obj);
  if (!qword_100073718)
  {
    v5 = objc_opt_new();
    v6 = qword_100073718;
    qword_100073718 = v5;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  urls = [configurationCopy urls];
  v8 = [urls countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(urls);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [qword_100073718 objectForKeyedSubscript:v11];
        if (!v13)
        {
          v14 = objc_opt_new();
          [qword_100073718 setObject:v14 forKeyedSubscript:v11];

          v13 = [qword_100073718 objectForKeyedSubscript:v11];
        }

        [v13 addObject:v4];

        objc_autoreleasePoolPop(v12);
      }

      v8 = [urls countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  objc_sync_exit(obja);

  return v4;
}

+ (void)removeURLSizerHandler:(id)handler
{
  handlerCopy = handler;
  v4 = qword_100073720;
  objc_sync_enter(v4);
  if (qword_100073720 && ([qword_100073720 objectForKeyedSubscript:handlerCopy], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    [qword_100073720 removeObjectForKey:handlerCopy];
    objc_sync_exit(v4);

    obj = qword_100073718;
    objc_sync_enter(obj);
    context = objc_autoreleasePoolPush();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v6 = qword_100073718;
    v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    v20 = v5;
    v8 = 0;
    if (v7)
    {
      v9 = *v28;
      do
      {
        v10 = 0;
        v11 = v8;
        do
        {
          if (*v28 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v8 = [qword_100073718 objectForKeyedSubscript:*(*(&v27 + 1) + 8 * v10)];

          [v8 removeObject:handlerCopy];
          v10 = v10 + 1;
          v11 = v8;
        }

        while (v7 != v10);
        v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v7);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = [qword_100073718 copy];
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v13)
    {
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          v17 = [v12 objectForKeyedSubscript:v16];
          v18 = [v17 count] == 0;

          if (v18)
          {
            [qword_100073718 removeObjectForKey:v16];
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v13);
    }

    objc_autoreleasePoolPop(context);
    objc_sync_exit(obj);

    v4 = v20;
  }

  else
  {
    v19 = SALog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10003F9E4(handlerCopy, v19);
    }

    objc_sync_exit(v4);
  }
}

+ (void)callURLSizer:(id)sizer withResults:(id)results error:(id)error
{
  sizerCopy = sizer;
  resultsCopy = results;
  errorCopy = error;
  v10 = SALog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10003FA5C(v10);
  }

  sizerID = [sizerCopy sizerID];
  replyController = [sizerCopy replyController];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100023598;
  v23[3] = &unk_1000652A8;
  v13 = sizerID;
  v24 = v13;
  v14 = [replyController remoteObjectProxyWithErrorHandler:v23];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100023608;
  v19[3] = &unk_100065348;
  v20 = v13;
  v21 = sizerCopy;
  v22 = resultsCopy;
  v15 = resultsCopy;
  v16 = sizerCopy;
  v17 = v13;
  [v14 callURLSizerHandlerWithResults:v15 error:errorCopy withHandlerResultsBlock:v19];

  v18 = SALog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    sub_10003FAE0(v18);
  }
}

@end