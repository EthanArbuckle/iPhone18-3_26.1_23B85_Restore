@interface RTNSStringArrayTransformer
- (id)reverseTransformedValue:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation RTNSStringArrayTransformer

- (id)transformedValue:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!v3)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[RTNSStringArrayTransformer transformedValue:]";
      v12 = 1024;
      v13 = 37;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Object is not of array type (in %s:%d)", &v10, 0x12u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_opt_new();
    v6 = [v3 componentsJoinedByString:&stru_284544ED0];
    v7 = [v6 dataUsingEncoding:4];
    [v5 appendData:v7];

    v8 = [MEMORY[0x277CBEA90] dataWithData:v5];
  }

  else
  {
LABEL_8:
    v8 = 0;
  }

  return v8;
}

- (id)reverseTransformedValue:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!v3)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[RTNSStringArrayTransformer reverseTransformedValue:]";
      v10 = 1024;
      v11 = 54;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Object is not of data type (in %s:%d)", &v8, 0x12u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v3 encoding:4];
    if ([v5 length])
    {
      v6 = [v5 componentsSeparatedByString:&stru_284544ED0];
    }

    else
    {
      v6 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
LABEL_9:
    v6 = 0;
  }

  return v6;
}

@end