@interface STSPeerPaymentResponse
- (id)initFromNFPeerPaymentResponse:(id)response;
@end

@implementation STSPeerPaymentResponse

- (id)initFromNFPeerPaymentResponse:(id)response
{
  v4.receiver = self;
  v4.super_class = STSPeerPaymentResponse;
  return [(STSPaymentResponseBase *)&v4 initFromNFPeerPaymentResponse:response];
}

@end