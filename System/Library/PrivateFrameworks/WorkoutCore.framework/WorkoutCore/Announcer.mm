@interface Announcer
- (_TtC11WorkoutCore9Announcer)init;
- (double)estimateDurationOf:(id)of;
- (void)announceWithWorkoutEventType:(int64_t)type;
- (void)dealloc;
- (void)stopSpeaking;
@end

@implementation Announcer

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC11WorkoutCore9Announcer_ringerNotifyToken;
  swift_beginAccess();
  LODWORD(v3) = *(&self->super.isa + v3);
  selfCopy = self;
  notify_cancel(v3);
  v5 = OBJC_IVAR____TtC11WorkoutCore9Announcer_ringerStateToken;
  swift_beginAccess();
  notify_cancel(*(&selfCopy->super.isa + v5));
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v6, selfCopy);

  v7.receiver = selfCopy;
  v7.super_class = type metadata accessor for Announcer();
  [(Announcer *)&v7 dealloc];
}

- (void)announceWithWorkoutEventType:(int64_t)type
{
  selfCopy = self;
  Announcer.announce(workoutEventType:)(type);
}

- (void)stopSpeaking
{
  selfCopy = self;
  Announcer.stopSpeaking()();
}

- (double)estimateDurationOf:(id)of
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  v9 = Announcer.estimateDuration(of:)(v8);

  return v9;
}

- (_TtC11WorkoutCore9Announcer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end