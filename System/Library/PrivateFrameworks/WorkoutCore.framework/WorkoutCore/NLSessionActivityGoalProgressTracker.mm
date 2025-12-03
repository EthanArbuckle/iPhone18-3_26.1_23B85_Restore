@interface NLSessionActivityGoalProgressTracker
- (NLSessionActivityGoalProgressTracker)initWithActivityType:(id)type goal:(id)goal;
- (NLSessionActivityProgressTrackerDelegate)delegate;
- (id)_trackCompletionWithOldValue:(double)value newValue:(double)newValue;
- (id)trackProgressForGoalType:(unint64_t)type value:(double)value;
- (void)_progressForGoalType:(unint64_t)type withValue:(double)value secondaryValue:(double)secondaryValue;
- (void)activityHeartRateDidBecomeStale:(id)stale;
- (void)dataProvider:(id)provider didChangeActivityTypeTo:(id)to;
- (void)dataProvider:(id)provider didReceiveSegmentMarker:(id)marker;
- (void)dataProvider:(id)provider didUpdate:(unint64_t)update;
- (void)dataProvider:(id)provider didUpdateIsGPSAvailable:(BOOL)available;
- (void)dataProvider:(id)provider didUpdateWorkout:(id)workout;
- (void)dealloc;
- (void)recoverStateFromDataProvider:(id)provider activityType:(id)type;
@end

@implementation NLSessionActivityGoalProgressTracker

- (NLSessionActivityGoalProgressTracker)initWithActivityType:(id)type goal:(id)goal
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v11 = 0;
  objc_storeStrong(&v11, goal);
  v4 = selfCopy;
  selfCopy = 0;
  v10.receiver = v4;
  v10.super_class = NLSessionActivityGoalProgressTracker;
  v8 = [(NLSessionActivityGoalProgressTracker *)&v10 init];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    objc_storeStrong(&selfCopy->_activityType, location[0]);
    objc_storeStrong(&selfCopy->_goal, v11);
    [(NLSessionActivityGoal *)selfCopy->_goal doubleValue];
    selfCopy->_goalValue = v5;
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:selfCopy];
  MEMORY[0x277D82BD8](defaultCenter);
  v3.receiver = selfCopy;
  v3.super_class = NLSessionActivityGoalProgressTracker;
  [(NLSessionActivityGoalProgressTracker *)&v3 dealloc];
}

- (id)trackProgressForGoalType:(unint64_t)type value:(double)value
{
  selfCopy = self;
  v9 = a2;
  typeCopy = type;
  valueCopy = value;
  if ([(NLSessionActivityGoal *)self->_goal goalTypeIdentifier]== type && valueCopy > selfCopy->_lastGoalProgressValue)
  {
    v6 = [(NLSessionActivityGoalProgressTracker *)selfCopy _trackCompletionWithOldValue:selfCopy->_lastGoalProgressValue newValue:valueCopy];
    selfCopy->_lastGoalProgressValue = valueCopy;
    v11 = MEMORY[0x277D82BE0](v6);
    objc_storeStrong(&v6, 0);
  }

  else
  {
    v11 = 0;
  }

  v4 = v11;

  return v4;
}

- (id)_trackCompletionWithOldValue:(double)value newValue:(double)newValue
{
  selfCopy = self;
  v20 = a2;
  valueCopy = value;
  newValueCopy = newValue;
  if (self->_goalValue == 0.0)
  {
    v22 = 0;
  }

  else
  {
    v17 = valueCopy / selfCopy[1];
    v16 = newValueCopy / selfCopy[1];
    delegate = [selfCopy delegate];
    [delegate progressTracker:selfCopy didProgressTowardsGoal:*(selfCopy + 2) completionFactor:v16];
    MEMORY[0x277D82BD8](delegate);
    v15 = 0;
    if (v17 >= 1.0 || v16 < 1.0)
    {
      if (v17 < 0.5 && v16 >= 0.5)
      {
        goal = [selfCopy goal];
        v7 = *(selfCopy + 3);
        v8 = [NLWorkoutAlertGoalProgress goalProgressAlertWithGoal:goal distanceType:FIUIDistanceTypeForActivityType() alertType:7 currentValue:selfCopy[1] * 0.5];
        v9 = v15;
        v15 = v8;
        MEMORY[0x277D82BD8](v9);
        MEMORY[0x277D82BD8](goal);
      }
    }

    else
    {
      goal2 = [selfCopy goal];
      v4 = *(selfCopy + 3);
      v5 = [NLWorkoutAlertGoalProgress goalProgressAlertWithGoal:goal2 distanceType:FIUIDistanceTypeForActivityType() alertType:13 currentValue:selfCopy[1]];
      v6 = v15;
      v15 = v5;
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](goal2);
    }

    selfCopy[5] = v16;
    v22 = MEMORY[0x277D82BE0](v15);
    objc_storeStrong(&v15, 0);
  }

  v10 = v22;

  return v10;
}

