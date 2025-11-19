@interface RTSettledStateTransitionMO
+ (id)managedObjectWithSettledStateTransition:(id)a3 inManagedObjectContext:(id)a4;
@end

@implementation RTSettledStateTransitionMO

+ (id)managedObjectWithSettledStateTransition:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v10 = "Invalid parameter not satisfying: settledStateTransition";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, v10, buf, 2u);
    goto LABEL_7;
  }

  if (v6)
  {
    *buf = 0;
    v17 = buf;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__183;
    v20 = __Block_byref_object_dispose__183;
    v21 = 0;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __93__RTSettledStateTransitionMO_managedObjectWithSettledStateTransition_inManagedObjectContext___block_invoke;
    v12[3] = &unk_2788C8DC8;
    v15 = buf;
    v13 = v6;
    v14 = v5;
    [v13 performBlockAndWait:v12];
    v8 = *(v17 + 5);

    _Block_object_dispose(buf, 8);
    goto LABEL_8;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v10 = "Invalid parameter not satisfying: managedObjectContext";
    goto LABEL_12;
  }

LABEL_7:

  v8 = 0;
LABEL_8:

  return v8;
}

void __93__RTSettledStateTransitionMO_managedObjectWithSettledStateTransition_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v2 = [[RTSettledStateTransitionMO alloc] initWithContext:*(a1 + 32)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 40) date];
  [*(*(*(a1 + 48) + 8) + 40) setDate:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "transitionFromType")}];
  [*(*(*(a1 + 48) + 8) + 40) setTransitionFromType:v6];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "transitionToType")}];
  [*(*(*(a1 + 48) + 8) + 40) setTransitionToType:v7];
}

@end