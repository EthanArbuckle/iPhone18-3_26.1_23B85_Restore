@interface DataLinkHealthKitHostConnection
- (_TtC11WorkoutCore31DataLinkHealthKitHostConnection)init;
- (void)dealloc;
- (void)workoutSession:(id)session didChangeToState:(int64_t)state fromState:(int64_t)fromState date:(id)date;
- (void)workoutSession:(id)session didDisconnectFromRemoteDeviceWithError:(id)error;
- (void)workoutSession:(id)session didFailWithError:(id)error;
- (void)workoutSession:(id)session didReceiveDataFromRemoteWorkoutSession:(id)workoutSession;
@end

@implementation DataLinkHealthKitHostConnection

- (void)dealloc
{
  if (*(&self->super.isa + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_recorder))
  {
    selfCopy = self;

    DataLinkRecorder.stopSession()();
  }

  else
  {
    selfCopy2 = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for DataLinkHealthKitHostConnection();
  [(DataLinkHealthKitHostConnection *)&v5 dealloc];
}

- (_TtC11WorkoutCore31DataLinkHealthKitHostConnection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)workoutSession:(id)session didChangeToState:(int64_t)state fromState:(int64_t)fromState date:(id)date
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  specialized DataLinkHealthKitHostConnection.workoutSession(_:didChangeTo:from:date:)();
  (*(v7 + 8))(v10, v6);
}

- (void)workoutSession:(id)session didFailWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  selfCopy = self;
  specialized DataLinkHealthKitHostConnection.workoutSession(_:didFailWithError:)(errorCopy);
}

- (void)workoutSession:(id)session didReceiveDataFromRemoteWorkoutSession:(id)workoutSession
{
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = *(v5 + 16);
  if (v6)
  {
    sessionCopy = session;
    selfCopy = self;
    v9 = (v5 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      outlined copy of Data._Representation(v10, *v9);
      specialized DataLinkHealthKitHostConnection.workoutSession(_:didReceiveDataFromRemoteDevice:)(v10, v11);
      outlined consume of Data._Representation(v10, v11);
      v9 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
    sessionCopy2 = session;
  }
}

- (void)workoutSession:(id)session didDisconnectFromRemoteDeviceWithError:(id)error
{
  sessionCopy = session;
  selfCopy = self;
  errorCopy = error;
  specialized DataLinkHealthKitHostConnection.workoutSession(_:didDisconnectFromRemoteDeviceWithError:)(error);
}

@end