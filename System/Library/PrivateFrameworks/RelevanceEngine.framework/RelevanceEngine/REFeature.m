@interface REFeature
+ (REFeature)activeEnergyCompletionFeature;
+ (REFeature)activeWorkoutFeature;
+ (REFeature)activitySummaryFeature;
+ (REFeature)appUsageFeature;
+ (REFeature)bluetoothDeviceFeature;
+ (REFeature)bulletinFeature;
+ (REFeature)companionAppUsageFeature;
+ (REFeature)conditionalFeature;
+ (REFeature)coreBehaviorAppIdentifierHashFeature;
+ (REFeature)coreBehaviorDayCoarsePredictionFeature;
+ (REFeature)coreBehaviorDayPredictionFeature;
+ (REFeature)coreBehaviorEventIdentifierHashFeature;
+ (REFeature)coreBehaviorLocationCoarsePredictionFeature;
+ (REFeature)coreBehaviorLocationPredictionFeature;
+ (REFeature)coreBehaviorShortcutTypeFeature;
+ (REFeature)coreBehaviorTimeCoarsePredictionFeature;
+ (REFeature)coreBehaviorTimePredictionFeature;
+ (REFeature)currentTimeFeature;
+ (REFeature)currentlyPlayingFromAppFeature;
+ (REFeature)currentlyPlayingMediaDonationFeature;
+ (REFeature)dailyAverageWorkoutCountFeature;
+ (REFeature)dailyRoutineFeature;
+ (REFeature)dataSourceFeature;
+ (REFeature)dateFeature;
+ (REFeature)dateInformationalFeature;
+ (REFeature)dateOccursTodayFeature;
+ (REFeature)dayOfWeekFeature;
+ (REFeature)deviceMotionFeature;
+ (REFeature)exerciseTimeCompletionFeature;
+ (REFeature)featureWithName:(id)a3 featureType:(unint64_t)a4;
+ (REFeature)geofenceFeature;
+ (REFeature)interactionFeature;
+ (REFeature)isConnectedToBluetoothSpeakerFeature;
+ (REFeature)isConnectedToCarFeature;
+ (REFeature)isDeveloperDonationFeature;
+ (REFeature)isInDailyRoutineFeature;
+ (REFeature)isSiriActionFeature;
+ (REFeature)isStationaryFeature;
+ (REFeature)isWeekendFeature;
+ (REFeature)itemIdentifierFeature;
+ (REFeature)knownLocationOfInterestFeature;
+ (REFeature)locationFeature;
+ (REFeature)locationOfInterestFeature;
+ (REFeature)motionFeature;
+ (REFeature)negativeSentimentAnalysisFeature;
+ (REFeature)noContentFeature;
+ (REFeature)nowPlayingStateFeature;
+ (REFeature)performedWorkoutCountFeature;
+ (REFeature)portraitFeature;
+ (REFeature)priorityFeature;
+ (REFeature)recentSiriActionFeature;
+ (REFeature)relevanceThresholdFeature;
+ (REFeature)sectionFeature;
+ (REFeature)sentimentAnalysisCertaintyFeature;
+ (REFeature)sentimentAnalysisFeature;
+ (REFeature)sessionFeature;
+ (REFeature)siriActionDailyAveragePerformedCountFeature;
+ (REFeature)siriActionHasRelevanceProvidersFeature;
+ (REFeature)siriActionPerformedCountFeature;
+ (REFeature)siriActionRoleFeature;
+ (REFeature)siriDomainFeature;
+ (REFeature)standHourCompletionFeature;
+ (REFeature)travelingFeature;
+ (REFeature)workoutStateFeature;
+ (id)crossedFeatureWithFeatures:(id)a3;
+ (id)featuresFromSource:(id)a3;
+ (id)featuresFromSource:(id)a3 withNames:(id)a4;
+ (id)featuresFromSourceAtPath:(id)a3;
+ (id)featuresFromSourceAtPath:(id)a3 withNames:(id)a4;
+ (id)forcedFeature;
+ (id)groupFeature;
+ (id)systemFeatureNames;
+ (id)transformedFeatureWithTransformer:(id)a3 features:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)featureByUsingTransformer:(id)a3;
- (unint64_t)hash;
@end

@implementation REFeature

+ (REFeature)priorityFeature
{
  if (priorityFeature_onceToken != -1)
  {
    +[REFeature priorityFeature];
  }

  v3 = priorityFeature_SystemFeature;

  return v3;
}

