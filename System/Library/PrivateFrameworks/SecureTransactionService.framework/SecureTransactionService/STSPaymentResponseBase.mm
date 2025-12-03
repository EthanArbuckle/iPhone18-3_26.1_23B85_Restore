@interface STSPaymentResponseBase
- (STSPaymentResponseBase)initWithCoder:(id)coder;
- (id)initFromNFECommercePaymentResponse:(id)response;
- (id)initFromNFPeerPaymentResponse:(id)response;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STSPaymentResponseBase

- (id)initFromNFECommercePaymentResponse:(id)response
{
  responseCopy = response;
  v13.receiver = self;
  v13.super_class = STSPaymentResponseBase;
  v5 = [(STSPaymentResponseBase *)&v13 init];
  if (v5)
  {
    transactionIdentifier = [responseCopy transactionIdentifier];
    transactionIdentifier = v5->_transactionIdentifier;
    v5->_transactionIdentifier = transactionIdentifier;

    transactionData = [responseCopy transactionData];
    transactionData = v5->_transactionData;
    v5->_transactionData = transactionData;

    certs = [responseCopy certs];
    certificates = v5->_certificates;
    v5->_certificates = certs;
  }

  return v5;
}

- (id)initFromNFPeerPaymentResponse:(id)response
{
  responseCopy = response;
  v13.receiver = self;
  v13.super_class = STSPaymentResponseBase;
  v5 = [(STSPaymentResponseBase *)&v13 init];
  if (v5)
  {
    transactionData = [responseCopy transactionData];
    transactionData = v5->_transactionData;
    v5->_transactionData = transactionData;

    transactionIdentifier = [responseCopy transactionIdentifier];
    transactionIdentifier = v5->_transactionIdentifier;
    v5->_transactionIdentifier = transactionIdentifier;

    certificates = [responseCopy certificates];
    certificates = v5->_certificates;
    v5->_certificates = certificates;
  }

  return v5;
}

- (STSPaymentResponseBase)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = STSPaymentResponseBase;
  v5 = [(STSPaymentResponseBase *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionIdentifier"];
    transactionIdentifier = v5->_transactionIdentifier;
    v5->_transactionIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionData"];
    transactionData = v5->_transactionData;
    v5->_transactionData = v8;

    v10 = objc_opt_class();
    v11 = [coderCopy decodeDictionaryWithKeysOfClass:v10 objectsOfClass:objc_opt_class() forKey:@"certs"];
    certificates = v5->_certificates;
    v5->_certificates = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  transactionIdentifier = self->_transactionIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:transactionIdentifier forKey:@"transactionIdentifier"];
  [coderCopy encodeObject:self->_transactionData forKey:@"transactionData"];
  [coderCopy encodeObject:self->_certificates forKey:@"certs"];
}

@end