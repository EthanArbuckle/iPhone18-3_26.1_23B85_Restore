@interface SSMetricsController
- (BOOL)isDisabled;
- (SSMetricsController)init;
- (id)_connection;
- (id)_cookieValuesForConfiguration:(id)a3;
- (id)_userType;
- (id)_valueForField:(id)a3 withFieldData:(id)a4;
- (id)locationWithPosition:(int64_t)a3 type:(id)a4 fieldData:(id)a5;
- (void)_applicationWillEnterForeground;
- (void)_enumerateFieldValuesWithMap:(id)a3 fieldData:(id)a4 block:(id)a5;
- (void)_flushUnreportedEventsIfEnabled;
- (void)_handleFlushTimer;
- (void)_serialQueueInsertEvents:(id)a3 withCompletionHandler:(id)a4;
- (void)_setupFlushTimer;
- (void)dealloc;
- (void)flushUnreportedEventsWithCompletionHandler:(id)a3;
- (void)insertEvent:(id)a3 withCompletionHandler:(id)a4;
- (void)insertEvents:(id)a3 withCompletionHandler:(id)a4;
- (void)recordAnalyticsForMetricsDialogEvent:(id)a3 withTopic:(id)a4;
- (void)setFlushTimerEnabled:(BOOL)a3;
- (void)setGlobalConfiguration:(id)a3;
- (void)setPageConfiguration:(id)a3;
@end

@implementation SSMetricsController

- (SSMetricsController)init
{
  v19.receiver = self;
  v19.super_class = SSMetricsController;
  v2 = [(SSMetricsController *)&v19 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.storeservices.analytics", 0);
    v4 = *(v2 + 4);
    *(v2 + 4) = v3;

    v5 = *(v2 + 4);
    v6 = dispatch_get_global_queue(0, 0);
    dispatch_set_target_queue(v5, v6);

    v7 = dispatch_queue_create("com.apple.storeservices.analytics.flush", 0);
    v8 = *(v2 + 5);
    *(v2 + 5) = v7;

    dispatch_set_target_queue(*(v2 + 5), v6);
    v9 = [[SSMetricsConfiguration alloc] initWithGlobalConfiguration:&unk_1F507A330];
    v10 = *(v2 + 3);
    *(v2 + 3) = v9;

    v11 = MEMORY[0x1E698C7D8];
    v12 = [MEMORY[0x1E698CA00] bagSubProfile];
    v13 = [MEMORY[0x1E698CA00] bagSubProfileVersion];
    v14 = [v11 bagForProfile:v12 profileVersion:v13];

    v15 = [objc_alloc(MEMORY[0x1E698C8D8]) initWithBag:v14];
    v16 = *(v2 + 1);
    *(v2 + 1) = v15;

    *(v2 + 49) = 0;
    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:v2 selector:sel__applicationWillEnterForeground name:0x1F50440B8 object:0];
  }

  return v2;
}

- (void)_applicationWillEnterForeground
{
  if (self->_flushOnForeground)
  {
    [(SSMetricsController *)self _flushUnreportedEventsIfEnabled];
    self->_flushOnForeground = 0;
  }
}

- (void)_setupFlushTimer
{
  flushSerialQueue = self->_flushSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SSMetricsController__setupFlushTimer__block_invoke;
  block[3] = &unk_1E84AC050;
  block[4] = self;
  dispatch_async(flushSerialQueue, block);
}

void __39__SSMetricsController__setupFlushTimer__block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 56))
  {
    dispatch_block_cancel(*(v2 + 56));
    v3 = *(a1 + 32);
    v4 = *(v3 + 56);
    *(v3 + 56) = 0;

    v2 = *(a1 + 32);
  }

  if (*(v2 + 48) == 1 && ([v2 isDisabled] & 1) == 0)
  {
    v5 = [*(a1 + 32) configuration];
    [v5 reportingFrequency];
    v7 = v6;

    if (v7 != 0.0)
    {
      v8 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v8)
      {
        v8 = +[SSLogConfig sharedConfig];
      }

      v9 = [v8 shouldLog];
      if ([v8 shouldLogToDisk])
      {
        v10 = v9 | 2;
      }

      else
      {
        v10 = v9;
      }

      v11 = [v8 OSLogObject];
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v10 &= 2u;
      }

      if (v10)
      {
        v12 = objc_opt_class();
        v13 = v7;
        *location = 138412546;
        *&location[4] = v12;
        v30 = 2048;
        v31 = v13;
        v14 = v12;
        LODWORD(v26) = 22;
        v15 = _os_log_send_and_compose_impl();

        if (!v15)
        {
LABEL_17:

          objc_initWeak(location, *(a1 + 32));
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __39__SSMetricsController__setupFlushTimer__block_invoke_57;
          block[3] = &unk_1E84AD870;
          objc_copyWeak(&v28, location);
          block[4] = *(a1 + 32);
          v22 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
          v23 = *(a1 + 32);
          v24 = *(v23 + 56);
          *(v23 + 56) = v22;

          v25 = dispatch_time(0, (v7 * 1000000000.0));
          dispatch_after(v25, *(*(a1 + 32) + 40), *(*(a1 + 32) + 56));
          objc_destroyWeak(&v28);
          objc_destroyWeak(location);
          return;
        }

        v11 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, location, v26}];
        free(v15);
        SSFileLog(v8, @"%@", v16, v17, v18, v19, v20, v21, v11);
      }

      goto LABEL_17;
    }
  }
}

