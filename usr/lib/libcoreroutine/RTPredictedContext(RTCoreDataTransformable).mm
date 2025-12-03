@interface RTPredictedContext(RTCoreDataTransformable)
+ (id)createWithManagedObject:()RTCoreDataTransformable;
+ (id)createWithPredictedContextMO:()RTCoreDataTransformable;
- (id)managedObjectWithContext:()RTCoreDataTransformable;
@end

@implementation RTPredictedContext(RTCoreDataTransformable)

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
      v6 = [objc_opt_class() createWithPredictedContextMO:v5];

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
      v15 = "+[RTPredictedContext(RTCoreDataTransformable) createWithManagedObject:]";
      v16 = 1024;
      v17 = 52;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, managedObject, %@, is not supported by RTPredictedContext+CoreDataTransformable (in %s:%d)", &v10, 0x26u);
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)createWithPredictedContextMO:()RTCoreDataTransformable
{
  v44[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D01220]);
    predictionStartDate = [v3 predictionStartDate];
    [v3 predictionStartDateConfidenceInterval];
    v6 = [v4 initWithDate:predictionStartDate confidenceInterval:?];

    v7 = objc_alloc(MEMORY[0x277D01220]);
    predictionEndDate = [v3 predictionEndDate];
    [v3 predictionEndDateConfidenceInterval];
    v9 = [v7 initWithDate:predictionEndDate confidenceInterval:?];

    v10 = [objc_alloc(MEMORY[0x277D01228]) initWithStartDate:v6 endDate:v9];
    v11 = objc_opt_new();
    if (([v3 predictionSourceMask] & 2) != 0)
    {
      v12 = objc_alloc_init(MEMORY[0x277D012A8]);
      [v11 addObject:v12];
    }

    if (([v3 predictionSourceMask] & 4) != 0)
    {
      v13 = objc_alloc_init(MEMORY[0x277D012E0]);
      [v11 addObject:v13];
    }

    if (([v3 predictionSourceMask] & 8) != 0)
    {
      v14 = objc_alloc_init(MEMORY[0x277D012E8]);
      [v11 addObject:v14];
    }

    if (([v3 predictionSourceMask] & 0x10) != 0)
    {
      v15 = [objc_alloc(MEMORY[0x277D012B8]) initWithEventIdentifier:&stru_284528390 startDate:0 endDate:0 title:0 location:0 allDay:0 sharingStatus:0];
      [v11 addObject:v15];
    }

    if (([v3 predictionSourceMask] & 0x20) != 0)
    {
      v16 = [objc_alloc(MEMORY[0x277D012C8]) initWithIdentifier:&stru_284528390 primary:0];
      [v11 addObject:v16];
    }

    if (([v3 predictionSourceMask] & 0x40) != 0)
    {
      v17 = objc_alloc(MEMORY[0x277D012F0]);
      date = [MEMORY[0x277CBEAA8] date];
      v19 = [v17 initWithIdentifier:&stru_284528390 parkDate:date];
      [v11 addObject:v19];
    }

    if (([v3 predictionSourceMask] & 0x80) != 0)
    {
      v20 = objc_alloc(MEMORY[0x277D012F8]);
      date2 = [MEMORY[0x277CBEAA8] date];
      v22 = [v20 initWithDate:date2];
      [v11 addObject:v22];
    }

    v23 = objc_alloc(MEMORY[0x277D01208]);
    [v3 probability];
    v24 = [v23 initWithPredictedContextDateInterval:v10 predictionSources:v11 probability:?];
    if ([v3 contextType] == 1)
    {
      v25 = objc_alloc(MEMORY[0x277D01160]);
      [v3 locationLatitude];
      v27 = v26;
      [v3 locationLongitude];
      v29 = v28;
      date3 = [v6 date];
      sourceBundleIdentifier = [v25 initWithLatitude:date3 longitude:v27 horizontalUncertainty:v29 date:1.0];

      v32 = objc_alloc(MEMORY[0x277D01170]);
      loiIdentifier = [v3 loiIdentifier];
      v34 = [v32 initWithLocation:sourceBundleIdentifier confidence:loiIdentifier identifier:objc_msgSend(v3 type:"locationOfInterestType") typeSource:0 visits:0 customLabel:0 mapItem:{1.0, 0}];

      v35 = objc_alloc(MEMORY[0x277D01230]);
      [v3 probability];
      v36 = [v35 initWithLocationOfInterest:v34 dateInterval:v10 predictionSources:v11 probability:?];
    }

    else if ([v3 contextType] == 2)
    {
      sourceBundleIdentifier = [objc_alloc(MEMORY[0x277D01258]) initWithTransportMode:objc_msgSend(v3 probability:{"transportMode"), 1.0}];
      v37 = objc_alloc(MEMORY[0x277D01250]);
      v44[0] = sourceBundleIdentifier;
      v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
      [v3 probability];
      v36 = [v37 initWithPredictedContextTransports:v38 predictedContextDateInterval:v10 predictionSources:v11 probability:?];
    }

    else
    {
      if ([v3 contextType] != 4)
      {
        v36 = v24;
        goto LABEL_26;
      }

      v39 = objc_alloc(MEMORY[0x277D01260]);
      [v3 probability];
      v41 = v40;
      sourceBundleIdentifier = [v3 sourceBundleIdentifier];
      v36 = [v39 initWithDateInterval:v10 predictionSources:v11 probability:sourceBundleIdentifier sourceBundleIdentifier:objc_msgSend(v3 workoutActivityType:"workoutActivityType") workoutLocationType:{objc_msgSend(v3, "workoutLocationType"), v41}];
    }

LABEL_26:
    goto LABEL_27;
  }

  v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: predictedContextMO", buf, 2u);
  }

  v36 = 0;
LABEL_27:

  return v36;
}

- (id)managedObjectWithContext:()RTCoreDataTransformable
{
  if (a3)
  {
    v3 = [RTPredictedContextMO managedObjectWithPredictedContext:self inManagedObjectContext:a3];
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