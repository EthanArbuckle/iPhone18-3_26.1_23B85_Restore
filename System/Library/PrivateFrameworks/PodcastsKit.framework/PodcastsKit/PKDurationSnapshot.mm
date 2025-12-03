@interface PKDurationSnapshot
- (PKDurationSnapshot)init;
- (PKDurationSnapshot)initWithSnapshotTime:(double)time rate:(float)rate elapsedDuration:(double)duration duration:(double)a6;
@end

@implementation PKDurationSnapshot

- (PKDurationSnapshot)initWithSnapshotTime:(double)time rate:(float)rate elapsedDuration:(double)duration duration:(double)a6
{
  *(&self->super.isa + OBJC_IVAR___PKDurationSnapshot_snapshotTime) = time;
  *(&self->super.isa + OBJC_IVAR___PKDurationSnapshot_rate) = rate;
  *(&self->super.isa + OBJC_IVAR___PKDurationSnapshot_elapsedDuration) = duration;
  *(&self->super.isa + OBJC_IVAR___PKDurationSnapshot_duration) = a6;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DurationSnapshot();
  return [(PKDurationSnapshot *)&v7 init];
}

- (PKDurationSnapshot)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end