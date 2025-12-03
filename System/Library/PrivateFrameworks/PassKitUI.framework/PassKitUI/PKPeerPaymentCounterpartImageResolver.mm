@interface PKPeerPaymentCounterpartImageResolver
- (BOOL)hasCachedImageDataForIdentifier:(id)identifier;
- (PKPeerPaymentCounterpartImageResolver)init;
- (id)counterpartImageDataForIdentifier:(id)identifier;
- (void)counterpartImageDataForIdentifier:(id)identifier completion:(id)completion;
@end

@implementation PKPeerPaymentCounterpartImageResolver

- (PKPeerPaymentCounterpartImageResolver)init
{
  v3 = OBJC_IVAR___PKPeerPaymentCounterpartImageResolver_cache;
  *(&self->super.isa + v3) = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  sharedInstance = [objc_opt_self() sharedInstance];
  *(&self->super.isa + OBJC_IVAR___PKPeerPaymentCounterpartImageResolver_peerPaymentService) = sharedInstance;
  v6.receiver = self;
  v6.super_class = type metadata accessor for PeerPaymentCounterpartImageResolver();
  return [(PKPeerPaymentCounterpartImageResolver *)&v6 init];
}

- (BOOL)hasCachedImageDataForIdentifier:(id)identifier
{
  objectForKey_ = [*(&self->super.isa + OBJC_IVAR___PKPeerPaymentCounterpartImageResolver_cache) objectForKey_];
  v4 = objectForKey_;
  if (objectForKey_)
  {
  }

  return v4 != 0;
}

- (id)counterpartImageDataForIdentifier:(id)identifier
{
  v4 = *(&self->super.isa + OBJC_IVAR___PKPeerPaymentCounterpartImageResolver_cache);
  selfCopy = self;
  objectForKey_ = [v4 objectForKey_];
  if (objectForKey_)
  {
    v7 = objectForKey_;
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

- (void)counterpartImageDataForIdentifier:(id)identifier completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_1BE052434();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_1BD3CD324(v6, v8, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

@end