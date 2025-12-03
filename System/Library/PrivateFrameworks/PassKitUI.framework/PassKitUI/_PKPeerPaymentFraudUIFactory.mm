@interface _PKPeerPaymentFraudUIFactory
+ (id)fraudUIViewControllerFor:(id)for continuationHandler:(id)handler;
- (_PKPeerPaymentFraudUIFactory)init;
@end

@implementation _PKPeerPaymentFraudUIFactory

+ (id)fraudUIViewControllerFor:(id)for continuationHandler:(id)handler
{
  v5 = _Block_copy(handler);
  _Block_copy(v5);
  forCopy = for;
  sub_1BD4207CC(forCopy, v5);
  v8 = v7;
  _Block_release(v5);
  _Block_release(v5);

  return v8;
}

- (_PKPeerPaymentFraudUIFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PeerPaymentFraudUIFactory();
  return [(_PKPeerPaymentFraudUIFactory *)&v3 init];
}

@end