@interface SPRPINParameter
- (SPRPINParameter)init;
- (SPRPINParameter)initWithCoder:(id)a3;
- (SPRPINParameter)initWithDigest:(id)a3 pinToken:(id)a4;
- (SPRPINParameter)initWithDigest:(id)a3 pinToken:(id)a4 transactionDataLifetime:(double)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPRPINParameter

- (SPRPINParameter)init
{
  digest = self->_digest;
  self->_digest = 0;

  pinToken = self->_pinToken;
  self->_pinToken = 0;

  objc_msgSend_defaultTransactionDataLifetime(SPRPINParameter, v5, v6, v7, v8);
  self->_transactionDataLifetime = v9;
  return self;
}

- (SPRPINParameter)initWithDigest:(id)a3 pinToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  digest = self->_digest;
  self->_digest = v6;
  v9 = v6;

  pinToken = self->_pinToken;
  self->_pinToken = v7;
  v11 = v7;

  objc_msgSend_defaultTransactionDataLifetime(SPRPINParameter, v12, v13, v14, v15);
  v17 = v16;

  self->_transactionDataLifetime = v17;
  return self;
}

- (SPRPINParameter)initWithDigest:(id)a3 pinToken:(id)a4 transactionDataLifetime:(double)a5
{
  v8 = a3;
  v9 = a4;
  digest = self->_digest;
  self->_digest = v8;
  v11 = v8;

  pinToken = self->_pinToken;
  self->_pinToken = v9;

  self->_transactionDataLifetime = a5;
  return self;
}

- (id)description
{
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_asHexString(self->_digest, a2, v2, v3, v4);
  v11 = objc_msgSend_stringWithFormat_(v6, v8, @"{digest: %@, pin token: %@, transaction data lifetime: %f}", v9, v10, v7, self->_pinToken, *&self->_transactionDataLifetime);

  return v11;
}

- (SPRPINParameter)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v6, v5, @"digest", v7);
  digest = self->_digest;
  self->_digest = v8;

  v10 = objc_opt_class();
  v13 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v10, @"pinToken", v12);
  pinToken = self->_pinToken;
  self->_pinToken = v13;

  objc_msgSend_decodeDoubleForKey_(v4, v15, @"transactionDataLifetime", v16, v17);
  v19 = v18;

  self->_transactionDataLifetime = v19;
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  digest = self->_digest;
  v12 = a3;
  objc_msgSend_encodeObject_forKey_(v12, v5, digest, @"digest", v6);
  objc_msgSend_encodeObject_forKey_(v12, v7, self->_pinToken, @"pinToken", v8);
  objc_msgSend_encodeDouble_forKey_(v12, v9, @"transactionDataLifetime", v10, v11, self->_transactionDataLifetime);
}

@end