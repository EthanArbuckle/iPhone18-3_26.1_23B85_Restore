@interface _PKPeerPaymentFraudUIFactory
+ (id)fraudUIViewControllerFor:(id)a3 continuationHandler:(id)a4;
- (_PKPeerPaymentFraudUIFactory)init;
@end

@implementation _PKPeerPaymentFraudUIFactory

+ (id)fraudUIViewControllerFor:(id)a3 continuationHandler:(id)a4
{
  v5 = _Block_copy(a4);
  _Block_copy(v5);
  v6 = a3;
  sub_1BD4207CC(v6, v5);
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