@interface RemoteNetworkPaymentLoadingViewService
- (_TtC9PassKitUI38RemoteNetworkPaymentLoadingViewService)init;
- (void)fulfillRemotePaymentRequestPromise:(id)promise completion:(id)completion;
- (void)handleDismissWithCompletion:(id)completion;
- (void)rejectRemotePaymentRequestPromiseWithFailure:(unint64_t)failure;
@end

@implementation RemoteNetworkPaymentLoadingViewService

- (void)handleDismissWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
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

  selfCopy = self;
  sub_1BD7B2DD8(v7, v6);
  sub_1BD0D4744(v7);
}

- (void)fulfillRemotePaymentRequestPromise:(id)promise completion:(id)completion
{
  v6 = _Block_copy(completion);
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

  promiseCopy = promise;
  selfCopy = self;
  sub_1BD7B30A0(promise, v6, v7);
  sub_1BD0D4744(v6);
}

- (void)rejectRemotePaymentRequestPromiseWithFailure:(unint64_t)failure
{
  selfCopy = self;
  sub_1BD7B3304(failure);
}

- (_TtC9PassKitUI38RemoteNetworkPaymentLoadingViewService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end