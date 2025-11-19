@interface CSPersistentConfiguration
+ (id)configBaseKey:(const char *)a3 forFeatureMode:(unsigned __int8)a4;
+ (id)sharedConfiguration;
- (BOOL)BOOLForKey:(id)a3;
- (BOOL)BOOLForKey:(id)a3 withFallback:(BOOL)a4;
- (BOOL)algorithmBoolNumber:(unint64_t)a3 inArrayForKey:(id)a4 defaultValue:(BOOL)a5;
- (BOOL)isKeyInServerDefaults:(id)a3;
- (BOOL)isKeyInUserDefaults:(id)a3;
- (CSPersistentConfiguration)init;
- (double)doubleForKey:(id)a3;
- (float)algorithmThresholdNumber:(unint64_t)a3 inArrayForKey:(id)a4 withMinValue:(float)a5 maxValue:(float)a6 defaultValue:(float)a7;
- (float)floatForKey:(id)a3;
- (float)floatThreshold:(const CSSafetyDefault *)a3 forKey:(id)a4;
- (id)arrayForKey:(id)a3;
- (id)dictionaryForKey:(id)a3;
- (id)isKeyInServerDefaultsWithVersion:(id)a3;
- (id)objectForKey:(id)a3;
- (id)serverConfigurationToUse:(id)a3;
- (id)stringDictionaryForKey:(id)a3;
- (int)algorithmIntegerNumber:(unint64_t)a3 inArrayForKey:(id)a4 withMinValue:(int)a5 maxValue:(int)a6 defaultValue:(int)a7;
- (int64_t)integerForKey:(id)a3;
- (int64_t)integerForKey:(id)a3 withFallback:(int64_t)a4;
- (optional<BOOL>)getBooleanDefault:(id)a3;
- (optional<float>)getFloatDefault:(id)a3;
- (optional<int>)getIntegerDefault:(id)a3;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)onConfigurationUpdate:(id)a3;
- (void)runAllConfigurationUpdateCallbacks;
- (void)setDouble:(double)a3 forKey:(id)a4;
- (void)setFloat:(float)a3 forKey:(id)a4;
- (void)setInteger:(int64_t)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)stopRecurringDownload;
@end

@implementation CSPersistentConfiguration

- (CSPersistentConfiguration)init
{
  v8.receiver = self;
  v8.super_class = CSPersistentConfiguration;
  v2 = [(CSPersistentConfiguration *)&v8 init];
  v3 = v2;
  if (v2)
  {
    urlSession = v2->_urlSession;
    v2->_urlSession = 0;

    *&v3->_configurationDownloadInProgress = 0;
    v3->_recurrentDownloadPeriod = 0;
    v5 = objc_opt_new();
    configurationUpdateCallbacks = v3->_configurationUpdateCallbacks;
    v3->_configurationUpdateCallbacks = v5;
  }

  return v3;
}

+ (id)sharedConfiguration
{
  if (qword_100458988 != -1)
  {
    sub_1003560F8();
  }

  v3 = qword_100458990;

  return v3;
}

+ (id)configBaseKey:(const char *)a3 forFeatureMode:(unsigned __int8)a4
{
  if (a4 != 1)
  {
    v5 = a4;
    if (a4 == 2)
    {
      v6 = @"Marty";
      goto LABEL_9;
    }

    if (qword_1004567F8 != -1)
    {
      sub_10035610C();
    }

    v7 = qword_100456800;
    if (os_log_type_enabled(qword_100456800, OS_LOG_TYPE_ERROR))
    {
      v11[0] = 67109120;
      v11[1] = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Missing config prefix for %d", v11, 8u);
    }
  }

  v6 = &stru_100436548;
LABEL_9:
  v8 = [[NSString alloc] initWithCString:a3 encoding:1];
  v9 = [(__CFString *)v6 stringByAppendingString:v8];

  return v9;
}

- (void)stopRecurringDownload
{
  xpc_activity_unregister([@"com.apple.anomalydetectiond.CSPersistentConfiguration" UTF8String]);
  self->_recurrentDownloadEnabled = 0;
  self->_recurrentDownloadPeriod = 0;
}