- (void)_progressForGoalType:(unint64_t)type withValue:(double)value secondaryValue:(double)secondaryValue
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v14 = a2;
  typeCopy = type;
  valueCopy = value;
  location[1] = *&secondaryValue;
  location[0] = 0;
  goal = [(NLSessionActivityGoalProgressTracker *)self goal];
  goalTypeIdentifier = [(NLSessionActivityGoal *)goal goalTypeIdentifier];
  MEMORY[0x277D82BD8](goal);
  if (goalTypeIdentifier == typeCopy)
  {
    v5 = [(NLSessionActivityGoalProgressTracker *)selfCopy trackProgressForGoalType:typeCopy value:valueCopy];
    v6 = location[0];
    location[0] = v5;
    MEMORY[0x277D82BD8](v6);
  }

  if (location[0])
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v16, location[0]);
      _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "Goal progress workout alert triggered. Event: %@", v16, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    delegate = [(NLSessionActivityGoalProgressTracker *)selfCopy delegate];
    [(NLSessionActivityProgressTrackerDelegate *)delegate alertSource:selfCopy didTriggerAlert:location[0]];
    MEMORY[0x277D82BD8](delegate);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)recoverStateFromDataProvider:(id)provider activityType:(id)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  v7 = 0;
  objc_storeStrong(&v7, type);
  goalTypeIdentifier = [(NLSessionActivityGoal *)selfCopy->_goal goalTypeIdentifier];
  ValueForGoalTypeIdentifier = _LastValueForGoalTypeIdentifier(goalTypeIdentifier, location[0]);
  selfCopy->_lastGoalProgressValue = ValueForGoalTypeIdentifier;
  selfCopy->_lastGoalCompletionFactor = selfCopy->_lastGoalProgressValue;
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)dataProvider:(id)provider didUpdate:(unint64_t)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  switch(update)
  {
    case 1uLL:
      v9 = selfCopy;
      distanceProvider = [location[0] distanceProvider];
      [distanceProvider distance];
      v10 = v4;
      [location[0] duration];
      [(NLSessionActivityGoalProgressTracker *)v9 _progressForGoalType:1 withValue:v10 secondaryValue:v5];
      MEMORY[0x277D82BD8](distanceProvider);
      break;
    case 2uLL:
      v6 = selfCopy;
      energyBurnProvider = [location[0] energyBurnProvider];
      [energyBurnProvider totalActiveCaloriesBurned];
      [NLSessionActivityGoalProgressTracker _progressForGoalType:v6 withValue:"_progressForGoalType:withValue:secondaryValue:" secondaryValue:3];
      MEMORY[0x277D82BD8](energyBurnProvider);
      break;
    case 3uLL:
      v8 = selfCopy;
      [location[0] duration];
      [NLSessionActivityGoalProgressTracker _progressForGoalType:v8 withValue:"_progressForGoalType:withValue:secondaryValue:" secondaryValue:2];
      break;
  }

  objc_storeStrong(location, 0);
}

- (void)dataProvider:(id)provider didUpdateIsGPSAvailable:(BOOL)available
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  objc_storeStrong(location, 0);
}

- (void)dataProvider:(id)provider didReceiveSegmentMarker:(id)marker
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  v5 = 0;
  objc_storeStrong(&v5, marker);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)activityHeartRateDidBecomeStale:(id)stale
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, stale);
  objc_storeStrong(location, 0);
}

- (void)dataProvider:(id)provider didUpdateWorkout:(id)workout
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  v5 = 0;
  objc_storeStrong(&v5, workout);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)dataProvider:(id)provider didChangeActivityTypeTo:(id)to
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  v5 = 0;
  objc_storeStrong(&v5, to);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (NLSessionActivityProgressTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end