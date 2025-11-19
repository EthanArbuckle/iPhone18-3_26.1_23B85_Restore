@interface NLSessionControl
- (NLSessionControl)initWithWorkout:(id)a3;
- (void)insertLocations:(id)a3 completion:(id)a4;
- (void)setMachineSessionDevice:(id)a3;
- (void)setPauseTracking:(BOOL)a3 eventSource:(unint64_t)a4;
- (void)startTrackingWithStartDate:(id)a3;
@end

@implementation NLSessionControl

- (NLSessionControl)initWithWorkout:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = NLSessionControl;
  v6 = [(NLSessionControl *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    objc_storeStrong(&v9->_workout, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (void)setMachineSessionDevice:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(NLWorkout *)v5->_workout sessionActivity];
  [(NLSessionActivity *)v3 setMachineSessionDevice:location[0]];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (void)setPauseTracking:(BOOL)a3 eventSource:(unint64_t)a4
{
  workout = self->_workout;
  v6 = [MEMORY[0x277CBEAA8] date];
  [NLWorkout setPaused:"setPaused:atDate:eventSource:" atDate:a3 eventSource:?];
  MEMORY[0x277D82BD8](v6);
}

- (void)startTrackingWithStartDate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NLWorkout *)v4->_workout startTrackingWithStartDate:location[0]];
  objc_storeStrong(location, 0);
}

- (void)insertLocations:(id)a3 completion:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(NLWorkout *)v7->_workout insertLocations:location[0] completion:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

@end