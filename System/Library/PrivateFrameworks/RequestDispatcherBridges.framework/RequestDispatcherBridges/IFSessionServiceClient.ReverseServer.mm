@interface IFSessionServiceClient.ReverseServer
- (void)sendWithMessageData:(id)data reply:(id)reply;
- (void)sessionDidFailWithError:(id)error reply:(id)reply;
@end

@implementation IFSessionServiceClient.ReverseServer

- (void)sendWithMessageData:(id)data reply:(id)reply
{
  v6 = _Block_copy(reply);
  dataCopy = data;

  v8 = sub_223727358();
  v10 = v9;

  _Block_copy(v6);
  sub_223719A14(v8, v10, self, v6);
  _Block_release(v6);
  _Block_release(v6);
  sub_223661270(v8, v10);
}

- (void)sessionDidFailWithError:(id)error reply:(id)reply
{
  v6 = _Block_copy(reply);
  _Block_copy(v6);
  errorCopy = error;

  sub_223719F54(errorCopy, self, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end