@interface MODictionaryEncoder
+ (id)decodeToDictionary:(id)a3;
+ (id)encodeDictionary:(id)a3;
@end

@implementation MODictionaryEncoder

+ (id)encodeDictionary:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[MODictionaryEncoder encodeDictionary:];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = 0;
    v5 = [NSJSONSerialization dataWithJSONObject:v3 options:0 error:&v10];
    v6 = v10;
    if (v6 || !v5)
    {
      v8 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(MODictionaryEncoder *)v6 encodeDictionary:v8];
      }

      v7 = 0;
    }

    else
    {
      v7 = v5;
    }
  }

  else
  {
LABEL_10:
    v7 = 0;
  }

  return v7;
}

+ (id)decodeToDictionary:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[MODictionaryEncoder decodeToDictionary:];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = 0;
    v5 = [NSJSONSerialization JSONObjectWithData:v3 options:0 error:&v10];
    v6 = v10;
    if (v6 || !v5)
    {
      v8 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [(MODictionaryEncoder *)v6 decodeToDictionary:v8];
      }

      v7 = 0;
    }

    else
    {
      v7 = v5;
    }
  }

  else
  {
LABEL_10:
    v7 = 0;
  }

  return v7;
}

+ (void)encodeDictionary:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v2 = 23;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Object is not of dictionary type (in %s:%d)", v1, 0x12u);
}

+ (void)encodeDictionary:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error when serialization to json, %@", &v2, 0xCu);
}

+ (void)decodeToDictionary:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v2 = 46;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Object is not of data type (in %s:%d)", v1, 0x12u);
}

+ (void)decodeToDictionary:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Error when serialization to dictionary, %@", &v2, 0xCu);
}

@end