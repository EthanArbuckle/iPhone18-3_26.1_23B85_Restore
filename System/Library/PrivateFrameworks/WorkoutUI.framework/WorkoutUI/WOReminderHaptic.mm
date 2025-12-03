@interface WOReminderHaptic
- (NSString)identifier;
- (WOReminderHaptic)init;
- (void)setIdentifier:(id)identifier;
- (void)startTimer;
- (void)stopTimer;
@end

@implementation WOReminderHaptic

- (NSString)identifier
{
  v2 = (self + OBJC_IVAR___WOReminderHaptic_identifier);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = MEMORY[0x20F30BAD0](v4, v3);

  return v5;
}

- (void)setIdentifier:(id)identifier
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = (self + OBJC_IVAR___WOReminderHaptic_identifier);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (void)startTimer
{
  selfCopy = self;
  ReminderHaptic.startTimer()();
}

- (void)stopTimer
{
  selfCopy = self;
  ReminderHaptic.stopTimer()();
}

- (WOReminderHaptic)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end