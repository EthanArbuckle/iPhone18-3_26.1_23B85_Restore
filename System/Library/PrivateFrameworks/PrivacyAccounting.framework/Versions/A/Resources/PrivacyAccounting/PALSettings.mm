@interface PALSettings
+ (id)sharedSettings;
- (BOOL)persistenceEnabledForCategory:(id)category;
- (NSData)saltForMetricsReduction;
- (PALSettings)initWithSuiteName:(id)name;
- (int64_t)accessFilteringPolicy;
- (void)migrateSettingsFromFile:(id)file;
@end

@implementation PALSettings

+ (id)sharedSettings
{
  if (qword_10001ED08 != -1)
  {
    sub_100001D90();
  }

  v3 = qword_10001ED00;

  return v3;
}

- (PALSettings)initWithSuiteName:(id)name
{
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = PALSettings;
  v5 = [(PALSettings *)&v14 init];
  if (v5)
  {
    v6 = [NSUserDefaults alloc];
    v7 = [nameCopy stringByAppendingString:@".backup-enabled"];
    v8 = [v6 initWithSuiteName:v7];
    settingsBackupEnabled = v5->_settingsBackupEnabled;
    v5->_settingsBackupEnabled = v8;

    v10 = [nameCopy stringByAppendingString:@".backup-disabled"];
    v11 = [[NSUserDefaults alloc] initWithSuiteName:v10];
    settingsBackupDisabled = v5->_settingsBackupDisabled;
    v5->_settingsBackupDisabled = v11;

    _CFPreferencesSetBackupDisabled();
    v5->_assetIdentifiersPersistenceEnabled = _os_feature_enabled_impl();
    v5->_saltForMetricsReductionMaxAge = 86400.0;
    v5->_intervalMetricDifficulty = 2;
    v5->_loggingOptions = +[PALoggingOptionsFactory defaultLoggingOptions];
  }

  return v5;
}

- (void)migrateSettingsFromFile:(id)file
{
  fileCopy = file;
  v5 = +[NSFileManager defaultManager];
  if ([v5 fileExistsAtPath:fileCopy])
  {
    v13 = 0;
    v6 = [PALSettingsPlist settingsFromFile:fileCopy withError:&v13];
    v7 = v13;
    if (v6)
    {
      -[PALSettings setLoggingEnabled:](self, "setLoggingEnabled:", [v6 loggingEnabled]);
      [v6 lastPreflightCheck];
      [(PALSettings *)self setLastPreflightCheck:?];
      v8 = sub_100004C80();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v15 = fileCopy;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Migrated settings plist: %{public}@", buf, 0xCu);
      }

      v12 = v7;
      v9 = [v5 removeItemAtPath:fileCopy error:&v12];
      v10 = v12;

      if (v9)
      {
        goto LABEL_14;
      }

      v11 = sub_100004C80();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000052B8();
      }

      v7 = v10;
    }

    else
    {
      v11 = sub_100004C80();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100005320();
      }
    }

    v10 = v7;
LABEL_14:

    goto LABEL_15;
  }

  v10 = sub_100004C80();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100005240(fileCopy, v10);
  }

LABEL_15:
}

- (int64_t)accessFilteringPolicy
{
  v2 = [(NSUserDefaults *)self->_settingsBackupDisabled objectForKey:@"PASettingsAccessFilteringPolicy"];
  if (_NSIsNSNumber())
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 2;
  }

  return integerValue;
}

- (BOOL)persistenceEnabledForCategory:(id)category
{
  categoryCopy = category;
  v5 = [(NSUserDefaults *)self->_settingsBackupDisabled dictionaryForKey:@"PASettingsCategoryPersistenceOverrides"];
  v6 = [v5 objectForKeyedSubscript:categoryCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    LOBYTE(v7) = [v6 BOOLValue];
  }

  else
  {
    if (qword_10001ED28 != -1)
    {
      sub_10000539C();
    }

    v7 = [qword_10001ED20 containsObject:categoryCopy] ^ 1;
  }

  return v7;
}

- (NSData)saltForMetricsReduction
{
  if (!self->_saltForMetricsReduction)
  {
    v3 = [(NSUserDefaults *)self->_settingsBackupDisabled dataForKey:@"PASettingsSaltForMetricsReduction"];
    saltForMetricsReduction = self->_saltForMetricsReduction;
    self->_saltForMetricsReduction = v3;

    [(NSUserDefaults *)self->_settingsBackupDisabled doubleForKey:@"PASettingsSaltForMetricsReductionGenerationTimestamp"];
    self->_saltForMetricsReductionGenerationTimestamp = v5;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v7 = self->_saltForMetricsReduction;
  if (v7 && (Current = vabdd_f64(Current, self->_saltForMetricsReductionGenerationTimestamp), Current < self->_saltForMetricsReductionMaxAge))
  {
    v8 = v7;
  }

  else
  {
    current = [NSMutableData dataWithLength:32, Current];
    v10 = SecRandomCopyBytes(kSecRandomDefault, 0x20uLL, [current mutableBytes]);
    if (v10)
    {
      v11 = v10;
      v12 = sub_100004C80();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        sub_1000053B0(v11, v12);
      }

      v13 = +[NSData data];
    }

    else
    {
      v14 = [current copy];
      v15 = self->_saltForMetricsReduction;
      self->_saltForMetricsReduction = v14;

      self->_saltForMetricsReductionGenerationTimestamp = CFAbsoluteTimeGetCurrent();
      [(NSUserDefaults *)self->_settingsBackupDisabled setObject:current forKey:@"PASettingsSaltForMetricsReduction"];
      [(NSUserDefaults *)self->_settingsBackupDisabled setDouble:@"PASettingsSaltForMetricsReductionGenerationTimestamp" forKey:self->_saltForMetricsReductionGenerationTimestamp];
      v13 = self->_saltForMetricsReduction;
    }

    v8 = v13;
  }

  return v8;
}

@end