+ (REFeature)dataSourceFeature
{
  if (dataSourceFeature_onceToken != -1)
  {
    +[REFeature dataSourceFeature];
  }

  v3 = dataSourceFeature_SystemFeature;

  return v3;
}

+ (REFeature)dateFeature
{
  if (dateFeature_onceToken != -1)
  {
    +[REFeature dateFeature];
  }

  v3 = dateFeature_SystemFeature;

  return v3;
}

+ (REFeature)locationFeature
{
  if (locationFeature_onceToken != -1)
  {
    +[REFeature locationFeature];
  }

  v3 = locationFeature_SystemFeature;

  return v3;
}

+ (REFeature)geofenceFeature
{
  if (geofenceFeature_onceToken != -1)
  {
    +[REFeature geofenceFeature];
  }

  v3 = geofenceFeature_SystemFeature;

  return v3;
}

+ (REFeature)dailyRoutineFeature
{
  if (dailyRoutineFeature_onceToken != -1)
  {
    +[REFeature dailyRoutineFeature];
  }

  v3 = dailyRoutineFeature_SystemFeature;

  return v3;
}

+ (REFeature)isInDailyRoutineFeature
{
  if (isInDailyRoutineFeature_onceToken != -1)
  {
    +[REFeature isInDailyRoutineFeature];
  }

  v3 = isInDailyRoutineFeature_SystemFeature;

  return v3;
}

+ (REFeature)featureWithName:(id)a3 featureType:(unint64_t)a4
{
  if (a3)
  {
    v5 = a3;
    v6 = [[_REConcreteFeature alloc] initWithName:v5 featureType:a4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)crossedFeatureWithFeatures:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = [[_RECrossedFeature alloc] initWithFeatures:v4];

  return v5;
}

+ (id)transformedFeatureWithTransformer:(id)a3 features:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (([v5 _validateWithFeatures:v6] & 1) == 0)
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Feature Transformer %@ unable to support features %@", v7, v8, v9, v10, v11, v12, v5);
  }

  v13 = [v5 _featureCount];
  if (v13 != [v6 count])
  {
    v14 = *MEMORY[0x277CBE658];
    v15 = [v5 _featureCount];
    [v6 count];
    RERaiseInternalException(v14, @"Expected %lu number of features. Received %lu.", v16, v17, v18, v19, v20, v21, v15);
  }

  v22 = [[_RETransformedFeature alloc] initWithTransformer:v5 features:v6];

  return v22;
}

- (id)featureByUsingTransformer:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = self;
  v3 = MEMORY[0x277CBEA60];
  v4 = a3;
  v5 = [v3 arrayWithObjects:&v9 count:1];
  v6 = [REFeature transformedFeatureWithTransformer:v4 features:v5, v9, v10];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(REFeature *)self name];
      v7 = [(REFeature *)v5 name];
      if (v6 == v7 || [v6 isEqual:v7])
      {
        v8 = [(REFeature *)self featureType];
        v9 = v8 == [(REFeature *)v5 featureType];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(REFeature *)self name];
  v4 = [v3 hash];
  v5 = [(REFeature *)self featureType];

  return v5 ^ v4;
}

+ (REFeature)sectionFeature
{
  if (sectionFeature_onceToken != -1)
  {
    +[REFeature sectionFeature];
  }

  v3 = sectionFeature_SystemFeature;

  return v3;
}

uint64_t __27__REFeature_sectionFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"section" featureType:1];
  v1 = sectionFeature_SystemFeature;
  sectionFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __30__REFeature_dataSourceFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"dataSource" featureType:1];
  v1 = dataSourceFeature_SystemFeature;
  dataSourceFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __24__REFeature_dateFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"date" featureType:2];
  v1 = dateFeature_SystemFeature;
  dateFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)dateInformationalFeature
{
  if (dateInformationalFeature_onceToken != -1)
  {
    +[REFeature dateInformationalFeature];
  }

  v3 = dateInformationalFeature_SystemFeature;

  return v3;
}

uint64_t __37__REFeature_dateInformationalFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"dateInformational" featureType:2];
  v1 = dateInformationalFeature_SystemFeature;
  dateInformationalFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)dateOccursTodayFeature
{
  if (dateOccursTodayFeature_onceToken != -1)
  {
    +[REFeature dateOccursTodayFeature];
  }

  v3 = dateOccursTodayFeature_SystemFeature;

  return v3;
}

