@interface MOContextDefaultsManager
- (id)objectForKey:(id)key;
- (void)deleteObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation MOContextDefaultsManager

- (id)objectForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = [v4 objectForKey:keyCopy];
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityContextDefaults);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(MOContextDefaultsManager *)keyCopy objectForKey:v5, v6];
    }
  }

  else
  {
    v4 = _mo_log_facility_get_os_log(&MOLogFacilityContextDefaults);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(MOContextDefaultsManager *)v4 objectForKey:v7, v8, v9, v10, v11, v12, v13];
    }

    v5 = 0;
  }

  return v5;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityContextDefaults);
  v8 = v7;
  if (keyCopy)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v16 = 136315650;
      v17 = "[MOContextDefaultsManager setObject:forKey:]";
      v18 = 2112;
      v19 = keyCopy;
      v20 = 2112;
      v21 = objectCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s, key, %@, value, %@", &v16, 0x20u);
    }

    v8 = +[NSUserDefaults standardUserDefaults];
    [v8 setObject:objectCopy forKey:keyCopy];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(MOContextDefaultsManager *)v8 setObject:v9 forKey:v10, v11, v12, v13, v14, v15];
  }
}

- (void)deleteObjectForKey:(id)key
{
  keyCopy = key;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityContextDefaults);
  v5 = v4;
  if (keyCopy)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v13 = 136315394;
      v14 = "[MOContextDefaultsManager deleteObjectForKey:]";
      v15 = 2112;
      v16 = keyCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s, deleting key, %@", &v13, 0x16u);
    }

    v5 = +[NSUserDefaults standardUserDefaults];
    [v5 removeObjectForKey:keyCopy];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(MOContextDefaultsManager *)v5 deleteObjectForKey:v6, v7, v8, v9, v10, v11, v12];
  }
}

- (void)objectForKey:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 136315650;
  v4 = "[MOContextDefaultsManager objectForKey:]";
  v5 = 2112;
  v6 = a1;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s, key, %@, value, %@", &v3, 0x20u);
}

@end