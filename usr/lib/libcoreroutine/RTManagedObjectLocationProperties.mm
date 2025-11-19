@interface RTManagedObjectLocationProperties
- (RTManagedObjectLocationProperties)initWithLatitudePropertyPath:(id)a3 longitudePropertyPath:(id)a4 referenceFramePropertyPath:(id)a5;
@end

@implementation RTManagedObjectLocationProperties

- (RTManagedObjectLocationProperties)initWithLatitudePropertyPath:(id)a3 longitudePropertyPath:(id)a4 referenceFramePropertyPath:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v18 = "Invalid parameter not satisfying: latitudePropertyPath";
LABEL_17:
    _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, v18, buf, 2u);
    goto LABEL_18;
  }

  if (!v10)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v18 = "Invalid parameter not satisfying: longitudePropertyPath";
    goto LABEL_17;
  }

  v12 = [v9 count];
  if (v12 != [v10 count])
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v18 = "Invalid parameter not satisfying: latitudePropertyPath.count == longitudePropertyPath.count";
    goto LABEL_17;
  }

  if (v11)
  {
    v13 = [v9 count];
    if (v13 != [v11 count])
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v18 = "Invalid parameter not satisfying: latitudePropertyPath.count == referenceFramePropertyPath.count";
        goto LABEL_17;
      }

LABEL_18:

      v16 = 0;
      goto LABEL_19;
    }
  }

  v20.receiver = self;
  v20.super_class = RTManagedObjectLocationProperties;
  v14 = [(RTManagedObjectLocationProperties *)&v20 init];
  p_isa = &v14->super.isa;
  if (v14)
  {
    objc_storeStrong(&v14->_latitudePropertyPath, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
  }

  self = p_isa;
  v16 = self;
LABEL_19:

  return v16;
}

@end