- (BOOL)isDisabled
{
  v2 = [(SSMetricsController *)self configuration];
  v3 = [v2 isDisabled];

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:0x1F50440B8 object:0];

  flushTimerBlock = self->_flushTimerBlock;
  if (flushTimerBlock)
  {
    dispatch_block_cancel(flushTimerBlock);
    v5 = self->_flushTimerBlock;
    self->_flushTimerBlock = 0;
  }

  v6.receiver = self;
  v6.super_class = SSMetricsController;
  [(SSMetricsController *)&v6 dealloc];
}

- (id)_connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
    v5 = self->_connection;
    self->_connection = v4;

    connection = self->_connection;
  }

  return connection;
}

- (id)_cookieValuesForConfiguration:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [a3 cookieFields];
  if ([v3 count])
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = +[SSAccountStore defaultStore];
    v6 = [v5 activeAccount];

    v7 = +[SSVCookieStorage sharedStorage];
    v8 = [v7 allCookiesForAccount:v6];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = [v14 name];
          v16 = [v3 containsObject:v15];

          if (v16)
          {
            v17 = [v14 value];
            v18 = [v14 name];
            [v4 setValue:v17 forKey:v18];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_serialQueueInsertEvents:(id)a3 withCompletionHandler:(id)a4
{
  v110 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v94 = self;
  v8 = [(SSMetricsController *)self configuration];
  v9 = [v8 reportingURLString];
  objc_opt_class();
  v91 = v9;
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 length])
  {
    v86 = v7;
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v85 = [(SSMetricsController *)self _userType];
    [v10 setObject:? forKey:?];
    v11 = [(SSMetricsController *)self _cookieValuesForConfiguration:v8];
    if ([v11 count])
    {
      [v10 setObject:v11 forKey:@"cookies"];
    }

    v84 = v11;
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v89 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    v90 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v87 = v6;
    obj = v6;
    v12 = [obj countByEnumeratingWithState:&v101 objects:v109 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v102;
      v88 = v8;
      do
      {
        v15 = 0;
        v92 = v13;
        do
        {
          if (*v102 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v101 + 1) + 8 * v15);
          if ([v16 isBlacklistedByConfiguration:{v8, v82, v83}])
          {
            v17 = +[SSLogConfig sharedStoreServicesConfig];
            if (!v17)
            {
              v17 = +[SSLogConfig sharedConfig];
            }

            v18 = [v17 shouldLog];
            if ([v17 shouldLogToDisk])
            {
              v18 |= 2u;
            }

            v19 = [v17 OSLogObject];
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = v18;
            }

            else
            {
              v20 = v18 & 2;
            }

            if (v20)
            {
              v21 = objc_opt_class();
              v105 = 138412546;
              v106 = v21;
              v107 = 2112;
              v108 = v16;
              v22 = v21;
              LODWORD(v83) = 22;
              v82 = &v105;
              v23 = _os_log_send_and_compose_impl();

              if (v23)
              {
                v19 = [MEMORY[0x1E696AEC0] stringWithCString:v23 encoding:{4, &v105, v83}];
                free(v23);
                SSFileLog(v17, @"%@", v24, v25, v26, v27, v28, v29, v19);
                goto LABEL_27;
              }
            }

            else
            {
LABEL_27:
            }

            goto LABEL_43;
          }

          context = objc_autoreleasePoolPush();
          if (([MEMORY[0x1E698C918] suppressEngagement] & 1) == 0)
          {
            v30 = v94->_engagement;
            v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
            [v16 appendPropertiesToBody:v31];
            v32 = [objc_alloc(MEMORY[0x1E698CA08]) initWithUnderlyingDictionary:v31];
            if (([v32 suppressEngagement] & 1) == 0)
            {
              v33 = [v32 underlyingDictionary];
              v34 = [(AMSEngagement *)v30 enqueueData:v33];

              v8 = v88;
            }
          }

          v35 = v14;
          v36 = v10;
          v37 = [v16 allTableEntityPropertiesPermittedByConfiguration:v8 externalValues:v10];
          v38 = [v37 objectForKey:@"eventBody"];
          if ([v38 length])
          {
            v39 = [v16 decorateReportingURL:v91];
            v40 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v16, "shouldSuppressUserInfo")}];
            v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
            [v41 setObject:v89 forKey:@"timestampInserted"];
            [v41 setObject:&unk_1F507A1B0 forKey:@"timestampReported"];
            [v41 setObject:v39 forKey:@"report_url"];
            [v41 setObject:v40 forKey:@"supressDsid"];
            [v41 setObject:v38 forKey:@"eventBody"];
            [(__CFString *)v90 addObject:v41];
          }

          else
          {
            v39 = +[SSLogConfig sharedStoreServicesConfig];
            if (!v39)
            {
              v39 = +[SSLogConfig sharedConfig];
            }

            v42 = [v39 shouldLog];
            if ([v39 shouldLogToDisk])
            {
              v43 = v42 | 2;
            }

            else
            {
              v43 = v42;
            }

            v40 = [v39 OSLogObject];
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              v44 = v43;
            }

            else
            {
              v44 = v43 & 2;
            }

            if (v44)
            {
              v45 = objc_opt_class();
              v105 = 138412546;
              v106 = v45;
              v107 = 2112;
              v108 = v16;
              v46 = v45;
              LODWORD(v83) = 22;
              v82 = &v105;
              v47 = _os_log_send_and_compose_impl();

              if (!v47)
              {
                v8 = v88;
                goto LABEL_42;
              }

              v40 = [MEMORY[0x1E696AEC0] stringWithCString:v47 encoding:{4, &v105, v83}];
              free(v47);
              SSFileLog(v39, @"%@", v48, v49, v50, v51, v52, v53, v40);
            }

            v8 = v88;
          }

