@interface MODefaultsManager
+ (BOOL)isExtendedLogEnabled:(id)a3 forDetaultsManager:(id)a4;
+ (id)momentsDaemonDefaults;
- (MODefaultsManager)initWithSuiteName:(id)a3;
- (MODefaultsManager)initWithUniverse:(id)a3;
- (id)objectForKey:(id)a3;
- (id)objectForKeyWithoutLog:(id)a3;
- (void)deleteObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setObjectWithoutLog:(id)a3 forKey:(id)a4;
@end

@implementation MODefaultsManager

- (MODefaultsManager)initWithUniverse:(id)a3
{
  v7.receiver = self;
  v7.super_class = MODefaultsManager;
  v3 = [(MODefaultsManager *)&v7 init];
  if (v3)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    userDefaults = v3->_userDefaults;
    v3->_userDefaults = v4;
  }

  return v3;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSUserDefaults *)self->_userDefaults objectForKey:v4];
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityDefaults);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(MODefaultsManager *)v4 objectForKey:v5, v6];
    }
  }

  else
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MODefaultsManager objectForKey:];
    }

    v6 = _mo_log_facility_get_os_log(&MOLogFacilityDefaults);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MODefaultsManager objectForKey:v6];
    }

    v5 = 0;
  }

  return v5;
}

- (id)objectForKeyWithoutLog:(id)a3
{
  if (a3)
  {
    v3 = [(NSUserDefaults *)self->_userDefaults objectForKey:?];
  }

  else
  {
    v4 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [MODefaultsManager objectForKeyWithoutLog:];
    }

    v5 = _mo_log_facility_get_os_log(&MOLogFacilityDefaults);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [MODefaultsManager objectForKeyWithoutLog:v5];
    }

    v3 = 0;
  }

  return v3;
}

- (void)deleteObjectForKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityDefaults);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 136315394;
      v8 = "[MODefaultsManager deleteObjectForKey:]";
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s, deleting key, %@", &v7, 0x16u);
    }

    [(NSUserDefaults *)self->_userDefaults removeObjectForKey:v4];
  }

  else
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MODefaultsManager deleteObjectForKey:];
    }
  }
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityDefaults);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 136315650;
      v11 = "[MODefaultsManager setObject:forKey:]";
      v12 = 2112;
      v13 = v7;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s, key, %@, value, %@", &v10, 0x20u);
    }

    [(NSUserDefaults *)self->_userDefaults setObject:v6 forKey:v7];
  }

  else
  {
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [MODefaultsManager setObject:forKey:];
    }
  }
}

- (void)setObjectWithoutLog:(id)a3 forKey:(id)a4
{
  if (a4)
  {
    userDefaults = self->_userDefaults;

    [(NSUserDefaults *)userDefaults setObject:a3 forKey:?];
  }

  else
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MODefaultsManager setObjectWithoutLog:forKey:];
    }
  }
}

- (MODefaultsManager)initWithSuiteName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MODefaultsManager;
  v5 = [(MODefaultsManager *)&v9 init];
  if (v5)
  {
    v6 = [[NSUserDefaults alloc] initWithSuiteName:v4];
    userDefaults = v5->_userDefaults;
    v5->_userDefaults = v6;
  }

  return v5;
}

+ (id)momentsDaemonDefaults
{
  if (momentsDaemonDefaults_onceToken != -1)
  {
    +[MODefaultsManager momentsDaemonDefaults];
  }

  v3 = momentsDaemonDefaults_shared;

  return v3;
}

void __42__MODefaultsManager_momentsDaemonDefaults__block_invoke(id a1)
{
  v1 = +[NSBundle mainBundle];
  v5 = [v1 bundleIdentifier];

  LODWORD(v1) = [v5 isEqualToString:@"com.apple.momentsd"];
  v2 = [MODefaultsManager alloc];
  if (v1)
  {
    v3 = [(MODefaultsManager *)v2 initWithUniverse:0];
  }

  else
  {
    v3 = [(MODefaultsManager *)v2 initWithSuiteName:@"com.apple.momentsd"];
  }

  v4 = momentsDaemonDefaults_shared;
  momentsDaemonDefaults_shared = v3;
}

+ (BOOL)isExtendedLogEnabled:(id)a3 forDetaultsManager:(id)a4
{
  v4 = [a4 objectForKey:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)objectForKey:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 136315650;
  v4 = "[MODefaultsManager objectForKey:]";
  v5 = 2112;
  v6 = a1;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s, key, %@, value, %@", &v3, 0x20u);
}

- (void)objectForKey:(os_log_t)log .cold.3(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MODefaultsManager objectForKey:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s, key cannot be nil!", &v1, 0xCu);
}

- (void)objectForKeyWithoutLog:(os_log_t)log .cold.2(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MODefaultsManager objectForKeyWithoutLog:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s, key cannot be nil!", &v1, 0xCu);
}

@end