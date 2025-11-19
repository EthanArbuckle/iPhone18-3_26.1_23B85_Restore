@interface RemoteNetworkPaymentWebsocketURLSession
- (_TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession)init;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 webSocketTask:(id)a4 didCloseWithCode:(int64_t)a5 reason:(id)a6;
- (void)URLSession:(id)a3 webSocketTask:(id)a4 didOpenWithProtocol:(id)a5;
@end

@implementation RemoteNetworkPaymentWebsocketURLSession

- (void)URLSession:(id)a3 webSocketTask:(id)a4 didOpenWithProtocol:(id)a5
{
  if (a5)
  {
    sub_1ADB063B0();
  }

  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_1AD4DAEEC();
}

- (void)URLSession:(id)a3 webSocketTask:(id)a4 didCloseWithCode:(int64_t)a5 reason:(id)a6
{
  v6 = a6;
  if (a6)
  {
    v10 = a3;
    v11 = a4;
    v12 = self;
    v13 = v6;
    v6 = sub_1ADB05D70();
    v15 = v14;
  }

  else
  {
    v16 = a3;
    v17 = a4;
    v18 = self;
    v15 = 0xF000000000000000;
  }

  sub_1AD4DB258(a5, v6, v15);
  sub_1AD422FB0(v6, v15);
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_1AD4DB434(a4);
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_1AD4DB5C0(v9, a5);
}

- (_TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end