LABEL_42:
          objc_autoreleasePoolPop(context);
          v10 = v36;
          v14 = v35;
          v13 = v92;
LABEL_43:
          ++v15;
        }

        while (v13 != v15);
        v54 = [obj countByEnumeratingWithState:&v101 objects:v109 count:16];
        v13 = v54;
      }

      while (v54);
    }

    if (![(__CFString *)v90 count])
    {
      v7 = v86;
      v6 = v87;
      if (!v86)
      {
LABEL_78:

        goto LABEL_79;
      }

      v81 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __70__SSMetricsController__serialQueueInsertEvents_withCompletionHandler___block_invoke_51;
      block[3] = &unk_1E84AED58;
      v98 = 1;
      v97 = v86;
      dispatch_async(v81, block);

      v67 = v97;
LABEL_77:

      goto LABEL_78;
    }

    v7 = v86;
    if (!SSIsInternalBuild() || !_os_feature_enabled_impl())
    {
LABEL_63:
      v67 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_int64(v67, "0", 110);
      SSXPCDictionarySetCFObject(v67, "1", v90);
      v68 = [(SSMetricsController *)v94 _connection];
      v99[0] = MEMORY[0x1E69E9820];
      v99[1] = 3221225472;
      v99[2] = __70__SSMetricsController__serialQueueInsertEvents_withCompletionHandler___block_invoke;
      v99[3] = &unk_1E84ABEF0;
      v99[4] = v94;
      v100 = v86;
      [v68 sendMessage:v67 withReply:v99];

      v6 = v87;
      goto LABEL_77;
    }

    v55 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v55)
    {
      v55 = +[SSLogConfig sharedConfig];
    }

    v56 = [v55 shouldLog];
    if ([v55 shouldLogToDisk])
    {
      v57 = v56 | 2;
    }

    else
    {
      v57 = v56;
    }

    v58 = [v55 OSLogObject];
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      v59 = v57;
    }

    else
    {
      v59 = v57 & 2;
    }

    if (v59)
    {
      v105 = 136446210;
      v106 = "[SSMetricsController _serialQueueInsertEvents:withCompletionHandler:]";
      LODWORD(v83) = 12;
      v60 = _os_log_send_and_compose_impl();

      if (!v60)
      {
LABEL_62:

        goto LABEL_63;
      }

      v58 = [MEMORY[0x1E696AEC0] stringWithCString:v60 encoding:{4, &v105, v83}];
      free(v60);
      SSFileLog(v55, @"%@", v61, v62, v63, v64, v65, v66, v58);
    }

    goto LABEL_62;
  }

  v10 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v10)
  {
    v10 = +[SSLogConfig sharedConfig];
  }

  v69 = [v10 shouldLog];
  if ([v10 shouldLogToDisk])
  {
    v70 = v69 | 2;
  }

  else
  {
    v70 = v69;
  }

  v71 = [v10 OSLogObject];
  if (!os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
  {
    v70 &= 2u;
  }

  if (!v70)
  {
    goto LABEL_74;
  }

  v72 = objc_opt_class();
  v73 = v72;
  v105 = 138412546;
  v106 = v72;
  v107 = 1024;
  LODWORD(v108) = objc_opt_class();
  LODWORD(v83) = 18;
  v74 = _os_log_send_and_compose_impl();

  if (v74)
  {
    v71 = [MEMORY[0x1E696AEC0] stringWithCString:v74 encoding:{4, &v105, v83}];
    free(v74);
    SSFileLog(v10, @"%@", v75, v76, v77, v78, v79, v80, v71);
LABEL_74:
  }

LABEL_79:
}

void __70__SSMetricsController__serialQueueInsertEvents_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!*(a1 + 40))
  {
    v6 = objc_opt_class();
    v7 = SSXPCDictionaryCopyObjectWithClass(v4, "0", v6);
    v8 = [v7 intValue];
    v9 = +[SSLogConfig sharedStoreServicesConfig];
    v10 = v9;
    if (v8)
    {
      if (!v9)
      {
        v10 = +[SSLogConfig sharedConfig];
      }

      v11 = [v10 shouldLog];
      if ([v10 shouldLogToDisk])
      {
        v12 = v11 | 2;
      }

      else
      {
        v12 = v11;
      }

      v13 = [v10 OSLogObject];
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v12 &= 2u;
      }

      if (!v12)
      {
        goto LABEL_30;
      }

      v14 = objc_opt_class();
      v15 = v14;
      v36 = 138412546;
      v37 = v14;
      v38 = 1024;
      v39 = [v7 intValue];
      LODWORD(v32) = 18;
    }

    else
    {
      if (!v9)
      {
        v10 = +[SSLogConfig sharedConfig];
      }

      v19 = [v10 shouldLog];
      if ([v10 shouldLogToDisk])
      {
        v20 = v19 | 2;
      }

      else
      {
        v20 = v19;
      }

      v13 = [v10 OSLogObject];
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v20 &= 2u;
      }

      if (!v20)
      {
        goto LABEL_30;
      }

      v36 = 138412290;
      v37 = objc_opt_class();
      v15 = v37;
      LODWORD(v32) = 12;
    }

    v21 = _os_log_send_and_compose_impl();

    if (!v21)
    {
      goto LABEL_31;
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithCString:v21 encoding:{4, &v36, v32}];
    free(v21);
    SSFileLog(v10, @"%@", v22, v23, v24, v25, v26, v27, v13);
