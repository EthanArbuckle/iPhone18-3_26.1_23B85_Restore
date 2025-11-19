@interface RTAuthorizedLocationVisitLogMO
+ (id)managedObjectWithAuthorizedLocationVisitLog:(id)a3 inManagedObjectContext:(id)a4;
@end

@implementation RTAuthorizedLocationVisitLogMO

+ (id)managedObjectWithAuthorizedLocationVisitLog:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v16 = 0;
    v12 = "Invalid parameter not satisfying: visitLog";
    v13 = &v16;
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, v12, v13, 2u);
    goto LABEL_7;
  }

  if (v6)
  {
    v8 = [[RTAuthorizedLocationVisitLogMO alloc] initWithContext:v6];
    v9 = [v5 visitIdentifier];
    [(RTAuthorizedLocationVisitLogMO *)v8 setVisitIdentifier:v9];

    v10 = [v5 registrationDate];
    [(RTAuthorizedLocationVisitLogMO *)v8 setRegistrationDate:v10];

    -[RTAuthorizedLocationVisitLogMO setLocationTechnologyAvailability:](v8, "setLocationTechnologyAvailability:", [v5 locationTechnologyAvailability]);
    goto LABEL_8;
  }

  v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v15 = 0;
    v12 = "Invalid parameter not satisfying: managedObjectContext";
    v13 = &v15;
    goto LABEL_12;
  }

LABEL_7:

  v8 = 0;
LABEL_8:

  return v8;
}

@end