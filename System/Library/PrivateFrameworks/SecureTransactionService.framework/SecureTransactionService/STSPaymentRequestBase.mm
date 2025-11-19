@interface STSPaymentRequestBase
- (STSPaymentRequestBase)initWithCoder:(id)a3;
- (STSPaymentRequestBase)initWithTransactionAmount:(id)a3 currencyCode:(id)a4 countryCode:(id)a5 transactionDate:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STSPaymentRequestBase

- (STSPaymentRequestBase)initWithTransactionAmount:(id)a3 currencyCode:(id)a4 countryCode:(id)a5 transactionDate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = STSPaymentRequestBase;
  v15 = [(STSPaymentRequestBase *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_transactionDate, a6);
    objc_storeStrong(&v16->_countryCode, a5);
    objc_storeStrong(&v16->_currencyCode, a4);
    objc_storeStrong(&v16->_transactionAmount, a3);
  }

  return v16;
}

- (STSPaymentRequestBase)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = STSPaymentRequestBase;
  v5 = [(STSPaymentRequestBase *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionAmount"];
    transactionAmount = v5->_transactionAmount;
    v5->_transactionAmount = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionDate"];
    transactionDate = v5->_transactionDate;
    v5->_transactionDate = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  currencyCode = self->_currencyCode;
  v5 = a3;
  [v5 encodeObject:currencyCode forKey:@"currencyCode"];
  [v5 encodeObject:self->_countryCode forKey:@"countryCode"];
  [v5 encodeObject:self->_transactionAmount forKey:@"transactionAmount"];
  [v5 encodeObject:self->_transactionDate forKey:@"transactionDate"];
}

@end