LABEL_30:

    goto LABEL_31;
  }

  if (v3 == MEMORY[0x1E69E9E18])
  {
    v5 = 121;
  }

  else
  {
    if (v3 && MEMORY[0x1DA6E0380](v3) == MEMORY[0x1E69E9E80])
    {
      v28 = objc_opt_class();
      v29 = SSXPCDictionaryCopyObjectWithClass(v4, "0", v28);
      if ([v29 intValue])
      {
        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = xpc_dictionary_get_value(v4, "1");
        v16 = [v30 initWithXPCEncoding:v31];
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_18;
    }

    v5 = 111;
  }

  v16 = SSError(@"SSErrorDomain", v5, 0, 0);
LABEL_18:
  v17 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__SSMetricsController__serialQueueInsertEvents_withCompletionHandler___block_invoke_2;
  block[3] = &unk_1E84AC338;
  v18 = *(a1 + 40);
  v34 = v16;
  v35 = v18;
  v7 = v16;
  dispatch_async(v17, block);

  v10 = v35;
LABEL_31:
}

void __70__SSMetricsController__serialQueueInsertEvents_withCompletionHandler___block_invoke_51(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    v2 = *(v1 + 16);
    v3 = *(a1 + 32);

    v2(v3, 0);
  }

  else
  {
    v4 = SSError(@"SSErrorDomain", 112, 0, 0);
    (*(v1 + 16))(v1, v4);
  }
}

- (void)_handleFlushTimer
{
  location[3] = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  LODWORD(location[0]) = 138412290;
  *(location + 4) = objc_opt_class();
  v7 = *(location + 4);
  LODWORD(v15) = 12;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, location, v15}];
    free(v8);
    SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, v6);
LABEL_11:
  }

  objc_initWeak(location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SSMetricsController__handleFlushTimer__block_invoke;
  block[3] = &unk_1E84AD820;
  objc_copyWeak(&v17, location);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v17);
  objc_destroyWeak(location);
}

void __40__SSMetricsController__handleFlushTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v2 = [objc_alloc(MEMORY[0x1E698D028]) initWithBundleIDs:0 states:0];
    v3 = [MEMORY[0x1E696AAE8] mainBundle];
    v4 = [v3 bundleIdentifier];
    v5 = [v2 applicationStateForApplication:v4];

    if ((v5 & 8) != 0 || (SSUIApplication(), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 applicationState], v6, !v7))
    {
      [v8 _flushUnreportedEventsIfEnabled];
    }

    else
    {
      v8[49] = 1;
    }

    WeakRetained = v8;
  }
}

- (void)_flushUnreportedEventsIfEnabled
{
  location[3] = *MEMORY[0x1E69E9840];
  if (!self->_flushTimerEnabled || [(SSMetricsController *)self isDisabled])
  {
    v3 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = v4 | 2;
    }

    else
    {
      v5 = v4;
    }

    v6 = [v3 OSLogObject];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v5 &= 2u;
    }

    if (v5)
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = objc_opt_class();
      v7 = *(location + 4);
      LODWORD(v17) = 12;
      v8 = _os_log_send_and_compose_impl();

      if (!v8)
      {
LABEL_14:

        flushSerialQueue = self->_flushSerialQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __54__SSMetricsController__flushUnreportedEventsIfEnabled__block_invoke_56;
        block[3] = &unk_1E84AC050;
        block[4] = self;
        dispatch_async(flushSerialQueue, block);
        return;
      }

      v6 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, location, v17}];
      free(v8);
      SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, v6);
    }

    goto LABEL_14;
  }

  objc_initWeak(location, self);
  v16 = self->_flushSerialQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __54__SSMetricsController__flushUnreportedEventsIfEnabled__block_invoke;
  v19[3] = &unk_1E84AD870;
  objc_copyWeak(&v20, location);
  v19[4] = self;
  dispatch_async(v16, v19);
  objc_destroyWeak(&v20);
  objc_destroyWeak(location);
}

void __54__SSMetricsController__flushUnreportedEventsIfEnabled__block_invoke(uint64_t a1)
{
  v2 = +[SSTransactionStore defaultStore];
  [v2 takeKeepAliveWithTransactionID:@"com.apple.storeservices.metricsFlushTransactionID"];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__SSMetricsController__flushUnreportedEventsIfEnabled__block_invoke_2;
  v4[3] = &unk_1E84AD730;
  v4[4] = *(a1 + 32);
  [WeakRetained flushUnreportedEventsWithCompletionHandler:v4];
}

