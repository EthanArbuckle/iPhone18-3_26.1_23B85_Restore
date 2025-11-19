@interface RTWorkoutDistance
+ (id)createWithManagedObject:(id)a3;
+ (id)createWithWorkoutDistanceMO:(id)a3;
- (NSString)description;
- (RTWorkoutDistance)initWithObjectID:(id)a3 firstWorkout:(id)a4 secondWorkout:(id)a5 distanceMetric:(int64_t)a6 workoutActivityType:(int64_t)a7 areBothWorkoutsDecimated:(BOOL)a8 distance:(double)a9 isVisited:(BOOL)a10 date:(id)a11;
- (id)managedObjectWithContext:(id)a3;
@end

@implementation RTWorkoutDistance

- (RTWorkoutDistance)initWithObjectID:(id)a3 firstWorkout:(id)a4 secondWorkout:(id)a5 distanceMetric:(int64_t)a6 workoutActivityType:(int64_t)a7 areBothWorkoutsDecimated:(BOOL)a8 distance:(double)a9 isVisited:(BOOL)a10 date:(id)a11
{
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a11;
  v23 = v22;
  if (!v20)
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    *buf = 0;
    v31 = "Invalid parameter not satisfying: firstWorkout";
LABEL_25:
    _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, v31, buf, 2u);
    goto LABEL_26;
  }

  if (!v21)
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    *buf = 0;
    v31 = "Invalid parameter not satisfying: secondWorkout";
    goto LABEL_25;
  }

  if (!a7)
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    *buf = 0;
    v31 = "Invalid parameter not satisfying: workoutActivityType";
    goto LABEL_25;
  }

  if (!a6)
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    *buf = 0;
    v31 = "Invalid parameter not satisfying: distanceMetric";
    goto LABEL_25;
  }

  if (!v22)
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v31 = "Invalid parameter not satisfying: date";
      goto LABEL_25;
    }

LABEL_26:

    v29 = 0;
    goto LABEL_27;
  }

  v33.receiver = self;
  v33.super_class = RTWorkoutDistance;
  v24 = [(RTWorkoutDistance *)&v33 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_objectID, a3);
    v26 = [v20 compare:v21];
    if (v26 == -1)
    {
      v27 = v20;
    }

    else
    {
      v27 = v21;
    }

    if (v26 == -1)
    {
      v28 = v21;
    }

    else
    {
      v28 = v20;
    }

    objc_storeStrong(&v25->_firstWorkout, v27);
    objc_storeStrong(&v25->_secondWorkout, v28);
    v25->_distanceMetric = a6;
    v25->_workoutActivityType = a7;
    v25->_areBothWorkoutsDecimated = a8;
    v25->_distance = a9;
    v25->_isVisited = a10;
    objc_storeStrong(&v25->_date, a11);
  }

  self = v25;
  v29 = self;
LABEL_27:

  return v29;
}

- (NSString)description
{
  v17 = MEMORY[0x277CCACA8];
  v3 = [(RTWorkoutDistance *)self objectID];
  if (v3)
  {
    v4 = [(RTWorkoutDistance *)self objectID];
  }

  else
  {
    v4 = @"nil";
  }

  v5 = [(RTWorkoutDistance *)self firstWorkout];
  v6 = [(RTWorkoutDistance *)self secondWorkout];
  v7 = [RTDistanceCalculator distanceMetricToString:[(RTWorkoutDistance *)self distanceMetric]];
  v8 = [objc_opt_class() stringFromRTHealthKitWorkoutActivityType:{-[RTWorkoutDistance workoutActivityType](self, "workoutActivityType")}];
  v9 = @"YES";
  if ([(RTWorkoutDistance *)self areBothWorkoutsDecimated])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [(RTWorkoutDistance *)self distance];
  v12 = v11;
  if (![(RTWorkoutDistance *)self isVisited])
  {
    v9 = @"NO";
  }

  v13 = [(RTWorkoutDistance *)self date];
  v14 = [v13 stringFromDate];
  v15 = [v17 stringWithFormat:@"objectId, %@, firstWorkout, %@, secondWorkout, %@, distanceMetric, %@, workoutActivityType, %@, areBothWorkoutsDecimated, %@, distance, %.2f, isVisited, %@, date, %@", v4, v5, v6, v7, v8, v10, v12, v9, v14];

  if (v3)
  {
  }

  return v15;
}

+ (id)createWithManagedObject:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [objc_opt_class() createWithWorkoutDistanceMO:v3];
      goto LABEL_8;
    }

    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412802;
      v8 = v3;
      v9 = 2080;
      v10 = "+[RTWorkoutDistance(RTCoreDataTransformable) createWithManagedObject:]";
      v11 = 1024;
      v12 = 30;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "managedObject, %@, is not supported by RTHint+CoreDataTransformable (in %s:%d)", &v7, 0x1Cu);
    }
  }

  v4 = 0;
LABEL_8:

  return v4;
}

+ (id)createWithWorkoutDistanceMO:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    *buf = 0;
    v13 = buf;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__182;
    v16 = __Block_byref_object_dispose__182;
    v17 = 0;
    v5 = [v3 managedObjectContext];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __74__RTWorkoutDistance_RTCoreDataTransformable__createWithWorkoutDistanceMO___block_invoke;
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
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutDistanceMO", buf, 2u);
    }

    v6 = 0;
  }

  return v6;
}

void __74__RTWorkoutDistance_RTCoreDataTransformable__createWithWorkoutDistanceMO___block_invoke(uint64_t a1)
{
  v2 = [RTWorkoutDistance alloc];
  v16 = [*(a1 + 32) objectID];
  v3 = [*(a1 + 32) firstWorkout];
  v4 = [*(a1 + 32) secondWorkout];
  v5 = [*(a1 + 32) distanceMetric];
  v6 = [*(a1 + 32) workoutActivityType];
  v7 = [*(a1 + 32) areBothWorkoutsDecimated];
  [*(a1 + 32) distance];
  v9 = v8;
  v10 = [*(a1 + 32) isVisited];
  v11 = [*(a1 + 32) date];
  LOBYTE(v15) = v10;
  v12 = [(RTWorkoutDistance *)v2 initWithObjectID:v16 firstWorkout:v3 secondWorkout:v4 distanceMetric:v5 workoutActivityType:v6 areBothWorkoutsDecimated:v7 distance:v9 isVisited:v15 date:v11];
  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

- (id)managedObjectWithContext:(id)a3
{
  if (a3)
  {
    v3 = [RTWorkoutDistanceMO managedObjectWithWorkoutDistance:self inManagedObjectContext:a3];
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