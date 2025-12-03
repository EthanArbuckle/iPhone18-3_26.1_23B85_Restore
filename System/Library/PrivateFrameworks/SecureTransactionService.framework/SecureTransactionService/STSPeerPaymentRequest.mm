@interface STSPeerPaymentRequest
- (STSPeerPaymentRequest)init;
- (STSPeerPaymentRequest)initWithCoder:(id)coder;
- (STSPeerPaymentRequest)initWithTransferRequest:(id)request topUpRequest:(id)upRequest;
- (id)toNFPeerPaymentRequest:(id)request;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STSPeerPaymentRequest

- (STSPeerPaymentRequest)initWithTransferRequest:(id)request topUpRequest:(id)upRequest
{
  requestCopy = request;
  upRequestCopy = upRequest;
  v12.receiver = self;
  v12.super_class = STSPeerPaymentRequest;
  v9 = [(STSPeerPaymentRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_transferRequest, request);
    objc_storeStrong(&v10->_topUpRequest, upRequest);
  }

  return v10;
}

- (STSPeerPaymentRequest)init
{
  v3.receiver = self;
  v3.super_class = STSPeerPaymentRequest;
  return [(STSPeerPaymentRequest *)&v3 init];
}

- (STSPeerPaymentRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = STSPeerPaymentRequest;
  v5 = [(STSPeerPaymentRequest *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transferRequest"];
    transferRequest = v5->_transferRequest;
    v5->_transferRequest = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"topUpRequest"];
    topUpRequest = v5->_topUpRequest;
    v5->_topUpRequest = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  transferRequest = self->_transferRequest;
  coderCopy = coder;
  [coderCopy encodeObject:transferRequest forKey:@"transferRequest"];
  [coderCopy encodeObject:self->_topUpRequest forKey:@"topUpRequest"];
}

- (id)toNFPeerPaymentRequest:(id)request
{
  v4 = objc_alloc_init(MEMORY[0x277D2C850]);
  topUpRequest = self->_topUpRequest;
  if (topUpRequest)
  {
    appletIdentifier = [(STSMerchantPaymentRequest *)topUpRequest appletIdentifier];

    if (!appletIdentifier)
    {
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSPeerPaymentRequest toNFPeerPaymentRequest:]", 127, self, @"The topup object is missing the applet identifier.", v7, v8, v14);
    }

    v9 = self->_topUpRequest;
    appletIdentifier2 = [(STSMerchantPaymentRequest *)v9 appletIdentifier];
    v11 = [(STSMerchantPaymentRequest *)v9 toNFECommercePaymentRequest:appletIdentifier2];
    [v4 setTopUpRequest:v11];
  }

  toNFPeerPaymentTransferRequest = [(STSPeerPaymentTransferRequest *)self->_transferRequest toNFPeerPaymentTransferRequest];
  [v4 setTransferRequest:toNFPeerPaymentTransferRequest];

  return v4;
}

@end