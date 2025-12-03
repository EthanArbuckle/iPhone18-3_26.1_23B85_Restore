@interface RTElevation(RTCoreDataTransformable)
+ (id)createWithElevationMO:()RTCoreDataTransformable;
+ (id)createWithManagedObject:()RTCoreDataTransformable;
- (id)managedObjectWithContext:()RTCoreDataTransformable;
@end

@implementation RTElevation(RTCoreDataTransformable)

+ (id)createWithManagedObject:()RTCoreDataTransformable
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [objc_opt_class() createWithElevationMO:v5];

      goto LABEL_8;
    }

    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = 138413058;
      v11 = v9;
      v12 = 2112;
      v14 = 2080;
      v13 = v4;
      v15 = "+[RTElevation(RTCoreDataTransformable) createWithManagedObject:]";
      v16 = 1024;
      v17 = 36;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, managedObject, %@, is not supported by RTElevation+CoreDataTransformable (in %s:%d)", &v10, 0x26u);
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)createWithElevationMO:()RTCoreDataTransformable
{
  v3 = a3;
  startDate = [v3 startDate];

  if (startDate)
  {
    startDate2 = [v3 startDate];
  }

  else
  {
    v6 = MEMORY[0x277CBEAA8];
    startDate3 = [v3 startDate];
    startDate2 = [v6 dateWithTimeInterval:startDate3 sinceDate:-2.56];
  }

  v8 = objc_alloc(MEMORY[0x277CCA970]);
  endDate = [v3 endDate];
  v10 = [v8 initWithStartDate:startDate2 endDate:endDate];

  startDate4 = [v3 startDate];

  v12 = objc_alloc(MEMORY[0x277D010E0]);
  [v3 elevation];
  v14 = v13;
  if (startDate4)
  {
    [v3 elevationUncertainty];
    v16 = [v12 initWithElevation:v10 dateInterval:objc_msgSend(v3 elevationUncertainty:"estimationStatus") estimationStatus:{v14, v15}];
  }

  else
  {
    v16 = [v12 initWithElevation:v10 dateInterval:v13];
  }

  v17 = v16;

  return v17;
}

- (id)managedObjectWithContext:()RTCoreDataTransformable
{
  if (a3)
  {
    v3 = [RTElevationMO managedObjectWithElevation:self inManagedObjectContext:a3];
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", v6, 2u);
    }

    v3 = 0;
  }

  return v3;
}

@end