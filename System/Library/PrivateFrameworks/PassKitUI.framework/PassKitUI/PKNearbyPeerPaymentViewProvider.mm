@interface PKNearbyPeerPaymentViewProvider
- (PKNearbyPeerPaymentViewProvider)init;
- (id)amountEntryViewWithInitialAmount:(id)amount initialMemo:(id)memo dismissAction:(id)action;
@end

@implementation PKNearbyPeerPaymentViewProvider

- (id)amountEntryViewWithInitialAmount:(id)amount initialMemo:(id)memo dismissAction:(id)action
{
  v8 = _Block_copy(action);
  if (memo)
  {
    v9 = sub_1BE052434();
    memo = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  amountCopy = amount;
  selfCopy = self;
  sub_1BD6DD1AC(amount, v9, memo, sub_1BD6DD7D8, v11);
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