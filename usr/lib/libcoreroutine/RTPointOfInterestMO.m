@interface RTPointOfInterestMO
+ (id)managedObjectWithPointOfInterest:(id)a3 inManagedObjectContext:(id)a4;
@end

@implementation RTPointOfInterestMO

+ (id)managedObjectWithPointOfInterest:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
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

  if (v6)
  {
    v8 = [[RTPointOfInterestMO alloc] initWithContext:v6];
    v9 = [v5 identifier];
    [(RTPointOfInterestMO *)v8 setIdentifier:v9];

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "muid")}];
    [(RTPointOfInterestMO *)v8 setMuid:v10];

    -[RTPointOfInterestMO setApplePaySupport:](v8, "setApplePaySupport:", [v5 applePaySupport]);
    -[RTPointOfInterestMO setFiltered:](v8, "setFiltered:", [v5 filtered]);
    -[RTPointOfInterestMO setFullyCoversTile:](v8, "setFullyCoversTile:", [v5 fullyCoversTile]);
    v11 = MEMORY[0x277CCABB0];
    v12 = [v5 location];
    [v12 latitude];
    v13 = [v11 numberWithDouble:?];
    [(RTPointOfInterestMO *)v8 setLocationLatitude:v13];

    v14 = MEMORY[0x277CCABB0];
    v15 = [v5 location];
    [v15 longitude];
    v16 = [v14 numberWithDouble:?];
    [(RTPointOfInterestMO *)v8 setLocationLongitude:v16];

    v17 = [v5 polygon];
    [(RTPointOfInterestMO *)v8 setPolygon:v17];

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