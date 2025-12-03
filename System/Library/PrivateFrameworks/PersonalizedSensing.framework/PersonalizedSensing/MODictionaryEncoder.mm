@interface MODictionaryEncoder
+ (id)decodeToDictionary:(id)dictionary;
+ (id)encodeDictionary:(id)dictionary;
@end

@implementation MODictionaryEncoder

+ (id)encodeDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[MODictionaryEncoder encodeDictionary:];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = 0;
    v5 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dictionaryCopy options:0 error:&v10];
    v6 = v10;
    if (v6 || !v5)
    {
      v8 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
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

+ (id)decodeToDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[MODictionaryEncoder decodeToDictionary:];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = 0;
    v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dictionaryCopy options:0 error:&v10];
    v6 = v10;
    if (v6 || !v5)
    {
      v8 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
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
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  v3 = 23;
  _os_log_error_impl(&dword_25E48F000, v0, OS_LOG_TYPE_ERROR, "Object is not of dictionary type (in %s:%d)", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)encodeDictionary:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25E48F000, a2, OS_LOG_TYPE_ERROR, "Error when serialization to json, %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)decodeToDictionary:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  v3 = 46;
  _os_log_error_impl(&dword_25E48F000, v0, OS_LOG_TYPE_ERROR, "Object is not of data type (in %s:%d)", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)decodeToDictionary:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_25E48F000, a2, OS_LOG_TYPE_DEBUG, "Error when serialization to dictionary, %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end