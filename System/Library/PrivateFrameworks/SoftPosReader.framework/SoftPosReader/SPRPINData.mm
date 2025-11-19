@interface SPRPINData
- (SPRPINData)initWithCoder:(id)a3;
- (SPRPINData)initWithPinBlock:(id)a3 casd:(id)a4 pinAppletAttestationData:(id)a5 pinKEKHash:(id)a6;
- (SPRPINData)initWithPinBlock:(id)a3 casd:(id)a4 pinAppletAttestationData:(id)a5 pinKEKHash:(id)a6 isPinBypass:(BOOL)a7;
- (SPRPINData)initWithPinCipherBlob:(id)a3 pinKeyBlob:(id)a4 casd:(id)a5 pinAppletAttestationData:(id)a6 pinKEKHash:(id)a7 isPinBypass:(BOOL)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPRPINData

- (SPRPINData)initWithPinCipherBlob:(id)a3 pinKeyBlob:(id)a4 casd:(id)a5 pinAppletAttestationData:(id)a6 pinKEKHash:(id)a7 isPinBypass:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  pinBlock = self->_pinBlock;
  self->_pinBlock = 0;

  pinCipherBlob = self->_pinCipherBlob;
  self->_pinCipherBlob = v14;
  v21 = v14;

  pinKeyBlob = self->_pinKeyBlob;
  self->_pinKeyBlob = v15;
  v23 = v15;

  casd = self->_casd;
  self->_casd = v16;
  v25 = v16;

  pinAppletAttestationData = self->_pinAppletAttestationData;
  self->_pinAppletAttestationData = v17;
  v27 = v17;

  pinKEKHash = self->_pinKEKHash;
  self->_pinKEKHash = v18;

  self->_isPinBypass = a8;
  return self;
}

- (SPRPINData)initWithPinBlock:(id)a3 casd:(id)a4 pinAppletAttestationData:(id)a5 pinKEKHash:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  pinBlock = self->_pinBlock;
  self->_pinBlock = v10;
  v15 = v10;

  casd = self->_casd;
  self->_casd = v11;
  v17 = v11;

  pinAppletAttestationData = self->_pinAppletAttestationData;
  self->_pinAppletAttestationData = v12;
  v19 = v12;

  pinKEKHash = self->_pinKEKHash;
  self->_pinKEKHash = v13;

  self->_isPinBypass = 0;
  return self;
}

- (SPRPINData)initWithPinBlock:(id)a3 casd:(id)a4 pinAppletAttestationData:(id)a5 pinKEKHash:(id)a6 isPinBypass:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  pinBlock = self->_pinBlock;
  self->_pinBlock = v12;
  v17 = v12;

  casd = self->_casd;
  self->_casd = v13;
  v19 = v13;

  pinAppletAttestationData = self->_pinAppletAttestationData;
  self->_pinAppletAttestationData = v14;
  v21 = v14;

  pinKEKHash = self->_pinKEKHash;
  self->_pinKEKHash = v15;

  self->_isPinBypass = a7;
  return self;
}

- (SPRPINData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v6, v5, @"pinBlock", v7);
  pinBlock = self->_pinBlock;
  self->_pinBlock = v8;

  v10 = objc_opt_class();
  v13 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v10, @"pinCipherBlob", v12);
  pinCipherBlob = self->_pinCipherBlob;
  self->_pinCipherBlob = v13;

  v15 = objc_opt_class();
  v18 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v16, v15, @"pinKeyBlob", v17);
  pinKeyBlob = self->_pinKeyBlob;
  self->_pinKeyBlob = v18;

  v20 = objc_opt_class();
  v23 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v21, v20, @"casd", v22);
  casd = self->_casd;
  self->_casd = v23;

  v25 = objc_opt_class();
  v28 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v26, v25, @"pinAppletAttestationData", v27);
  pinAppletAttestationData = self->_pinAppletAttestationData;
  self->_pinAppletAttestationData = v28;

  v30 = objc_opt_class();
  v33 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v31, v30, @"pinKEKHash", v32);
  pinKEKHash = self->_pinKEKHash;
  self->_pinKEKHash = v33;

  v38 = objc_msgSend_decodeBoolForKey_(v4, v35, @"isPinBypass", v36, v37);
  self->_isPinBypass = v38;
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  pinBlock = self->_pinBlock;
  v19 = a3;
  objc_msgSend_encodeObject_forKey_(v19, v5, pinBlock, @"pinBlock", v6);
  objc_msgSend_encodeObject_forKey_(v19, v7, self->_pinCipherBlob, @"pinCipherBlob", v8);
  objc_msgSend_encodeObject_forKey_(v19, v9, self->_pinKeyBlob, @"pinKeyBlob", v10);
  objc_msgSend_encodeObject_forKey_(v19, v11, self->_casd, @"casd", v12);
  objc_msgSend_encodeObject_forKey_(v19, v13, self->_pinAppletAttestationData, @"pinAppletAttestationData", v14);
  objc_msgSend_encodeObject_forKey_(v19, v15, self->_pinKEKHash, @"pinKEKHash", v16);
  objc_msgSend_encodeBool_forKey_(v19, v17, self->_isPinBypass, @"isPinBypass", v18);
}

@end