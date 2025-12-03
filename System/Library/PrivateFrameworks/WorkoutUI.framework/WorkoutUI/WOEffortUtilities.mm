@interface WOEffortUtilities
+ (id)analyticsTaskIdentifierWithWorkout:(id)workout;
+ (id)analyticsTaskIdentifierWithWorkoutActivity:(id)activity;
+ (id)fetchDemoExertionForWorkout:(id)workout;
+ (void)saveWithQuantity:(id)quantity workout:(id)workout workoutActivity:(id)activity healthStore:(id)store;
+ (void)saveWithQuantity:(id)quantity workout:(id)workout workoutActivity:(id)activity healthStore:(id)store completion:(id)completion;
+ (void)sendDidViewTrainingLoadAnalyticsFrom:(id)from;
+ (void)sendPostWorkoutAnalyticsWithWorkout:(id)workout perceivedEffortQuantity:(id)quantity estimatedEffortQuantity:(id)effortQuantity healthStore:(id)store;
+ (void)sendPostWorkoutAnalyticsWithWorkoutActivity:(id)activity perceivedEffortQuantity:(id)quantity estimatedEffortQuantity:(id)effortQuantity healthStore:(id)store;
+ (void)sendUpdatedEffortAnalyticsEventWithWorkout:(id)workout workoutActivity:(id)activity perceivedEffortQuantity:(id)quantity estimatedEffortQuantity:(id)effortQuantity;
- (WOEffortUtilities)init;
@end

@implementation WOEffortUtilities

+ (void)saveWithQuantity:(id)quantity workout:(id)workout workoutActivity:(id)activity healthStore:(id)store
{
  quantityCopy = quantity;
  workoutCopy = workout;
  activityCopy = activity;
  storeCopy = store;
  specialized static EffortUtilities.save(quantity:workout:workoutActivity:healthStore:completion:)(quantity, workoutCopy, activity, storeCopy, closure #1 in static EffortUtilities.save(quantity:workout:workoutActivity:healthStore:), 0);
}

+ (void)saveWithQuantity:(id)quantity workout:(id)workout workoutActivity:(id)activity healthStore:(id)store completion:(id)completion
{
  v11 = _Block_copy(completion);
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v11 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ();
  }

  else
  {
    v12 = 0;
  }

  quantityCopy = quantity;
  workoutCopy = workout;
  activityCopy = activity;
  storeCopy = store;
  specialized static EffortUtilities.save(quantity:workout:workoutActivity:healthStore:completion:)(quantity, workoutCopy, activity, storeCopy, v11, v12);
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ())?(v11);
}

+ (id)fetchDemoExertionForWorkout:(id)workout
{
  workoutCopy = workout;
  v4 = specialized static EffortUtilities.fetchDemoExertion(forWorkout:)(workoutCopy);

  return v4;
}

- (WOEffortUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for EffortUtilities();
  return [(WOEffortUtilities *)&v3 init];
}

+ (id)analyticsTaskIdentifierWithWorkout:(id)workout
{
  workoutCopy = workout;
  v4 = specialized static EffortUtilities.analyticsTaskIdentifier(workout:)(workoutCopy);
  v6 = v5;

  v7 = MEMORY[0x20F30BAD0](v4, v6);

  return v7;
}

+ (id)analyticsTaskIdentifierWithWorkoutActivity:(id)activity
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  activityCopy = activity;
  uUID = [activityCopy UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = UUID.uuidString.getter();
  v15 = 0xD000000000000016;
  v16 = 0x800000020CBA4400;
  MEMORY[0x20F30BC00](v10);

  v11 = v15;
  v12 = v16;
  (*(v5 + 8))(v7, v4);
  v13 = MEMORY[0x20F30BAD0](v11, v12);

  return v13;
}

+ (void)sendDidViewTrainingLoadAnalyticsFrom:(id)from
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  specialized static EffortUtilities.sendDidViewTrainingLoadAnalytics(from:)();
  (*(v4 + 8))(v6, v3);
}

+ (void)sendPostWorkoutAnalyticsWithWorkout:(id)workout perceivedEffortQuantity:(id)quantity estimatedEffortQuantity:(id)effortQuantity healthStore:(id)store
{
  workoutCopy = workout;
  quantityCopy = quantity;
  effortQuantityCopy = effortQuantity;
  storeCopy = store;
  v17[0] = 0xD000000000000025;
  v17[1] = 0x800000020CBA4420;
  v17[2] = [workoutCopy workoutActivityType];
  IsIndoor = _HKWorkoutIsIndoor(workoutCopy);
  quantityCopy2 = quantity;
  effortQuantityCopy2 = effortQuantity;
  v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v12 = quantityCopy;
  v13 = effortQuantityCopy;

  v14 = v12;
  v15 = v13;

  _s9WorkoutUI15EffortUtilitiesC27sendAnalyticsEventIfAllowed33_1423374DD11350007FB77D5156E422BBLLyyAA0fG0AELL_pFZTf4en_nAA05EndOfafG0AELLV_Tt0g5(v17);

  specialized static EffortUtilities._sendLoadAndVitalsAnalyticsEvent(healthStore:)(storeCopy);
}

+ (void)sendPostWorkoutAnalyticsWithWorkoutActivity:(id)activity perceivedEffortQuantity:(id)quantity estimatedEffortQuantity:(id)effortQuantity healthStore:(id)store
{
  activityCopy = activity;
  quantityCopy = quantity;
  effortQuantityCopy = effortQuantity;
  storeCopy = store;
  specialized static EffortUtilities.sendPostWorkoutAnalytics(workoutActivity:perceivedEffortQuantity:estimatedEffortQuantity:healthStore:)(activityCopy, quantity, effortQuantity, storeCopy);
}

+ (void)sendUpdatedEffortAnalyticsEventWithWorkout:(id)workout workoutActivity:(id)activity perceivedEffortQuantity:(id)quantity estimatedEffortQuantity:(id)effortQuantity
{
  workoutCopy = workout;
  activityCopy = activity;
  quantityCopy = quantity;
  effortQuantityCopy = effortQuantity;
  specialized static EffortUtilities.sendUpdatedEffortAnalyticsEvent(workout:workoutActivity:perceivedEffortQuantity:estimatedEffortQuantity:)(workoutCopy, activity, quantity, effortQuantity);
}

@end