- (void)onConfigurationUpdate:(id)a3
{
  configurationUpdateCallbacks = self->_configurationUpdateCallbacks;
  v4 = objc_retainBlock(a3);
  [(NSMutableArray *)configurationUpdateCallbacks addObject:?];
}

- (void)runAllConfigurationUpdateCallbacks
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = self->_configurationUpdateCallbacks;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (id)isKeyInServerDefaultsWithVersion:(id)a3
{
  v3 = +[CSPlatformInfo sharedInstance];
  v4 = [v3 getSystemVersionDescriptionNoBuild];
  v5 = [v4 mutableCopy];

  [v5 replaceOccurrencesOfString:@" " withString:&stru_100436548 options:0 range:{0, objc_msgSend(v5, "length")}];
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 dictionaryForKey:@"CLPersistentConfigurationServerDefaults"];

  v8 = [v7 objectForKeyedSubscript:@"ConfigLookup"];
  v9 = [v7 objectForKey:@"ConfigLookup"];

  if (v9)
  {
    [v8 allKeys];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v10 = v22 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = *v22;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [v8 objectForKeyedSubscript:v14];
          if ([v14 isEqualToString:v5])
          {
            v17 = [v7 objectForKey:v15];
            v18 = v17 == 0;

            if (v18)
            {
              v19 = v7;
            }

            else
            {
              v19 = [v7 objectForKeyedSubscript:v15];
            }

            v16 = v19;

            goto LABEL_16;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }

  v16 = v7;
LABEL_16:

  return v16;
}

- (BOOL)isKeyInServerDefaults:(id)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 dictionaryForKey:@"CLPersistentConfigurationServerDefaults"];

  v6 = [v5 objectForKey:v3];
  LOBYTE(v4) = v6 != 0;

  return v4;
}

- (BOOL)isKeyInUserDefaults:(id)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:v3];
  v6 = v5 != 0;

  return v6;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = +[NSUserDefaults standardUserDefaults];
  [v7 setObject:v8 forKey:v6];

  [(CSPersistentConfiguration *)self runAllConfigurationUpdateCallbacks];
}

- (void)setInteger:(int64_t)a3 forKey:(id)a4
{
  v7 = a4;
  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 setInteger:a3 forKey:v7];

  [(CSPersistentConfiguration *)self runAllConfigurationUpdateCallbacks];
}

- (void)setDouble:(double)a3 forKey:(id)a4
{
  v7 = a4;
  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 setDouble:v7 forKey:a3];

  [(CSPersistentConfiguration *)self runAllConfigurationUpdateCallbacks];
}

- (void)setFloat:(float)a3 forKey:(id)a4
{
  v8 = a4;
  v6 = +[NSUserDefaults standardUserDefaults];
  *&v7 = a3;
  [v6 setFloat:v8 forKey:v7];

  [(CSPersistentConfiguration *)self runAllConfigurationUpdateCallbacks];
}

