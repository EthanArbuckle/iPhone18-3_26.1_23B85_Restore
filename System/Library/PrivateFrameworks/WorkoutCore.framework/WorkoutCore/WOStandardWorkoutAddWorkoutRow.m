@interface WOStandardWorkoutAddWorkoutRow
- (WOStandardWorkoutAddWorkoutRow)init;
- (WOStandardWorkoutAddWorkoutRow)initWithActivityType:(id)a3;
- (int64_t)type;
- (void)setType:(int64_t)a3;
@end

@implementation WOStandardWorkoutAddWorkoutRow

- (int64_t)type
{
  v3 = OBJC_IVAR___WOStandardWorkoutAddWorkoutRow_type;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setType:(int64_t)a3
{
  v5 = OBJC_IVAR___WOStandardWorkoutAddWorkoutRow_type;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (WOStandardWorkoutAddWorkoutRow)initWithActivityType:(id)a3
{
  v3 = a3;
  v4 = specialized StandardWorkoutAddWorkoutRow.init(activityType:)(v3);

  return v4;
}

- (WOStandardWorkoutAddWorkoutRow)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end