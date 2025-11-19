@interface RTBootInfo
+ (BOOL)isFirstRunSinceBootWithDefaultsManager:(id)a3 defaultsKey:(id)a4;
+ (id)getCurrentBootSessionID;
+ (void)setBootSessionIDWithDefaultsManager:(id)a3 defaultsKey:(id)a4;
@end

@implementation RTBootInfo

+ (id)getCurrentBootSessionID
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6 = 37;
  if (!sysctlbyname("kern.bootsessionuuid", v7, &v6, 0, 0))
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
    v3 = getCurrentBootSessionID_bootUUID;
    getCurrentBootSessionID_bootUUID = v2;
  }

  v4 = getCurrentBootSessionID_bootUUID;

  return v4;
}

+ (BOOL)isFirstRunSinceBootWithDefaultsManager:(id)a3 defaultsKey:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "+[RTBootInfo isFirstRunSinceBootWithDefaultsManager:defaultsKey:]";
      v16 = 1024;
      LODWORD(v17) = 29;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager (in %s:%d)", &v14, 0x12u);
    }
  }

  v8 = +[RTBootInfo getCurrentBootSessionID];
  if (v8)
  {
    v9 = [v5 objectForKey:v6];
    v10 = v9;
    v11 = !v9 || ([v9 isEqual:v8]& 1) == 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = 136315650;
        v15 = "+[RTBootInfo isFirstRunSinceBootWithDefaultsManager:defaultsKey:]";
        v16 = 2112;
        v17 = v8;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%s, currentBootUUID, %@, lastBootUUID, %@", &v14, 0x20u);
      }
    }
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "+[RTBootInfo isFirstRunSinceBootWithDefaultsManager:defaultsKey:]";
      v16 = 2112;
      v17 = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "%s, unable to read a valid currentBootUUID, %@", &v14, 0x16u);
    }

    v11 = 0;
  }

  return v11;
}

+ (void)setBootSessionIDWithDefaultsManager:(id)a3 defaultsKey:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = +[RTBootInfo getCurrentBootSessionID];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "+[RTBootInfo setBootSessionIDWithDefaultsManager:defaultsKey:]";
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%s, storing boot session ID in defaults, %@", &v9, 0x16u);
    }
  }

  [v5 setObject:v7 forKey:v6];
}

@end