void __54__SSMetricsController__flushUnreportedEventsIfEnabled__block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[SSLogConfig sharedStoreServicesConfig];
  v4 = v3;
  if (v2)
  {
    if (!v3)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    v7 = [v4 OSLogObject];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v6 &= 2u;
    }

    if (!v6)
    {
      goto LABEL_22;
    }

    *v20 = 138412546;
    *&v20[4] = objc_opt_class();
    *&v20[12] = 2112;
    *&v20[14] = v2;
    v8 = *&v20[4];
    LODWORD(v19) = 22;
  }

  else
  {
    if (!v3)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v9 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v7 = [v4 OSLogObject];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 &= 2u;
    }

    if (!v10)
    {
      goto LABEL_22;
    }

    *v20 = 138412290;
    *&v20[4] = objc_opt_class();
    v8 = *&v20[4];
    LODWORD(v19) = 12;
  }

  v11 = _os_log_send_and_compose_impl();

  if (v11)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, v20, v19, *v20}];
    free(v11);
    SSFileLog(v4, @"%@", v12, v13, v14, v15, v16, v17, v7);
LABEL_22:
  }

  v18 = +[SSTransactionStore defaultStore];
  [v18 releaseKeepAliveWithTransactionID:@"com.apple.storeservices.metricsFlushTransactionID"];
}

void __54__SSMetricsController__flushUnreportedEventsIfEnabled__block_invoke_56(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    dispatch_block_cancel(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 56);
    *(v3 + 56) = 0;
  }
}

void __39__SSMetricsController__setupFlushTimer__block_invoke_57(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 56);
    *(v3 + 56) = 0;
    v5 = WeakRetained;

    [v5 _handleFlushTimer];
    [v5 _setupFlushTimer];
    WeakRetained = v5;
  }
}

- (void)setFlushTimerEnabled:(BOOL)a3
{
  if (self->_flushTimerEnabled != a3)
  {
    self->_flushTimerEnabled = a3;
    [(SSMetricsController *)self _setupFlushTimer];
  }
}

- (void)flushUnreportedEventsWithCompletionHandler:(id)a3
{
  location[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SSMetricsController *)self configuration];
  v6 = [v5 isSendDisabled];

  if (!v6)
  {
    v8 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = objc_opt_class();
      v12 = *(location + 4);
      LODWORD(v35) = 12;
      v34 = location;
      v13 = _os_log_send_and_compose_impl();

      if (v13)
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, location, v35}];
        free(v13);
        SSFileLog(v8, @"%@", v15, v16, v17, v18, v19, v20, v14);
      }
    }

    else
    {
    }

    if (!SSIsInternalBuild() || !_os_feature_enabled_impl())
    {
      goto LABEL_30;
    }

    v21 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v21)
    {
      v21 = +[SSLogConfig sharedConfig];
    }

    v22 = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      v23 = v22 | 2;
    }

    else
    {
      v23 = v22;
    }

    v24 = [v21 OSLogObject];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = v23;
    }

    else
    {
      v25 = v23 & 2;
    }

    if (v25)
    {
      LODWORD(location[0]) = 136446210;
      *(location + 4) = "[SSMetricsController flushUnreportedEventsWithCompletionHandler:]";
      LODWORD(v35) = 12;
      v26 = _os_log_send_and_compose_impl();

      if (!v26)
      {
LABEL_29:

LABEL_30:
        objc_initWeak(location, self);
        v33 = [(SSMetricsController *)self serialQueue];
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __66__SSMetricsController_flushUnreportedEventsWithCompletionHandler___block_invoke_58;
        v36[3] = &unk_1E84AED80;
        objc_copyWeak(&v38, location);
        v36[4] = self;
        v37 = v4;
        dispatch_async(v33, v36);

        objc_destroyWeak(&v38);
        objc_destroyWeak(location);
        goto LABEL_31;
      }

      v24 = [MEMORY[0x1E696AEC0] stringWithCString:v26 encoding:{4, location, v35}];
      free(v26);
      SSFileLog(v21, @"%@", v27, v28, v29, v30, v31, v32, v24);
    }

    goto LABEL_29;
  }

  if (v4)
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__SSMetricsController_flushUnreportedEventsWithCompletionHandler___block_invoke;
    block[3] = &unk_1E84ADED0;
    v40 = v4;
    dispatch_async(v7, block);
  }

LABEL_31:
}

void __66__SSMetricsController_flushUnreportedEventsWithCompletionHandler___block_invoke_58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v3, "0", 114);
  v4 = [WeakRetained _connection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__SSMetricsController_flushUnreportedEventsWithCompletionHandler___block_invoke_2;
  v6[3] = &unk_1E84ABEF0;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v4 sendMessage:v3 withReply:v6];
}

