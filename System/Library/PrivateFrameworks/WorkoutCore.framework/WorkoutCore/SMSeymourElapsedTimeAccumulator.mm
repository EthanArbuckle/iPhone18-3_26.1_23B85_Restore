@interface SMSeymourElapsedTimeAccumulator
- (SMSeymourElapsedTimeAccumulator)init;
- (double)elapsedTime;
- (double)timeSinceLastSecond;
- (double)videoPlaybackCurrentTime;
- (void)accumulatorDidStartWithStartDate:(id)date handler:(id)handler;
- (void)fireTimer;
@end

@implementation SMSeymourElapsedTimeAccumulator

- (double)videoPlaybackCurrentTime
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Playback();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR___SMSeymourElapsedTimeAccumulator_playback;
  swift_beginAccess();
  outlined init with copy of Playback?(self + v12, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of Playback?(v6, &_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
    return 0.0;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    selfCopy = self;
    static Double.currentMachTimestamp()();
    v16 = Playback.playbackTime(at:)(v15);

    (*(v8 + 8))(v11, v7);
    return v16;
  }
}

- (double)elapsedTime
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  Date.init()();
  SeymourElapsedTimeAccumulator.elapsedTime(at:)(v7);
  v10 = v9;

  (*(v4 + 8))(v7, v3);
  return v10;
}

- (void)accumulatorDidStartWithStartDate:(id)date handler:(id)handler
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  if (date)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for Date();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for Date();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  selfCopy = self;
  SeymourElapsedTimeAccumulator.setupTimer(initialFireInterval:)(0.0);

  outlined destroy of Playback?(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

- (void)fireTimer
{
  selfCopy = self;
  SeymourElapsedTimeAccumulator.fireTimer()();
}

- (double)timeSinceLastSecond
{
  selfCopy = self;
  SeymourElapsedTimeAccumulator.timeUntilNextSecond.getter();
  v4 = v3;

  return 1.0 - v4;
}

- (SMSeymourElapsedTimeAccumulator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end