@interface SSMetricsConfiguration
+ (id)_reportingFrequencyOverride;
+ (void)getReportingFrequencyOverrideWithCompletionBlock:(id)block;
+ (void)setReportingFrequencyOverride:(id)override;
- (BOOL)_configBooleanForKey:(id)key defaultValue:(BOOL)value;
- (BOOL)isDisabled;
- (BOOL)isEventTypeBlacklisted:(id)blacklisted;
- (BOOL)isSendDisabled;
- (NSDictionary)fieldsMap;
- (SSMetricsConfiguration)initWithGlobalConfiguration:(id)configuration;
- (SSMetricsConfiguration)initWithStorePlatformData:(id)data;
- (double)reportingFrequency;
- (id)_initSSMetricsEventConfiguration;
- (id)blacklistedEventFields;
- (id)compoundStringWithElements:(id)elements;
- (id)cookieFields;
- (id)eventFields;
- (id)pingURLs;
- (id)reportingURLString;
- (id)tokenStringWithElements:(id)elements;
- (id)valueForConfigurationKey:(id)key;
- (void)_setReportingFrequencyOverride:(id)override;
- (void)dealloc;
- (void)setChildConfiguration:(id)configuration;
@end

@implementation SSMetricsConfiguration

- (id)_initSSMetricsEventConfiguration
{
  v13.receiver = self;
  v13.super_class = SSMetricsConfiguration;
  v2 = [(SSMetricsConfiguration *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.StoreServices.SSMetricsConfiguration", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v5 = v2->_dispatchQueue;
    v6 = dispatch_get_global_queue(0, 0);
    dispatch_set_target_queue(v5, v6);

    v7 = [SSWeakReference weakReferenceWithObject:v2];
    v8 = v2->_dispatchQueue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __58__SSMetricsConfiguration__initSSMetricsEventConfiguration__block_invoke;
    handler[3] = &unk_1E84AE5F8;
    v12 = v7;
    v9 = v7;
    notify_register_dispatch("com.apple.StoreServices.metrics-internal-settings-change", &v2->_internalSettingsToken, v8, handler);
  }

  return v2;
}

- (double)reportingFrequency
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__18;
  v15 = __Block_byref_object_dispose__18;
  v16 = 0;
  dispatchQueue = self->_dispatchQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__SSMetricsConfiguration_reportingFrequency__block_invoke;
  v10[3] = &unk_1E84ABFD8;
  v10[4] = self;
  v10[5] = &v11;
  dispatch_sync(dispatchQueue, v10);
  v4 = v12[5];
  if (v4)
  {
    [v4 doubleValue];
    longLongValue = v5 * 1000.0;
  }

  else
  {
    childConfiguration = [(SSMetricsConfiguration *)self childConfiguration];
    v8 = [childConfiguration valueForConfigurationKey:@"postFrequency"];

    if (!v8)
    {
      v8 = [(NSDictionary *)self->_config objectForKey:@"postFrequency"];
    }

    objc_opt_class();
    longLongValue = 0.0;
    if (objc_opt_isKindOfClass())
    {
      longLongValue = [v8 longLongValue];
    }
  }

  _Block_object_dispose(&v11, 8);

  return longLongValue / 1000.0;
}

void __44__SSMetricsConfiguration_reportingFrequency__block_invoke(uint64_t a1)
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v3 = *(*(a1 + 32) + 80);
  if (isKindOfClass)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  }

  else if (!v3)
  {
    if (SSVUserDefaultsIsReadable(@"com.apple.itunesstored"))
    {
      v4 = [objc_opt_class() _reportingFrequencyOverride];
      v14 = v4;
      if (v4)
      {
        objc_storeStrong((*(a1 + 32) + 80), v4);
        v5 = *(*(a1 + 32) + 80);
        v6 = *(*(a1 + 40) + 8);
        v7 = v5;
        v8 = *(v6 + 40);
        *(v6 + 40) = v7;
      }

      else
      {
        v12 = [MEMORY[0x1E695DFB0] null];
        v13 = *(a1 + 32);
        v8 = *(v13 + 80);
        *(v13 + 80) = v12;
      }
    }

    else
    {
      v9 = [SSWeakReference weakReferenceWithObject:*(a1 + 32)];
      v10 = objc_opt_class();
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __44__SSMetricsConfiguration_reportingFrequency__block_invoke_2;
      v15[3] = &unk_1E84AE670;
      v16 = v9;
      v11 = v9;
      [v10 getReportingFrequencyOverrideWithCompletionBlock:v15];
    }
  }
}

