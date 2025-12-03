@interface ServiceBridgeErrorHandlingProxy
- (void)closeServerRequestForExecutionRequestId:(id)id;
- (void)closeWithExecutionOutput:(id)output errorString:(id)string;
- (void)fetchContextsFor:(id)for includesNearByDevices:(BOOL)devices completion:(id)completion;
- (void)postToMessageBusWithMessage:(id)message completion:(id)completion;
- (void)retriggerOriginalRequestWithExecutionRequestId:(id)id forUserId:(id)userId givenCurrentExecutionRequestId:(id)requestId reply:(id)reply;
@end

@implementation ServiceBridgeErrorHandlingProxy

- (void)fetchContextsFor:(id)for includesNearByDevices:(BOOL)devices completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v7);

  specialized ServiceBridgeErrorHandlingProxy.fetchContexts(for:includesNearByDevices:completion:)(v8, devices, self, v7);
  _Block_release(v7);
}

- (void)closeServerRequestForExecutionRequestId:(id)id
{
  idCopy = id;

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

- (void)closeWithExecutionOutput:(id)output errorString:(id)string
{
  outputCopy = output;
  stringCopy = string;

  v8 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(v7, specialized closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:), &block_descriptor_321);
  if (v8)
  {
    [v8 closeWithExecutionOutput:outputCopy errorString:stringCopy];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (void)retriggerOriginalRequestWithExecutionRequestId:(id)id forUserId:(id)userId givenCurrentExecutionRequestId:(id)requestId reply:(id)reply
{
  v7 = _Block_copy(reply);
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

- (void)postToMessageBusWithMessage:(id)message completion:(id)completion
{
  v6 = _Block_copy(completion);
  messageCopy = message;

  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  _Block_copy(v6);
  specialized ServiceBridgeErrorHandlingProxy.postToMessageBus(message:completion:)(v8, v10, self, v6);
  _Block_release(v6);
  outlined consume of Data._Representation(v8, v10);
}

@end