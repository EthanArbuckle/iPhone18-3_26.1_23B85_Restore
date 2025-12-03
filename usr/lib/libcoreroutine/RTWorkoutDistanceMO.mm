@interface RTWorkoutDistanceMO
+ (id)managedObjectWithFirstWorkout:(id)workout secondWorkout:(id)secondWorkout distanceMetric:(int64_t)metric workoutActivityType:(int64_t)type areBothWorkoutsDecimated:(BOOL)decimated distance:(double)distance isVisited:(BOOL)visited date:(id)self0 inManagedObjectContext:(id)self1;
+ (id)managedObjectWithWorkoutDistance:(id)distance inManagedObjectContext:(id)context;
@end

@implementation RTWorkoutDistanceMO

+ (id)managedObjectWithWorkoutDistance:(id)distance inManagedObjectContext:(id)context
{
  distanceCopy = distance;
  contextCopy = context;
  v7 = contextCopy;
  if (!distanceCopy)
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

  if (contextCopy)
  {
    firstWorkout = [distanceCopy firstWorkout];
    secondWorkout = [distanceCopy secondWorkout];
    distanceMetric = [distanceCopy distanceMetric];
    workoutActivityType = [distanceCopy workoutActivityType];
    areBothWorkoutsDecimated = [distanceCopy areBothWorkoutsDecimated];
    [distanceCopy distance];
    v14 = v13;
    isVisited = [distanceCopy isVisited];
    date = [distanceCopy date];
    v17 = [RTWorkoutDistanceMO managedObjectWithFirstWorkout:firstWorkout secondWorkout:secondWorkout distanceMetric:distanceMetric workoutActivityType:workoutActivityType areBothWorkoutsDecimated:areBothWorkoutsDecimated distance:isVisited isVisited:v14 date:date inManagedObjectContext:v7];

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

+ (id)managedObjectWithFirstWorkout:(id)workout secondWorkout:(id)secondWorkout distanceMetric:(int64_t)metric workoutActivityType:(int64_t)type areBothWorkoutsDecimated:(BOOL)decimated distance:(double)distance isVisited:(BOOL)visited date:(id)self0 inManagedObjectContext:(id)self1
{
  workoutCopy = workout;
  secondWorkoutCopy = secondWorkout;
  dateCopy = date;
  contextCopy = context;
  v21 = contextCopy;
  if (contextCopy)
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
    v25 = contextCopy;
    v26 = workoutCopy;
    v27 = secondWorkoutCopy;
    metricCopy = metric;
    typeCopy = type;
    decimatedCopy = decimated;
    distanceCopy = distance;
    visitedCopy = visited;
    v28 = dateCopy;
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