- (void)dealloc
{
  notify_cancel(self->_internalSettingsToken);
  v3.receiver = self;
  v3.super_class = SSMetricsConfiguration;
  [(SSMetricsConfiguration *)&v3 dealloc];
}

- (BOOL)isDisabled
{
  if (self->_disabled)
  {
    return self->_disabled;
  }

  childConfiguration = [(SSMetricsConfiguration *)self childConfiguration];
  isDisabled = [childConfiguration isDisabled];

  return isDisabled;
}

void __44__SSMetricsConfiguration_reportingFrequency__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 object];
  [v4 _setReportingFrequencyOverride:v3];
}

void __58__SSMetricsConfiguration__initSSMetricsEventConfiguration__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) object];
  [v1 _setReportingFrequencyOverride:0];
}

- (SSMetricsConfiguration)initWithGlobalConfiguration:(id)configuration
{
  v33 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  _initSSMetricsEventConfiguration = [(SSMetricsConfiguration *)self _initSSMetricsEventConfiguration];
  if (_initSSMetricsEventConfiguration)
  {
    if ([configurationCopy count])
    {
      v6 = [configurationCopy copy];
      config = _initSSMetricsEventConfiguration->_config;
      _initSSMetricsEventConfiguration->_config = v6;

      _initSSMetricsEventConfiguration->_disabled = [(SSMetricsConfiguration *)_initSSMetricsEventConfiguration _configBooleanForKey:@"disabled" defaultValue:0];
      _initSSMetricsEventConfiguration->_sendDisabled = [(SSMetricsConfiguration *)_initSSMetricsEventConfiguration _configBooleanForKey:@"sendDisabled" defaultValue:0];
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = [configurationCopy objectForKey:@"metrics"];
      v10 = [configurationCopy objectForKey:@"metricsBase"];
      if (!v10)
      {
        v10 = [configurationCopy objectForKey:@"metrics_base"];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v9 objectForKey:@"fields"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __54__SSMetricsConfiguration_initWithGlobalConfiguration___block_invoke;
          v29[3] = &unk_1E84AE620;
          v30 = v8;
          [v11 enumerateKeysAndObjectsUsingBlock:v29];
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __54__SSMetricsConfiguration_initWithGlobalConfiguration___block_invoke_2;
        v27[3] = &unk_1E84AE620;
        v28 = v8;
        [v10 enumerateKeysAndObjectsUsingBlock:v27];
      }

      v12 = [(SSMetricsConfiguration *)v8 copy];
      fields = _initSSMetricsEventConfiguration->_fields;
      _initSSMetricsEventConfiguration->_fields = v12;

      goto LABEL_24;
    }

    v9 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v15 = shouldLog | 2;
    }

    else
    {
      v15 = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v31 = 138412290;
      v32 = objc_opt_class();
      v17 = v32;
      LODWORD(v26) = 12;
      v18 = _os_log_send_and_compose_impl();

      if (!v18)
      {
LABEL_23:
        v8 = _initSSMetricsEventConfiguration;
        _initSSMetricsEventConfiguration = 0;
LABEL_24:

        goto LABEL_25;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:{4, &v31, v26}];
      free(v18);
      SSFileLog(v9, @"%@", v19, v20, v21, v22, v23, v24, oSLogObject);
    }

    goto LABEL_23;
  }

LABEL_25:

  return _initSSMetricsEventConfiguration;
}

