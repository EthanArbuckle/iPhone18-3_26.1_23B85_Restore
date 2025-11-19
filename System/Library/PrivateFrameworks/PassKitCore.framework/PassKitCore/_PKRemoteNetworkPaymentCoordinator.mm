@interface _PKRemoteNetworkPaymentCoordinator
- (PKRemoteNetworkPaymentCoordinator)wrapper;
- (_PKRemoteNetworkPaymentCoordinator)init;
- (void)handlePaymentUserActivity:(id)a3 originProcess:(id)a4;
- (void)presentErrorMessageWithFailure:(unint64_t)a3 originProcess:(id)a4 delay:(double)a5;
@end

@implementation _PKRemoteNetworkPaymentCoordinator

- (PKRemoteNetworkPaymentCoordinator)wrapper
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_PKRemoteNetworkPaymentCoordinator)init
{
  *(self + OBJC_IVAR____PKRemoteNetworkPaymentCoordinator_paymentSession) = 0;
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for RemoteNetworkPaymentCoordinator();
  return [(_PKRemoteNetworkPaymentCoordinator *)&v4 init];
}

- (void)handlePaymentUserActivity:(id)a3 originProcess:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1AD4BD3A4(v6, v7);
}

- (void)presentErrorMessageWithFailure:(unint64_t)a3 originProcess:(id)a4 delay:(double)a5
{
  v8 = a4;
  v9 = self;
  sub_1AD4BFB60(a3, v8, a5);
}

@end