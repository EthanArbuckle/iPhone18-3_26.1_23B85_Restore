@interface WOStandardWorkoutAddWorkoutRow
- (WOStandardWorkoutAddWorkoutRow)init;
- (WOStandardWorkoutAddWorkoutRow)initWithActivityType:(id)type;
- (int64_t)type;
- (void)setType:(int64_t)type;
@end

@implementation WOStandardWorkoutAddWorkoutRow

- (int64_t)type
{
  v3 = OBJC_IVAR___WOStandardWorkoutAddWorkoutRow_type;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setType:(int64_t)type
{
  v5 = OBJC_IVAR___WOStandardWorkoutAddWorkoutRow_type;
  swift_beginAccess();
  *(self + v5) = type;
}

- (WOStandardWorkoutAddWorkoutRow)initWithActivityType:(id)type
{
  typeCopy = type;
  v4 = specialized StandardWorkoutAddWorkoutRow.init(activityType:)(typeCopy);

  return v4;
}

- (WOStandardWorkoutAddWorkoutRow)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end