void __54__SSMetricsConfiguration_initWithGlobalConfiguration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [*(a1 + 32) setObject:v5 forKey:v6];
  }
}

void __54__SSMetricsConfiguration_initWithGlobalConfiguration___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [*(a1 + 32) setObject:v5 forKey:v6];
  }
}

- (SSMetricsConfiguration)initWithStorePlatformData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy objectForKey:@"metrics"];
  v6 = [dataCopy objectForKey:@"metricsBase"];
  if (!v6)
  {
    v6 = [dataCopy objectForKey:@"metrics_base"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    _initSSMetricsEventConfiguration = [(SSMetricsConfiguration *)self _initSSMetricsEventConfiguration];
    if (_initSSMetricsEventConfiguration)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = [v5 objectForKey:@"fields"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __52__SSMetricsConfiguration_initWithStorePlatformData___block_invoke;
        v21[3] = &unk_1E84AE620;
        v22 = v8;
        [v9 enumerateKeysAndObjectsUsingBlock:v21];
      }

      v10 = [v5 objectForKey:@"config"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 copy];
        config = _initSSMetricsEventConfiguration->_config;
        _initSSMetricsEventConfiguration->_config = v11;

        _initSSMetricsEventConfiguration->_disabled = [(SSMetricsConfiguration *)_initSSMetricsEventConfiguration _configBooleanForKey:@"disabled" defaultValue:0];
        _initSSMetricsEventConfiguration->_sendDisabled = [(SSMetricsConfiguration *)_initSSMetricsEventConfiguration _configBooleanForKey:@"sendDisabled" defaultValue:0];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = MEMORY[0x1E69E9820];
        v17 = 3221225472;
        v18 = __52__SSMetricsConfiguration_initWithStorePlatformData___block_invoke_2;
        v19 = &unk_1E84AE620;
        v20 = v8;
        [v6 enumerateKeysAndObjectsUsingBlock:&v16];
      }

      v13 = [v8 copy];
      fields = _initSSMetricsEventConfiguration->_fields;
      _initSSMetricsEventConfiguration->_fields = v13;
    }
  }

  else
  {

    _initSSMetricsEventConfiguration = 0;
  }

  return _initSSMetricsEventConfiguration;
}

void __52__SSMetricsConfiguration_initWithStorePlatformData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [*(a1 + 32) setObject:v5 forKey:v6];
  }
}

void __52__SSMetricsConfiguration_initWithStorePlatformData___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [*(a1 + 32) setObject:v5 forKey:v6];
  }
}

- (id)blacklistedEventFields
{
  v3 = [(NSDictionary *)self->_config objectForKey:@"blacklistedFields"];
  childConfiguration = [(SSMetricsConfiguration *)self childConfiguration];
  blacklistedEventFields = [childConfiguration blacklistedEventFields];

  if ([blacklistedEventFields count] && objc_msgSend(v3, "count"))
  {
    v6 = [MEMORY[0x1E695DFA8] setWithArray:blacklistedEventFields];
    [v6 addObjectsFromArray:v3];
    allObjects = [v6 allObjects];
  }

  else
  {
    if ([blacklistedEventFields count])
    {
      v8 = blacklistedEventFields;
    }

    else
    {
      v8 = v3;
    }

    allObjects = v8;
  }

  return allObjects;
}

- (id)cookieFields
{
  cookieFieldsUnion = self->_cookieFieldsUnion;
  if (!cookieFieldsUnion)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v5 = self->_cookieFieldsUnion;
    self->_cookieFieldsUnion = v4;

    v6 = objc_autoreleasePoolPush();
    fieldsMap = [(SSMetricsConfiguration *)self fieldsMap];
    v8 = [fieldsMap objectForKey:@"cookies"];
    if ([v8 count])
    {
      [(NSMutableSet *)self->_cookieFieldsUnion addObjectsFromArray:v8];
    }

    childConfiguration = [(SSMetricsConfiguration *)self childConfiguration];
    cookieFields = [childConfiguration cookieFields];

    if ([cookieFields count])
    {
      [(NSMutableSet *)self->_cookieFieldsUnion unionSet:cookieFields];
    }

    objc_autoreleasePoolPop(v6);
    cookieFieldsUnion = self->_cookieFieldsUnion;
  }

  return cookieFieldsUnion;
}

