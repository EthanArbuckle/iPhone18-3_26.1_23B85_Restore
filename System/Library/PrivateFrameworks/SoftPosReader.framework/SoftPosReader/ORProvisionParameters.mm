@interface ORProvisionParameters
- (ORProvisionParameters)initWithAmount:(id *)a3 currencyCode:(int64_t)a4 countryCode:(int64_t)a5 provisionReadTimeout:(int64_t)a6 transactionId:(id)a7 unpredictableNumber:(id)a8;
- (ORProvisionParameters)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ORProvisionParameters

- (ORProvisionParameters)initWithAmount:(id *)a3 currencyCode:(int64_t)a4 countryCode:(int64_t)a5 provisionReadTimeout:(int64_t)a6 transactionId:(id)a7 unpredictableNumber:(id)a8
{
  v14 = a7;
  v15 = a8;
  v32.receiver = self;
  v32.super_class = ORProvisionParameters;
  v16 = [(ORProvisionParameters *)&v32 init];
  v21 = v16;
  if (v16)
  {
    v22 = *a3;
    *&v16->_amount._mantissa[6] = *&a3->var5[6];
    *&v16->_amount = v22;
    v16->_currencyCode = a4;
    v16->_countryCode = a5;
    v16->_provisionReadTimeout = a6;
    v23 = objc_msgSend_copy(v14, v17, v18, v19, v20);
    transactionId = v21->_transactionId;
    v21->_transactionId = v23;

    v29 = objc_msgSend_copy(v15, v25, v26, v27, v28);
    unpredictableNumber = v21->_unpredictableNumber;
    v21->_unpredictableNumber = v29;
  }

  return v21;
}

- (id)description
{
  v5 = MEMORY[0x277CCACA8];
  amount = self->_amount;
  v6 = objc_msgSend_decimalNumberWithDecimal_(MEMORY[0x277CCA980], a2, &amount, v2, v3);
  v23 = *&self->_currencyCode;
  provisionReadTimeout = self->_provisionReadTimeout;
  v12 = objc_msgSend_asHexString(self->_transactionId, v8, v9, v10, v11);
  v17 = objc_msgSend_asHexString(self->_unpredictableNumber, v13, v14, v15, v16);
  v21 = objc_msgSend_stringWithFormat_(v5, v18, @"{amount=%@, currencyCode=%ld, countryCode=%ld, provisionReadTimeout=%ld, transactionId=%@, unpredictableNumber=%@}", v19, v20, v6, v23, provisionReadTimeout, v12, v17);

  return v21;
}

- (ORProvisionParameters)initWithCoder:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = ORProvisionParameters;
  v8 = [(ORProvisionParameters *)&v28 init];
  if (v8)
  {
    if (v4)
    {
      objc_msgSend_decodeDecimalForKey_(v4, v5, @"amount", v6, v7);
    }

    else
    {
      v26 = 0uLL;
      v27 = 0;
    }

    *&v8->_amount = v26;
    *&v8->_amount._mantissa[6] = v27;
    v8->_currencyCode = objc_msgSend_decodeIntegerForKey_(v4, v5, @"currencyCode", v6, v7);
    v8->_countryCode = objc_msgSend_decodeIntegerForKey_(v4, v9, @"countryCode", v10, v11);
    v8->_provisionReadTimeout = objc_msgSend_decodeIntegerForKey_(v4, v12, @"provisionReadTimeout", v13, v14);
    v15 = objc_opt_class();
    v18 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v16, v15, @"transactionId", v17);
    transactionId = v8->_transactionId;
    v8->_transactionId = v18;

    v20 = objc_opt_class();
    v23 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v21, v20, @"unpredictableNumber", v22);
    unpredictableNumber = v8->_unpredictableNumber;
    v8->_unpredictableNumber = v23;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  amount = self->_amount;
  LODWORD(v18) = *&self->_amount._mantissa[6];
  v4 = a3;
  objc_msgSend_encodeDecimal_forKey_(v4, v5, &amount, @"amount", v6);
  objc_msgSend_encodeInteger_forKey_(v4, v7, self->_currencyCode, @"currencyCode", v8, amount, v18);
  objc_msgSend_encodeInteger_forKey_(v4, v9, self->_countryCode, @"countryCode", v10);
  objc_msgSend_encodeInteger_forKey_(v4, v11, self->_provisionReadTimeout, @"provisionReadTimeout", v12);
  objc_msgSend_encodeObject_forKey_(v4, v13, self->_transactionId, @"transactionId", v14);
  objc_msgSend_encodeObject_forKey_(v4, v15, self->_unpredictableNumber, @"unpredictableNumber", v16);
}

@end