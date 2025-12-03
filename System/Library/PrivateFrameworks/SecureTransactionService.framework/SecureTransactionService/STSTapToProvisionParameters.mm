@interface STSTapToProvisionParameters
- (STSTapToProvisionParameters)initWithAmount:(id *)amount currencyCode:(int64_t)code countryCode:(int64_t)countryCode provisionReadTimeout:(int64_t)timeout transactionId:(id)id unpredictableNumber:(id)number;
- (id)toOR;
@end

@implementation STSTapToProvisionParameters

- (STSTapToProvisionParameters)initWithAmount:(id *)amount currencyCode:(int64_t)code countryCode:(int64_t)countryCode provisionReadTimeout:(int64_t)timeout transactionId:(id)id unpredictableNumber:(id)number
{
  idCopy = id;
  numberCopy = number;
  v21.receiver = self;
  v21.super_class = STSTapToProvisionParameters;
  v17 = [(STSTapToProvisionParameters *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_unpredictableNumber, number);
    objc_storeStrong(&v18->_transactionId, id);
    v19 = *amount;
    *&v18->_amount._mantissa[6] = *&amount->var5[6];
    *&v18->_amount = v19;
    v18->_currencyCode = code;
    v18->_countryCode = countryCode;
    v18->_provisionReadTimeout = timeout;
  }

  return v18;
}

- (id)toOR
{
  v3 = objc_alloc(MEMORY[0x277D63FF0]);
  currencyCode = self->_currencyCode;
  countryCode = self->_countryCode;
  provisionReadTimeout = self->_provisionReadTimeout;
  unpredictableNumber = self->_unpredictableNumber;
  transactionId = self->_transactionId;
  amount = self->_amount;
  v9 = [v3 initWithAmount:&amount currencyCode:currencyCode countryCode:countryCode provisionReadTimeout:provisionReadTimeout transactionId:transactionId unpredictableNumber:unpredictableNumber];

  return v9;
}

@end