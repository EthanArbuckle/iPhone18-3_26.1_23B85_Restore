@interface WOCoreWorkoutSignposter
+ (WOCoreWorkoutSignposter)shared;
- (WOCoreWorkoutSignposter)init;
- (void)emitWithSignpost:(int64_t)a3;
@end

@implementation WOCoreWorkoutSignposter

+ (WOCoreWorkoutSignposter)shared
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static WorkoutSignposter.shared;

  return v3;
}

- (void)emitWithSignpost:(int64_t)a3
{
  v4 = self;
  WorkoutSignposter.emit(signpost:)(a3);
}

- (WOCoreWorkoutSignposter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end