- (id)serverConfigurationToUse:(id)a3
{
  v3 = [(CSPersistentConfiguration *)self isKeyInServerDefaultsWithVersion:a3];

  return v3;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  if ([(CSPersistentConfiguration *)self isKeyInUserDefaults:v4])
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [v5 objectForKey:v4];
LABEL_5:
    v8 = v6;
    goto LABEL_6;
  }

  v7 = [(CSPersistentConfiguration *)self serverConfigurationToUse:v4];
  v5 = v7;
  if (v7)
  {
    v6 = [v7 objectForKey:v4];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (int64_t)integerForKey:(id)a3
{
  v4 = a3;
  if ([(CSPersistentConfiguration *)self isKeyInUserDefaults:v4])
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [v5 integerForKey:v4];
  }

  else
  {
    v7 = [(CSPersistentConfiguration *)self serverConfigurationToUse:v4];
    v5 = v7;
    if (v7)
    {
      v8 = [v7 objectForKey:v4];
      v6 = [v8 integerValue];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (int64_t)integerForKey:(id)a3 withFallback:(int64_t)a4
{
  v6 = a3;
  if ([(CSPersistentConfiguration *)self isKeyInUserDefaults:v6])
  {
    v7 = +[NSUserDefaults standardUserDefaults];
    a4 = [v7 integerForKey:v6];
  }

  else
  {
    v8 = [(CSPersistentConfiguration *)self serverConfigurationToUse:v6];
    v7 = v8;
    if (v8)
    {
      v9 = [v8 objectForKey:v6];
      v10 = v9;
      if (v9)
      {
        a4 = [v9 integerValue];
      }
    }
  }

  return a4;
}

- (double)doubleForKey:(id)a3
{
  v4 = a3;
  if ([(CSPersistentConfiguration *)self isKeyInUserDefaults:v4])
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    [v5 doubleForKey:v4];
    v7 = v6;
  }

  else
  {
    v8 = [(CSPersistentConfiguration *)self serverConfigurationToUse:v4];
    v5 = v8;
    if (v8)
    {
      v9 = [v8 objectForKey:v4];
      [v9 doubleValue];
      v7 = v10;
    }

    else
    {
      v7 = 0.0;
    }
  }

  return v7;
}

- (float)floatForKey:(id)a3
{
  v4 = a3;
  if ([(CSPersistentConfiguration *)self isKeyInUserDefaults:v4])
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    [v5 floatForKey:v4];
    v7 = v6;
  }

  else
  {
    v8 = [(CSPersistentConfiguration *)self serverConfigurationToUse:v4];
    v5 = v8;
    if (v8)
    {
      v9 = [v8 objectForKey:v4];
      [v9 floatValue];
      v7 = v10;
    }

    else
    {
      v7 = 0.0;
    }
  }

  return v7;
}

- (BOOL)BOOLForKey:(id)a3
{
  v4 = a3;
  if ([(CSPersistentConfiguration *)self isKeyInUserDefaults:v4])
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [v5 BOOLForKey:v4];
  }

  else
  {
    v7 = [(CSPersistentConfiguration *)self serverConfigurationToUse:v4];
    v5 = v7;
    if (v7)
    {
      v8 = [v7 objectForKey:v4];
      v6 = [v8 BOOLValue];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)BOOLForKey:(id)a3 withFallback:(BOOL)a4
{
  v6 = a3;
  if ([(CSPersistentConfiguration *)self isKeyInUserDefaults:v6])
  {
    v7 = +[NSUserDefaults standardUserDefaults];
    a4 = [v7 BOOLForKey:v6];
  }

  else
  {
    v8 = [(CSPersistentConfiguration *)self serverConfigurationToUse:v6];
    v7 = v8;
    if (v8)
    {
      v9 = [v8 objectForKey:v6];
      v10 = v9;
      if (v9)
      {
        a4 = [v9 BOOLValue];
      }
    }
  }

  return a4;
}

- (id)stringDictionaryForKey:(id)a3
{
  v3 = [(CSPersistentConfiguration *)self objectForKey:a3];
  +[NSMutableDictionary dictionary];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100354FD8;
  v4 = v7[3] = &unk_100436300;
  v8 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v7];
  v5 = [v4 copy];

  return v5;
}

- (id)dictionaryForKey:(id)a3
{
  v3 = [(CSPersistentConfiguration *)self objectForKey:a3];

  return v3;
}

- (id)arrayForKey:(id)a3
{
  v3 = [(CSPersistentConfiguration *)self objectForKey:a3];

  return v3;
}

- (float)algorithmThresholdNumber:(unint64_t)a3 inArrayForKey:(id)a4 withMinValue:(float)a5 maxValue:(float)a6 defaultValue:(float)a7
{
  v12 = a4;
  v13 = [v12 stringByAppendingFormat:@"%lu", a3];
  if ([(CSPersistentConfiguration *)self isKeyInUserDefaults:v13]&& ([(CSPersistentConfiguration *)self floatForKey:v13], v14 > a5) && ([(CSPersistentConfiguration *)self floatForKey:v13], v15 < a6))
  {
    [(CSPersistentConfiguration *)self floatForKey:v13];
    a7 = v16;
  }

  else
  {
    v17 = [(CSPersistentConfiguration *)self arrayForKey:v12];
    if (v17)
    {
      v18 = [(CSPersistentConfiguration *)self arrayForKey:v12];
      v19 = [v18 count];

      if (v19 > a3)
      {
        v20 = [(CSPersistentConfiguration *)self arrayForKey:v12];
        v21 = [v20 objectAtIndex:a3];

        if (v21)
        {
          [v21 floatValue];
          if (v22 > a5)
          {
            [v21 floatValue];
            if (v23 < a6)
            {
              [v21 floatValue];
              a7 = v24;
            }
          }
        }
      }
    }
  }

  return a7;
}

- (int)algorithmIntegerNumber:(unint64_t)a3 inArrayForKey:(id)a4 withMinValue:(int)a5 maxValue:(int)a6 defaultValue:(int)a7
{
  v12 = a4;
  v13 = [v12 stringByAppendingFormat:@"%lu", a3];
  if ([(CSPersistentConfiguration *)self isKeyInUserDefaults:v13]&& [(CSPersistentConfiguration *)self integerForKey:v13]> a5 && [(CSPersistentConfiguration *)self integerForKey:v13]< a6)
  {
    a7 = [(CSPersistentConfiguration *)self integerForKey:v13];
  }

  else
  {
    *&v14 = a5;
    *&v15 = a6;
    *&v16 = a7;
    [(CSPersistentConfiguration *)self algorithmThresholdNumber:a3 inArrayForKey:v12 withMinValue:v14 maxValue:v15 defaultValue:v16];
    v18 = v17;
    if (modff(v17, &v21) >= 0.1)
    {
      if (qword_100456928 != -1)
      {
        sub_100356120();
      }

      v19 = qword_100456930;
      if (os_log_type_enabled(qword_100456930, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v23 = v12;
        v24 = 2048;
        v25 = a3;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%@ server configuration key has invalid integer at position %lu", buf, 0x16u);
      }
    }

    else
    {
      a7 = llroundf(v18);
    }
  }

  return a7;
}

- (BOOL)algorithmBoolNumber:(unint64_t)a3 inArrayForKey:(id)a4 defaultValue:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = [v8 stringByAppendingFormat:@"%lu", a3];
  if ([(CSPersistentConfiguration *)self isKeyInUserDefaults:v9])
  {
    v12 = [(CSPersistentConfiguration *)self BOOLForKey:v9];
  }

  else
  {
    if (v5)
    {
      *&v11 = 1.0;
    }

    else
    {
      *&v11 = 0.0;
    }

    LODWORD(v10) = 2.0;
    [(CSPersistentConfiguration *)self algorithmThresholdNumber:a3 inArrayForKey:v8 withMinValue:COERCE_DOUBLE(COERCE_UNSIGNED_INT(-1.0)) maxValue:v10 defaultValue:v11];
    v12 = v13 != 0.0;
  }

  return v12;
}

- (float)floatThreshold:(const CSSafetyDefault *)a3 forKey:(id)a4
{
  *&v4 = a3->var2;
  *&v5 = a3->var3;
  *&v6 = a3->var1;
  [(CSPersistentConfiguration *)self algorithmThresholdNumber:a3->var0 inArrayForKey:a4 withMinValue:v4 maxValue:v5 defaultValue:v6];
  return result;
}

- (optional<int>)getIntegerDefault:(id)a3
{
  v4 = a3;
  v5 = [(CSPersistentConfiguration *)self objectForKey:v4];
  if (v5)
  {
    v6 = [(CSPersistentConfiguration *)self integerForKey:v4];
    v7 = v6 & 0xFFFFFF00;
    v8 = v6;
    v9 = &_mh_execute_header;
  }

  else
  {
    if (qword_100456928 != -1)
    {
      sub_100356120();
    }

    v10 = qword_100456930;
    if (os_log_type_enabled(qword_100456930, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "default not found for %@", &v12, 0xCu);
    }

    v8 = 0;
    v9 = 0;
    v7 = 0;
  }

  return (v9 | v8 | v7);
}

- (optional<float>)getFloatDefault:(id)a3
{
  v4 = a3;
  v5 = [(CSPersistentConfiguration *)self objectForKey:v4];
  if (v5)
  {
    [(CSPersistentConfiguration *)self floatForKey:v4];
    v7 = v6 & 0xFFFFFF00;
    v8 = v6;
    v9 = &_mh_execute_header;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
  }

  return (v9 | v7 | v8);
}

- (optional<BOOL>)getBooleanDefault:(id)a3
{
  v4 = a3;
  v5 = [(CSPersistentConfiguration *)self objectForKey:v4];
  if (v5)
  {
    v6 = [(CSPersistentConfiguration *)self BOOLForKey:v4];
    v7 = 1;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return (v6 | (v7 << 8));
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v6 = a5;
  urlSession = self->_urlSession;
  if (v6)
  {
    [(NSURLSession *)urlSession invalidateAndCancel];
    if (qword_100456928 != -1)
    {
      sub_100356120();
    }

    v8 = qword_100456930;
    if (os_log_type_enabled(qword_100456930, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "completed with error %@", &v10, 0xCu);
    }
  }

  else
  {
    [(NSURLSession *)urlSession finishTasksAndInvalidate];
  }

  v9 = self->_urlSession;
  self->_urlSession = 0;

  self->_configurationDownloadInProgress = 0;
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5
{
  v6 = a5;
  v7 = [NSData dataWithContentsOfURL:v6];
  if (v7)
  {
    v22 = 0;
    v8 = [NSJSONSerialization JSONObjectWithData:v7 options:1 error:&v22];
    v9 = v22;
    if (v9)
    {
      if (qword_100456928 != -1)
      {
        sub_100356134();
      }

      v10 = qword_100456930;
      if (os_log_type_enabled(qword_100456930, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v24 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "couldn't decode server configuration: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      if (qword_100456928 != -1)
      {
        sub_100356134();
      }

      v12 = qword_100456930;
      if (os_log_type_enabled(qword_100456930, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v24 = v8;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "server configuration: %@{public}@", buf, 0xCu);
      }

      v13 = +[NSUserDefaults standardUserDefaults];
      v14 = [v13 dictionaryForKey:@"CLPersistentConfigurationServerDefaults"];

      if (qword_100456928 != -1)
      {
        sub_100356134();
      }

      v15 = qword_100456930;
      if (os_log_type_enabled(qword_100456930, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Updating local configuration", buf, 2u);
      }

      v16 = +[NSUserDefaults standardUserDefaults];
      [v16 setObject:v8 forKey:@"CLPersistentConfigurationServerDefaults"];

      [(CSPersistentConfiguration *)self runAllConfigurationUpdateCallbacks];
      if (self->_recurrentDownloadEnabled)
      {
        objc_initWeak(buf, self);
        v17 = [@"com.apple.anomalydetectiond.CSPersistentConfiguration" UTF8String];
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_100355EB0;
        handler[3] = &unk_100436328;
        objc_copyWeak(&v21, buf);
        v20 = v14;
        xpc_activity_register(v17, XPC_ACTIVITY_CHECK_IN, handler);

        objc_destroyWeak(&v21);
        objc_destroyWeak(buf);
      }
    }

    [(NSURLSession *)self->_urlSession finishTasksAndInvalidate];
    urlSession = self->_urlSession;
    self->_urlSession = 0;

    self->_configurationDownloadInProgress = 0;
  }

  else
  {
    if (qword_100456928 != -1)
    {
      sub_100356120();
    }

    v11 = qword_100456930;
    if (os_log_type_enabled(qword_100456930, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Couldn't get data from downloaded file, check sandbox violations", buf, 2u);
    }
  }
}

@end