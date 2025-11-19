@interface STSTapToProvisionParameters
- (STSTapToProvisionParameters)initWithAmount:(id *)a3 currencyCode:(int64_t)a4 countryCode:(int64_t)a5 provisionReadTimeout:(int64_t)a6 transactionId:(id)a7 unpredictableNumber:(id)a8;
- (id)toOR;
@end

@implementation STSTapToProvisionParameters

- (STSTapToProvisionParameters)initWithAmount:(id *)a3 currencyCode:(int64_t)a4 countryCode:(int64_t)a5 provisionReadTimeout:(int64_t)a6 transactionId:(id)a7 unpredictableNumber:(id)a8
{
  v15 = a7;
  v16 = a8;
  v21.receiver = self;
  v21.super_class = STSTapToProvisionParameters;
  v17 = [(STSTapToProvisionParameters *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_unpredictableNumber, a8);
    objc_storeStrong(&v18->_transactionId, a7);
    v19 = *a3;
    *&v18->_amount._mantissa[6] = *&a3->var5[6];
    *&v18->_amount = v19;
    v18->_currencyCode = a4;
    v18->_countryCode = a5;
    v18->_provisionReadTimeout = a6;
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