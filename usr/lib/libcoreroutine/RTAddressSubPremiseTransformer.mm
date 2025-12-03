@interface RTAddressSubPremiseTransformer
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation RTAddressSubPremiseTransformer

- (id)transformedValue:(id)value
{
  v37 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  if (!valueCopy)
  {
    goto LABEL_27;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTAddressSubPremiseTransformer transformedValue:]";
      *&buf[12] = 1024;
      *&buf[14] = 45;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Object is not of array type (in %s:%d)", buf, 0x12u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = valueCopy;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v5 = valueCopy;
    v6 = [v5 countByEnumeratingWithState:&v29 objects:v36 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v30;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(v5);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "[RTAddressSubPremiseTransformer transformedValue:]";
              *&buf[12] = 1024;
              *&buf[14] = 53;
              _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Object is not of RTAddressSubPremise type (in %s:%d)", buf, 0x12u);
            }
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v11 = 0;
            goto LABEL_29;
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v29 objects:v36 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    *buf = 3735928559;
    *&buf[16] = 0u;
    v35 = 0u;
    *&buf[8] = [v5 count];
    v11 = objc_opt_new();
    [v11 appendBytes:buf length:48];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = v5;
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v25 + 1) + 8 * i);
          v18 = objc_autoreleasePoolPush();
          subPremise = [v17 subPremise];
          v20 = [subPremise dataUsingEncoding:4];

          subPremiseType = [v17 subPremiseType];
          v23 = [v20 length] + 16;
          [v11 appendBytes:&v23 length:8];
          [v11 appendBytes:&subPremiseType length:8];
          [v11 appendData:v20];

          objc_autoreleasePoolPop(v18);
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v14);
    }

LABEL_29:
    valueCopy = v22;
  }

  else
  {
LABEL_27:
    v11 = 0;
  }

  return v11;
}

- (id)reverseTransformedValue:(id)value
{
  v21 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  if (!valueCopy)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTAddressSubPremiseTransformer reverseTransformedValue:]";
      *&buf[12] = 1024;
      *&buf[14] = 90;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Object is not of data type (in %s:%d)", buf, 0x12u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = valueCopy;
    *buf = 3735928559;
    *&buf[8] = 0u;
    v19 = 0u;
    v20 = 0;
    [v5 getBytes:buf length:48];
    v6 = 0;
    if (*buf == 3735928559)
    {
      v7 = objc_alloc(MEMORY[0x277CBEB18]);
      v6 = [v7 initWithCapacity:*&buf[8]];
      if (*&buf[8])
      {
        v8 = 0;
        v9 = 48;
        do
        {
          v10 = objc_autoreleasePoolPush();
          v17 = 0;
          [v5 getBytes:&v17 range:{v9, 8}];
          v16 = 0;
          [v5 getBytes:&v16 range:{v9 + 8, 8}];
          v11 = [v5 subdataWithRange:{v9 + 16, v17 - 16}];
          v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v11 encoding:4];
          v13 = objc_alloc(MEMORY[0x277D01068]);
          v14 = [v13 initWithSubPremise:v12 subPremiseType:v16];
          if (v14)
          {
            [v6 addObject:v14];
          }

          v9 += v17;

          objc_autoreleasePoolPop(v10);
          ++v8;
        }

        while (*&buf[8] > v8);
      }
    }
  }

  else
  {
LABEL_14:
    v6 = 0;
  }

  return v6;
}

@end