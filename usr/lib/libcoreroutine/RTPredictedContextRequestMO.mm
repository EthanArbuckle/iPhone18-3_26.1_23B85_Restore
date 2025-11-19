@interface RTPredictedContextRequestMO
+ (id)managedObjectWithPredictedContextRequest:(id)a3 managedObject:(id)a4 inManagedObjectContext:(id)a5;
@end

@implementation RTPredictedContextRequestMO

+ (id)managedObjectWithPredictedContextRequest:(id)a3 managedObject:(id)a4 inManagedObjectContext:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (!v7)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
LABEL_16:
      v39 = 0;
      goto LABEL_17;
    }

    *buf = 0;
    v34 = "Invalid parameter not satisfying: request";
LABEL_21:
    _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, v34, buf, 2u);
    goto LABEL_16;
  }

  if (!v9)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v34 = "Invalid parameter not satisfying: managedObjectContext";
    goto LABEL_21;
  }

  v36 = v8;
  v41 = v9;
  v11 = [[RTPredictedContextRequestMO alloc] initWithContext:v9];
  -[RTPredictedContextRequestMO setClientCount:](v11, "setClientCount:", [v7 clientCount]);
  v12 = [v7 identifier];
  [(RTPredictedContextRequestMO *)v11 setIdentifier:v12];

  [v7 memoryFootprintStart];
  *&v13 = v13;
  [(RTPredictedContextRequestMO *)v11 setMemoryFootprintStart:v13];
  [v7 memoryFootprintEnd];
  *&v14 = v14;
  [(RTPredictedContextRequestMO *)v11 setMemoryFootprintEnd:v14];
  -[RTPredictedContextRequestMO setInferenceTriggerReason:](v11, "setInferenceTriggerReason:", [v7 inferenceTriggerReason]);
  v15 = [v7 requestStartDate];
  [(RTPredictedContextRequestMO *)v11 setRequestStartDate:v15];

  v16 = [v7 requestEndDate];
  v39 = v11;
  [(RTPredictedContextRequestMO *)v11 setRequestEndDate:v16];

  v37 = v7;
  v17 = [v7 predictedContextResult];
  v18 = [v17 nextStepPredictedContextsWithFilterMask:7];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v18;
  v19 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v19)
  {
    v20 = v19;
    v40 = *v44;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v44 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v43 + 1) + 8 * i);
        v23 = +[RTPredictedContextMO fetchRequest];
        v24 = MEMORY[0x277CCAC30];
        v25 = [v22 dateInterval];
        v26 = [v25 startDate];
        v27 = [v26 date];
        v28 = [v24 predicateWithFormat:@"%K == %@", @"predictionStartDate", v27];
        [v23 setPredicate:v28];

        v42 = 0;
        v29 = [v41 executeFetchRequest:v23 error:&v42];
        v30 = v42;
        v31 = [v29 firstObject];
        v32 = [RTPredictedContextMO managedObjectWithPredictedContext:v22 managedObject:v31 inManagedObjectContext:v41];

        if (v32)
        {
          [(RTPredictedContextRequestMO *)v39 addPredictedContextsObject:v32];
        }
      }

      v20 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v20);
  }

  v33 = obj;

  v8 = v36;
  v7 = v37;
  v10 = v41;
LABEL_17:

  return v39;
}

@end