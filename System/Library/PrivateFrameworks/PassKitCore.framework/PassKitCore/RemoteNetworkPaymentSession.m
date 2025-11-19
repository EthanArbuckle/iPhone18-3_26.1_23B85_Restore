@interface RemoteNetworkPaymentSession
- (_TtC11PassKitCore27RemoteNetworkPaymentSession)init;
- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizePayment:(id)a4 handler:(id)a5;
- (void)paymentAuthorizationCoordinator:(id)a3 didChangeCouponCode:(id)a4 handler:(id)a5;
- (void)paymentAuthorizationCoordinator:(id)a3 didRequestMerchantSessionUpdate:(id)a4;
- (void)paymentAuthorizationCoordinator:(id)a3 didSelectPaymentMethod:(id)a4 handler:(id)a5;
- (void)paymentAuthorizationCoordinator:(id)a3 didSelectShippingAddress:(id)a4 handler:(id)a5;
- (void)paymentAuthorizationCoordinator:(id)a3 didSelectShippingMethod:(id)a4 handler:(id)a5;
- (void)paymentAuthorizationCoordinatorDidFinish:(id)a3;
@end

@implementation RemoteNetworkPaymentSession

- (void)paymentAuthorizationCoordinator:(id)a3 didRequestMerchantSessionUpdate:(id)a4
{
  v6 = _Block_copy(a4);
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

  v8 = a3;
  v9 = self;
  sub_1AD47AAE4(v6, v7);
  sub_1AD3C5FB8(v6);
}

- (void)paymentAuthorizationCoordinator:(id)a3 didChangeCouponCode:(id)a4 handler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = v7;
  if (!a4)
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
  a4 = v10;
  if (!v8)
  {
LABEL_9:
    if (a4)
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
  if (!a4)
  {
    goto LABEL_10;
  }

  v13 = v12;
  v14 = self;
  sub_1AD4763BC(v11, a4, sub_1AD47AE5C, v13);

  sub_1AD3C5FB8(sub_1AD47AE5C);
}

- (void)paymentAuthorizationCoordinator:(id)a3 didSelectShippingAddress:(id)a4 handler:(id)a5
{
  v7 = _Block_copy(a5);
  if (!v7)
  {
    if (a4)
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
  if (!a4)
  {
    goto LABEL_7;
  }

  v10 = v9;
  v12 = a4;
  v11 = self;
  sub_1AD4766F4(v12, sub_1AD47AE5C, v10);

  sub_1AD3C5FB8(sub_1AD47AE5C);
}

- (void)paymentAuthorizationCoordinator:(id)a3 didSelectPaymentMethod:(id)a4 handler:(id)a5
{
  v7 = _Block_copy(a5);
  if (v7)
  {
    v8 = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v10 = a4;
    v11 = self;
    sub_1AD476A9C(a4, sub_1AD47AE5C, v9);
  }

  else
  {
    __break(1u);
  }
}

- (void)paymentAuthorizationCoordinator:(id)a3 didSelectShippingMethod:(id)a4 handler:(id)a5
{
  v7 = _Block_copy(a5);
  if (!v7)
  {
    if (a4)
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
  if (!a4)
  {
    goto LABEL_7;
  }

  v10 = v9;
  v12 = a4;
  v11 = self;
  sub_1AD476E04(v12, sub_1AD47AE5C, v10);

  sub_1AD3C5FB8(sub_1AD47AE5C);
}

- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizePayment:(id)a4 handler:(id)a5
{
  v7 = _Block_copy(a5);
  if (!v7)
  {
    if (a4)
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
  if (!a4)
  {
    goto LABEL_7;
  }

  v10 = v9;
  v12 = a4;
  v11 = self;
  sub_1AD4771A4(v12, sub_1AD452788, v10);

  sub_1AD3C5FB8(sub_1AD452788);
}

- (void)paymentAuthorizationCoordinatorDidFinish:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1AD479DC4(a3);
}

- (_TtC11PassKitCore27RemoteNetworkPaymentSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end