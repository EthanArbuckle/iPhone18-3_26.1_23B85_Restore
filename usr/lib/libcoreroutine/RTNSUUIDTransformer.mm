@interface RTNSUUIDTransformer
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation RTNSUUIDTransformer

- (id)transformedValue:(id)value
{
  v8 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v7 = 136315394;
      *&v7[4] = "[RTNSUUIDTransformer transformedValue:]";
      *&v7[12] = 1024;
      *&v7[14] = 27;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Object is not of UUID type (in %s:%d)", v7, 0x12u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *v7 = 0;
    *&v7[8] = 0;
    [valueCopy getUUIDBytes:v7];
    v5 = [MEMORY[0x277CBEA90] dataWithBytes:v7 length:16];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)reverseTransformedValue:(id)value
{
  v12 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[RTNSUUIDTransformer reverseTransformedValue:]";
      v10 = 1024;
      v11 = 41;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Object is not of data type (in %s:%d)", &v8, 0x12u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = valueCopy;
    if ([v5 bytes])
    {
      v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v5, "bytes")}];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end