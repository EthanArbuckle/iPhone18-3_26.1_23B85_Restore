@interface SPRTransactionBatchSignature
- (SPRTransactionBatchSignature)initWithCoder:(id)coder;
- (SPRTransactionBatchSignature)initWithSignature:(id)signature intermediates:(id)intermediates leaf:(id)leaf;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPRTransactionBatchSignature

- (SPRTransactionBatchSignature)initWithSignature:(id)signature intermediates:(id)intermediates leaf:(id)leaf
{
  signatureCopy = signature;
  intermediatesCopy = intermediates;
  leafCopy = leaf;
  batchSignature = self->_batchSignature;
  self->_batchSignature = signatureCopy;
  v12 = signatureCopy;

  intermediateCertificates = self->_intermediateCertificates;
  self->_intermediateCertificates = intermediatesCopy;
  v14 = intermediatesCopy;

  leafCertificate = self->_leafCertificate;
  self->_leafCertificate = leafCopy;

  return self;
}

- (id)description
{
  if (objc_msgSend_count(self->_intermediateCertificates, a2, v2, v3, v4))
  {
    v9 = objc_msgSend_componentsJoinedByString_(self->_intermediateCertificates, v6, @" ", v7, v8);
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"{batchSignature=%@, intermediateCertificates=%@, leafCertificate=%@}", v11, v12, self->_batchSignature, v9, self->_leafCertificate);
  }

  else
  {
    v9 = &stru_287B375A0;
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v6, @"{batchSignature=%@, intermediateCertificates=%@, leafCertificate=%@}", v7, v8, self->_batchSignature, &stru_287B375A0, self->_leafCertificate);
  }
  v13 = ;

  return v13;
}

- (SPRTransactionBatchSignature)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v6, v5, @"batchSignature", v7);
  batchSignature = self->_batchSignature;
  self->_batchSignature = v8;

  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v16 = objc_msgSend_setWithObjects_(v10, v13, v11, v14, v15, v12, 0);
  v19 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v17, v16, @"intermediateCertificates", v18);
  intermediateCertificates = self->_intermediateCertificates;
  self->_intermediateCertificates = v19;

  v21 = objc_opt_class();
  v24 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v22, v21, @"leafCertificate", v23);

  leafCertificate = self->_leafCertificate;
  self->_leafCertificate = v24;

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  batchSignature = self->_batchSignature;
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, batchSignature, @"batchSignature", v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_intermediateCertificates, @"intermediateCertificates", v8);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, self->_leafCertificate, @"leafCertificate", v10);
}

@end