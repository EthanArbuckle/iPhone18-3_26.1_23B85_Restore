@interface STSPeerPaymentResponse
- (id)initFromNFPeerPaymentResponse:(id)a3;
@end

@implementation STSPeerPaymentResponse

- (id)initFromNFPeerPaymentResponse:(id)a3
{
  v4.receiver = self;
  v4.super_class = STSPeerPaymentResponse;
  return [(STSPaymentResponseBase *)&v4 initFromNFPeerPaymentResponse:a3];
}

@end