@interface REDailyRoutineRelevanceProviderManager
+ (id)_features;
- (BOOL)_isInRoutine:(unint64_t)routine forDate:(id)date;
- (id)_valueForProvider:(id)provider context:(id)context feature:(id)feature;
- (id)_valueForProvider:(id)provider feature:(id)feature;
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

- (id)_valueForProvider:(id)provider feature:(id)feature
{
  providerCopy = provider;
  featureCopy = feature;
  v8 = +[REFeature dailyRoutineFeature];
  v9 = [featureCopy isEqual:v8];

  if (v9)
  {
    v10 = +[REFeatureValue featureValueWithInt64:](REFeatureValue, "featureValueWithInt64:", [providerCopy type]);
LABEL_11:
    v14 = v10;
    goto LABEL_12;
  }

  type = [providerCopy type];
  switch(type)
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

- (id)_valueForProvider:(id)provider context:(id)context feature:(id)feature
{
  providerCopy = provider;
  featureCopy = feature;
  v10 = providerCopy;
  v11 = [context attributeForKey:@"RETrainingContextDateKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v11)
    {
      v12 = +[REFeature isInDailyRoutineFeature];
      v13 = [featureCopy isEqual:v12];

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

  v14 = [(REDailyRoutineRelevanceProviderManager *)self _valueForProvider:v10 feature:featureCopy];
LABEL_7:
  v15 = v14;

  return v15;
}

- (BOOL)_isInRoutine:(unint64_t)routine forDate:(id)date
{
  v5 = routine == 1;
  dateCopy = date;
  if (routine)
  {
    v7 = 2 * v5;
  }

  else
  {
    v7 = 1;
  }

  v8 = +[(RESingleton *)REDailyRoutinePredictor];
  currentRoutineInterval = [v8 currentRoutineInterval];
  v10 = [currentRoutineInterval containsDate:dateCopy];

  if (v10)
  {
    v11 = [v8 currentRoutineType] == v7;
  }

  else
  {
    v12 = [v8 routineIntervalForPreviousRoutine:v7];
    if ([v12 containsDate:dateCopy])
    {
      v11 = 1;
    }

    else
    {
      v13 = [v8 routineIntervalForNextRoutine:v7];

      v11 = [v13 containsDate:dateCopy];
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
  currentRoutineType = [v3 currentRoutineType];

  if (currentRoutineType == 1)
  {
    v5 = 0;
    self->_inMorningRoutine = 1;
  }

  else
  {
    self->_inMorningRoutine = REUpNextDemoAlwaysShowRoutines();
    if (currentRoutineType == 2)
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