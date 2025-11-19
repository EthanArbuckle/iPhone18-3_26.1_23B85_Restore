@interface SMMusicTrack
- (SMMusicTrack)init;
- (double)duration;
- (double)startTime;
@end

@implementation SMMusicTrack

- (double)startTime
{
  v2 = self;
  MusicTrack.startTime.getter();
  v4 = v3;

  return v4;
}

- (double)duration
{
  v2 = self;
  MusicTrack.duration.getter();
  v4 = v3;

  return v4;
}

- (SMMusicTrack)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end