- (id)eventFields
{
  eventFieldsUnion = self->_eventFieldsUnion;
  if (!eventFieldsUnion)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = self->_eventFieldsUnion;
    self->_eventFieldsUnion = v4;

    v6 = objc_autoreleasePoolPush();
    childConfiguration = [(SSMetricsConfiguration *)self childConfiguration];
    eventFields = [childConfiguration eventFields];

    if ([(NSDictionary *)self->_fields count])
    {
      [(NSMutableDictionary *)self->_eventFieldsUnion addEntriesFromDictionary:self->_fields];
    }

    if ([eventFields count])
    {
      [(NSMutableDictionary *)self->_eventFieldsUnion addEntriesFromDictionary:eventFields];
    }

    objc_autoreleasePoolPop(v6);
    eventFieldsUnion = self->_eventFieldsUnion;
  }

  return eventFieldsUnion;
}

- (id)compoundStringWithElements:(id)elements
{
  elementsCopy = elements;
  childConfiguration = [(SSMetricsConfiguration *)self childConfiguration];
  v6 = [childConfiguration compoundStringWithElements:elementsCopy];

  if (!v6)
  {
    v7 = [(NSDictionary *)self->_config objectForKey:@"compoundSeparator"];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = @"_";
    }

    v6 = [elementsCopy componentsJoinedByString:v8];
  }

  return v6;
}

- (NSDictionary)fieldsMap
{
  v3 = [(NSDictionary *)self->_config objectForKey:@"fieldsMap"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    childConfiguration = [(SSMetricsConfiguration *)self childConfiguration];
    fieldsMap = [childConfiguration fieldsMap];

    v3 = fieldsMap;
  }

  return v3;
}

- (BOOL)isEventTypeBlacklisted:(id)blacklisted
{
  v27 = *MEMORY[0x1E69E9840];
  blacklistedCopy = blacklisted;
  v5 = blacklistedCopy;
  disabled = self->_disabled;
  if ((disabled & 1) == 0)
  {
    if (![blacklistedCopy length])
    {
      goto LABEL_18;
    }

    blacklistedEvents = self->_blacklistedEvents;
    if (!blacklistedEvents)
    {
      v8 = [(NSDictionary *)self->_config objectForKey:@"blacklistedEvents"];
      v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v8];
      v10 = self->_blacklistedEvents;
      self->_blacklistedEvents = v9;

      blacklistedEvents = self->_blacklistedEvents;
    }

    if (![(NSSet *)blacklistedEvents containsObject:v5])
    {
LABEL_18:
      childConfiguration = [(SSMetricsConfiguration *)self childConfiguration];
      disabled = [childConfiguration isEventTypeBlacklisted:v5];

      goto LABEL_19;
    }

    v11 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = shouldLog | 2;
    }

    else
    {
      v13 = shouldLog;
    }

    oSLogObject = [v11 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v13 &= 2u;
    }

    if (v13)
    {
      *v26 = 138412546;
      *&v26[4] = objc_opt_class();
      *&v26[12] = 2112;
      *&v26[14] = v5;
      v15 = *&v26[4];
      LODWORD(v25) = 22;
      v16 = _os_log_send_and_compose_impl();

      if (!v16)
      {
LABEL_17:

        disabled = 1;
        goto LABEL_19;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:{4, v26, v25, *v26, *&v26[16], v27}];
      free(v16);
      SSFileLog(v11, @"%@", v17, v18, v19, v20, v21, v22, oSLogObject);
    }

    goto LABEL_17;
  }

LABEL_19:

  return disabled;
}

- (BOOL)isSendDisabled
{
  if (self->_sendDisabled)
  {
    return self->_sendDisabled;
  }

  childConfiguration = [(SSMetricsConfiguration *)self childConfiguration];
  isSendDisabled = [childConfiguration isSendDisabled];

  return isSendDisabled;
}

