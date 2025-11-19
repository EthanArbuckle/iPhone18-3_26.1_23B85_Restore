@interface RTUserCuration(RTCoreDataTransformable)
+ (id)createWithManagedObject:()RTCoreDataTransformable;
+ (id)createWithUserCurationMO:()RTCoreDataTransformable;
- (id)managedObjectWithContext:()RTCoreDataTransformable;
- (void)updateManagedObject:()RTCoreDataTransformable;
@end

@implementation RTUserCuration(RTCoreDataTransformable)

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
      v6 = [objc_opt_class() createWithUserCurationMO:v5];

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
      v15 = "+[RTUserCuration(RTCoreDataTransformable) createWithManagedObject:]";
      v16 = 1024;
      v17 = 35;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, managedObject, %@, is not supported by RTUserCuration+CoreDataTransformable (in %s:%d)", &v10, 0x26u);
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)createWithUserCurationMO:()RTCoreDataTransformable
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 originalLabel];

    if (v5)
    {
      v6 = MEMORY[0x277D011A0];
      v7 = [v4 originalLabel];
      v5 = [v6 createWithManagedObject:v7];
    }

    v8 = [v4 curatedLabel];

    if (v8)
    {
      v9 = MEMORY[0x277D011A0];
      v10 = [v4 curatedLabel];
      v8 = [v9 createWithManagedObject:v10];
    }

    v11 = objc_alloc(MEMORY[0x277D01410]);
    v12 = [v4 identifier];
    v13 = [v4 submissionDate];
    v14 = [v4 expirationDate];
    v15 = [v4 visitEntryDate];
    v16 = [v4 visitExitDate];
    v17 = [v4 visitIdentifier];
    v18 = [v11 initWithIdentifier:v12 submissionDate:v13 expirationDate:v14 entryDate:v15 exitDate:v16 visitIdentifier:v17 originalLabel:v5 curatedLabel:v8];
  }

  else
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: userCurationMO", buf, 2u);
    }

    v18 = 0;
  }

  return v18;
}

- (id)managedObjectWithContext:()RTCoreDataTransformable
{
  if (a3)
  {
    v3 = [RTUserCurationMO managedObjectWithUserCuration:a1 inManagedObjectContext:a3];
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

- (void)updateManagedObject:()RTCoreDataTransformable
{
  v6 = a3;
  v4 = [v6 managedObjectContext];
  v5 = [RTUserCurationMO managedObjectWithUserCuration:a1 managedObject:v6 inManagedObjectContext:v4];
}

@end