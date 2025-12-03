@interface SPRPINParameter
- (SPRPINParameter)init;
- (SPRPINParameter)initWithCoder:(id)coder;
- (SPRPINParameter)initWithDigest:(id)digest pinToken:(id)token;
- (SPRPINParameter)initWithDigest:(id)digest pinToken:(id)token transactionDataLifetime:(double)lifetime;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (SPRPINParameter)initWithDigest:(id)digest pinToken:(id)token
{
  digestCopy = digest;
  tokenCopy = token;
  digest = self->_digest;
  self->_digest = digestCopy;
  v9 = digestCopy;

  pinToken = self->_pinToken;
  self->_pinToken = tokenCopy;
  v11 = tokenCopy;

  objc_msgSend_defaultTransactionDataLifetime(SPRPINParameter, v12, v13, v14, v15);
  v17 = v16;

  self->_transactionDataLifetime = v17;
  return self;
}

- (SPRPINParameter)initWithDigest:(id)digest pinToken:(id)token transactionDataLifetime:(double)lifetime
{
  digestCopy = digest;
  tokenCopy = token;
  digest = self->_digest;
  self->_digest = digestCopy;
  v11 = digestCopy;

  pinToken = self->_pinToken;
  self->_pinToken = tokenCopy;

  self->_transactionDataLifetime = lifetime;
  return self;
}

- (id)description
{
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_asHexString(self->_digest, a2, v2, v3, v4);
  v11 = objc_msgSend_stringWithFormat_(v6, v8, @"{digest: %@, pin token: %@, transaction data lifetime: %f}", v9, v10, v7, self->_pinToken, *&self->_transactionDataLifetime);

  return v11;
}

- (SPRPINParameter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v6, v5, @"digest", v7);
  digest = self->_digest;
  self->_digest = v8;

  v10 = objc_opt_class();
  v13 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v11, v10, @"pinToken", v12);
  pinToken = self->_pinToken;
  self->_pinToken = v13;

  objc_msgSend_decodeDoubleForKey_(coderCopy, v15, @"transactionDataLifetime", v16, v17);
  v19 = v18;

  self->_transactionDataLifetime = v19;
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  digest = self->_digest;
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, digest, @"digest", v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_pinToken, @"pinToken", v8);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v9, @"transactionDataLifetime", v10, v11, self->_transactionDataLifetime);
}

@end