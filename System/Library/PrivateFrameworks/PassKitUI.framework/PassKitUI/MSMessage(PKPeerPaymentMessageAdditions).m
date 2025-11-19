@interface MSMessage(PKPeerPaymentMessageAdditions)
- (PKPeerPaymentMessage)peerPaymentMessage;
@end

@implementation MSMessage(PKPeerPaymentMessageAdditions)

- (PKPeerPaymentMessage)peerPaymentMessage
{
  v1 = [[PKPeerPaymentMessage alloc] initWithUnderlyingMessage:a1];

  return v1;
}

@end