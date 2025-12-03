@interface CSPersistentConfiguration
+ (id)configBaseKey:(const char *)key forFeatureMode:(unsigned __int8)mode;
+ (id)sharedConfiguration;
- (BOOL)BOOLForKey:(id)key;
- (BOOL)BOOLForKey:(id)key withFallback:(BOOL)fallback;
- (BOOL)algorithmBoolNumber:(unint64_t)number inArrayForKey:(id)key defaultValue:(BOOL)value;
- (BOOL)isKeyInServerDefaults:(id)defaults;
- (BOOL)isKeyInUserDefaults:(id)defaults;
- (CSPersistentConfiguration)init;
- (double)doubleForKey:(id)key;
- (float)algorithmThresholdNumber:(unint64_t)number inArrayForKey:(id)key withMinValue:(float)value maxValue:(float)maxValue defaultValue:(float)defaultValue;
- (float)floatForKey:(id)key;
- (float)floatThreshold:(const CSSafetyDefault *)threshold forKey:(id)key;
- (id)arrayForKey:(id)key;
- (id)dictionaryForKey:(id)key;
- (id)isKeyInServerDefaultsWithVersion:(id)version;
- (id)objectForKey:(id)key;
- (id)serverConfigurationToUse:(id)use;
- (id)stringDictionaryForKey:(id)key;
- (int)algorithmIntegerNumber:(unint64_t)number inArrayForKey:(id)key withMinValue:(int)value maxValue:(int)maxValue defaultValue:(int)defaultValue;
- (int64_t)integerForKey:(id)key;
- (int64_t)integerForKey:(id)key withFallback:(int64_t)fallback;
- (optional<BOOL>)getBooleanDefault:(id)default;
- (optional<float>)getFloatDefault:(id)default;
- (optional<int>)getIntegerDefault:(id)default;
- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)onConfigurationUpdate:(id)update;
- (void)runAllConfigurationUpdateCallbacks;
- (void)setDouble:(double)double forKey:(id)key;
- (void)setFloat:(float)float forKey:(id)key;
- (void)setInteger:(int64_t)integer forKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
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

+ (id)configBaseKey:(const char *)key forFeatureMode:(unsigned __int8)mode
{
  if (mode != 1)
  {
    modeCopy = mode;
    if (mode == 2)
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
      v11[1] = modeCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Missing config prefix for %d", v11, 8u);
    }
  }

  v6 = &stru_100436548;
LABEL_9:
  v8 = [[NSString alloc] initWithCString:key encoding:1];
  v9 = [(__CFString *)v6 stringByAppendingString:v8];

  return v9;
}

- (void)stopRecurringDownload
{
  xpc_activity_unregister([@"com.apple.anomalydetectiond.CSPersistentConfiguration" UTF8String]);
  self->_recurrentDownloadEnabled = 0;
  self->_recurrentDownloadPeriod = 0;
}

- (void)onConfigurationUpdate:(id)update
{
  configurationUpdateCallbacks = self->_configurationUpdateCallbacks;
  v4 = objc_retainBlock(update);
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

- (id)isKeyInServerDefaultsWithVersion:(id)version
{
  v3 = +[CSPlatformInfo sharedInstance];
  getSystemVersionDescriptionNoBuild = [v3 getSystemVersionDescriptionNoBuild];
  v5 = [getSystemVersionDescriptionNoBuild mutableCopy];

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

- (BOOL)isKeyInServerDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 dictionaryForKey:@"CLPersistentConfigurationServerDefaults"];

  v6 = [v5 objectForKey:defaultsCopy];
  LOBYTE(v4) = v6 != 0;

  return v4;
}

- (BOOL)isKeyInUserDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:defaultsCopy];
  v6 = v5 != 0;

  return v6;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v7 = +[NSUserDefaults standardUserDefaults];
  [v7 setObject:objectCopy forKey:keyCopy];

  [(CSPersistentConfiguration *)self runAllConfigurationUpdateCallbacks];
}

- (void)setInteger:(int64_t)integer forKey:(id)key
{
  keyCopy = key;
  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 setInteger:integer forKey:keyCopy];

  [(CSPersistentConfiguration *)self runAllConfigurationUpdateCallbacks];
}

- (void)setDouble:(double)double forKey:(id)key
{
  keyCopy = key;
  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 setDouble:keyCopy forKey:double];

  [(CSPersistentConfiguration *)self runAllConfigurationUpdateCallbacks];
}

- (void)setFloat:(float)float forKey:(id)key
{
  keyCopy = key;
  v6 = +[NSUserDefaults standardUserDefaults];
  *&v7 = float;
  [v6 setFloat:keyCopy forKey:v7];

  [(CSPersistentConfiguration *)self runAllConfigurationUpdateCallbacks];
}

