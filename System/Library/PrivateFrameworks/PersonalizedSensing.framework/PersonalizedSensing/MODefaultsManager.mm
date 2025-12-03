@interface MODefaultsManager
+ (BOOL)isExtendedLogEnabled:(id)enabled forDetaultsManager:(id)manager;
+ (id)momentsDaemonDefaults;
- (MODefaultsManager)initWithSuiteName:(id)name;
- (MODefaultsManager)initWithUniverse:(id)universe;
- (id)objectForKey:(id)key;
- (id)objectForKeyWithoutLog:(id)log;
- (void)deleteObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
- (void)setObjectWithoutLog:(id)log forKey:(id)key;
@end

@implementation MODefaultsManager

- (MODefaultsManager)initWithUniverse:(id)universe
{
  v7.receiver = self;
  v7.super_class = MODefaultsManager;
  v3 = [(MODefaultsManager *)&v7 init];
  if (v3)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    userDefaults = v3->_userDefaults;
    v3->_userDefaults = standardUserDefaults;
  }

  return v3;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    v5 = [(NSUserDefaults *)self->_userDefaults objectForKey:keyCopy];
    v6 = _mo_log_facility_get_os_log(MOLogFacilityDefaults);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(MODefaultsManager *)keyCopy objectForKey:v5, v6];
    }
  }

  else
  {
    v7 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MODefaultsManager objectForKey:];
    }

    v6 = _mo_log_facility_get_os_log(MOLogFacilityDefaults);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MODefaultsManager objectForKey:v6];
    }

    v5 = 0;
  }

  return v5;
}

- (id)objectForKeyWithoutLog:(id)log
{
  if (log)
  {
    v3 = [(NSUserDefaults *)self->_userDefaults objectForKey:?];
  }

  else
  {
    v4 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [MODefaultsManager objectForKeyWithoutLog:];
    }

    v5 = _mo_log_facility_get_os_log(MOLogFacilityDefaults);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [MODefaultsManager objectForKeyWithoutLog:v5];
    }

    v3 = 0;
  }

  return v3;
}

- (void)deleteObjectForKey:(id)key
{
  v12 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (keyCopy)
  {
    v5 = _mo_log_facility_get_os_log(MOLogFacilityDefaults);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "[MODefaultsManager deleteObjectForKey:]";
      v10 = 2112;
      v11 = keyCopy;
      _os_log_impl(&dword_25E48F000, v5, OS_LOG_TYPE_INFO, "%s, deleting key, %@", &v8, 0x16u);
    }

    [(NSUserDefaults *)self->_userDefaults removeObjectForKey:keyCopy];
  }

  else
  {
    v6 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MODefaultsManager deleteObjectForKey:];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setObject:(id)object forKey:(id)key
{
  v17 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  keyCopy = key;
  if (keyCopy)
  {
    v8 = _mo_log_facility_get_os_log(MOLogFacilityDefaults);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 136315650;
      v12 = "[MODefaultsManager setObject:forKey:]";
      v13 = 2112;
      v14 = keyCopy;
      v15 = 2112;
      v16 = objectCopy;
      _os_log_impl(&dword_25E48F000, v8, OS_LOG_TYPE_INFO, "%s, key, %@, value, %@", &v11, 0x20u);
    }

    [(NSUserDefaults *)self->_userDefaults setObject:objectCopy forKey:keyCopy];
  }

  else
  {
    v9 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [MODefaultsManager setObject:forKey:];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setObjectWithoutLog:(id)log forKey:(id)key
{
  if (key)
  {
    userDefaults = self->_userDefaults;

    [(NSUserDefaults *)userDefaults setObject:log forKey:?];
  }

  else
  {
    v6 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MODefaultsManager setObjectWithoutLog:forKey:];
    }
  }
}

- (MODefaultsManager)initWithSuiteName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = MODefaultsManager;
  v5 = [(MODefaultsManager *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:nameCopy];
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

void __42__MODefaultsManager_momentsDaemonDefaults__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v0 bundleIdentifier];

  LODWORD(v0) = [v4 isEqualToString:@"com.apple.momentsd"];
  v1 = [MODefaultsManager alloc];
  if (v0)
  {
    v2 = [(MODefaultsManager *)v1 initWithUniverse:0];
  }

  else
  {
    v2 = [(MODefaultsManager *)v1 initWithSuiteName:@"com.apple.momentsd"];
  }

  v3 = momentsDaemonDefaults_shared;
  momentsDaemonDefaults_shared = v2;
}

+ (BOOL)isExtendedLogEnabled:(id)enabled forDetaultsManager:(id)manager
{
  v4 = [manager objectForKey:enabled];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)objectForKey:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 136315650;
  v5 = "[MODefaultsManager objectForKey:]";
  v6 = 2112;
  v7 = a1;
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&dword_25E48F000, log, OS_LOG_TYPE_DEBUG, "%s, key, %@, value, %@", &v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)objectForKey:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25E48F000, v0, v1, "Invalid parameter not satisfying: key (in %s:%d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)objectForKey:(os_log_t)log .cold.3(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[MODefaultsManager objectForKey:]";
  _os_log_error_impl(&dword_25E48F000, log, OS_LOG_TYPE_ERROR, "%s, key cannot be nil!", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)objectForKeyWithoutLog:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25E48F000, v0, v1, "Invalid parameter not satisfying: key (in %s:%d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)objectForKeyWithoutLog:(os_log_t)log .cold.2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[MODefaultsManager objectForKeyWithoutLog:]";
  _os_log_error_impl(&dword_25E48F000, log, OS_LOG_TYPE_ERROR, "%s, key cannot be nil!", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)deleteObjectForKey:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25E48F000, v0, v1, "Invalid parameter not satisfying: key (in %s:%d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setObject:forKey:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25E48F000, v0, v1, "Invalid parameter not satisfying: key (in %s:%d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setObjectWithoutLog:forKey:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25E48F000, v0, v1, "Invalid parameter not satisfying: key (in %s:%d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end