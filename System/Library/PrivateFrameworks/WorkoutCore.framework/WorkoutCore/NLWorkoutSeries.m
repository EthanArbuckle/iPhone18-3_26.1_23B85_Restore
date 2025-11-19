@interface NLWorkoutSeries
- (NLWorkoutSeries)init;
- (NLWorkoutSeries)initWithWorkouts:(id)a3;
- (id)byAddingWorkout:(id)a3;
- (id)byUpdatingWorkout:(id)a3;
- (id)withWorkouts:(id)a3;
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

- (NLWorkoutSeries)initWithWorkouts:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = NLWorkoutSeries;
  v6 = [(NLWorkoutSeries *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    objc_storeStrong(&v9->_workouts, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (id)withWorkouts:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = objc_alloc(objc_opt_class());
  v5 = [v3 initWithWorkouts:location[0]];
  objc_storeStrong(location, 0);

  return v5;
}

- (id)byUpdatingWorkout:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  workouts = v9->_workouts;
  v6 = MEMORY[0x277D82BE0](location[0]);
  v7 = [(NSArray *)workouts nl_mapUsingBlock:?];
  v5 = [(NLWorkoutSeries *)v9 withWorkouts:v7];
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

- (id)byAddingWorkout:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = v8;
  v5 = [(NSArray *)v8->_workouts arrayByAddingObject:location[0]];
  v6 = [(NLWorkoutSeries *)v4 withWorkouts:?];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);

  return v6;
}

@end