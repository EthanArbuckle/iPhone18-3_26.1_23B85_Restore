@interface RTBluePOIModelMO
+ (id)managedObjectWithBluePOIModel:(id)a3 inManagedObjectContext:(id)a4;
@end

@implementation RTBluePOIModelMO

+ (id)managedObjectWithBluePOIModel:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v17 = 0;
    v13 = "Invalid parameter not satisfying: bluePOIModel";
    v14 = &v17;
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, v13, v14, 2u);
    goto LABEL_7;
  }

  if (v6)
  {
    v8 = [[RTBluePOIModelMO alloc] initWithContext:v6];
    v9 = [v5 identifier];
    [(RTBluePOIModelMO *)v8 setIdentifier:v9];

    v10 = [v5 featureToHashedApMapping];
    [(RTBluePOIModelMO *)v8 setFeatureToHashedApMapping:v10];

    v11 = [v5 url];
    [(RTBluePOIModelMO *)v8 setUrl:v11];

    goto LABEL_8;
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v16 = 0;
    v13 = "Invalid parameter not satisfying: managedObjectContext";
    v14 = &v16;
    goto LABEL_12;
  }

LABEL_7:

  v8 = 0;
LABEL_8:

  return v8;
}

@end