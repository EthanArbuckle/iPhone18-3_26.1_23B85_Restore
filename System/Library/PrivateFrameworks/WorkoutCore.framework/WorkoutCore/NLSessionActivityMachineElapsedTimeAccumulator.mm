@interface NLSessionActivityMachineElapsedTimeAccumulator
- (double)elapsedTimeAtPresentationTime:(id)time;
- (void)sessionActivity:(id)activity didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)setElapsedTime:(double)time;
@end

@implementation NLSessionActivityMachineElapsedTimeAccumulator

- (void)setElapsedTime:(double)time
{
  selfCopy = self;
  MachineElapsedTimeAccumulator.setElapsedTime(_:)(time);
}

- (double)elapsedTimeAtPresentationTime:(id)time
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  MachineElapsedTimeAccumulator.elapsedTime(at:)();
  v11 = v10;

  (*(v5 + 8))(v8, v4);
  return v11;
}

- (void)sessionActivity:(id)activity didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  activityCopy = activity;
  selfCopy = self;
  specialized MachineElapsedTimeAccumulator.sessionActivity(_:didChangeFrom:to:)(state, toState);
}

@end