void __66__SSMetricsController_flushUnreportedEventsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!*(a1 + 40))
  {
    v6 = objc_opt_class();
    v7 = SSXPCDictionaryCopyObjectWithClass(v4, "0", v6);
    v8 = [v7 intValue];
    v9 = +[SSLogConfig sharedStoreServicesConfig];
    v10 = v9;
    if (v8)
    {
      if (!v9)
      {
        v10 = +[SSLogConfig sharedConfig];
      }

      v11 = [v10 shouldLog];
      if ([v10 shouldLogToDisk])
      {
        v12 = v11 | 2;
      }

      else
      {
        v12 = v11;
      }

      v13 = [v10 OSLogObject];
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v12 &= 2u;
      }

      if (!v12)
      {
        goto LABEL_30;
      }

      v14 = objc_opt_class();
      v15 = v14;
      v36 = 138412546;
      v37 = v14;
      v38 = 1024;
      v39 = [v7 intValue];
      LODWORD(v32) = 18;
    }

    else
    {
      if (!v9)
      {
        v10 = +[SSLogConfig sharedConfig];
      }

      v19 = [v10 shouldLog];
      if ([v10 shouldLogToDisk])
      {
        v20 = v19 | 2;
      }

      else
      {
        v20 = v19;
      }

      v13 = [v10 OSLogObject];
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v20 &= 2u;
      }

      if (!v20)
      {
        goto LABEL_30;
      }

      v36 = 138412290;
      v37 = objc_opt_class();
      v15 = v37;
      LODWORD(v32) = 12;
    }

    v21 = _os_log_send_and_compose_impl();

    if (!v21)
    {
      goto LABEL_31;
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithCString:v21 encoding:{4, &v36, v32}];
    free(v21);
    SSFileLog(v10, @"%@", v22, v23, v24, v25, v26, v27, v13);
LABEL_30:

    goto LABEL_31;
  }

  if (v3 == MEMORY[0x1E69E9E18])
  {
    v5 = 121;
  }

  else
  {
    if (v3 && MEMORY[0x1DA6E0380](v3) == MEMORY[0x1E69E9E80])
    {
      v28 = objc_opt_class();
      v29 = SSXPCDictionaryCopyObjectWithClass(v4, "0", v28);
      if ([v29 intValue])
      {
        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = xpc_dictionary_get_value(v4, "1");
        v16 = [v30 initWithXPCEncoding:v31];
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_18;
    }

    v5 = 111;
  }

  v16 = SSError(@"SSErrorDomain", v5, 0, 0);
LABEL_18:
  v17 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__SSMetricsController_flushUnreportedEventsWithCompletionHandler___block_invoke_3;
  block[3] = &unk_1E84AC338;
  v18 = *(a1 + 40);
  v34 = v16;
  v35 = v18;
  v7 = v16;
  dispatch_async(v17, block);

  v10 = v35;
LABEL_31:
}

- (void)insertEvent:(id)a3 withCompletionHandler:(id)a4
{
  if (a3)
  {
    v6 = MEMORY[0x1E695DEC8];
    v7 = a4;
    v8 = [v6 arrayWithObject:a3];
    [SSMetricsController insertEvents:"insertEvents:withCompletionHandler:" withCompletionHandler:?];
  }

  else
  {
    v8 = a4;
    [(SSMetricsController *)self insertEvents:0 withCompletionHandler:?];
  }
}

- (void)insertEvents:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(SSMetricsController *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__SSMetricsController_insertEvents_withCompletionHandler___block_invoke;
  block[3] = &unk_1E84AEDA8;
  objc_copyWeak(&v15, &location);
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __58__SSMetricsController_insertEvents_withCompletionHandler___block_invoke(uint64_t a1)
{
  v93 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = SSRestrictionsIsOnDeviceDiagnosticsAllowed();
  v4 = [MEMORY[0x1E695DF70] array];
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v84 objects:v92 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v85;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v85 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v84 + 1) + 8 * i);
        if (v3 & 1 | (([v10 requiresDiagnosticSendingPermission] & 1) == 0))
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v84 objects:v92 count:16];
    }

    while (v7);
  }

  v11 = [*(a1 + 32) count];
  if (v11 != [v4 count])
  {
    v12 = [*(a1 + 32) count];
    v13 = [v4 count];
    v14 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    v15 = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v16 = v15 | 2;
    }

    else
    {
      v16 = v15;
    }

    v17 = [v14 OSLogObject];
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v18 = objc_opt_class();
      v88 = 138412546;
      v89 = v18;
      v90 = 2048;
      v91 = v12 - v13;
      v19 = v18;
      LODWORD(v77) = 22;
      v76 = &v88;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
LABEL_22:

        goto LABEL_23;
      }

      v17 = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:{4, &v88, v77}];
      free(v20);
      SSFileLog(v14, @"%@", v21, v22, v23, v24, v25, v26, v17);
    }

    goto LABEL_22;
  }

LABEL_23:
  if ([v4 count])
  {
    if ([WeakRetained isDisabled])
    {
      v27 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v27)
      {
        v27 = +[SSLogConfig sharedConfig];
      }

      v28 = [v27 shouldLog];
      if ([v27 shouldLogToDisk])
      {
        v29 = v28 | 2;
      }

      else
      {
        v29 = v28;
      }

      v30 = [v27 OSLogObject];
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v29 &= 2u;
      }

      if (v29)
      {
        v31 = objc_opt_class();
        v32 = v31;
        v33 = [v4 count];
        v88 = 138412546;
        v89 = v31;
        v90 = 2048;
        v91 = v33;
        LODWORD(v77) = 22;
        v34 = _os_log_send_and_compose_impl();

        if (!v34)
        {
          goto LABEL_36;
        }

        v30 = [MEMORY[0x1E696AEC0] stringWithCString:v34 encoding:{4, &v88, v77}];
        free(v34);
        SSFileLog(v27, @"%@", v35, v36, v37, v38, v39, v40, v30);
      }