- (id)serverConfigurationToUse:(id)use
{
  v3 = [(CSPersistentConfiguration *)self isKeyInServerDefaultsWithVersion:use];

  return v3;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  if ([(CSPersistentConfiguration *)self isKeyInUserDefaults:keyCopy])
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [v5 objectForKey:keyCopy];
LABEL_5:
    v8 = v6;
    goto LABEL_6;
  }

  v7 = [(CSPersistentConfiguration *)self serverConfigurationToUse:keyCopy];
  v5 = v7;
  if (v7)
  {
    v6 = [v7 objectForKey:keyCopy];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (int64_t)integerForKey:(id)key
{
  keyCopy = key;
  if ([(CSPersistentConfiguration *)self isKeyInUserDefaults:keyCopy])
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    integerValue = [v5 integerForKey:keyCopy];
  }

  else
  {
    v7 = [(CSPersistentConfiguration *)self serverConfigurationToUse:keyCopy];
    v5 = v7;
    if (v7)
    {
      v8 = [v7 objectForKey:keyCopy];
      integerValue = [v8 integerValue];
    }

    else
    {
      integerValue = 0;
    }
  }

  return integerValue;
}

- (int64_t)integerForKey:(id)key withFallback:(int64_t)fallback
{
  keyCopy = key;
  if ([(CSPersistentConfiguration *)self isKeyInUserDefaults:keyCopy])
  {
    v7 = +[NSUserDefaults standardUserDefaults];
    fallback = [v7 integerForKey:keyCopy];
  }

  else
  {
    v8 = [(CSPersistentConfiguration *)self serverConfigurationToUse:keyCopy];
    v7 = v8;
    if (v8)
    {
      v9 = [v8 objectForKey:keyCopy];
      v10 = v9;
      if (v9)
      {
        fallback = [v9 integerValue];
      }
    }
  }

  return fallback;
}

