@interface PKPeerPaymentCounterpartImageResolver
- (BOOL)hasCachedImageDataForIdentifier:(id)a3;
- (PKPeerPaymentCounterpartImageResolver)init;
- (id)counterpartImageDataForIdentifier:(id)a3;
- (void)counterpartImageDataForIdentifier:(id)a3 completion:(id)a4;
@end

@implementation PKPeerPaymentCounterpartImageResolver

- (PKPeerPaymentCounterpartImageResolver)init
{
  v3 = OBJC_IVAR___PKPeerPaymentCounterpartImageResolver_cache;
  *(&self->super.isa + v3) = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  v4 = [objc_opt_self() sharedInstance];
  *(&self->super.isa + OBJC_IVAR___PKPeerPaymentCounterpartImageResolver_peerPaymentService) = v4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for PeerPaymentCounterpartImageResolver();
  return [(PKPeerPaymentCounterpartImageResolver *)&v6 init];
}

- (BOOL)hasCachedImageDataForIdentifier:(id)a3
{
  v3 = [*(&self->super.isa + OBJC_IVAR___PKPeerPaymentCounterpartImageResolver_cache) objectForKey_];
  v4 = v3;
  if (v3)
  {
  }

  return v4 != 0;
}

- (id)counterpartImageDataForIdentifier:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___PKPeerPaymentCounterpartImageResolver_cache);
  v5 = self;
  v6 = [v4 objectForKey_];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1BE04AAC4();
    v10 = v9;

    v11 = sub_1BE04AAB4();
    sub_1BD1245AC(v8, v10);
  }

  else
  {

    v11 = 0;
  }

  return v11;
}

- (void)counterpartImageDataForIdentifier:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_1BE052434();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  sub_1BD3CD324(v6, v8, v9, v5);
  _Block_release(v5);
  _Block_release(v5);
}

@end