- (id)pingURLs
{
  v3 = [(NSDictionary *)self->_config objectForKey:@"pingUrls"];
  childConfiguration = [(SSMetricsConfiguration *)self childConfiguration];
  pingURLs = [childConfiguration pingURLs];

  if ([v3 count] || objc_msgSend(pingURLs, "count"))
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __34__SSMetricsConfiguration_pingURLs__block_invoke;
    v9[3] = &unk_1E84AE648;
    v7 = v6;
    v10 = v7;
    [v3 enumerateObjectsUsingBlock:v9];
    [v7 addObjectsFromArray:pingURLs];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __34__SSMetricsConfiguration_pingURLs__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = a2;
  v6 = [[v3 alloc] initWithString:v4];

  v5 = v6;
  if (v6)
  {
    [*(a1 + 32) addObject:v6];
    v5 = v6;
  }
}

- (id)reportingURLString
{
  childConfiguration = [(SSMetricsConfiguration *)self childConfiguration];
  reportingURLString = [childConfiguration reportingURLString];

  if (!reportingURLString)
  {
    reportingURLString = [(NSDictionary *)self->_config objectForKey:@"metricsUrl"];
  }

  return reportingURLString;
}

- (void)setChildConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (self->_childConfiguration != configurationCopy)
  {
    eventFieldsUnion = self->_eventFieldsUnion;
    self->_eventFieldsUnion = 0;
    v8 = configurationCopy;

    cookieFieldsUnion = self->_cookieFieldsUnion;
    self->_cookieFieldsUnion = 0;

    objc_storeStrong(&self->_childConfiguration, configuration);
    configurationCopy = v8;
  }
}

- (id)tokenStringWithElements:(id)elements
{
  elementsCopy = elements;
  childConfiguration = [(SSMetricsConfiguration *)self childConfiguration];
  v6 = [childConfiguration tokenStringWithElements:elementsCopy];

  if (!v6)
  {
    v7 = [(NSDictionary *)self->_config objectForKey:@"tokenSeparator"];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = @"_";
    }

    v6 = [elementsCopy componentsJoinedByString:v8];
  }

  return v6;
}

- (id)valueForConfigurationKey:(id)key
{
  keyCopy = key;
  v5 = [(NSDictionary *)self->_config objectForKey:keyCopy];
  if (!v5)
  {
    childConfiguration = [(SSMetricsConfiguration *)self childConfiguration];
    v5 = [childConfiguration valueForConfigurationKey:keyCopy];
  }

  return v5;
}

+ (void)getReportingFrequencyOverrideWithCompletionBlock:(id)block
{
  v29 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (!SSVUserDefaultsIsReadable(@"com.apple.itunesstored"))
  {
    if (!SSIsInternalBuild() || !_os_feature_enabled_impl())
    {
      goto LABEL_18;
    }

    v8 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = shouldLog | 2;
    }

    else
    {
      v10 = shouldLog;
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v12 = v10;
    }

    else
    {
      v12 = v10 & 2;
    }

    if (v12)
    {
      v27 = 136446210;
      v28 = "+[SSMetricsConfiguration getReportingFrequencyOverrideWithCompletionBlock:]";
      LODWORD(v21) = 12;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_17:

LABEL_18:
        v6 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
        v7 = SSXPCCreateMessageDictionary(128);
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __75__SSMetricsConfiguration_getReportingFrequencyOverrideWithCompletionBlock___block_invoke_80;
        v22[3] = &unk_1E84AE2D8;
        v23 = blockCopy;
        v20 = blockCopy;
        [(SSXPCConnection *)v6 sendMessage:v7 withReply:v22];

        goto LABEL_19;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v27, v21}];
      free(v13);
      SSFileLog(v8, @"%@", v14, v15, v16, v17, v18, v19, oSLogObject);
    }

    goto LABEL_17;
  }

  v5 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__SSMetricsConfiguration_getReportingFrequencyOverrideWithCompletionBlock___block_invoke;
  block[3] = &unk_1E84AE698;
  v25 = blockCopy;
  selfCopy = self;
  v6 = blockCopy;
  dispatch_async(v5, block);

  v7 = v25;