uint64_t __35__REFeature_dateOccursTodayFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"dateOccursToday" featureType:0];
  v1 = dateOccursTodayFeature_SystemFeature;
  dateOccursTodayFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __28__REFeature_locationFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"location" featureType:2];
  v1 = locationFeature_SystemFeature;
  locationFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __28__REFeature_geofenceFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"geofence" featureType:2];
  v1 = geofenceFeature_SystemFeature;
  geofenceFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __28__REFeature_priorityFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"priority" featureType:2];
  v1 = priorityFeature_SystemFeature;
  priorityFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)interactionFeature
{
  if (interactionFeature_onceToken != -1)
  {
    +[REFeature interactionFeature];
  }

  v3 = interactionFeature_SystemFeature;

  return v3;
}

uint64_t __31__REFeature_interactionFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"interaction" featureType:1];
  v1 = interactionFeature_SystemFeature;
  interactionFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)appUsageFeature
{
  if (appUsageFeature_onceToken != -1)
  {
    +[REFeature appUsageFeature];
  }

  v3 = appUsageFeature_SystemFeature;

  return v3;
}

uint64_t __28__REFeature_appUsageFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"appUsage" featureType:2];
  v1 = appUsageFeature_SystemFeature;
  appUsageFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)currentTimeFeature
{
  if (currentTimeFeature_onceToken != -1)
  {
    +[REFeature currentTimeFeature];
  }

  v3 = currentTimeFeature_SystemFeature;

  return v3;
}

uint64_t __31__REFeature_currentTimeFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"currentTime" featureType:2];
  v1 = currentTimeFeature_SystemFeature;
  currentTimeFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)dayOfWeekFeature
{
  if (dayOfWeekFeature_onceToken != -1)
  {
    +[REFeature dayOfWeekFeature];
  }

  v3 = dayOfWeekFeature_SystemFeature;

  return v3;
}

uint64_t __29__REFeature_dayOfWeekFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"dayOfWeek" featureType:1];
  v1 = dayOfWeekFeature_SystemFeature;
  dayOfWeekFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)isWeekendFeature
{
  if (isWeekendFeature_onceToken != -1)
  {
    +[REFeature isWeekendFeature];
  }

  v3 = isWeekendFeature_SystemFeature;

  return v3;
}

uint64_t __29__REFeature_isWeekendFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"isWeekend" featureType:1];
  v1 = isWeekendFeature_SystemFeature;
  isWeekendFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)noContentFeature
{
  if (noContentFeature_onceToken != -1)
  {
    +[REFeature noContentFeature];
  }

  v3 = noContentFeature_SystemFeature;

  return v3;
}

uint64_t __29__REFeature_noContentFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"noContent" featureType:0];
  v1 = noContentFeature_SystemFeature;
  noContentFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)conditionalFeature
{
  if (conditionalFeature_onceToken != -1)
  {
    +[REFeature conditionalFeature];
  }

  v3 = conditionalFeature_SystemFeature;

  return v3;
}

uint64_t __31__REFeature_conditionalFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"conditional" featureType:2];
  v1 = conditionalFeature_SystemFeature;
  conditionalFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)siriDomainFeature
{
  if (siriDomainFeature_onceToken != -1)
  {
    +[REFeature siriDomainFeature];
  }

  v3 = siriDomainFeature_SystemFeature;

  return v3;
}

uint64_t __30__REFeature_siriDomainFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"siriDomain" featureType:2];
  v1 = siriDomainFeature_SystemFeature;
  siriDomainFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)forcedFeature
{
  if (forcedFeature_onceToken != -1)
  {
    +[REFeature forcedFeature];
  }

  v3 = forcedFeature_SystemFeature;

  return v3;
}

uint64_t __26__REFeature_forcedFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"forced" featureType:2];
  v1 = forcedFeature_SystemFeature;
  forcedFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __32__REFeature_dailyRoutineFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"dailyRoutine" featureType:1];
  v1 = dailyRoutineFeature_SystemFeature;
  dailyRoutineFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __36__REFeature_isInDailyRoutineFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"isInDailyRoutine" featureType:0];
  v1 = isInDailyRoutineFeature_SystemFeature;
  isInDailyRoutineFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)sessionFeature
{
  if (sessionFeature_onceToken != -1)
  {
    +[REFeature sessionFeature];
  }

  v3 = sessionFeature_SystemFeature;

  return v3;
}

uint64_t __27__REFeature_sessionFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"session" featureType:2];
  v1 = sessionFeature_SystemFeature;
  sessionFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)groupFeature
{
  if (groupFeature_onceToken != -1)
  {
    +[REFeature groupFeature];
  }

  v3 = groupFeature_SystemFeature;

  return v3;
}

