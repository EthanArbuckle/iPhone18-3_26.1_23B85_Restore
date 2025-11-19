@interface RemoteNetworkPaymentLoadingViewService
- (_TtC9PassKitUI38RemoteNetworkPaymentLoadingViewService)init;
- (void)fulfillRemotePaymentRequestPromise:(id)a3 completion:(id)a4;
- (void)handleDismissWithCompletion:(id)a3;
- (void)rejectRemotePaymentRequestPromiseWithFailure:(unint64_t)a3;
@end

@implementation RemoteNetworkPaymentLoadingViewService

- (void)handleDismissWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1BD166E88;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = self;
  sub_1BD7B2DD8(v7, v6);
  sub_1BD0D4744(v7);
}

- (void)fulfillRemotePaymentRequestPromise:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1BD1B6B00;
  }

  else
  {
    v7 = 0;
  }

  v8 = a3;
  v9 = self;
  sub_1BD7B30A0(a3, v6, v7);
  sub_1BD0D4744(v6);
}

- (void)rejectRemotePaymentRequestPromiseWithFailure:(unint64_t)a3
{
  v4 = self;
  sub_1BD7B3304(a3);
}

- (_TtC9PassKitUI38RemoteNetworkPaymentLoadingViewService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end