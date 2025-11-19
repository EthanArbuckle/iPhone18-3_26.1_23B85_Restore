@interface STSPeerPaymentRequest
- (STSPeerPaymentRequest)init;
- (STSPeerPaymentRequest)initWithCoder:(id)a3;
- (STSPeerPaymentRequest)initWithTransferRequest:(id)a3 topUpRequest:(id)a4;
- (id)toNFPeerPaymentRequest:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STSPeerPaymentRequest

- (STSPeerPaymentRequest)initWithTransferRequest:(id)a3 topUpRequest:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = STSPeerPaymentRequest;
  v9 = [(STSPeerPaymentRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_transferRequest, a3);
    objc_storeStrong(&v10->_topUpRequest, a4);
  }

  return v10;
}

- (STSPeerPaymentRequest)init
{
  v3.receiver = self;
  v3.super_class = STSPeerPaymentRequest;
  return [(STSPeerPaymentRequest *)&v3 init];
}

- (STSPeerPaymentRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = STSPeerPaymentRequest;
  v5 = [(STSPeerPaymentRequest *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transferRequest"];
    transferRequest = v5->_transferRequest;
    v5->_transferRequest = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"topUpRequest"];
    topUpRequest = v5->_topUpRequest;
    v5->_topUpRequest = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  transferRequest = self->_transferRequest;
  v5 = a3;
  [v5 encodeObject:transferRequest forKey:@"transferRequest"];
  [v5 encodeObject:self->_topUpRequest forKey:@"topUpRequest"];
}

- (id)toNFPeerPaymentRequest:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x277D2C850]);
  topUpRequest = self->_topUpRequest;
  if (topUpRequest)
  {
    v6 = [(STSMerchantPaymentRequest *)topUpRequest appletIdentifier];

    if (!v6)
    {
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSPeerPaymentRequest toNFPeerPaymentRequest:]", 127, self, @"The topup object is missing the applet identifier.", v7, v8, v14);
    }

    v9 = self->_topUpRequest;
    v10 = [(STSMerchantPaymentRequest *)v9 appletIdentifier];
    v11 = [(STSMerchantPaymentRequest *)v9 toNFECommercePaymentRequest:v10];
    [v4 setTopUpRequest:v11];
  }

  v12 = [(STSPeerPaymentTransferRequest *)self->_transferRequest toNFPeerPaymentTransferRequest];
  [v4 setTransferRequest:v12];

  return v4;
}

@end