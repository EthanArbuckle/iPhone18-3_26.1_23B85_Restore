@interface SPRTransactionDigest
- (SPRTransactionDigest)initWithCoder:(id)coder;
- (SPRTransactionDigest)initWithTransactionId:(id)id transactionDataDigest:(id)digest;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPRTransactionDigest

- (SPRTransactionDigest)initWithTransactionId:(id)id transactionDataDigest:(id)digest
{
  idCopy = id;
  digestCopy = digest;
  transactionId = self->_transactionId;
  self->_transactionId = idCopy;
  v9 = idCopy;

  transactionDataDigest = self->_transactionDataDigest;
  self->_transactionDataDigest = digestCopy;

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

- (SPRTransactionDigest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v6, v5, @"transactionId", v7);
  transactionId = self->_transactionId;
  self->_transactionId = v8;

  v10 = objc_opt_class();
  v13 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v11, v10, @"transactionDataDigest", v12);

  transactionDataDigest = self->_transactionDataDigest;
  self->_transactionDataDigest = v13;

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  transactionId = self->_transactionId;
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, transactionId, @"transactionId", v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_transactionDataDigest, @"transactionDataDigest", v8);
}

@end