@interface CompoundActivityTypeProvider
- (BOOL)containsActivityType:(id)a3;
- (BOOL)isHiddenActivityType:(id)a3;
- (id)activityTypeKeyForActivityType:(id)a3;
- (id)didPopulateBlock;
- (id)lastGoalForActivityType:(id)a3;
- (id)mostRecentOccurrenceDateForActivityType:(id)a3;
- (id)workoutActivityTypesInFrequencyOrderDescendingWithDefaultActivities:(id)a3 unsupportedActivities:(id)a4;
- (int64_t)inferLocationTypeForActivityTypeIdentifier:(unint64_t)a3;
- (int64_t)numberOfCompletedActivitiesForType:(id)a3;
- (void)registerWorkoutOccurrenceWithActivityType:(id)a3 goal:(id)a4 date:(id)a5;
- (void)setActivityPickerActivityMoveMode:(int64_t)a3 defaultActivityTypes:(id)a4;
- (void)setActivityPickerWheelchairMode:(BOOL)a3;
- (void)setDidPopulateBlock:(id)a3;
@end

@implementation CompoundActivityTypeProvider

- (id)lastGoalForActivityType:(id)a3
{
  v3 = a3;

  v4 = CompoundActivityTypeProvider.lastGoal(for:)(v3);

  return v4;
}

- (id)activityTypeKeyForActivityType:(id)a3
{
  v3 = a3;

  v4 = specialized CompoundActivityTypeProvider.activityTypeKey(for:)(v3);
  v6 = v5;

  v7 = MEMORY[0x20F2E6C00](v4, v6);

  return v7;
}

- (id)workoutActivityTypesInFrequencyOrderDescendingWithDefaultActivities:(id)a3 unsupportedActivities:(id)a4
{
  _sSo8NSObjectCMaTm_1(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  CompoundActivityTypeProvider.workoutActivityTypesInFrequencyOrderDescending(withDefaultActivities:unsupportedActivities:)(v4, v5);

  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (void)setActivityPickerWheelchairMode:(BOOL)a3
{

  CompoundActivityTypeProvider.setActivityPickerWheelchairMode(wheelchairMode:)(a3);
}

- (void)setActivityPickerActivityMoveMode:(int64_t)a3 defaultActivityTypes:(id)a4
{
  _sSo8NSObjectCMaTm_1(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  CompoundActivityTypeProvider.setActivityPickerActivityMoveMode(_:defaultActivityTypes:)(a3, v5);
}

- (id)didPopulateBlock
{
  swift_beginAccess();
  if (*(self + 7))
  {
    v3 = *(self + 8);
    aBlock[4] = *(self + 7);
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_21_0;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDidPopulateBlock:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = _sIeyB_Ieg_TRTA_3;
  }

  else
  {
    v5 = 0;
  }

  swift_beginAccess();
  v6 = *(self + 7);
  v7 = *(self + 8);
  *(self + 7) = v4;
  *(self + 8) = v5;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
}

- (BOOL)isHiddenActivityType:(id)a3
{
  v3 = a3;

  v4 = CompoundActivityTypeProvider.isHidden(activityType:)(v3);

  return v4 & 1;
}

- (BOOL)containsActivityType:(id)a3
{
  v3 = a3;

  v4 = CompoundActivityTypeProvider.isHidden(activityType:)(v3);

  return (v4 & 1) == 0;
}

- (id)mostRecentOccurrenceDateForActivityType:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = a3;

  CompoundActivityTypeProvider.mostRecentOccurrenceDate(for:)(v8, v7);

  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
    v12 = isa;
  }

  return v12;
}

- (void)registerWorkoutOccurrenceWithActivityType:(id)a3 goal:(id)a4 date:(id)a5
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19[-v9];
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = objc_opt_self();
  v17 = a3;

  if ([v16 isRunningInStoreDemoMode])
  {

    (*(v12 + 8))(v15, v11);
  }

  else
  {
    v18 = *(self + 2);
    (*(v12 + 16))(v10, v15, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    ActivityPickerListStore.addActivityType(_:date:)(v17, v10);

    _s10Foundation4DateVSgWOhTm_9(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    (*(v12 + 8))(v15, v11);
  }
}

- (int64_t)numberOfCompletedActivitiesForType:(id)a3
{
  v3 = a3;

  v4 = CompoundActivityTypeProvider.numberOfCompletedActivities(for:)(v3);

  return v4;
}

- (int64_t)inferLocationTypeForActivityTypeIdentifier:(unint64_t)a3
{

  v4 = CompoundActivityTypeProvider.inferLocationType(for:)(a3);

  return v4;
}

@end