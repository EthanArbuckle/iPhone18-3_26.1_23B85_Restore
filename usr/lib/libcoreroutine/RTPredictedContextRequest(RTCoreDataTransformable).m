@interface RTPredictedContextRequest(RTCoreDataTransformable)
+ (id)createWithManagedObject:()RTCoreDataTransformable;
+ (id)createWithPredictedContextRequestMO:()RTCoreDataTransformable;
- (id)managedObjectWithContext:()RTCoreDataTransformable;
@end

@implementation RTPredictedContextRequest(RTCoreDataTransformable)

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
      v6 = [objc_opt_class() createWithPredictedContextRequestMO:v5];

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
      v15 = "+[RTPredictedContextRequest(RTCoreDataTransformable) createWithManagedObject:]";
      v16 = 1024;
      v17 = 41;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, managedObject, %@, is not supported by RTPredictedContext+CoreDataTransformable (in %s:%d)", &v10, 0x26u);
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)createWithPredictedContextRequestMO:()RTCoreDataTransformable
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = [v3 predictedContexts];
    v6 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [MEMORY[0x277D01208] createWithManagedObject:*(*(&v24 + 1) + 8 * i)];
          if (v10)
          {
            [0 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v7);
    }

    v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"dateInterval.startDate.date" ascending:1];
    v29 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
    [0 sortUsingDescriptors:v12];

    v13 = [objc_alloc(MEMORY[0x277D01248]) initWithPredictedContexts:0 analytics:0];
    v14 = objc_alloc(MEMORY[0x277D01240]);
    v15 = [v4 identifier];
    v16 = [v4 requestStartDate];
    v17 = [v4 requestEndDate];
    v18 = [v4 inferenceTriggerReason];
    [v4 memoryFootprintStart];
    v20 = v19;
    [v4 memoryFootprintEnd];
    v22 = [v14 initWithIdentifier:v15 predictedContextResult:v13 requestStartDate:v16 requestEndDate:v17 inferenceTriggerReason:v18 memoryFootprintStart:objc_msgSend(v4 memoryFootprintEnd:"clientCount") clientCount:{v20, v21}];
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: predictedContextRequestMO", buf, 2u);
    }

    v22 = 0;
  }

  return v22;
}

- (id)managedObjectWithContext:()RTCoreDataTransformable
{
  if (a3)
  {
    v3 = [RTPredictedContextRequestMO managedObjectWithPredictedContextRequest:a1 inManagedObjectContext:a3];
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