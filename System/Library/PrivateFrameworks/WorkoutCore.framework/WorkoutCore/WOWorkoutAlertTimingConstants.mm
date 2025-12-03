@interface WOWorkoutAlertTimingConstants
+ (double)alertHoldoffTimeWithLiveWorkoutConfiguration:(id)configuration;
+ (double)alertHoldoffTimeWithWorkoutConfiguration:(id)configuration;
- (WOWorkoutAlertTimingConstants)init;
@end

@implementation WOWorkoutAlertTimingConstants

+ (double)alertHoldoffTimeWithWorkoutConfiguration:(id)configuration
{
  type metadata accessor for IntervalWorkoutConfiguration();
  v3 = swift_dynamicCastClass();
  result = 60.0;
  if (v3)
  {
    return 10.0;
  }

  return result;
}

+ (double)alertHoldoffTimeWithLiveWorkoutConfiguration:(id)configuration
{
  v3 = *(configuration + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for IntervalWorkoutConfiguration();
  v4 = swift_dynamicCastClass();
  result = 60.0;
  if (v4)
  {
    return 10.0;
  }

  return result;
}

- (WOWorkoutAlertTimingConstants)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for WorkoutAlertTimingConstants();
  return [(WOWorkoutAlertTimingConstants *)&v3 init];
}

@end