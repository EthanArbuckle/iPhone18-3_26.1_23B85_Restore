@interface SensorAccessDuration
- (NSString)description;
- (id)init:(unint64_t)init :(unint64_t)a4 :(unint64_t)a5;
@end

@implementation SensorAccessDuration

- (id)init:(unint64_t)init :(unint64_t)a4 :(unint64_t)a5
{
  *(&self->super.isa + OBJC_IVAR___SensorAccessDuration_remainingMicrophoneDurationNanoSeconds) = init;
  *(&self->super.isa + OBJC_IVAR___SensorAccessDuration_remainingCameraDurationNanoSeconds) = a4;
  *(&self->super.isa + OBJC_IVAR___SensorAccessDuration_remainingFaceIDDurationNanoSeconds) = a5;
  v6.receiver = self;
  v6.super_class = SensorAccessDuration;
  return [(SensorAccessDuration *)&v6 init];
}

- (NSString)description
{
  selfCopy = self;
  SensorAccessDuration.description.getter();

  v3 = sub_2655E63EC();

  return v3;
}

@end