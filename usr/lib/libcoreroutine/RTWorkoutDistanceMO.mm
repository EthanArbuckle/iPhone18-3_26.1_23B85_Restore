@interface RTWorkoutDistanceMO
+ (id)managedObjectWithFirstWorkout:(id)a3 secondWorkout:(id)a4 distanceMetric:(int64_t)a5 workoutActivityType:(int64_t)a6 areBothWorkoutsDecimated:(BOOL)a7 distance:(double)a8 isVisited:(BOOL)a9 date:(id)a10 inManagedObjectContext:(id)a11;
+ (id)managedObjectWithWorkoutDistance:(id)a3 inManagedObjectContext:(id)a4;
@end

@implementation RTWorkoutDistanceMO

+ (id)managedObjectWithWorkoutDistance:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v23 = 0;
    v19 = "Invalid parameter not satisfying: workoutDistance";
    v20 = &v23;
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, v19, v20, 2u);
    goto LABEL_7;
  }

  if (v6)
  {
    v8 = [v5 firstWorkout];
    v9 = [v5 secondWorkout];
    v10 = [v5 distanceMetric];
    v11 = [v5 workoutActivityType];
    v12 = [v5 areBothWorkoutsDecimated];
    [v5 distance];
    v14 = v13;
    v15 = [v5 isVisited];
    v16 = [v5 date];
    v17 = [RTWorkoutDistanceMO managedObjectWithFirstWorkout:v8 secondWorkout:v9 distanceMetric:v10 workoutActivityType:v11 areBothWorkoutsDecimated:v12 distance:v15 isVisited:v14 date:v16 inManagedObjectContext:v7];

    goto LABEL_8;
  }

  v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v19 = "Invalid parameter not satisfying: managedObjectContext";
    v20 = buf;
    goto LABEL_12;
  }

LABEL_7:

  v17 = 0;
LABEL_8:

  return v17;
}

+ (id)managedObjectWithFirstWorkout:(id)a3 secondWorkout:(id)a4 distanceMetric:(int64_t)a5 workoutActivityType:(int64_t)a6 areBothWorkoutsDecimated:(BOOL)a7 distance:(double)a8 isVisited:(BOOL)a9 date:(id)a10 inManagedObjectContext:(id)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a10;
  v20 = a11;
  v21 = v20;
  if (v20)
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__178;
    v39 = __Block_byref_object_dispose__178;
    v40 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __174__RTWorkoutDistanceMO_managedObjectWithFirstWorkout_secondWorkout_distanceMetric_workoutActivityType_areBothWorkoutsDecimated_distance_isVisited_date_inManagedObjectContext___block_invoke;
    v24[3] = &unk_2788D2128;
    v29 = &v35;
    v25 = v20;
    v26 = v17;
    v27 = v18;
    v30 = a5;
    v31 = a6;
    v33 = a7;
    v32 = a8;
    v34 = a9;
    v28 = v19;
    [v25 performBlockAndWait:v24];
    v22 = v36[5];

    _Block_object_dispose(&v35, 8);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

uint64_t __174__RTWorkoutDistanceMO_managedObjectWithFirstWorkout_secondWorkout_distanceMetric_workoutActivityType_areBothWorkoutsDecimated_distance_isVisited_date_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v2 = [[RTWorkoutDistanceMO alloc] initWithContext:*(a1 + 32)];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(*(*(a1 + 64) + 8) + 40) setFirstWorkout:*(a1 + 40)];
  [*(*(*(a1 + 64) + 8) + 40) setSecondWorkout:*(a1 + 48)];
  [*(*(*(a1 + 64) + 8) + 40) setDistanceMetric:*(a1 + 72)];
  [*(*(*(a1 + 64) + 8) + 40) setWorkoutActivityType:*(a1 + 80)];
  [*(*(*(a1 + 64) + 8) + 40) setAreBothWorkoutsDecimated:*(a1 + 96)];
  [*(*(*(a1 + 64) + 8) + 40) setDistance:*(a1 + 88)];
  [*(*(*(a1 + 64) + 8) + 40) setIsVisited:*(a1 + 97)];
  v5 = *(a1 + 56);
  v6 = *(*(*(a1 + 64) + 8) + 40);

  return [v6 setDate:v5];
}

@end