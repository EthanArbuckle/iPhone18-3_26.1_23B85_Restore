@interface RTBluePOIMetadataMO
+ (id)managedObjectWithBluePOIMetadata:(id)metadata inManagedObjectContext:(id)context;
+ (id)managedObjectWithBluePOIMetadata:(id)metadata managedObject:(id)object inManagedObjectContext:(id)context;
@end

@implementation RTBluePOIMetadataMO

+ (id)managedObjectWithBluePOIMetadata:(id)metadata inManagedObjectContext:(id)context
{
  metadataCopy = metadata;
  contextCopy = context;
  v7 = contextCopy;
  if (!metadataCopy)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v18 = 0;
    v14 = "Invalid parameter not satisfying: bluePOIMetadata";
    v15 = &v18;
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, v14, v15, 2u);
    goto LABEL_7;
  }

  if (contextCopy)
  {
    v8 = [[RTBluePOIMetadataMO alloc] initWithContext:contextCopy];
    identifier = [metadataCopy identifier];
    [(RTBluePOIMetadataMO *)v8 setIdentifier:identifier];

    categoryDenyList = [metadataCopy categoryDenyList];
    [(RTBluePOIMetadataMO *)v8 setCategoryDenyList:categoryDenyList];

    modelCalibrationParameters = [metadataCopy modelCalibrationParameters];
    [(RTBluePOIMetadataMO *)v8 setModelCalibrationParameters:modelCalibrationParameters];

    geoCacheInfo = [metadataCopy geoCacheInfo];
    [(RTBluePOIMetadataMO *)v8 setGeoCacheInfo:geoCacheInfo];

    goto LABEL_8;
  }

  v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v17 = 0;
    v14 = "Invalid parameter not satisfying: managedObjectContext";
    v15 = &v17;
    goto LABEL_12;
  }

LABEL_7:

  v8 = 0;
LABEL_8:

  return v8;
}

+ (id)managedObjectWithBluePOIMetadata:(id)metadata managedObject:(id)object inManagedObjectContext:(id)context
{
  metadataCopy = metadata;
  objectCopy = object;
  contextCopy = context;
  v10 = contextCopy;
  if (!metadataCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v13 = "Invalid parameter not satisfying: bluePOIMetadata";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, v13, buf, 2u);
    goto LABEL_7;
  }

  if (contextCopy)
  {
    *buf = 0;
    v21 = buf;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__54;
    v24 = __Block_byref_object_dispose__54;
    v25 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __93__RTBluePOIMetadataMO_managedObjectWithBluePOIMetadata_managedObject_inManagedObjectContext___block_invoke;
    v15[3] = &unk_2788C5DA0;
    v19 = buf;
    v16 = objectCopy;
    v17 = v10;
    v18 = metadataCopy;
    [v17 performBlockAndWait:v15];
    v11 = *(v21 + 5);

    _Block_object_dispose(buf, 8);
    goto LABEL_8;
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v13 = "Invalid parameter not satisfying: managedObjectContext";
    goto LABEL_12;
  }

LABEL_7:

  v11 = 0;
LABEL_8:

  return v11;
}

void __93__RTBluePOIMetadataMO_managedObjectWithBluePOIMetadata_managedObject_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  if (!v2)
  {
    v3 = [[RTBluePOIMetadataMO alloc] initWithContext:*(a1 + 40)];
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v3);
  if (!v2)
  {
  }

  v4 = [*(a1 + 48) identifier];
  [*(*(*(a1 + 56) + 8) + 40) setIdentifier:v4];

  v5 = [*(a1 + 48) categoryDenyList];
  [*(*(*(a1 + 56) + 8) + 40) setCategoryDenyList:v5];

  v6 = [*(a1 + 48) modelCalibrationParameters];
  [*(*(*(a1 + 56) + 8) + 40) setModelCalibrationParameters:v6];

  v7 = [*(a1 + 48) geoCacheInfo];
  [*(*(*(a1 + 56) + 8) + 40) setGeoCacheInfo:v7];
}

@end