uint64_t __25__REFeature_groupFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"group" featureType:1];
  v1 = groupFeature_SystemFeature;
  groupFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)recentSiriActionFeature
{
  if (recentSiriActionFeature_onceToken != -1)
  {
    +[REFeature recentSiriActionFeature];
  }

  v3 = recentSiriActionFeature_SystemFeature;

  return v3;
}

uint64_t __36__REFeature_recentSiriActionFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"recentSiriAction" featureType:2];
  v1 = recentSiriActionFeature_SystemFeature;
  recentSiriActionFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)sentimentAnalysisFeature
{
  if (sentimentAnalysisFeature_onceToken != -1)
  {
    +[REFeature sentimentAnalysisFeature];
  }

  v3 = sentimentAnalysisFeature_SystemFeature;

  return v3;
}

uint64_t __37__REFeature_sentimentAnalysisFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"sentimentAnalysis" featureType:2];
  v1 = sentimentAnalysisFeature_SystemFeature;
  sentimentAnalysisFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)negativeSentimentAnalysisFeature
{
  if (negativeSentimentAnalysisFeature_onceToken != -1)
  {
    +[REFeature negativeSentimentAnalysisFeature];
  }

  v3 = negativeSentimentAnalysisFeature_SystemFeature;

  return v3;
}

uint64_t __45__REFeature_negativeSentimentAnalysisFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"negativeSentimentAnalysis" featureType:2];
  v1 = negativeSentimentAnalysisFeature_SystemFeature;
  negativeSentimentAnalysisFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)sentimentAnalysisCertaintyFeature
{
  if (sentimentAnalysisCertaintyFeature_onceToken != -1)
  {
    +[REFeature sentimentAnalysisCertaintyFeature];
  }

  v3 = sentimentAnalysisCertaintyFeature_SystemFeature;

  return v3;
}

uint64_t __46__REFeature_sentimentAnalysisCertaintyFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"sentimentAnalysisCertainty" featureType:2];
  v1 = sentimentAnalysisCertaintyFeature_SystemFeature;
  sentimentAnalysisCertaintyFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)portraitFeature
{
  if (portraitFeature_onceToken != -1)
  {
    +[REFeature portraitFeature];
  }

  v3 = portraitFeature_SystemFeature;

  return v3;
}

uint64_t __28__REFeature_portraitFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"portrait" featureType:2];
  v1 = portraitFeature_SystemFeature;
  portraitFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)relevanceThresholdFeature
{
  if (relevanceThresholdFeature_onceToken != -1)
  {
    +[REFeature relevanceThresholdFeature];
  }

  v3 = relevanceThresholdFeature_SystemFeature;

  return v3;
}

uint64_t __38__REFeature_relevanceThresholdFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"relevanceThreshold" featureType:2];
  v1 = relevanceThresholdFeature_SystemFeature;
  relevanceThresholdFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)locationOfInterestFeature
{
  if (locationOfInterestFeature_onceToken != -1)
  {
    +[REFeature locationOfInterestFeature];
  }

  v3 = locationOfInterestFeature_SystemFeature;

  return v3;
}

uint64_t __38__REFeature_locationOfInterestFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"locationOfInterest" featureType:1];
  v1 = locationOfInterestFeature_SystemFeature;
  locationOfInterestFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)knownLocationOfInterestFeature
{
  if (knownLocationOfInterestFeature_onceToken != -1)
  {
    +[REFeature knownLocationOfInterestFeature];
  }

  v3 = knownLocationOfInterestFeature_SystemFeature;

  return v3;
}

uint64_t __43__REFeature_knownLocationOfInterestFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"knownLocationOfInterest" featureType:1];
  v1 = knownLocationOfInterestFeature_SystemFeature;
  knownLocationOfInterestFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)travelingFeature
{
  if (travelingFeature_onceToken != -1)
  {
    +[REFeature travelingFeature];
  }

  v3 = travelingFeature_SystemFeature;

  return v3;
}

uint64_t __29__REFeature_travelingFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"traveling" featureType:1];
  v1 = travelingFeature_SystemFeature;
  travelingFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)isStationaryFeature
{
  if (isStationaryFeature_onceToken != -1)
  {
    +[REFeature isStationaryFeature];
  }

  v3 = isStationaryFeature_SystemFeature;

  return v3;
}

uint64_t __32__REFeature_isStationaryFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"isStationary" featureType:0];
  v1 = isStationaryFeature_SystemFeature;
  isStationaryFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)deviceMotionFeature
{
  if (deviceMotionFeature_onceToken != -1)
  {
    +[REFeature deviceMotionFeature];
  }

  v3 = deviceMotionFeature_SystemFeature;

  return v3;
}

