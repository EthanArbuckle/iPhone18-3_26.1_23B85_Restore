@interface SPRPINData
- (SPRPINData)initWithCoder:(id)coder;
- (SPRPINData)initWithPinBlock:(id)block casd:(id)casd pinAppletAttestationData:(id)data pinKEKHash:(id)hash;
- (SPRPINData)initWithPinBlock:(id)block casd:(id)casd pinAppletAttestationData:(id)data pinKEKHash:(id)hash isPinBypass:(BOOL)bypass;
- (SPRPINData)initWithPinCipherBlob:(id)blob pinKeyBlob:(id)keyBlob casd:(id)casd pinAppletAttestationData:(id)data pinKEKHash:(id)hash isPinBypass:(BOOL)bypass;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPRPINData

- (SPRPINData)initWithPinCipherBlob:(id)blob pinKeyBlob:(id)keyBlob casd:(id)casd pinAppletAttestationData:(id)data pinKEKHash:(id)hash isPinBypass:(BOOL)bypass
{
  blobCopy = blob;
  keyBlobCopy = keyBlob;
  casdCopy = casd;
  dataCopy = data;
  hashCopy = hash;
  pinBlock = self->_pinBlock;
  self->_pinBlock = 0;

  pinCipherBlob = self->_pinCipherBlob;
  self->_pinCipherBlob = blobCopy;
  v21 = blobCopy;

  pinKeyBlob = self->_pinKeyBlob;
  self->_pinKeyBlob = keyBlobCopy;
  v23 = keyBlobCopy;

  casd = self->_casd;
  self->_casd = casdCopy;
  v25 = casdCopy;

  pinAppletAttestationData = self->_pinAppletAttestationData;
  self->_pinAppletAttestationData = dataCopy;
  v27 = dataCopy;

  pinKEKHash = self->_pinKEKHash;
  self->_pinKEKHash = hashCopy;

  self->_isPinBypass = bypass;
  return self;
}

- (SPRPINData)initWithPinBlock:(id)block casd:(id)casd pinAppletAttestationData:(id)data pinKEKHash:(id)hash
{
  blockCopy = block;
  casdCopy = casd;
  dataCopy = data;
  hashCopy = hash;
  pinBlock = self->_pinBlock;
  self->_pinBlock = blockCopy;
  v15 = blockCopy;

  casd = self->_casd;
  self->_casd = casdCopy;
  v17 = casdCopy;

  pinAppletAttestationData = self->_pinAppletAttestationData;
  self->_pinAppletAttestationData = dataCopy;
  v19 = dataCopy;

  pinKEKHash = self->_pinKEKHash;
  self->_pinKEKHash = hashCopy;

  self->_isPinBypass = 0;
  return self;
}

- (SPRPINData)initWithPinBlock:(id)block casd:(id)casd pinAppletAttestationData:(id)data pinKEKHash:(id)hash isPinBypass:(BOOL)bypass
{
  blockCopy = block;
  casdCopy = casd;
  dataCopy = data;
  hashCopy = hash;
  pinBlock = self->_pinBlock;
  self->_pinBlock = blockCopy;
  v17 = blockCopy;

  casd = self->_casd;
  self->_casd = casdCopy;
  v19 = casdCopy;

  pinAppletAttestationData = self->_pinAppletAttestationData;
  self->_pinAppletAttestationData = dataCopy;
  v21 = dataCopy;

  pinKEKHash = self->_pinKEKHash;
  self->_pinKEKHash = hashCopy;

  self->_isPinBypass = bypass;
  return self;
}

- (SPRPINData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v6, v5, @"pinBlock", v7);
  pinBlock = self->_pinBlock;
  self->_pinBlock = v8;

  v10 = objc_opt_class();
  v13 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v11, v10, @"pinCipherBlob", v12);
  pinCipherBlob = self->_pinCipherBlob;
  self->_pinCipherBlob = v13;

  v15 = objc_opt_class();
  v18 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v16, v15, @"pinKeyBlob", v17);
  pinKeyBlob = self->_pinKeyBlob;
  self->_pinKeyBlob = v18;

  v20 = objc_opt_class();
  v23 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v21, v20, @"casd", v22);
  casd = self->_casd;
  self->_casd = v23;

  v25 = objc_opt_class();
  v28 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v26, v25, @"pinAppletAttestationData", v27);
  pinAppletAttestationData = self->_pinAppletAttestationData;
  self->_pinAppletAttestationData = v28;

  v30 = objc_opt_class();
  v33 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v31, v30, @"pinKEKHash", v32);
  pinKEKHash = self->_pinKEKHash;
  self->_pinKEKHash = v33;

  v38 = objc_msgSend_decodeBoolForKey_(coderCopy, v35, @"isPinBypass", v36, v37);
  self->_isPinBypass = v38;
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  pinBlock = self->_pinBlock;
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, pinBlock, @"pinBlock", v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_pinCipherBlob, @"pinCipherBlob", v8);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, self->_pinKeyBlob, @"pinKeyBlob", v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v11, self->_casd, @"casd", v12);
  objc_msgSend_encodeObject_forKey_(coderCopy, v13, self->_pinAppletAttestationData, @"pinAppletAttestationData", v14);
  objc_msgSend_encodeObject_forKey_(coderCopy, v15, self->_pinKEKHash, @"pinKEKHash", v16);
  objc_msgSend_encodeBool_forKey_(coderCopy, v17, self->_isPinBypass, @"isPinBypass", v18);
}

@end