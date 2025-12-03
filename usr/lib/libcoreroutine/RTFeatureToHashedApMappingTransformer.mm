@interface RTFeatureToHashedApMappingTransformer
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation RTFeatureToHashedApMappingTransformer

- (id)transformedValue:(id)value
{
  v15 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  if (!valueCopy)
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
      v12 = "[RTFeatureToHashedApMappingTransformer transformedValue:]";
      v13 = 1024;
      LODWORD(v14) = 35;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Object is not of dictionary type (in %s:%d)", buf, 0x12u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = 0;
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:valueCopy requiringSecureCoding:1 error:&v10];
    v6 = v10;
    if (v6 || !v5)
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v12 = valueCopy;
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

- (id)reverseTransformedValue:(id)value
{
  v19 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  if (!valueCopy)
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
      v16 = "[RTFeatureToHashedApMappingTransformer reverseTransformedValue:]";
      v17 = 1024;
      LODWORD(v18) = 61;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Object is not of data type (in %s:%d)", buf, 0x12u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
    v14 = 0;
    v9 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v8 fromData:valueCopy error:&v14];
    v10 = v14;
    if (v10 || !v9)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v12 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v16 = valueCopy;
          v17 = 2112;
          v18 = v10;
          _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "failed number array deserialization, value, %@, error, %@", buf, 0x16u);
        }
      }

      v11 = 0;
    }

    else
    {
      v11 = v9;
    }
  }

  else
  {
LABEL_10:
    v11 = 0;
  }

  return v11;
}

@end