uint64_t __32__REFeature_deviceMotionFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"deviceMotion" featureType:1];
  v1 = deviceMotionFeature_SystemFeature;
  deviceMotionFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)motionFeature
{
  if (motionFeature_onceToken != -1)
  {
    +[REFeature motionFeature];
  }

  v3 = motionFeature_SystemFeature;

  return v3;
}

uint64_t __26__REFeature_motionFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"motion" featureType:1];
  v1 = motionFeature_SystemFeature;
  motionFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)itemIdentifierFeature
{
  if (itemIdentifierFeature_onceToken != -1)
  {
    +[REFeature itemIdentifierFeature];
  }

  v3 = itemIdentifierFeature_SystemFeature;

  return v3;
}

uint64_t __34__REFeature_itemIdentifierFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"itemIdentifier" featureType:1];
  v1 = itemIdentifierFeature_SystemFeature;
  itemIdentifierFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)isSiriActionFeature
{
  if (isSiriActionFeature_onceToken != -1)
  {
    +[REFeature isSiriActionFeature];
  }

  v3 = isSiriActionFeature_SystemFeature;

  return v3;
}

uint64_t __32__REFeature_isSiriActionFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"isSiriAction" featureType:0];
  v1 = isSiriActionFeature_SystemFeature;
  isSiriActionFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)isDeveloperDonationFeature
{
  if (isDeveloperDonationFeature_onceToken != -1)
  {
    +[REFeature isDeveloperDonationFeature];
  }

  v3 = isDeveloperDonationFeature_SystemFeature;

  return v3;
}

uint64_t __39__REFeature_isDeveloperDonationFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"isDeveloperDonation" featureType:0];
  v1 = isDeveloperDonationFeature_SystemFeature;
  isDeveloperDonationFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)siriActionHasRelevanceProvidersFeature
{
  if (siriActionHasRelevanceProvidersFeature_onceToken != -1)
  {
    +[REFeature siriActionHasRelevanceProvidersFeature];
  }

  v3 = siriActionHasRelevanceProvidersFeature_SystemFeature;

  return v3;
}

uint64_t __51__REFeature_siriActionHasRelevanceProvidersFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"siriActionHasRelevanceProviders" featureType:0];
  v1 = siriActionHasRelevanceProvidersFeature_SystemFeature;
  siriActionHasRelevanceProvidersFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)siriActionDailyAveragePerformedCountFeature
{
  if (siriActionDailyAveragePerformedCountFeature_onceToken != -1)
  {
    +[REFeature siriActionDailyAveragePerformedCountFeature];
  }

  v3 = siriActionDailyAveragePerformedCountFeature_SystemFeature;

  return v3;
}

uint64_t __56__REFeature_siriActionDailyAveragePerformedCountFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"siriActionDailyAveragePerformedCount" featureType:2];
  v1 = siriActionDailyAveragePerformedCountFeature_SystemFeature;
  siriActionDailyAveragePerformedCountFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)siriActionPerformedCountFeature
{
  if (siriActionPerformedCountFeature_onceToken != -1)
  {
    +[REFeature siriActionPerformedCountFeature];
  }

  v3 = siriActionPerformedCountFeature_SystemFeature;

  return v3;
}

uint64_t __44__REFeature_siriActionPerformedCountFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"siriActionPerformedCount" featureType:2];
  v1 = siriActionPerformedCountFeature_SystemFeature;
  siriActionPerformedCountFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)nowPlayingStateFeature
{
  if (nowPlayingStateFeature_onceToken != -1)
  {
    +[REFeature nowPlayingStateFeature];
  }

  v3 = nowPlayingStateFeature_SystemFeature;

  return v3;
}

uint64_t __35__REFeature_nowPlayingStateFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"nowPlayingState" featureType:0];
  v1 = nowPlayingStateFeature_SystemFeature;
  nowPlayingStateFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)currentlyPlayingMediaDonationFeature
{
  if (currentlyPlayingMediaDonationFeature_onceToken != -1)
  {
    +[REFeature currentlyPlayingMediaDonationFeature];
  }

  v3 = currentlyPlayingMediaDonationFeature_SystemFeature;

  return v3;
}

uint64_t __49__REFeature_currentlyPlayingMediaDonationFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"currentlyPlayingMediaDonation" featureType:0];
  v1 = currentlyPlayingMediaDonationFeature_SystemFeature;
  currentlyPlayingMediaDonationFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)currentlyPlayingFromAppFeature
{
  if (currentlyPlayingFromAppFeature_onceToken != -1)
  {
    +[REFeature currentlyPlayingFromAppFeature];
  }

  v3 = currentlyPlayingFromAppFeature_SystemFeature;

  return v3;
}

