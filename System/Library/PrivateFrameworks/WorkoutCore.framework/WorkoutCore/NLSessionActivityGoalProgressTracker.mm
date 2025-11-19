@interface NLSessionActivityGoalProgressTracker
- (NLSessionActivityGoalProgressTracker)initWithActivityType:(id)a3 goal:(id)a4;
- (NLSessionActivityProgressTrackerDelegate)delegate;
- (id)_trackCompletionWithOldValue:(double)a3 newValue:(double)a4;
- (id)trackProgressForGoalType:(unint64_t)a3 value:(double)a4;
- (void)_progressForGoalType:(unint64_t)a3 withValue:(double)a4 secondaryValue:(double)a5;
- (void)activityHeartRateDidBecomeStale:(id)a3;
- (void)dataProvider:(id)a3 didChangeActivityTypeTo:(id)a4;
- (void)dataProvider:(id)a3 didReceiveSegmentMarker:(id)a4;
- (void)dataProvider:(id)a3 didUpdate:(unint64_t)a4;
- (void)dataProvider:(id)a3 didUpdateIsGPSAvailable:(BOOL)a4;
- (void)dataProvider:(id)a3 didUpdateWorkout:(id)a4;
- (void)dealloc;
- (void)recoverStateFromDataProvider:(id)a3 activityType:(id)a4;
@end

@implementation NLSessionActivityGoalProgressTracker

- (NLSessionActivityGoalProgressTracker)initWithActivityType:(id)a3 goal:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v4 = v13;
  v13 = 0;
  v10.receiver = v4;
  v10.super_class = NLSessionActivityGoalProgressTracker;
  v8 = [(NLSessionActivityGoalProgressTracker *)&v10 init];
  v13 = v8;
  objc_storeStrong(&v13, v8);
  if (v8)
  {
    objc_storeStrong(&v13->_activityType, location[0]);
    objc_storeStrong(&v13->_goal, v11);
    [(NLSessionActivityGoal *)v13->_goal doubleValue];
    v13->_goalValue = v5;
  }

  v7 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
  return v7;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:v5];
  MEMORY[0x277D82BD8](v2);
  v3.receiver = v5;
  v3.super_class = NLSessionActivityGoalProgressTracker;
  [(NLSessionActivityGoalProgressTracker *)&v3 dealloc];
}

- (id)trackProgressForGoalType:(unint64_t)a3 value:(double)a4
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  if ([(NLSessionActivityGoal *)self->_goal goalTypeIdentifier]== a3 && v7 > v10->_lastGoalProgressValue)
  {
    v6 = [(NLSessionActivityGoalProgressTracker *)v10 _trackCompletionWithOldValue:v10->_lastGoalProgressValue newValue:v7];
    v10->_lastGoalProgressValue = v7;
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

- (id)_trackCompletionWithOldValue:(double)a3 newValue:(double)a4
{
  v21 = self;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  if (self->_goalValue == 0.0)
  {
    v22 = 0;
  }

  else
  {
    v17 = v19 / v21[1];
    v16 = v18 / v21[1];
    v14 = [v21 delegate];
    [v14 progressTracker:v21 didProgressTowardsGoal:*(v21 + 2) completionFactor:v16];
    MEMORY[0x277D82BD8](v14);
    v15 = 0;
    if (v17 >= 1.0 || v16 < 1.0)
    {
      if (v17 < 0.5 && v16 >= 0.5)
      {
        v12 = [v21 goal];
        v7 = *(v21 + 3);
        v8 = [NLWorkoutAlertGoalProgress goalProgressAlertWithGoal:v12 distanceType:FIUIDistanceTypeForActivityType() alertType:7 currentValue:v21[1] * 0.5];
        v9 = v15;
        v15 = v8;
        MEMORY[0x277D82BD8](v9);
        MEMORY[0x277D82BD8](v12);
      }
    }

    else
    {
      v13 = [v21 goal];
      v4 = *(v21 + 3);
      v5 = [NLWorkoutAlertGoalProgress goalProgressAlertWithGoal:v13 distanceType:FIUIDistanceTypeForActivityType() alertType:13 currentValue:v21[1]];
      v6 = v15;
      v15 = v5;
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v13);
    }

    v21[5] = v16;
    v22 = MEMORY[0x277D82BE0](v15);
    objc_storeStrong(&v15, 0);
  }

  v10 = v22;

  return v10;
}

- (void)_progressForGoalType:(unint64_t)a3 withValue:(double)a4 secondaryValue:(double)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = self;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  location[1] = *&a5;
  location[0] = 0;
  v8 = [(NLSessionActivityGoalProgressTracker *)self goal];
  v9 = [(NLSessionActivityGoal *)v8 goalTypeIdentifier];
  MEMORY[0x277D82BD8](v8);
  if (v9 == v13)
  {
    v5 = [(NLSessionActivityGoalProgressTracker *)v15 trackProgressForGoalType:v13 value:v12];
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
    v7 = [(NLSessionActivityGoalProgressTracker *)v15 delegate];
    [(NLSessionActivityProgressTrackerDelegate *)v7 alertSource:v15 didTriggerAlert:location[0]];
    MEMORY[0x277D82BD8](v7);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)recoverStateFromDataProvider:(id)a3 activityType:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v4 = [(NLSessionActivityGoal *)v9->_goal goalTypeIdentifier];
  ValueForGoalTypeIdentifier = _LastValueForGoalTypeIdentifier(v4, location[0]);
  v9->_lastGoalProgressValue = ValueForGoalTypeIdentifier;
  v9->_lastGoalCompletionFactor = v9->_lastGoalProgressValue;
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)dataProvider:(id)a3 didUpdate:(unint64_t)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  switch(a4)
  {
    case 1uLL:
      v9 = v14;
      v11 = [location[0] distanceProvider];
      [v11 distance];
      v10 = v4;
      [location[0] duration];
      [(NLSessionActivityGoalProgressTracker *)v9 _progressForGoalType:1 withValue:v10 secondaryValue:v5];
      MEMORY[0x277D82BD8](v11);
      break;
    case 2uLL:
      v6 = v14;
      v7 = [location[0] energyBurnProvider];
      [v7 totalActiveCaloriesBurned];
      [NLSessionActivityGoalProgressTracker _progressForGoalType:v6 withValue:"_progressForGoalType:withValue:secondaryValue:" secondaryValue:3];
      MEMORY[0x277D82BD8](v7);
      break;
    case 3uLL:
      v8 = v14;
      [location[0] duration];
      [NLSessionActivityGoalProgressTracker _progressForGoalType:v8 withValue:"_progressForGoalType:withValue:secondaryValue:" secondaryValue:2];
      break;
  }

  objc_storeStrong(location, 0);
}

- (void)dataProvider:(id)a3 didUpdateIsGPSAvailable:(BOOL)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)dataProvider:(id)a3 didReceiveSegmentMarker:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)activityHeartRateDidBecomeStale:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)dataProvider:(id)a3 didUpdateWorkout:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)dataProvider:(id)a3 didChangeActivityTypeTo:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (NLSessionActivityProgressTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end