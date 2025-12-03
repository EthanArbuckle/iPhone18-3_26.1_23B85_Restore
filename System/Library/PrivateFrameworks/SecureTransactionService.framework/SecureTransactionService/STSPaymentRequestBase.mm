@interface STSPaymentRequestBase
- (STSPaymentRequestBase)initWithCoder:(id)coder;
- (STSPaymentRequestBase)initWithTransactionAmount:(id)amount currencyCode:(id)code countryCode:(id)countryCode transactionDate:(id)date;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STSPaymentRequestBase

- (STSPaymentRequestBase)initWithTransactionAmount:(id)amount currencyCode:(id)code countryCode:(id)countryCode transactionDate:(id)date
{
  amountCopy = amount;
  codeCopy = code;
  countryCodeCopy = countryCode;
  dateCopy = date;
  v18.receiver = self;
  v18.super_class = STSPaymentRequestBase;
  v15 = [(STSPaymentRequestBase *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_transactionDate, date);
    objc_storeStrong(&v16->_countryCode, countryCode);
    objc_storeStrong(&v16->_currencyCode, code);
    objc_storeStrong(&v16->_transactionAmount, amount);
  }

  return v16;
}

- (STSPaymentRequestBase)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = STSPaymentRequestBase;
  v5 = [(STSPaymentRequestBase *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionAmount"];
    transactionAmount = v5->_transactionAmount;
    v5->_transactionAmount = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionDate"];
    transactionDate = v5->_transactionDate;
    v5->_transactionDate = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  currencyCode = self->_currencyCode;
  coderCopy = coder;
  [coderCopy encodeObject:currencyCode forKey:@"currencyCode"];
  [coderCopy encodeObject:self->_countryCode forKey:@"countryCode"];
  [coderCopy encodeObject:self->_transactionAmount forKey:@"transactionAmount"];
  [coderCopy encodeObject:self->_transactionDate forKey:@"transactionDate"];
}

@end