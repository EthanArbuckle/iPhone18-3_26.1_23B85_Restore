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
    originalLabel = [v3 originalLabel];

    if (originalLabel)
    {
      v6 = MEMORY[0x277D011A0];
      originalLabel2 = [v4 originalLabel];
      originalLabel = [v6 createWithManagedObject:originalLabel2];
    }

    curatedLabel = [v4 curatedLabel];

    if (curatedLabel)
    {
      v9 = MEMORY[0x277D011A0];
      curatedLabel2 = [v4 curatedLabel];
      curatedLabel = [v9 createWithManagedObject:curatedLabel2];
    }

    v11 = objc_alloc(MEMORY[0x277D01410]);
    identifier = [v4 identifier];
    submissionDate = [v4 submissionDate];
    expirationDate = [v4 expirationDate];
    visitEntryDate = [v4 visitEntryDate];
    visitExitDate = [v4 visitExitDate];
    visitIdentifier = [v4 visitIdentifier];
    v18 = [v11 initWithIdentifier:identifier submissionDate:submissionDate expirationDate:expirationDate entryDate:visitEntryDate exitDate:visitExitDate visitIdentifier:visitIdentifier originalLabel:originalLabel curatedLabel:curatedLabel];
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
    v3 = [RTUserCurationMO managedObjectWithUserCuration:self inManagedObjectContext:a3];
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
  managedObjectContext = [v6 managedObjectContext];
  v5 = [RTUserCurationMO managedObjectWithUserCuration:self managedObject:v6 inManagedObjectContext:managedObjectContext];
}

@end