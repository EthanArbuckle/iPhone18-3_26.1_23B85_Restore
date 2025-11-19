@interface IFSessionServiceClient.ReverseServer
- (void)sendWithMessageData:(id)a3 reply:(id)a4;
- (void)sessionDidFailWithError:(id)a3 reply:(id)a4;
@end

@implementation IFSessionServiceClient.ReverseServer

- (void)sendWithMessageData:(id)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;

  v8 = sub_223727358();
  v10 = v9;

  _Block_copy(v6);
  sub_223719A14(v8, v10, self, v6);
  _Block_release(v6);
  _Block_release(v6);
  sub_223661270(v8, v10);
}

- (void)sessionDidFailWithError:(id)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;

  sub_223719F54(v7, self, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end