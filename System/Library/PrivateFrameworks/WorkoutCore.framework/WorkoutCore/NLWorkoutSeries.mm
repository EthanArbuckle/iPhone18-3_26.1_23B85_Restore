@interface NLWorkoutSeries
- (NLWorkoutSeries)init;
- (NLWorkoutSeries)initWithWorkouts:(id)workouts;
- (id)byAddingWorkout:(id)workout;
- (id)byUpdatingWorkout:(id)workout;
- (id)withWorkouts:(id)workouts;
@end

@implementation NLWorkoutSeries

- (NLWorkoutSeries)init
{
  v4 = 0;
  v4 = [(NLWorkoutSeries *)self initWithWorkouts:MEMORY[0x277CBEBF8]];
  v3 = MEMORY[0x277D82BE0](v4);
  objc_storeStrong(&v4, 0);
  return v3;
}

- (NLWorkoutSeries)initWithWorkouts:(id)workouts
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, workouts);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = NLWorkoutSeries;
  v6 = [(NLWorkoutSeries *)&v7 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeStrong(&selfCopy->_workouts, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (id)withWorkouts:(id)workouts
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, workouts);
  v3 = objc_alloc(objc_opt_class());
  v5 = [v3 initWithWorkouts:location[0]];
  objc_storeStrong(location, 0);

  return v5;
}

- (id)byUpdatingWorkout:(id)workout
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, workout);
  workouts = selfCopy->_workouts;
  v6 = MEMORY[0x277D82BE0](location[0]);
  v7 = [(NSArray *)workouts nl_mapUsingBlock:?];
  v5 = [(NLWorkoutSeries *)selfCopy withWorkouts:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v5;
}

id __37__NLWorkoutSeries_byUpdatingWorkout___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9[1] = a1;
  v4 = [location[0] metadata];
  v9[0] = [v4 objectForKey:*MEMORY[0x277CCE1C0]];
  MEMORY[0x277D82BD8](v4);
  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v9[0]];
  v6 = [a1[4] UUID];
  v7 = [v8 isEqual:?];
  MEMORY[0x277D82BD8](v6);
  if (v7)
  {
    v11 = MEMORY[0x277D82BE0](a1[4]);
  }

  else
  {
    v11 = MEMORY[0x277D82BE0](location[0]);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(v9, 0);
  objc_storeStrong(location, 0);
  v2 = v11;

  return v2;
}

- (id)byAddingWorkout:(id)workout
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, workout);
  v4 = selfCopy;
  v5 = [(NSArray *)selfCopy->_workouts arrayByAddingObject:location[0]];
  v6 = [(NLWorkoutSeries *)v4 withWorkouts:?];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);

  return v6;
}

@end