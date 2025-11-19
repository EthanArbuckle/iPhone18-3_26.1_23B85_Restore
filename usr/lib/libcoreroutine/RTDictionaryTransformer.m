@interface RTDictionaryTransformer
- (id)reverseTransformedValue:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation RTDictionaryTransformer

- (id)transformedValue:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!v3)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[RTDictionaryTransformer transformedValue:]";
      v13 = 1024;
      LODWORD(v14) = 35;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Object is not of dictionary type (in %s:%d)", buf, 0x12u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = 0;
    v5 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v3 options:0 error:&v10];
    v6 = v10;
    if (v6 || !v5)
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v12 = v3;
        v13 = 2112;
        v14 = v6;
        _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "failed dictionary serialization, value, %@, error, %@", buf, 0x16u);
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

- (id)reverseTransformedValue:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!v3)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[RTDictionaryTransformer reverseTransformedValue:]";
      v13 = 1024;
      LODWORD(v14) = 61;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Object is not of data type (in %s:%d)", buf, 0x12u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = 0;
    v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v3 options:0 error:&v10];
    v6 = v10;
    if (v6 || !v5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v8 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v12 = v3;
          v13 = 2112;
          v14 = v6;
          _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "failed dictionary deserialization, value, %@, error, %@", buf, 0x16u);
        }
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

@end