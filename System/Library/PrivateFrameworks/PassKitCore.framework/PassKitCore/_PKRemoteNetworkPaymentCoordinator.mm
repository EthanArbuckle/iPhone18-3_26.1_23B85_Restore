@interface _PKRemoteNetworkPaymentCoordinator
- (PKRemoteNetworkPaymentCoordinator)wrapper;
- (_PKRemoteNetworkPaymentCoordinator)init;
- (void)handlePaymentUserActivity:(id)activity originProcess:(id)process;
- (void)presentErrorMessageWithFailure:(unint64_t)failure originProcess:(id)process delay:(double)delay;
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

- (void)handlePaymentUserActivity:(id)activity originProcess:(id)process
{
  activityCopy = activity;
  processCopy = process;
  selfCopy = self;
  sub_1AD4BD3A4(activityCopy, processCopy);
}

- (void)presentErrorMessageWithFailure:(unint64_t)failure originProcess:(id)process delay:(double)delay
{
  processCopy = process;
  selfCopy = self;
  sub_1AD4BFB60(failure, processCopy, delay);
}

@end