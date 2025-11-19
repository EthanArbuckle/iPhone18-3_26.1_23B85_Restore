@interface SPRTransactionDigest
- (SPRTransactionDigest)initWithCoder:(id)a3;
- (SPRTransactionDigest)initWithTransactionId:(id)a3 transactionDataDigest:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPRTransactionDigest

- (SPRTransactionDigest)initWithTransactionId:(id)a3 transactionDataDigest:(id)a4
{
  v6 = a3;
  v7 = a4;
  transactionId = self->_transactionId;
  self->_transactionId = v6;
  v9 = v6;

  transactionDataDigest = self->_transactionDataDigest;
  self->_transactionDataDigest = v7;

  return self;
}

- (id)description
{
  v5 = MEMORY[0x277CCACA8];
  transactionId = self->_transactionId;
  v7 = objc_msgSend_asHexString(self->_transactionDataDigest, a2, v2, v3, v4);
  v11 = objc_msgSend_stringWithFormat_(v5, v8, @"{transactionId=%@, transactionDataDigest=%@}", v9, v10, transactionId, v7);

  return v11;
}

- (SPRTransactionDigest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v6, v5, @"transactionId", v7);
  transactionId = self->_transactionId;
  self->_transactionId = v8;

  v10 = objc_opt_class();
  v13 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v10, @"transactionDataDigest", v12);

  transactionDataDigest = self->_transactionDataDigest;
  self->_transactionDataDigest = v13;

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  transactionId = self->_transactionId;
  v9 = a3;
  objc_msgSend_encodeObject_forKey_(v9, v5, transactionId, @"transactionId", v6);
  objc_msgSend_encodeObject_forKey_(v9, v7, self->_transactionDataDigest, @"transactionDataDigest", v8);
}

@end