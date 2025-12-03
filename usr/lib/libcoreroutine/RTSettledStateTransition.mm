@interface RTSettledStateTransition
+ (id)createWithManagedObject:(id)object;
+ (id)createWithSettledStateTransitionMO:(id)o;
- (RTSettledStateTransition)initWithDate:(id)date transitionFromType:(int64_t)type transitionToType:(int64_t)toType;
- (id)managedObjectWithContext:(id)context;
@end

@implementation RTSettledStateTransition

+ (id)createWithManagedObject:(id)object
{
  v13 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if (objectCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [objc_opt_class() createWithSettledStateTransitionMO:objectCopy];
      goto LABEL_8;
    }

    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412802;
      v8 = objectCopy;
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

+ (id)createWithSettledStateTransitionMO:(id)o
{
  oCopy = o;
  v4 = oCopy;
  if (oCopy)
  {
    *buf = 0;
    v13 = buf;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__45;
    v16 = __Block_byref_object_dispose__45;
    v17 = 0;
    managedObjectContext = [oCopy managedObjectContext];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __88__RTSettledStateTransition_RTCoreDataTransformable__createWithSettledStateTransitionMO___block_invoke;
    v9[3] = &unk_2788C7FB0;
    v11 = buf;
    v10 = v4;
    [managedObjectContext performBlockAndWait:v9];

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

- (id)managedObjectWithContext:(id)context
{
  if (context)
  {
    v3 = [RTSettledStateTransitionMO managedObjectWithSettledStateTransition:self inManagedObjectContext:context];
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

- (RTSettledStateTransition)initWithDate:(id)date transitionFromType:(int64_t)type transitionToType:(int64_t)toType
{
  dateCopy = date;
  if (!dateCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v10 = "Invalid parameter not satisfying: date";
      goto LABEL_13;
    }

LABEL_14:

    selfCopy = 0;
    goto LABEL_15;
  }

  if (type >= 3)
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

  if (toType >= 3)
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

  if (type == toType)
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
    v14 = [dateCopy copy];
    date = v13->_date;
    v13->_date = v14;

    v13->_transitionFromType = type;
    v13->_transitionToType = toType;
  }

  self = v13;
  selfCopy = self;
LABEL_15:

  return selfCopy;
}

@end