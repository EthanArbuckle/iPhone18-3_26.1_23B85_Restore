@interface RTPolygonTransformer
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation RTPolygonTransformer

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
      v12 = "[RTPolygonTransformer transformedValue:]";
      v13 = 1024;
      LODWORD(v14) = 37;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Object is not of polygon type (in %s:%d)", buf, 0x12u);
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
        _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "failed polygon serialization, value, %@, error, %@", buf, 0x16u);
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
  v16 = *MEMORY[0x277D85DE8];
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
      v13 = "[RTPolygonTransformer reverseTransformedValue:]";
      v14 = 1024;
      LODWORD(v15) = 63;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Object is not of data type (in %s:%d)", buf, 0x12u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v11 = 0;
    v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v5 fromData:valueCopy error:&v11];
    v7 = v11;
    if (v7 || !v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v9 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v13 = valueCopy;
          v14 = 2112;
          v15 = v7;
          _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "failed polygon deserialization, value, %@, error, %@", buf, 0x16u);
        }
      }

      v8 = 0;
    }

    else
    {
      v8 = v6;
    }
  }

  else
  {
LABEL_10:
    v8 = 0;
  }

  return v8;
}

@end