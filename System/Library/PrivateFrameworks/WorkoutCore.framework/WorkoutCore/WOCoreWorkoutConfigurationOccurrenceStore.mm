@interface WOCoreWorkoutConfigurationOccurrenceStore
- (WOCoreWorkoutConfigurationOccurrenceStore)init;
- (id)goalConfigurationFor:(id)a3 goal:(id)a4;
- (void)dealloc;
@end

@implementation WOCoreWorkoutConfigurationOccurrenceStore

- (void)dealloc
{
  v3 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_syncWorkoutEntityNotifyToken;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  v5 = self;
  if (v4 != -1)
  {
    notify_cancel(v4);
  }

  v6.receiver = v5;
  v6.super_class = type metadata accessor for WorkoutConfigurationOccurrenceStore();
  [(WOCoreWorkoutConfigurationOccurrenceStore *)&v6 dealloc];
}

- (id)goalConfigurationFor:(id)a3 goal:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = WorkoutConfigurationOccurrenceStore.goalConfiguration(for:goal:)(v6, a4);

  return v9;
}

- (WOCoreWorkoutConfigurationOccurrenceStore)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end