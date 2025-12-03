@interface RTManagedObjectLocationProperties
- (RTManagedObjectLocationProperties)initWithLatitudePropertyPath:(id)path longitudePropertyPath:(id)propertyPath referenceFramePropertyPath:(id)framePropertyPath;
@end

@implementation RTManagedObjectLocationProperties

- (RTManagedObjectLocationProperties)initWithLatitudePropertyPath:(id)path longitudePropertyPath:(id)propertyPath referenceFramePropertyPath:(id)framePropertyPath
{
  pathCopy = path;
  propertyPathCopy = propertyPath;
  framePropertyPathCopy = framePropertyPath;
  if (!pathCopy)
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

  if (!propertyPathCopy)
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

  v12 = [pathCopy count];
  if (v12 != [propertyPathCopy count])
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

  if (framePropertyPathCopy)
  {
    v13 = [pathCopy count];
    if (v13 != [framePropertyPathCopy count])
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v18 = "Invalid parameter not satisfying: latitudePropertyPath.count == referenceFramePropertyPath.count";
        goto LABEL_17;
      }

LABEL_18:

      selfCopy = 0;
      goto LABEL_19;
    }
  }

  v20.receiver = self;
  v20.super_class = RTManagedObjectLocationProperties;
  v14 = [(RTManagedObjectLocationProperties *)&v20 init];
  p_isa = &v14->super.isa;
  if (v14)
  {
    objc_storeStrong(&v14->_latitudePropertyPath, path);
    objc_storeStrong(p_isa + 2, propertyPath);
    objc_storeStrong(p_isa + 3, framePropertyPath);
  }

  self = p_isa;
  selfCopy = self;
LABEL_19:

  return selfCopy;
}

@end