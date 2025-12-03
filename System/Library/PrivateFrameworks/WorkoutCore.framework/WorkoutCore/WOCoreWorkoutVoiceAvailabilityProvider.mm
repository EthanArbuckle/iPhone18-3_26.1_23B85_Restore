@interface WOCoreWorkoutVoiceAvailabilityProvider
- (BOOL)isFeatureSupported;
- (WOCoreWorkoutVoiceAvailabilityProvider)init;
@end

@implementation WOCoreWorkoutVoiceAvailabilityProvider

- (BOOL)isFeatureSupported
{
  selfCopy = self;
  v3 = WorkoutVoiceAvailabilityProvider.isFeatureSupported()();

  return v3;
}

- (WOCoreWorkoutVoiceAvailabilityProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end