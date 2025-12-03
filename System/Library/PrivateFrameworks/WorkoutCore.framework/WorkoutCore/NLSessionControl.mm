@interface NLSessionControl
- (NLSessionControl)initWithWorkout:(id)workout;
- (void)insertLocations:(id)locations completion:(id)completion;
- (void)setMachineSessionDevice:(id)device;
- (void)setPauseTracking:(BOOL)tracking eventSource:(unint64_t)source;
- (void)startTrackingWithStartDate:(id)date;
@end

@implementation NLSessionControl

- (NLSessionControl)initWithWorkout:(id)workout
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, workout);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = NLSessionControl;
  v6 = [(NLSessionControl *)&v7 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeStrong(&selfCopy->_workout, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)setMachineSessionDevice:(id)device
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, device);
  sessionActivity = [(NLWorkout *)selfCopy->_workout sessionActivity];
  [(NLSessionActivity *)sessionActivity setMachineSessionDevice:location[0]];
  MEMORY[0x277D82BD8](sessionActivity);
  objc_storeStrong(location, 0);
}

- (void)setPauseTracking:(BOOL)tracking eventSource:(unint64_t)source
{
  workout = self->_workout;
  date = [MEMORY[0x277CBEAA8] date];
  [NLWorkout setPaused:"setPaused:atDate:eventSource:" atDate:tracking eventSource:?];
  MEMORY[0x277D82BD8](date);
}

- (void)startTrackingWithStartDate:(id)date
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  [(NLWorkout *)selfCopy->_workout startTrackingWithStartDate:location[0]];
  objc_storeStrong(location, 0);
}

- (void)insertLocations:(id)locations completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, locations);
  v5 = 0;
  objc_storeStrong(&v5, completion);
  [(NLWorkout *)selfCopy->_workout insertLocations:location[0] completion:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

@end