uint64_t __43__REFeature_currentlyPlayingFromAppFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"currentlyPlayingFromApp" featureType:0];
  v1 = currentlyPlayingFromAppFeature_SystemFeature;
  currentlyPlayingFromAppFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)siriActionRoleFeature
{
  if (siriActionRoleFeature_onceToken != -1)
  {
    +[REFeature siriActionRoleFeature];
  }

  v3 = siriActionRoleFeature_SystemFeature;

  return v3;
}

uint64_t __34__REFeature_siriActionRoleFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"siriActionRole" featureType:1];
  v1 = siriActionRoleFeature_SystemFeature;
  siriActionRoleFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)activeWorkoutFeature
{
  if (activeWorkoutFeature_onceToken != -1)
  {
    +[REFeature activeWorkoutFeature];
  }

  v3 = activeWorkoutFeature_SystemFeature;

  return v3;
}

uint64_t __33__REFeature_activeWorkoutFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"activeWorkout" featureType:0];
  v1 = activeWorkoutFeature_SystemFeature;
  activeWorkoutFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)workoutStateFeature
{
  if (workoutStateFeature_onceToken != -1)
  {
    +[REFeature workoutStateFeature];
  }

  v3 = workoutStateFeature_SystemFeature;

  return v3;
}

uint64_t __32__REFeature_workoutStateFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"workoutState" featureType:0];
  v1 = workoutStateFeature_SystemFeature;
  workoutStateFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)dailyAverageWorkoutCountFeature
{
  if (dailyAverageWorkoutCountFeature_onceToken != -1)
  {
    +[REFeature dailyAverageWorkoutCountFeature];
  }

  v3 = dailyAverageWorkoutCountFeature_SystemFeature;

  return v3;
}

uint64_t __44__REFeature_dailyAverageWorkoutCountFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"dailyAverageWorkoutCount" featureType:2];
  v1 = dailyAverageWorkoutCountFeature_SystemFeature;
  dailyAverageWorkoutCountFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)performedWorkoutCountFeature
{
  if (performedWorkoutCountFeature_onceToken != -1)
  {
    +[REFeature performedWorkoutCountFeature];
  }

  v3 = performedWorkoutCountFeature_SystemFeature;

  return v3;
}

uint64_t __41__REFeature_performedWorkoutCountFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"performedWorkoutCount" featureType:2];
  v1 = performedWorkoutCountFeature_SystemFeature;
  performedWorkoutCountFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)activeEnergyCompletionFeature
{
  if (activeEnergyCompletionFeature_onceToken != -1)
  {
    +[REFeature activeEnergyCompletionFeature];
  }

  v3 = activeEnergyCompletionFeature_SystemFeature;

  return v3;
}

uint64_t __42__REFeature_activeEnergyCompletionFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"activeEnergyCompletion" featureType:2];
  v1 = activeEnergyCompletionFeature_SystemFeature;
  activeEnergyCompletionFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)exerciseTimeCompletionFeature
{
  if (exerciseTimeCompletionFeature_onceToken != -1)
  {
    +[REFeature exerciseTimeCompletionFeature];
  }

  v3 = exerciseTimeCompletionFeature_SystemFeature;

  return v3;
}

uint64_t __42__REFeature_exerciseTimeCompletionFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"exerciseTimeCompletion" featureType:2];
  v1 = exerciseTimeCompletionFeature_SystemFeature;
  exerciseTimeCompletionFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)standHourCompletionFeature
{
  if (standHourCompletionFeature_onceToken != -1)
  {
    +[REFeature standHourCompletionFeature];
  }

  v3 = standHourCompletionFeature_SystemFeature;

  return v3;
}

uint64_t __39__REFeature_standHourCompletionFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"standHourCompletion" featureType:2];
  v1 = standHourCompletionFeature_SystemFeature;
  standHourCompletionFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)activitySummaryFeature
{
  if (activitySummaryFeature_onceToken != -1)
  {
    +[REFeature activitySummaryFeature];
  }

  v3 = activitySummaryFeature_SystemFeature;

  return v3;
}

uint64_t __35__REFeature_activitySummaryFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"activitySummary" featureType:0];
  v1 = activitySummaryFeature_SystemFeature;
  activitySummaryFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)bulletinFeature
{
  if (bulletinFeature_onceToken != -1)
  {
    +[REFeature bulletinFeature];
  }

  v3 = bulletinFeature_SystemFeature;

  return v3;
}

