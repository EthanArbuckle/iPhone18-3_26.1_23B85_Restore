@interface SPRTransactionSignature
- (SPRTransactionSignature)initWithCoder:(id)a3;
- (SPRTransactionSignature)initWithSignature:(id)a3 algorithm:(id)a4 keyId:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPRTransactionSignature

- (SPRTransactionSignature)initWithSignature:(id)a3 algorithm:(id)a4 keyId:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  signature = self->_signature;
  self->_signature = v8;
  v12 = v8;

  algorithm = self->_algorithm;
  self->_algorithm = v9;
  v14 = v9;

  keyId = self->_keyId;
  self->_keyId = v10;

  return self;
}

- (id)description
{
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_asHexString(self->_signature, a2, v2, v3, v4);
  algorithm = self->_algorithm;
  v13 = objc_msgSend_asHexString(self->_keyId, v9, v10, v11, v12);
  v17 = objc_msgSend_stringWithFormat_(v6, v14, @"{signature=%@, algorithm=%@, keyId=%@}", v15, v16, v7, algorithm, v13);

  return v17;
}

- (SPRTransactionSignature)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v6, v5, @"signature", v7);
  signature = self->_signature;
  self->_signature = v8;

  v10 = objc_opt_class();
  v13 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v10, @"algorithm", v12);
  algorithm = self->_algorithm;
  self->_algorithm = v13;

  v15 = objc_opt_class();
  v18 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v16, v15, @"keyId", v17);

  keyId = self->_keyId;
  self->_keyId = v18;

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  signature = self->_signature;
  v11 = a3;
  objc_msgSend_encodeObject_forKey_(v11, v5, signature, @"signature", v6);
  objc_msgSend_encodeObject_forKey_(v11, v7, self->_algorithm, @"algorithm", v8);
  objc_msgSend_encodeObject_forKey_(v11, v9, self->_keyId, @"keyId", v10);
}

@end