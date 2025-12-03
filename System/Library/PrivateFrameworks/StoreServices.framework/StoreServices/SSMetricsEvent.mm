@interface SSMetricsEvent
+ (id)_globalCanaryLock;
+ (id)globalEventCanary;
+ (void)setGlobalEventCanary:(id)canary;
- (BOOL)isBlacklistedByConfiguration:(id)configuration;
- (id)_dictionaryRepresentationOfBody;
- (id)allTableEntityPropertiesPermittedByConfiguration:(id)configuration externalValues:(id)values;
@end

@implementation SSMetricsEvent

+ (id)globalEventCanary
{
  _globalCanaryLock = [self _globalCanaryLock];
  [_globalCanaryLock lock];

  v4 = [_globalEventCanary copy];
  _globalCanaryLock2 = [self _globalCanaryLock];
  [_globalCanaryLock2 unlock];

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

+ (void)setGlobalEventCanary:(id)canary
{
  v4 = [canary copy];
  _globalCanaryLock = [self _globalCanaryLock];
  [_globalCanaryLock lock];

  v6 = _globalEventCanary;
  _globalEventCanary = v4;

  _globalCanaryLock2 = [self _globalCanaryLock];
  [_globalCanaryLock2 unlock];
}

- (id)allTableEntityPropertiesPermittedByConfiguration:(id)configuration externalValues:(id)values
{
  v70 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  valuesCopy = values;
  v64 = objc_alloc_init(MEMORY[0x1E695DF90]);
  context = objc_autoreleasePoolPush();
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (([configurationCopy disableEventDecoration] & 1) == 0)
  {
    eventFields = [configurationCopy eventFields];
    if ([eventFields count])
    {
      [v8 addEntriesFromDictionary:eventFields];
    }
  }

  _dictionaryRepresentationOfBody = [(SSMetricsEvent *)self _dictionaryRepresentationOfBody];
  if ([_dictionaryRepresentationOfBody count])
  {
    [v8 addEntriesFromDictionary:_dictionaryRepresentationOfBody];
  }

  if (([configurationCopy disableEventDecoration] & 1) == 0 && objc_msgSend(valuesCopy, "count"))
  {
    [v8 addEntriesFromDictionary:valuesCopy];
  }

  blacklistedEventFields = [configurationCopy blacklistedEventFields];
  if ([(SSMetricsEvent *)self isFieldBlacklistEnabled])
  {
    if ([blacklistedEventFields count])
    {
      v12 = [v8 count];
      [v8 removeObjectsForKeys:blacklistedEventFields];
      v13 = [v8 count];
      if (v12 != v13)
      {
        v14 = v13;
        v59 = blacklistedEventFields;
        v61 = valuesCopy;
        v15 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v15)
        {
          v15 = +[SSLogConfig sharedConfig];
        }

        shouldLog = [v15 shouldLog];
        if ([v15 shouldLogToDisk])
        {
          v17 = shouldLog | 2;
        }

        else
        {
          v17 = shouldLog;
        }

        oSLogObject = [v15 OSLogObject];
        if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
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

            blacklistedEventFields = v59;
            valuesCopy = v61;
            goto LABEL_25;
          }

          oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v22 encoding:{4, &v66, v57}];
          free(v22);
          SSFileLog(v15, @"%@", v23, v24, v25, v26, v27, v28, oSLogObject);
        }

        goto LABEL_24;
      }
    }
  }

LABEL_25:
  if ([v8 count])
  {
    v65 = 0;
    oSLogObject3 = [MEMORY[0x1E696AE40] dataWithPropertyList:v8 format:200 options:0 error:&v65];
    v30 = v65;
    if (oSLogObject3)
    {
      [v64 setObject:oSLogObject3 forKey:@"eventBody"];
LABEL_49:

      goto LABEL_50;
    }

    v60 = blacklistedEventFields;
    v62 = valuesCopy;
    v42 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v42)
    {
      v42 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v42 shouldLog];
    if ([v42 shouldLogToDisk])
    {
      v44 = shouldLog2 | 2;
    }

    else
    {
      v44 = shouldLog2;
    }

    oSLogObject2 = [v42 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
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

        blacklistedEventFields = v60;
        valuesCopy = v62;
        goto LABEL_49;
      }

      oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v48 encoding:{4, &v66, v57}];
      free(v48);
      SSFileLog(v42, @"%@", v49, v50, v51, v52, v53, v54, oSLogObject2);
    }

    goto LABEL_48;
  }

  v30 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v30)
  {
    v30 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v30 shouldLog];
  if ([v30 shouldLogToDisk])
  {
    shouldLog3 |= 2u;
  }

  oSLogObject3 = [v30 OSLogObject];
  if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    shouldLog3 &= 2u;
  }

  if (!shouldLog3)
  {
    goto LABEL_49;
  }

  v32 = valuesCopy;
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
    oSLogObject3 = [MEMORY[0x1E696AEC0] stringWithCString:v35 encoding:{4, &v66, v57}];
    free(v35);
    SSFileLog(v30, @"%@", v36, v37, v38, v39, v40, v41, oSLogObject3);
    valuesCopy = v32;
    goto LABEL_49;
  }

  valuesCopy = v32;
LABEL_50:

  objc_autoreleasePoolPop(context);

  return v64;
}

- (BOOL)isBlacklistedByConfiguration:(id)configuration
{
  configurationCopy = configuration;
  eventType = [(SSMetricsEvent *)self eventType];
  v6 = [configurationCopy isEventTypeBlacklisted:eventType];

  return v6;
}

- (id)_dictionaryRepresentationOfBody
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(SSMetricsEvent *)self appendPropertiesToBody:v3];

  return v3;
}

@end