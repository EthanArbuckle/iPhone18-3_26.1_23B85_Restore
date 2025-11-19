@interface DataLinkHealthKitClientConnection
- (void)workoutSession:(id)a3 didChangeToState:(int64_t)a4 fromState:(int64_t)a5 date:(id)a6;
- (void)workoutSession:(id)a3 didDisconnectFromRemoteDeviceWithError:(id)a4;
- (void)workoutSession:(id)a3 didFailWithError:(id)a4;
- (void)workoutSession:(id)a3 didReceiveDataFromRemoteDevice:(id)a4;
- (void)workoutSession:(id)a3 didReceiveDataFromRemoteWorkoutSession:(id)a4;
@end

@implementation DataLinkHealthKitClientConnection

- (void)workoutSession:(id)a3 didChangeToState:(int64_t)a4 fromState:(int64_t)a5 date:(id)a6
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  v14 = self;
  specialized DataLinkHealthKitClientConnection.workoutSession(_:didChangeTo:from:date:)(v13);

  (*(v9 + 8))(v12, v8);
}

- (void)workoutSession:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  DataLinkHealthKitClientConnection.workoutSession(_:didFailWithError:)(v6, v8);
}

- (void)workoutSession:(id)a3 didReceiveDataFromRemoteDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  DataLinkHealthKitClientConnection.workoutSession(_:didReceiveDataFromRemoteDevice:)(v6, v8, v10);
  outlined consume of Data._Representation(v8, v10);
}

- (void)workoutSession:(id)a3 didReceiveDataFromRemoteWorkoutSession:(id)a4
{
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  DataLinkHealthKitClientConnection.workoutSession(_:didReceiveDataFromRemoteWorkoutSession:)(v7, v6);
}

- (void)workoutSession:(id)a3 didDisconnectFromRemoteDeviceWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  DataLinkHealthKitClientConnection.workoutSession(_:didDisconnectFromRemoteDeviceWithError:)(v6, a4);
}

@end