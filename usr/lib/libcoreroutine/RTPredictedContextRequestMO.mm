@interface RTPredictedContextRequestMO
+ (id)managedObjectWithPredictedContextRequest:(id)request managedObject:(id)object inManagedObjectContext:(id)context;
@end

@implementation RTPredictedContextRequestMO

+ (id)managedObjectWithPredictedContextRequest:(id)request managedObject:(id)object inManagedObjectContext:(id)context
{
  v49 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  objectCopy = object;
  contextCopy = context;
  v10 = contextCopy;
  if (!requestCopy)
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

  if (!contextCopy)
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

  v36 = objectCopy;
  v41 = contextCopy;
  v11 = [[RTPredictedContextRequestMO alloc] initWithContext:contextCopy];
  -[RTPredictedContextRequestMO setClientCount:](v11, "setClientCount:", [requestCopy clientCount]);
  identifier = [requestCopy identifier];
  [(RTPredictedContextRequestMO *)v11 setIdentifier:identifier];

  [requestCopy memoryFootprintStart];
  *&v13 = v13;
  [(RTPredictedContextRequestMO *)v11 setMemoryFootprintStart:v13];
  [requestCopy memoryFootprintEnd];
  *&v14 = v14;
  [(RTPredictedContextRequestMO *)v11 setMemoryFootprintEnd:v14];
  -[RTPredictedContextRequestMO setInferenceTriggerReason:](v11, "setInferenceTriggerReason:", [requestCopy inferenceTriggerReason]);
  requestStartDate = [requestCopy requestStartDate];
  [(RTPredictedContextRequestMO *)v11 setRequestStartDate:requestStartDate];

  requestEndDate = [requestCopy requestEndDate];
  v39 = v11;
  [(RTPredictedContextRequestMO *)v11 setRequestEndDate:requestEndDate];

  v37 = requestCopy;
  predictedContextResult = [requestCopy predictedContextResult];
  v18 = [predictedContextResult nextStepPredictedContextsWithFilterMask:7];

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
        dateInterval = [v22 dateInterval];
        startDate = [dateInterval startDate];
        date = [startDate date];
        v28 = [v24 predicateWithFormat:@"%K == %@", @"predictionStartDate", date];
        [v23 setPredicate:v28];

        v42 = 0;
        v29 = [v41 executeFetchRequest:v23 error:&v42];
        v30 = v42;
        firstObject = [v29 firstObject];
        v32 = [RTPredictedContextMO managedObjectWithPredictedContext:v22 managedObject:firstObject inManagedObjectContext:v41];

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

  objectCopy = v36;
  requestCopy = v37;
  v10 = v41;
LABEL_17:

  return v39;
}

@end