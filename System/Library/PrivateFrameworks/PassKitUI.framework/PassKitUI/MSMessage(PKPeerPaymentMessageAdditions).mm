@interface MSMessage(PKPeerPaymentMessageAdditions)
- (PKPeerPaymentMessage)peerPaymentMessage;
@end

@implementation MSMessage(PKPeerPaymentMessageAdditions)

- (PKPeerPaymentMessage)peerPaymentMessage
{
  v1 = [[PKPeerPaymentMessage alloc] initWithUnderlyingMessage:self];

  return v1;
}

@end