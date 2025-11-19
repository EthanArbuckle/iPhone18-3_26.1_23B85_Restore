@interface REDailyRoutineRelevanceProviderManager
+ (id)_features;
- (BOOL)_isInRoutine:(unint64_t)a3 forDate:(id)a4;
- (id)_valueForProvider:(id)a3 context:(id)a4 feature:(id)a5;
- (id)_valueForProvider:(id)a3 feature:(id)a4;
- (void)_prepareForUpdate;
- (void)_updateRoutines;
- (void)pause;
- (void)resume;
@end

@implementation REDailyRoutineRelevanceProviderManager

+ (id)_features
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = +[REFeature dailyRoutineFeature];
  v7[0] = v2;
  v3 = +[REFeature isInDailyRoutineFeature];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_valueForProvider:(id)a3 feature:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[REFeature dailyRoutineFeature];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = +[REFeatureValue featureValueWithInt64:](REFeatureValue, "featureValueWithInt64:", [v6 type]);
LABEL_11:
    v14 = v10;
    goto LABEL_12;
  }

  v11 = [v6 type];
  switch(v11)
  {
    case 0:
      v12 = 96;
      goto LABEL_9;
    case 2:
      v13 = 1;
LABEL_10:
      v10 = [REFeatureValue featureValueWithBool:v13];
      goto LABEL_11;
    case 1:
      v12 = 97;
LABEL_9:
      v13 = *(&self->super.super.isa + v12);
      goto LABEL_10;
  }

  v14 = 0;
LABEL_12:

  return v14;
}

- (id)_valueForProvider:(id)a3 context:(id)a4 feature:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v8;
  v11 = [a4 attributeForKey:@"RETrainingContextDateKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v11)
    {
      v12 = +[REFeature isInDailyRoutineFeature];
      v13 = [v9 isEqual:v12];

      if (v13)
      {
        v14 = +[REFeatureValue featureValueWithBool:](REFeatureValue, "featureValueWithBool:", -[REDailyRoutineRelevanceProviderManager _isInRoutine:forDate:](self, "_isInRoutine:forDate:", [v10 type], v11));
        goto LABEL_7;
      }
    }
  }

  else
  {

    v11 = 0;
  }

  v14 = [(REDailyRoutineRelevanceProviderManager *)self _valueForProvider:v10 feature:v9];
LABEL_7:
  v15 = v14;

  return v15;
}

- (BOOL)_isInRoutine:(unint64_t)a3 forDate:(id)a4
{
  v5 = a3 == 1;
  v6 = a4;
  if (a3)
  {
    v7 = 2 * v5;
  }

  else
  {
    v7 = 1;
  }

  v8 = +[(RESingleton *)REDailyRoutinePredictor];
  v9 = [v8 currentRoutineInterval];
  v10 = [v9 containsDate:v6];

  if (v10)
  {
    v11 = [v8 currentRoutineType] == v7;
  }

  else
  {
    v12 = [v8 routineIntervalForPreviousRoutine:v7];
    if ([v12 containsDate:v6])
    {
      v11 = 1;
    }

    else
    {
      v13 = [v8 routineIntervalForNextRoutine:v7];

      v11 = [v13 containsDate:v6];
      v12 = v13;
    }
  }

  return v11;
}

- (void)resume
{
  v3 = +[(RESingleton *)REDailyRoutinePredictor];
  [v3 addObserver:self];
}

- (void)pause
{
  v3 = +[(RESingleton *)REDailyRoutinePredictor];
  [v3 removeObserver:self];
}

- (void)_prepareForUpdate
{
  v3 = +[(RESingleton *)REDailyRoutinePredictor];
  v4 = [v3 currentRoutineType];

  if (v4 == 1)
  {
    v5 = 0;
    self->_inMorningRoutine = 1;
  }

  else
  {
    self->_inMorningRoutine = REUpNextDemoAlwaysShowRoutines();
    if (v4 == 2)
    {
      v5 = REUpNextDemoAlwaysShowRoutines() ^ 1;
    }

    else
    {
      v5 = 0;
    }
  }

  self->_inEveningRoutine = v5;
}

- (void)_updateRoutines
{
  v3 = +[RERelevanceProviderManagerUpdate immediateUpdateForAllProviders];
  [(RERelevanceProviderManager *)self _scheduleUpdate:v3];
}

@end