@interface DataLinkHealthKitClientConnection
- (void)workoutSession:(id)session didChangeToState:(int64_t)state fromState:(int64_t)fromState date:(id)date;
- (void)workoutSession:(id)session didDisconnectFromRemoteDeviceWithError:(id)error;
- (void)workoutSession:(id)session didFailWithError:(id)error;
- (void)workoutSession:(id)session didReceiveDataFromRemoteDevice:(id)device;
- (void)workoutSession:(id)session didReceiveDataFromRemoteWorkoutSession:(id)workoutSession;
@end

@implementation DataLinkHealthKitClientConnection

- (void)workoutSession:(id)session didChangeToState:(int64_t)state fromState:(int64_t)fromState date:(id)date
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  sessionCopy = session;
  selfCopy = self;
  specialized DataLinkHealthKitClientConnection.workoutSession(_:didChangeTo:from:date:)(sessionCopy);

  (*(v9 + 8))(v12, v8);
}

- (void)workoutSession:(id)session didFailWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  selfCopy = self;
  DataLinkHealthKitClientConnection.workoutSession(_:didFailWithError:)(sessionCopy, errorCopy);
}

- (void)workoutSession:(id)session didReceiveDataFromRemoteDevice:(id)device
{
  sessionCopy = session;
  deviceCopy = device;
  selfCopy = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  DataLinkHealthKitClientConnection.workoutSession(_:didReceiveDataFromRemoteDevice:)(sessionCopy, v8, v10);
  outlined consume of Data._Representation(v8, v10);
}

- (void)workoutSession:(id)session didReceiveDataFromRemoteWorkoutSession:(id)workoutSession
{
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sessionCopy = session;
  selfCopy = self;
  DataLinkHealthKitClientConnection.workoutSession(_:didReceiveDataFromRemoteWorkoutSession:)(sessionCopy, v6);
}

- (void)workoutSession:(id)session didDisconnectFromRemoteDeviceWithError:(id)error
{
  sessionCopy = session;
  selfCopy = self;
  errorCopy = error;
  DataLinkHealthKitClientConnection.workoutSession(_:didDisconnectFromRemoteDeviceWithError:)(sessionCopy, error);
}

@end