LABEL_19:
}

void __75__SSMetricsConfiguration_getReportingFrequencyOverrideWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) _reportingFrequencyOverride];
  (*(*(a1 + 32) + 16))();
}

void __75__SSMetricsConfiguration_getReportingFrequencyOverrideWithCompletionBlock___block_invoke_80(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6 && MEMORY[0x1DA6E0380]() == MEMORY[0x1E69E9E80])
  {
    v4 = [@"SSVMetricsInternalSettingReportingFrequency" UTF8String];
    v5 = objc_opt_class();
    v3 = SSXPCDictionaryCopyObjectWithClass(v6, v4, v5);
  }

  else
  {
    v3 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

+ (void)setReportingFrequencyOverride:(id)override
{
  v27 = *MEMORY[0x1E69E9840];
  overrideCopy = override;
  if (SSVUserDefaultsIsWritable(@"com.apple.itunesstored"))
  {
    v4 = CPCopySharedResourcesPreferencesDomainForDomain();
    if (v4)
    {
      v5 = v4;
      CFPreferencesSetAppValue(@"SSVMetricsInternalSettingReportingFrequency", overrideCopy, v4);
      CFPreferencesAppSynchronize(v5);
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.StoreServices.metrics-internal-settings-change", 0, 0, 1u);
      CFRelease(v5);
    }

    goto LABEL_23;
  }

  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v7 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = shouldLog | 2;
    }

    else
    {
      v9 = shouldLog;
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v11 = v9;
    }

    else
    {
      v11 = v9 & 2;
    }

    if (v11)
    {
      v25 = 136446210;
      v26 = "+[SSMetricsConfiguration setReportingFrequencyOverride:]";
      LODWORD(v24) = 12;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_18:

        goto LABEL_19;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v25, v24}];
      free(v12);
      SSFileLog(v7, @"%@", v13, v14, v15, v16, v17, v18, oSLogObject);
    }

    goto LABEL_18;
  }

LABEL_19:
  v19 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
  v20 = SSXPCCreateMessageDictionary(129);
  v21 = xpc_dictionary_create(0, 0, 0);
  uTF8String = [@"SSVMetricsInternalSettingReportingFrequency" UTF8String];
  if (overrideCopy)
  {
    SSXPCDictionarySetObject(v21, uTF8String, overrideCopy);
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    SSXPCDictionarySetObject(v21, uTF8String, null);
  }

  xpc_dictionary_set_value(v20, "1", v21);
  [(SSXPCConnection *)v19 sendMessage:v20 withReply:&__block_literal_global_7];

LABEL_23:
}

void __56__SSMetricsConfiguration_setReportingFrequencyOverride___block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.StoreServices.metrics-internal-settings-change", 0, 0, 1u);
}

+ (id)_reportingFrequencyOverride
{
  v2 = CPCopySharedResourcesPreferencesDomainForDomain();
  if (v2)
  {
    v3 = v2;
    CFPreferencesAppSynchronize(v2);
    v4 = CFPreferencesCopyAppValue(@"SSVMetricsInternalSettingReportingFrequency", v3);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v4 = 0;
    }

    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_configBooleanForKey:(id)key defaultValue:(BOOL)value
{
  v5 = [(NSDictionary *)self->_config objectForKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value = [v5 BOOLValue];
  }

  return value;
}

- (void)_setReportingFrequencyOverride:(id)override
{
  overrideCopy = override;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__SSMetricsConfiguration__setReportingFrequencyOverride___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = overrideCopy;
  v6 = overrideCopy;
  dispatch_async(dispatchQueue, v7);
}

void __57__SSMetricsConfiguration__setReportingFrequencyOverride___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 80) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 80);
    *(v5 + 80) = v4;
  }
}

@end