uint64_t __28__REFeature_bulletinFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"bulletin" featureType:0];
  v1 = bulletinFeature_SystemFeature;
  bulletinFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)companionAppUsageFeature
{
  if (companionAppUsageFeature_onceToken != -1)
  {
    +[REFeature companionAppUsageFeature];
  }

  v3 = companionAppUsageFeature_SystemFeature;

  return v3;
}

uint64_t __37__REFeature_companionAppUsageFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"companionAppUsage" featureType:2];
  v1 = companionAppUsageFeature_SystemFeature;
  companionAppUsageFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)isConnectedToCarFeature
{
  if (isConnectedToCarFeature_onceToken != -1)
  {
    +[REFeature isConnectedToCarFeature];
  }

  v3 = isConnectedToCarFeature_SystemFeature;

  return v3;
}

uint64_t __36__REFeature_isConnectedToCarFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"isConnectedToCar" featureType:0];
  v1 = isConnectedToCarFeature_SystemFeature;
  isConnectedToCarFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)isConnectedToBluetoothSpeakerFeature
{
  if (isConnectedToBluetoothSpeakerFeature_onceToken != -1)
  {
    +[REFeature isConnectedToBluetoothSpeakerFeature];
  }

  v3 = isConnectedToBluetoothSpeakerFeature_SystemFeature;

  return v3;
}

uint64_t __49__REFeature_isConnectedToBluetoothSpeakerFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"isConnectedToBluetoothSpeaker" featureType:0];
  v1 = isConnectedToBluetoothSpeakerFeature_SystemFeature;
  isConnectedToBluetoothSpeakerFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)bluetoothDeviceFeature
{
  if (bluetoothDeviceFeature_onceToken != -1)
  {
    +[REFeature bluetoothDeviceFeature];
  }

  v3 = bluetoothDeviceFeature_SystemFeature;

  return v3;
}

uint64_t __35__REFeature_bluetoothDeviceFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"bluetoothDevice" featureType:0];
  v1 = bluetoothDeviceFeature_SystemFeature;
  bluetoothDeviceFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)coreBehaviorShortcutTypeFeature
{
  if (coreBehaviorShortcutTypeFeature_onceToken != -1)
  {
    +[REFeature coreBehaviorShortcutTypeFeature];
  }

  v3 = coreBehaviorShortcutTypeFeature_SystemFeature;

  return v3;
}

uint64_t __44__REFeature_coreBehaviorShortcutTypeFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"coreBehaviorShortcutType" featureType:1];
  v1 = coreBehaviorShortcutTypeFeature_SystemFeature;
  coreBehaviorShortcutTypeFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)coreBehaviorEventIdentifierHashFeature
{
  if (coreBehaviorEventIdentifierHashFeature_onceToken != -1)
  {
    +[REFeature coreBehaviorEventIdentifierHashFeature];
  }

  v3 = coreBehaviorEventIdentifierHashFeature_SystemFeature;

  return v3;
}

uint64_t __51__REFeature_coreBehaviorEventIdentifierHashFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"coreBehaviorEventIdentifierHash" featureType:1];
  v1 = coreBehaviorEventIdentifierHashFeature_SystemFeature;
  coreBehaviorEventIdentifierHashFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)coreBehaviorAppIdentifierHashFeature
{
  if (coreBehaviorAppIdentifierHashFeature_onceToken != -1)
  {
    +[REFeature coreBehaviorAppIdentifierHashFeature];
  }

  v3 = coreBehaviorAppIdentifierHashFeature_SystemFeature;

  return v3;
}

uint64_t __49__REFeature_coreBehaviorAppIdentifierHashFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"coreBehaviorAppIdentifierHash" featureType:1];
  v1 = coreBehaviorAppIdentifierHashFeature_SystemFeature;
  coreBehaviorAppIdentifierHashFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)coreBehaviorTimePredictionFeature
{
  if (coreBehaviorTimePredictionFeature_onceToken != -1)
  {
    +[REFeature coreBehaviorTimePredictionFeature];
  }

  v3 = coreBehaviorTimePredictionFeature_SystemFeature;

  return v3;
}

uint64_t __46__REFeature_coreBehaviorTimePredictionFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"coreBehaviorTimePrediction" featureType:2];
  v1 = coreBehaviorTimePredictionFeature_SystemFeature;
  coreBehaviorTimePredictionFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)coreBehaviorTimeCoarsePredictionFeature
{
  if (coreBehaviorTimeCoarsePredictionFeature_onceToken != -1)
  {
    +[REFeature coreBehaviorTimeCoarsePredictionFeature];
  }

  v3 = coreBehaviorTimeCoarsePredictionFeature_SystemFeature;

  return v3;
}