LABEL_36:
      v41 = *(a1 + 48);
      if (v41)
      {
        v42 = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __58__SSMetricsController_insertEvents_withCompletionHandler___block_invoke_61;
        block[3] = &unk_1E84ADED0;
        v81 = v41;
        dispatch_async(v42, block);

        v43 = v81;
LABEL_66:

        goto LABEL_67;
      }

      goto LABEL_67;
    }

    v59 = [WeakRetained configuration];
    v43 = [v59 reportingURLString];

    if ([v43 length])
    {
      [WeakRetained _serialQueueInsertEvents:v4 withCompletionHandler:*(a1 + 48)];
      goto LABEL_66;
    }

    v60 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v60)
    {
      v60 = +[SSLogConfig sharedConfig];
    }

    v61 = [v60 shouldLog];
    if ([v60 shouldLogToDisk])
    {
      v62 = v61 | 2;
    }

    else
    {
      v62 = v61;
    }

    v63 = [v60 OSLogObject];
    if (!os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      v62 &= 2u;
    }

    if (v62)
    {
      v64 = objc_opt_class();
      v65 = v64;
      v66 = [v4 count];
      v88 = 138412546;
      v89 = v64;
      v90 = 2048;
      v91 = v66;
      LODWORD(v77) = 22;
      v67 = _os_log_send_and_compose_impl();

      if (!v67)
      {
        goto LABEL_64;
      }

      v63 = [MEMORY[0x1E696AEC0] stringWithCString:v67 encoding:{4, &v88, v77}];
      free(v67);
      SSFileLog(v60, @"%@", v68, v69, v70, v71, v72, v73, v63);
    }

LABEL_64:
    v74 = *(a1 + 48);
    if (v74)
    {
      v75 = dispatch_get_global_queue(0, 0);
      v82[0] = MEMORY[0x1E69E9820];
      v82[1] = 3221225472;
      v82[2] = __58__SSMetricsController_insertEvents_withCompletionHandler___block_invoke_60;
      v82[3] = &unk_1E84ADED0;
      v83 = v74;
      dispatch_async(v75, v82);
    }

    goto LABEL_66;
  }

  v44 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v44)
  {
    v44 = +[SSLogConfig sharedConfig];
  }

  v45 = [v44 shouldLog];
  if ([v44 shouldLogToDisk])
  {
    v46 = v45 | 2;
  }

  else
  {
    v46 = v45;
  }

  v47 = [v44 OSLogObject];
  if (!os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v46 &= 2u;
  }

  if (v46)
  {
    v48 = objc_opt_class();
    v88 = 138412290;
    v89 = v48;
    v49 = v48;
    LODWORD(v77) = 12;
    v50 = _os_log_send_and_compose_impl();

    if (!v50)
    {
      goto LABEL_49;
    }

    v47 = [MEMORY[0x1E696AEC0] stringWithCString:v50 encoding:{4, &v88, v77}];
    free(v50);
    SSFileLog(v44, @"%@", v51, v52, v53, v54, v55, v56, v47);
  }

LABEL_49:
  v57 = *(a1 + 48);
  if (v57)
  {
    v58 = dispatch_get_global_queue(0, 0);
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __58__SSMetricsController_insertEvents_withCompletionHandler___block_invoke_62;
    v78[3] = &unk_1E84ADED0;
    v79 = v57;
    dispatch_async(v58, v78);

    v43 = v79;
    goto LABEL_66;
  }

LABEL_67:
}

- (id)locationWithPosition:(int64_t)a3 type:(id)a4 fieldData:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(SSMetricsEventLocation);
  [(SSMetricsEventLocation *)v10 setLocationPosition:a3];
  [(SSMetricsEventLocation *)v10 setLocationType:v8];
  v11 = [(SSMetricsConfiguration *)self->_configuration fieldsMap];
  v12 = [v11 objectForKey:@"single"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __59__SSMetricsController_locationWithPosition_type_fieldData___block_invoke;
    v33[3] = &unk_1E84AE620;
    v34 = v10;
    [(SSMetricsController *)self _enumerateFieldValuesWithMap:v12 fieldData:v9 block:v33];
  }

  v13 = [v11 objectForKey:@"multi"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __59__SSMetricsController_locationWithPosition_type_fieldData___block_invoke_2;
    v31[3] = &unk_1E84AE620;
    v32 = v10;
    [(SSMetricsController *)self _enumerateFieldValuesWithMap:v13 fieldData:v9 block:v31];
  }

  v14 = [v11 objectForKey:@"custom"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v13;
    v25 = v12;
    v26 = v8;
    v23 = v14;
    v15 = [v14 objectForKey:@"location"];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v28;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v27 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = [(SSMetricsController *)self _valueForField:v20 withFieldData:v9];
            if (v21)
            {
              [(SSMetricsEventLocation *)v10 setValue:v21 forLocationKey:v20];
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v17);
    }

    v8 = v26;
    v13 = v24;
    v12 = v25;
    v14 = v23;
  }

  return v10;
}

