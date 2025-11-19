@interface RTInferredMapItem(RTCoreDataTransformable)
+ (id)createWithLearnedVisitMO:()RTCoreDataTransformable;
+ (id)createWithManagedObject:()RTCoreDataTransformable;
@end

@implementation RTInferredMapItem(RTCoreDataTransformable)

+ (id)createWithManagedObject:()RTCoreDataTransformable
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [objc_opt_class() createWithLearnedVisitMO:v3];
      goto LABEL_8;
    }

    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412802;
      v8 = v3;
      v9 = 2080;
      v10 = "+[RTInferredMapItem(RTCoreDataTransformable) createWithManagedObject:]";
      v11 = 1024;
      v12 = 34;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "managedObject, %@, is not supported by RTInferredMapItem+CoreDataTransformable (in %s:%d)", &v7, 0x1Cu);
    }
  }

  v4 = 0;
LABEL_8:

  return v4;
}

+ (id)createWithLearnedVisitMO:()RTCoreDataTransformable
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v24 = 0;
    v19 = "Invalid parameter not satisfying: learnedVisitMO";
    v20 = &v24;
LABEL_11:
    _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, v19, v20, 2u);
    goto LABEL_12;
  }

  v5 = [v3 place];

  if (!v5)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v23 = 0;
    v19 = "Invalid parameter not satisfying: learnedVisitMO.place";
    v20 = &v23;
    goto LABEL_11;
  }

  v6 = [v4 place];
  v7 = [v6 mapItem];

  if (v7)
  {
    v8 = MEMORY[0x277D011A0];
    v9 = [v4 place];
    v10 = [v9 mapItem];
    v11 = [v8 createWithManagedObject:v10];

    v12 = objc_alloc(MEMORY[0x277D01128]);
    v13 = [v4 placeConfidence];
    [v13 doubleValue];
    v15 = v14;
    v16 = [v4 placeSource];
    v17 = [v12 initWithMapItem:v11 confidence:objc_msgSend(v16 source:{"unsignedIntegerValue"), v15}];

    goto LABEL_13;
  }

  v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v22 = 0;
    v19 = "Invalid parameter not satisfying: learnedVisitMO.place.mapItem";
    v20 = &v22;
    goto LABEL_11;
  }

LABEL_12:

  v17 = 0;
LABEL_13:

  return v17;
}

@end