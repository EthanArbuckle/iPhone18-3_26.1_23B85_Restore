@interface RemoteNetworkPaymentWebsocketURLSession
- (_TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession)init;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session webSocketTask:(id)task didCloseWithCode:(int64_t)code reason:(id)reason;
- (void)URLSession:(id)session webSocketTask:(id)task didOpenWithProtocol:(id)protocol;
@end

@implementation RemoteNetworkPaymentWebsocketURLSession

- (void)URLSession:(id)session webSocketTask:(id)task didOpenWithProtocol:(id)protocol
{
  if (protocol)
  {
    sub_1ADB063B0();
  }

  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  sub_1AD4DAEEC();
}

- (void)URLSession:(id)session webSocketTask:(id)task didCloseWithCode:(int64_t)code reason:(id)reason
{
  reasonCopy = reason;
  if (reason)
  {
    sessionCopy = session;
    taskCopy = task;
    selfCopy = self;
    v13 = reasonCopy;
    reasonCopy = sub_1ADB05D70();
    v15 = v14;
  }

  else
  {
    sessionCopy2 = session;
    taskCopy2 = task;
    selfCopy2 = self;
    v15 = 0xF000000000000000;
  }

  sub_1AD4DB258(code, reasonCopy, v15);
  sub_1AD422FB0(reasonCopy, v15);
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  sessionCopy = session;
  selfCopy = self;
  errorCopy = error;
  sub_1AD4DB434(error);
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  errorCopy = error;
  sub_1AD4DB5C0(taskCopy, error);
}

- (_TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end