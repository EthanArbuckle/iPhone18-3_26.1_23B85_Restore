@interface STSMerchantPaymentRequest
- (STSMerchantPaymentRequest)initWithCoder:(id)coder;
- (STSMerchantPaymentRequest)initWithTransactionAmount:(id)amount currencyCode:(id)code countryCode:(id)countryCode transactionDate:(id)date merchantCapabilities:(int64_t)capabilities merchantData:(id)data unpredictableNumber:(unsigned int)number;
- (id)description;
- (id)toNFECommercePaymentRequest:(id)request;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STSMerchantPaymentRequest

- (STSMerchantPaymentRequest)initWithTransactionAmount:(id)amount currencyCode:(id)code countryCode:(id)countryCode transactionDate:(id)date merchantCapabilities:(int64_t)capabilities merchantData:(id)data unpredictableNumber:(unsigned int)number
{
  dataCopy = data;
  v20.receiver = self;
  v20.super_class = STSMerchantPaymentRequest;
  v17 = [(STSPaymentRequestBase *)&v20 initWithTransactionAmount:amount currencyCode:code countryCode:countryCode transactionDate:date];
  v18 = v17;
  if (v17)
  {
    v17->_merchantCapabilities = capabilities;
    objc_storeStrong(&v17->_merchantData, data);
    v18->_unpredictableNumber = number;
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  merchantData = self->_merchantData;
  currencyCode = [(STSPaymentRequestBase *)self currencyCode];
  countryCode = [(STSPaymentRequestBase *)self countryCode];
  transactionAmount = [(STSPaymentRequestBase *)self transactionAmount];
  transactionDate = [(STSPaymentRequestBase *)self transactionDate];
  networkMerchantIdentifier = self->_networkMerchantIdentifier;
  v10 = [v3 stringWithFormat:@"STSMerchantPaymentRequest { merchantData=%@ currencyCode=%@ countryCode=%@ transactionAmount=%@ transactionDate=%@ merchantCapabilities=%lu unpredictableNumber=%ud networkMerchantIdentifier=%@ appletIdentifier=%@}", merchantData, currencyCode, countryCode, transactionAmount, transactionDate, self->_merchantCapabilities, self->_unpredictableNumber, networkMerchantIdentifier, self->_appletIdentifier];

  return v10;
}

- (STSMerchantPaymentRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = STSMerchantPaymentRequest;
  v5 = [(STSInAppPaymentRequest *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_merchantCapabilities = [coderCopy decodeIntegerForKey:@"merchantCapabilities"];
    v5->_unpredictableNumber = [coderCopy decodeInt32ForKey:@"unpredictableNumber"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchantData"];
    merchantData = v5->_merchantData;
    v5->_merchantData = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchantIdentifier"];
    networkMerchantIdentifier = v5->_networkMerchantIdentifier;
    v5->_networkMerchantIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appletIdentifier"];
    appletIdentifier = v5->_appletIdentifier;
    v5->_appletIdentifier = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STSMerchantPaymentRequest;
  coderCopy = coder;
  [(STSInAppPaymentRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_merchantCapabilities forKey:{@"merchantCapabilities", v5.receiver, v5.super_class}];
  [coderCopy encodeInt32:self->_unpredictableNumber forKey:@"unpredictableNumber"];
  [coderCopy encodeObject:self->_merchantData forKey:@"merchantData"];
  [coderCopy encodeObject:self->_networkMerchantIdentifier forKey:@"merchantIdentifier"];
  [coderCopy encodeObject:self->_appletIdentifier forKey:@"appletIdentifier"];
}

- (id)toNFECommercePaymentRequest:(id)request
{
  requestCopy = request;
  v5 = objc_alloc_init(MEMORY[0x277D2C838]);
  [v5 setAppletIdentifier:requestCopy];
  merchantData = [(STSMerchantPaymentRequest *)self merchantData];
  [v5 setMerchantData:merchantData];

  networkMerchantIdentifier = [(STSMerchantPaymentRequest *)self networkMerchantIdentifier];
  [v5 setNetworkMerchantIdentifier:networkMerchantIdentifier];

  currencyCode = [(STSPaymentRequestBase *)self currencyCode];
  [v5 setCurrencyCode:currencyCode];

  countryCode = [(STSPaymentRequestBase *)self countryCode];
  [v5 setCountryCode:countryCode];

  transactionAmount = [(STSPaymentRequestBase *)self transactionAmount];
  [v5 setTransactionAmount:transactionAmount];

  transactionDate = [(STSPaymentRequestBase *)self transactionDate];
  [v5 setTransactionDate:transactionDate];

  [v5 setUnpredictableNumber:{-[STSMerchantPaymentRequest unpredictableNumber](self, "unpredictableNumber")}];
  if (requestCopy)
  {
    [v5 setAppletIdentifier:requestCopy];
  }

  else
  {
    appletIdentifier = [(STSMerchantPaymentRequest *)self appletIdentifier];
    [v5 setAppletIdentifier:appletIdentifier];
  }

  [v5 setMerchantCapabilities:{-[STSMerchantPaymentRequest merchantCapabilities](self, "merchantCapabilities") & 2 | -[STSMerchantPaymentRequest merchantCapabilities](self, "merchantCapabilities") & 1 | -[STSMerchantPaymentRequest merchantCapabilities](self, "merchantCapabilities") & 0x40}];

  return v5;
}

@end