@interface SPRTransactionSignature
- (SPRTransactionSignature)initWithCoder:(id)coder;
- (SPRTransactionSignature)initWithSignature:(id)signature algorithm:(id)algorithm keyId:(id)id;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPRTransactionSignature

- (SPRTransactionSignature)initWithSignature:(id)signature algorithm:(id)algorithm keyId:(id)id
{
  signatureCopy = signature;
  algorithmCopy = algorithm;
  idCopy = id;
  signature = self->_signature;
  self->_signature = signatureCopy;
  v12 = signatureCopy;

  algorithm = self->_algorithm;
  self->_algorithm = algorithmCopy;
  v14 = algorithmCopy;

  keyId = self->_keyId;
  self->_keyId = idCopy;

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

- (SPRTransactionSignature)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v6, v5, @"signature", v7);
  signature = self->_signature;
  self->_signature = v8;

  v10 = objc_opt_class();
  v13 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v11, v10, @"algorithm", v12);
  algorithm = self->_algorithm;
  self->_algorithm = v13;

  v15 = objc_opt_class();
  v18 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v16, v15, @"keyId", v17);

  keyId = self->_keyId;
  self->_keyId = v18;

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  signature = self->_signature;
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, signature, @"signature", v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_algorithm, @"algorithm", v8);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, self->_keyId, @"keyId", v10);
}

@end