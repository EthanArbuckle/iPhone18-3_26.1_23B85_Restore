@interface RTBluePOIModelMO
+ (id)managedObjectWithBluePOIModel:(id)model inManagedObjectContext:(id)context;
@end

@implementation RTBluePOIModelMO

+ (id)managedObjectWithBluePOIModel:(id)model inManagedObjectContext:(id)context
{
  modelCopy = model;
  contextCopy = context;
  v7 = contextCopy;
  if (!modelCopy)
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

  if (contextCopy)
  {
    v8 = [[RTBluePOIModelMO alloc] initWithContext:contextCopy];
    identifier = [modelCopy identifier];
    [(RTBluePOIModelMO *)v8 setIdentifier:identifier];

    featureToHashedApMapping = [modelCopy featureToHashedApMapping];
    [(RTBluePOIModelMO *)v8 setFeatureToHashedApMapping:featureToHashedApMapping];

    v11 = [modelCopy url];
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