- (double)doubleForKey:(id)key
{
  keyCopy = key;
  if ([(CSPersistentConfiguration *)self isKeyInUserDefaults:keyCopy])
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    [v5 doubleForKey:keyCopy];
    v7 = v6;
  }

  else
  {
    v8 = [(CSPersistentConfiguration *)self serverConfigurationToUse:keyCopy];
    v5 = v8;
    if (v8)
    {
      v9 = [v8 objectForKey:keyCopy];
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

- (float)floatForKey:(id)key
{
  keyCopy = key;
  if ([(CSPersistentConfiguration *)self isKeyInUserDefaults:keyCopy])
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    [v5 floatForKey:keyCopy];
    v7 = v6;
  }

  else
  {
    v8 = [(CSPersistentConfiguration *)self serverConfigurationToUse:keyCopy];
    v5 = v8;
    if (v8)
    {
      v9 = [v8 objectForKey:keyCopy];
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

- (BOOL)BOOLForKey:(id)key
{
  keyCopy = key;
  if ([(CSPersistentConfiguration *)self isKeyInUserDefaults:keyCopy])
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    bOOLValue = [v5 BOOLForKey:keyCopy];
  }

  else
  {
    v7 = [(CSPersistentConfiguration *)self serverConfigurationToUse:keyCopy];
    v5 = v7;
    if (v7)
    {
      v8 = [v7 objectForKey:keyCopy];
      bOOLValue = [v8 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  return bOOLValue;
}

- (BOOL)BOOLForKey:(id)key withFallback:(BOOL)fallback
{
  keyCopy = key;
  if ([(CSPersistentConfiguration *)self isKeyInUserDefaults:keyCopy])
  {
    v7 = +[NSUserDefaults standardUserDefaults];
    fallback = [v7 BOOLForKey:keyCopy];
  }

  else
  {
    v8 = [(CSPersistentConfiguration *)self serverConfigurationToUse:keyCopy];
    v7 = v8;
    if (v8)
    {
      v9 = [v8 objectForKey:keyCopy];
      v10 = v9;
      if (v9)
      {
        fallback = [v9 BOOLValue];
      }
    }
  }

  return fallback;
}

- (id)stringDictionaryForKey:(id)key
{
  v3 = [(CSPersistentConfiguration *)self objectForKey:key];
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

- (id)dictionaryForKey:(id)key
{
  v3 = [(CSPersistentConfiguration *)self objectForKey:key];

  return v3;
}

- (id)arrayForKey:(id)key
{
  v3 = [(CSPersistentConfiguration *)self objectForKey:key];

  return v3;
}

- (float)algorithmThresholdNumber:(unint64_t)number inArrayForKey:(id)key withMinValue:(float)value maxValue:(float)maxValue defaultValue:(float)defaultValue
{
  keyCopy = key;
  number = [keyCopy stringByAppendingFormat:@"%lu", number];
  if ([(CSPersistentConfiguration *)self isKeyInUserDefaults:number]&& ([(CSPersistentConfiguration *)self floatForKey:number], v14 > value) && ([(CSPersistentConfiguration *)self floatForKey:number], v15 < maxValue))
  {
    [(CSPersistentConfiguration *)self floatForKey:number];
    defaultValue = v16;
  }

  else
  {
    v17 = [(CSPersistentConfiguration *)self arrayForKey:keyCopy];
    if (v17)
    {
      v18 = [(CSPersistentConfiguration *)self arrayForKey:keyCopy];
      v19 = [v18 count];

      if (v19 > number)
      {
        v20 = [(CSPersistentConfiguration *)self arrayForKey:keyCopy];
        v21 = [v20 objectAtIndex:number];

        if (v21)
        {
          [v21 floatValue];
          if (v22 > value)
          {
            [v21 floatValue];
            if (v23 < maxValue)
            {
              [v21 floatValue];
              defaultValue = v24;
            }
          }
        }
      }
    }
  }

  return defaultValue;
}

- (int)algorithmIntegerNumber:(unint64_t)number inArrayForKey:(id)key withMinValue:(int)value maxValue:(int)maxValue defaultValue:(int)defaultValue
{
  keyCopy = key;
  number = [keyCopy stringByAppendingFormat:@"%lu", number];
  if ([(CSPersistentConfiguration *)self isKeyInUserDefaults:number]&& [(CSPersistentConfiguration *)self integerForKey:number]> value && [(CSPersistentConfiguration *)self integerForKey:number]< maxValue)
  {
    defaultValue = [(CSPersistentConfiguration *)self integerForKey:number];
  }

  else
  {
    *&v14 = value;
    *&v15 = maxValue;
    *&v16 = defaultValue;
    [(CSPersistentConfiguration *)self algorithmThresholdNumber:number inArrayForKey:keyCopy withMinValue:v14 maxValue:v15 defaultValue:v16];
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
        v23 = keyCopy;
        v24 = 2048;
        numberCopy = number;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%@ server configuration key has invalid integer at position %lu", buf, 0x16u);
      }
    }

    else
    {
      defaultValue = llroundf(v18);
    }
  }

  return defaultValue;
}

- (BOOL)algorithmBoolNumber:(unint64_t)number inArrayForKey:(id)key defaultValue:(BOOL)value
{
  valueCopy = value;
  keyCopy = key;
  number = [keyCopy stringByAppendingFormat:@"%lu", number];
  if ([(CSPersistentConfiguration *)self isKeyInUserDefaults:number])
  {
    v12 = [(CSPersistentConfiguration *)self BOOLForKey:number];
  }

  else
  {
    if (valueCopy)
    {
      *&v11 = 1.0;
    }

    else
    {
      *&v11 = 0.0;
    }

    LODWORD(v10) = 2.0;
    [(CSPersistentConfiguration *)self algorithmThresholdNumber:number inArrayForKey:keyCopy withMinValue:COERCE_DOUBLE(COERCE_UNSIGNED_INT(-1.0)) maxValue:v10 defaultValue:v11];
    v12 = v13 != 0.0;
  }

  return v12;
}

- (float)floatThreshold:(const CSSafetyDefault *)threshold forKey:(id)key
{
  *&v4 = threshold->var2;
  *&v5 = threshold->var3;
  *&v6 = threshold->var1;
  [(CSPersistentConfiguration *)self algorithmThresholdNumber:threshold->var0 inArrayForKey:key withMinValue:v4 maxValue:v5 defaultValue:v6];
  return result;
}

- (optional<int>)getIntegerDefault:(id)default
{
  defaultCopy = default;
  v5 = [(CSPersistentConfiguration *)self objectForKey:defaultCopy];
  if (v5)
  {
    v6 = [(CSPersistentConfiguration *)self integerForKey:defaultCopy];
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
      v13 = defaultCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "default not found for %@", &v12, 0xCu);
    }

    v8 = 0;
    v9 = 0;
    v7 = 0;
  }

  return (v9 | v8 | v7);
}

- (optional<float>)getFloatDefault:(id)default
{
  defaultCopy = default;
  v5 = [(CSPersistentConfiguration *)self objectForKey:defaultCopy];
  if (v5)
  {
    [(CSPersistentConfiguration *)self floatForKey:defaultCopy];
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

- (optional<BOOL>)getBooleanDefault:(id)default
{
  defaultCopy = default;
  v5 = [(CSPersistentConfiguration *)self objectForKey:defaultCopy];
  if (v5)
  {
    v6 = [(CSPersistentConfiguration *)self BOOLForKey:defaultCopy];
    v7 = 1;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return (v6 | (v7 << 8));
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  errorCopy = error;
  urlSession = self->_urlSession;
  if (errorCopy)
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
      v11 = errorCopy;
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

- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l
{
  lCopy = l;
  v7 = [NSData dataWithContentsOfURL:lCopy];
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
        uTF8String = [@"com.apple.anomalydetectiond.CSPersistentConfiguration" UTF8String];
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_100355EB0;
        handler[3] = &unk_100436328;
        objc_copyWeak(&v21, buf);
        v20 = v14;
        xpc_activity_register(uTF8String, XPC_ACTIVITY_CHECK_IN, handler);

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