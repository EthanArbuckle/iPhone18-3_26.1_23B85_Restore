@interface RTPointOfInterestMO
+ (id)managedObjectWithPointOfInterest:(id)interest inManagedObjectContext:(id)context;
@end

@implementation RTPointOfInterestMO

+ (id)managedObjectWithPointOfInterest:(id)interest inManagedObjectContext:(id)context
{
  interestCopy = interest;
  contextCopy = context;
  v7 = contextCopy;
  if (!interestCopy)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v23 = 0;
    v19 = "Invalid parameter not satisfying: pointOfInterest";
    v20 = &v23;
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, v19, v20, 2u);
    goto LABEL_7;
  }

  if (contextCopy)
  {
    v8 = [[RTPointOfInterestMO alloc] initWithContext:contextCopy];
    identifier = [interestCopy identifier];
    [(RTPointOfInterestMO *)v8 setIdentifier:identifier];

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(interestCopy, "muid")}];
    [(RTPointOfInterestMO *)v8 setMuid:v10];

    -[RTPointOfInterestMO setApplePaySupport:](v8, "setApplePaySupport:", [interestCopy applePaySupport]);
    -[RTPointOfInterestMO setFiltered:](v8, "setFiltered:", [interestCopy filtered]);
    -[RTPointOfInterestMO setFullyCoversTile:](v8, "setFullyCoversTile:", [interestCopy fullyCoversTile]);
    v11 = MEMORY[0x277CCABB0];
    location = [interestCopy location];
    [location latitude];
    v13 = [v11 numberWithDouble:?];
    [(RTPointOfInterestMO *)v8 setLocationLatitude:v13];

    v14 = MEMORY[0x277CCABB0];
    location2 = [interestCopy location];
    [location2 longitude];
    v16 = [v14 numberWithDouble:?];
    [(RTPointOfInterestMO *)v8 setLocationLongitude:v16];

    polygon = [interestCopy polygon];
    [(RTPointOfInterestMO *)v8 setPolygon:polygon];

    goto LABEL_8;
  }

  v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v22 = 0;
    v19 = "Invalid parameter not satisfying: managedObjectContext";
    v20 = &v22;
    goto LABEL_12;
  }

LABEL_7:

  v8 = 0;
LABEL_8:

  return v8;
}

@end