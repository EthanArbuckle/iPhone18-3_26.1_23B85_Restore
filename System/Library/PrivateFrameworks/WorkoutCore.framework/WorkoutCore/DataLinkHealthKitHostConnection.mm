@interface DataLinkHealthKitHostConnection
- (_TtC11WorkoutCore31DataLinkHealthKitHostConnection)init;
- (void)dealloc;
- (void)workoutSession:(id)a3 didChangeToState:(int64_t)a4 fromState:(int64_t)a5 date:(id)a6;
- (void)workoutSession:(id)a3 didDisconnectFromRemoteDeviceWithError:(id)a4;
- (void)workoutSession:(id)a3 didFailWithError:(id)a4;
- (void)workoutSession:(id)a3 didReceiveDataFromRemoteWorkoutSession:(id)a4;
@end

@implementation DataLinkHealthKitHostConnection

- (void)dealloc
{
  if (*(&self->super.isa + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_recorder))
  {
    v3 = self;

    DataLinkRecorder.stopSession()();
  }

  else
  {
    v4 = self;
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

- (void)workoutSession:(id)a3 didChangeToState:(int64_t)a4 fromState:(int64_t)a5 date:(id)a6
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

- (void)workoutSession:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  specialized DataLinkHealthKitHostConnection.workoutSession(_:didFailWithError:)(v8);
}

- (void)workoutSession:(id)a3 didReceiveDataFromRemoteWorkoutSession:(id)a4
{
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = a3;
    v8 = self;
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
    v12 = a3;
  }
}

- (void)workoutSession:(id)a3 didDisconnectFromRemoteDeviceWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  specialized DataLinkHealthKitHostConnection.workoutSession(_:didDisconnectFromRemoteDeviceWithError:)(a4);
}

@end