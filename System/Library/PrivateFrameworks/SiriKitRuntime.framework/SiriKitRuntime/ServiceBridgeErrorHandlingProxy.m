@interface ServiceBridgeErrorHandlingProxy
- (void)closeServerRequestForExecutionRequestId:(id)a3;
- (void)closeWithExecutionOutput:(id)a3 errorString:(id)a4;
- (void)fetchContextsFor:(id)a3 includesNearByDevices:(BOOL)a4 completion:(id)a5;
- (void)postToMessageBusWithMessage:(id)a3 completion:(id)a4;
- (void)retriggerOriginalRequestWithExecutionRequestId:(id)a3 forUserId:(id)a4 givenCurrentExecutionRequestId:(id)a5 reply:(id)a6;
@end

@implementation ServiceBridgeErrorHandlingProxy

- (void)fetchContextsFor:(id)a3 includesNearByDevices:(BOOL)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v7);

  specialized ServiceBridgeErrorHandlingProxy.fetchContexts(for:includesNearByDevices:completion:)(v8, a4, self, v7);
  _Block_release(v7);
}

- (void)closeServerRequestForExecutionRequestId:(id)a3
{
  v3 = a3;

  v5 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(v4, specialized closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:), &block_descriptor_251);
  if (v5)
  {
    [v5 closeServerRequestForExecutionRequestId_];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (void)closeWithExecutionOutput:(id)a3 errorString:(id)a4
{
  v5 = a3;
  v6 = a4;

  v8 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(v7, specialized closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:), &block_descriptor_321);
  if (v8)
  {
    [v8 closeWithExecutionOutput:v5 errorString:v6];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (void)retriggerOriginalRequestWithExecutionRequestId:(id)a3 forUserId:(id)a4 givenCurrentExecutionRequestId:(id)a5 reply:(id)a6
{
  v7 = _Block_copy(a6);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  _Block_copy(v7);

  specialized ServiceBridgeErrorHandlingProxy.retriggerOriginalRequest(withExecutionRequestId:forUserId:givenCurrentExecutionRequestId:reply:)(v8, v10, v11, v13, v14, v16, self, v7);
  _Block_release(v7);
}

- (void)postToMessageBusWithMessage:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;

  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  _Block_copy(v6);
  specialized ServiceBridgeErrorHandlingProxy.postToMessageBus(message:completion:)(v8, v10, self, v6);
  _Block_release(v6);
  outlined consume of Data._Representation(v8, v10);
}

@end