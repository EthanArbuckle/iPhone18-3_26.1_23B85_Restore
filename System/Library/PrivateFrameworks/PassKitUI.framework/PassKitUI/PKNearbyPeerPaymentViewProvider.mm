@interface PKNearbyPeerPaymentViewProvider
- (PKNearbyPeerPaymentViewProvider)init;
- (id)amountEntryViewWithInitialAmount:(id)a3 initialMemo:(id)a4 dismissAction:(id)a5;
@end

@implementation PKNearbyPeerPaymentViewProvider

- (id)amountEntryViewWithInitialAmount:(id)a3 initialMemo:(id)a4 dismissAction:(id)a5
{
  v8 = _Block_copy(a5);
  if (a4)
  {
    v9 = sub_1BE052434();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v12 = a3;
  v13 = self;
  sub_1BD6DD1AC(a3, v9, a4, sub_1BD6DD7D8, v11);
  v15 = v14;

  return v15;
}

- (PKNearbyPeerPaymentViewProvider)init
{
  *(&self->super.isa + OBJC_IVAR___PKNearbyPeerPaymentViewProvider_amountEntryVC) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for NearbyPeerPaymentViewProvider();
  return [(PKNearbyPeerPaymentViewProvider *)&v3 init];
}

@end