uint64_t __59__SSMetricsController_locationWithPosition_type_fieldData___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) setValue:a3 forLocationKey:a2];
  *a4 = 1;
  return result;
}

- (void)recordAnalyticsForMetricsDialogEvent:(id)a3 withTopic:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  if (!SSIsDaemon())
  {
    if (!SSIsInternalBuild() || !_os_feature_enabled_impl())
    {
      goto LABEL_20;
    }

    v8 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = v10;
    }

    else
    {
      v12 = v10 & 2;
    }

    if (v12)
    {
      v25 = 136446210;
      v26 = "[SSMetricsController recordAnalyticsForMetricsDialogEvent:withTopic:]";
      LODWORD(v22) = 12;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_19:

LABEL_20:
        v20 = SSXPCCreateMessageDictionary(197);
        SSXPCDictionarySetObject(v20, "1", v7);

        SSXPCDictionarySetObject(v20, "2", v6);
        v21 = [(SSMetricsController *)self _connection];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __70__SSMetricsController_recordAnalyticsForMetricsDialogEvent_withTopic___block_invoke;
        v24[3] = &unk_1E84AEDD0;
        v24[4] = self;
        [v21 sendMessage:v20 withReply:v24];

        return;
      }

      v11 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v25, v22}];
      free(v13);
      SSFileLog(v8, @"%@", v14, v15, v16, v17, v18, v19, v11);
    }

    goto LABEL_19;
  }

  v23 = objc_alloc_init(NSClassFromString(&cfstr_Metricscontrol.isa));
  [v23 recordAnalyticsWithMetricsDialogEvent:v7 forTopic:v6];
}

void __70__SSMetricsController_recordAnalyticsForMetricsDialogEvent_withTopic___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = v2;
  if (v2 == MEMORY[0x1E69E9E18])
  {
    v4 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v8 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v7 = [v4 OSLogObject];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 &= 2u;
    }

    if (!v9)
    {
      goto LABEL_24;
    }

LABEL_21:
    *v25 = 138412290;
    *&v25[4] = objc_opt_class();
    v10 = *&v25[4];
    LODWORD(v24) = 12;
    v11 = _os_log_send_and_compose_impl();

    goto LABEL_22;
  }

  if (!v2 || MEMORY[0x1DA6E0380](v2) != MEMORY[0x1E69E9E80])
  {
    v4 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    v7 = [v4 OSLogObject];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v6 &= 2u;
    }

    if (!v6)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  v18 = xpc_dictionary_get_BOOL(v3, "0");
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v19 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v20 = v19 | 2;
  }

  else
  {
    v20 = v19;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v20 &= 2u;
  }

  if (!v20)
  {
    goto LABEL_24;
  }

  v21 = objc_opt_class();
  v22 = @"NO";
  if (v18)
  {
    v22 = @"YES";
  }

  *v25 = 138412546;
  *&v25[4] = v21;
  *&v25[12] = 2112;
  *&v25[14] = v22;
  v23 = v21;
  LODWORD(v24) = 22;
  v11 = _os_log_send_and_compose_impl();

LABEL_22:
  if (v11)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, v25, v24, *v25}];
    free(v11);
    SSFileLog(v4, @"%@", v12, v13, v14, v15, v16, v17, v7);
LABEL_24:
  }
}

- (void)setGlobalConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(SSMetricsController *)self serialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__SSMetricsController_setGlobalConfiguration___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __46__SSMetricsController_setGlobalConfiguration___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 24) != v2)
  {
    [v2 reportingFrequency];
    v5 = v4;
    [*(*(a1 + 32) + 24) reportingFrequency];
    if (v5 != v6)
    {
      [*(a1 + 32) setFlushTimerEnabled:0];
    }

    v7 = [*(*(a1 + 32) + 24) childConfiguration];
    objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
    [*(*(a1 + 32) + 24) setChildConfiguration:v7];
  }
}

- (void)setPageConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(SSMetricsController *)self serialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SSMetricsController_setPageConfiguration___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

uint64_t __44__SSMetricsController_setPageConfiguration___block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 24))
  {
    return [*(*(result + 32) + 24) setChildConfiguration:*(result + 40)];
  }

  return result;
}

- (void)_enumerateFieldValuesWithMap:(id)a3 fieldData:(id)a4 block:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__SSMetricsController__enumerateFieldValuesWithMap_fieldData_block___block_invoke;
  v12[3] = &unk_1E84AEDF8;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [a3 enumerateKeysAndObjectsUsingBlock:v12];
}

void __68__SSMetricsController__enumerateFieldValuesWithMap_fieldData_block___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v14 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [*(a1 + 32) _valueForField:v12 withFieldData:*(a1 + 40)];
              if (v13)
              {
                (*(*(a1 + 48) + 16))();
              }
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v9);
      }
    }
  }
}

- (id)_valueForField:(id)a3 withFieldData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SSMetricsConfiguration *)self->_configuration valueForConfigurationKey:v6];
  if (!v8)
  {
    v8 = [v7 valueForMetricsField:v6];
  }

  return v8;
}

- (id)_userType
{
  v2 = +[SSVSubscriptionStatusCoordinator sharedCoordinator];
  v3 = [v2 lastKnownStatus];

  v4 = [v3 accountStatus];
  if (v4 > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E84AEE18[v4];
  }

  return v5;
}

@end