uint64_t __52__REFeature_coreBehaviorTimeCoarsePredictionFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"coreBehaviorTimeCoarsePrediction" featureType:2];
  v1 = coreBehaviorTimeCoarsePredictionFeature_SystemFeature;
  coreBehaviorTimeCoarsePredictionFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)coreBehaviorDayPredictionFeature
{
  if (coreBehaviorDayPredictionFeature_onceToken != -1)
  {
    +[REFeature coreBehaviorDayPredictionFeature];
  }

  v3 = coreBehaviorDayPredictionFeature_SystemFeature;

  return v3;
}

uint64_t __45__REFeature_coreBehaviorDayPredictionFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"coreBehaviorDayPrediction" featureType:2];
  v1 = coreBehaviorDayPredictionFeature_SystemFeature;
  coreBehaviorDayPredictionFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)coreBehaviorDayCoarsePredictionFeature
{
  if (coreBehaviorDayCoarsePredictionFeature_onceToken != -1)
  {
    +[REFeature coreBehaviorDayCoarsePredictionFeature];
  }

  v3 = coreBehaviorDayCoarsePredictionFeature_SystemFeature;

  return v3;
}

uint64_t __51__REFeature_coreBehaviorDayCoarsePredictionFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"coreBehaviorDayCoarsePrediction" featureType:2];
  v1 = coreBehaviorDayCoarsePredictionFeature_SystemFeature;
  coreBehaviorDayCoarsePredictionFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)coreBehaviorLocationPredictionFeature
{
  if (coreBehaviorLocationPredictionFeature_onceToken != -1)
  {
    +[REFeature coreBehaviorLocationPredictionFeature];
  }

  v3 = coreBehaviorLocationPredictionFeature_SystemFeature;

  return v3;
}

uint64_t __50__REFeature_coreBehaviorLocationPredictionFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"coreBehaviorLocationPrediction" featureType:2];
  v1 = coreBehaviorLocationPredictionFeature_SystemFeature;
  coreBehaviorLocationPredictionFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (REFeature)coreBehaviorLocationCoarsePredictionFeature
{
  if (coreBehaviorLocationCoarsePredictionFeature_onceToken != -1)
  {
    +[REFeature coreBehaviorLocationCoarsePredictionFeature];
  }

  v3 = coreBehaviorLocationCoarsePredictionFeature_SystemFeature;

  return v3;
}

uint64_t __56__REFeature_coreBehaviorLocationCoarsePredictionFeature__block_invoke()
{
  v0 = [REFeature featureWithName:@"coreBehaviorLocationCoarsePrediction" featureType:2];
  v1 = coreBehaviorLocationCoarsePredictionFeature_SystemFeature;
  coreBehaviorLocationCoarsePredictionFeature_SystemFeature = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)systemFeatureNames
{
  if (systemFeatureNames_onceToken != -1)
  {
    +[REFeature systemFeatureNames];
  }

  v3 = systemFeatureNames_FeatureNames;

  return v3;
}

uint64_t __31__REFeature_systemFeatureNames__block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithArray:&unk_283BBDA10];
  v1 = systemFeatureNames_FeatureNames;
  systemFeatureNames_FeatureNames = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)featuresFromSource:(id)a3
{
  v3 = [REScriptProcessor processorWithSource:a3];
  v4 = [v3 features];
  v5 = [REFeatureSet featureSetWithFeatures:v4];

  return v5;
}

+ (id)featuresFromSource:(id)a3 withNames:(id)a4
{
  v5 = a4;
  v6 = [REScriptProcessor processorWithSource:a3];
  v7 = [MEMORY[0x277CBEB98] setWithArray:v5];

  v8 = [v6 featuresWithNames:v7];

  v9 = [REFeatureSet featureSetWithFeatures:v8];

  return v9;
}

+ (id)featuresFromSourceAtPath:(id)a3
{
  v3 = [REScriptProcessor processorWithPath:a3];
  v4 = [v3 features];
  v5 = [REFeatureSet featureSetWithFeatures:v4];

  return v5;
}

+ (id)featuresFromSourceAtPath:(id)a3 withNames:(id)a4
{
  v5 = a4;
  v6 = [REScriptProcessor processorWithPath:a3];
  v7 = [MEMORY[0x277CBEB98] setWithArray:v5];

  v8 = [v6 featuresWithNames:v7];

  v9 = [REFeatureSet featureSetWithFeatures:v8];

  return v9;
}

@end