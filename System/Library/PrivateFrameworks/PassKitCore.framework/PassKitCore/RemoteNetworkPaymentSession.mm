@interface RemoteNetworkPaymentSession
- (_TtC11PassKitCore27RemoteNetworkPaymentSession)init;
- (void)paymentAuthorizationCoordinator:(id)coordinator didAuthorizePayment:(id)payment handler:(id)handler;
- (void)paymentAuthorizationCoordinator:(id)coordinator didChangeCouponCode:(id)code handler:(id)handler;
- (void)paymentAuthorizationCoordinator:(id)coordinator didRequestMerchantSessionUpdate:(id)update;
- (void)paymentAuthorizationCoordinator:(id)coordinator didSelectPaymentMethod:(id)method handler:(id)handler;
- (void)paymentAuthorizationCoordinator:(id)coordinator didSelectShippingAddress:(id)address handler:(id)handler;
- (void)paymentAuthorizationCoordinator:(id)coordinator didSelectShippingMethod:(id)method handler:(id)handler;
- (void)paymentAuthorizationCoordinatorDidFinish:(id)finish;
@end

@implementation RemoteNetworkPaymentSession

- (void)paymentAuthorizationCoordinator:(id)coordinator didRequestMerchantSessionUpdate:(id)update
{
  v6 = _Block_copy(update);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1AD47AE5C;
  }

  else
  {
    v7 = 0;
  }

  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_1AD47AAE4(v6, v7);
  sub_1AD3C5FB8(v6);
}

- (void)paymentAuthorizationCoordinator:(id)coordinator didChangeCouponCode:(id)code handler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = v7;
  if (!code)
  {
    if (!v7)
    {
      goto LABEL_10;
    }

    swift_allocObject();
    __break(1u);
    goto LABEL_9;
  }

  v9 = sub_1ADB063B0();
  code = v10;
  if (!v8)
  {
LABEL_9:
    if (code)
    {
LABEL_11:
      __break(1u);
      return;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  if (!code)
  {
    goto LABEL_10;
  }

  v13 = v12;
  selfCopy = self;
  sub_1AD4763BC(v11, code, sub_1AD47AE5C, v13);

  sub_1AD3C5FB8(sub_1AD47AE5C);
}

- (void)paymentAuthorizationCoordinator:(id)coordinator didSelectShippingAddress:(id)address handler:(id)handler
{
  v7 = _Block_copy(handler);
  if (!v7)
  {
    if (address)
    {
LABEL_8:
      __break(1u);
      return;
    }

LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  if (!address)
  {
    goto LABEL_7;
  }

  v10 = v9;
  addressCopy = address;
  selfCopy = self;
  sub_1AD4766F4(addressCopy, sub_1AD47AE5C, v10);

  sub_1AD3C5FB8(sub_1AD47AE5C);
}

- (void)paymentAuthorizationCoordinator:(id)coordinator didSelectPaymentMethod:(id)method handler:(id)handler
{
  v7 = _Block_copy(handler);
  if (v7)
  {
    v8 = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    methodCopy = method;
    selfCopy = self;
    sub_1AD476A9C(method, sub_1AD47AE5C, v9);
  }

  else
  {
    __break(1u);
  }
}

- (void)paymentAuthorizationCoordinator:(id)coordinator didSelectShippingMethod:(id)method handler:(id)handler
{
  v7 = _Block_copy(handler);
  if (!v7)
  {
    if (method)
    {
LABEL_8:
      __break(1u);
      return;
    }

LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  if (!method)
  {
    goto LABEL_7;
  }

  v10 = v9;
  methodCopy = method;
  selfCopy = self;
  sub_1AD476E04(methodCopy, sub_1AD47AE5C, v10);

  sub_1AD3C5FB8(sub_1AD47AE5C);
}

- (void)paymentAuthorizationCoordinator:(id)coordinator didAuthorizePayment:(id)payment handler:(id)handler
{
  v7 = _Block_copy(handler);
  if (!v7)
  {
    if (payment)
    {
LABEL_8:
      __break(1u);
      return;
    }

LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  if (!payment)
  {
    goto LABEL_7;
  }

  v10 = v9;
  paymentCopy = payment;
  selfCopy = self;
  sub_1AD4771A4(paymentCopy, sub_1AD452788, v10);

  sub_1AD3C5FB8(sub_1AD452788);
}

- (void)paymentAuthorizationCoordinatorDidFinish:(id)finish
{
  finishCopy = finish;
  selfCopy = self;
  sub_1AD479DC4(finish);
}

- (_TtC11PassKitCore27RemoteNetworkPaymentSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end