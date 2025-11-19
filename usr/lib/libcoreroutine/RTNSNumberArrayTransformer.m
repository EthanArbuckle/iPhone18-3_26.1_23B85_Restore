@interface RTNSNumberArrayTransformer
- (id)reverseTransformedValue:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation RTNSNumberArrayTransformer

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
      v12 = "[RTNSNumberArrayTransformer transformedValue:]";
      v13 = 1024;
      LODWORD(v14) = 34;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Object is not of array type (in %s:%d)", buf, 0x12u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = 0;
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v10];
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
        _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "failed number array serialization, value, %@, error, %@", buf, 0x16u);
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
  v18 = *MEMORY[0x277D85DE8];
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
      v15 = "[RTNSNumberArrayTransformer reverseTransformedValue:]";
      v16 = 1024;
      LODWORD(v17) = 61;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Object is not of data type (in %s:%d)", buf, 0x12u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
    v13 = 0;
    v8 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v7 fromData:v3 error:&v13];
    v9 = v13;
    if (v9 || !v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v11 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v15 = v3;
          v16 = 2112;
          v17 = v9;
          _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "failed number array deserialization, value, %@, error, %@", buf, 0x16u);
        }
      }

      v10 = 0;
    }

    else
    {
      v10 = v8;
    }
  }

  else
  {
LABEL_10:
    v10 = 0;
  }

  return v10;
}

@end