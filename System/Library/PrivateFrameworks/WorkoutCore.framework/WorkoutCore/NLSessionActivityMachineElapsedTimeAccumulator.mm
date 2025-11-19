@interface NLSessionActivityMachineElapsedTimeAccumulator
- (double)elapsedTimeAtPresentationTime:(id)a3;
- (void)sessionActivity:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)setElapsedTime:(double)a3;
@end

@implementation NLSessionActivityMachineElapsedTimeAccumulator

- (void)setElapsedTime:(double)a3
{
  v4 = self;
  MachineElapsedTimeAccumulator.setElapsedTime(_:)(a3);
}

- (double)elapsedTimeAtPresentationTime:(id)a3
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  MachineElapsedTimeAccumulator.elapsedTime(at:)();
  v11 = v10;

  (*(v5 + 8))(v8, v4);
  return v11;
}

- (void)sessionActivity:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v8 = a3;
  v9 = self;
  specialized MachineElapsedTimeAccumulator.sessionActivity(_:didChangeFrom:to:)(a4, a5);
}

@end