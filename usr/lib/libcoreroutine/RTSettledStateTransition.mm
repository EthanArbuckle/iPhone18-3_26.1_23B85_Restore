@interface RTSettledStateTransition
+ (id)createWithManagedObject:(id)a3;
+ (id)createWithSettledStateTransitionMO:(id)a3;
- (RTSettledStateTransition)initWithDate:(id)a3 transitionFromType:(int64_t)a4 transitionToType:(int64_t)a5;
- (id)managedObjectWithContext:(id)a3;
@end

@implementation RTSettledStateTransition

+ (id)createWithManagedObject:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [objc_opt_class() createWithSettledStateTransitionMO:v3];
      goto LABEL_8;
    }

    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412802;
      v8 = v3;
      v9 = 2080;
      v10 = "+[RTSettledStateTransition(RTCoreDataTransformable) createWithManagedObject:]";
      v11 = 1024;
      v12 = 31;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "managedObject, %@, is not supported by RTSettledStateTransition+CoreDataTransformable (in %s:%d)", &v7, 0x1Cu);
    }
  }

  v4 = 0;
LABEL_8:

  return v4;
}

+ (id)createWithSettledStateTransitionMO:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    *buf = 0;
    v13 = buf;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__45;
    v16 = __Block_byref_object_dispose__45;
    v17 = 0;
    v5 = [v3 managedObjectContext];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __88__RTSettledStateTransition_RTCoreDataTransformable__createWithSettledStateTransitionMO___block_invoke;
    v9[3] = &unk_2788C7FB0;
    v11 = buf;
    v10 = v4;
    [v5 performBlockAndWait:v9];

    v6 = *(v13 + 5);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: settledStateTransitionMO", buf, 2u);
    }

    v6 = 0;
  }

  return v6;
}

void __88__RTSettledStateTransition_RTCoreDataTransformable__createWithSettledStateTransitionMO___block_invoke(uint64_t a1)
{
  v2 = [RTSettledStateTransition alloc];
  v9 = [*(a1 + 32) date];
  v3 = [*(a1 + 32) transitionFromType];
  v4 = [v3 unsignedIntegerValue];
  v5 = [*(a1 + 32) transitionToType];
  v6 = -[RTSettledStateTransition initWithDate:transitionFromType:transitionToType:](v2, "initWithDate:transitionFromType:transitionToType:", v9, v4, [v5 unsignedIntegerValue]);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)managedObjectWithContext:(id)a3
{
  if (a3)
  {
    v3 = [RTSettledStateTransitionMO managedObjectWithSettledStateTransition:self inManagedObjectContext:a3];
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

- (RTSettledStateTransition)initWithDate:(id)a3 transitionFromType:(int64_t)a4 transitionToType:(int64_t)a5
{
  v8 = a3;
  if (!v8)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v10 = "Invalid parameter not satisfying: date";
      goto LABEL_13;
    }

LABEL_14:

    v11 = 0;
    goto LABEL_15;
  }

  if (a4 >= 3)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v10 = "Invalid parameter not satisfying: RTSettledStateIsValid(transitionFromType)";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (a5 >= 3)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v10 = "Invalid parameter not satisfying: RTSettledStateIsValid(transitionToType)";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (a4 == a5)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v10 = "Invalid parameter not satisfying: transitionFromType != transitionToType";
LABEL_13:
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, v10, buf, 2u);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v16.receiver = self;
  v16.super_class = RTSettledStateTransition;
  v13 = [(RTSettledStateTransition *)&v16 init];
  if (v13)
  {
    v14 = [v8 copy];
    date = v13->_date;
    v13->_date = v14;

    v13->_transitionFromType = a4;
    v13->_transitionToType = a5;
  }

  self = v13;
  v11 = self;
LABEL_15:

  return v11;
}

@end