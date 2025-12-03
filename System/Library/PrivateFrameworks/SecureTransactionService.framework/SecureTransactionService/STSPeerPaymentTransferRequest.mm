@interface STSPeerPaymentTransferRequest
- (STSPeerPaymentTransferRequest)init;
- (STSPeerPaymentTransferRequest)initWithCoder:(id)coder;
- (STSPeerPaymentTransferRequest)initWithTransactionAmount:(id)amount currencyCode:(id)code countryCode:(id)countryCode transactionDate:(id)date appleTransactionHash:(id)hash publicTransactionHash:(id)transactionHash nonce:(id)nonce;
- (id)description;
- (id)toNFPeerPaymentTransferRequest;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STSPeerPaymentTransferRequest

- (STSPeerPaymentTransferRequest)initWithTransactionAmount:(id)amount currencyCode:(id)code countryCode:(id)countryCode transactionDate:(id)date appleTransactionHash:(id)hash publicTransactionHash:(id)transactionHash nonce:(id)nonce
{
  hashCopy = hash;
  transactionHashCopy = transactionHash;
  nonceCopy = nonce;
  v22.receiver = self;
  v22.super_class = STSPeerPaymentTransferRequest;
  v18 = [(STSPaymentRequestBase *)&v22 initWithTransactionAmount:amount currencyCode:code countryCode:countryCode transactionDate:date];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_nonce, nonce);
    objc_storeStrong(&v19->_appleTransactionHash, hash);
    objc_storeStrong(&v19->_publicTransactionHash, transactionHash);
  }

  return v19;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  transactionAmount = [(STSPaymentRequestBase *)self transactionAmount];
  appleTransactionHash = self->_appleTransactionHash;
  publicTransactionHash = self->_publicTransactionHash;
  transactionDate = [(STSPaymentRequestBase *)self transactionDate];
  currencyCode = [(STSPaymentRequestBase *)self currencyCode];
  countryCode = [(STSPaymentRequestBase *)self countryCode];
  v10 = [v3 stringWithFormat:@"STSPeerPaymentTransferRequest { transactionAmount=%@ appleTransactionHash=%@ publicTransactionHash=%@ transactionDate=%@ transactionCurrency=%@ transactionCountry=%@ nonce=%@}", transactionAmount, appleTransactionHash, publicTransactionHash, transactionDate, currencyCode, countryCode, self->_nonce];

  return v10;
}

- (STSPeerPaymentTransferRequest)init
{
  v3.receiver = self;
  v3.super_class = STSPeerPaymentTransferRequest;
  return [(STSPeerPaymentTransferRequest *)&v3 init];
}

- (STSPeerPaymentTransferRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = STSPeerPaymentTransferRequest;
  v5 = [(STSPaymentRequestBase *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transferAppleTransactionHash"];
    appleTransactionHash = v5->_appleTransactionHash;
    v5->_appleTransactionHash = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transferPublicTransactionHash"];
    publicTransactionHash = v5->_publicTransactionHash;
    v5->_publicTransactionHash = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transferNonce"];
    nonce = v5->_nonce;
    v5->_nonce = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STSPeerPaymentTransferRequest;
  coderCopy = coder;
  [(STSPaymentRequestBase *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_appleTransactionHash forKey:{@"transferAppleTransactionHash", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_publicTransactionHash forKey:@"transferPublicTransactionHash"];
  [coderCopy encodeObject:self->_nonce forKey:@"transferNonce"];
}

- (id)toNFPeerPaymentTransferRequest
{
  v3 = objc_alloc_init(MEMORY[0x277D2C858]);
  transactionAmount = [(STSPaymentRequestBase *)self transactionAmount];
  [v3 setTransactionAmount:transactionAmount];

  transactionDate = [(STSPaymentRequestBase *)self transactionDate];
  [v3 setTransactionDate:transactionDate];

  currencyCode = [(STSPaymentRequestBase *)self currencyCode];
  [v3 setTransactionCurrency:currencyCode];

  countryCode = [(STSPaymentRequestBase *)self countryCode];
  [v3 setTransactionCountry:countryCode];

  [v3 setAppleTransactionHash:self->_appleTransactionHash];
  [v3 setPublicTransactionHash:self->_publicTransactionHash];
  [v3 setNonce:self->_nonce];

  return v3;
}

@end