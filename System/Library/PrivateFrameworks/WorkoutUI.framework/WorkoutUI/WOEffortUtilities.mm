@interface WOEffortUtilities
+ (id)analyticsTaskIdentifierWithWorkout:(id)a3;
+ (id)analyticsTaskIdentifierWithWorkoutActivity:(id)a3;
+ (id)fetchDemoExertionForWorkout:(id)a3;
+ (void)saveWithQuantity:(id)a3 workout:(id)a4 workoutActivity:(id)a5 healthStore:(id)a6;
+ (void)saveWithQuantity:(id)a3 workout:(id)a4 workoutActivity:(id)a5 healthStore:(id)a6 completion:(id)a7;
+ (void)sendDidViewTrainingLoadAnalyticsFrom:(id)a3;
+ (void)sendPostWorkoutAnalyticsWithWorkout:(id)a3 perceivedEffortQuantity:(id)a4 estimatedEffortQuantity:(id)a5 healthStore:(id)a6;
+ (void)sendPostWorkoutAnalyticsWithWorkoutActivity:(id)a3 perceivedEffortQuantity:(id)a4 estimatedEffortQuantity:(id)a5 healthStore:(id)a6;
+ (void)sendUpdatedEffortAnalyticsEventWithWorkout:(id)a3 workoutActivity:(id)a4 perceivedEffortQuantity:(id)a5 estimatedEffortQuantity:(id)a6;
- (WOEffortUtilities)init;
@end

@implementation WOEffortUtilities

+ (void)saveWithQuantity:(id)a3 workout:(id)a4 workoutActivity:(id)a5 healthStore:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  specialized static EffortUtilities.save(quantity:workout:workoutActivity:healthStore:completion:)(a3, v11, a5, v13, closure #1 in static EffortUtilities.save(quantity:workout:workoutActivity:healthStore:), 0);
}

+ (void)saveWithQuantity:(id)a3 workout:(id)a4 workoutActivity:(id)a5 healthStore:(id)a6 completion:(id)a7
{
  v11 = _Block_copy(a7);
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

  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  specialized static EffortUtilities.save(quantity:workout:workoutActivity:healthStore:completion:)(a3, v14, a5, v16, v11, v12);
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ())?(v11);
}

+ (id)fetchDemoExertionForWorkout:(id)a3
{
  v3 = a3;
  v4 = specialized static EffortUtilities.fetchDemoExertion(forWorkout:)(v3);

  return v4;
}

- (WOEffortUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for EffortUtilities();
  return [(WOEffortUtilities *)&v3 init];
}

+ (id)analyticsTaskIdentifierWithWorkout:(id)a3
{
  v3 = a3;
  v4 = specialized static EffortUtilities.analyticsTaskIdentifier(workout:)(v3);
  v6 = v5;

  v7 = MEMORY[0x20F30BAD0](v4, v6);

  return v7;
}

+ (id)analyticsTaskIdentifierWithWorkoutActivity:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a3;
  v9 = [v8 UUID];
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

+ (void)sendDidViewTrainingLoadAnalyticsFrom:(id)a3
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  specialized static EffortUtilities.sendDidViewTrainingLoadAnalytics(from:)();
  (*(v4 + 8))(v6, v3);
}

+ (void)sendPostWorkoutAnalyticsWithWorkout:(id)a3 perceivedEffortQuantity:(id)a4 estimatedEffortQuantity:(id)a5 healthStore:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16 = a6;
  v17[0] = 0xD000000000000025;
  v17[1] = 0x800000020CBA4420;
  v17[2] = [v9 workoutActivityType];
  IsIndoor = _HKWorkoutIsIndoor(v9);
  v19 = a4;
  v20 = a5;
  v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v12 = v10;
  v13 = v11;

  v14 = v12;
  v15 = v13;

  _s9WorkoutUI15EffortUtilitiesC27sendAnalyticsEventIfAllowed33_1423374DD11350007FB77D5156E422BBLLyyAA0fG0AELL_pFZTf4en_nAA05EndOfafG0AELLV_Tt0g5(v17);

  specialized static EffortUtilities._sendLoadAndVitalsAnalyticsEvent(healthStore:)(v16);
}

+ (void)sendPostWorkoutAnalyticsWithWorkoutActivity:(id)a3 perceivedEffortQuantity:(id)a4 estimatedEffortQuantity:(id)a5 healthStore:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  specialized static EffortUtilities.sendPostWorkoutAnalytics(workoutActivity:perceivedEffortQuantity:estimatedEffortQuantity:healthStore:)(v9, a4, a5, v12);
}

+ (void)sendUpdatedEffortAnalyticsEventWithWorkout:(id)a3 workoutActivity:(id)a4 perceivedEffortQuantity:(id)a5 estimatedEffortQuantity:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  specialized static EffortUtilities.sendUpdatedEffortAnalyticsEvent(workout:workoutActivity:perceivedEffortQuantity:estimatedEffortQuantity:)(v9, a4, a5, a6);
}

@end