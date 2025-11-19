@interface SSMetricsEvent
+ (id)_globalCanaryLock;
+ (id)globalEventCanary;
+ (void)setGlobalEventCanary:(id)a3;
- (BOOL)isBlacklistedByConfiguration:(id)a3;
- (id)_dictionaryRepresentationOfBody;
- (id)allTableEntityPropertiesPermittedByConfiguration:(id)a3 externalValues:(id)a4;
@end

@implementation SSMetricsEvent

+ (id)globalEventCanary
{
  v3 = [a1 _globalCanaryLock];
  [v3 lock];

  v4 = [_globalEventCanary copy];
  v5 = [a1 _globalCanaryLock];
  [v5 unlock];

  return v4;
}

+ (id)_globalCanaryLock
{
  if (_globalCanaryLock_onceToken != -1)
  {
    +[SSMetricsEvent _globalCanaryLock];
  }

  v3 = _globalCanaryLock__canaryLock;

  return v3;
}

uint64_t __35__SSMetricsEvent__globalCanaryLock__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD10]);
  v1 = _globalCanaryLock__canaryLock;
  _globalCanaryLock__canaryLock = v0;

  v2 = _globalCanaryLock__canaryLock;

  return [v2 setName:@"com.StoreServices.globalEventCanaryLock"];
}

+ (void)setGlobalEventCanary:(id)a3
{
  v4 = [a3 copy];
  v5 = [a1 _globalCanaryLock];
  [v5 lock];

  v6 = _globalEventCanary;
  _globalEventCanary = v4;

  v7 = [a1 _globalCanaryLock];
  [v7 unlock];
}

- (id)allTableEntityPropertiesPermittedByConfiguration:(id)a3 externalValues:(id)a4
{
  v70 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v64 = objc_alloc_init(MEMORY[0x1E695DF90]);
  context = objc_autoreleasePoolPush();
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (([v6 disableEventDecoration] & 1) == 0)
  {
    v9 = [v6 eventFields];
    if ([v9 count])
    {
      [v8 addEntriesFromDictionary:v9];
    }
  }

  v10 = [(SSMetricsEvent *)self _dictionaryRepresentationOfBody];
  if ([v10 count])
  {
    [v8 addEntriesFromDictionary:v10];
  }

  if (([v6 disableEventDecoration] & 1) == 0 && objc_msgSend(v7, "count"))
  {
    [v8 addEntriesFromDictionary:v7];
  }

  v11 = [v6 blacklistedEventFields];
  if ([(SSMetricsEvent *)self isFieldBlacklistEnabled])
  {
    if ([v11 count])
    {
      v12 = [v8 count];
      [v8 removeObjectsForKeys:v11];
      v13 = [v8 count];
      if (v12 != v13)
      {
        v14 = v13;
        v59 = v11;
        v61 = v7;
        v15 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v15)
        {
          v15 = +[SSLogConfig sharedConfig];
        }

        v16 = [v15 shouldLog];
        if ([v15 shouldLogToDisk])
        {
          v17 = v16 | 2;
        }

        else
        {
          v17 = v16;
        }

        v18 = [v15 OSLogObject];
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v17 &= 2u;
        }

        if (v17)
        {
          v19 = objc_opt_class();
          v20 = v12 - v14;
          v58 = v19;
          v21 = [v8 objectForKey:@"eventType"];
          v66 = 138412802;
          v67 = v19;
          v68 = 1024;
          *v69 = v20;
          *&v69[4] = 2112;
          *&v69[6] = v21;
          LODWORD(v57) = 28;
          v56 = &v66;
          v22 = _os_log_send_and_compose_impl();

          if (!v22)
          {
LABEL_24:

            v11 = v59;
            v7 = v61;
            goto LABEL_25;
          }

          v18 = [MEMORY[0x1E696AEC0] stringWithCString:v22 encoding:{4, &v66, v57}];
          free(v22);
          SSFileLog(v15, @"%@", v23, v24, v25, v26, v27, v28, v18);
        }

        goto LABEL_24;
      }
    }
  }

LABEL_25:
  if ([v8 count])
  {
    v65 = 0;
    v29 = [MEMORY[0x1E696AE40] dataWithPropertyList:v8 format:200 options:0 error:&v65];
    v30 = v65;
    if (v29)
    {
      [v64 setObject:v29 forKey:@"eventBody"];
LABEL_49:

      goto LABEL_50;
    }

    v60 = v11;
    v62 = v7;
    v42 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v42)
    {
      v42 = +[SSLogConfig sharedConfig];
    }

    v43 = [v42 shouldLog];
    if ([v42 shouldLogToDisk])
    {
      v44 = v43 | 2;
    }

    else
    {
      v44 = v43;
    }

    v45 = [v42 OSLogObject];
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v44 &= 2u;
    }

    if (v44)
    {
      v46 = objc_opt_class();
      v66 = 138412802;
      v67 = v46;
      v68 = 2112;
      *v69 = v30;
      *&v69[8] = 2112;
      *&v69[10] = v8;
      v47 = v46;
      LODWORD(v57) = 32;
      v48 = _os_log_send_and_compose_impl();

      if (!v48)
      {
LABEL_48:

        v11 = v60;
        v7 = v62;
        goto LABEL_49;
      }

      v45 = [MEMORY[0x1E696AEC0] stringWithCString:v48 encoding:{4, &v66, v57}];
      free(v48);
      SSFileLog(v42, @"%@", v49, v50, v51, v52, v53, v54, v45);
    }

    goto LABEL_48;
  }

  v30 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v30)
  {
    v30 = +[SSLogConfig sharedConfig];
  }

  v31 = [v30 shouldLog];
  if ([v30 shouldLogToDisk])
  {
    v31 |= 2u;
  }

  v29 = [v30 OSLogObject];
  if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v31 &= 2u;
  }

  if (!v31)
  {
    goto LABEL_49;
  }

  v32 = v7;
  v33 = objc_opt_class();
  v66 = 138412546;
  v67 = v33;
  v68 = 2112;
  *v69 = self;
  v34 = v33;
  LODWORD(v57) = 22;
  v35 = _os_log_send_and_compose_impl();

  if (v35)
  {
    v29 = [MEMORY[0x1E696AEC0] stringWithCString:v35 encoding:{4, &v66, v57}];
    free(v35);
    SSFileLog(v30, @"%@", v36, v37, v38, v39, v40, v41, v29);
    v7 = v32;
    goto LABEL_49;
  }

  v7 = v32;
LABEL_50:

  objc_autoreleasePoolPop(context);

  return v64;
}

- (BOOL)isBlacklistedByConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(SSMetricsEvent *)self eventType];
  v6 = [v4 isEventTypeBlacklisted:v5];

  return v6;
}

- (id)_dictionaryRepresentationOfBody
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(SSMetricsEvent *)self appendPropertiesToBody:v3];

  return v3;
}

@end